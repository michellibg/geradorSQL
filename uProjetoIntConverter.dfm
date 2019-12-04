object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 316
  ClientWidth = 711
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
    Left = 8
    Top = 0
    Width = 71
    Height = 13
    Caption = 'Texto Original:'
  end
  object Label2: TLabel
    Left = 464
    Top = 8
    Width = 88
    Height = 13
    Caption = 'Texto Convertido:'
  end
  object MemoOriginal: TMemo
    Left = 8
    Top = 19
    Width = 225
    Height = 129
    TabOrder = 0
  end
  object MemoConvertido: TMemo
    Left = 464
    Top = 27
    Width = 225
    Height = 129
    TabOrder = 1
  end
  object RGOpcoes: TRadioGroup
    Left = 255
    Top = 8
    Width = 185
    Height = 161
    Caption = 'Op'#231#245'es de convers'#227'o:'
    Items.Strings = (
      'Invertido'
      'Primeira Mai'#250'scula'
      'Ordem alfab'#233'tica')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 272
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Converter'
    TabOrder = 3
    OnClick = Button1Click
  end
end
