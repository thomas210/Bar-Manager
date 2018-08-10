object Inicio: TInicio
  Left = 266
  Top = 153
  Width = 928
  Height = 477
  Caption = 'In'#237'cio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 136
    Width = 637
    Height = 110
    Caption = 'Bar Manager '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -96
    Font.Name = 'Cooper Black'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    object Funes1: TMenuItem
      Caption = 'Cliente'
      object AddCliente1: TMenuItem
        Caption = 'Adicionar'
        OnClick = AddCliente1Click
      end
      object Modificar1: TMenuItem
        Caption = 'Modificar/Excluir'
        OnClick = Modificar1Click
      end
    end
    object Mesa1: TMenuItem
      Caption = 'Mesa'
      object Reservar1: TMenuItem
        Caption = 'Reservar'
        OnClick = Reservar1Click
      end
    end
    object Pedido1: TMenuItem
      Caption = 'Pedido'
      object Realizar1: TMenuItem
        Caption = 'Realizar'
        OnClick = Realizar1Click
      end
      object Fechamento1: TMenuItem
        Caption = 'Fechamento'
        OnClick = Fechamento1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
  end
end
