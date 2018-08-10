object realizar_pedido: Trealizar_pedido
  Left = 206
  Top = 113
  Width = 861
  Height = 560
  Caption = 'Realizar Pedido'
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
    Left = 24
    Top = 424
    Width = 37
    Height = 13
    Caption = 'Produto'
    FocusControl = DBEdit1
  end
  object num_mesa: TLabeledEdit
    Left = 96
    Top = 120
    Width = 97
    Height = 21
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = 'Mesa N'#186
    TabOrder = 0
  end
  object Button1: TButton
    Left = 200
    Top = 120
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object grid_produtos: TDBGrid
    Left = 16
    Top = 200
    Width = 385
    Height = 209
    DataSource = data_produtos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 440
    Width = 329
    Height = 21
    DataField = 'Produto'
    DataSource = data_produtos
    TabOrder = 3
  end
  object quantidade: TLabeledEdit
    Left = 24
    Top = 480
    Width = 65
    Height = 21
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'Quant.'
    TabOrder = 4
    OnChange = quantidadeChange
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 480
    Width = 65
    Height = 21
    DataField = 'Estoque'
    DataSource = data_produtos
    TabOrder = 5
    Visible = False
  end
  object Button2: TButton
    Left = 176
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Procurar'
    TabOrder = 7
    OnClick = Button3Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 16
    Top = 176
    Width = 297
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Produto'
    TabOrder = 8
  end
  object GroupBox1: TGroupBox
    Left = 424
    Top = 192
    Width = 385
    Height = 241
    Caption = 'Pedido'
    TabOrder = 9
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 81
      Height = 13
      Caption = 'N'#250'mero da Mesa'
      Visible = False
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label4: TLabel
      Left = 16
      Top = 104
      Width = 32
      Height = 13
      Caption = 'Quant.'
    end
    object Label5: TLabel
      Left = 16
      Top = 136
      Width = 58
      Height = 13
      Caption = 'Pre'#231'o Total:'
    end
    object dbproduto: TDBEdit
      Left = 80
      Top = 64
      Width = 185
      Height = 21
      DataSource = data_despesa
      TabOrder = 0
    end
    object dbquantidade: TDBEdit
      Left = 80
      Top = 96
      Width = 113
      Height = 21
      DataSource = data_despesa
      TabOrder = 1
    end
    object dbpreco: TDBEdit
      Left = 80
      Top = 128
      Width = 113
      Height = 21
      DataSource = data_despesa
      TabOrder = 2
    end
    object Button4: TButton
      Left = 288
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object Button5: TButton
    Left = 736
    Top = 464
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 10
    OnClick = Button5Click
  end
  object DBEdit3: TDBEdit
    Left = 280
    Top = 480
    Width = 56
    Height = 21
    DataField = 'Pre'#231'o'
    DataSource = data_produtos
    TabOrder = 11
    Visible = False
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
  object tabela_mesa: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Mesa'
    Top = 48
  end
  object data_mesa: TDataSource
    DataSet = tabela_mesa
    Left = 48
    Top = 48
  end
  object tabela_produtos: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Produtos'
    Top = 104
    object tabela_produtosProduto: TWideStringField
      FieldName = 'Produto'
      Size = 25
    end
    object tabela_produtosPreo: TBCDField
      FieldName = 'Pre'#231'o'
      Precision = 19
    end
    object tabela_produtosEstoque: TIntegerField
      FieldName = 'Estoque'
    end
  end
  object data_produtos: TDataSource
    DataSet = tabela_produtos
    Left = 40
    Top = 104
  end
  object tabela_despesa: TADOTable
    Connection = ADOConnection1
    Left = 808
    Top = 144
  end
  object data_despesa: TDataSource
    DataSet = tabela_despesa
    Left = 760
    Top = 144
  end
end
