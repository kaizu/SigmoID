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
      PanelCount      =   5
      Panels          =   ""
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      Top             =   0
      Value           =   3
      Visible         =   True
      Width           =   556
      Begin GroupBox GroupBox3
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "#kNCBIserver"
         Enabled         =   True
         Height          =   167
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
         Begin TextField APIKeyField
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &cFFFFFF00
            Bold            =   False
            Border          =   True
            CueText         =   "API Key from your NCBI account allows more requests"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   183
            LimitText       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   ""
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   154
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   343
         End
         Begin Label Label13
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
            TabIndex        =   7
            TabPanelIndex   =   2
            Text            =   "API Key"
            TextAlign       =   0
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   156
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   141
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
         Top             =   199
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
            Top             =   226
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
            Top             =   226
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   223
         End
      End
      Begin Canvas HighlightCanvas
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   22
         HelpTag         =   "#kColorTag"
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   340
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Top             =   13
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   34
      End
      Begin Label Label14
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
         Left            =   159
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   4
         Text            =   "Selection highlight colour:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   13
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   176
      End
      Begin GroupBox GroupBox4
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Genome feature colours"
         Enabled         =   True
         Height          =   223
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
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   45
         Underline       =   False
         Visible         =   True
         Width           =   516
         Begin Canvas CDSCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   69
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label15
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   4
            Text            =   "CDS:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   69
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas sig_peptideCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   93
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label16
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   4
            Text            =   "sig_peptide:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   93
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas rRNACanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   117
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label17
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   4
            Text            =   "rRNA:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   117
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas tRNACanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   141
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label19
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   4
            Text            =   "ncRNA:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   165
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas ncRNACanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   165
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label20
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   4
            Text            =   "protein_bind:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   189
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas protein_bindCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   10
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   189
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label21
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   4
            Text            =   "gene:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   213
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas geneCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   213
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label23
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   13
            TabPanelIndex   =   4
            Text            =   "promoter:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   69
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas promoterCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   14
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   69
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label24
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   15
            TabPanelIndex   =   4
            Text            =   "terminator:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   93
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas terminatorCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   16
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   93
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label25
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   17
            TabPanelIndex   =   4
            Text            =   "attenuator:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   117
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas attenuatorCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   18
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   117
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label26
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   19
            TabPanelIndex   =   4
            Text            =   "riboswitch:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   141
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas riboswitchCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   20
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   141
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label22
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   21
            TabPanelIndex   =   4
            Text            =   "operon:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   237
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas operonCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   214
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   22
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   237
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label18
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   33
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   23
            TabPanelIndex   =   4
            Text            =   "tRNA:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   141
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Label Label27
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   24
            TabPanelIndex   =   4
            Text            =   "mobile_element:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   165
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas mobile_elementCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   25
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   165
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label28
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   26
            TabPanelIndex   =   4
            Text            =   "repeat_region:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   189
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas repeat_regionCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   27
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   189
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
         End
         Begin Label Label29
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   312
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   28
            TabPanelIndex   =   4
            Text            =   "all other features:"
            TextAlign       =   2
            TextColor       =   &c00000000
            TextFont        =   "System"
            TextSize        =   0.0
            TextUnit        =   0
            Top             =   213
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   176
         End
         Begin Canvas otherCanvas
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   22
            HelpTag         =   "#kColorTag"
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Left            =   493
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   0
            TabIndex        =   29
            TabPanelIndex   =   4
            TabStop         =   True
            Top             =   213
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   34
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
		  
		  //Determine and store CPU core number
		  CPUcores=CountCPUcores
		  
		  SetDefaultColours
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetDefaultColours()
		  // Default colours for genome features
		  
		  dim n as integer
		  for n=0 to 15
		    p(n) = NewPicture(34, 22,screen(0).depth)
		  next
		  
		  if p<>Nil then
		    p(0).Graphics.ForeColor=highlightColour
		    p(0).Graphics.FillRect(0,0,34, 22)
		    highlightCanvas.backdrop=p(0)
		    
		    
		    p(1).Graphics.ForeColor=CDScolour
		    p(1).Graphics.FillRect(0,0,34, 22)
		    CDScanvas.backdrop=p(1)
		    
		    p(2).Graphics.ForeColor=sig_peptideColour
		    p(2).Graphics.FillRect(0,0,34, 22)
		    sig_peptideCanvas.backdrop=p(2)
		    
		    p(3).Graphics.ForeColor=rRNAcolour
		    p(3).Graphics.FillRect(0,0,34, 22)
		    rRNAcanvas.backdrop=p(3)
		    
		    p(4).Graphics.ForeColor=tRNAcolour
		    p(4).Graphics.FillRect(0,0,34, 22)
		    tRNAcanvas.backdrop=p(4)
		    
		    p(5).Graphics.ForeColor=ncRNAcolour
		    p(5).Graphics.FillRect(0,0,34, 22)
		    ncRNAcanvas.backdrop=p(5)
		    
		    p(6).Graphics.ForeColor=protein_bindColour
		    p(6).Graphics.FillRect(0,0,34, 22)
		    protein_bindCanvas.backdrop=p(6)
		    
		    p(7).Graphics.ForeColor=geneColour
		    p(7).Graphics.FillRect(0,0,34, 22)
		    geneCanvas.backdrop=p(7)
		    
		    p(8).Graphics.ForeColor=operonColour
		    p(8).Graphics.FillRect(0,0,34, 22)
		    operonCanvas.backdrop=p(8)
		    
		    p(9).Graphics.ForeColor=promoterColour
		    p(9).Graphics.FillRect(0,0,34, 22)
		    promoterCanvas.backdrop=p(9)
		    
		    p(10).Graphics.ForeColor=terminatorColour
		    p(10).Graphics.FillRect(0,0,34, 22)
		    terminatorCanvas.backdrop=p(10)
		    
		    p(11).Graphics.ForeColor=attenuatorColour
		    p(11).Graphics.FillRect(0,0,34, 22)
		    attenuatorCanvas.backdrop=p(11)
		    
		    p(12).Graphics.ForeColor=riboswitchColour
		    p(12).Graphics.FillRect(0,0,34, 22)
		    riboswitchCanvas.backdrop=p(12)
		    
		    p(13).Graphics.ForeColor=mobile_elementColour
		    p(13).Graphics.FillRect(0,0,34, 22)
		    mobile_elementCanvas.backdrop=p(13)
		    
		    p(14).Graphics.ForeColor=repeat_regionColour
		    p(14).Graphics.FillRect(0,0,34, 22)
		    repeat_regionCanvas.backdrop=p(14)
		    
		    p(15).Graphics.ForeColor=otherColour
		    p(15).Graphics.FillRect(0,0,34, 22)
		    otherCanvas.backdrop=p(15)
		    
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		p(15) As Picture
	#tag EndProperty


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
		  Prefs.value("API_Key")=APIKeyField.text
		  
		  if LoadPlainResult then
		    Prefs.value("LoadPlainResult")="true"
		  else
		    Prefs.value("LoadPlainResult")="false"
		  end if
		  
		  
		  // Colors are stored as strings
		  dim c as string
		  
		  Prefs.value("HighlightColour")=str(HighlightCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("CDScolour")=str(CDSCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("sig_peptideColour")=str(sig_peptideCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("rRNAcolour")=str(rRNAcanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("tRNAcolour")=str(tRNAcanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("ncRNAcolour")=str(ncRNAcanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("protein_bindColour")=str(protein_bindCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("geneColour")=str(geneCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("operonColour")=str(operonCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("promoterColour")=str(promoterCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("terminatorColour")=str(terminatorCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("attenuatorColour")=str(attenuatorCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("riboswitchColour")=str(riboswitchCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("mobile_elementColour")=str(mobile_elementCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("repeat_regionColour")=str(repeat_regionCanvas.backdrop.RGBSurface.Pixel(1,1))
		  Prefs.value("otherColour")=str(otherCanvas.backdrop.RGBSurface.Pixel(1,1))
		  
		  
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
		    toolbutton(me.Item(3)).Pushed=false
		    toolbutton(me.Item(4)).Pushed=false
		  case "BLASTbutt"
		    PagePanel1.value=1
		    toolbutton(me.Item(0)).Pushed=false
		    toolbutton(me.Item(2)).Pushed=false
		    toolbutton(me.Item(3)).Pushed=false
		    toolbutton(me.Item(4)).Pushed=false
		  case "ProfileButt"
		    PagePanel1.value=2
		    toolbutton(me.Item(0)).Pushed=false
		    toolbutton(me.Item(1)).Pushed=false
		    toolbutton(me.Item(3)).Pushed=false
		    toolbutton(me.Item(4)).Pushed=false
		  case "ColorButt"
		    PagePanel1.value=3
		    toolbutton(me.Item(0)).Pushed=false
		    toolbutton(me.Item(1)).Pushed=false
		    toolbutton(me.Item(2)).Pushed=false
		    toolbutton(me.Item(4)).Pushed=false
		  case "FontsButt"
		    PagePanel1.value=4
		    toolbutton(me.Item(0)).Pushed=false
		    toolbutton(me.Item(1)).Pushed=false
		    toolbutton(me.Item(2)).Pushed=false
		    toolbutton(me.Item(3)).Pushed=false
		  end select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #if TargetCocoa then
		    ToolButton(me.Item(3)).Icon=SystemIcons.ColorPanel(32,32)
		    ToolButton(me.Item(4)).Icon=SystemIcons.FontPanel(32,32)
		  #endif
		  
		  
		  
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
#tag Events HighlightCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(0).Graphics.ForeColor=CurrentC
		    p(0).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(0)
		  end
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CDSCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(1).Graphics.ForeColor=CurrentC
		    p(1).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(1)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sig_peptideCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(2).Graphics.ForeColor=CurrentC
		    p(2).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(2)
		  end
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rRNACanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(3).Graphics.ForeColor=CurrentC
		    p(3).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(3)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tRNACanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(4).Graphics.ForeColor=CurrentC
		    p(4).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(4)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ncRNACanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(5).Graphics.ForeColor=CurrentC
		    p(5).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(1)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events protein_bindCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(6).Graphics.ForeColor=CurrentC
		    p(6).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(6)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events geneCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(7).Graphics.ForeColor=CurrentC
		    p(7).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(7)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events promoterCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(9).Graphics.ForeColor=CurrentC
		    p(9).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(9)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events terminatorCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(10).Graphics.ForeColor=CurrentC
		    p(10).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(10)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events attenuatorCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(11).Graphics.ForeColor=CurrentC
		    p(11).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(11)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events riboswitchCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(12).Graphics.ForeColor=CurrentC
		    p(12).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(12)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events operonCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(8).Graphics.ForeColor=CurrentC
		    p(8).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(8)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mobile_elementCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(13).Graphics.ForeColor=CurrentC
		    p(13).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(13)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events repeat_regionCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(14).Graphics.ForeColor=CurrentC
		    p(14).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(14)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events otherCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim CurrentC as Color
		  
		  CurrentC=me.backdrop.RGBSurface.Pixel(1,1)
		  if SelectColor(CurrentC,"Change feature color") then
		    
		    'update the colour shown:
		    p(15).Graphics.ForeColor=CurrentC
		    p(15).Graphics.FillRect(0,0,me.width, me.Height)
		    me.backdrop=p(15)
		  end
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
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
