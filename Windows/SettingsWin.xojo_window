#tag Window
Begin Window SettingsWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   9
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   320
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   420
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   320
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   0
   Resizeable      =   True
   Title           =   "#kSigmoIDPreferences"
   Visible         =   False
   Width           =   556
   Begin PushButton OKButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kOK"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   446
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   280
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PushButton CancelButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "#kCancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   344
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   280
      Underline       =   False
      Visible         =   True
      Width           =   90
   End
   Begin PrefsToolbar PrefsToolbar1
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Visible         =   True
   End
   Begin PagePanel PagePanel1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   268
      HelpTag         =   "All searches will be restricted to sequences from this organism"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   3
      Panels          =   ""
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   556
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kNCBIserver"
         Enabled         =   True
         Height          =   141
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   20
         Underline       =   False
         Visible         =   True
         Width           =   516
         Begin PopupMenu ProteinPopup
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Will be used for all blastp and blastx searches"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            InitialValue    =   "UniProtKB/SwissProt (swissprot)\nReference proteins (refseq_protein)\nNon-redundant protein sequences (nr)"
            Italic          =   False
            Left            =   183
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   56
            Underline       =   False
            Visible         =   True
            Width           =   343
         End
         Begin PopupMenu NucleotidePopup
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Will be used for all blastn searches"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            InitialValue    =   "Reference genomic sequences (refseq_genomic)\nNucleotide collection (nr)"
            Italic          =   False
            Left            =   183
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   88
            Underline       =   False
            Visible         =   True
            Width           =   343
         End
         Begin TextField OrganismField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "Enter organism name or NCBI ID"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   "Taxonomy restriction applied to BLAST (but not HMMER!) searches"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   183
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   120
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   343
         End
         Begin Label Label12
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   2
            Text            =   "Organism (optional)"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   122
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   149
         End
         Begin Label Label1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   2
            Text            =   "Protein database"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   58
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   149
         End
         Begin Label Label2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "Will be used for all blastn searches"
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   2
            Text            =   "Nucleotide database"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   90
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   149
         End
      End
      Begin GroupBox GroupBox1
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kPaths"
         Enabled         =   True
         Height          =   247
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   6
         Underline       =   False
         Visible         =   True
         Width           =   516
         Begin TextField nhmmerPathField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   114
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "/usr/local/bin/nhmmer"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   40
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   409
         End
         Begin Label Label4
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            Text            =   "nhmmer:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   42
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   72
         End
         Begin Label Label5
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   1
            Text            =   "alimask:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   76
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   72
         End
         Begin TextField alimaskPathField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   114
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "/usr/local/bin/alimask"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   75
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   409
         End
         Begin Label Label8
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   1
            Text            =   "hmmbuild:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   110
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin TextField hmmBuildPathField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   114
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "/usr/local/bin/hmmbuild"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   108
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   409
         End
         Begin Label Label9
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   1
            Text            =   "MEME:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   144
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin TextField MEMEPathField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   114
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "~/meme/bin/meme"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   142
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   409
         End
         Begin Label Label10
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   15
            TabPanelIndex   =   1
            Text            =   "MAST:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   178
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin TextField MASTPathField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   114
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   16
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "~/meme/bin/mast"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   176
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   409
         End
         Begin Label Label11
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   17
            TabPanelIndex   =   1
            Text            =   "tfastx:"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   212
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   80
         End
         Begin TextField tfastxPathField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "value"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   114
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   18
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "/usr/local/bin/tfastx"
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   210
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   409
         End
      End
      Begin Label ProfileFolderLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   3
         Text            =   "Profile Folder:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   516
      End
      Begin PushButton ProfileFolderSelectButt
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   "0"
         Cancel          =   False
         Caption         =   "#kSelectAnotherFolder"
         Default         =   False
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   84
         Underline       =   False
         Visible         =   True
         Width           =   172
      End
      Begin Label ProfileFolderLabel1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   3
         Text            =   "#kProfileFolderPath"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   516
      End
      Begin GroupBox GroupBox2
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kHMMERserverFormat"
         Enabled         =   True
         Height          =   60
         HelpTag         =   "Set this to simple on Windows!"
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   173
         Underline       =   False
         Visible         =   True
         Width           =   516
         Begin RadioButton StandardFormatRadioButton
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "#kStandardHtml"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   40
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   200
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   197
         End
         Begin RadioButton PlainFormatRadioButton
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "#kPlainText"
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   293
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   200
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   223
         End
      End
   End
   Begin PushButton DefaultPathsButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "#kRestoreDefaultPaths"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   280
      Underline       =   False
      Visible         =   True
      Width           =   161
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if not appQuitting then
		    'hide instead of closing to preserve the settings
		    self.hide
		    return true
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  dim n as integer
		  
		  AdjustLayout4linux(me)
		  PathsChanged=true
		  ReadPrefs
		  'alimaskPathField.text=Prefs.value("alimaskpath","/usr/local/bin/alimask")
		  'nhmmerPathField.text=Prefs.value("nhmmerpath","/usr/local/bin/nhmmer")
		  'hmmbuildPathField.text=Prefs.value("hmmbuildpath","/usr/local/bin/hmmbuild")
		  'MEMEPathField.text=Prefs.value("MEMEpath","~/meme/bin/meme")
		  'MASTPathField.text=Prefs.value("MASTpath","~/meme/bin/mast")
		  ''weblogoPathField.text=Prefs.value("weblogopath","/usr/local/bin/weblogo")
		  'tfastxPathField.text=Prefs.value("tfastxPath","/usr/local/bin/tfastx")
		  
		  alimaskPathField.text=alimaskpath
		  nhmmerPathField.text=nhmmerpath
		  hmmbuildPathField.text=hmmbuildpath
		  MEMEPathField.text=MEMEpath
		  MASTPathField.text=MASTpath
		  'weblogoPathField.text=Prefs.value("weblogopath","/usr/local/bin/weblogo")
		  tfastxPathField.text=tfastxPath
		  
		  'set the BLAST database values
		  for n=0 to NucleotidePopup.ListCount
		    if instr(NucleotidePopup.List(n),BLASTnDB)>0 then
		      NucleotidePopup.ListIndex=n
		      exit
		    end if
		  next
		  
		  for n=0 to ProteinPopup.ListCount
		    if instr(ProteinPopup.List(n),BLASTpDB)>0 then
		      ProteinPopup.ListIndex=n
		      exit
		    end if
		  next
		  
		  OrganismField.Text=BLASTorganism
		  
		  
		  if LoadPlainResult then
		    PlainFormatRadioButton.value=true
		  else
		    StandardFormatRadioButton.value=true
		  end if
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events OKButton
	#tag Event
		Sub Action()
		  Prefs.value("alimaskpath")=alimaskPathField.text
		  Prefs.value("nhmmerpath")=nhmmerPathField.text
		  Prefs.value("hmmbuildpath")=hmmbuildPathField.text
		  Prefs.value("MEMEpath")=MEMEPathField.text
		  Prefs.value("MASTpath")=MASTPathField.text
		  'Prefs.value("weblogopath")=weblogoPathField.text
		  Prefs.value("tfastxPath")=tfastxPathField.text
		  Prefs.value("ProfileFpath")=ProfileFpath
		  Prefs.value("BLASTnDB")=nthfield(nthfield(NucleotidePopup.Text,"(",2),")",1)
		  Prefs.value("BLASTpDB")=nthfield(nthfield(ProteinPopup.Text,"(",2),")",1)
		  Prefs.value("BLASTorganism")=OrganismField.text
		  
		  if LoadPlainResult then
		    Prefs.value("LoadPlainResult")="true"
		  else
		    Prefs.value("LoadPlainResult")="false"
		  end if
		  
		  Prefs.Sync
		  
		  ReadPrefs
		  self.hide
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  LogoWin.nhmmeroptions=""
		  
		  self.hide
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PrefsToolbar1
	#tag Event
		Sub Action(item As ToolItem)
		  select case item.Name
		  case "PathsButt"
		    PagePanel1.value=0
		    toolbutton(me.Item(1)).Pushed=false
		    toolbutton(me.Item(2)).Pushed=false
		  case "BLASTbutt"
		    PagePanel1.value=1
		    toolbutton(me.Item(0)).Pushed=false
		    toolbutton(me.Item(2)).Pushed=false
		  case "ProfileButt"
		    PagePanel1.value=2
		    toolbutton(me.Item(1)).Pushed=false
		    toolbutton(me.Item(0)).Pushed=false
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PagePanel1
	#tag Event
		Sub Change()
		  if me.Value=0 then
		    DefaultPathsButton.visible=true
		  else
		    DefaultPathsButton.visible=false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events nhmmerPathField
	#tag Event
		Sub TextChange()
		  PathsChanged=true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events alimaskPathField
	#tag Event
		Sub TextChange()
		  PathsChanged=true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events hmmBuildPathField
	#tag Event
		Sub TextChange()
		  PathsChanged=true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MEMEPathField
	#tag Event
		Sub TextChange()
		  PathsChanged=true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MASTPathField
	#tag Event
		Sub TextChange()
		  PathsChanged=true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tfastxPathField
	#tag Event
		Sub TextChange()
		  PathsChanged=true
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProfileFolderSelectButt
	#tag Event
		Sub Action()
		  Dim dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Select"
		  dlg.Title = "Select Profile Folder"
		  dlg.PromptText = "Select another Folder with Calibrated Profiles (.sig files)"
		  dlg.InitialDirectory = Profile_f.parent
		  
		  Dim f As FolderItem
		  f = dlg.ShowModal
		  If f <> Nil Then
		    'a check for .sig files actually being present in this folder could be nice
		    Profile_f=f
		    ProfileFolderLabel.text=Profile_f.NativePath
		    ProfileFpath=Profile_f.ShellPath
		  Else
		    // User cancelled
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StandardFormatRadioButton
	#tag Event
		Sub Action()
		  if me.Value then
		    LoadPlainResult=false
		  else
		    LoadPlainResult=true
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PlainFormatRadioButton
	#tag Event
		Sub Action()
		  if me.Value then
		    LoadPlainResult=true
		  else
		    LoadPlainResult=false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DefaultPathsButton
	#tag Event
		Sub Action()
		  PathsChanged=false
		  ReadPrefs
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
		Visible=true
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
		Visible=true
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
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
