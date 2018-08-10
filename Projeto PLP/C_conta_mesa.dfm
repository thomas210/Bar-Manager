object conta_mesa: Tconta_mesa
  Left = 192
  Top = 117
  Width = 736
  Height = 480
  Caption = 'Conta Mesa'
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
    Width = 172
    Height = 37
    Caption = 'Conta Mesa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 376
    Top = 72
    Width = 276
    Height = 25
    Caption = 'Total a Pagar para cada cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 248
    Top = 72
    Width = 73
    Height = 25
    Caption = 'OK'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 32
    Top = 72
    Width = 209
    Height = 21
    TabOrder = 1
    Text = 'Mesa'
  end
  object Button2: TButton
    Left = 168
    Top = 384
    Width = 153
    Height = 49
    Caption = 'Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button4: TButton
    Left = 384
    Top = 384
    Width = 129
    Height = 49
    Caption = 'Finalizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 112
    Width = 305
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object Memo2: TMemo
    Left = 360
    Top = 112
    Width = 305
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object b_voltar: TButton
    Left = 608
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 6
    OnClick = b_voltarClick
  end
end
