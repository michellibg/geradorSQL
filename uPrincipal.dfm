object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Gerador de SQL'
  ClientHeight = 406
  ClientWidth = 653
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
    Left = 32
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Colunas:'
  end
  object Label2: TLabel
    Left = 232
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Tabelas:'
  end
  object Label3: TLabel
    Left = 439
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Condi'#231#245'es:'
  end
  object Label4: TLabel
    Left = 32
    Top = 221
    Width = 23
    Height = 13
    Caption = 'SQL:'
  end
  object MemColuna: TMemo
    Left = 32
    Top = 24
    Width = 185
    Height = 145
    Lines.Strings = (
      'Codigo'
      'Nome')
    TabOrder = 0
  end
  object MemTabelas: TMemo
    Left = 232
    Top = 27
    Width = 185
    Height = 145
    Lines.Strings = (
      'Funcionarios')
    TabOrder = 1
  end
  object MemCondicoes: TMemo
    Left = 439
    Top = 24
    Width = 185
    Height = 145
    Lines.Strings = (
      'Cidade =  '#39'Maring'#225#39
      'Salario >1000')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 286
    Top = 197
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 3
    OnClick = Button1Click
  end
  object MemSQL: TMemo
    Left = 32
    Top = 240
    Width = 592
    Height = 145
    TabOrder = 4
  end
end
