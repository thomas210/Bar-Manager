object mod_cadastro: Tmod_cadastro
  Left = 219
  Top = 133
  Width = 928
  Height = 498
  Caption = 'Modificar Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 248
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 288
    Width = 27
    Height = 13
    Caption = 'Idade'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 328
    Width = 82
    Height = 13
    Caption = 'Data Nascimento'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 376
    Top = 256
    Width = 27
    Height = 13
    Caption = 'e-mail'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 376
    Top = 296
    Width = 46
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 376
    Top = 336
    Width = 77
    Height = 13
    Caption = 'Tipo Sangu'#237'neo'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 376
    Top = 400
    Width = 66
    Height = 13
    Caption = 'Tipo Diabetes'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 16
    Top = 32
    Width = 492
    Height = 20
    Caption = 'Digite o Nome do Usu'#225'rio que deseja  alterar/excluir cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button2: TButton
    Left = 720
    Top = 312
    Width = 128
    Height = 49
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 264
    Width = 296
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 304
    Width = 104
    Height = 21
    DataField = 'Idade'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 192
    Top = 344
    Width = 104
    Height = 21
    DataField = 'Data Nascimento'
    DataSource = DataSource1
    TabOrder = 3
    Visible = False
    OnChange = DBEdit3Change
  end
  object DBEdit4: TDBEdit
    Left = 376
    Top = 272
    Width = 296
    Height = 21
    DataField = 'e-mail'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 376
    Top = 312
    Width = 296
    Height = 21
    DataField = 'Endere'#231'o'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 376
    Top = 352
    Width = 42
    Height = 21
    DataField = 'Tipo Sangu'#237'neo'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBCheckBox1: TDBCheckBox
    Left = 376
    Top = 376
    Width = 96
    Height = 17
    Caption = 'Diab'#233'tico?'
    DataField = 'Diab'#233'tico?'
    DataSource = DataSource1
    TabOrder = 7
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    OnClick = DBCheckBox1Click
  end
  object DBEdit7: TDBEdit
    Left = 376
    Top = 416
    Width = 29
    Height = 21
    DataField = 'Tipo Diabetes'
    DataSource = DataSource1
    TabOrder = 8
  end
  object Button3: TButton
    Left = 720
    Top = 256
    Width = 128
    Height = 49
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object MaskEdit1: TMaskEdit
    Left = 56
    Top = 344
    Width = 120
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 10
    Text = '  /  /  '
    OnClick = MaskEdit1Click
    OnExit = MaskEdit1Exit
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 905
    Height = 137
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 8
    Top = 64
    Width = 273
    Height = 21
    TabOrder = 12
  end
  object Button1: TButton
    Left = 288
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Procurar'
    TabOrder = 13
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 720
    Top = 368
    Width = 129
    Height = 49
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button4Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 848
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
    Left = 808
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Cadastro'
    Left = 888
    object ADOTable1Nome: TWideStringField
      FieldName = 'Nome'
      Size = 30
    end
    object ADOTable1Idade: TIntegerField
      FieldName = 'Idade'
    end
    object ADOTable1DataNascimento: TDateTimeField
      FieldName = 'Data Nascimento'
    end
    object ADOTable1email: TWideStringField
      FieldName = 'e-mail'
      Size = 35
    end
    object ADOTable1Endereo: TWideStringField
      FieldName = 'Endere'#231'o'
      Size = 30
    end
    object ADOTable1TipoSanguneo: TWideStringField
      FieldName = 'Tipo Sangu'#237'neo'
      Size = 3
    end
    object ADOTable1Diabtico: TBooleanField
      FieldName = 'Diab'#233'tico?'
    end
    object ADOTable1TipoDiabetes: TWideStringField
      FieldName = 'Tipo Diabetes'
      Size = 2
    end
  end
end
