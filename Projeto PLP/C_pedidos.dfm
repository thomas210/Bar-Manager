object pedidos_mesa: Tpedidos_mesa
  Left = 276
  Top = 162
  Width = 928
  Height = 480
  Caption = 'Realizar Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Conta: TLabel
    Left = 48
    Top = 24
    Width = 99
    Height = 37
    Caption = 'Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 712
    Top = 240
    Width = 123
    Height = 25
    Caption = 'Total a Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 248
    Top = 88
    Width = 113
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 32
    Top = 88
    Width = 209
    Height = 21
    TabOrder = 1
    Text = 'Mesa N'#186
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 120
    Width = 329
    Height = 217
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 240
    Top = 352
    Width = 105
    Height = 49
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button4: TButton
    Left = 712
    Top = 280
    Width = 129
    Height = 49
    Caption = 'Finalizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object pagar: TRadioGroup
    Left = 672
    Top = 72
    Width = 185
    Height = 105
    Items.Strings = (
      'A Mesa vai pagar'
      'Um ou mais clientes v'#227'o pagar')
    TabOrder = 5
  end
  object ComboBox2: TComboBox
    Left = 696
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'Cliente'
  end
  object Memo1: TMemo
    Left = 400
    Top = 88
    Width = 201
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object b_voltar: TButton
    Left = 800
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 8
    OnClick = b_voltarClick
  end
end
