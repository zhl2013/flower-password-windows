VERSION 5.00
Begin VB.Form FrmMain 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   0  'None
   Caption         =   "Flower Password"
   ClientHeight    =   2520
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4065
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "FrmMain.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "FrmMain.frx":43B2
   ScaleHeight     =   2520
   ScaleWidth      =   4065
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.CheckBox chkAddUserCode 
      BackColor       =   &H00EEEEEE&
      Height          =   200
      Left            =   140
      TabIndex        =   2
      ToolTipText     =   "��ݿ���(���ı������ļ�)"
      Top             =   1900
      Value           =   1  'Checked
      Width           =   180
   End
   Begin VB.PictureBox picKey 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   300
      Left            =   240
      MousePointer    =   3  'I-Beam
      ScaleHeight     =   300
      ScaleWidth      =   1725
      TabIndex        =   6
      TabStop         =   0   'False
      ToolTipText     =   "��������ͬ��;����ļ�̴���, ��:�Ա��˺ſ��� taobao �� tb ��"
      Top             =   1463
      Width           =   1725
   End
   Begin VB.Timer tmrZip 
      Interval        =   1000
      Left            =   3000
      Top             =   0
   End
   Begin VB.PictureBox picPassword 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   300
      Left            =   240
      MousePointer    =   3  'I-Beam
      ScaleHeight     =   300
      ScaleWidth      =   1725
      TabIndex        =   4
      TabStop         =   0   'False
      ToolTipText     =   "��ѡ��һ�����׼ǵ�����, ��������������ǿ������"
      Top             =   920
      Width           =   1725
   End
   Begin VB.ComboBox comKey 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   140
      TabIndex        =   1
      ToolTipText     =   "��������ͬ��;����ļ�̴���, ��:�Ա��˺ſ��� taobao �� tb ��"
      Top             =   1420
      Width           =   3760
   End
   Begin VB.TextBox txtPassword 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      IMEMode         =   3  'DISABLE
      Left            =   140
      PasswordChar    =   "*"
      TabIndex        =   0
      ToolTipText     =   "��ѡ��һ�����׼ǵ�����, ��������������ǿ������"
      Top             =   877
      Width           =   3760
   End
   Begin VB.Label lblCopy 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "���Ƴɹ�!"
      ForeColor       =   &H00CE9A02&
      Height          =   195
      Left            =   2040
      TabIndex        =   8
      Top             =   2130
      Visible         =   0   'False
      Width           =   780
   End
   Begin VB.Label lblUserCode 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��������"
      ForeColor       =   &H00808080&
      Height          =   195
      Left            =   360
      TabIndex        =   3
      ToolTipText     =   "��ݿ���(���ı������ļ�)"
      Top             =   1890
      Width           =   720
   End
   Begin VB.Label lblStrength 
      Alignment       =   2  'Center
      BackColor       =   &H00EBEBEB&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   173
      Left            =   135
      TabIndex        =   7
      ToolTipText     =   "����ǿ����ʾ"
      Top             =   1257
      Width           =   3765
   End
   Begin VB.Image iClose 
      Height          =   195
      Left            =   4080
      Picture         =   "FrmMain.frx":64E1
      Top             =   120
      Width           =   195
   End
   Begin VB.Image iSetting 
      Height          =   315
      Left            =   3600
      Picture         =   "FrmMain.frx":6567
      Top             =   2640
      Width           =   315
   End
   Begin VB.Image iInfo 
      Height          =   315
      Left            =   3240
      Picture         =   "FrmMain.frx":667E
      Top             =   2640
      Width           =   330
   End
   Begin VB.Image iHome 
      Height          =   315
      Left            =   2880
      Picture         =   "FrmMain.frx":6744
      Top             =   2640
      Width           =   315
   End
   Begin VB.Label lblCode16 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   210
      Left            =   140
      MouseIcon       =   "FrmMain.frx":680B
      MousePointer    =   99  'Custom
      TabIndex        =   5
      ToolTipText     =   "����������ɵ�ʮ��λ��"
      Top             =   2130
      Width           =   60
   End
   Begin VB.Image imgInfo 
      Height          =   315
      Left            =   3210
      MouseIcon       =   "FrmMain.frx":695D
      MousePointer    =   99  'Custom
      Picture         =   "FrmMain.frx":6AB3
      ToolTipText     =   "����"
      Top             =   2070
      Width           =   330
   End
   Begin VB.Image imgHome 
      Height          =   315
      Left            =   2842
      MouseIcon       =   "FrmMain.frx":6C64
      MousePointer    =   99  'Custom
      Picture         =   "FrmMain.frx":6DBA
      ToolTipText     =   "����"
      Top             =   2070
      Width           =   315
   End
   Begin VB.Image imgSetting 
      Height          =   315
      Left            =   3610
      MouseIcon       =   "FrmMain.frx":7036
      MousePointer    =   99  'Custom
      Picture         =   "FrmMain.frx":718C
      ToolTipText     =   "����"
      Top             =   2070
      Width           =   315
   End
   Begin VB.Image imgClose 
      Height          =   195
      Left            =   3720
      MouseIcon       =   "FrmMain.frx":7443
      MousePointer    =   99  'Custom
      Picture         =   "FrmMain.frx":7599
      ToolTipText     =   "�ر�"
      Top             =   120
      Width           =   195
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*****************************************************************
' Copyright (c) 2011-2012 FlowerPassword.com All rights reserved.
'      Author : xLsDg @ Xiao Lu Software Development Group
'        Blog : http://hi.baidu.com/xlsdg
'          QQ : 4 4 7 4 0 5 7 4 0
'     Version : 1 . 1 . 0 . 0
'        Date : 2 0 1 2 / 0 4 / 1 2
' Description :
'     History :
'*****************************************************************
Option Explicit

Public Sub FrmHide(ByVal isPostKey As Boolean, ByVal isKeyPress As Boolean)

    If isAlwaysOnTop Then UnSetWinOnTop Me.hwnd
    If isUseMouseHook Then Call UnSetMouseHook
    'Me.Visible = False
    Me.Hide

    If isPostKey Then
        If Len(lblCode16.Caption) > 0 Then
            PoseCodeToClipboard lblCode16.Caption

            If isKeyPress Then
                PostCode lblCode16.Caption, Password_Hwnd
            Else
                PostCode lblCode16.Caption, 0

            End If

            AddStrToCombox comKey, GetKeyFromStr(comKey.Text)

        End If

    Else

        If Len(lblCode16.Caption) > 0 Then
            PoseCodeToClipboard lblCode16.Caption

        End If

    End If

    txtPassword.Text = ""

End Sub

Public Sub FrmShow()

    If isUseMouseHook Then
        If SetMouseHook = 0 Then
            MsgBox "��������ȫ����갴���ҹ�ʧ��!", vbCritical + vbOKOnly + vbSystemModal

        End If

    End If

    If isAlwaysOnTop Then
        If SetWinOnTop(Me.hwnd) = 0 Then
            MsgBox "�������������ʼ�ձ�������������ǰ��ʧ��!", vbCritical + vbOKOnly + vbSystemModal

        End If

    End If

    'Me.Visible = True
    Me.Show

    If txtPassword.Enabled Then txtPassword.SetFocus

End Sub

Public Sub MidScreenShow()
    Me.Move (Screen.Width - Me.Width) / 2, (Screen.Height - Me.Height) / 2
    Call FrmShow

End Sub

Public Sub ShowFrmByHotKey()

    If FrmSetting.Visible Then
        MsgBox "���ȹر�ϵͳ���ô���, �ٳ��԰���ݼ���ʾ����!", vbCritical + vbOKOnly + vbSystemModal
    Else

        If Not Me.Visible Then

            Dim X As Long, Y As Long

            getLocation X, Y

            If isAutoUseDomain Then
                SetUrlAsKey Password_Hwnd

            End If

            Me.Move X * Screen.TwipsPerPixelX, Y * Screen.TwipsPerPixelY
            Call FrmShow

        End If

    End If

End Sub

Public Sub ShowResult()
    KeyBox_AutoComplete comKey

    If Len(txtPassword.Text) > 0 And Len(comKey.Text) > 0 Then
        lblCode16.Caption = getFlowerPassword(txtPassword.Text, comKey.Text, 16)
    Else
        lblCode16.Caption = ""

    End If

End Sub

Private Sub ShowPasswordStrength()

    If Len(txtPassword.Text) = 0 Then
        lblStrength.Caption = ""
        lblStrength.BackColor = &HEBEBEB
    Else

        Dim strHelp As String

        Select Case check_password_level(txtPassword.Text, strHelp)

            Case PASSWORD_WEAK
                lblStrength.Caption = "��"
                lblStrength.BackColor = &H4545FF

            Case PASSWORD_NORMAL
                lblStrength.Caption = "һ��"
                lblStrength.BackColor = &H5ED3FF

            Case PASSWORD_STRONG
                lblStrength.Caption = "ǿ"
                lblStrength.BackColor = &H1CBB3A '&HCE9A02

        End Select

        lblStrength.ToolTipText = strHelp

    End If

End Sub

Private Sub chkAddUserCode_Click()

    If chkAddUserCode.value = Checked Then
        isAutoAddUserCode = True
        FrmSetting.chkAutoAddUserCode.value = Checked
        'chkAddUserCode.ForeColor = vbGreen
        'chkAddUserCode.Caption = "��"
    Else
        isAutoAddUserCode = False
        FrmSetting.chkAutoAddUserCode.value = Unchecked

        'chkAddUserCode.ForeColor = vbRed
        'chkAddUserCode.Caption = "��"
    End If

    Call ShowResult

End Sub

Private Sub comKey_Change()

    If Len(comKey.Text) > 0 Then
        picKey.Visible = False
    Else
        picKey.Visible = True

    End If

    Call ShowResult

End Sub

Private Sub comKey_Click()

    If Len(comKey.Text) > 0 Then
        picKey.Visible = False
    Else
        picKey.Visible = True

    End If

    Call ShowResult

End Sub

Private Sub comKey_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyBox_KeyDown comKey, KeyCode, Shift

    If KeyCode = vbKeyEscape Then
        FrmHide False, False
    ElseIf KeyCode = vbKeyReturn Then
        FrmHide True, True
    ElseIf Len(comKey.Text) > 0 Then
        picKey.Visible = False

    End If

End Sub

Private Sub comKey_LostFocus()

    If Len(comKey.Text) > 0 Then
        picKey.Visible = False
    Else
        picKey.Visible = True

    End If

End Sub

Private Sub Form_Initialize()
    Me.ScaleMode = 1

    If Not isRunInIDEMode Then
        If App.PrevInstance Then
            MsgBox "�����Ѿ�����, �볢�Խ�����̨���������´�!", vbCritical + vbOKOnly + vbSystemModal
            End
        Else
            App.TaskVisible = False
            Call InitCommonControlsVB

            If ProtectTextBox(txtPassword.hwnd) = 0 Then
                MsgBox "�������ü�����������򱣻���ʩʧ��!", vbCritical + vbOKOnly + vbSystemModal

            End If

        End If

    End If

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

    If KeyCode = vbKeyEscape Or KeyCode = vbKeyReturn Then
        FrmHide False, False

    End If

End Sub

Private Sub Form_Load()
    picPassword.Print "�������������"
    picKey.Print "���������ִ���"
    iClose.Left = imgClose.Left: iClose.Top = imgClose.Top
    iHome.Left = imgHome.Left: iHome.Top = imgHome.Top
    iInfo.Left = imgInfo.Left: iInfo.Top = imgInfo.Top
    iSetting.Left = imgSetting.Left: iSetting.Top = imgSetting.Top

    If SetHotKey(Me.hwnd) = 0 Then
        MsgBox "����ע��ϵͳȫ�ֿ�ݼ� (WIN + S) ʧ��!", vbCritical + vbOKOnly + vbSystemModal

    End If

    If AddToTray(FrmMain, App.Title) = 0 Then
        MsgBox "���ܽ�ͼ��������������֪ͨ����ʧ��!", vbCritical + vbOKOnly + vbSystemModal
        End
    Else
        SetTrayMsgbox "����ݼ���WIN + S����ʾ����, ������尴 Enter ���� Esc �����ػ���.", NIIF_GUID, "��ӭʹ�û��� Windows �����", Me.Icon

    End If

    Call SetFormRgn
    Call LoadSetting

    If isRunInIDEMode Then
        tmrZip.Enabled = False
    Else
        Call ZipMemory

    End If

    If Not isAutoMini Then
        Call MidScreenShow

    End If
        
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    SetWinMove Me.hwnd

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    iClose.Visible = True: iHome.Visible = True: iInfo.Visible = True: iSetting.Visible = True: lblCopy.Visible = False

    If Not Me.Visible Then
        MouseOnTray Button, Shift, X, Y

    End If

End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    If txtPassword.Enabled Then txtPassword.SetFocus

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Call UnSetFormRgn
    UnSetHotKey Me.hwnd

End Sub

Private Sub Form_Terminate()
    Call RemoveFromTray

End Sub

Private Sub Form_Unload(Cancel As Integer)

    If Not isRunInIDEMode Then UnProtectTextBox txtPassword.hwnd

End Sub

Private Sub iClose_MouseMove(Button As Integer, _
                             Shift As Integer, _
                             X As Single, _
                             Y As Single)
    iClose.Visible = False

End Sub

Private Sub iHome_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    iHome.Visible = False

End Sub

Private Sub iInfo_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    iInfo.Visible = False

End Sub

Private Sub imgClose_Click()
    iClose.Visible = True
    FrmHide False, False

    If Not isCloseToHide Then
        Unload FrmSetting
        Unload Me

    End If

End Sub

Private Sub imgHome_Click()
    iHome.Visible = True
    OpenWebsite "http://flowerpassword.com"

End Sub

Private Sub imgInfo_Click()
    iInfo.Visible = True
    OpenWebsite "http://code.google.com/p/flower-password-windows"

End Sub

Private Sub imgSetting_Click()
    iSetting.Visible = True
    FrmHide False, False
    FrmSetting.Show

End Sub

Private Sub iSetting_MouseMove(Button As Integer, _
                               Shift As Integer, _
                               X As Single, _
                               Y As Single)
    iSetting.Visible = False

End Sub

Private Sub lblCode16_Click()

    If Len(lblCode16.Caption) > 0 Then
        Clipboard.Clear
        Clipboard.SetText lblCode16.Caption
        lblCopy.Left = lblCode16.Left + lblCode16.Width + 40
        lblCopy.Visible = True

    End If

End Sub

Private Sub lblUserCode_Click()

    If chkAddUserCode.value = Checked Then
        chkAddUserCode.value = Unchecked
    Else
        chkAddUserCode.value = Checked

    End If

End Sub

Private Sub picKey_Click()

    'picKey.Visible = False
    If comKey.Enabled Then comKey.SetFocus

End Sub

Private Sub picPassword_Click()

    'picPassword.Visible = False
    If txtPassword.Enabled Then txtPassword.SetFocus

End Sub

Private Sub tmrZip_Timer()

    Static i As Integer

    i = i + 1

    If i > 60 Then
        i = 0
        Call ZipMemory

    End If

End Sub

Private Sub txtPassword_Change()

    If Len(txtPassword.Text) > 0 Then
        picPassword.Visible = False
    Else
        picPassword.Visible = True

    End If

    Call ShowPasswordStrength
    Call ShowResult

End Sub

Private Sub txtPassword_GotFocus()

    If Len(txtPassword.Text) > 0 Then
        txtPassword.SelStart = 0
        txtPassword.SelLength = Len(txtPassword.Text)

        'Else
        'picPassword.Visible = False
    End If

End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer)

    If KeyCode = vbKeyEscape Then
        FrmHide False, False
    ElseIf KeyCode = vbKeyReturn Then

        If Len(comKey.Text) > 0 Then
            FrmHide True, True
        Else

            If comKey.Enabled Then comKey.SetFocus

        End If

    ElseIf Len(txtPassword.Text) > 0 Then
        picPassword.Visible = False

    End If

End Sub

Private Sub txtPassword_LostFocus()

    If Len(txtPassword.Text) > 0 Then
        picPassword.Visible = False
    Else
        picPassword.Visible = True

    End If

End Sub