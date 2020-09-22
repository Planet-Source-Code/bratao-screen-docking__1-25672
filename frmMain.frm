VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   1230
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   1230
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1230
   ScaleWidth      =   1230
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdUnDock 
      Caption         =   "UnDock"
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton cmdDockRight 
      Caption         =   "Dock Right"
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton cmdDockLeft 
      Caption         =   "Dock Left"
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton cmdDockBottom 
      Caption         =   "Dock Bottom"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   240
      Width           =   1215
   End
   Begin VB.CommandButton cmdDockTop 
      Caption         =   "Dock Top"
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim lHeight As Long 'Initial form height
Dim lWidth As Long 'Initial form width
Dim AppBar As APPBARDATA 'Represents your docked form

Private Sub cmdDockBottom_Click()
    UnDock AppBar 'Undock if it was before
    ResetSize
    Dock dsBottom, Me, AppBar
End Sub

Private Sub cmdDockLeft_Click()
    UnDock AppBar 'Undock if it was before
    ResetSize
    Dock dsLeft, Me, AppBar
End Sub

Private Sub cmdDockRight_Click()
    UnDock AppBar 'Undock if it was before
    ResetSize
    Dock dsRight, Me, AppBar
End Sub

Private Sub cmdDockTop_Click()
    UnDock AppBar 'Undock if it was before
    ResetSize
    Dock dsTop, Me, AppBar
End Sub

Private Sub cmdUnDock_Click()
    UnDock AppBar 'Undock if it was before
    ResetSize
End Sub

Private Sub Form_Load()
    lHeight = Me.Height
    lWidth = Me.Width
End Sub

Public Sub ResetSize()
    ''''''''''''''''''''''''''''''''''
    ' This is just to bring the form '
    ' back to the size it was before '
    ' and center it on the screen.   '
    ''''''''''''''''''''''''''''''''''
    
    Me.Height = lHeight
    Me.Width = lWidth
    Me.Left = (Screen.Width - lWidth) / 2
    Me.Top = (Screen.Height - lHeight) / 2
End Sub

Private Sub Form_Unload(Cancel As Integer)
    UnDock AppBar
End Sub
