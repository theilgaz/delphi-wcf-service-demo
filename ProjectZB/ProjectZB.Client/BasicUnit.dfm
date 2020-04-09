object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 348
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblSayMyName: TLabel
    Left = 107
    Top = 18
    Width = 121
    Height = 22
    Caption = 'Say my name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object txtName: TEdit
    Left = 35
    Top = 58
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object btnInvoke: TButton
    Left = 35
    Top = 85
    Width = 257
    Height = 33
    Caption = 'Invoke Method'
    TabOrder = 1
    OnClick = btnInvokeClick
  end
  object Memo1: TMemo
    Left = 35
    Top = 127
    Width = 257
    Height = 161
    TabOrder = 2
  end
  object btnUser: TButton
    Left = 35
    Top = 294
    Width = 257
    Height = 33
    Caption = 'Invoke User Method'
    TabOrder = 3
    OnClick = btnUserClick
  end
end
