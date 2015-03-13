#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Function CleanUp(Ge As string) As string
		  
		  #pragma disableBackgroundTasks
		  #pragma DisableBoundsChecking
		  #pragma NilObjectChecking False
		  #pragma StackOverflowChecking False
		  
		  ge=ReplaceAll(Ge," ","")
		  ge=ReplaceAll(Ge,"1","")
		  ge=ReplaceAll(Ge,"2","")
		  ge=ReplaceAll(Ge,"3","")
		  ge=ReplaceAll(Ge,"4","")
		  ge=ReplaceAll(Ge,"5","")
		  ge=ReplaceAll(Ge,"6","")
		  ge=ReplaceAll(Ge,"7","")
		  ge=ReplaceAll(Ge,"8","")
		  ge=ReplaceAll(Ge,"9","")
		  ge=ReplaceAll(Ge,"0","")
		  ge=ReplaceAll(Ge,cLineEnd,"")
		  
		  return Uppercase(Ge)
		  
		  
		  
		  Exception err
		    ExceptionHandler(err,"CleanUp")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Complement(seq as string) As String
		  'memory blocks are up to 80 times faster than strings here!!! :
		  dim n,l,count as integer
		  dim in1,out as memoryBlock
		  l=lenB(seq)
		  in1=new MemoryBlock(l+1)
		  out=new MemoryBlock(l+2)
		  in1.pString(0)=seq    'Shouldn't there be a CString here?
		  
		  'setting endiannes here is probably unnecessary, but...
		  '#if targetWin32
		  'in1.littleEndian=true
		  'out.littleEndian=true
		  '#endif
		  
		  count=1
		  for n=1 to l
		    out.byte(count)=RevCompArr(in1.byte(n))
		    count=count+1
		  next
		  
		  out.byte(count)=0     ' ending with 0 to get CString
		  return out.cstring(1)
		  
		  Exception err
		    ExceptionHandler(err,"MethodsAndGlobals:RevCompl")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawRuler(width as integer, baseY as integer, bp as integer) As Group2D
		  'Routine to draw  the ruler on linear maps
		  
		  'mapwidth, 20, me.seq.length
		  
		  dim Ruler as New Group2D
		  dim n,x,m as integer
		  dim pixperbp as double
		  'dim p as new picture (1,1,32)
		  
		  pixPerbp=width/bp
		  
		  'draw seqline:
		  dim rect as New RectShape
		  rect.width=width
		  rect.height=2
		  rect.border=0
		  'rect.fillcolor=RGB(24,96,90)
		  rect.x=rect.width/2 'adjust for central coordinate
		  rect.y=BaseY+rect.height/2
		  Ruler.Append(rect)
		  
		  'drawticks across the line:
		  '100bp ticks:
		  n=bp/100
		  'find start:
		  dim  startCoordinate as integer = ((GenomeDelta\100)+1)*100-GenomeDelta
		  'Example:
		  'GenomeDelta=2291576
		  '                                     2291576               2291576
		  'dim  startCoordinate as integer = ((GenomeDelta\100)+1)*100-GenomeDelta
		  '                                             22915
		  '                                                 2291600
		  'startCoordinate= 24
		  
		  x=startCoordinate*pixPerbp  'shift left according to actual position
		  for m=0 to n
		    rect=New RectShape
		    rect.width=1
		    rect.height=2
		    rect.border=0
		    'rect.fillcolor=RGB(24,96,90)
		    'rect.x=x+rect.width/2+100*m*pixPerbp
		    rect.x=x+100*m*pixPerbp
		    
		    'rect.y=BaseY-1+rect.height/2
		    rect.y=BaseY-1
		    Ruler.Append(rect)
		  next
		  '500bp tick:
		  startCoordinate = ((GenomeDelta\500)+1)*500-GenomeDelta
		  x=startCoordinate*pixPerbp
		  n=bp/500
		  for m=0 to n
		    rect=New RectShape
		    rect.width=1
		    rect.height=3
		    rect.border=0
		    'rect.fillcolor=RGB(24,96,90)
		    'rect.x=x+rect.width/2+500*m*pixPerbp
		    rect.x=x+500*m*pixPerbp
		    
		    rect.y=BaseY-2'+rect.height/2
		    Ruler.Append(rect)
		  next
		  '1kb tick:
		  startCoordinate = ((GenomeDelta\1000)+1)*1000-GenomeDelta
		  x=startCoordinate*pixPerbp
		  n=bp/1000
		  for m=0 to n
		    'pic.graphics.fillrect x+100*m*pixPerbp,97,1,9
		    rect=New RectShape
		    rect.width=1
		    rect.height=5
		    rect.border=0
		    'rect.fillcolor=RGB(24,96,90)
		    'rect.x=x+rect.width/2+1000*m*pixPerbp
		    rect.x=x+1000*m*pixPerbp
		    
		    rect.y=BaseY-4'+rect.height/2
		    Ruler.Append(rect)
		    
		    'add coordinate text
		    dim s as New StringShape
		    s.Text=str(GenomeDelta+startCoordinate+1000*m)
		    s.TextFont=FixedFont
		    s.TextSize=9
		    's.rotation=1.5*3.1415926
		    s.x=rect.x'-(p.Graphics.StringWidth(s.text)/2)
		    s.y=baseY-8
		    Ruler.Append(s)
		    
		    
		  next
		  
		  ' add text labels:
		  
		  'dim s as New StringShape
		  's.Text="1"
		  's.TextFont=FixedFont
		  's.Bold=True
		  's.fillcolor=RGB(24,96,90)
		  's.rotation=1.5*3.1415926
		  's.x=20
		  's.y=baseY
		  'Ruler.Append(s)
		  '
		  's=New StringShape
		  's.Text=str(bp)
		  's.TextFont=FixedFont
		  's.Bold=True
		  's.fillcolor=RGB(24,96,90)
		  's.rotation=1.5*3.1415926
		  's.X=50+width
		  's.y=baseY
		  'Ruler.Append(s)
		  
		  return ruler
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExceptionHandler(err as RuntimeException, meth as string)
		  'all exceptions are (partially) handled here
		  
		  
		  Dim ErrNo As integer
		  'if err IsA COMException then
		  'ErrNo=1'  A COM exception occurred. This exception is raised by classes generated through the IDE's Project->Add->ActiveX Component feature.
		  if err IsA FunctionNotFoundException then
		    ErrNo=2' A function declared using the Declare statement's "Soft" keyword could not be loaded.
		  elseif err IsA HTMLViewerException then
		    ErrNo=3 '  There was an error parsing the HTML using HTMLViewer.
		  elseif err IsA IllegalCastException then
		    ErrNo=4'  You cast an object to a different class and sent it a message its real class can't accept.
		  elseif err IsA InvalidParentException then
		    ErrNo=5 '  You tried to get the parent of a control using the Parent property of the Control class, but its parent is in a different window.
		  elseif err IsA IOException then
		    ErrNo=6 '  An error occurred while creating or opening a file.
		  elseif err IsA JSONException then
		    ErrNo=7 '  A method of the JSONItem class failed.
		  elseif err IsA  KeyChainException then
		    ErrNo=8 '  A method of the KeyChain or KeyChainItem classes failed.
		  elseif err IsA KeyNotFoundException then
		    ErrNo=10 '  An attempt was made to access a Dictionary item with a key that the dictionary does not contain.
		  elseif err IsA MenuHasParentException then
		    ErrNo=11 '  A MenuItem has been used several times. Currently only applies to Cocoa applications.
		  elseIf err IsA NilObjectException then
		    ErrNo=12 '  An attempt was made to access an object that does not exist.
		  elseIf err IsA ObjCException   then
		    ErrNo=13' An Objective-C exception around a Declare statement.
		  elseif err IsA OLEException then
		    ErrNo=14 '  An OLE-related runtime exception occurred. Handle errors in Office Automation code via the OLEException class.
		  elseif err IsA OutOfBoundsException then
		    ErrNo=15 '  An attempt was made to read from or write to a value, character, or element outside the bounds of the object or data type.
		  elseif err IsA OutOfMemoryException then
		    ErrNo=16 '  Raised in certain cases when an operation cannot be completed due to insufficient memory.
		  elseif err IsA RbScriptAlreadyRunningException then
		    ErrNo=17 '  The user tried to modify an RBscript that is already executing or tried to modify the context of the script while it is running.
		  elseif err IsA RegExException then
		    ErrNo=18 '  The RegEx engine issued a runtime exception. Currently this means that you used an invalid search pattern in a Regular Expression. In the future, other types of regular expression exceptions may be added.
		  elseif err IsA RegistryAccessErrorException then
		    ErrNo=19 '  You tried to use the RegistryItem class without proper access privileges or tried to use it under any Macintosh OS or Linux. It is a Windows-only feature.
		  elseif err IsA ShellNotRunningException then
		    ErrNo=20 '   You tried to access an asynchronous or interactive shell session, but the shell was not running.
		  elseif err IsA SOAPException then
		    ErrNo=21 '  SOAPExceptions can be raised when using a WSDL to define your SOAP function. If the method name does not exist or the parameters passed do not match the WSDL specifications, a SOAPException runtime error will be raised.
		  elseif err IsA SpotlightException then
		    ErrNo=22 '  An error related to a SpotlightQuery was encountered, such as an invalid query.
		  elseif err IsA StackOverflowException then
		    ErrNo=23 '  When one routine (method/event handler/menu handler) calls another, memory is used to keep track of the place in each routine where it was called along with the values of its local variables. The purpose of this is to return (when the routine being called finishes) to the previous routine with all local variables as they were before. The memory set aside for tracking this is called the Stack (because you are "stacking" one routine on top of another). If your application runs out of stack space, a StackOverflowException will occur. You should be able to test your application thoroughly enough to prevent this error from occurring.
		  elseif err IsA ThreadAlreadyRunningException then
		    ErrNo=24 '  You tried to change the stack size of a Thread while it was running.
		  elseif err IsA TypeMismatchException then
		    ErrNo=25 '  You tried to assign to an object the wrong data type.
		  elseif err IsA UnsupportedFormatException then
		    ErrNo=26 '  You used a string expression that does not evaluate to a number or tried to open or save an unsupported picture format.
		  elseif err IsA UnsupportedOperationException then
		    ErrNo=27 '  You tried to perform an operation which is not supported.
		  elseif err IsA XMLDOMException  then
		    ErrNo=28 '  This exception may occur during the creation of a DOM document.
		  elseif err IsA XMLException then
		    ErrNo=29 '  There was an error in parsing XML.
		  elseif err IsA XMLReaderException then
		    ErrNo=30 '  There was an error in parsing XML using XMLReader.
		  elseif err IsA ThreadAccessingUIException then
		    ErrNo=30 '  This exception is raised in Cocoa applications that access a user interface property or method from within a thread
		  elseif err isa EndException or err isa ThreadEndException then
		    raise err  //Re-raise the exception to allow for proper app or thread termination
		  else
		    ErrNo=99 '  "Unnown error has occurred. Please try to save important files (under different names) and relaunch SQ."
		  end if
		  
		  msgBox kErr1+str(ErrNo)+kIn+"'"+meth+"'"+kErr2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GeneticCodesInit()
		  'this routine fills in all the translation tables for all versions of genetic codes, as well as starts and stops.
		  
		  'dim CodonList As String ="AGA,AGG,CGA,CGC,CGG,CGT,CTA,CTC,CTG,CTT,TTA,TTG,AGC,AGT,TCA,TCC,TCG,TCT,GGA,GGC,GGG,GGT,GCA,GCC,GCG,GCT,CCA,CCC,CCG,CCT,ACA,ACC,ACG,ACT,GTA,GTC,GTG,GTT,ATA,ATC,ATT,CAA,CAG,AAC,AAT,AAA,AAG,CAC,CAT,TTC,TTT,GAA,GAG,GAC,GAT,TGC,TGT,TAC,TAT,TGG,ATG,TAA,TAG,TGA"
		  'dim aaList As String ="XRRRRRRLLLLLLSSSSSSGGGGAAAAPPPPTTTTVVVVIIIQQNNKKHHFFEEDDCCYYWM***"
		  'me.gCodes(1)=new gCode(CodonList,aaList)
		  
		  dim f As FolderItem
		  Dim stream as TextInputStream
		  dim line As String
		  dim CodeNo,n,m as integer
		  dim starts,stops,base1,base2,base3,Codons,codon,AAs,CodeName as string
		  
		  'f = getFolderItem("SQ Libs")
		  f=SpecialFolder.ApplicationData.Child("SQ")
		  f = f.child("Genetic.codes")
		  if f.exists AND f<>NIL then
		    stream = f.OpenAsTextFile
		    
		    while not stream.EOF
		      line=stream.readLine
		      if leftb(line,14)=">transl_table=" then   'one code type definition starts
		        CodeNo=Val(midb(line,15,2))
		        CodeName=trim(Right(line,lenb(line)-16))
		        line=stream.readLine
		        AAs=trim(NthField(line,"=",2))
		        line=stream.readLine
		        starts=trim(NthField(line,"=",2))
		        line=stream.readLine
		        Base1=trim(NthField(line,"=",2))
		        line=stream.readLine
		        Base2=trim(NthField(line,"=",2))
		        line=stream.readLine
		        Base3=trim(NthField(line,"=",2))
		        Codons=""
		        stops=""
		        for n=1 to 64
		          codon=midb(base1,n,1)+midb(base2,n,1)+midb(base3,n,1)+","
		          Codons=codons+codon
		          if midb(AAs,n,1)="*" then 'stop-codon
		            stops=stops+codon
		          end
		        next
		        
		        gCodes(CodeNo)=new gCode(Codons,AAs)
		        m=CountFields(starts,",")
		        for n=1 to m
		          gCodes(CodeNo).Starts.append NthField(starts,",",n)
		        next
		        m=CountFields(stops,",")-1
		        for n=1 to m
		          gCodes(CodeNo).Stops.append NthField(stops,",",n)
		        next
		        
		        gCodes(CodeNo).Name=CodeName
		      end
		    wend
		    stream.close                     'close enzyme file
		    
		  else
		    msgbox "No file with genetic codes found. Translation will be unavailable!"
		    
		  end
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HaveRedundancies(gen As string) As Boolean
		  'this is slow -
		  'can use memoryblocks instead of strings -
		  'chrB(memoryblock.byte) is faster than midB(gene,n,1),
		  'and I may not even need to use chrB()
		  dim n,last,GeneLength as integer
		  dim ch,gene as string
		  
		  '#pragma disableBackgroundTasks
		  '#pragma disableBoundsChecking
		  
		  'remove spaces, numerals and convert all to upper case
		  gene=UpperCase(gen)
		  'gene2=""
		  ''t=ticks
		  GeneLength=lenB(gene)
		  last=1
		  'find first illegal, write up to it, skip, find next and so on...
		  for n=1 to GeneLength
		    'set ch to character n of gene
		    ch=midB(gene,n,1)
		    if instrB("ACTG",ch)=0 then
		      return true
		    end
		  next
		  return false
		  Exception err
		    ExceptionHandler(err,"HaveRedundancies")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function hmmbuild(infilePath as string, outfilePath as string) As boolean
		  '/usr/local/bin/hmmbuild --informat afa --dna hrpl6.hmm hrpl6.fasta
		  
		  
		  '# hmmbuild :: profile HMM construction from multiple sequence alignments
		  '# HMMER 3.1b1 (May 2013); http://hmmer.org/
		  '# Copyright (C) 2013 Howard Hughes Medical Institute.
		  '# Freely distributed under the GNU General Public License (GPLv3).
		  '# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		  'Usage: hmmbuild [-options] <hmmfile_out> <msafile>
		  '
		  'Basic options:
		  '-h     : show brief help on version and usage
		  '-n <s> : name the HMM <s>
		  '-o <f> : direct summary output to file <f>, not stdout
		  '-O <f> : resave annotated, possibly modified MSA to file <f>
		  '
		  'Options for selecting alphabet rather than guessing it:
		  '--amino : input alignment is protein sequence data
		  '--dna   : input alignment is DNA sequence data
		  '--rna   : input alignment is RNA sequence data
		  '
		  'Alternative model construction strategies:
		  '--fast           : assign cols w/ >= symfrac residues as consensus  [default]
		  '--hand           : manual construction (requires reference annotation)
		  '--symfrac <x>    : sets sym fraction controlling --fast construction  [0.5]
		  '--fragthresh <x> : if L <= x*alen, tag sequence as a fragment  [0.5]
		  '
		  'Alternative relative sequence weighting strategies:
		  '--wpb     : Henikoff position-based weights  [default]
		  '--wgsc    : Gerstein/Sonnhammer/Chothia tree weights
		  '--wblosum : Henikoff simple filter weights
		  '--wnone   : don't do any relative weighting; set all to 1
		  '--wgiven  : use weights as given in MSA file
		  '--wid <x> : for --wblosum: set identity cutoff  [0.62]  (0<=x<=1)
		  '
		  'Alternative effective sequence weighting strategies:
		  '--eent       : adjust eff seq # to achieve relative entropy target  [default]
		  '--eclust     : eff seq # is # of single linkage clusters
		  '--enone      : no effective seq # weighting: just use nseq
		  '--eset <x>   : set eff seq # for all models to <x>
		  '--ere <x>    : for --eent: set minimum rel entropy/position to <x>
		  '--esigma <x> : for --eent: set sigma param to <x>  [45.0]
		  '--eid <x>    : for --eclust: set fractional identity cutoff to <x>  [0.62]
		  '
		  'Alternative prior strategies:
		  '--pnone    : don't use any prior; parameters are frequencies
		  '--plaplace : use a Laplace +1 prior
		  '
		  'Handling single sequence inputs:
		  '--singlemx    : use substitution score matrix for single-sequence inputs
		  '--popen <x>   : gap open probability (with --singlemx)
		  '--pextend <x> : gap extend probability (with --singlemx)
		  '--mx <s>      : substitution score matrix (built-in matrices, with --singlemx)
		  '--mxfile <f>  : read substitution score matrix from file <f> (with --singlemx)
		  '
		  'Control of E-value calibration:
		  '--EmL <n> : length of sequences for MSV Gumbel mu fit  [200]  (n>0)
		  '--EmN <n> : number of sequences for MSV Gumbel mu fit  [200]  (n>0)
		  '--EvL <n> : length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)
		  '--EvN <n> : number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)
		  '--EfL <n> : length of sequences for Forward exp tail tau fit  [100]  (n>0)
		  '--EfN <n> : number of sequences for Forward exp tail tau fit  [200]  (n>0)
		  '--Eft <x> : tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)
		  '
		  'Other options:
		  '--cpu <n>          : number of parallel CPU workers for multithreads
		  '--stall            : arrest after start: for attaching debugger to process
		  '--informat <s>     : assert input alifile is in format <s> (no autodetect)
		  '--seed <n>         : set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]
		  '--w_beta <x>       : tail mass at which window length is determined
		  '--w_length <n>     : window length
		  '--maxinsertlen <n> : pretend all inserts are length <= <n>
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  'Usage: hmmbuild [-options] <hmmfile_out> <msafile>
		  cli=hmmbuildpath+" "+outfilepath+" "+infilepath
		  
		  
		  
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    return true
		  else
		    LogoWin.WriteToSTDOUT (EndOfLine + "hmmbuild error Code: "+Str(sh.errorCode)+EndOfLine)
		    LogoWin.WriteToSTDOUT sh.result
		    return false
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Reverse(seq as string) As String
		  'memory blocks are up to 80 times faster than strings here!!! :
		  dim n,l,count as integer
		  dim in1,out as memoryBlock
		  l=lenB(seq)
		  in1=new MemoryBlock(l+1)
		  out=new MemoryBlock(l+2)
		  in1.pString(0)=seq    'Shouldn't there be a CString here?
		  
		  'setting endiannes here is probably unnecessary, but...
		  '#if targetWin32
		  'in1.littleEndian=true
		  'out.littleEndian=true
		  '#endif
		  
		  count=1
		  for n=l downto 1
		    out.byte(count)=in1.byte(n)
		    count=count+1
		  next
		  out.byte(count)=0     ' ending with 0 to get CString
		  return out.cstring(1)
		  
		  Exception err
		    ExceptionHandler(err,"MethodsAndGlobals:RevCompl")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReverseComplement(seq As string) As string
		  'memory blocks are up to 80 times faster than strings here!!! :
		  dim n,l,count as integer
		  'dim  gene2 as string
		  dim in1,out as memoryBlock
		  l=lenB(seq)
		  in1=new MemoryBlock(l+1)
		  out=new MemoryBlock(l+2)
		  in1.pString(0)=seq    'Shouldn't there be a CString here?
		  
		  'setting endiannes here is probably unnecessary, but...
		  '#if targetWin32
		  'in1.littleEndian=true
		  'out.littleEndian=true
		  '#endif
		  
		  count=1
		  for n=l downto 1
		    out.byte(count)=RevCompArr(in1.byte(n))
		    count=count+1
		  next
		  out.byte(count)=0     ' ending with 0 to get CString
		  
		  ' memoryblock.cstring() function is setting illegal encoding of the result string
		  'so I have to forse the default encoding here:
		  return DefineEncoding(out.cstring(1), Encodings.UTF8)
		  
		  'Exception err
		  'ExceptionHandler(err,"MethodsAndGlobals:RevCompl")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SimplePattern(Pattern as string) As string
		  
		  'routine to get all possible seqs for a redundant site
		  
		  dim actualSites(0) as string
		  dim chars2add(4) as string
		  dim l,m,n,ub,charNumber2add as integer
		  dim char,pat, simplepat as string
		  
		  '#pragma disableBackgroundTasks
		  
		  actualSites.append ""   //necessary because of that 0 element
		  
		  'a pattern could have any of the following legible DNA codes:
		  'R = G or A
		  'Y = C or T
		  'M = A or C
		  'K = G or T
		  'S = G or C
		  'W = A or T
		  'B = not A (C or G or T)
		  'D = not C (A or G or T)
		  'H = not G (A or C or T)
		  'V = not T (A or C or G)
		  'N = A or C or G or T
		  'X = A or C or G or T
		  'inosine is for the use in PCR
		  'I  = A or C or G or T
		  
		  
		  pat=pattern
		  for n=1 to lenB(pat)
		    char=midB(pat,n,1)
		    
		    'get all possible characters for the selected pattern position
		    select case char
		    case "A"
		      Chars2add(1)="A"
		      charNumber2add=1
		    case "C"
		      Chars2add(1)="C"
		      charNumber2add=1
		    case "G"
		      Chars2add(1)="G"
		      charNumber2add=1
		    case "T"
		      Chars2add(1)="T"
		      charNumber2add=1
		    case "R"
		      Chars2add(1)="G"
		      Chars2add(2)="A"
		      charNumber2add=2
		    case "Y"
		      Chars2add(1)="C"
		      Chars2add(2)="T"
		      charNumber2add=2
		    case "M"
		      Chars2add(1)="A"
		      Chars2add(2)="C"
		      charNumber2add=2
		    case "K"
		      Chars2add(1)="G"
		      Chars2add(2)="T"
		      charNumber2add=2
		    case "S"
		      Chars2add(1)="G"
		      Chars2add(2)="C"
		      charNumber2add=2
		    case "W"
		      Chars2add(1)="A"
		      Chars2add(2)="T"
		      charNumber2add=2
		    case "B"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      charNumber2add=3
		    case "D"
		      Chars2add(1)="A"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      charNumber2add=3
		    case "H"
		      Chars2add(1)="A"
		      Chars2add(2)="C"
		      Chars2add(3)="T"
		      charNumber2add=3
		    case "V"
		      Chars2add(1)="A"
		      Chars2add(2)="C"
		      Chars2add(3)="G"
		      charNumber2add=3
		    case "N"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      Chars2add(4)="A"
		      charNumber2add=4
		    case "X"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      Chars2add(4)="A"
		      charNumber2add=4
		    case "I"
		      Chars2add(1)="C"
		      Chars2add(2)="G"
		      Chars2add(3)="T"
		      Chars2add(4)="A"
		      charNumber2add=4
		    else
		      msgbox "An illegal character was found. Please check your sequence!"
		      simplepat="kuku"
		      return simplepat
		    end
		    
		    'extend the list of all possible sites
		    'first appending longer sites to the end of array
		    'then remove the shorter ones
		    ub=ubound(actualsites)
		    for m=1 to ub
		      for l=1 to charNumber2add
		        actualSites.Append actualSites(m)+Chars2add(l)
		      next
		    next
		    for m=ub downto 1
		      ActualSites.remove m
		    next
		  next
		  
		  'now convert the array into a string to be returned
		  simplepat=""
		  for n=1 to ubound(actualsites)-1
		    simplepat=simplepat+actualsites(n)+","
		    m=n
		  next
		  
		  simplepat=simplepat+actualsites(m+1) //adding the last one without a comma
		  
		  return simplepat   'comma separated list completely representing the pattern sequence
		  Exception err
		    ExceptionHandler(err,"SimplePattern")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Translate3(Gene As string, code as integer) As string
		  dim  m,n,GeneLength,aa0,up  as integer
		  dim protein,codon,codons,aa1st as string
		  dim gC as gCode
		  gc=gCodes(code)
		  
		  protein=""
		  GeneLength=lenB(Gene)
		  for n=1 to (GeneLength - 2) step 3
		    'the readable code:
		    'codon=midB(gene,n,3)
		    'CodonNo=((instr(CodonList,codon))-1)/4
		    'protein=protein+aa(codonNo)
		    'faster code:
		    codon=midB(Gene,n,3)
		    aa0=instr(gc.CodonList,codon)
		    
		    
		    if aa0>0 then
		      protein=protein+gc.aa3(((aa0)+3)/4)
		    else
		      'if instr doesn't find a codon in the list, it will return 0
		      'and  aa(0) is X - so it will work for all codons with redundancies-
		      'but also happily translate into Xes any crap
		      if haveRedundancies(codon)=true then
		        codons=SimplePattern(codon)
		        up=countfields(codons,",")
		        aa1st=gc.aa3((instr(gc.CodonList,nthfield(codons,",",1))+3)/4)
		        for m=2 to up
		          if aa1st<>gc.aa3((instr(gc.CodonList,nthfield(codons,",",m))+3)/4) then
		            aa1st="X"  'redundant codon translates to more than 1 amino acid
		            exit
		          end
		        next
		        protein=protein+aa1st
		        
		      else
		        'some crap is probably  being translated, nevertheless...
		        protein=protein+"X"
		      end
		      
		      
		      
		    end
		  next
		  return protein
		  'Exception err
		  'ExceptionHandler(err,"MethodsAndGlobals:Translate")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TranslateFrame(Sequence as string, frame as integer, code as integer) As string
		  dim p As String
		  dim gl, t as Integer
		  
		  
		  gl=lenb(Sequence) 'GeneLength
		  p=""
		  
		  if frame >3 then
		    'opposite strand -
		    'determine the number of spaces in front of the translation:
		    t=gl/3
		    t=gl-t*3
		    select case t
		    case 0
		      select case frame
		      case 4
		        p=""
		      case 5
		        p="  "
		      case 6
		        p=" "
		      end
		    case 1
		      select case frame
		      case 4
		        p=" "
		      case 5
		        p=""
		      case 6
		        p="  "
		      end
		    case 2
		      select case frame
		      case 4
		        p="  "
		      case 5
		        p=" "
		      case 6
		        p=""
		      end
		    end
		    
		  end
		  select case frame
		  case 1
		    p=Translate3(Sequence, code)
		  case 2
		    p=" "+Translate3(rightb(Sequence,gl-1), code)
		  case 3
		    p="  "+Translate3(rightb(Sequence,gl-2), code)
		  case 4
		    p=p+reverse(Translate3(ReverseComplement(Sequence), code))
		  case 5
		    p=p+reverse(Translate3(rightb(ReverseComplement(Sequence),gl-1), code))
		  case 6
		    p=p+reverse(Translate3(rightb(ReverseComplement(Sequence),gl-2), code))
		  end select
		  return p
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Weblogo(f as folderitem) As string
		  'Usage: weblogo [options]  < sequence_data.fa > sequence_logo.eps
		  '
		  'Create sequence logos from biological sequence alignments.
		  '
		  'Options:
		  '--version                  show program's version number and exit
		  '-h --help                     show this help message and exit
		  '
		  'Input/Output Options:
		  '-f --fin FILENAME           Sequence input file (default: stdin)
		  '-D --datatype FORMAT        Type of multiple sequence alignment or
		  'position weight matrix file: (clustal, fasta,
		  'plain, msf, genbank, nbrf, nexus, phylip,
		  'stockholm, intelligenetics, table, array,
		  'transfac)
		  '-o --fout FILENAME          Output file (default: stdout)
		  '-F --format FORMAT          Format of output: eps (default), png,
		  'png_print, pdf, jpeg, svg, logodata
		  '
		  'Logo Data Options:
		  '-A --sequence-type TYPE     The type of sequence data: 'protein', 'rna' or
		  ''dna'.
		  '-a --alphabet ALPHABET      The set of symbols to count, e.g. 'AGTC'. All
		  'characters not in the alphabet are ignored. If
		  'neither the alphabet nor sequence-type are
		  'specified then weblogo will examine the input
		  'data and make an educated guess. See also
		  '--sequence-type, --ignore-lower-case
		  '-U --units NUMBER           A unit of entropy ('bits' (default), 'nats',
		  ''digits'), or a unit of free energy ('kT',
		  ''kJ/mol', 'kcal/mol'), or 'probability' for
		  'probabilities
		  '--composition COMP.      The expected composition of the sequences:
		  ''auto' (default), 'equiprobable', 'none' (do
		  'not perform any compositional adjustment), a
		  'CG percentage, a species name (e.g. 'E. coli',
		  ''H. sapiens'), or an explicit distribution
		  '(e.g. "{'A':10, 'C':40, 'G':40, 'T':10}"). The
		  'automatic option uses a typical distribution
		  'for proteins and equiprobable distribution for
		  'everything else.
		  '--weight NUMBER          The weight of prior data.  Default depends on
		  'alphabet length
		  '-i --first-index INDEX      Index of first position in sequence data
		  '(default: 1)
		  '-l --lower INDEX            Lower bound of sequence to display
		  '-u --upper INDEX            Upper bound of sequence to display
		  '
		  'Transformations:
		  'Optional transformations of the sequence data.
		  '
		  '--ignore-lower-case      Disregard lower case letters and only count
		  'upper case letters in sequences.
		  '--reverse                reverse sequences
		  '--complement             complement DNA sequences
		  '
		  'Logo Format Options:
		  'These options control the format and display of the logo.
		  '
		  '-s --size LOGOSIZE          Specify a standard logo size (small, medium
		  '(default), large)
		  '-n --stacks-per-line COUNT  Maximum number of logo stacks per logo line.
		  '(default: 40)
		  '-t --title TEXT             Logo title text.
		  '--label TEXT             A figure label, e.g. '2a'
		  '-X --show-xaxis YES/NO      Display sequence numbers along x-axis?
		  '(default: True)
		  '-x --xlabel TEXT            X-axis label
		  '--annotate TEXT          A comma separated list of custom stack
		  'annotations, e.g. '1,3,4,5,6,7'.  Annotation
		  'list must be same length as sequences.
		  '-S --yaxis UNIT             Height of yaxis in units. (Default: Maximum
		  'value with uninformative prior.)
		  '-Y --show-yaxis YES/NO      Display entropy scale along y-axis? (default:
		  'True)
		  '-y --ylabel TEXT            Y-axis label (default depends on plot type and
		  'units)
		  '-E --show-ends YES/NO       Label the ends of the sequence? (default:
		  'False)
		  '-P --fineprint TEXT         The fine print (default: weblogo version)
		  '--ticmarks NUMBER        Distance between ticmarks (default: 1.0)
		  '--errorbars YES/NO       Display error bars? (default: True)
		  '--reverse-stacks YES/NO  Draw stacks with largest letters on top?
		  '(default: True)
		  '
		  'Color Options:
		  'Colors can be specified using CSS2 syntax. e.g. 'red', '#FF0000', etc.
		  '
		  '-c --color-scheme SCHEME    Specify a standard color scheme (auto, base
		  'pairing, charge, chemistry, classic,
		  'hydrophobicity, monochrome)
		  '-C --color COLOR SYMBOLS DESCRIPTION
		  'Specify symbol colors, e.g. --color black AG
		  ''Purine' --color red TC 'Pyrimidine'
		  '--default-color COLOR    Symbol color if not otherwise specified.
		  '
		  'Advanced Format Options:
		  'These options provide fine control over the display of the logo.
		  '
		  '-W --stack-width POINTS     Width of a logo stack (default: 10.8)
		  '--aspect-ratio POINTS    Ratio of stack height to width (default: 5)
		  '--box YES/NO             Draw boxes around symbols? (default: no)
		  '--resolution DPI         Bitmap resolution in dots per inch (DPI).
		  '(Default: 96 DPI, except png_print, 600 DPI)
		  'Low resolution bitmaps (DPI<300) are
		  'antialiased.
		  '--scale-width YES/NO     Scale the visible stack width by the fraction
		  'of symbols in the column?  (I.e. columns with
		  'many gaps of unknowns are narrow.)  (Default:
		  'yes)
		  '--debug YES/NO           Output additional diagnostic information.
		  '(Default: False)
		  
		  dim cli as string
		  Dim sh As Shell
		  
		  if f<>Nil then
		    'shell within xojo doesn't read .bash_profile - hence PATH isn't set properly
		    'and most programs don't work
		    'hence the full path below
		    'cli="/usr/local/bin/weblogo -c classic -F logodata -f "+f.ShellPath
		    cli=WebLogoPath+" -c classic -F logodata -f "+f.ShellPath
		  else
		    msgbox "Invalid input file for weblogo"
		  end if
		  
		  sh=New Shell
		  sh.mode=0
		  sh.TimeOut=-1
		  sh.execute cli
		  If sh.errorCode=0 then
		    return Sh.Result
		  else
		    LogoWin.WriteToSTDOUT (EndofLine+"Weblogo error Code: "+Str(sh.errorCode)+EndofLine)
		    LogoWin.WriteToSTDOUT (EndofLine+Sh.Result)
		    return ""
		  end if
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		cLineEnd As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CR As string
	#tag EndProperty

	#tag Property, Flags = &h0
		FixedFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		gCodes(30) As gCode
	#tag EndProperty

	#tag Property, Flags = &h0
		GenomeDelta As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		hmmBuildPath As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LF As string
	#tag EndProperty

	#tag Property, Flags = &h0
		LineEnd As string
	#tag EndProperty

	#tag Property, Flags = &h0
		nhmmerVersion As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFMinLength As Integer = 50
	#tag EndProperty

	#tag Property, Flags = &h0
		ORFStarts As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ProportionalFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Resources_f As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RevCompArr(256) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WebLogoPath As string
	#tag EndProperty


	#tag Constant, Name = kErr1, Type = String, Dynamic = True, Default = \"Error No ", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \"\xD0\x9E\xD1\x88\xD0\xB8\xD0\xB1\xD0\xBA\xD0\xB0 \xE2\x84\x96"
		#Tag Instance, Platform = Any, Language = be, Definition  = \"\xD0\x9F\xD0\xB0\xD0\xBC\xD1\x8B\xD0\xBB\xD0\xBA\xD0\xB0 \xE2\x84\x96"
	#tag EndConstant

	#tag Constant, Name = kErr2, Type = String, Dynamic = True, Default = \". Please try to save important files (under different names) and relaunch SigmoID.", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \". \xD0\xA1\xD0\xBE\xD1\x85\xD1\x80\xD0\xB0\xD0\xBD\xD0\xB8\xD1\x82\xD0\xB5 \xD0\xBA\xD0\xBE\xD0\xBF\xD0\xB8\xD0\xB8 \xD0\xBD\xD1\x83\xD0\xB6\xD0\xBD\xD1\x8B\xD1\x85 \xD1\x84\xD0\xB0\xD0\xB9\xD0\xBB\xD0\xBE\xD0\xB2 \xD0\xB8 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB7\xD0\xB0\xD0\xBF\xD1\x83\xD1\x81\xD1\x82\xD0\xB8\xD1\x82\xD0\xB5 SigmoID."
		#Tag Instance, Platform = Any, Language = be, Definition  = \". \xD0\x97\xD0\xB0\xD1\x85\xD0\xB0\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x86\xD0\xB5 \xD0\xBA\xD0\xBE\xD0\xBF\xD1\x96\xD1\x96 \xD0\xBF\xD0\xB0\xD1\x82\xD1\x80\xD1\x8D\xD0\xB1\xD0\xBD\xD1\x8B\xD1\x85 \xD1\x84\xD0\xB0\xD0\xB9\xD0\xBB\xD0\xB0\xD1\x9E \xD1\x96 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB0\xD0\xB7\xD0\xB0\xD0\xBF\xD1\x83\xD1\x81\xD1\x86\xD1\x96\xD1\x86\xD0\xB5 SigmoID."
	#tag EndConstant

	#tag Constant, Name = kIn, Type = String, Dynamic = True, Default = \" in ", Scope = Public
		#Tag Instance, Platform = Any, Language = ru, Definition  = \" \xD0\xB2 "
		#Tag Instance, Platform = Any, Language = be, Definition  = \" \xD1\x83 "
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="cLineEnd"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CR"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FixedFont"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GenomeDelta"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hmmBuildPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LF"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineEnd"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="nhmmerVersion"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ORFMinLength"
			Group="Behavior"
			InitialValue="50"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ORFStarts"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ProportionalFont"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WebLogoPath"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
