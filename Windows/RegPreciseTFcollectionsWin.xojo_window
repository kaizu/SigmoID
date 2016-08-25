#tag Window
Begin Window RegPreciseTFcollectionsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   422
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   149806200
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "RegPrecise TF Collections"
   Visible         =   False
   Width           =   800
   Begin Label Label2
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "#kTFfamily"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   83
   End
   Begin PopupMenu GenomesPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#kSelectTFfam"
      Italic          =   False
      Left            =   94
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   659
   End
   Begin Listbox CollectionList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   9
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   False
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   296
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   " 	#kRegulog	#kRegulonNo	TFBSs	#kInfoBits	#kLogo"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   800
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin mHTTPSocket RegPreciseSocket
      Address         =   ""
      BytesAvailable  =   0
      BytesLeftToSend =   0
      Handle          =   0
      httpProxyAddress=   ""
      httpProxyPort   =   0
      Index           =   -2147483648
      InitialParent   =   ""
      IsConnected     =   False
      LastErrorCode   =   0
      LocalAddress    =   ""
      LockedInPosition=   False
      Port            =   0
      RemoteAddress   =   ""
      Scope           =   0
      TabPanelIndex   =   0
      yield           =   False
   End
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   True
      Enabled         =   False
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   765
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Visible         =   True
      Width           =   16
   End
   Begin PushButton RegulogLogoButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kOpen_"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   696
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Underline       =   False
      Visible         =   True
      Width           =   84
   End
   Begin BevelButton InfoButton
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   False
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   495161343
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
   End
   Begin PushButton ExportButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kExportSelected"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   493
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   382
      Underline       =   False
      Visible         =   True
      Width           =   191
   End
   Begin BevelButton BevelButton3
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "#kSelectByQuality"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   278
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   348
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   522
   End
   Begin BevelButton DeselectAllButton
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "#kDeselectAll"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   138
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   348
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
   End
   Begin BevelButton SelectAllButton
      AcceptFocus     =   True
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   4
      Bold            =   False
      ButtonType      =   0
      Caption         =   "#kSelectAll"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   348
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   140
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  if CollectionList.SelCount=1 then
		    RegPreciseRegulonInfo.enabled=true
		    RegPreciseRegulonInfo.Text=kRegulonInfo
		    RegulonShowLogo.Enabled=true
		    'RegulonCheckTF.Enabled=true
		  end if
		  
		  
		  if Keyboard.AltKey then
		    RegulonGetRegPreciseTFseqs.visible=true
		    RegulonGetRegPreciseTFseqs.enabled=true
		  else
		    RegulonGetRegPreciseTFseqs.visible=false
		    RegulonGetRegPreciseTFseqs.enabled=false
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  AdjustLayout4linux(me)
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseRegulonInfo() As Boolean Handles RegPreciseRegulonInfo.Action
			RegulonInfo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function RegPreciseRegulonInfo1() As Boolean Handles RegPreciseRegulonInfo1.Action
			RegulonInfo
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub CheckTF()
		  'This mentod is restricted to DebugBuild only due to Xojo database licensing restriction
		  'You may fully enable it if if you have the Database license 
		  
		  
		  #if DebugBuild then
		    dim RegulonID, vimssId, ProteinFasta as string
		    dim TFname as string
		    dim n as integer
		    
		    logowin.show
		    
		    TFname=CollectionList.Cell(CollectionList.ListIndex,0)
		    for n=0 to UBound(regulatorArray)
		      if JSONitem(regulatorArray(n)).Value("regulatorName")=TFname then
		        RegulonID=JSONitem(regulatorArray(n)).Value("regulonId")
		        exit
		      end if
		      
		    next
		    
		    logowin.WriteToSTDOUT("Getting protein ID from RegPrecise... ")
		    
		    dim res as string
		    dim jsn as new JSONItem
		    dim jsn0 as new JSONItem
		    dim hts as new HTTPSocket
		    
		    hts.Yield=true
		    
		    res=hts.Get("http://regprecise.lbl.gov/Services/rest/regulators?regulonId="+regulonId,0)
		    if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		      if res<>"" then
		        JSN0.load(res)
		        'should contain smth like:
		        '{"regulator":{"locusTag":"ECA3790","name":"PdhR","regulatorFamily":"GntR","regulonId":"10409","vimssId":"608214"}}
		        
		        JSN=JSN0.value("regulator")
		        ProteinFasta=">"+JSN.Value("name")+" locus_tag="+JSN.Value("locusTag")+" regulonId="+JSN.Value("regulonId")+" vimssId="+JSN.Value("vimssId")
		        vimssId=JSN.Value("vimssId")
		        LogoWin.WriteToSTDOUT("OK"+EndOfLine.UNIX)
		        
		      end if
		      
		      logowin.WriteToSTDOUT("Getting protein sequence from MicrobesOnline... ")
		      
		      ' -h pub.microbesonline.org -u guest -pguest genomics -B -e "select * from AASeq where locusId=606816;"
		      
		      Dim db As New MySQLCommunityServer
		      db.Host = "pub.microbesonline.org"
		      'db.Port = 3306
		      db.DatabaseName = "genomics"
		      db.UserName = "guest"
		      db.Password = "guest"
		      If db.Connect Then
		        // Use the database
		        
		        Dim rs As RecordSet
		        rs = db.SQLSelect("select * from AASeq where locusId="+vimssId)
		        
		        If db.Error Then
		          MsgBox("Error: " + db.ErrorMessage)
		          Return
		        End If
		        
		        If rs <> Nil Then
		          ProteinFasta=ProteinFasta+EndOfLine.UNIX+rs.Field("sequence").StringValue
		          tfastx(ProteinFasta)
		          rs.Close
		        End If
		        db.Close
		        
		        
		      Else
		        // Connection error
		        MsgBox(db.ErrorMessage)
		      End If
		      
		      
		    else
		      LogoWin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
		      LogoWin.show
		    end if
		    
		  #else
		    MsgBox "This method is currently disabled due to database licensing issue. Should hopefully be fixed sometime..."
		    
		  #endif
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:CheckTF")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CollectionStats2array(JSONin as JSONItem)
		  'Populates the GenomesPopup and stores genome JSONs in an array
		  'the popup and array indices are the same
		  
		  dim genomes as JSONItem
		  dim GenomeString as string
		  dim n as integer
		  
		  GenomesPopup.DeleteAllRows
		  
		  redim GenomeStatsArray(-1)
		  genomes=JSONin.Value("regulogCollectionStat")
		  if genomes.IsArray then
		    for n=0 to genomes.Count-1
		      if genomes(n) isa JSONItem then
		        'should contain smth like:
		        '{"className":"","collectionId":"1","collectionType":"tfFam","name":"AraC","rnaCount":"0","rnaRegulogCount":"0","rnaSiteCount":"0","tfCount":"10","tfRegulogCount":"14","tfSiteCount":"149","totalGenomeCount":"60","totalRegulogCount":"14"},{"className":"","collectionId":"1","collectionType":"tfFam","name":"AraC","rnaCount":"0","rnaRegulogCount":"0","rnaSiteCount":"0","tfCount":"10","tfRegulogCount":"14","tfSiteCount":"149","totalGenomeCount":"60","totalRegulogCount":"14"}
		        '{"genomeId":"601","name":"Acetobacter pasteurianus IFO 3283-01","rnaRegulonCount":"0","rnaSiteCount":"0","taxonomyId":"634452","tfRegulonCount":"6","tfSiteCount":"16"}
		        
		        if ubound(GenomeStatsArray)=-1 then
		          GenomeStatsArray.append genomes(n)
		          GenomeString=JSONItem(genomes(n)).Value("name")+" ("+JSONItem(genomes(n)).Value("tfCount")+" TFs)"
		          GenomesPopup.AddRow(genomestring)
		        else
		          GenomeString=JSONItem(genomes(n)).Value("name")+" ("+JSONItem(genomes(n)).Value("tfCount")+" TFs)"
		          if GenomesPopup.list(GenomesPopup.ListCount-1)<>GenomeString then 'RegPrecise bug: every item in JSON is duplicated! 
		            GenomeStatsArray.append genomes(n)
		            GenomesPopup.AddRow(genomestring)
		          end if
		        end if
		      end if
		      
		    next
		    GenomesPopup.Enabled=true
		    
		  else
		    'A problem with JSON
		    
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:GenomeStats2array")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function countRegulons(regulogID as string) As string
		  'expects fasta file from RegPrecise with regulog TFBS seqs
		  
		  'simply counts the number of different strain names 
		  'in fasta headers (RegPrecise gives these in square brackets)
		  
		  
		  'DOESN'T WORK! REST response is different
		  
		  ' have to use this call:
		  ' http://regprecise.lbl.gov/Services/rest/regulons?regulogId=621
		  
		  dim strains(0) as string
		  dim lines(-1) as string
		  dim aName as string
		  dim strainKnown as Boolean
		  dim n,m as integer
		  
		  
		  dim res as string
		  dim jsn as new JSONItem
		  dim jsn1 as new JSONItem
		  dim hts as new HTTPSocket
		  hts.Yield=true
		  res=hts.Get("http://regprecise.lbl.gov/Services/rest/regulons?regulogId="+regulogID,0)
		  
		  // result shouls be like this:
		  ' {"regulon":[{"effector":"Bacillibactin; Fe-Bacillibactin","genomeId":"52","genomeName":"Bacillus subtilis subsp. subtilis str. 168","pathway":"Iron homeostasis","regulationType":"TF","regulatorFamily":"AraC","regulatorName":"Btr","regulogId":"1368","regulonId":"12715"},
		  ' ,{"effector":"Bacillibactin; Fe-Bacillibactin","genomeId":"60","genomeName":"Bacillus clausii KSM-K16","pathway":"Iron homeostasis","regulationType":"TF","regulatorFamily":"AraC","regulatorName":"Btr","regulogId":"1368","regulonId":"12711"}]}
		  
		  ' internal JSON may not be an array (in case of single item)
		  
		  if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		    JSN.load(res)
		    JSN1=JSN.Value("regulon")
		    if JSN1.IsArray then
		      return str(JSN1.Count)
		    else
		      return "1"
		    end if
		    
		  else
		    return "0"
		    
		    
		  end if
		  'lines=split(regulogTFBSs,EndOfLine.UNIX)
		  '
		  'for m=0 to UBound(lines)-1
		  'aName=NthField(lines(n),"[",2)
		  'strainKnown=false
		  'for n=1 to ubound(strains)
		  'if strains(n)=aName then
		  'strainKnown=true
		  'exit
		  'end if
		  'next
		  'if NOT strainKnown then
		  'strains.Append aName
		  'end if
		  'next
		  '
		  'return ubound(strains)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillCollectionList(JSONin as JSONItem)
		  // Populates the RegulatorList and stores regulator JSONs in an array
		  ' the popup and array indices are the same
		  
		  // CollectionList columns are:
		  ' 0 - Checkbox
		  ' 1 - Regulog Name
		  ' 2 - Number of regulons in the regulog
		  ' 3 - Number of TFBSs in the regulog
		  ' 4 - Information (bits)
		  ' 5 - Logo picture
		  ' 6 (invisible) – RegulogID
		  ' 7 (invisible) - TFBS seqs (in fasta format)
		  ' 8 - TFBS length.
		  ' (three last columns are here, because it's easier to access these data when sorting the listbox)
		  
		  ProgressWheel1.Visible=true
		  ProgressWheel1.Enabled=true
		  
		  dim regulators as JSONItem
		  dim regulogID As string
		  dim fa as string
		  dim n as integer
		  
		  redim logopix(-1)
		  CollectionList.DeleteAllRows
		  
		  redim regulatorArray(-1)
		  regulators=JSONin.Value("regulog")
		  if regulators.IsArray then
		    for n=0 to regulators.Count-1
		      if regulators(n) isa JSONItem then
		        'should contain smth like:
		        '{"effector":"Bacillibactin, Fe-Bacillibactin","pathway":"Iron homeostasis","regulationType":"TF",
		        '"regulatorFamily":"AraC","regulatorName":"Btr","regulogId":"1368","taxonName":"Bacillales"}
		        
		        '(some fields could be missing!)
		        '#kRegulog    #kRegulonNo    TFBSs    #kLogo
		        
		        if JSONItem(regulators(n)).Value("regulationType")="TF" then 'exclude the RNAs for now
		          regulatorArray.append regulators(n)
		          dim s1, s2, s3, s4, s6, s7 as string
		          s1=JSONItem(regulators(n)).Value("regulatorName")+" – "+JSONItem(regulators(n)).Value("taxonName")
		          regulogID=JSONItem(regulators(n)).Value("regulogId")
		          s6=regulogID
		          'get the data for the regulon (number of regulons,TFBSs and the actual TFBS seqs) 
		          
		          
		          
		          dim res as string
		          dim jsn as new JSONItem
		          dim hts as new HTTPSocket
		          hts.Yield=true
		          res=hts.Get("http://regprecise.lbl.gov/Services/rest/sites?regulogId="+regulogID,0)
		          
		          if hts.HTTPStatusCode>=200 AND hts.HTTPStatusCode<300 then 'successful
		            if res<>"" then
		              JSN.load(res)
		              '--> WriteToSTDOUT("got the data for "+TFname+".")
		              dim RegPreciseTemp as FolderItem
		              dim OutStream As TextOutputStream
		              
		              RegPreciseTemp=SpecialFolder.Temporary.child("RegPreciseTemp")
		              if RegPreciseTemp<>nil then
		                if RegPreciseTemp.Exists then
		                  
		                  ' the file being created may not be used in the end
		                  
		                  
		                  #if TargetLinux 
		                    RegPreciseTemp.delete 'SpecialFolder.Trash returns NIL in Linux
		                  #else 
		                    RegPreciseTemp.MoveFileTo(SpecialFolder.Trash)
		                  #endif
		                  RegPreciseTemp=SpecialFolder.Temporary.child("RegPreciseTemp")
		                end if
		                
		                
		                fa=JSON2Fasta(JSN)
		                fa=FillGaps(fa)
		                s7=fa
		                'logopix.Append MakeLogoPic(fa)
		                
		                s2=countRegulons(regulogID)      ' Regulon #
		                
		                s3=str(countFields(fa,">")-1)  ' TFBS #
		                
		                if fa<>"" then
		                  OutStream = TextOutputStream.Create(RegPreciseTemp)
		                  outstream.Write(fa)
		                  outstream.close
		                  '--> LoadAlignment(RegPreciseTemp)
		                  '--> logowin.ChangeView("Logo")
		                  '--> me.title="SigmoID: "+TFname+" (RegPrecise)"
		                  
		                  
		                  
		                end if
		              end if
		            else
		              logowin.WriteToSTDOUT("no response in 15 sec.")
		            end if
		          else
		            logowin.WriteToSTDOUT ("Server error (HTTP status code "+str(hts.HTTPStatusCode)+")")
		          end if
		          
		          Dim p as picture = MakeLogoPic(fa)
		          Dim reg() As String = Array("",s1, s2, s3, Str(InfoBits),"", s6, s7, str(Sitelength))  'first column contains checkboxes
		          CollectionList.AddRow(reg)
		          
		          'add picture to the last row as variant, so it is sorted properly 
		          CollectionList.RowTag(collectionlist.LastIndex)=p
		        end if
		      end if
		      
		    next
		    
		    'sort the list:
		    CollectionList.ColumnsortDirection(0)=ListBox.SortAscending
		    CollectionList.SortedColumn=0   //first column is the sort column
		    CollectionList.Sort
		    
		    CollectionList.Enabled=true
		  else
		    'A problem with JSON
		    
		  end if
		  
		  ProgressWheel1.Visible=false
		  ProgressWheel1.Enabled=false
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:FillRegulatorList")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVersion()
		  SocketTask="release"
		  RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/release")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFamilies()
		  dim gnms as string
		  dim f as folderitem
		  dim tis as TextInputStream
		  
		  'loading the JSON from disk rather than retrieving it from the net:
		  '(Need to check RegPrecise version/date!)
		  'f=Resources_f.child("genomeStats.JSON")
		  'if f<>Nil then
		  'tis=f.OpenAsTextFile
		  'if tis<>nil then
		  'gnms=tis.ReadAll
		  'tis.Close
		  '
		  'dim JSN as new JSONItem
		  'JSN.load(gnms)
		  '
		  'GenomeStats2array(JSN)
		  'end if
		  'else
		  'get the data from RegPrecise
		  SocketTask="TFfamilies"
		  RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/regulogCollectionStats?collectionType=tfFam")
		  'end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:LoadGenomes")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadRegulators(GenomeID as string)
		  SocketTask="tfFam"
		  'regulogs?collectionType={type}&collectionId={id}
		  'Description
		  'Retrieves a list of regulogs that belongs to a specific collection
		  '
		  'Input
		  'Requires type and identifier of a regulog collection
		  '
		  'Output
		  'Returns a list of regulogs. Each regulog is provided with the following data:
		  '
		  'regulogId - identifier of regulog
		  'regulatorName - name of regulator
		  'regulatorFamily - family of regulator
		  'regulationType - type of regulation: either TF (transcription factor) or RNA
		  'taxonName - name of taxonomic group
		  'effector - effector molecule or environmental signal of a regulator
		  'pathway - metabolic pathway or biological process controlled by a regulator
		  
		  RegPreciseSocket.Get("http://regprecise.lbl.gov/Services/rest/regulogs?collectionType=tfFam&collectionId="+GenomeID)
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulogLogo()
		  dim RegulogID,RegulonID, TFname as string
		  dim n as integer
		  
		  
		  TFname=CollectionList.Cell(CollectionList.ListIndex,1)
		  TFname=NthField(TFname," – ",1)
		  RegulogID=CollectionList.cell(CollectionList.ListIndex,6)
		  
		  
		  
		  LogoWin.RegulogID=Val(RegulogID)
		  LogoWin.IsRegulog=true
		  
		  'we already have these data in the listboh, but still.
		  LogoWin.LoadRegpreciseData(RegulogID,TFname,true)
		  HmmGenSettingsWin.ValueField.text=TFname
		  MASTGenSettingsWin.ValueField.text=TFname
		  ProfileWizardWin.ValueField.text=TFname
		  LogoWin.show
		  
		  Exception err
		    if err isa IOException then
		      msgbox "A problem creating/reading temporaty file. Please try to clean your temp folder"
		    end if
		    ExceptionHandler(err,"RegPreciseWin:RegulogLogoButton.Action")
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegulonInfo()
		  'get the ID:
		  dim RegulogID As string
		  
		  RegulogID=CollectionList.cell(CollectionList.ListIndex,6)
		  
		  'open the RegPrecise page:
		  RegulonInfo(val(RegulogID),true)
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegPreciseRegulonInfo")
		    
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		GenomeStatsArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		InfoBits As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LogoPix(-1) As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		RegPreciseVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		RegulatorArray(-1) As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		siteLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SocketTask As String
	#tag EndProperty


#tag EndWindowCode

#tag Events Label2
	#tag Event
		Sub Open()
		  me.text=kGenome+":"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GenomesPopup
	#tag Event
		Sub Change()
		  'GenomeStatsArray contain JSONs like this:
		  '{"className":"","collectionId":"2","collectionType":"tfFam","name":"ArgR","rnaCount":"0","rnaRegulogCount":"0","rnaSiteCount":"0","tfCount":"1","tfRegulogCount":"27","tfSiteCount":"1752","totalGenomeCount":"249","totalRegulogCount":"27"}
		  
		  
		  LoadRegulators(GenomeStatsArray(me.ListIndex).Value("collectionId"))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CollectionList
	#tag Event
		Sub Change()
		  if me.SelCount=1 then
		    'RegulonLogoButton.Enabled=true
		    RegulogLogoButton.Enabled=true
		    InfoButton.Enabled=true
		  else
		    'RegulonLogoButton.Enabled=false
		    RegulogLogoButton.Enabled=false
		    InfoButton.Enabled=false
		  end if
		  
		  if me.SelCount>=1 then
		    DeselectAllButton.enabled=true
		    ExportButton.Enabled=true
		  else
		    DeselectAllButton.enabled=true
		    ExportButton.Enabled=true
		  end if
		  
		  if me.SelCount=me.ListCount then
		    SelectAllButton.enabled=false
		  else
		    SelectAllButton.enabled=true
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // CollectionList columns are:
		  ' 0 - Checkbox
		  ' 1 - Regulog Name
		  ' 2 - Number of regulons in the regulog
		  ' 3 - Number of TFBSs in the regulog
		  ' 4 - Information (bits)
		  ' 5 - Logo picture
		  ' 6 (invisible) – RegulogID
		  ' 7 (invisible) - TFBS seqs (in fasta format)
		  ' 8 (invisible) - TFBS length.
		  
		  me.ColumnWidths="20,300,80,60,80,*,0,0,0" 'three last columns just store the data 
		  me.ColumnType(0)=Listbox.TypeCheckbox
		  me.DefaultRowHeight=39  'LogoPic.Height=35
		  'me.ColumnSortDirection(-1)=ListBox.HeaderTypes.NotSortable 'disable sorting of all the columns
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  ' LogoPix array isn't initialised initially (and some elements may be nil afterwards)
		  
		  if Column=5 then
		    if row<=me.lastindex then
		      g.DrawPicture(me.rowtag(row), 0, 0) 
		    end if
		  end if
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events RegPreciseSocket
	#tag Event
		Sub PageReceived(url as string, httpStatus as integer, headers as internetHeaders, content as string)
		  
		  ProgressWheel1.Visible=false
		  ProgressWheel1.Enabled=false
		  dim JSN as new JSONItem
		  
		  if httpStatus>=200 AND httpStatus<300 then 'successful
		    JSN.load(content)
		    
		    Select case SocketTask
		    case "release"
		      
		      RegPreciseVersion=JSN.value("majorVersion")+"."+JSN.value("mionrVersion")+" "+JSN.value("releaseDate")
		    case "TFfamilies"
		      'populate the GenomesPopup:
		      CollectionStats2array(JSN)
		    case "tfFam"
		      'Assemble collection info
		      '(with Logos!)
		      FillCollectionList(JSN)
		      'case "regulons"
		      ''populate the RegulatorList:
		      'FillRegulatorList(JSN)
		      'case "regulogs"
		      ''populate the RegulatorList:
		      'beep
		    End Select
		  else
		    MsgBox "Problems connecting to RegPrecise (HTTP status code "+str(httpStatus)+")"
		  end if
		  
		  Exception err
		    ExceptionHandler(err,"RegPreciseWin:RegPreciseSocket.pagereceived")
		    
		End Sub
	#tag EndEvent
	#tag Event
		Sub Connected()
		  if SocketTask<>"release" then
		    'ProgressWheel1.top=CollectionList.top+CollectionList.Height/3
		    ProgressWheel1.Visible=true
		    ProgressWheel1.Enabled=true
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RegulogLogoButton
	#tag Event
		Sub Action()
		  RegulogLogo
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InfoButton
	#tag Event
		Sub Open()
		  #if TargetCocoa then
		    me.Icon=SystemIcons.Info(20,20)
		    me.Caption=""
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  RegulonInfo
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton
	#tag Event
		Sub Action()
		  'make tmp folder
		  
		  'write meme files to tmp folder
		  
		  'convert all tmp files to a single minimal meme file
		  '(meme2meme; prompt for family name)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton3
	#tag Event
		Sub Action()
		  SelectTFBSWindow.show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeselectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to CollectionList.ListCount-1
		    CollectionList.CellCheck(k,0) = false
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectAllButton
	#tag Event
		Sub Action()
		  dim k as integer
		  
		  for k=0 to CollectionList.ListCount-1
		    CollectionList.CellCheck(k,0) = true
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="RegPreciseVersion"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SocketTask"
		Group="Behavior"
		Type="String"
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
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior