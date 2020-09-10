object FrmInicio: TFrmInicio
  Left = 583
  Top = 207
  Caption = 'Cadastrador 2000'
  ClientHeight = 231
  ClientWidth = 447
  Color = clCream
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tempus Sans ITC'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 15
  object PCadastro: TPanel
    Left = -8
    Top = 0
    Width = 457
    Height = 65
    Caption = 'Cadastrador 2000'
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Small Fonts'
    Font.Style = [fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object BtCadastro: TButton
    Left = 104
    Top = 96
    Width = 225
    Height = 89
    Caption = 'Cadastrar funcion'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 1
    OnClick = BtCadastroClick
  end
end
