#tag Class
Protected Class CustomEditField
Inherits Canvas
Implements MessageReceiver
	#tag Event
		Sub Close()
		  //remove this control from all the mesage lists
		  self.unregisterReceiver
		  
		  //kill highlighting Thread
		  if highlighter <> nil then
		    if highlighter.state = Thread.Running then
		      highlighter.Kill
		    end if
		  end if
		  
		  //avoid circular references
		  highlighter = nil
		  caretBlinker = nil
		  lines = nil
		  
		  if CurrentFocusedField = self then mCurrentFocusedField = nil
		  
		  Close
		End Sub
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  //Paul Rodman's Suggestion
		  if ConstructContextualMenu(base,x,y) then return true
		  if base.Count>0 then base.Append new MenuItem("-")
		  //--
		  
		  #if TargetWin32 then
		    base.Append EditCut
		    base.Append EditCopy
		    base.Append EditPaste
		    base.Append EditClear
		    base.Append new MenuItem("-")
		    base.Append EditSelectAll
		  #else
		    base.Append EditCut.Clone
		    base.Append EditCopy.Clone
		    base.Append EditPaste.Clone
		    base.Append EditClear.Clone
		    base.Append new MenuItem("-")
		    base.Append EditSelectAll.Clone
		  #endif
		  Return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  me.SetFocus
		End Function
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  //save the drag position
		  DragTextPos = CharPosAtXY(x, y)
		  
		  //if there's no DragTextSelection, then the text must come from some external source.
		  if DragTextSelection = nil then
		    changeSelection(DragTextPos, 0)
		  end if
		  
		  caretState = true
		  Redraw
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  if not obj.TextAvailable then Return
		  
		  CurrentEventID = Ticks
		  
		  dim objectID as String
		  dim moveWithin as Boolean
		  ignoreRepaint = true
		  //check if the text comes from this same field.
		  moveWithin = DragSource = self
		  
		  //moved inside the selected text, do nothing.
		  if moveWithin and DragTextPos >= DragTextSelection.offset and DragTextPos <= DragTextSelection.offset + DragTextSelection.length then
		    ignoreRepaint = False
		    Return
		  end if
		  
		  //since the text is being moved inside the field, remove the old selection.
		  if moveWithin then
		    //erase selected
		    Remove(DragTextSelection.offset, DragTextSelection.length, False)
		  end if
		  
		  //fix offsets, and insert text
		  if DragTextSelection = nil or DragTextPos < DragTextSelection.offset then
		    Insert(DragTextPos, obj.text)
		    
		  elseif DragTextPos > DragTextSelection.offset + DragTextSelection.length then
		    Insert(DragTextPos - DragTextSelection.length, obj.text)
		    
		  end if
		  
		  //select the text
		  changeSelection(cefSelStart, -obj.Text.len)
		  ignoreRepaint = False
		  
		  //if drag comes from an external source, mouseUp isn't raised, so clean up if needed
		  if not moveWithin then
		    dragTextOnDrag = False
		    DragSource = nil
		    DragTextSelection = nil
		    InvalidateAllLines
		  end if
		  
		  me.setfocus
		  Redraw
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  EditCopy.Enabled = me.cefSelLength > 0
		  EditClear.Enabled = EditCopy.Enabled
		  EditCut.Enabled = EditCopy.Enabled
		  
		  if me.TextLength > 0 then
		    EditSelectAll.Enable
		  end if
		  
		  dim c as new Clipboard
		  EditPaste.Enabled =  c.TextAvailable
		  EnableMenuItems
		End Sub
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  hasFocus = true
		  RaiseEvent GotFocus
		  enableBlinker(cefSelLength = 0)
		  Redraw
		  
		  mCurrentfocusedfield = self
		  
		  ActivateE
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if keyDown(key) then
		    Redraw
		    Return true
		  end if
		  
		  dim result as Boolean
		  caretBlinker.Reset
		  result = HandleKeyDown(key)
		  
		  Return result
		End Function
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  CurrentEventID = 0
		  hasFocus = False
		  RaiseEvent LostFocus
		  enableBlinker(False)
		  Redraw
		  
		  DeactivateE
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  CurrentEventID = 0
		  Dragging = False
		  
		  if not hasFocus then self.SetFocus
		  dragTextOnDrag = False
		  
		  if MouseDown(X,Y) then Return true
		  if IsContextualClick then Return False
		  
		  ignoreRepaint = true
		  dim cefSelStart as Integer
		  
		  cefSelStart = CharPosAtXY(x,y)
		  
		  if Keyboard.ShiftKey then
		    changeSelection(min(cefSelStart, CaretPos), abs(cefSelStart - CaretPos))
		    
		  elseif x < LineNumOffset then
		    selectedLine = lines.getLineNumberForOffset(cefSelStart)
		    
		    if EnableLineFoldings and x >= LineNumOffset - blockStartImage.Width - 2 then
		      //toggle foldings here!
		      ToggleLineFold(selectedLine)
		      CreateMouseOverBlockHighlight(selectedLine)
		      
		    else
		      //line header clicked
		      SelectLine(selectedLine, false)
		      GutterClicked(selectedLine, x, y)
		    end if
		    
		  elseif cefSelLength > 0 and cefSelStart >= self.cefSelStart and cefSelStart <= self.cefSelStart + cefSelLength then
		    //omg drag!
		    dragTextOnDrag = true
		    
		  else
		    selectedLine = -1
		    changeSelection(cefSelStart, 0)
		    
		    //->YN
		    SelLength2=0
		    ClearHighlightedCharacterRanges
		    HighlightsChanged
		    //YN<-
		    
		  end if
		  
		  updateDesiredColumn
		  lastMouseDownX = x
		  lastMouseDownY = y
		  ignoreRepaint = False
		  Redraw
		  Return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  //if the mouse doesn't move, don't do anything until it does.
		  if abs(lastMouseDownX - X) < 4 and abs(lastMouseDownY - Y) < 4 then Return
		  Dragging = true
		  
		  //if drag selected text...
		  if dragTextOnDrag then
		    HandleTextDrag(x,y)
		    Return
		  end if
		  
		  ignoreRepaint = true
		  
		  HandleDragOnGutter(x,y)
		  HandleVerticalMouseDrag(x,y)
		  HandleHorizontalMouseDrag(x,y)
		  
		  ignoreRepaint = False
		  Redraw
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  MouseMove(X,Y)
		  
		  //change mouse cursors
		  if x > LineNumOffset then //enter field
		    if cursorIsIbeam then Return
		    me.MouseCursor = System.Cursors.IBeam
		    cursorIsIbeam = true
		    
		    if MouseOverBlock <> nil then
		      MouseOverBlock = nil
		      Redraw
		    end if
		    
		    Return
		  end if
		  
		  // enter gutter
		  me.MouseCursor = System.Cursors.StandardPointer
		  cursorIsIbeam = false
		  
		  // visual block feedback
		  if not EnableLineFoldings or not HighlightBlocksOnMouseOverGutter then
		    if MouseOverBlock <> nil then
		      MouseOverBlock = nil
		      Redraw
		    end if
		    
		    Return
		  end if
		  
		  if x < LineNumOffset - blockStartImage.Width - 2 then
		    if MouseOverBlock <> nil then
		      MouseOverBlock = nil
		      Redraw
		    end if
		    
		    Return
		  end if
		  
		  CreateMouseOverBlockHighlight(lines.getLineNumberForOffset(CharPosAtXY(x,y)))
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  Dragging = False
		  
		  //check for double click
		  if x > LineNumOffset and not checkDoubleClick(x,y) then
		    mouseUp(x,y)
		    
		    //reset drag variables.
		    if dragTextOnDrag then
		      dragTextOnDrag = False
		      
		      //clicked on the selected text, but it never got dragged, clear selction.
		      if DragTextSelection = nil then
		        changeSelection(CharPosAtXY(x,y), 0)
		      end if
		      
		      DragSource = nil
		      DragTextSelection = nil
		      InvalidateAllLines
		      Redraw
		    end if
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  if MouseOverBlock <> nil then MouseOverBlock = nil
		  
		  changeScrollValues(ScrollPositionX + (deltaX * 5), ScrollPosition + deltay)
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.opening=true
		  
		  me.EraseBackground = false
		  ignoreRepaint = true
		  open
		  
		  if TextFont = "" then TextFont = DEFAULT_FONT
		  if TextSize = 0 then TextSize = DEFAULT_FONTSIZE
		  
		  me.MouseCursor = System.Cursors.IBeam
		  cursorIsIbeam = true
		  self.AcceptFocus = true
		  self.AcceptTabs = true
		  
		  CalculateMaxVerticalSB
		  CalculateMaxHorizontalSB
		  
		  me.AcceptTextDrop
		  me.AcceptRawDataDrop("objectID")
		  
		  enableBlinker(hasFocus and cefSelLength = 0)
		  ignoreRepaint = False
		  
		  if TextSelectionColor = &c000000 then
		    TextSelectionColor = HighlightColor
		  end if
		  
		  'RulerPic = New Picture(me.width, 36, 32) 'Just a placeholder to avoid nil object exceptions later
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  DrawContents(g)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditClear() As Boolean Handles EditClear.Action
			me.SelText = ""
			Redraw
			Return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditCopy() As Boolean Handles EditCopy.Action
			copy
			Return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditCut() As Boolean Handles EditCut.Action
			dim c as new Clipboard
			c.Text = me.SelText
			me.SelText = ""
			Redraw
			Return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditPaste() As Boolean Handles EditPaste.Action
			paste
			Return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			SelectAll
			redraw
			Return true
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub AddBookmark(lineIndex as integer)
		  BookmarkTable.Value(lineIndex) = nil
		  InvalidateLine(lineIndex)
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendText(text as string)
		  insert(TextStorage.Length, text)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AutocompleteCancelled(requestFocus as boolean)
		  if requestFocus then SetFocus
		  
		  //stop listening messages from SuggestionWindow
		  self.unregisterForMessage(currentSuggestionWindow)
		  currentSuggestionWindow = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AutocompleteEOL()
		  //get Autocomplete options from client window
		  call fetchAutocompleteOptions
		  if  CurrentAutocompleteOptions = nil then Return //nothing to autocomplete.
		  
		  dim maxIndex as Integer = UBound(CurrentAutocompleteOptions.Options)
		  dim firstMatch, longestCommonPrefix, currentPathComponent as String
		  
		  longestCommonPrefix = CurrentAutocompleteOptions.LongestCommonPrefix
		  currentPathComponent = CurrentAutocompleteOptions.CurrentPathComponent
		  if maxIndex > -1 then firstMatch = CurrentAutocompleteOptions.Options(0)
		  
		  if maxIndex >0 then //more than 1 option
		    OptionForTrailingSuggestion = longestCommonPrefix
		    trailingSuggestion = longestCommonPrefix.Right(longestCommonPrefix.Len - currentPathComponent.Len) + "…"
		    
		  elseif maxIndex = 0 and text <> firstMatch then //just 1
		    OptionForTrailingSuggestion = firstMatch
		    trailingSuggestion = firstMatch.Mid(firstMatch.longestCommonPrefixIndex(currentPathComponent) + 1)
		    
		  else //word already fully typed
		    
		    Return
		  end if
		  
		  dim y as Integer
		  XYAtCharPos(CaretPos, CaretLine, AutocompleteSuggestionInsertionX, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AutocompleteManual()
		  //get word where caret is at
		  dim CurrentWordSegment as TextSegment = CurrentWord
		  if CurrentWordSegment.length = 0 then Return
		  
		  //suggestion to autocomplete?
		  if trailingSuggestion.Len> 0 and trailingSuggestion <> "…" then
		    
		    dim suggestionLength as Integer
		    if trailingSuggestion.Right(1) = "…" then
		      suggestionLength = trailingSuggestion.len - 1
		      
		    else
		      suggestionLength = trailingSuggestion.len
		      
		    end if
		    
		    //insert it
		    //Insert(CaretPos, trailingSuggestion.Left(suggestionLength))
		    //AutocompleteOptionSelected(trailingSuggestion.Left(suggestionLength))
		    AutocompleteOptionSelected(OptionForTrailingSuggestion)//CurrentAutocompleteOptions.CurrentPathComponent + trailingSuggestion.Left(suggestionLength))
		    Return
		  end if
		  
		  //get all Autocomplete options for word
		  
		  call fetchAutocompleteOptions
		  if  CurrentAutocompleteOptions = nil then Return //nothing to autocomplete
		  if ubound(CurrentAutocompleteOptions.Options) < 0 then Return
		  
		  //find XY pos of caret
		  dim x,y, fx, fy as Integer
		  XYAtCharPos(CaretPos, CaretLine, x,y)
		  getFieldXY(fx, fy)
		  x = x + fx
		  y = y + fy
		  
		  dim cx, cy as Integer
		  cx = x
		  cy = y
		  
		  // give the user the option to offset the suggestion window if needed.
		  if ShouldDisplaySuggestionWindowAtPos(cx, cy) then
		    x = cx
		    y = cy
		  end if
		  
		  //show suggestion window
		  currentSuggestionWindow = new SuggestionWindow
		  //start listening for messages from the SuggestionWindow
		  self.registerForMessage(currentSuggestionWindow)
		  currentSuggestionWindow.Show(x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AutocompleteOptionSelected(option as string)
		  //the string "option" was selected in the suggestions window.
		  
		  if option <> "" then
		    if cefSelLength > 0 then
		      //replace highlighted text
		      SelText = option
		      
		    else
		      
		      //add option to current word removing common prefix
		      if AutocompleteAppliesStandardCase then
		        //we need to replace the whole word with the Autocomplete option...
		        Replace(CaretPos - CurrentAutocompleteOptions.CurrentPathComponent.len, CurrentAutocompleteOptions.CurrentPathComponent.len, option)
		      else
		        SelText = option.Mid(option.longestCommonPrefixIndex(CurrentAutocompleteOptions.currentPathComponent) + 1)
		      end if
		    end if
		  end if
		  
		  //stop listening messages from SuggestionWindow
		  self.unregisterForMessage(currentSuggestionWindow)
		  currentSuggestionWindow = nil
		  
		  //check indentations
		  if AutoIndentNewLines then
		    dim thisLine as TextLine = lines.getLine(CaretLine)
		    if thisLine <> nil and thisLine.isBlockEnd and IndentBlockEndLine(CaretLine) > 0 then
		      InvalidateLine(CaretLine)
		    end if
		  end if
		  
		  SetFocus
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BookmarkList() As integer()
		  dim indexes(), index as Integer
		  
		  for each index in BookmarkTable.keys
		    indexes.Append index
		  next
		  
		  indexes.Sort
		  
		  Return indexes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CalculateMaxHorizontalSB()
		  //maximum horizontal scrollbar value
		  //Thanks to Thomas Tempelmann for his suggestions.
		  if horizontalSB <> nil Then
		    dim contentWidth as integer = lastLongestLinePixels + LineNumOffset + RightScrollMargin
		    
		    dim n as Integer = self.Width
		    dim max as Integer = contentWidth - n
		    if max <= 0 then
		      max = 0
		      n = 0
		    end
		    
		    horizontalSB.enabled = max > 0 // you may want to remove this one
		    horizontalSB.Maximum = max
		    horizontalSB.PageStep = n
		    horizontalSB.LineStep = 8
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CalculateMaxVerticalSB()
		  //maximum vertical scrollbar value
		  if verticalSB <> nil then
		    if EnableLineFoldings then
		      verticalSB.Maximum = lines.Count - lines.invisibleLines - MaxVisibleLines
		    else
		      verticalSB.Maximum = lines.Count - MaxVisibleLines
		    end if
		    
		    //update the pageStep so a page jump is always th number of visible lines... or a page.
		    verticalSB.PageStep = MaxVisibleLines - 1
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanRedo() As boolean
		  Return UndoMgr.CanRedo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanUndo() As boolean
		  Return UndoMgr.CanUndo
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CaretSymbol() As documentSymbol
		  Return SymbolAtline(CaretLine)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub changeScrollValues(horizontal as integer, vertical as integer)
		  //changes view to the given scroll values
		  caretBlinker.Reset
		  
		  dim needsRedraw as Boolean = false
		  dim valuesChanged as Boolean
		  
		  if horizontal <> ScrollPositionX then
		    //Cap values
		    horizontal = max(min(horizontal, lastLongestLinePixels - self.Width + LineNumOffset + RightScrollMargin), 0)
		    
		    //force a full redraw
		    if horizontal <> ScrollPositionX then
		      InvalidateAllLines
		    end if
		    
		    //change scrollbars
		    mScrollPositionX = horizontal
		    if horizontalSB <> nil then
		      horizontalSB.Value = horizontal
		    else
		      needsRedraw = true
		    end if
		    
		    valuesChanged = true
		    HorizontalScrollValueChanged
		  end if
		  
		  if vertical <> ScrollPosition then
		    //Cap values
		    if EnableLineFoldings then
		      vertical = max(min(vertical, lines.Count - lines.invisibleLines - MaxVisibleLines), 0)
		    else
		      vertical = max(min(vertical, lines.Count - MaxVisibleLines), 0)
		    end if
		    
		    if vertical <> ScrollPosition then
		      InvalidateAllLines
		    end if
		    
		    //change scrollbars
		    mScrollPosition = vertical
		    if verticalSB <> nil then
		      verticalSB.Value = vertical
		    else
		      needsRedraw = true
		    end if
		    
		    valuesChanged = true
		    VerticalScrollValueChanged
		  end if
		  
		  if valuesChanged then ScrollValuesChanged
		  if needsRedraw then Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub changeSelection(cefSelStart as integer, cefSelLength as integer, viaDoubleClick as Boolean = False)
		  //changes the current document selection.
		  
		  //nothing to change
		  if cefSelStart = self.cefSelStart and cefSelLength = self.cefSelLength then Return
		  
		  //backwards selections?
		  if cefSelLength < 0 then
		    cefSelLength = -cefSelLength
		    cefSelStart = cefSelStart - cefSelLength
		  end if
		  
		  //cap cefSelStart
		  if cefSelStart < 0 then
		    cefSelStart = 0
		  ElseIf cefSelStart > TextStorage.Length then
		    cefSelStart = TextStorage.Length
		  end if
		  
		  //cap cefSelLength
		  if cefSelStart + cefSelLength > TextStorage.Length then
		    'cefSelLength = cefSelLength - TextStorage.Length
		    cefSelLength = TextStorage.Length-cefSelStart 'YN
		  end if
		  
		  
		  //find starting line for selection.
		  dim linenum as Integer = lines.getLineNumberForOffset(cefSelStart)
		  dim line as TextLine = lines.getLine(linenum)
		  
		  //deal with invisible lines
		  if EnableLineFoldings then
		    dim startLineIdx, endLineIdx as Integer
		    dim startLine, endLine as TextLine
		    dim update as Boolean
		    
		    //check if cefSelStart is in a Visible line, if not, move it to the next or previous visible line.
		    if cefSelStart <> mcefSelStart then
		      if linenum <> CaretLine then //only if the new line is different from Previous.
		        startLineIdx = lines.getLineNumberForOffset(cefSelStart)
		        startLine = lines.getLine(startLineIdx)
		        if startLine <> nil and cefSelStart > mcefSelStart then //moving fwd
		          if not startLine.visible then
		            startLineIdx = lines.nextVisibleLine(startLineIdx)
		            update = true
		          end if
		        elseif startLine <> nil and cefSelStart < mcefSelStart then //moving bck
		          if not startLine.visible then
		            startLineIdx = lines.previousVisibleLine(startLineIdx)
		            update = true
		          end if
		        end if
		        
		        if update then
		          startLine = lines.getLine(startLineIdx)
		          if startLine <> nil then
		            
		            cefSelStart = offsetForXPos(startLine, caretDesiredColumn)
		            LineNum = startLineIdx
		            line = startLine
		            
		            if cefSelLength > 0 then
		              cefSelLength = mcefSelStart + mcefSelLength - cefSelStart
		            end if
		            
		          end if
		        end if
		      end if
		    end if
		    
		    if not update and cefSelLength > 0 and cefSelLength <> mcefSelLength then
		      endLineIdx = lines.getLineNumberForOffset(cefSelStart + cefSelLength)
		      endLine = lines.getLine(endLineIdx)
		      
		      if endLine <> nil and cefSelLength > mcefSelLength then //making selection bigger.
		        if not endLine.visible then
		          endLineIdx = lines.nextVisibleLine(endLineIdx)
		          update = true
		        end if
		      elseif endLine <> nil and cefSelLength < mcefSelLength then //smaller
		        if not endLine.visible then
		          endlineIdx = lines.previousVisibleLine(endLineIdx)
		          update = true
		        end if
		      end if
		      
		      if update then
		        endLine = lines.getLine(endLineIdx)
		        if endLine <> nil then
		          cefSelLength = offsetForXPos(endLine, caretDesiredColumn) - cefSelStart
		        end if
		      end if
		    end if
		  end if
		  
		  //make sure selection isn't inside an EOL delimiter
		  if line <> nil then
		    if cefSelStart > line.offset + line.length - line.delimiterLength then
		      if cefSelStart > mcefSelStart then
		        cefSelStart = line.offset + line.length
		      else
		        cefSelStart = line.offset + line.length - line.delimiterLength
		      end if
		      linenum = lines.getLineNumberForOffset(cefSelStart)
		      line = lines.getLine(linenum)
		    end if
		  end if
		  
		  // update selection if inside a placeholder...
		  dim selectedPlaceholder as TextPlaceholder = nil
		  if mcefSelStart < cefSelStart then //moving start to the Right
		    dim placeholder as TextPlaceholder = line.PlaceholderForOffset(cefSelStart)
		    if placeholder <> nil then
		      if cefSelLength = 0 then
		        cefSelStart = placeholder.offset + line.offset //sel
		        cefSelLength = placeholder.length
		        
		        selectedPlaceholder = placeholder
		        //PlaceholderSelected(LineNum, TextStorage.getText(line.offset + placeholder.textRange.offset, placeholder.textRange.length))
		        
		      else
		        cefSelStart = placeholder.offset + placeholder.length +line.offset //desel
		        cefSelLength = cefSelLength - placeholder.length + 1
		      end if
		    end if
		    
		  ElseIf mcefSelStart > cefSelStart then //moving start to the Left
		    dim placeholder as TextPlaceholder = line.PlaceholderForOffset(cefSelStart)
		    if placeholder <> nil then
		      if cefSelLength = 0 then
		        cefSelStart = placeholder.offset + line.offset //sel
		        cefSelLength = placeholder.length
		        
		        selectedPlaceholder = placeholder
		        //PlaceholderSelected(LineNum, TextStorage.getText(line.offset + placeholder.textRange.offset, placeholder.textRange.length))
		        
		      else
		        cefSelStart = placeholder.offset +line.offset //sel
		        cefSelLength = cefSelLength + placeholder.length - 1
		      end if
		    end if
		    
		  ElseIf mcefSelLength > cefSelLength then //shrinking selection
		    dim endline as TextLine = lines.getline(lines.getLineNumberForOffset(cefSelStart + cefSelLength))
		    if endline <> nil then
		      dim placeholder as TextPlaceholder = endline.PlaceholderForOffset(cefSelStart + cefSelLength)
		      
		      if placeholder <> nil then
		        cefSelLength = max(cefSelLength - placeholder.length + 1, 0) //desel
		      end if
		    end if
		    
		  elseif mcefSelLength < cefSelLength then //expanding selection
		    dim endline as TextLine = lines.getline(lines.getLineNumberForOffset(cefSelStart + cefSelLength))
		    if endline <> nil then
		      dim placeholder as TextPlaceholder = endline.PlaceholderForOffset(cefSelStart + cefSelLength)
		      
		      if placeholder <> nil then
		        cefSelLength = cefSelLength + placeholder.length - 1 //sel
		      end if
		    end if
		  end if
		  
		  
		  //change internal values
		  mcefSelStart = cefSelStart
		  mcefSelLength = cefSelLength
		  
		  //if cefSelLength = 0 or outside selection then update caret
		  if cefSelLength = 0 or CaretPos < cefSelStart or CaretPos > cefSelStart + cefSelLength then
		    //has the line changed? invalidate lines
		    if LineNum <> CaretLine then
		      InvalidateLine(CaretLine)
		      mCaretLine = lines.getLineNumberForOffset(cefSelStart)
		    end if
		    
		    mCaretPos = cefSelStart
		    
		    //check if caret is out of view!
		    ViewToCharPos(CaretLine, mCaretPos)
		  end if
		  
		  //blink only if no selection
		  enableBlinker(cefSelLength = 0)
		  
		  if not UndoMgr.isUndoing then
		    //raise SelChange event
		    SelChange(linenum + 1, cefSelStart - line.offset, cefSelLength)
		    
		    if selectedPlaceholder <> nil then
		      dim label as String = TextStorage.getText(line.offset + selectedPlaceholder.textRange.offset, selectedPlaceholder.textRange.length)
		      PlaceholderSelected(label, LineNum, lines.getLine(linenum), selectedPlaceholder, viaDoubleClick)
		    end if
		  end if
		  
		  //fire Autocomplete events
		  if cefSelLength > 0 or not EnableAutocomplete then Return
		  trailingSuggestion = ""
		  
		  //are we at end of current line?
		  if caretPos = line.offset + line.length - line.delimiterLength then
		    AutocompleteEOL
		  end if
		  
		  InvalidateLine(CaretLine)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CharPosAtLineNum(lineNumber as integer) As integer
		  dim line as TextLine = lines.getLine(lineNumber)
		  if line = nil then Return -1
		  Return line.offset
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CharPosAtXY(X as integer, Y as integer) As integer
		  dim lineNum as Integer
		  
		  //find the line
		  if EnableLineFoldings then
		    lineNum = lines.getNumberOfLinesNeededToView(min(lines.Count - 1, max(0, floor((y + (ScrollPosition * TextHeight)) / TextHeight))))
		  else
		    lineNum = min(lines.Count - 1, max(0, floor((y + (ScrollPosition * TextHeight)) / TextHeight)))
		  end if
		  
		  //find the char offset.
		  dim line as TextLine = lines.getLine(lineNum)
		  
		  //not found?
		  if line = nil then Return -1
		  
		  dim offset as Integer = leftMarginOffset + LineNumOffset - ScrollPositionX
		  Return offsetForXPos(line, x - offset)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function checkDoubleClick(X as integer, Y as integer) As boolean
		  //grabbed from RB examples
		  //if cefSelLength > 0 then Return False
		  
		  dim doubleClickTime, currentClickTicks as Integer
		  
		  #if targetMacOS then
		    #if targetCarbon
		      Declare Function GetDblTime Lib "Carbon" () as Integer
		      doubleClickTime = GetDblTime()
		    #elseif targetCocoa
		      doubleClickTime = 30 // I don't know how to get this value for Cocoa. Do you? Please tell tempelmann@gmail.com
		    #else
		      Declare Function GetDblTime Lib "InterfaceLib" () as Integer Inline68K("2EB802F0")
		      doubleClickTime = GetDblTime()
		    #endif
		  #endif
		  
		  #if targetWin32 then
		    Declare Function GetDoubleClickTime Lib "User32.DLL" () as Integer
		    doubleClickTime = GetDoubleClickTime()
		  #endif
		  
		  #if TargetLinux then
		    Declare Function gtk_settings_get_default lib "libgtk-x11-2.0.so" as Ptr
		    Declare Sub g_object_get lib "libgtk-x11-2.0.so" (Obj as Ptr, first_property_name as CString, byref doubleClicktime as Integer, Null as Integer)
		    
		    dim gtkSettings as MemoryBlock
		    
		    gtkSettings = gtk_settings_get_default()
		    
		    g_object_get(gtkSettings,"gtk-double-click-time",doubleClickTime, 0)
		    // DoubleClickTime now holds the number of milliseconds
		    doubleClickTime = doubleClickTime / 1000.0 * 60
		  #endif
		  
		  dim result as Boolean = false
		  currentClickTicks = ticks
		  //if the two clicks happened close enough together in time
		  if (currentClickTicks - lastClickTicks) <= doubleClickTime then
		    //if the two clicks occured close enough together in space
		    if abs(X - lastMouseUpX) <= 4 and abs(Y - lastMouseUpY) <= 4 then
		      handleDoubleClick //a double click has occured so call the event
		      result = true
		    end if
		  end if
		  lastClickTicks = currentClickTicks
		  lastMouseUpX = X
		  lastMouseUpY = Y
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearBookmark(lineIndex as integer)
		  if not BookmarkTable.HasKey(lineIndex) then Return
		  
		  BookmarkTable.Remove(lineIndex)
		  InvalidateLine(lineIndex)
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearBookmarks()
		  BookmarkTable.Clear
		  InvalidateAllLines
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearDirtyLines()
		  lines.clearDirtyLines
		  InvalidateAllLines
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearHighlightedCharacterRanges()
		  if HighlightedRanges.SelectionCount = 0 then Return
		  
		  HighlightedRanges.Clear
		  InvalidateAllLines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearLineIcons()
		  dim line as TextLine
		  for i as Integer = 0 to lines.Count - 1
		    line = lines.getLine(i)
		    if line <> nil then line.icon = nil
		  next
		  
		  InvalidateAllLines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.RectControl
		  ignoreRepaint = true
		  
		  //create a new text buffer
		  //textStorage = new GapBuffer
		  
		  //and line manager
		  //lines = new LineManager(TextStorage, TabWidth)
		  //register to receive messages from this line manager only
		  //self.registerForMessage(lines)
		  
		  //dictionaries to keep track of modified and updated lines.
		  //invalidLines = new Dictionary
		  //modifiedLines =new Dictionary
		  
		  //create Highlighter thread
		  //highlighter = new LineHighlighter(self, SyntaxDefinition, modifiedLines, TextStorage, lines)
		  //self.registerForMessage(highlighter)
		  
		  //and blinker timer.
		  //caretBlinker = new CaretBlinker(self)
		  
		  //UndoMgr = new UndoManager
		  //HighlightedRanges = new CharSelectionManager
		  
		  //bookmarks
		  //BookmarkTable = new Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Copy()
		  if cefSelLength = 0 then Return
		  dim c as new Clipboard
		  c.Text = me.SelText
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateMouseOverBlockHighlight(lineIndex as integer)
		  dim line as TextLine = lines.getLine(lineIndex)
		  if line = nil then Return
		  
		  dim openingLine as integer
		  if line.isBlockStart then
		    openingLine = lineIndex
		  else
		    openingLine = OpeningBlockLineForLine(lineIndex)
		  end if
		  if openingLine < 0 then Return
		  
		  line = lines.getLine(openingLine)
		  if line = nil then Return
		  
		  dim x, y1, y2 as Integer
		  XYAtCharPos(line.offset, openingLine, x, y1)
		  
		  dim closingLine as Integer = lines.nextBlockEndLine(openingLine)
		  if closingLine < 0 then Return
		  
		  line = lines.getLine(closingLine)
		  if line = nil then Return
		  
		  XYAtCharPos(line.offset, closingLine, x, y2)
		  
		  if MouseOverBlock <> nil then
		    if MouseOverBlock.Value("y") = y1 - TextHeight - 2 and MouseOverBlock.Value("h") = y2 - y1 + TextHeight + 4 then Return //avoid a redraw if we can...
		  end if
		  
		  MouseOverBlock = nil
		  MouseOverBlock = new Dictionary
		  MouseOverBlock.Value("startLine") = openingLine
		  MouseOverBlock.Value("x") = LeftMarginOffset - 3
		  MouseOverBlock.Value("y") = y1 - TextHeight - 2
		  MouseOverBlock.Value("w") = self.Width - LineNumOffset - LeftMarginOffset
		  MouseOverBlock.Value("h") = y2 - y1 + TextHeight + 4
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentAutocompleteOptions() As Autocompleteoptions
		  Return mCurrentAutocompleteOptions
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentWord() As textsegment
		  //gets the current word, where the caret is at.
		  //a word is anything except whitespaces.
		  
		  dim startIndex, endIndex as Integer
		  startIndex = previousCharInSet(CaretPos + 1, CURRENT_CARET_WORD_DELIMITER_PATTERN)
		  endIndex = nextCharInSet(CaretPos - 1, CURRENT_CARET_WORD_DELIMITER_PATTERN)
		  Return new TextSegment(startIndex, endIndex - startIndex)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CustomEditFieldPrinter(printerGraphics as graphics) As CustomEditFieldPrinter
		  printerGraphics.TextFont = TextFont
		  printerGraphics.TextSize = TextSize
		  printerGraphics.Bold = False
		  printerGraphics.Italic = False
		  printerGraphics.Underline = False
		  
		  Return new CustomEditFieldPrinter(printerGraphics, TextStorage, lines, TextColor, DisplayInvisibleCharacters)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DeleteChars(forwardDelete as boolean)
		  //delete key
		  
		  //check if the key would delete a placeholder...
		  dim line as TextLine = lines.getLine(CaretLine)
		  if line <> nil and line.HasPlaceholders then
		    dim placeholder as TextPlaceholder
		    if forwardDelete then
		      Placeholder = line.PlaceholderForOffset(CaretPos + 1)
		    else
		      Placeholder = line.PlaceholderForOffset(CaretPos - 1)
		    end if
		    
		    if placeholder <> nil then changeSelection(placeholder.offset + line.offset, placeholder.length)
		  end if
		  
		  //delete highlighted text
		  if me.cefSelLength > 0 then
		    replace(cefSelStart, me.cefSelLength, "")
		    Return
		  end if
		  
		  //or simply delete a char
		  if forwardDelete then
		    if CaretPos < TextStorage.Length then
		      if Keyboard.OptionKey then
		        remove(cefSelStart, nextNonAlpha(CaretPos) - CaretPos, false)
		      else
		        remove(cefSelStart, 1, false)
		      end if
		    end if
		    Return
		  end if
		  
		  if Keyboard.OptionKey then
		    dim offset as Integer = caretpos - previousNonAlpha(CaretPos)
		    remove(cefSelStart - offset, offset)
		  else
		    remove(cefSelStart - 1, 1)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableUndoHandling()
		  UndoMgr.Enabled = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DocumentSymbols() As DocumentSymbol()
		  //no symbols
		  if CurrentDocumentSymbols = nil then Return nil
		  
		  dim tmp() as DocumentSymbol
		  //dim key as String
		  dim line as TextLine
		  dim symbol as DocumentSymbol
		  
		  //copy symbols to new Dictionary
		  for Each line in CurrentDocumentSymbols.keys
		    //line = CurrentDocumentSymbols.Value(key)
		    //if line = nil then Continue for
		    
		    for each Symbol in line.LineSymbols.Values
		      //Symbol = line.LineSymbols.Value(key)
		      //tmp.Value(key) = new DocumentSymbol(symbol.Name, line.offset + symbol.Offset, symbol.Type) //with the correct offset!
		      
		      tmp.append( new DocumentSymbol(symbol.Name, line.offset + symbol.Offset, symbol.Type) ) //with the correct offset!
		    next
		  next
		  
		  //no symbols...
		  //if tmp.Count = 0 then Return nil
		  
		  Return tmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawContents(gr as graphics)
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  dim hoffset as integer
		  dim LNstring as String
		  
		  // We're going to implement the paint event ourselves
		  // so that we can automatically do the double buffering
		  
		  // Check our back buffer to make sure we've got
		  // one that we can draw to
		  dim create as Boolean
		  
		  // If we don't have a back buffer, then we need to create one
		  // If our size is different than our
		  // back buffer, then we need to create a new one
		  create = mBackBuffer = nil or me.Width <> mBackBuffer.Width or me.Height <> mBackBuffer.Height
		  
		  //create buffer
		  if create then
		    mBackBuffer = new Picture( max(1, me.Width), max(me.Height, 1), max(16, screen(0).Depth))
		    CalculateMaxHorizontalSB
		    CalculateMaxVerticalSB
		    InvalidateAllLines
		  end if
		  
		  //get a graphics context to draw onto.
		  dim g as Graphics = mBackBuffer.graphics
		  
		  //set old renderer
		  #if EditFieldGlobals.UseOldRenderer
		    g.UseOldRenderer = true
		  #endif
		  
		  #if DebugBuild
		    redrawTime = Microseconds
		  #endif
		  
		  dim sx, sy as Double
		  
		  //Line numbers
		  if displayLineNumbers then
		    
		    
		    //create line numbers picture, if needed.
		    if Gutter = nil or Gutter.Height <> g.Height or gutter.Width <> LineNumOffset then
		      Gutter = NewPicture(LineNumOffset, g.Height, 32)
		      #if EditFieldGlobals.UseOldRenderer
		        Gutter.Graphics.UseOldRenderer = true
		      #endif
		      gutter.Graphics.TextFont = LineNumbersTextFont
		      gutter.Graphics.TextSize = LineNumbersTextSize
		      //->YN
		      'determine the header height:
		      HeaderHeight=2*gutter.Graphics.StringHeight("Ay",100)+6
		      //YN<-
		    end if
		    
		    //redraw contents, if needed
		    if fullRefresh or lastDrawnTopLine <> ScrollPosition then
		      gutter.Graphics.ForeColor = GutterBackgroundColor.lighterColor(10)
		      gutter.Graphics.FillRect LineNumOffset - FoldingOffset, 0, FoldingOffset, gutter.Height
		      
		      gutter.Graphics.ForeColor = GutterBackgroundColor
		      gutter.Graphics.FillRect 0, 0, gutter.Width - FoldingOffset, gutter.Height
		      
		      gutter.Graphics.ForeColor = GutterSeparationLineColor
		      gutter.Graphics.DrawLine LineNumOffset - 1, 0, LineNumOffset - 1, gutter.Graphics.Height
		      
		      lastDrawnTopLine = ScrollPosition
		      
		    end if
		  end if
		  
		  //paint selection, and get their range
		  dim selection as new CharSelection(-1, -1, -1, -1, TextSelectionColor)
		  dim tmpSelection as CharSelection
		  //get selection range
		  if cefSelLength > 0 then
		    Selection.offset = cefSelStart
		    Selection.length = cefSelLength
		    selection.StartLine = lines.getLineNumberForOffset(cefSelStart)
		    selection.EndLine = Lines.getLineNumberForOffset(cefSelStart + cefSelLength)
		  end if
		  
		  //set text properties
		  g.TextSize = TextSize
		  g.TextFont = TextFont
		  gr.TextSize = TextSize
		  gr.TextFont = TextFont
		  
		  //Starting positions
		  sx = leftMarginOffset + LineNumOffset - ScrollPositionX
		  sy = g.TextHeight
		  
		  dim line as TextLine
		  dim lineText as String
		  dim linesDrawn, lineHeight as Integer
		  dim firstLine as Integer
		  dim lastLine as Integer
		  
		  //the lowest possible line to draw is ScrollPosition, so start there.
		  if EnableLineFoldings then
		    firstline = lines.getNumberOfLinesNeededToView(ScrollPosition)
		    lastLine = lines.count - 1
		  else
		    firstLine = ScrollPosition
		    lastLine = min(lines.Count - 1, ScrollPosition + MaxVisibleLines)
		  end if
		  
		  linesOnScreen = 0
		  for i as Integer = firstLine to lastLine
		    linesOnScreen = linesOnScreen + 1
		    
		    //get current line
		    line = lines.getLine(i)
		    if not line.visible then Continue for
		    
		    //if line needs to be repainted (invalid), or is a full refresh, or is part of the previous or current selection
		    if invalidLines.HasKey(i) or _
		      fullRefresh or selection.IsLineIndexInRange(i) or _
		      (previouslyDrawnSelection <> nil and previouslyDrawnSelection.IsLineIndexInRange(i)) then
		      
		      //draw gutter
		      if displayLineNumbers then
		        
		        //caret line is slightly darker
		        if EnableLineFoldings then
		          Gutter.Graphics.ForeColor = GutterBackgroundColor.lighterColor(10)
		          gutter.Graphics.FillRect LineNumOffset - FoldingOffset, sy - g.TextHeight, FoldingOffset - 1, TextHeight
		        end if
		        if CaretLine = i then
		          Gutter.Graphics.ForeColor = GutterBackgroundColor '.darkerColor(20)
		          Gutter.Graphics.FillRect 0,sy - g.TextHeight, LineNumOffset - 1 - FoldingOffset, TextHeight
		          Gutter.Graphics.Bold = true
		          gutter.Graphics.ForeColor = &c000000
		        else
		          #if FlashRefreshRanges then
		            Gutter.Graphics.ForeColor =  rgb(rnd * 255, rnd * 255, rnd * 255) 'GutterBackgroundColor
		          #else
		            Gutter.Graphics.ForeColor =  GutterBackgroundColor
		          #endif
		          Gutter.Graphics.FillRect 0,sy - g.TextHeight,LineNumOffset - 1 - FoldingOffset, TextHeight
		        end if
		        
		        if DisplayDirtyLines and line.isDirty then
		          gutter.Graphics.ForeColor = DirtyLinesColor
		          gutter.Graphics.fillRect LineNumOffset - 4, sy - g.TextHeight, 3, TextHeight
		        end if
		        
		        //bookmarks?
		        if BookmarkTable.HasKey(i) then
		          dim img as Picture = UseBookmarkIconForLine(i)
		          if img = nil then img = BookmarkImage
		          Gutter.Graphics.DrawPicture img, 0, sy - g.TextHeight + (g.TextHeight - img.Height)/2
		        end if
		        
		        //row icon available?
		        if line.icon <> nil then
		          dim icn as Picture = line.icon
		          Gutter.Graphics.DrawPicture icn, Gutter.Width - icn.Width - 2 - FoldingOffset, sy - g.TextHeight + (g.TextHeight - icn.Height)/2
		        else
		          //line number
		          gutter.Graphics.ForeColor = LineNumbersColor
		          'gutter.Graphics.DrawString str(i + 1), lineNumOffset - 2 - gutter.Graphics.StringWidth(str(i + 1)) - FoldingOffset, sy - (TextHeight - gutter.Graphics.TextAscent)/2 'YN
		          LNstring=str(CharsInLine*i + 1)
		          hoffset=gutter.width-len(LNstring)*CharWidth-3
		          gutter.Graphics.DrawString LNstring, hoffset, sy - (TextHeight - gutter.Graphics.TextAscent)/2'YN
		        end if
		        
		        if EnableLineFoldings and line.isBlockStart then
		          if line.folded then //draw line folded marker
		            Gutter.Graphics.DrawPicture blockFoldedImage, LineNumOffset - blockFoldedImage.Width - 1, sy - TextHeight + (TextHeight - blockFoldedImage.Height) / 2 + 1
		          else
		            Gutter.Graphics.DrawPicture blockStartImage, LineNumOffset - blockStartImage.Width - 1, sy - TextHeight + (TextHeight - blockStartImage.Height) / 2 + 1
		          end if
		        elseif EnableLineFoldings and line.isBlockEnd then
		          Gutter.Graphics.DrawPicture blockEndImage, LineNumOffset - blockEndImage.Width - 1, sy - TextHeight + (TextHeight - blockEndImage.Height) / 2 + 1
		        end if
		        
		        Gutter.Graphics.Bold = false
		      end if
		      
		      //clear the background for this line
		      dim lineBackColor as Color = BackColor
		      
		      if not UseBackgroundColorForLine(i, lineBackColor) then
		        lineBackColor = BackColor
		      end if
		      g.ForeColor = lineBackColor
		      g.fillRect LineNumOffset, sy - g.TextHeight, g.Width - LineNumOffset, TextHeight
		      
		      //draw highlighted ranges!
		      dim ranges() as CharSelection = HighlightedRanges.SelectionsForLine(i) //first, draw the Highlighted ranges
		      line.AppendHighlightedWords(ranges, i) //then draw words with a background
		      ranges.Append(selection) //and finally, draw the selection
		      
		      if matchingBlockHighlight <> nil then
		        ranges.Append(MatchingBlockHighlight)
		      end if
		      
		      dim x,y,w as Integer
		      for each tmpSelection in ranges
		        If tmpSelection.IsLineIndexInRange(i) then //if in selection, Highlight line
		          
		          if hasFocus or not tmpSelection.LosesFocus then
		            g.ForeColor = tmpSelection.SelectionColor
		          else
		            g.ForeColor = BackColor.darkerColor(30)
		          end if
		          
		          if i > tmpSelection.StartLine and i < tmpSelection.EndLine then //fully selected line
		            g.FillRect LineNumOffset, sy - g.TextHeight, g.Width, TextHeight
		            
		          elseif i = tmpSelection.StartLine and tmpSelection.EndLine <> tmpSelection.StartLine then //firstLine
		            XYAtCharPos(tmpSelection.offset, i, x, y)
		            
		            if tmpSelection.Rounded then
		              g.FillRoundRect x, sy - g.TextHeight, g.Width - x + 10, TextHeight, 8, 8
		            else
		              g.FillRect x, sy - g.TextHeight, g.Width - x, TextHeight
		            end if
		            
		          ElseIf i = tmpSelection.EndLine and tmpSelection.EndLine <> tmpSelection.StartLine then //last line
		            XYAtCharPos(tmpSelection.offset + tmpSelection.length, i, x, y)
		            
		            if tmpSelection.Rounded then
		              g.FillRoundRect LineNumOffset - 10, sy - g.TextHeight, x - LineNumOffset + 10, TextHeight, 8, 8
		            else
		              g.FillRect LineNumOffset, sy - g.TextHeight, x - LineNumOffset, TextHeight
		            end if
		            
		          else //small block in line.
		            XYAtCharPos(tmpSelection.offset, i, x, y)
		            XYAtCharPos(tmpSelection.offset  + tmpSelection.length, i, w, y)
		            
		            if tmpSelection.Rounded then
		              g.FillRoundRect x, sy - g.TextHeight, w - x, TextHeight, 8, 8
		            else
		              g.FillRect x, sy - g.TextHeight, w - x, TextHeight
		            end if
		          end if
		          
		        end if
		      next
		      
		      //paint a line background?
		      PaintBelowLine(i, g, LineNumOffset, sy - g.TextHeight, g.Width - LineNumOffset - 1, TextHeight)
		      
		      //paint line
		      line.Paint(TextStorage, g, sx, sy - (g.TextHeight - g.TextAscent), TextColor, DisplayInvisibleCharacters, cefSelStart, cefSelLength)
		      
		      //a line overlay?
		      PaintAboveLine(i, g, LineNumOffset, sy - g.TextHeight, g.Width - LineNumOffset - 1, TextHeight)
		      
		      //contents after folded line...
		      if line.folded then
		        dim tmp as TextLine = lines.getLine(lines.nextBlockEndLine(i))
		        if tmp <> nil then
		          //make italic and paint after current line.
		          tmp.italic = True
		          tmp.Paint(TextStorage, g, sx + line.TotalWidth + blockFoldedTrailImage.Width + 6, sy - (g.TextHeight - g.TextAscent), TextColor, false, cefSelStart, cefSelLength, false)
		          tmp.italic = False
		        end if
		      end if
		      
		      //autocomplete suggestion
		      if cefSelLength = 0 and i = CaretLine and trailingSuggestion <> "" then
		        g.ForeColor = &cAAAAAA
		        g.DrawString trailingSuggestion, AutocompleteSuggestionInsertionX, sy - (g.TextHeight - g.TextAscent)
		      end if
		      
		      linesDrawn = linesDrawn + 1
		    end if
		    
		    //go to next line
		    sy = sy + TextHeight
		    if sy - g.TextHeight > g.Height then exit for //or bail out if we've reached the end of the canvas
		  next
		  
		  if VisibleLineRange.offset <> firstLine then
		    VisibleLineRange.offset = firstLine
		    VisibleLineRange.ResetIndex
		  end if
		  VisibleLineRange.length = linesOnScreen
		  
		  //clear the rest of the buffer, if necessary
		  sy = sy - g.TextHeight
		  if sy < g.Height then
		    g.ForeColor = BackColor
		    g.FillRect 0, sy, g.Width, g.Height - sy
		  end if
		  
		  //invalid lines are no longer invalid
		  invalidLines.Clear
		  fullRefresh = False
		  previouslyDrawnSelection = selection
		  
		  if MatchingBlockHighlight <> nil then
		    InvalidateLine(MatchingBlockHighlight.StartLine)
		    MatchingBlockHighlight = nil
		  end if
		  
		  //draw line numbers
		  if DisplayLineNumbers then
		    g.DrawPicture Gutter, 0,0
		  end if
		  
		  //->YN
		  'init the ruler
		  'dim ruler, rulerunit as string
		  'dim m as integer
		  'RulerPic = New Picture(g.width, HeaderHeight, 32)
		  '#if EditFieldGlobals.UseOldRenderer
		  'RulerPic.Graphics.UseOldRenderer = true
		  '#endif
		  'RulerPic.Graphics.TextFont = LineNumbersTextFont
		  'RulerPic.Graphics.TextSize = LineNumbersTextSize
		  'RulerPic.Graphics.ForeColor = GutterBackgroundColor
		  'RulerPic.Graphics.FillRect 0, 0, RulerPic.Width, RulerPic.Height
		  'RulerPic.Graphics.ForeColor = GutterSeparationLineColor
		  '#if targetmacos then
		  'RulerPic.Graphics.DrawLine gutter.width-1, RulerPic.height-2, RulerPic.width, RulerPic.height-2
		  '#else
		  'RulerPic.Graphics.DrawLine gutter.width-1, RulerPic.height-6, RulerPic.width, RulerPic.height-6
		  '#endif
		  '
		  ''the actual ruler:
		  'ruler=" "
		  'if CharsInLine<=100 then
		  'for m=10 to CharsInLine step 10
		  'ruler=ruler+"        "+str(m)
		  'next
		  'else
		  'for m=10 to 100 step 10
		  'ruler=ruler+"        "+str(m)
		  'next
		  'for m=110 to CharsInLine step 10
		  'ruler=ruler+"       "+str(m)
		  'next
		  'end if
		  'ruler=ruler+chr(13)
		  'dim ruler2 as string
		  'ruler2=""
		  'rulerunit = "....'....|"
		  'for m=0 to CharsInLine step 10
		  'ruler2=ruler2+rulerunit
		  'next
		  'ruler=ruler+leftb(ruler2,CharsInLine)
		  'RulerPic.Graphics.ForeColor = LineNumbersColor
		  'RulerPic.Graphics.DrawString ruler, 4+gutter.width, 3+TextSize
		  //YN<-
		  
		  //and frame
		  if Border then
		    g.ForeColor = BorderColor
		    g.DrawRect 0,0,g.Width,g.Height
		  end if
		  
		  // paint visual block feedback
		  #if TargetWin32
		    if MouseOverBlock <> nil then
		      'Dim ms As Double = Microseconds
		      //compose editfield + blockHighlight
		      
		      dim tmpPic as Picture = NewPicture(mBackBuffer.Width, mBackBuffer.Height, 32)
		      g = tmpPic.Graphics
		      g.DrawPicture( mBackBuffer, 0, 0, Width, Height, 0, 0, Width, Height)
		      
		      dim blockPicture as Picture = NewPicture(self.Width - LineNumOffset, self.Height, 32)
		      Dim gb As Graphics = blockPicture.Graphics
		      
		      gb.ForeColor = &c000000
		      gb.FillRect 0, 0, blockPicture.Width, blockPicture.Height
		      
		      gb = blockPicture.Mask.Graphics
		      gb.ForeColor = &cAAAAAA
		      gb.FillRect 0, 0, blockPicture.Width, blockPicture.Height
		      
		      gb.ForeColor = &cffffff
		      gb.FillRoundRect MouseOverBlock.value("x") + 1, MouseOverBlock.Value("y") + 1, MouseOverBlock.Value("w") - 2, MouseOverBlock.Value("h") - 2, 10,10
		      
		      gb.ForeColor = &cA0A0A0
		      gb.DrawRoundRect MouseOverBlock.value("x"), MouseOverBlock.Value("y"), MouseOverBlock.Value("w"), MouseOverBlock.Value("h"), 6,6
		      
		      gb.ForeColor = &C999999
		      gb.DrawRoundRect MouseOverBlock.value("x"), MouseOverBlock.Value("y"), MouseOverBlock.Value("w"), MouseOverBlock.Value("h"), 8,8
		      gb.DrawRoundRect MouseOverBlock.value("x")+1, MouseOverBlock.Value("y")+1, MouseOverBlock.Value("w")-2, MouseOverBlock.Value("h")-2, 10,10
		      
		      gb.ForeColor = &C888888
		      gb.DrawRoundRect MouseOverBlock.value("x"), MouseOverBlock.Value("y"), MouseOverBlock.Value("w"), MouseOverBlock.Value("h"), 10,10
		      gb.DrawRoundRect MouseOverBlock.value("x")+1, MouseOverBlock.Value("y")+1, MouseOverBlock.Value("w")-2, MouseOverBlock.Value("h")-2, 8,8
		      
		      
		      g.DrawPicture blockPicture, LineNumOffset, 0
		      
		      'ms = (Microseconds - ms) / 1000
		      'break
		      
		      gr.DrawPicture( tmpPic, 0, 0, Width, Height, 0, 0, Width, Height)
		    else
		      gr.DrawPicture( mBackBuffer, 0, 0, Width, Height, 0, 0, Width, Height)
		    end if
		    
		  #else
		    // Now we can draw the back buffer to the screen
		    gr.DrawPicture( mBackBuffer, 0, 0, Width, Height, 0, 0, Width, Height)
		  #endif
		  
		  //-----------------------------------------------------------overlays
		  
		  //paint the location of the Previous/next block char
		  if blockBeginPosX >= 0 then
		    PaintHighlightedBlock(gr)
		    blockBeginPosX = -1
		    blockBeginPosY = -1
		  end if
		  
		  //right margin
		  if DisplayRightMarginMarker and RightMarginAtPixel > 0 then
		    'gr.DrawLine rightMarginMarkerOffset - ScrollPositionX + LeftMarginOffset + LineNumOffset, 0, rightMarginMarkerOffset - ScrollPositionX + LeftMarginOffset + LineNumOffset, g.Height
		    gr.DrawPicture RightMarginLineImage, RightMarginAtPixel - ScrollPositionX + LeftMarginOffset + LineNumOffset, 0, 1, gr.Height, 0,0,1,1
		  end if
		  
		  //paint caret
		  if DragSource = nil then
		    PaintCaret(CaretPos, gr)
		  else
		    PaintCaret(DragTextPos, gr)
		  end if
		  
		  PaintOver(gr)
		  
		  #if TargetMacOS
		    // paint visual block feedback
		    if MouseOverBlock <> nil then
		      dim blockPicture as Picture = NewPicture(self.Width - LineNumOffset, self.Height, 32)
		      blockPicture.Graphics.ForeColor = &c000000
		      blockPicture.Graphics.FillRect 0, 0, blockPicture.Width, blockPicture.Height
		      
		      blockPicture.mask.Graphics.ForeColor = &cAAAAAA
		      blockPicture.mask.Graphics.FillRect 0, 0, blockPicture.Width, blockPicture.Height
		      
		      blockPicture.mask.Graphics.ForeColor = &cffffff
		      blockPicture.Mask.Graphics.FillRoundRect MouseOverBlock.value("x") + 1, MouseOverBlock.Value("y") + 1, MouseOverBlock.Value("w") - 2, MouseOverBlock.Value("h") - 2, 10, 10
		      
		      blockPicture.mask.Graphics.ForeColor = &C888888
		      blockPicture.mask.Graphics.PenWidth = 2
		      blockPicture.mask.Graphics.PenHeight = 2
		      blockPicture.Mask.Graphics.DrawRoundRect MouseOverBlock.value("x"), MouseOverBlock.Value("y"), MouseOverBlock.Value("w"), MouseOverBlock.Value("h"), 10, 10
		      
		      gr.DrawPicture blockPicture, LineNumOffset, 0
		    end if
		  #endif
		  
		  #if DebugBuild
		    redrawTime = Microseconds - redrawTime
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub enableBlinker(value as boolean)
		  if caretBlinker = nil then Return
		  
		  if value and not ReadOnly then
		    caretBlinker.Mode = timer.ModeMultiple
		    caretState = true
		    
		  Else
		    caretBlinker.Mode = timer.ModeOff
		    caretState = false
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function fetchAutocompleteOptions() As boolean
		  //ask the client window for Autocomplete options for the current word.
		  mCurrentAutocompleteOptions = nil
		  
		  //get word where caret is
		  dim CurrentWordSegment as TextSegment = CurrentWord
		  if CurrentWordSegment.length = 0 then Return False
		  if CaretPos = CurrentWordSegment.offset then Return False //return false if cursor at the beginning of word... requested by Scott Fortmann-Roe
		  
		  //get the actual word text
		  dim prefix as String = TextStorage.getText(CurrentWordSegment.offset, CurrentWordSegment.length).Trim
		  if prefix.len = 0  or prefix = "." then Return False
		  
		  //raise event
		  mCurrentAutocompleteOptions = AutocompleteOptionsForPrefix(prefix)
		  
		  if CurrentAutocompleteOptions = nil then Return False
		  
		  if UBound(CurrentAutocompleteOptions.Options) < 0 then
		    mCurrentAutocompleteOptions = nil
		    Return False
		  end if
		  
		  CurrentAutocompleteOptions.Prefix = prefix
		  
		  //get current path component, what this is is, the last word after the last period in the prefix
		  //if the prefix is one.two.three then the current component will be "three"
		  dim tmpPath() as String = prefix.Split(".")
		  CurrentAutocompleteOptions.currentPathComponent = tmpPath(UBound(tmpPath))
		  
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Find(what as string, ignoreCase as boolean, wrap as boolean, redraw as boolean = true, startPos as integer = - 1) As integer
		  if what = "" then Return -1
		  
		  dim tmpTxt as String = TextStorage.getText(0, TextStorage.Length)
		  if tmpTxt.Encoding <> nil and tmpTxt.Encoding.Equals(Encodings.UTF16) then tmpTxt = tmpTxt.ConvertEncoding(encodings.UTF8)
		  
		  if startPos < 0 then startPos = cefSelStart + cefSelLength
		  startPos = tmpTxt.left(startPos).LenB //in case there are multi-bytes...
		  
		  dim scanner as new regex
		  scanner.SearchPattern = what.ReplaceAll("\","\\").ReplaceAll("(","\(").replaceAll(")","\)").ReplaceAll("[","\[").ReplaceAll("]","\]").ReplaceAll("{","\{").ReplaceAll("}","\}").ReplaceAll("?","\?").ReplaceAll("*","\*").ReplaceAll("+","\+").ReplaceAll("|","\|").ReplaceAll("^","\^").ReplaceAll("$","\$").ReplaceAll(".","\.")
		  scanner.Options.CaseSensitive = not ignoreCase
		  
		  dim match as RegExMatch = scanner.Search(tmpTxt, startPos)
		  
		  if match = nil then
		    if wrap then
		      'beep
		      Return find(what, ignoreCase, false, redraw, 0)
		    else
		      Return -1 //not found
		    end if
		  end if
		  
		  //reveal line if invisible (folded)
		  dim offset as integer = tmpTxt.LeftB(match.SubExpressionStartB(0)).len
		  dim length as integer = match.SubExpressionString(0).Len
		  dim lineIdx as Integer = lines.getLineNumberForOffset(offset)
		  
		  dim line as TextLine = lines.getLine(lineIdx)
		  if line <> nil and not line.visible then lines.revealLine(lineIdx)
		  
		  changeSelection(offset, length)
		  if redraw then self.Redraw
		  
		  Return cefSelStart
		  
		  Exception RegExSearchPatternException
		    Return -1 //ignore these...
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FoldAllLines()
		  //hmmm
		  if not EnableLineFoldings then Return
		  lines.foldAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FoldBlockAtCaretPos()
		  //fold the block where the caret is.
		  if not EnableLineFoldings then Return
		  
		  dim idx as Integer = OpeningBlockLineForLine(CaretLine)
		  if idx < 0 then Return
		  
		  ToggleLineFold(idx)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FoldingOffset() As integer
		  if not EnableLineFoldings then Return 0
		  Return blockStartImage.Width + 2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getcefSelLength() As integer
		  
		  return len(replaceall(seltext,chr(13),"")) 'YN
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getcefSelStart() As integer
		  return len(replaceall(left(Text,mcefSelStart),chr(13),"")) 'YN
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub getFieldXY(byref locx as integer, byref locy as integer)
		  //find the window where this control is...
		  //since the control can be deeeeeeep whithin container controls...
		  locx=me.Left
		  locy=me.top
		  
		  dim container as Window
		  Container=me.Window
		  
		  while true
		    locx=locx+Container.Left
		    locy=locy+Container.top
		    
		    if container isa ContainerControl then
		      Container=ContainerControl(Container).Window
		      
		    elseif Container isa Window then
		      
		      // Account for toolbar
		      // Thanks to Roger Meier
		      // This no longer works... from 2008r5+ it reports -1????
		      #if RBVersion >= 2007.00 and TargetWin32 then
		        for i as integer = 0 to container.ControlCount-1
		          if container.Control(i) isa Toolbar then
		            dim tb as Toolbar = Toolbar(container.Control(i))
		            locy = locy + tb.Height
		          end if
		        next
		      #endif
		      
		      Exit
		    end if
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLine(index as integer) As string
		  //returns the text contained in a line.
		  dim line as TextLine = lines.getLine(index)
		  if line = nil then Return ""
		  
		  Return TextStorage.getText(line.offset, line.length)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub handleDoubleClick()
		  //highlight word(s) after a double click
		  
		  dim word as new TextSegment
		  dim char as String = TextStorage.getCharAt(CaretPos)
		  if IsWhitespace(char) then char  = TextStorage.getCharAt(max(CaretPos - 1, 0))
		  
		  //check if in placeholder..
		  dim line as TextLine = lines.getLine(CaretLine)
		  if line <> nil and line.PlaceholderForOffset(CaretPos + 1) <> nil then
		    Word.offset = CaretPos + 1
		    Word.length = 0
		    
		  elseif IsBlockChar(char) then
		    //if is a block char, find the start/end block
		    dim tmp as String
		    
		    if BLOCK_OPEN_CHARS.instr(char) > 0 then //
		      Word.offset = CaretPos + 1
		      word.length = NextBlockChar(char, CaretPos, tmp) - CaretPos - 1
		      
		    else
		      Word.offset = PreviousBlockChar(char, CaretPos, tmp) + 1
		      word.length = CaretPos - Word.offset
		      
		    end if
		    
		  elseif IsWhitespace(char) then
		    Word.offset = previousNonWhitespace(CaretPos)
		    Word.length = nextNonWhitespace(CaretPos) - word.offset
		    
		  elseif IsAlpha(char) then
		    Word.offset = previousNonAlpha(CaretPos)
		    Word.length = nextNonAlpha(CaretPos) - word.offset
		    
		  else
		    Word.offset = previousAlpha(CaretPos)
		    Word.length = nextAlpha(CaretPos) - word.offset
		    
		  end if
		  
		  changeSelection(word.offset, word.length, true)
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleDragOnGutter(X as integer, Y as integer)
		  //Handle a mouse drag on the gutter.
		  
		  dim currPos as Integer = CharPosAtXY(x,y)
		  if selectedLine >=0 and x < LineNumOffset then
		    //drag on the line numbers
		    dim onLine as Integer = lines.getLineNumberForOffset(currPos)
		    dim fromLine, toLine as TextLine
		    fromLine = lines.getLine(min(selectedLine, onLine))
		    toLine = lines.getLine(max(selectedLine, onLine))
		    
		    changeSelection(fromLine.offset, toLine.offset + toLine.length - fromLine.offset - toline.delimiterLength)
		    
		  else
		    changeSelection(min(currPos, CaretPos), abs(currPos - CaretPos))
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleHorizontalMouseDrag(x as integer, y as integer)
		  if x < LineNumOffset then
		    changeScrollValues(ScrollPositionX + (x - LineNumOffset), ScrollPosition)
		    
		  ElseIf x > Width then
		    changeScrollValues(ScrollPositionX + (x - Width), ScrollPosition)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function HandleKeyDown(key as string) As boolean
		  //handles the keys pressed
		  ignoreRepaint = true
		  
		  const DELETE_KEY = 8
		  const FWD_DELETE_KEY = 127
		  const UP_KEY = 30
		  const DOWN_KEY = 31
		  const LEFT_KEY = 28
		  const RIGHT_KEY = 29
		  const PAGE_UP_KEY = 11
		  const PAGE_DOWN_KEY = 12
		  const HOME_KEY = 1
		  const END_KEY = 4
		  const ESC_KEY = 27
		  
		  dim keyAsc as Integer = asc(key)
		  
		  #if DebugBuild
		    keyDownTime = Microseconds
		  #endif
		  
		  //delete
		  if keyAsc = DELETE_KEY or keyAsc = FWD_DELETE_KEY then
		    //add a new event ID if changed typing, or no event ID, or time elapsed between events is 5 secs
		    if typing or CurrentEventID = 0   or ticks > CurrentEventID + (60 * UNDO_EVT_BLOCK_SECS) then CurrentEventID = Ticks
		    typing = False
		    DeleteChars(keyAsc = FWD_DELETE_KEY)
		    updateDesiredColumn
		    
		    //arrow keys
		  elseif keyAsc = LEFT_KEY then
		    CurrentEventID = 0
		    moveCaretLeft
		    
		  elseif keyAsc = RIGHT_KEY then
		    CurrentEventID = 0
		    moveCaretRight
		    
		  elseif keyAsc = UP_KEY then
		    CurrentEventID = 0
		    moveCaretUp
		    
		  elseif keyAsc = DOWN_KEY then
		    CurrentEventID = 0
		    moveCaretDown
		    
		  ElseIf keyAsc = PAGE_UP_KEY then
		    #if TargetMacOS
		      PageUp
		    #else
		      PageUp '++++ -> should move cursor by a page instead!
		    #endif
		    
		  elseif keyAsc = PAGE_DOWN_KEY then
		    #if TargetMacOS
		      PageDown
		    #else
		      PageDown '++++ -> should move cursor by a page instead!
		    #endif
		    
		  elseif keyAsc = HOME_KEY then
		    #if TargetMacOS
		      ScrollHome
		    #else
		      ScrollHome '++++ -> should move cursor to start of line instead!
		    #endif
		    
		  elseif keyAsc = END_KEY then
		    #if TargetMacOS
		      ScrollEnd
		    #else
		      ScrollEnd '++++ -> should move cursor to end of line instead!
		    #endif
		    
		    //autocomplete
		    //forward the event to the user to figure out if this key should trigger the autocomplete
		    //it has a performance penalty, if you would like to set your own key, replace
		    //ShouldTriggerAutocomplete(key, fetchAutocompleteOptions) with your key combination.
		  elseif EnableAutocomplete and ShouldTriggerAutocomplete(key, fetchAutocompleteOptions) then
		    AutocompleteManual
		    
		    //ignore these
		    #if TargetWin32
		  elseif Keyboard.ControlKey or _
		    Keyboard.OSKey or _
		    (asc(key) >= 200 and asc(key) <= 211) or _ //200-211 f keys
		    keyAsc = ESC_KEY then
		    #else
		  elseif Keyboard.ControlKey or _
		    Keyboard.OSKey or _
		    asc(key) = 16 or _ //f keys on the mac
		    keyAsc = ESC_KEY then
		    #endif
		    ignoreRepaint = False
		    Return False
		    
		  Else
		    //any other key
		    //add a new event ID if changed typing, or no event ID, or time elapsed between events is 5 secs
		    if not typing or CurrentEventID = 0  or ticks > CurrentEventID + (60 * UNDO_EVT_BLOCK_SECS) then CurrentEventID = Ticks
		    typing = true
		    
		    //if there's a selection, replace it
		    if me.cefSelLength > 0 then
		      replace(cefSelStart , me.cefSelLength, key)
		    else
		      //see if we need to Autocomplete brackets
		      dim bracketInserted as Boolean
		      if AutoCloseBrackets then
		        //scan the possible opening block chars...
		        for i as Integer = 1 to BLOCK_OPEN_CHARS.len
		          if key = BLOCK_OPEN_CHARS.Mid(i, 1) then
		            //found, so the closing block MUST be at the same location, in the BLOCK_CLOSE_CHARS
		            key = key + BLOCK_CLOSE_CHARS.Mid(i, 1)
		            bracketInserted = true
		            exit for
		          end if
		        next
		      end if
		      insert(cefSelStart, key)
		      
		      //if autocompleted, move caret one char to the left
		      if bracketInserted then CaretPos = CaretPos - 1
		    end if
		    
		    
		    //autoindent lines?
		    //check if current (new) entered line needs autoindenting...
		    If AutoIndentNewLines and (key = chr(13) or key = chr(3)) then
		      //indent this new line?
		      dim LineNum as Integer = lines.getLineNumberForOffset(CaretPos)
		      dim line as TextLine = lines.getLine(LineNum)
		      //check current line
		      if IndentNewLine(LineNum, line) > 0 then
		        InvalidateLine(LineNum)
		        
		      end if
		      
		    ElseIf AutoIndentNewLines then
		      //check current line also available in AutocompleteOptionSelected
		      dim thisLine as TextLine = lines.getLine(CaretLine)
		      if thisLine <> nil and thisLine.isBlockEnd and IndentBlockEndLine(CaretLine) > 0 then
		        InvalidateLine(CaretLine)
		      end if
		    end if
		    
		    //save the screen location of the caret, in case we need to move up/down
		    updateDesiredColumn
		  end if
		  
		  #if DebugBuild
		    keyDownTime = Microseconds - keyDownTime
		  #endif
		  
		  if MouseOverBlock <> nil then
		    CreateMouseOverBlockHighlight(CaretLine)
		  end if
		  
		  //and redraw.
		  ignoreRepaint = False
		  Redraw
		  
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function HandleKeyDownOriginal(key as string) As boolean
		  //handles the keys pressed
		  ignoreRepaint = true
		  'MsgBox str(asc(key))
		  
		  const DELETE_KEY = 8
		  const FWD_DELETE_KEY = 127
		  const UP_KEY = 30
		  const DOWN_KEY = 31
		  const LEFT_KEY = 28
		  const RIGHT_KEY = 29
		  const PAGE_UP_KEY = 11
		  const PAGE_DOWN_KEY = 12
		  const HOME_KEY = 1
		  const END_KEY = 4
		  const ESC_KEY = 27
		  
		  #if DebugBuild
		    keyDownTime = Microseconds
		  #endif
		  
		  //delete
		  if Keyboard.AsyncKeyDown(KEY_BACKSPACE) or Keyboard.AsyncKeyDown(KEY_DELETE) then
		    //add a new event ID if changed typing, or no event ID, or time elapsed between events is 5 secs
		    if typing or CurrentEventID = 0   or ticks > CurrentEventID + (60 * UNDO_EVT_BLOCK_SECS) then CurrentEventID = Ticks
		    typing = False
		    DeleteChars(Keyboard.AsyncKeyDown(KEY_DELETE))
		    updateDesiredColumn
		    
		    //arrow keys
		  elseif Keyboard.AsyncKeyDown(KEY_LEFT) then
		    CurrentEventID = 0
		    moveCaretLeft
		    
		  elseif Keyboard.AsyncKeyDown(KEY_RIGHT) then
		    CurrentEventID = 0
		    moveCaretRight
		    
		  elseif Keyboard.AsyncKeyDown(KEY_UP) then
		    CurrentEventID = 0
		    moveCaretUp
		    
		  elseif Keyboard.AsyncKeyDown(KEY_DOWN) then
		    CurrentEventID = 0
		    moveCaretDown
		    
		  ElseIf Keyboard.AsyncKeyDown(KEY_PGUP) then
		    PageUp
		    
		  elseif Keyboard.AsyncKeyDown(KEY_PGDWN) then
		    PageDown
		    
		  elseif Keyboard.AsyncKeyDown(KEY_HOME) then
		    ScrollHome
		    
		  elseif Keyboard.AsyncKeyDown(KEY_END) then
		    ScrollEnd
		    
		    //autocomplete
		    //forward the event to the user to figure out if this key should trigger the autocomplete
		    //it has a performance penalty, if you would like to set your own key, replace
		    //ShouldTriggerAutocomplete(key, fetchAutocompleteOptions) with your key combination.
		  elseif EnableAutocomplete and ShouldTriggerAutocomplete(key, fetchAutocompleteOptions) then
		    AutocompleteManual
		    
		    //ignore these
		    #if TargetWin32
		  elseif Keyboard.AsyncControlKey or _
		    Keyboard.AsyncOSKey or _
		    (asc(key) >= 200 and asc(key) <= 211) or _ //200-211 f keys
		    Keyboard.AsyncKeyDown(KEY_ESC) then
		    #else
		  elseif Keyboard.AsyncControlKey or _
		    Keyboard.AsyncOSKey or _
		    asc(key) = 16 or _ //f keys on the mac
		    Keyboard.AsyncKeyDown(KEY_ESC) then
		    #endif
		    ignoreRepaint = False
		    Return False
		    
		  Else
		    //any other key
		    //add a new event ID if changed typing, or no event ID, or time elapsed between events is 5 secs
		    if not typing or CurrentEventID = 0  or ticks > CurrentEventID + (60 * UNDO_EVT_BLOCK_SECS) then CurrentEventID = Ticks
		    typing = true
		    
		    //if there's a selction, replace it
		    if me.cefSelLength > 0 then
		      replace(cefSelStart , me.cefSelLength, key)
		    else
		      //see if we need to Autocomplete brackets
		      dim bracketInserted as Boolean
		      if AutoCloseBrackets then
		        //scan the possible opening block chars...
		        for i as Integer = 1 to BLOCK_OPEN_CHARS.len
		          if key = BLOCK_OPEN_CHARS.Mid(i, 1) then
		            //found, so the closing block MUST be at the same location, in the BLOCK_CLOSE_CHARS
		            key = key + BLOCK_CLOSE_CHARS.Mid(i, 1)
		            bracketInserted = true
		            exit for
		          end if
		        next
		      end if
		      insert(cefSelStart, key)
		      
		      //if autocompleted, move caret one char to the left
		      if bracketInserted then CaretPos = CaretPos - 1
		    end if
		    
		    
		    //autoindent lines?
		    //check if current (new) entered line needs autoindenting...
		    If AutoIndentNewLines and (key = chr(13) or key = chr(3)) then
		      //indent this new line?
		      dim LineNum as Integer = lines.getLineNumberForOffset(CaretPos)
		      dim line as TextLine = lines.getLine(LineNum)
		      //check current line
		      if IndentNewLine(LineNum, line) > 0 then
		        InvalidateLine(LineNum)
		        
		      end if
		      
		    ElseIf AutoIndentNewLines then
		      //check current line also available in AutocompleteOptionSelected
		      dim thisLine as TextLine = lines.getLine(CaretLine)
		      if thisLine <> nil and thisLine.isBlockEnd and IndentBlockEndLine(CaretLine) > 0 then
		        InvalidateLine(CaretLine)
		      end if
		    end if
		    
		    //save the screen location of the caret, in case we need to move up/down
		    updateDesiredColumn
		  end if
		  
		  #if DebugBuild
		    keyDownTime = Microseconds - keyDownTime
		  #endif
		  
		  //and redraw.
		  ignoreRepaint = False
		  Redraw
		  
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleTextChanged()
		  if clearHighlightedRangesOnTextChange then _
		  ClearHighlightedCharacterRanges
		  
		  TextChange
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleTextDrag(x as integer, y as integer)
		  //save the selection...
		  DragTextSelection = new DataRange
		  DragTextSelection.offset = cefSelStart
		  DragTextSelection.length = cefSelLength
		  
		  dim drag as Picture = SelectedTextDragImage
		  
		  #If RBVersion>2012 then
		    dim di as DragItem = New DragItem(self,x,y, drag.Width, drag.Height)  'As of 2012r1
		  #else
		    dim di as DragItem = NewDragItem(x,y, drag.Width, drag.Height) '2011R4.3 and before
		  #endif
		  
		  //set the drag text
		  di.Text = me.SelText
		  di.SetImage(drag)
		  
		  //set the dragging source.
		  DragSource = self
		  di.Drag
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleVerticalMouseDrag(x as integer, y as integer)
		  //if dragging selection outside visible area...
		  if y < 0 or y > Height then
		    
		    dim linesToScroll as Integer
		    
		    if y < 0 then
		      linesToScroll = y / TextHeight
		      
		    else
		      linesToScroll = (y - Height) / TextHeight
		      
		    end if
		    
		    //cap the number of times this method gets called per second (here is max 12 calls per second)
		    if Ticks > lastDragTicks + 5 then
		      changeScrollValues(ScrollPositionX, ScrollPosition + linesToScroll)
		      lastDragTicks = Ticks
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Highlight()
		  if highlighter.state = Thread.NotRunning then highlighter.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightCharacterRange(offset as integer, length as integer, withColor as color, rounded as boolean = false)
		  if offset >= TextLength or length = 0 then Return
		  
		  if offset + length >= TextLength then
		    length = TextLength - offset
		  end if
		  
		  dim tmp as new CharSelection
		  //->YN
		  'tmp.offset = offset
		  'tmp.length = length
		  
		  tmp.offset = -1+offset+offset\charsinline
		  'count CRs within highlight:
		  'CRs up to offset+highlight=(offset+length)\CharsInLine
		  'CRs up to offset=offset\charsinline
		  tmp.length = length+(offset+length-1)\CharsInLine-offset\charsinline
		  //YN<-
		  tmp.StartLine = lines.getLineNumberForOffset(tmp.offset)
		  tmp.EndLine = lines.getLineNumberForOffset(tmp.offset + tmp.length)
		  
		  tmp.SelectionColor = withColor
		  tmp.Rounded = rounded
		  tmp.LosesFocus = False
		  
		  tmp = HighlightedRanges.addSelection(tmp)
		  for i as Integer = tmp.StartLine to tmp.EndLine
		    InvalidateLine(i)
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HighlightClosingBlock(text as string, offset as integer)
		  //find the next closing block, starting at offset
		  dim pos as Integer
		  dim closeChar as String
		  pos = NextBlockChar(text, offset, closeChar)
		  
		  if pos >= 0 then
		    if HighlightMatchingBracketsMode = 0 then //circle
		      XYAtCharPos(pos, blockBeginPosX, blockBeginPosY)
		    else
		      dim line as Integer = LineNumAtCharPos(pos)
		      MatchingBlockHighlight = new CharSelection(pos, 1, line, line, BracketHighlightColor)
		      InvalidateLine(line)
		    end if
		    
		    BlockCharsMatched(text, offset, closeChar, pos)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HighlightOpeningBlock(text as string, offset as integer)
		  //find the previous opening block, starting at offset
		  
		  dim pos as Integer
		  dim openingChar as string
		  pos = PreviousBlockChar(text, offset, openingChar)
		  
		  if pos >= 0 then
		    if HighlightMatchingBracketsMode = 0 then//circle
		      XYAtCharPos(pos, blockBeginPosX, blockBeginPosY)
		    else
		      dim line as Integer = LineNumAtCharPos(pos)
		      MatchingBlockHighlight = new CharSelection(pos, 1, line, line, BracketHighlightColor)
		      InvalidateLine(line)
		    end if
		    
		    BlockCharsMatched(openingChar, pos, text, offset)
		  else
		    //no open block found
		    break
		    beep
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IndentBlockEndLine(lineIndex as integer, updateSelection as Boolean = true) As integer
		  if not AutoIndentNewLines then Return 0
		  if SyntaxDefinition = nil then Return 0
		  
		  dim previousLine, current as TextLine
		  //check current line first.
		  current = lines.getLine(lineIndex)
		  #if DebugBuild
		    dim txt as String = TextStorage.getText(current.offset, current.length)
		  #endif
		  if not SyntaxDefinition.isBlockEnd(TextStorage.getText(current.offset, current.length)) then Return 0
		  
		  previousLine = lines.getLine(lines.previousBlockStartLine(lineIndex))
		  if previousLine = nil then Return 0
		  
		  dim count as Integer
		  
		  //find all first non-whitespace char in previous line
		  dim firstCharPos as Integer = nextNonWhitespace(previousLine.offset - 1, previousLine.offset + previousLine.length - previousLine.delimiterLength)
		  dim indentChars as String = TextStorage.getText(previousLine.offset, firstCharPos - previousLine.offset)
		  
		  //local pos
		  dim localfirstCharPos as integer = nextNonWhitespace(current.offset - 1, current.offset + current.length - current.delimiterLength)
		  dim localIndentChars as String = TextStorage.getText(current.offset, localfirstCharPos - current.offset)
		  
		  //already indented?
		  if localIndentChars = indentChars then Return 0
		  
		  dim delta as Integer = firstCharPos - previousLine.offset
		  delta = localfirstCharPos - current.offset - delta
		  
		  dim cp as Integer = CaretPos
		  Replace(current.offset, current.length, indentChars + TextStorage.getText(localfirstCharPos, current.length + current.offset - localfirstCharPos))
		  
		  if updateSelection then _
		  CaretPos = cp - delta
		  
		  Return indentChars.len
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IndentNewLine(lineIndex as integer, line as textline, updateSelection as Boolean = true) As integer
		  if not AutoIndentNewLines then Return 0
		  
		  dim previousLine as TextLine
		  previousLine = lines.getLine(lineIndex - 1)
		  
		  if previousLine = nil then Return 0
		  
		  //find all first non-whitespace char in previous line
		  dim firstCharPos as Integer = nextNonWhitespace(previousLine.offset - 1, previousLine.offset + previousLine.length - previousLine.delimiterLength)
		  
		  dim indentChars as String = TextStorage.getText(previousLine.offset, firstCharPos - previousLine.offset)
		  
		  //check extra indentations
		  if SyntaxDefinition <> nil then
		    //check current line first.
		    dim count as Integer = SyntaxDefinition.isBlockStart(TextStorage.getText(previousLine.offset, previousLine.length))
		    
		    if Count > 0 then //extra indent
		      indentChars = indentChars + indentStr(Count)
		      
		    Elseif Count < 0 then //remove indent
		      indentChars = indentChars.left(indentChars.len + Count)
		      
		    End If
		    
		  end if
		  
		  if indentChars.len = 0 then Return 0
		  
		  dim CaretPos as integer = self.CaretPos
		  Replace(line.offset, line.length, indentChars + TextStorage.getText(line.offset, line.length))
		  
		  if updateSelection then _
		  changeSelection(CaretPos + indentChars.len, 0)
		  
		  Return indentChars.len
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function indentStr(indents as integer) As string
		  dim tmp as String
		  for i as Integer = 1 to indents
		    tmp = tmp + chr(9)
		  next
		  
		  Return tmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Insert(offset as integer, text as string)
		  Replace(offset, 0, Text)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvalidateAllLines()
		  //mark all lines for redraw
		  InvalidateLine(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvalidateLine(index as integer)
		  //invalidates the given line, that is, mark it for redrawing
		  fullRefresh = index < 0 or fullRefresh
		  invalidLines.Value(index) = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsAlpha(inText as string) As boolean
		  //is "inText" alphanumeric?
		  Return matchesRegex("\w", inText)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsBlockChar(char as string) As boolean
		  //is "char" a block char?
		  if blockCharsPattern = "" then
		    //build search pattern
		    for i as Integer = 1 to BLOCK_OPEN_CHARS.len
		      blockCharsPattern = blockCharsPattern + "\" + BLOCK_OPEN_CHARS.Mid(i, 1) + "\"+BLOCK_CLOSE_CHARS.Mid(i, 1)
		    next
		    blockCharsPattern = "[" + blockCharsPattern + "]"
		  end if
		  Return matchesRegex(blockCharsPattern, char)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsDirty() As boolean
		  Return UndoMgr.isDirty
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsWhitespace(what as string) As boolean
		  //is "what" whitespace?
		  Return matchesRegex("\s", what)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineCount() As integer
		  Return lines.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LineCountChanged(newLineCount as integer)
		  //called by line manager, when the line number changes.
		  
		  //force to recalculate the line number gutter
		  LineNumOffset = 0
		  
		  //raise the linecountchanged event
		  RaiseEvent LineCountChanged lines.Count
		  
		  //and calculate the maximum scrollbar values.
		  CalculateMaxVerticalSB
		  
		  InvalidateAllLines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineHasBookmark(lineIndex as Integer) As Boolean
		  Return BookmarkTable.HasKey(lineIndex)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LineHighlighted(lineIndex as integer)
		  //mark for repaint
		  InvalidateLine(lineIndex)
		  
		  dim line as TextLine = lines.getLine(lineIndex)
		  if line = nil then Return
		  
		  if line.LineSymbols = nil or line.LineSymbols.Count = 0 then Return
		  
		  //extract symbols and add them to local table.
		  if CurrentDocumentSymbols = nil then CurrentDocumentSymbols = new Dictionary
		  
		  for i as Integer = 0 to line.LineSymbols.Count - 1
		    //CurrentDocumentSymbols.Value(line.LineSymbols.Key(i)) = line
		    CurrentDocumentSymbols.Value(line) = nil
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineIcon(index as integer) As picture
		  //returns the rowicon for the index line
		  dim line as TextLine = lines.getLine(index)
		  if line = nil then Return nil
		  
		  return line.icon
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LineIcon(index as integer, assigns value as picture)
		  //sets a rowicon
		  dim line as TextLine = lines.getLine(index)
		  if line = nil then Return
		  
		  line.icon = value
		  InvalidateLine(index)
		  
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineNumAtCharPos(offset as integer) As integer
		  Return lines.getLineNumberForOffset(offset)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LineSymbolsRemoved(symbols as dictionary)
		  //either the symbols have changed, or the line containing them was removed, so remove them from local table.
		  dim key as TextLine
		  
		  for each key in symbols.keys
		    if CurrentDocumentSymbols.HasKey(key) then CurrentDocumentSymbols.Remove(key)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function matchesRegex(pattern as string, expression as string) As boolean
		  //returns whether expression matches the pattern.
		  
		  Dim rg as RegEx
		  Dim myMatch as RegExMatch
		  rg = new RegEx
		  rg.SearchPattern = pattern
		  
		  if expression.Encoding <> nil and expression.Encoding.Equals(Encodings.UTF16) then expression = expression.ConvertEncoding(Encodings.UTF8)
		  
		  myMatch = rg.search(expression)
		  
		  Return myMatch <> nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MaxLineLengthChanged(longestLineIndex as integer)
		  //called by the line manager, when there's a new line that's the longest line.
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  //oh yes... this can be a lot better, for starters we can get the screen width by reading all the word lenghts in this line... I guess I'm just lazy.
		  if longestLineIndex < 0 then Return
		  dim maxLine as TextLine = lines.getLine(longestLineIndex)
		  if maxline = nil or abs(maxLine.length - lastLongestLineLength) < 2 then Return
		  
		  //cache length
		  lastLongestLineLength = maxLine.length
		  
		  //measure string in pixels
		  dim tmp as Picture = tmpPicture
		  
		  'dim maxString as String = maxline.TextToDisplay(TextStorage, DisplayInvisibleCharacters)
		  dim maxLength as single = maxLine.TextWidth(TextStorage, tmp.Graphics, DisplayInvisibleCharacters)'maxline.TotalWidth 'tmp.graphics.stringWidth(maxString)
		  
		  if maxLength = lastLongestLinePixels then Return
		  lastLongestLinePixels = maxLength
		  
		  //raise event
		  RaiseEvent MaxLineLengthChanged lastLongestLinePixels
		  
		  //calculate scrollbar
		  CalculateMaxHorizontalSB
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub moveCaretDown()
		  //arrow down...
		  
		  //if selection, move Caret to end of selection.
		  if not Keyboard.ShiftKey and cefSelLength > 0 then
		    changeSelection(cefSelStart + cefSelLength, 0)
		    Return
		  end if
		  
		  dim lineNum as Integer
		  
		  //find line number
		  if cefSelStart < CaretPos then
		    lineNum = lines.getLineNumberForOffset(cefSelStart)
		    
		  else
		    lineNum = lines.getLineNumberForOffset(cefSelStart + cefSelLength)
		    
		  end if
		  
		  //default the lines to move to 1
		  dim linesToMove as Integer = 1
		  
		  //if option is pressed, then move down a full page
		  if Keyboard.OptionKey then linesToMove = MaxVisibleLines - 1
		  
		  //or if control/os key pressed, move to the end of the page
		  dim moveToEnd as Boolean
		  #if TargetWin32 then
		    moveToEnd = Keyboard.ControlKey
		  #else
		    moveToEnd = Keyboard.OSKey
		  #endif
		  
		  if moveToEnd then
		    linesToMove = lines.Count - 1 - ScrollPosition
		  end if
		  
		  dim line as TextLine
		  dim offset as Integer
		  //get line to move to
		  LineNum =LineNum + linesToMove
		  if LineNum >= lines.Count then //moving down on the last line, jump to the end of that line
		    LineNum = lines.Count - 1
		    line = lines.getLine(LineNum)
		    offset = line.offset + line.length - line.delimiterLength
		    
		  else
		    line = lines.getLine(LineNum)
		    
		    //find offset for screen desired position
		    offset = offsetForXPos(line, caretDesiredColumn)
		  end if
		  
		  //if shift key pressed, then we're extending the selection
		  if Keyboard.ShiftKey then
		    changeSelection(min(CaretPos, offset), abs(offset - CaretPos))
		    
		  else
		    changeSelection(offset, 0)
		    
		  end if
		  
		  //scroll if necessary.
		  if lineNum > ScrollPosition + MaxVisibleLines - 1 then changeScrollValues(ScrollPositionX, LineNum - MaxVisibleLines + 1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub moveCaretLeft()
		  //left arrow pressed
		  
		  dim pos as Integer
		  
		  //default the places to move to 1
		  dim charsToMove as Integer = 1
		  dim LineNum as Integer
		  
		  //move to start of line?
		  dim toStartOfLine as Boolean
		  
		  //if shift pressed, we're changing the current selection.
		  if Keyboard.ShiftKey then
		    
		    //if the end of the selection is after the CaretPos then, shrink selection
		    if cefSelStart + cefSelLength > CaretPos then
		      
		      #if TargetWin32
		        toStartOfLine =  Keyboard.ControlKey
		      #else
		        toStartOfLine = Keyboard.OSKey
		      #endif
		      
		      //move to start of line.
		      if toStartOfLine then
		        
		        //lineNum = lines.getLineNumberForOffset(cefSelStart+cefSelLength - 1)
		        lineNum = lines.getLineNumberForOffset(cefSelStart+cefSelLength)
		        
		        if cefSelStart +cefSelLength  > lines.getLine(LineNum).offset then
		          changeSelection(lines.getLine(LineNum).offset, CaretPos -  lines.getLine(LineNum).offset)
		          pos = cefSelStart
		          
		        end if
		        ViewToCharPos(LineNum, cefSelStart + cefSelLength)
		        
		        //move to previous word
		      ElseIf Keyboard.OptionKey then
		        dim previous as Integer = previousNonAlpha(cefSelStart + cefSelLength)
		        
		        changeSelection(previous, CaretPos - previous)
		        pos = previous
		        
		        ViewToCharPos(pos)
		        
		        //move just by one place
		      else
		        changeSelection(cefSelStart, cefSelLength - charsToMove)
		        pos = cefSelStart + cefSelLength
		        
		        ViewToCharPos(pos)
		      end if
		      
		      //selection end is at caretpos, expand selection
		    else
		      
		      #if TargetWin32
		        toStartOfLine = Keyboard.ControlKey
		      #else
		        toStartOfLine = Keyboard.OSKey
		      #endif
		      
		      //move to start of line
		      if toStartOfLine then
		        //LineNum = lines.getLineNumberForOffset(max(cefSelStart - 1, 0))
		        LineNum = lines.getLineNumberForOffset(max(cefSelStart, 0))
		        
		        if cefSelStart > lines.getLine(LineNum).offset then
		          changeSelection(lines.getLine(LineNum).offset, CaretPos -  lines.getLine(LineNum).offset)
		          pos = cefSelStart
		          
		        end if
		        ViewToCharPos(LineNum, cefSelStart)
		        
		        //move to previous word
		      ElseIf Keyboard.OptionKey then
		        dim previous as Integer = previousNonAlpha(cefSelStart)
		        
		        changeSelection(previous,  CaretPos - previous)
		        pos = cefSelStart
		        ViewToCharPos(pos)
		        
		        //move one place
		      else
		        changeSelection(cefSelStart - charsToMove, cefSelLength + charsToMove)
		        pos = cefSelStart
		        ViewToCharPos(pos)
		        
		      end if
		      
		    end if
		    
		    //no shift, but there's active selction, move CaretPos to start of selection
		  elseif cefSelLength > 0 then
		    changeSelection(cefSelStart, 0)
		    pos = cefSelStart
		    
		    //moving the caret
		  else
		    
		    #if TargetWin32
		      toStartOfLine = Keyboard.ControlKey
		    #else
		      toStartOfLine = Keyboard.OSKey
		    #endif
		    
		    //move it to the start of the line
		    if toStartOfLine then
		      //get the line
		      LineNum = lines.getLineNumberForOffset(cefSelStart)
		      charsToMove = cefSelStart - lines.getLine(LineNum).offset
		      
		      //move to previous word boundary
		    elseif Keyboard.OptionKey then
		      charsToMove = cefSelStart - previousNonAlpha(cefSelStart)
		      
		    end if
		    //simple move
		    changeSelection(cefSelStart - charsToMove, 0)
		    pos = CaretPos
		    ViewToCharPos(CaretLine, pos)
		    
		    //did we just "crossed" a block character?
		    dim char as String = TextStorage.getCharAt(CaretPos)
		    if IsBlockChar(char) then
		      //then find the opening/closing char for this block.
		      if BLOCK_CLOSE_CHARS.instr(char) > 0 then
		        HighlightOpeningBlock(char, caretpos)
		        
		      Else
		        HighlightClosingBlock(char, caretpos)
		        
		      end if
		    end if
		  end if
		  
		  updateDesiredColumn(CaretPos)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub moveCaretRight()
		  //right arrow pressed
		  
		  dim pos as Integer
		  
		  //default move to 1 char
		  dim charsToMove as Integer = 1
		  dim LineNum as Integer
		  
		  dim toEndOfLine as Boolean
		  
		  //shift down, modify selection
		  if Keyboard.ShiftKey then
		    
		    //shrink
		    if cefSelStart < CaretPos then
		      
		      #if TargetWin32
		        toEndOfLine = Keyboard.ControlKey
		      #else
		        toEndOfLine = Keyboard.OSKey
		      #endif
		      
		      //move to end of line
		      if toEndOfLine then
		        LineNum = lines.getLineNumberForOffset(cefSelStart)
		        
		        if cefSelStart  < lines.getLine(LineNum).offset + lines.getLine(LineNum).length then
		          dim line as TextLine = lines.getLine(LineNum)
		          changeSelection(line.offset + line.length - line.delimiterLength, CaretPos - line.offset - line.length)
		          //oct 10 changed changeSelection(line.offset + line.length,.... to stop before EOL
		          pos = cefSelStart
		        end if
		        ViewToCharPos(LineNum, cefSelStart)
		        
		        //move to next word boundary
		      ElseIf Keyboard.OptionKey then
		        dim nextT as Integer = nextNonAlpha(cefSelStart)
		        
		        changeSelection(nextT, CaretPos - nextT)
		        pos = nextT
		        ViewToCharPos(pos)
		        
		        //move one place
		      else
		        changeSelection(cefSelStart + charsToMove, cefSelLength - charsToMove)
		        pos = cefSelStart
		        ViewToCharPos(pos)
		        
		      end if
		      
		      //expand
		    else
		      
		      #if TargetWin32
		        toEndOfLine = Keyboard.ControlKey
		      #else
		        toEndOfLine = Keyboard.OSKey
		      #endif
		      
		      //to end of line
		      if toEndOfLine then
		        LineNum = lines.getLineNumberForOffset(cefSelStart + cefSelLength)
		        
		        if cefSelStart + cefSelLength  < lines.getLine(LineNum).offset + lines.getLine(LineNum).length then
		          dim line as TextLine = lines.getLine(LineNum)
		          changeSelection(cefSelStart, line.offset + line.length - cefSelStart - line.delimiterLength)
		          //oct 10 changed ..., line.offset + line.length - cefSelStart - line.delimiterLength) to stop before EOL
		          pos = cefSelStart + cefSelLength
		          
		        end if
		        ViewToCharPos(LineNum, cefSelStart + cefSelLength)
		        
		        //next word
		      ElseIf Keyboard.OptionKey then
		        dim nextT as Integer = nextNonAlpha(cefSelStart + cefSelLength)
		        
		        changeSelection(nextT, CaretPos - nextT)
		        pos = nextT
		        ViewToCharPos(pos)
		        
		        //single char
		      else
		        changeSelection(cefSelStart, cefSelLength + charsToMove)
		        pos = cefSelStart + cefSelLength
		        ViewToCharPos(pos)
		        
		      end if
		      
		    end if
		    
		    //no shift, but active selection, move to end of selection
		  elseif cefSelLength > 0 then
		    changeSelection(cefSelStart + cefSelLength, 0)
		    pos = cefSelStart
		  else
		    
		    #if TargetWin32
		      toEndOfLine = Keyboard.ControlKey
		    #else
		      toEndOfLine = Keyboard.OSKey
		    #endif
		    
		    //EOL
		    if toEndOfLine then
		      LineNum = lines.getLineNumberForOffset(cefSelStart)
		      
		      charsToMove = lines.getLine(LineNum).offset + lines.getLine(LineNum).length - cefSelStart - lines.getLine(LineNum).delimiterLength
		      
		      //next word
		    elseif Keyboard.OptionKey then
		      charsToMove = nextNonAlpha(cefSelStart) - cefSelStart
		      
		    end if
		    //simple move
		    dim char as String = TextStorage.getCharAt(CaretPos)
		    
		    //check if next char is a block char
		    if IsBlockChar(char) then
		      //and mark it for Highlight
		      if BLOCK_CLOSE_CHARS.instr(char) > 0 then
		        HighlightOpeningBlock(char, caretpos)
		        
		      Else
		        HighlightClosingBlock(char, caretpos)
		        
		      end if
		    end if
		    
		    changeSelection(cefSelStart + charsToMove, 0)
		    pos = CaretPos
		    ViewToCharPos(CaretLine, pos)
		  end if
		  
		  updateDesiredColumn(CaretPos)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub moveCaretUp()
		  //arrow up
		  
		  //if not shift key and there's a selection, simply move to start of selection
		  if not Keyboard.ShiftKey and cefSelLength > 0 then
		    changeSelection(cefSelStart, 0)
		    Return
		  end if
		  
		  dim lineNum as Integer
		  dim toStartOfDocument as Boolean
		  
		  //get starting line number
		  if cefSelStart < CaretPos then
		    lineNum = lines.getLineNumberForOffset(cefSelStart)
		    
		  else
		    lineNum = lines.getLineNumberForOffset(cefSelStart + cefSelLength)
		    
		  end if
		  
		  //default move to one place
		  dim linesToMove as Integer = 1
		  
		  //if option, then move up a full page
		  if Keyboard.OptionKey then linesToMove = MaxVisibleLines - 1
		  
		  
		  #if TargetWin32 then
		    if Keyboard.ControlKey then
		      linesToMove = ScrollPosition + MaxVisibleLines
		    end if
		  #else
		    if Keyboard.OSKey then
		      linesToMove = ScrollPosition + MaxVisibleLines
		    end if
		  #endif
		  
		  dim line as TextLine
		  dim offset as Integer
		  
		  LineNum = LineNum - linesToMove
		  if LineNum < 0 then //moving up on the first line, jump to the begining of line
		    LineNum = 0
		    line = lines.getLine(lineNum)
		    offset = 0
		  else
		    line = lines.getLine(LineNum)
		    offset = offsetForXPos(line, caretDesiredColumn)
		  end if
		  
		  if Keyboard.ShiftKey then
		    changeSelection(min(CaretPos, offset), abs(offset - CaretPos))
		    
		  else
		    changeSelection(offset, 0)
		  end if
		  
		  //scroll
		  if lineNum < ScrollPosition then changeScrollValues(ScrollPositionX, lineNum)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function nextAlpha(fromOffset as integer) As integer
		  //find the next alphanumeric char, starting at fromOffset
		  for i as Integer = fromOffset + 1 to TextStorage.Length - 1
		    dim char as String = TextStorage.getCharAt(i)
		    if IsAlpha(char) then Return i
		  next
		  Return TextStorage.Length
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NextBlockChar(forChar as string, offset as integer, byref charToFind as String) As integer
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  //find the next block char, for the given "forChar" char
		  //dim charToFind as String
		  charToFind = ""
		  
		  //find the char that closes forChar
		  for i as Integer = 1 to BLOCK_OPEN_CHARS.len
		    if forChar = BLOCK_OPEN_CHARS.Mid(i, 1) then
		      charToFind = BLOCK_CLOSE_CHARS.Mid(i, 1)
		      exit for
		    end if
		  next
		  
		  if charToFind = "" then Return -1
		  
		  //to handle nested blocks
		  dim depth as integer
		  dim char as String
		  dim maxOffset as Integer = TextStorage.Length
		  
		  dim textToSearch as String = TextStorage.getText(offset + 1, TextStorage.Length - (offset + 1))
		  if textToSearch.Encoding <> nil and textToSearch.Encoding.Equals(Encodings.UTF16) then textToSearch = textToSearch.ConvertEncoding(Encodings.UTF8)
		  
		  dim scanner as new regex
		  scanner.SearchPattern = "\"+forChar+"|\"+charToFind
		  
		  dim match as RegExMatch = scanner.Search(textToSearch)
		  
		  While match <> nil
		    'for i as Integer = offset + 1 to maxOffset
		    char = match.SubExpressionString(0)'TextStorage.getCharAt(i)
		    
		    //if it's the char we're looking for, and not nested, then we found it
		    if char = charToFind and depth = 0 then
		      Return textToSearch.leftb(match.SubExpressionStartB(0)).len + offset + 1
		      
		      //else, if it's the same char as input, then we're nesting.
		    ElseIf char = forChar then
		      depth = depth + 1
		      
		      //if nested, and we found a closing char, decrease nesting count.
		    ElseIf char = charToFind then
		      depth = depth - 1
		    End If
		    
		    match = scanner.Search
		    'next
		  Wend
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function nextCharInSet(fromOffset as integer, pattern as string = "[^\w\.]") As integer
		  //find the next char not in the given set, starting at pos "fromOffset"
		  for i as Integer = fromOffset + 1 to TextStorage.Length - 1
		    dim char as String = TextStorage.getCharAt(i)
		    if matchesRegex(pattern, char) then Return i
		  next
		  Return TextStorage.Length
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function nextNonAlpha(fromOffset as integer) As integer
		  //find next non alphanumeric char, starting at fromOffset
		  for i as Integer = fromOffset + 1 to TextStorage.Length - 1
		    dim char as String = TextStorage.getCharAt(i)
		    if not IsAlpha(char) then Return i
		  next
		  Return TextStorage.Length
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function nextNonWhitespace(fromOffset as integer, maxOffset as integer = - 1) As integer
		  if maxOffset < 0 then maxOffset = TextStorage.Length
		  
		  //find next non whitespace char, starting at fromOffset
		  for i as Integer = fromOffset + 1 to maxOffset - 1
		    dim char as String = TextStorage.getCharAt(i)
		    if not IsWhitespace(char) then Return i
		  next
		  Return maxOffset
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function offsetForXPos(line as TextLine, xPos as integer) As integer
		  //finds the offset (column) for a given line and desired screen position (xpos)
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  dim offset as Integer = line.length
		  dim lineWidth as Integer
		  xPos = max(0, xPos) //negative numbers would be in the margin
		  
		  dim startPos as Integer
		  dim searchWord as TextSegment = line.LocalSegmentForXPos(xPos)
		  if searchWord <> nil then startPos = searchWord.offset
		  dim tmp as Picture = tmpPicture
		  
		  if searchWord isa TextPlaceholder then
		    lineWidth = line.TextWidth(TextStorage, tmp.Graphics, DisplayInvisibleCharacters, startPos) //width up to placeholder
		    dim placeholderWidth as Double = searchWord.width
		    
		    if Dragging then
		      if xPos >= lineWidth + placeholderWidth / 2 then
		        offset = searchWord.offset + searchWord.length
		      else
		        offset = searchWord.offset
		      end if
		    else
		      offset = searchWord.offset + searchWord.length / 2 //put the offset in the middle of the thing
		    end if
		    
		  else
		    
		    for i as Integer = startPos to line.length
		      //scan the chars in the line until we find the right column.
		      
		      lineWidth = line.TextWidth(TextStorage, tmp.Graphics, DisplayInvisibleCharacters, i)
		      if lineWidth >= xPos then
		        dim matchChar as String = line.CharToDisplayAt(TextStorage, max(i - 1, 0), DisplayInvisibleCharacters)
		        if searchWord <> nil then
		          tmp.Graphics.Bold = searchWord.bold
		          tmp.Graphics.Italic = searchWord.italic
		          tmp.Graphics.Underline = searchWord.underline
		        end if
		        dim charw as Integer = tmp.Graphics.StringWidth(matchChar)
		        
		        if lineWidth - charw / 2 > xPos then
		          offset = max(i - 1, 0)
		        else
		          offset = i
		        end if
		        exit for
		      end if
		      
		    next
		  end if
		  
		  //avoid delimiters
		  offset = line.offset + min(offset, line.length - line.delimiterLength)
		  Return offset
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function OpeningBlockLineForLine(lineIndex as integer) As integer
		  // RDS - Did not work if cursor was ON the start line
		  dim temp_value as integer
		  temp_value = lines.previousBlockStartLine(LineIndex, true)
		  
		  if temp_value <= 0 then
		    if lines.getline(LineIndex).isBlockStart then temp_value = LineIndex
		  end if
		  return temp_value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PageDown()
		  ScrollPosition = min(lines.Count, ScrollPosition + MaxVisibleLines)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PageUp()
		  ScrollPosition = max(ScrollPosition - MaxVisibleLines, 0)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PaintCaret(atPos as integer, g as graphics)
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  if not hasFocus and DragSource = nil then Return
		  if cefSelLength > 0  and DragTextSelection = nil then Return
		  
		  caretState = not caretState
		  if caretState then Return
		  
		  dim xpos, ypos as Integer
		  
		  if atPos = CaretPos then
		    XYAtCharPos(atPos, CaretLine, xpos, ypos)
		  else
		    XYAtCharPos(atPos, xpos, ypos)
		  end if
		  
		  if ypos < 0 or xpos < 0 then Return
		  
		  g.ForeColor = CaretColor
		  
		  if ThickInsertionPoint then
		    g.PenWidth = 2
		  end if
		  g.DrawLine xpos - 1, ypos - 1 , xpos - 1, ypos - TextHeight + 1
		  g.PenWidth = 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PaintHighlightedBlock(g as graphics)
		  if not HighlightMatchingBrackets then Return
		  
		  //paints a blue circle over the highlighted block char.
		  g.PenWidth = 2
		  g.PenHeight = 2
		  g.ForeColor = &c4444FF
		  g.DrawOval blockBeginPosX - 2 - g.StringWidth("(")/2, blockBeginPosY - g.TextHeight - 1, g.TextHeight + 4, g.TextHeight + 4
		  g.PenWidth = 1
		  g.PenHeight = 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Paste()
		  dim c as new Clipboard
		  if not c.TextAvailable then Return
		  
		  me.SelText = c.Text
		  
		  InvalidateAllLines
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function previousAlpha(fromOffset as integer) As integer
		  //find Previous alphanumeric char starting at "fromOffset"
		  for i as Integer = fromOffset - 1 downto 1
		    dim char as String = TextStorage.getCharAt(i - 1)
		    if IsAlpha(char) then Return i
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PreviousBlockChar(forChar as string, offset as integer, byref charToFind as String) As integer
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  //find previous block char
		  //dim charToFind as String
		  charToFind = ""
		  
		  //select the appropriate one
		  for i as Integer = 1 to BLOCK_CLOSE_CHARS.len
		    if forChar = BLOCK_CLOSE_CHARS.Mid(i, 1) then
		      charToFind = BLOCK_OPEN_CHARS.Mid(i, 1)
		      exit for
		    end if
		  next
		  
		  if charToFind = "" then Return - 1
		  
		  dim depth as integer
		  dim char as String
		  
		  dim textToSearch as String = TextStorage.getText(0, offset)
		  if textToSearch.Encoding <> nil and textToSearch.Encoding.Equals(Encodings.UTF16) then textToSearch = textToSearch.ConvertEncoding(encodings.UTF8)
		  
		  textToSearch = Reverse(textToSearch)
		  dim scanner as new regex
		  scanner.SearchPattern = "\"+forChar+"|\"+charToFind
		  
		  dim match as RegExMatch = scanner.Search(textToSearch)
		  
		  //scan text
		  'for i as Integer = offset - 1 downto 0
		  while match <> nil
		    char = match.SubExpressionString(0) 'TextStorage.getCharAt(i)
		    
		    //found
		    if char = charToFind and depth = 0 then
		      Return offset - 1 - textToSearch.leftb(match.SubExpressionStartB(0)).len
		      
		      //nest
		    ElseIf char = forChar then
		      depth = depth + 1
		      
		      //un-nest
		    ElseIf char = charToFind then
		      depth = depth - 1
		    End If
		    'next
		    match = scanner.Search
		  wend
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function previousCharInSet(fromOffset as integer, pattern as string = "[^\w\.]") As integer
		  //find character not in the given set
		  for i as Integer = fromOffset - 1 downto 1
		    dim char as String = TextStorage.getCharAt(i - 1)
		    if matchesRegex(pattern, char) then Return i
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function previousNonAlpha(fromOffset as integer) As integer
		  //find Previous non alphanumeric char starting at "fromOffset"
		  for i as Integer = fromOffset - 1 downto 1
		    dim char as String = TextStorage.getCharAt(i - 1)
		    if not IsAlpha(char) then Return i
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function previousNonWhitespace(fromOffset as integer) As integer
		  //find Previous non whitespace char starting at "fromOffset"
		  for i as Integer = fromOffset - 1 downto 1
		    dim char as String = TextStorage.getCharAt(i - 1)
		    if not IsWhitespace(char) then Return i
		  next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub receiveMessage(theMessage as Message)
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  // Part of the MessageReceiver interface.
		  
		  dim type as Integer = theMessage.Info(1) //1 is the msg type in this particular scheme
		  if theMessage.Sender = lines then
		    
		    select case type
		    case LineManager.LineCountChangedMsg
		      dim count as Integer = theMessage.Info(2) //2 holds the # of lines
		      dim invisible as Integer = theMessage.Info(3) //3 holds the # of invisible lines
		      self.LineCountChanged(count - invisible)
		      
		    case LineManager.LineChangedMsg
		      dim index as integer = theMessage.Info(2)
		      dim length as Integer = theMessage.Info(3)
		      
		      if index = CaretLine and highlighter.State = thread.Running then
		        highlighter.HighlightLine(index)
		      end if
		      
		      if SyntaxDefinition = nil and loadingDocument then Return
		      call modifiedLines.AddRange(new ModifiedLineRange(index, length))
		      
		    case LineManager.MaxLineLengthChangedMsg
		      dim index as integer = theMessage.Info(2)
		      self.MaxLineLengthChanged(index)
		      
		    case LineManager.LineSymbolsRemovedMsg
		      LineSymbolsRemoved(theMessage.Info(2))
		    end select
		    
		  elseIf theMessage.Sender = currentSuggestionWindow then
		    
		    select case Type
		    case SuggestionWindow.AutocompleteCancelledMsg
		      dim requestFocus as Boolean = theMessage.Info(2)
		      AutocompleteCancelled(requestFocus)
		      
		    case SuggestionWindow.KeyDownMsg
		      dim key as String = theMessage.Info(2)
		      call HandleKeyDown(key)
		      
		    case SuggestionWindow.CurrentAutocompleteOptionsMsg
		      theMessage.addInfo(3, CurrentAutocompleteOptions)
		      
		    case SuggestionWindow.OptionSelectedMsg
		      dim option as String = theMessage.Info(2)
		      AutocompleteOptionSelected(option)
		      
		    end select
		    
		  Elseif theMessage.Sender = highlighter then
		    select case type
		    case LineHighlighter.HighlightDoneMsg
		      HighlightingComplete
		      
		    case LineHighlighter.LineHighlightedMsg
		      LineHighlighted(theMessage.Info(2))
		      
		    case LineHighlighter.ScreenLinesHighlightedMsg
		      Redraw
		      
		    end select
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Redo()
		  ignoreRepaint = true
		  UndoMgr.Redo
		  
		  //RaiseEvents
		  dim line as TextLine = lines.getLine(CaretLine)
		  if line <> nil then _
		  SelChange(CaretLine + 1, cefSelStart - line.offset, cefSelLength)
		  HandleTextChanged
		  
		  if not UndoMgr.isDirty then ClearDirtyLines
		  ignoreRepaint = False
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Redraw(ifBlinkerVisible as boolean = false)
		  if ignoreRepaint then Return
		  'if Graphics = nil then Return
		  if opening then return 'added to avoid GUI access from thread 'YN
		  
		  //avoid more than 30 redraws/sec
		  'if ticks < lastRedrawTicks + 1 then
		  'Return
		  'end if
		  'lastRedrawTicks = ticks
		  
		  //see if caret is visible
		  dim ScrollPosition as Integer = self.ScrollPosition
		  if EnableLineFoldings then ScrollPosition = lines.getNumberOfLinesNeededToView(ScrollPosition)
		  
		  if ifBlinkerVisible and (CaretLine < ScrollPosition or CaretLine > ScrollPosition + linesOnScreen) then Return
		  
		  // We force the user to call Redraw instead of Refresh because
		  // we don't want the user to be able to accidentally cause an
		  // entire screen erase.  So we override Refresh by making it
		  // a private function.
		  
		  'Disabled because of ThreadAccessingUIException
		  '#if TargetWin32
		  'Declare Sub InvalidateRect Lib "User32" ( hwnd as Integer, lpRect as Ptr, erase as Boolean )
		  '
		  'dim r as new MemoryBlock( 16 )
		  'r.Long( 0 ) = 0
		  'r.Long( 4 ) = 0
		  'r.Long( 8 ) = me.Width
		  'r.Long( 12 ) = me.Height
		  '
		  'InvalidateRect( me.Handle, r, false )
		  '
		  'Declare Sub UpdateWindow Lib "User32" ( hwnd as Integer )
		  '
		  'UpdateWindow( me.Window.Handle )
		  '#else
		  'DrawContents(Graphics)
		  me.NeedsRedrawing=true
		  '#endif
		  
		  Exception err
		    ExceptionHandler (err,"CustomEditField.redraw")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Reflow(txt as String) As String
		  dim s,s2 as string
		  dim m,n,SelSt,ccp,ccp2,old as integer ' SelL
		  
		  
		  'currcaretpos=len(replaceall(left(Text,CaretPos),chr(13),""))
		  'dim ccp as integer=CaretPos
		  
		  'SelSt=SelStart
		  'ccp=currcaretpos
		  SetCharsInLine
		  s=ReplaceAll(txt,chr(13),"")
		  s2=""
		  old=1
		  m=len(s)
		  for n=1 to m step charsinline
		    s2=s2+mid(s,old,Charsinline)+chr(13)
		    old=n+CharsInLine
		  next
		  'caretpos=currcaretpos+currcaretpos\charsinline-1
		  'ccp2=caretpos
		  'if SelLength=0 then
		  'Selstart=SelSt
		  'CaretPos=cefSelstart
		  'end if
		  
		  return rtrim(s2)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReHighlight()
		  //mark all lines as changed and rehighlight
		  lines.MarkAllLinesAsChanged
		  Highlight
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ReindentLine(lineIndex as Integer) As Integer
		  dim previousLine, currentLine as TextLine
		  
		  currentLine = lines.getLine(lineIndex)
		  previousLine = lines.getLine(lineIndex - 1)
		  
		  if previousLine = nil then Return 0
		  
		  //find all first non-whitespace char in previous line
		  dim firstCharPos as Integer = nextNonWhitespace(previousLine.offset - 1, previousLine.offset + previousLine.length - previousLine.delimiterLength)
		  dim indentChars as String = TextStorage.getText(previousLine.offset, firstCharPos - previousLine.offset)
		  
		  //remove any indentations...
		  firstCharPos = nextNonWhitespace(currentLine.offset - 1, currentLine.offset + currentLine.length - currentLine.delimiterLength)
		  Replace(currentLine.offset, firstCharPos - currentLine.offset, "")
		  currentLine = lines.getLine(lineIndex)
		  
		  //check extra indentations
		  if SyntaxDefinition <> nil then
		    //check current line first.
		    dim count as Integer = SyntaxDefinition.isBlockStart(TextStorage.getText(previousLine.offset, previousLine.length))
		    
		    if Count > 0 then //extra indent
		      indentChars = indentChars + indentStr(Count)
		      
		    Elseif Count < 0 then //remove indent
		      indentChars = indentChars.left(indentChars.len + Count)
		      
		    End If
		    
		  end if
		  
		  if indentChars.len = 0 then Return 0
		  
		  Replace(currentLine.offset, currentLine.length, indentChars + TextStorage.getText(currentLine.offset, currentLine.length))
		  
		  Return indentChars.len
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReindentText()
		  self.ReindentText(0, lines.Count - 1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReindentText(fromLine as Integer, toLine as integer)
		  dim current as TextLine
		  dim caretPos as Integer = self.CaretPos
		  
		  self.IgnoreRepaint = true
		  for i as Integer = fromLine to toLine
		    Current = lines.getLine(i)
		    if current = nil then Continue for
		    
		    call ReindentLine(i)
		    call IndentBlockEndLine(i, False)
		  next
		  
		  self.CaretPos = CaretPos
		  self.IgnoreRepaint = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(offset as integer, length as integer, updateCaret as boolean = true)
		  if ReadOnly then
		    break
		    beep
		    Return
		  end if
		  
		  if length = 0 then Return //nothing to delete
		  //remove text
		  
		  dim undoText as String = TextStorage.getText(max(offset,0), length)
		  
		  if TextStorage.remove(offset, length) then
		    TextRemoved(offset, undoText)
		    UndoMgr.Push(new UndoableDelete(self, offset, undoText, CaretPos, CurrentEventID))
		    lines.remove(offset, length)
		    Highlight
		    if updateCaret then changeSelection(cefSelStart - length, 0)
		    HandleTextChanged
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Replace(offset as integer, length as integer, text as string, eventID as integer = - 1)
		  if ReadOnly then
		    break
		    beep
		    Return
		  end if
		  
		  
		  
		  //get the default line ending from the line manager, if the text is an enter.
		  if text = chr(13) or text = chr(3) then text = lines.lineEnding
		  
		  if eventID < 0 then eventID = CurrentEventID
		  UndoMgr.Push(new UndoableReplace(self, offset, TextStorage.getText(offset, length), text, CaretPos, eventID))
		  
		  //modify buffer and rescan lines
		  TextStorage.replace(offset, length, Text)
		  lines.replace(offset, length, text)
		  Highlight
		  
		  changeSelection(offset + text.Len, 0)
		  
		  if not UndoMgr.isUndoing then
		    //fire TextChange event
		    HandleTextChanged
		    TextInserted(offset, text)
		    
		    //is the text a closing element? ] } ) ?
		    if text.len > 1 or not IsBlockChar(text) or not HighlightMatchingBrackets then
		      
		      caretpos=cefSelStart+cefSelStart\charsinline-(cefSelStart-text.len)\CharsInLine 'YN
		      Return
		    end if
		    
		    //if so, highlight it
		    if BLOCK_CLOSE_CHARS.InStr(text) > 0 then
		      HighlightOpeningBlock(text, offset)
		      
		    Else
		      HighlightClosingBlock(text, offset)
		      
		    end if
		  end if
		  
		  caretpos=cefSelStart+cefSelStart\charsinline-(cefSelStart-text.len)\CharsInLine 'YN
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetUndo()
		  UndoMgr.Reset
		  ClearDirtyLines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetUndoDirtyFlag()
		  UndoMgr.ResetDirtyFlag
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Resize()
		  //->YN
		  dim selst,sell as integer
		  'save the selection:
		  selst=selstart
		  sell=sellength
		  
		  'Redraw the CEF:
		  me.text=me.text 'this reflows the text
		  
		  HandleTextChanged
		  
		  'restore the selection:
		  selstart=selst
		  sellength=sell
		  
		  if SelLength2>0 then 'selection across the end
		    HighlightCharacterRange 1,SelLength2,HighlightColor
		  end if
		  'if SelLength=0 then
		  'CaretPos=Selstart
		  'end if
		  //YN<-
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Reverse(s As String) As String
		  //From Joe Strout's String Utils module.
		  // Return s with the characters in reverse order.
		  if Len(s) < 2 then return s
		  
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  Dim characters() as String = Split( s, "" )
		  Dim leftIndex as Integer = 0
		  Dim rightIndex as Integer = UBound(characters)
		  While leftIndex < rightIndex
		    Dim temp as String = characters(leftIndex)
		    characters(leftIndex) = characters(rightIndex)
		    characters(rightIndex) = temp
		    leftIndex = leftIndex + 1
		    rightIndex = rightIndex - 1
		  Wend
		  Return Join( characters, "" )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save(toFile as folderItem, fileType as string = "Text", encoding as textencoding = nil) As boolean
		  if toFile = nil then Return False
		  
		  dim stream as BinaryStream
		  
		  //Modified by Dr. Gerard Hammond to allow the file to be saved even if it's already open by another app.
		  if toFile.Exists = false then
		    stream = toFile.CreateBinaryFile(FileType)
		  else
		    stream = toFile.OpenAsBinaryFile(true) //open Writeable
		    stream.Length = 0 ////truncate the file
		  end if
		  
		  if stream = nil then Return False
		  
		  dim txt as String = me.Text
		  if Encoding <> nil and not Encoding.Equals(txt.Encoding) then txt = txt.ConvertEncoding(Encoding)
		  
		  stream.Write(txt)
		  stream.Close
		  
		  UndoMgr.ResetDirtyFlag
		  ClearDirtyLines
		  Return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save(toFile as folderItem, encoding as textencoding) As boolean
		  Return save(toFile, "Text", encoding)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScrollEnd()
		  ScrollPosition = lines.Count
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScrollHome()
		  ScrollPosition = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectAll()
		  changeSelection(0, TextStorage.Length)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectedTextDragImage() As picture
		  dim text as String = SelText
		  dim selection as String = text.Left(200) + " "
		  if text.Len > 200 then selection = selection + "..."
		  
		  dim w, h as Integer
		  dim tmp as Picture = tmpPicture
		  w = min(tmp.Graphics.StringWidth(selection+" "), Width)
		  h = tmp.Graphics.StringHeight(selection, w)
		  
		  dim image as Picture = NewPicture(w, h, 32)
		  image.Graphics.TextSize = TextSize
		  image.Graphics.TextFont = TextFont
		  Image.Graphics.DrawString selection, 0, Image.Graphics.TextHeight - (Image.Graphics.TextHeight - Image.Graphics.TextAscent), w
		  
		  Return image
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectLine(lineNumber as integer, refresh as boolean = true)
		  //selects the given line.
		  if lineNumber < 0 or lineNumber >= lines.Count then
		    break
		    beep
		    Return
		  end if
		  
		  dim line as TextLine = lines.getLine(lineNumber)
		  if not line.visible then lines.revealLine(lineNumber)
		  changeSelection(line.offset, line.length - line.delimiterLength)
		  
		  if refresh then Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectNextPlaceholder()
		  dim startLine as Integer = CaretLine
		  dim offset as Integer = CaretPos
		  
		  for i as Integer = CaretLine to lines.Count - 1
		    dim line as TextLine = lines.getLine(i)
		    if line = nil or not line.visible then Continue for
		    
		    dim nextPlaceholder as TextPlaceholder = line.NextPlaceholderFromOffset(offset)
		    if nextPlaceholder = nil then
		      offset = line.offset + line.length
		      Continue for
		    end if
		    
		    changeSelection(line.offset + nextPlaceholder.offset + nextPlaceholder.length / 2, 0)
		    Redraw
		    Return
		  next
		  
		  //wrap around... todo make this prettier :P
		  for i as Integer = 0 to startLine
		    dim line as TextLine = lines.getLine(i)
		    if line = nil or not line.visible then Continue for
		    
		    dim nextPlaceholder as TextPlaceholder = line.NextPlaceholderFromOffset(offset)
		    if nextPlaceholder = nil then
		      offset = line.offset + line.length
		      Continue for
		    end if
		    
		    changeSelection(line.offset + nextPlaceholder.offset + nextPlaceholder.length / 2, 0)
		    Redraw
		    Return
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCharsInLine()
		  'set CharsInLine:
		  dim p as new Picture (1,1,32)
		  p.Graphics.TextFont=me.TextFont
		  p.graphics.TextSize=me.TextSize
		  if me.Graphics<> nil then 'no graphics when CEF is initialised!
		    p.graphics.bold=me.graphics.bold
		  end if
		  charwidth=p.Graphics.StringWidth("A")
		  if me.Gutter <> Nil then
		    CharsInLine=-1+(me.width-me.Gutter.Width)/charwidth
		  else
		    CharsInLine=-1+(me.width-charwidth-6)/charwidth
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollbar(vertical as scrollbar)
		  //sets the scrollbars
		  'horizontalSB = horizontal
		  verticalSB = vertical
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SymbolAtLine(index as integer) As documentSymbol
		  //check line first
		  dim symbol as DocumentSymbol
		  dim line as TextLine = lines.getLine(index)
		  if line <> nil and line.LineSymbols <> nil and line.LineSymbols.Count > 0 then
		    Symbol = line.LineSymbols.value(line.LineSymbols.Key(0))
		    Return new DocumentSymbol(Symbol.Name, symbol.Offset + line.offset, Symbol.Type)
		    
		    //else, if it's an opening block, check line above...
		  elseif line <> nil and line.isBlockStart then
		    line = lines.getLine(index - 1)
		    if line <> nil and line.LineSymbols <> nil and line.LineSymbols.Count > 0 then
		      Symbol = line.LineSymbols.value(line.LineSymbols.Key(0))
		      Return new DocumentSymbol(Symbol.Name, symbol.Offset + line.offset, Symbol.Type)
		    end if
		  end if
		  
		  //else... start looking upwards
		  
		  //find opening block for this line
		  dim blockIdx as Integer = OpeningBlockLineForLine(index)
		  
		  //no opening block found...
		  if blockIdx < 0 then Return nil
		  
		  //get line
		  line = lines.getLine(blockIdx)
		  if line = nil then Return nil
		  
		  //if line doesn't contain any symbols... move one line up...
		  if line.LineSymbols = nil or line.LineSymbols.Count = 0 then
		    line = lines.getLine(blockIdx - 1)
		  else
		    Symbol = line.LineSymbols.value(line.LineSymbols.Key(0))
		    Return new DocumentSymbol(Symbol.Name, symbol.Offset + line.offset, Symbol.Type)
		  end if
		  
		  //recurse, search next enclosing block
		  if line = nil or line.LineSymbols = nil or line.LineSymbols.Count = 0 then Return SymbolAtLine(blockIdx - 1)
		  
		  Symbol = line.LineSymbols.value(line.LineSymbols.Key(0))
		  Return new DocumentSymbol(Symbol.Name, symbol.Offset + line.offset, Symbol.Type)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SymbolCount() As integer
		  if CurrentDocumentSymbols = nil then Return 0
		  Return CurrentDocumentSymbols.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function tmpPicture() As picture
		  //return a temporary picture.
		  if sharedTmpPicture = nil then
		    sharedTmpPicture = NewPicture(2,2,16)
		    #if EditFieldGlobals.UseOldRenderer
		      sharedTmpPicture.Graphics.UseOldRenderer = true
		    #endif
		  end if
		  
		  sharedTmpPicture.Graphics.TextFont = TextFont
		  sharedTmpPicture.Graphics.TextSize = TextSize
		  
		  //v1.1 fix, these weren't being cleared.
		  sharedTmpPicture.Graphics.Bold = False
		  sharedTmpPicture.Graphics.Italic = False
		  sharedTmpPicture.Graphics.Underline = False
		  
		  Return sharedTmpPicture
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleLineFold(lineIndex as integer)
		  if not EnableLineFoldings then Return
		  
		  dim topLine as Integer = lines.toggleLineFolding(lineIndex)
		  if topLine > -1 then
		    //check if caret is in an invisible line
		    dim line as TextLine = lines.getLine(lines.getLineNumberForOffset(CaretPos))
		    //if it's invisible, move caret to folded line
		    if not line.visible then
		      line = lines.getLine(topLine)
		      if line <> nil then changeSelection(line.offset, 0)
		    end if
		    InvalidateAllLines
		  else
		    InvalidateLine(lineIndex)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Undo()
		  ignoreRepaint = true
		  UndoMgr.Undo
		  
		  //RaiseEvents
		  dim line as TextLine = lines.getLine(CaretLine)
		  if line <> nil then _
		  SelChange(CaretLine + 1, cefSelStart - line.offset, cefSelLength)
		  HandleTextChanged
		  
		  if not UndoMgr.isDirty then ClearDirtyLines
		  ignoreRepaint = False
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnfoldAllLines()
		  //hmmm
		  if not EnableLineFoldings then Return
		  lines.unfoldAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub updateDesiredColumn(charPos as integer = - 1)
		  //saves the screenposition of the given offset
		  if lines.Count = 0 then Return
		  
		  if CharPos < 0 then charPos = CaretPos
		  desiredColumnCharPos = CharPos
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ViewToCharPos(charPos as integer)
		  ViewToCharPos(lines.getLineNumberForOffset(CharPos), CharPos)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ViewToCharPos(charLine as integer, charPos as integer)
		  //move the view to the given char position.
		  
		  dim horizontal, vertical as Integer
		  dim ScrollPosition as Integer = self.ScrollPosition
		  if EnableLineFoldings then ScrollPosition = lines.getNumberOfLinesNeededToView(ScrollPosition)
		  
		  horizontal = ScrollPositionX
		  vertical = self.ScrollPosition
		  
		  //vertical check
		  if charLine < ScrollPosition then
		    vertical = charLine
		    
		  elseif charLine > ScrollPosition + linesOnScreen - 2 then
		    vertical = charLine - linesOnScreen + 2
		    
		  end if
		  
		  //horizontal check
		  dim x, y as Integer
		  XYAtCharPos(charPos, charLine, x, y)
		  
		  'if x< LineNumOffset or  x >= self.Width then
		  'horizontal = ScrollPositionX + x - (me.Width - RightScrollMargin)
		  '
		  'end if
		  
		  changeScrollValues(horizontal, vertical)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function XposForOffset(line as TextLine, charPos as integer) As single
		  //screen position for the given CharPos
		  #if not DebugBuild
		    #pragma DisableBackgroundTasks
		    #pragma DisableBoundsChecking
		    #pragma DisableAutoWaitCursor
		  #endif
		  
		  dim tmp as Picture = tmpPicture
		  
		  'dim linetext as String = line.TextToDisplay(TextStorage, DisplayInvisibleCharacters, charPos - line.offset)
		  'return tmp.Graphics.StringWidth(linetext)
		  
		  Return line.TextWidth(TextStorage, tmp.Graphics, DisplayInvisibleCharacters, CharPos - line.offset)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub XYAtCharPos(charPos as integer, byref X as integer, byref Y as integer)
		  dim lineNumber as Integer
		  lineNumber = lines.getLineNumberForOffset(charPos)
		  XYAtCharPos(CharPos, LineNumber, x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub XYAtCharPos(charPos as integer, lineNumber as integer, byref X as integer, byref Y as integer)
		  //find the screenx and screeny for the given CharPos
		  
		  //y
		  dim ypos as Integer
		  if EnableLineFoldings then
		    ypos = (lines.getNumberOfVisibleLinesUpToLine(lineNumber) - ScrollPosition) * TextHeight
		  else
		    ypos = (lineNumber - ScrollPosition) * TextHeight
		  end if
		  
		  //find the char offset.
		  dim line as TextLine = lines.getLine(lineNumber)
		  if line = nil then Return
		  
		  dim sx as Integer = leftMarginOffset + LineNumOffset - ScrollPositionX
		  
		  dim xpos as integer = sx + XposForOffset(line, charPos)
		  
		  x = xpos
		  y = ypos + TextHeight
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ActivateE()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event AutocompleteOptionsForPrefix(prefix as string) As AutocompleteOptions
	#tag EndHook

	#tag Hook, Flags = &h0
		Event BlockCharsMatched(blockOpenChar as string, blockOpenOffset as Integer, blockCloseChar as string, blockCloseOffset as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ConstructContextualMenu(base as menuitem, x as integer, y as integer) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DeactivateE()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EnableMenuItems()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GotFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GutterClicked(onLine as integer, x as integer, y as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event HighlightingComplete()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event HighlightsChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event HorizontalScrollValueChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event KeyDown(key as string) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LineCountChanged(newLineCount as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LostFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MaxLineLengthChanged(maxLineLengthInPixels as single)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDown(X as integer, Y as integer) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseMove(X as integer, Y as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseUp(x as integer, y as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PaintAboveLine(lineIndex as integer, g as graphics, x as integer, y as integer, w as integer, h as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PaintBelowLine(lineIndex as integer, g as graphics, x as integer, y as integer, w as integer, h as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PaintOver(g as Graphics)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PlaceholderSelected(placeholderLabel as String, lineIndex as integer, line as textLine, placeholder as textPlaceholder, doubleClick as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ScrollValuesChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SelChange(line as integer, column as integer, length as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldDisplaySuggestionWindowAtPos(byref X as Integer, byref Y as Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ShouldTriggerAutocomplete(Key as string, hasAutocompleteOptions as boolean) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextChange()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextInserted(offset as integer, text as String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextRemoved(offset as integer, text as String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UseBackgroundColorForLine(lineIndex as integer, byref lineBackgroundColor as color) As boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event UseBookmarkIconForLine(lineIndex as integer) As Picture
	#tag EndHook

	#tag Hook, Flags = &h0
		Event VerticalScrollValueChanged()
	#tag EndHook


	#tag Note, Name = KeyCodes
		Key: beetlejuice
		taken from Aaron's blog
		http://ramblings.aaronballman.com/2006/02/Since_I_can_never_remember_this_sort_of_stuff_myself...html
		
		AscB(Key) Keyboard.AsyncKeyDown    Explanation
		0          N/A             Null Byte
		1          115             Home
		4          119             End
		5          114             Insert
		8          51             Backspace
		9          48             Tab
		11          116             Page Up
		12          121             Page Down
		13          36             Return
		27          53             Escape
		28          123             Left Arrow
		29          124             Right Arrow
		30          125             Down Arrow
		31          126             Up Arrow
		32          49             Space
		33          N/A             !
		34          N/A             "
		35          N/A             #
		36          N/A             $
		37          N/A             %
		38          N/A             &
		39          39             '
		40          N/A             (
		41          N/A             )
		42          N/A             *
		43          N/A             +
		44          43             ,
		45          27             -
		46          47             .
		47          44             /
		48          29             0
		49          18             1
		50          19             2
		51          20             3
		52          21             4
		53          23             5
		54          22             6
		55          26             7
		56          28             8
		57          25             9
		58          N/A             :
		59          41             ;
		60          N/A             <
		61          N/A             =
		62          N/A             >
		63          N/A             ?
		64          N/A             @
		65          0             A
		66          11             B
		67          8             C
		68          2             D
		69          14             E
		70          3             F
		71          5             G
		72          4             H
		73          34             I
		74          38             J
		75          40             K
		76          37             L
		77          46             M
		78          45             N
		79          31             O
		80          35             P
		81          12             Q
		82          15             R
		83          1             S
		84          17             T
		85          32             U
		86          9             V
		87          13             W
		88          7             X
		89          16             Y
		90          6             Z
		91          33             [
		92          42             \
		93          30             ]
		94          N/A             ^
		95          N/A             _
		96          50             `
		97          0             a
		98          11             b
		99          8             c
		100          2             d
		101          14             e
		102          3             f
		103          5             g
		104          4             h
		105          34             i
		106          38             j
		107          40             k
		108          37             l
		109          46             m
		110          45             n
		111          31             o
		112          35             p
		113          12             q
		114          15             r
		115          1             s
		116          17             t
		117          32             u
		118          9             v
		119          13             w
		120          7             x
		121          16             y
		122          6             z
		123          N/A             {
		124          N/A             |
		125          N/A             }
		126          N/A             ~
		127          117             Delete
		200          122             F1
		201          120             F2
		202          99             F3
		203          118             F4
		204          96             F5
		205          97             F6
		206          98             F7
		207          100             F8
		208          101             F9
		209          109             F10
		210          103             F11
		211          111             F12
		N/A          105             Print Screen
		N/A          107             Scroll Lock
		N/A          N/A             Pause
	#tag EndNote


	#tag Property, Flags = &h0
		AutoCloseBrackets As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		AutocompleteAppliesStandardCase As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected AutocompleteSuggestionInsertionX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		AutoIndentNewLines As boolean = true
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  
			  return mBackColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBackColor = value
			  InvalidateAllLines
			  redraw
			End Set
		#tag EndSetter
		BackColor As color
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected blockBeginPosX As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected blockBeginPosY As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private blockCharsPattern As string
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mBlockendimage = nil then
			    mBlockendimage = loadMaskedPicture(blockEndMarker)
			  end if
			  return mBlockendimage
			End Get
		#tag EndGetter
		Protected Shared BlockEndImage As picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mBlockfoldedimage = nil then
			    mBlockfoldedimage = loadMaskedPicture(blockFoldedMarker)
			  end if
			  return mBlockfoldedimage
			End Get
		#tag EndGetter
		Protected Shared BlockFoldedImage As picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mBlockstartimage = nil then
			    mBlockstartimage = loadMaskedPicture(blockStartMarker)
			  end if
			  return mBlockstartimage
			End Get
		#tag EndGetter
		Protected Shared BlockStartImage As picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mBookmarkimage = nil then
			    mBookmarkimage = loadMaskedPicture(bookmarksimg)
			  end if
			  return mBookmarkimage
			End Get
		#tag EndGetter
		Protected Shared BookmarkImage As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mBookmarktable = nil then
			    //bookmarks
			    mBookmarktable = new Dictionary
			  end if
			  return mBookmarktable
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBookmarktable = value
			End Set
		#tag EndSetter
		Protected BookmarkTable As Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDrawFrame
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDrawFrame = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		Border As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mFrameColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mFrameColor = value
			  Redraw
			End Set
		#tag EndSetter
		BorderColor As color
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		BracketHighlightColor As color = &cFFFF00
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected caretBlinker As CaretBlinker
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCaretColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaretColor = value
			  redraw
			End Set
		#tag EndSetter
		CaretColor As color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  dim x, y as Integer
			  dim calcPos as Integer = desiredColumnCharPos
			  
			  //or the caretpos
			  if desiredColumnCharPos < 0 then calcPos = CaretPos
			  
			  //find screenpos
			  XYatCharPos(calcPos, x, y)
			  
			  return x - LineNumOffset - LeftMarginOffset + ScrollPositionX
			End Get
		#tag EndGetter
		Protected caretDesiredColumn As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCaretline
			End Get
		#tag EndGetter
		CaretLine As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCaretPos
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value = mCaretPos then Return
			  changeSelection(value, 0)
			End Set
		#tag EndSetter
		CaretPos As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private CaretState As boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mcefSelLength
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  changeSelection(cefSelStart, value)
			  Redraw
			End Set
		#tag EndSetter
		cefSelLength As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mcefSelStart
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  changeSelection(value, 0)
			  Redraw
			End Set
		#tag EndSetter
		cefSelStart As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		CharsInLine As Integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		CharWidth As double
	#tag EndProperty

	#tag Property, Flags = &h0
		Circular As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		ClearHighlightedRangesOnTextChange As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		currcaretpos As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentDocumentSymbols As dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentEventID As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mCurrentfocusedfield
			End Get
		#tag EndGetter
		Shared CurrentFocusedField As CustomEditField
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected currentSuggestionWindow As suggestionWindow
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected cursorIsIbeam As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected desiredColumnCharPos As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDirtylinescolor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDirtylinescolor = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		DirtyLinesColor As color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDisplaydirtylines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDisplaydirtylines = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		DisplayDirtyLines As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDisplayInvisibleCharacters
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDisplayInvisibleCharacters = value
			  updateDesiredColumn
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		DisplayInvisibleCharacters As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDisplayLineNumbers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDisplayLineNumbers = value
			  updateDesiredColumn
			  InvalidateAllLines
			  redraw
			End Set
		#tag EndSetter
		DisplayLineNumbers As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mDisplayrightmarginmarker
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDisplayrightmarginmarker = value
			  Redraw
			End Set
		#tag EndSetter
		DisplayRightMarginMarker As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Dragging As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared DragSource As CustomEditField
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DragTextOnDrag As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DragTextPos As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DragTextSelection As datarange
	#tag EndProperty

	#tag Property, Flags = &h0
		EnableAutocomplete As boolean = false
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mEnablelinefoldings
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if mEnablelinefoldings and not value then lines.unfoldAll
			  mEnablelinefoldings = value
			  LineNumOffset = 0
			  updateDesiredColumn
			  InvalidateAllLines
			  redraw
			End Set
		#tag EndSetter
		EnableLineFoldings As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected fullRefresh As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Gutter As picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mGutterBackgroundColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mGutterBackgroundColor = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		GutterBackgroundColor As color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mGutterSeparationLineColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mGutterSeparationLineColor = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		GutterSeparationLineColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return LineNumOffset
			End Get
		#tag EndGetter
		GutterWidth As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		hasFocus As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		HeaderHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		HighlightBlocksOnMouseOverGutter As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mHighlightedranges = nil then
			    mHighlightedranges = new CharSelectionManager
			  end if
			  return mHighlightedranges
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mHighlightedranges = value
			End Set
		#tag EndSetter
		Protected HighlightedRanges As CharSelectionManager
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mHighlighter = nil then
			    //create Highlighter thread
			    mHighlighter = new LineHighlighter(self, SyntaxDefinition, modifiedLines, TextStorage, lines)
			    self.registerForMessage(mHighlighter)
			  end if
			  
			  return mHighlighter
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mHighlighter = value
			End Set
		#tag EndSetter
		Protected highlighter As linehighlighter
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		HighlightMatchingBrackets As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		HighlightMatchingBracketsMode As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected horizontalSB As scrollbar
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mIgnorerepaint
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mIgnorerepaint = value
			End Set
		#tag EndSetter
		IgnoreRepaint As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mInvalidlines = nil then
			    //dictionaries to keep track of modified and updated lines.
			    mInvalidlines = new Dictionary
			  end if
			  
			  return mInvalidlines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInvalidlines = value
			End Set
		#tag EndSetter
		Protected invalidLines As dictionary
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected keyDownTime As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastClickTicks As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastDragTicks As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastDrawnTopLine As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastLongestLineLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastLongestLinePixels As single
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastMouseDownX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastMouseDownY As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastMouseUpX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastMouseUpY As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastRedrawTicks As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLeftMarginOffset
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLeftMarginOffset = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		LeftMarginOffset As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLineNumbersColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLineNumbersColor = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		LineNumbersColor As color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLinenumberstextfont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLinenumberstextfont = value
			  LineNumOffset = 0
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		LineNumbersTextFont As string
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLinenumberstextsize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLinenumberstextsize = min(value, max(TextSize, value))
			  LineNumOffset = 0
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		LineNumbersTextSize As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if not displayLineNumbers then Return 0
			  
			  if mlineNumOffset = 0 then
			    dim tmp as Picture = tmpPicture
			    tmp.graphics.TextFont = LineNumbersTextFont
			    tmp.graphics.TextSize = LineNumbersTextSize
			    tmp.Graphics.Bold = true
			    'mlineNumOffset = tmp.graphics.StringWidth(str(lines.Count*CharsInLine)) + 10 'YN
			    mlineNumOffset = tmp.graphics.StringWidth(str(len(text))) + 6 'YN
			    
			    if EnableLineFoldings then
			      mlineNumOffset = LineNumOffset + blockStartImage.Width + 2
			    end if
			  end if
			  
			  return mlineNumOffset
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mlineNumOffset = 0
			End Set
		#tag EndSetter
		LineNumOffset As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mLines = nil then
			    //and line manager
			    mLines = new LineManager(TextStorage, TabWidth)
			    
			    //register to receive messages from this line manager only
			    self.registerForMessage(mLines)
			  end if
			  
			  return mLines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLines = value
			End Set
		#tag EndSetter
		Protected lines As LineManager
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected linesOnScreen As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private loadingDocument As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MatchingBlockHighlight As CharSelection
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return min(me.Height / TextHeight, lines.Count)
			End Get
		#tag EndGetter
		MaxVisibleLines As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected mBackBuffer As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBackColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mBlockendimage As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mBlockfoldedimage As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mBlockstartimage As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mBookmarkimage As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBookmarktable As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaretColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaretline As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaretPos As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mcefSelLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mcefSelStart As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCurrentAutocompleteOptions As AutocompleteOptions
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mCurrentfocusedfield As CustomEditField
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDirtylinescolor As color = &cFF9999
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDisplaydirtylines As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDisplayInvisibleCharacters As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDisplayLineNumbers As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDisplayrightmarginmarker As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDrawFrame As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mEnablelinefoldings As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFrameColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mGutterBackgroundColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mGutterSeparationLineColor As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHighlightedranges As CharSelectionManager
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mHighlighter As linehighlighter
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mIgnorerepaint As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInvalidlines As dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLeftMarginOffset As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLineNumbersColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLinenumberstextfont As string = "System"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLinenumberstextsize As Integer = 9
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mlineNumOffset As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLines As LineManager
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mModifiedlines As ModifiedLineRangeManager
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mModifiedlines = nil then
			    //dictionaries to keep track of modified and updated lines.
			    mModifiedlines = new ModifiedLineRangeManager
			  end if
			  
			  return mModifiedlines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mModifiedlines = value
			End Set
		#tag EndSetter
		Protected modifiedLines As ModifiedLineRangeManager
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		MouseOverBlock As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mReadOnly As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRightmargin As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mRightmarginlineimage As picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mscrollPosition As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mScrollPositionX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSyntaxDefinition As HighlightDefinition
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTabwidth As Integer = 4
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextFont As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextselectioncolor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextSize As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTextstorage As gapBuffer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mThickInsertionPoint As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h0
		Multiline As boolean = true
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mUndomgr As undomanager
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mVisibleLineRange As ModifiedLineRange
	#tag EndProperty

	#tag Property, Flags = &h0
		NeedsRedrawing As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Opening As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OptionForTrailingSuggestion As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected previouslyDrawnSelection As charSelection
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mReadOnly
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mReadOnly = value
			  
			  if not value then enableBlinker(False)
			End Set
		#tag EndSetter
		ReadOnly As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected redrawTime As double
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mRightmargin = 0 then
			    //get default printer area from printer.
			    dim tmpPrinter as new PrinterSetup
			    mRightmargin = tmpPrinter.Width
			  end if
			  return mRightmargin
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mRightmargin = value
			  Redraw
			End Set
		#tag EndSetter
		RightMarginAtPixel As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mRightmarginlineimage = nil then
			    mRightmarginlineimage = NewPicture(1,1,32)
			    mRightmarginlineimage.Graphics.Pixel(0,0) = &cff
			    mRightmarginlineimage.Mask.Graphics.Pixel(0,0) = &cAAAAAA
			  end if
			  
			  return mRightmarginlineimage
			End Get
		#tag EndGetter
		Protected Shared RightMarginLineImage As picture
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		RightScrollMargin As Integer = 150
	#tag EndProperty

	#tag Property, Flags = &h0
		RulerPic As picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mScrollPosition
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  changeScrollValues(ScrollPositionX, value)
			  Redraw
			End Set
		#tag EndSetter
		ScrollPosition As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return 1 'mScrollPositionX
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			  changeScrollValues(1, ScrollPosition)
			  Redraw
			End Set
		#tag EndSetter
		ScrollPositionX As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private selectedLine As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  
			  dim ret as integer
			  if cefSelLength=0 then
			    ret=0
			  else
			    ret=cefSelLength-(cefSelStart+cefSelLength)\(charsinline+1)+cefSelStart\(charsinline+1)
			    
			  end if
			  
			  
			  if circular then 'selection continues over zero
			    return ret+SelLength2
			  else
			    return ret
			  end if
			  
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim offset,l as integer
			  offset=SelStart
			  
			  cefSelLength = value+(offset+value-1)\CharsInLine-(offset-1)\charsinline
			  
			  //if selection goes over the end, then it gets chopped in cefSelLength, so we have to store the remainder
			  'Text doesn't see to contain CRs, so l is sort of useless
			  l=len(replaceall(Text,chr(13),""))
			  SelLength2=(offset+value)-l-1
			  
			  
			  if SelLength2<0 then 'not crossing zero
			    SelLength2=0
			  else
			    //display 'circular' selection
			    'ClearHighlightedCharacterRanges
			    HighlightCharacterRange 1,SelLength2,HighlightColor
			    Refresh
			  end if
			  
			  
			End Set
		#tag EndSetter
		SelLength As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		SelLength2 As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  'subtract CRs from the CEF selstart:
			  return 1+cefSelStart-cefSelStart\(charsinline+1)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  //account for the added CRs
			  dim r as Integer
			  r=-1+value+(value-1)\charsinline
			  cefSelStart=-1+value+(value-1)\charsinline
			  
			  
			End Set
		#tag EndSetter
		Selstart As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  dim s as string
			  s=TextStorage.getText(cefSelStart, cefSelLength)
			  if s=chr(13) then
			    return s
			  else
			    Return replaceall(s,chr(13),"") 'YN
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  dim ss as integer
			  
			  CurrentEventID = 0
			  ss=selstart
			  Replace(cefSelStart, cefSelLength, value)
			  text=Reflow(text)
			  selstart=ss+lenB(value)
			  
			End Set
		#tag EndSetter
		SelText As string
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private sharedTmpPicture As picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return TextStorage.Stats + EndOfLine + "Last keydown (ms): "+str(keyDownTime/1000)+", last redraw (ms): "+str(redrawTime/1000)+ _
			  " Sel start: "+str(cefSelStart)+", Sel length: "+str(cefSelLength)+", CaretPos:"+str(CaretPos)
			End Get
		#tag EndGetter
		Stats As string
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mSyntaxDefinition
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if mSyntaxDefinition <> value then
			    mSyntaxDefinition = value
			    lines.unfoldAll
			    InvalidateAllLines
			    
			    if CurrentDocumentSymbols <> nil then CurrentDocumentSymbols.Clear
			    ModifiedLines.Clear
			    
			    if highlighter <> nil then
			      //stop highligher
			      if highlighter.state = Thread.Running then highlighter.kill
			      
			      highlighter.definition = value
			      lines.MarkAllLinesAsChanged
			      VisibleLineRange.length = -1
			      
			      Highlight
			    end if
			    
			    if value = nil then HighlightingComplete
			  end if
			End Set
		#tag EndSetter
		SyntaxDefinition As HighlightDefinition
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTabwidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value <= 0 then value = 1
			  
			  mTabwidth = value
			  lines.TabWidth = value
			  updateDesiredColumn
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		TabWidth As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return replaceall(textStorage.getText(0, textStorage.Length),chr(13),"") 'YN
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  value=Reflow(value)
			  
			  
			  loadingDocument = true
			  ignoreRepaint = true
			  mCaretLine = 0
			  currCaretPos=CaretPos
			  dim ccp as integer=CaretPos
			  changeSelection(0,0)
			  
			  if highlighter.state = Thread.Running then highlighter.Kill
			  UndoMgr.Reset
			  modifiedLines.Clear
			  
			  textStorage.setText(value)
			  lines.setText(value.Len)
			  
			  TextChange
			  
			  Highlight
			  InvalidateAllLines
			  ignoreRepaint = False
			  loadingDocument = False
			  caretpos=currcaretpos
			  Redraw
			End Set
		#tag EndSetter
		Text As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextColor = value
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		TextColor As color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTextFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if Value = mTextFont then Return
			  mTextFont = value
			  TextHeight = 0
			  InvalidateAllLines
			  CalculateMaxHorizontalSB
			  CalculateMaxVerticalSB
			  Redraw
			End Set
		#tag EndSetter
		TextFont As string
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mTextHeight = 0 then
			    dim tmp as Picture = tmpPicture
			    mTextHeight = tmp.Graphics.TextHeight
			  end if
			  return mTextHeight + 1
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextHeight = value
			End Set
		#tag EndSetter
		TextHeight As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return TextStorage.Length
			End Get
		#tag EndGetter
		TextLength As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTextselectioncolor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextselectioncolor = value
			  
			  //set default selection color to system default, if none specified.
			  if mTextselectioncolor = &c000000 then
			    mTextselectioncolor = HighlightColor
			  end if
			End Set
		#tag EndSetter
		TextSelectionColor As color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTextSize
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if Value = mTextSize then Return
			  mTextSize = value
			  TextHeight = 0
			  
			  lastLongestLineLength = 0
			  lastLongestLinePixels = 0
			  MaxLineLengthChanged(lines.LongestLineIdx)
			  
			  CalculateMaxHorizontalSB
			  CalculateMaxVerticalSB
			  
			  InvalidateAllLines
			  Redraw
			End Set
		#tag EndSetter
		TextSize As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mTextstorage = nil then
			    //create a new text buffer
			    mTextstorage = new GapBuffer
			    
			    //and blinker timer.
			    caretBlinker = new CaretBlinker(self)
			  end if
			  
			  return mTextstorage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTextstorage = value
			End Set
		#tag EndSetter
		Protected TextStorage As gapBuffer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mThickInsertionPoint
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mThickInsertionPoint = value
			End Set
		#tag EndSetter
		ThickInsertionPoint As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected trailingSuggestion As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected typing As boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  if mUndomgr = nil then
			    mUndomgr = new UndoManager
			  end if
			  return mUndomgr
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mUndomgr = value
			End Set
		#tag EndSetter
		Protected UndoMgr As undomanager
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected verticalSB As scrollbar
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mVisibleLineRange = nil then mVisibleLineRange = new ModifiedLineRange
			  return mVisibleLineRange
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mVisibleLineRange = value
			End Set
		#tag EndSetter
		VisibleLineRange As ModifiedLineRange
	#tag EndComputedProperty


	#tag Constant, Name = BLOCK_CLOSE_CHARS, Type = String, Dynamic = False, Default = \")]}", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = BLOCK_OPEN_CHARS, Type = String, Dynamic = False, Default = \"([{", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = CURRENT_CARET_WORD_DELIMITER_PATTERN, Type = String, Dynamic = False, Default = \"[^\\w\\.]", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DEFAULT_FONT, Type = String, Dynamic = False, Default = \"System", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = DEFAULT_FONTSIZE, Type = Double, Dynamic = False, Default = \"11", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = FlashRefreshRanges, Type = Boolean, Dynamic = False, Default = \"false", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = KEY_BACKSPACE, Type = Double, Dynamic = False, Default = \"51", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_DELETE, Type = Double, Dynamic = False, Default = \"117", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_DOWN, Type = Double, Dynamic = False, Default = \"125", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_END, Type = Double, Dynamic = False, Default = \"119", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_ESC, Type = Double, Dynamic = False, Default = \"53", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_HOME, Type = Double, Dynamic = False, Default = \"115", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_LEFT, Type = Double, Dynamic = False, Default = \"123", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_PGDWN, Type = Double, Dynamic = False, Default = \"121", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_PGUP, Type = Double, Dynamic = False, Default = \"116", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_RIGHT, Type = Double, Dynamic = False, Default = \"124", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_TAB, Type = Double, Dynamic = False, Default = \"48", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KEY_UP, Type = Double, Dynamic = False, Default = \"126", Scope = Private
	#tag EndConstant

	#tag Constant, Name = UNDO_EVT_BLOCK_SECS, Type = Double, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCloseBrackets"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutocompleteAppliesStandardCase"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoIndentNewLines"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cffffff"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h888888"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BracketHighlightColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cFFFF00"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretLine"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretPos"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cefSelLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="cefSelStart"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CharsInLine"
			Group="Behavior"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CharWidth"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Circular"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearHighlightedRangesOnTextChange"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="currcaretpos"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DirtyLinesColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFF9999"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayDirtyLines"
			Visible=true
			Group="Appearance"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayInvisibleCharacters"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayLineNumbers"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayRightMarginMarker"
			Visible=true
			Group="Appearance"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableAutocomplete"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableLineFoldings"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterBackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cEEEEEE"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterSeparationLineColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c888888"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hasFocus"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeaderHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightBlocksOnMouseOverGutter"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightMatchingBrackets"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightMatchingBracketsMode"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Circle"
				"1 - Highlight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ignoreRepaint"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="leftMarginOffset"
			Visible=true
			Group="Appearance"
			InitialValue="4"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c888888"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersTextFont"
			Visible=true
			Group="Appearance"
			InitialValue="System"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersTextSize"
			Visible=true
			Group="Appearance"
			InitialValue="9"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumOffset"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxVisibleLines"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Multiline"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsRedrawing"
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opening"
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightMarginAtPixel"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightScrollMargin"
			Visible=true
			Group="Appearance"
			InitialValue="150"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RulerPic"
			Group="Behavior"
			InitialValue="0"
			Type="picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollPosition"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollPositionX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelLength2"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selstart"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelText"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Stats"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabWidth"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Appearance"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSelectionColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThickInsertionPoint"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass