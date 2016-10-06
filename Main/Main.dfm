object MainForm: TMainForm
  Left = 457
  Top = 257
  Caption = 'Assessment Program'
  ClientHeight = 482
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 705
    Height = 481
    ActivePage = Main
    TabOrder = 0
    object Logon: TTabSheet
      Caption = 'Logon'
      object lbTeachName: TLabel
        Left = 69
        Top = 32
        Width = 73
        Height = 13
        Caption = 'Teacher Name:'
      end
      object lbPass: TLabel
        Left = 92
        Top = 59
        Width = 50
        Height = 13
        Caption = 'Password:'
      end
      object cbTeachName: TComboBox
        Left = 160
        Top = 29
        Width = 201
        Height = 21
        TabOrder = 0
      end
      object edPass: TEdit
        Left = 160
        Top = 56
        Width = 201
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object btnLogin: TButton
        Left = 160
        Top = 91
        Width = 75
        Height = 25
        Caption = 'Login'
        Default = True
        TabOrder = 2
        OnClick = btnLoginClick
      end
      object btnCancel: TButton
        Left = 286
        Top = 91
        Width = 75
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        TabOrder = 3
        OnClick = btnCancelClick
      end
    end
    object Main: TTabSheet
      Caption = 'Main'
      ImageIndex = 1
      object lbStudName: TLabel
        Left = 171
        Top = 29
        Width = 72
        Height = 13
        Caption = 'Student Name:'
      end
      object lbAssessName: TLabel
        Left = 152
        Top = 60
        Width = 91
        Height = 13
        Caption = 'Assessment Name:'
      end
      object btnNewStudent: TButton
        Left = 40
        Top = 24
        Width = 91
        Height = 25
        Caption = 'New Student...'
        TabOrder = 0
        OnClick = btnNewStudentClick
      end
      object btnNewAssess: TButton
        Left = 24
        Top = 55
        Width = 107
        Height = 25
        Caption = 'New Assessment...'
        TabOrder = 1
        OnClick = btnNewAssessClick
      end
      object cbStudName: TComboBox
        Left = 249
        Top = 26
        Width = 145
        Height = 21
        TabOrder = 2
      end
      object cbAssessName: TComboBox
        Left = 249
        Top = 53
        Width = 145
        Height = 21
        TabOrder = 3
      end
      object btnViewStudent: TButton
        Left = 424
        Top = 24
        Width = 51
        Height = 25
        Caption = 'View...'
        TabOrder = 4
        OnClick = btnViewStudentClick
      end
      object btnViewAssess: TButton
        Left = 422
        Top = 55
        Width = 53
        Height = 25
        Caption = 'View...'
        TabOrder = 5
        OnClick = btnViewAssessClick
      end
      object btnEditStudent: TButton
        Left = 481
        Top = 24
        Width = 89
        Height = 25
        Caption = 'Edit Student...'
        TabOrder = 6
        OnClick = btnEditStudentClick
      end
      object btnEditAssess: TButton
        Left = 481
        Top = 55
        Width = 104
        Height = 25
        Caption = 'Edit Assessment...'
        TabOrder = 7
        OnClick = btnEditAssessClick
      end
      object btnRemoveStudent: TButton
        Left = 591
        Top = 24
        Width = 65
        Height = 25
        Caption = 'Remove...'
        TabOrder = 8
        OnClick = btnRemoveStudentClick
      end
      object btnRemoveAssess: TButton
        Left = 591
        Top = 55
        Width = 66
        Height = 25
        Caption = 'Remove...'
        TabOrder = 9
        OnClick = btnRemoveAssessClick
      end
    end
    object ViewStudent: TTabSheet
      Caption = 'ViewStudent'
      ImageIndex = 2
      object lbTut: TLabel
        Left = 24
        Top = 32
        Width = 30
        Height = 13
        Caption = 'Tutor:'
      end
      object lbGCS: TLabel
        Left = 24
        Top = 51
        Width = 74
        Height = 13
        Caption = 'GCSE Average:'
      end
      object lbBas: TLabel
        Left = 24
        Top = 70
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object lbTar: TLabel
        Left = 176
        Top = 32
        Width = 68
        Height = 13
        Caption = 'Target Grade:'
      end
      object lbSta: TLabel
        Left = 176
        Top = 51
        Width = 35
        Height = 13
        Caption = 'Status:'
      end
      object lbEth: TLabel
        Left = 176
        Top = 70
        Width = 45
        Height = 13
        Caption = 'Ethnicity:'
      end
      object lbBKE: TLabel
        Left = 312
        Top = 32
        Width = 64
        Height = 13
        Caption = 'BKSB English:'
      end
      object lbBKM: TLabel
        Left = 312
        Top = 51
        Width = 60
        Height = 13
        Caption = 'BKSB Maths:'
      end
      object lbWUp: TLabel
        Left = 312
        Top = 70
        Width = 58
        Height = 13
        Caption = 'Ward Uplift:'
      end
      object lbLDS: TLabel
        Left = 448
        Top = 32
        Width = 45
        Height = 13
        Caption = 'LDS/SEN:'
      end
      object lbLDd: TLabel
        Left = 24
        Top = 89
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btnViewSEdit: TButton
        Left = 552
        Top = 27
        Width = 49
        Height = 25
        Caption = 'Edit...'
        TabOrder = 0
        OnClick = btnViewSEditClick
      end
      object btnViewSCancel: TButton
        Left = 552
        Top = 58
        Width = 65
        Height = 25
        Caption = 'Cancel...'
        TabOrder = 1
        OnClick = btnViewSCancelClick
      end
      object sgStudent: TStringGrid
        Left = 24
        Top = 124
        Width = 625
        Height = 269
        DefaultColWidth = 120
        FixedCols = 0
        RowCount = 30
        TabOrder = 2
        OnDrawCell = sgStudentDrawCell
        OnMouseDown = sgStudentMouseDown
      end
    end
    object EditStudent: TTabSheet
      Caption = 'EditStudent'
      ImageIndex = 3
      object lbEdStud: TLabel
        Left = 44
        Top = 24
        Width = 46
        Height = 13
        Caption = 'Surname:'
      end
      object lbEdFore: TLabel
        Left = 38
        Top = 54
        Width = 52
        Height = 13
        Caption = 'Forename:'
      end
      object lbEdTutor: TLabel
        Left = 60
        Top = 78
        Width = 30
        Height = 13
        Caption = 'Tutor:'
      end
      object lbEdGCSE: TLabel
        Left = 16
        Top = 100
        Width = 74
        Height = 13
        Caption = 'GCSE Average:'
      end
      object lbEdBase: TLabel
        Left = 47
        Top = 130
        Width = 43
        Height = 13
        Caption = 'Baseline:'
      end
      object lbEdTarget: TLabel
        Left = 22
        Top = 154
        Width = 68
        Height = 13
        Caption = 'Target Grade:'
      end
      object lbEdStatus: TLabel
        Left = 55
        Top = 184
        Width = 35
        Height = 13
        Caption = 'Status:'
      end
      object lbEdEthn: TLabel
        Left = 45
        Top = 211
        Width = 45
        Height = 13
        Caption = 'Ethnicity:'
      end
      object lbEdBKSBE: TLabel
        Left = 226
        Top = 50
        Width = 64
        Height = 13
        Caption = 'BKSB English:'
      end
      object lbEdBKSBM: TLabel
        Left = 230
        Top = 75
        Width = 60
        Height = 13
        Caption = 'BKSB Maths:'
      end
      object lbEdWU: TLabel
        Left = 232
        Top = 104
        Width = 58
        Height = 13
        Caption = 'Ward Uplift:'
      end
      object lbEdLDd: TLabel
        Left = 208
        Top = 154
        Width = 80
        Height = 13
        Caption = 'LDS/SEN Details:'
      end
      object lbEdLDS: TLabel
        Left = 243
        Top = 129
        Width = 45
        Height = 13
        Caption = 'LDS/SEN:'
      end
      object lbEmail: TLabel
        Left = 260
        Top = 24
        Width = 28
        Height = 13
        Caption = 'Email:'
      end
      object edStudSurn: TEdit
        Left = 96
        Top = 21
        Width = 106
        Height = 21
        TabOrder = 0
      end
      object edStudFore: TEdit
        Left = 96
        Top = 48
        Width = 106
        Height = 21
        TabOrder = 1
      end
      object cbTutor: TComboBox
        Left = 96
        Top = 73
        Width = 106
        Height = 21
        TabOrder = 2
      end
      object cbTargetGrade: TComboBox
        Left = 96
        Top = 154
        Width = 106
        Height = 21
        TabOrder = 5
        Items.Strings = (
          'A*'
          'A'
          'B'
          'C'
          'D'
          'E'
          'U')
      end
      object cbStatus: TComboBox
        Left = 96
        Top = 181
        Width = 106
        Height = 21
        TabOrder = 6
        Items.Strings = (
          'True'
          'False')
      end
      object cbEthnicity: TComboBox
        Left = 96
        Top = 208
        Width = 106
        Height = 21
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        Items.Strings = (
          'English/Welsh/Scottish/Northern Irish/British'
          'Irish'
          'Gypsy or Irish Traveller'
          'Any other White background'
          'White and Black Carribean'
          'White and Black African'
          'White and Asian'
          'Any other Mixed/Multiple Ethnic background'
          'Indian'
          'Pakistani'
          'Bangladeshi'
          'Chinese'
          'Any other Asian background'
          'African'
          'Carribean'
          'Any other Black/African/Carribean background'
          'Arab'
          'Any other ethnic group'
          'Not provided')
      end
      object cbBKSBEng: TComboBox
        Left = 296
        Top = 48
        Width = 145
        Height = 21
        TabOrder = 9
        Items.Strings = (
          'Level 3'
          'Level 2'
          'Level 1'
          'Entry 3'
          'Entry 2'
          'Entry 1')
      end
      object cbBKSBMat: TComboBox
        Left = 296
        Top = 75
        Width = 145
        Height = 21
        TabOrder = 10
        Items.Strings = (
          'Level 3'
          'Level 2'
          'Level 1'
          'Entry 3'
          'Entry 2'
          'Entry 1')
      end
      object cbWardUpl: TComboBox
        Left = 296
        Top = 102
        Width = 145
        Height = 21
        TabOrder = 11
        Items.Strings = (
          'True'
          'False')
      end
      object edGCSE: TEdit
        Left = 96
        Top = 100
        Width = 106
        Height = 21
        TabOrder = 3
      end
      object btnEditSDone: TButton
        Left = 296
        Top = 211
        Width = 41
        Height = 25
        Caption = 'Done'
        Default = True
        TabOrder = 14
        OnClick = btnEditSDoneClick
      end
      object btnEditSCancel: TButton
        Left = 343
        Top = 211
        Width = 58
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        TabOrder = 15
        OnClick = btnEditSCancelClick
      end
      object meLDd: TMemo
        Left = 294
        Top = 152
        Width = 145
        Height = 53
        TabOrder = 13
      end
      object cbLDS: TComboBox
        Left = 294
        Top = 127
        Width = 145
        Height = 21
        TabOrder = 12
        Items.Strings = (
          'True'
          'False')
      end
      object edEmail: TEdit
        Left = 296
        Top = 21
        Width = 145
        Height = 21
        TabOrder = 8
      end
      object cbBaseline: TComboBox
        Left = 96
        Top = 127
        Width = 106
        Height = 21
        TabOrder = 4
        Items.Strings = (
          'A*'
          'A'
          'B'
          'C'
          'D'
          'E'
          'U')
      end
    end
    object ViewAssess: TTabSheet
      Caption = 'ViewAssess'
      ImageIndex = 4
      object lbViewA: TLabel
        Left = 24
        Top = 32
        Width = 37
        Height = 13
        Caption = 'lbViewA'
      end
      object btnViewAAdd: TButton
        Left = 456
        Top = 27
        Width = 57
        Height = 25
        Caption = 'Add...'
        TabOrder = 0
        OnClick = btnViewAAddClick
      end
      object btnViewAEdit: TButton
        Left = 519
        Top = 27
        Width = 58
        Height = 25
        Caption = 'Edit...'
        TabOrder = 1
        OnClick = btnViewAEditClick
      end
      object btnViewACancel: TButton
        Left = 583
        Top = 27
        Width = 66
        Height = 25
        Cancel = True
        Caption = 'Cancel...'
        TabOrder = 2
        OnClick = btnViewACancelClick
      end
      object sgAssess: TStringGrid
        Left = 24
        Top = 84
        Width = 625
        Height = 309
        DefaultColWidth = 120
        FixedCols = 0
        RowCount = 30
        TabOrder = 3
        OnDrawCell = sgAssessDrawCell
        OnMouseDown = sgAssessMouseDown
      end
    end
    object EditAssess: TTabSheet
      Caption = 'EditAssess'
      ImageIndex = 5
      object lbEdName: TLabel
        Left = 59
        Top = 24
        Width = 31
        Height = 13
        Caption = 'Name:'
      end
      object lbEdType: TLabel
        Left = 62
        Top = 51
        Width = 28
        Height = 13
        Caption = 'Type:'
      end
      object lbEdDate: TLabel
        Left = 63
        Top = 78
        Width = 27
        Height = 13
        Caption = 'Date:'
      end
      object lbEdTotal: TLabel
        Left = 31
        Top = 108
        Width = 59
        Height = 13
        Caption = 'Total Marks:'
      end
      object edEditAName: TEdit
        Left = 96
        Top = 21
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object cmbEditAType: TComboBox
        Left = 96
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
        Items.Strings = (
          'Class Task'
          'Coursework'
          'Homework'
          'Mock exam'
          'Test'
          'Worksheet')
      end
      object edEditADate: TEdit
        Left = 96
        Top = 75
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edEditATotal: TEdit
        Left = 96
        Top = 105
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object btnEditADone: TButton
        Left = 96
        Top = 132
        Width = 58
        Height = 25
        Caption = 'Done'
        Default = True
        TabOrder = 4
        OnClick = btnEditADoneClick
      end
      object btnEditACancel: TButton
        Left = 160
        Top = 132
        Width = 58
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        TabOrder = 5
        OnClick = btnEditACancelClick
      end
    end
  end
  object puViewStudent: TPopupMenu
    Left = 572
    Top = 432
    object itNwStAs: TMenuItem
      Caption = 'New Student Assessment'
      OnClick = itNwStAsClick
    end
    object itEdStAs: TMenuItem
      Caption = 'Edit Student Assessment'
      OnClick = itEdStAsClick
    end
  end
  object puViewAssess: TPopupMenu
    Left = 500
    Top = 432
    object NewStudentAssessment1: TMenuItem
      Caption = 'New Student Assessment'
      OnClick = NewStudentAssessment1Click
    end
    object EditStudentAssessment1: TMenuItem
      Caption = 'Edit Student Assessment'
      OnClick = EditStudentAssessment1Click
    end
  end
end
