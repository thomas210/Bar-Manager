object fechamento: Tfechamento
  Left = 219
  Top = 133
  Width = 755
  Height = 480
  Caption = 'Fechamento Pedido'
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
    Left = 32
    Top = 336
    Width = 63
    Height = 24
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 705
    Height = 217
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object num_mesa: TLabeledEdit
    Left = 32
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = 'Mesa N'#186
    TabOrder = 1
  end
  object Button1: TButton
    Left = 160
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 272
    Top = 64
    Width = 121
    Height = 21
    DataSource = DataSource1
    TabOrder = 4
    Visible = False
  end
  object Button3: TButton
    Left = 640
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 368
    Width = 89
    Height = 21
    DataField = 'Cliente1'
    DataSource = DataSource2
    TabOrder = 6
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 392
    Width = 88
    Height = 21
    DataField = 'Cliente2'
    DataSource = DataSource2
    TabOrder = 7
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 416
    Width = 89
    Height = 21
    DataField = 'Cliente3'
    DataSource = DataSource2
    TabOrder = 8
    Visible = False
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 368
    Width = 89
    Height = 21
    DataField = 'Cliente4'
    DataSource = DataSource2
    TabOrder = 9
    Visible = False
  end
  object DBEdit6: TDBEdit
    Left = 152
    Top = 392
    Width = 89
    Height = 21
    DataField = 'Cliente5'
    DataSource = DataSource2
    TabOrder = 10
    Visible = False
  end
  object DBEdit7: TDBEdit
    Left = 152
    Top = 416
    Width = 89
    Height = 21
    DataField = 'Cliente6'
    DataSource = DataSource2
    TabOrder = 11
    Visible = False
  end
  object tabela_despesa: TADOTable
    Connection = ADOConnection1
    Left = 40
  end
  object DataSource1: TDataSource
    DataSet = tabela_despesa
    Left = 80
  end
  object DataSource2: TDataSource
    DataSet = ADOTable1
    Top = 384
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Thom'#225'sTabo' +
      'sa\Documents\Object Pascal\Projeto PLP\Banco de dados\Banco.mdb;' +
      'Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Mesa'
    Top = 416
  end
end
