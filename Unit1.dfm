object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 376
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 72
    Width = 145
    Height = 33
    Caption = 'Label1'
  end
  object Start: TButton
    Left = 200
    Top = 128
    Width = 65
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 0
    OnClick = StartClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 72
    Width = 153
    Height = 209
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Stop: TButton
    Left = 287
    Top = 128
    Width = 58
    Height = 25
    Caption = #1057#1090#1086#1087
    TabOrder = 2
    OnClick = StopClick
  end
end
