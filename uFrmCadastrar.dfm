object FrmCadastrar: TFrmCadastrar
  Left = 585
  Top = 219
  Caption = 'Cadastrar novo funcion'#225'rio'
  ClientHeight = 348
  ClientWidth = 447
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object LNome: TLabel
    Left = 24
    Top = 80
    Width = 106
    Height = 19
    Caption = 'Nome completo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object LCPF: TLabel
    Left = 24
    Top = 120
    Width = 91
    Height = 19
    Caption = 'Digite o CPF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object LSalario: TLabel
    Left = 24
    Top = 161
    Width = 104
    Height = 19
    Caption = 'Insira o Sal'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object LCargo: TLabel
    Left = 24
    Top = 240
    Width = 120
    Height = 19
    Caption = 'Escolha um cargo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Lextra: TLabel
    Left = 24
    Top = 200
    Width = 185
    Height = 19
    Caption = 'Horas extras/ Valor vendido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object BtGravar: TButton
    Left = 292
    Top = 299
    Width = 147
    Height = 41
    Caption = 'Gravar informa'#231#245'es'
    TabOrder = 0
    OnClick = BtGravarClick
  end
  object PCadastro: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 49
    Caption = 'Cadastrar funcion'#225'rio'
    Color = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object EdtNome: TEdit
    Left = 224
    Top = 81
    Width = 153
    Height = 21
    TabOrder = 2
    OnExit = EdtNomeExit
  end
  object EdtCPF: TEdit
    Left = 224
    Top = 121
    Width = 153
    Height = 21
    TabOrder = 3
    OnExit = EdtCPFExit
  end
  object EdtSalario: TEdit
    Left = 224
    Top = 162
    Width = 153
    Height = 21
    TabOrder = 4
    OnExit = EdtSalarioExit
  end
  object CBCargo: TComboBox
    Left = 24
    Top = 272
    Width = 145
    Height = 21
    Style = csDropDownList
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 5
    TextHint = 'Selecione o cargo:'
    Items.Strings = (
      'Vendedor '
      'Gestor')
  end
  object EdtExtra: TEdit
    Left = 224
    Top = 201
    Width = 153
    Height = 21
    TabOrder = 6
    OnExit = EdtExtraExit
  end
end
