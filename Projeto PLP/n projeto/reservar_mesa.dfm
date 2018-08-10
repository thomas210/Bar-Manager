object reserva_mesa: Treserva_mesa
  Left = 193
  Top = 137
  Width = 1170
  Height = 584
  Caption = 'Reserva Mesa'
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
    Top = 8
    Width = 59
    Height = 25
    Caption = 'Mesas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 248
    Width = 262
    Height = 16
    Caption = 'Digite o Nome do cliente que quer adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 472
    Width = 32
    Height = 13
    Caption = 'Cliente'
    FocusControl = DBEdit2
  end
  object GroupBox1: TGroupBox
    Left = 360
    Top = 240
    Width = 489
    Height = 273
    Caption = 'Dados da Reserva'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 5
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 26
      Height = 13
      Caption = 'Mesa'
    end
    object Label5: TLabel
      Left = 24
      Top = 88
      Width = 90
      Height = 13
      Caption = 'Cliente nesta Mesa'
      FocusControl = DBEdit1
    end
    object DBText1: TDBText
      Left = 56
      Top = 48
      Width = 65
      Height = 17
      DataField = 'N'#250'mero'
      DataSource = data_mesa
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 104
      Width = 394
      Height = 21
      DataField = 'Cliente1'
      DataSource = data_mesa
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 128
      Width = 394
      Height = 21
      DataField = 'Cliente2'
      DataSource = data_mesa
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 152
      Width = 394
      Height = 21
      DataField = 'Cliente3'
      DataSource = data_mesa
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 176
      Width = 394
      Height = 21
      DataField = 'Cliente4'
      DataSource = data_mesa
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 24
      Top = 200
      Width = 394
      Height = 21
      DataField = 'Cliente5'
      DataSource = data_mesa
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 24
      Top = 224
      Width = 394
      Height = 21
      DataField = 'Cliente6'
      DataSource = data_mesa
      TabOrder = 5
    end
  end
  object grid_cliente: TDBGrid
    Left = 16
    Top = 304
    Width = 297
    Height = 153
    DataSource = data_cliente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 263
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 240
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 272
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 488
    Width = 233
    Height = 21
    DataField = 'Nome'
    DataSource = data_cliente
    TabOrder = 3
  end
  object Button2: TButton
    Left = 256
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 920
    Top = 288
    Width = 137
    Height = 49
    Caption = 'Realizar Reserva'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 920
    Top = 344
    Width = 137
    Height = 49
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button4Click
  end
  object grid_mesa: TDBGrid
    Left = 8
    Top = 48
    Width = 1137
    Height = 161
    DataSource = data_mesa
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object tabela_cliente: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Cadastro'
    Left = 1128
    object tabela_clienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
    object tabela_clienteIdade: TIntegerField
      FieldName = 'Idade'
    end
    object tabela_clienteDataNascimento: TDateTimeField
      FieldName = 'Data Nascimento'
    end
    object tabela_clienteemail: TWideStringField
      FieldName = 'e-mail'
      Size = 35
    end
    object tabela_clienteEndereo: TWideStringField
      FieldName = 'Endere'#231'o'
      Size = 30
    end
    object tabela_clienteTipoSanguneo: TWideStringField
      FieldName = 'Tipo Sangu'#237'neo'
      Size = 3
    end
    object tabela_clienteDiabtico: TBooleanField
      FieldName = 'Diab'#233'tico?'
    end
    object tabela_clienteTipoDiabetes: TWideStringField
      FieldName = 'Tipo Diabetes'
      Size = 2
    end
  end
  object data_cliente: TDataSource
    DataSet = tabela_cliente
    Left = 1096
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
    Left = 960
  end
  object tabela_mesa: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Mesa'
    Left = 1000
  end
  object data_mesa: TDataSource
    DataSet = tabela_mesa
    Left = 1040
  end
end
