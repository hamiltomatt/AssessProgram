object RemAssessForm: TRemAssessForm
  Left = 629
  Top = 386
  Caption = 'Remove Assessment'
  ClientHeight = 104
  ClientWidth = 378
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
    Width = 333
    Height = 13
    Caption = 
      'Are you sure you want to remove this assessment from the program' +
      '?'
  end
  object Button1: TButton
    Left = 24
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Confirm'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 113
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = Button2Click
  end
end
