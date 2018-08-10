object Inicial: TInicial
  Left = 390
  Top = 165
  Width = 697
  Height = 368
  Caption = 'P'#225'gina Inicial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 284
    Height = 29
    Caption = 'Escolha a op'#231#227'o desejada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Cadastro: TButton
    Left = 352
    Top = 16
    Width = 209
    Height = 57
    Caption = 'Cadastrar Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = CadastroClick
  end
  object Pedido: TButton
    Left = 352
    Top = 96
    Width = 209
    Height = 57
    Caption = 'Realizar Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = PedidoClick
  end
  object Conta_m: TButton
    Left = 352
    Top = 168
    Width = 209
    Height = 57
    Caption = 'Conta Mesa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Conta_mClick
  end
  object Reserva: TButton
    Left = 352
    Top = 240
    Width = 209
    Height = 57
    Caption = 'Reservar Mesa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = ReservaClick
  end
  object sair: TButton
    Left = 576
    Top = 264
    Width = 91
    Height = 33
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = sairClick
  end
end
