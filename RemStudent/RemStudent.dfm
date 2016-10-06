object RemStudentForm: TRemStudentForm
  Left = 571
  Top = 386
  Caption = 'Remove Student'
  ClientHeight = 243
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 284
    Height = 13
    Caption = 'Why is this person being removed from the college system?'
  end
  object Label2: TLabel
    Left = 32
    Top = 168
    Width = 314
    Height = 13
    Caption = 'Are you sure you want to remove this student from the program?'
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 56
    Width = 113
    Height = 17
    Caption = 'Leaving college'
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 209
    Top = 56
    Width = 49
    Height = 17
    Caption = 'Other'
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 264
    Top = 54
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object Button1: TButton
    Left = 56
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Confirm'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 137
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 4
    OnClick = Button2Click
  end
end
