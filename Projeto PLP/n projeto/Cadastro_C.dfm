�
 TCADASTRO_CLIENTE 06  TPF0Tcadastro_clientecadastro_clienteLeft�Top� Width8Height�CaptionCadastrar ClientesColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel1LeftTop8WidthHeightCaptionNomeFocusControlDBEdit1  TLabelLabel2LeftTop`WidthHeightCaptionIdadeFocusControlDBEdit2  TLabelLabel3LeftTop� WidthRHeightCaptionData NascimentoFocusControlDBEdit3  TLabelLabel4LeftTop� WidthHeightCaptione-mailFocusControlDBEdit4  TLabelLabel5LeftTop� Width.HeightCaption	   EndereçoFocusControlDBEdit5  TLabelLabel6LeftTop WidthMHeightCaption   Tipo SanguíneoFocusControlDBEdit6  TLabelLabel7LeftTop@WidthBHeightCaptionTipo DiabetesFocusControlDBEdit7  TButtonButton1Left�TopPWidth� Height1CaptionAdicionar NovoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder OnClickButton1Click  TButtonButton2Left�Top� Width� Height1CaptionCriarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderOnClickButton2Click  TDBEditDBEdit1LeftTopHWidth)Height	DataFieldNome
DataSourceDataSource1TabOrder  TDBEditDBEdit2LeftToppWidthiHeight	DataFieldIdade
DataSourceDataSource1TabOrder  TDBEditDBEdit3Left� Top� WidthiHeight	DataFieldData Nascimento
DataSourceDataSource1TabOrderVisible  TDBEditDBEdit4LeftTop� Width)Height	DataFielde-mail
DataSourceDataSource1TabOrder  TDBEditDBEdit5LeftTop� Width)Height	DataField	   Endereço
DataSourceDataSource1TabOrder  TDBEditDBEdit6LeftTopWidth+Height	DataField   Tipo Sanguíneo
DataSourceDataSource1TabOrder  TDBCheckBoxDBCheckBox1LeftTop(WidthaHeightCaption   Diabético?	DataField   Diabético?
DataSourceDataSource1TabOrderValueCheckedTrueValueUncheckedFalseOnClickDBCheckBox1Click  TDBEditDBEdit7LeftTopPWidthHeight	DataFieldTipo Diabetes
DataSourceDataSource1TabOrder	  TButtonButton3Left�Top� Width� Height9CaptionVoltarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrder
OnClickButton3Click  	TMaskEdit	MaskEdit1LeftTop� WidthxHeightEditMask!99/99/00;1;_	MaxLengthTabOrderText  /  /  OnExitMaskEdit1Exit  TDataSourceDataSource1DataSet	ADOTable1Left(  TADOConnectionADOConnection1	Connected	ConnectionString�   Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\ThomásTabosa\Documents\Object Pascal\Projeto PLP\Banco de dados\Banco.mdb;Persist Security Info=FalseLoginPromptModecmShareDenyNoneProviderMicrosoft.Jet.OLEDB.4.0  	TADOTable	ADOTable1Active	
ConnectionADOConnection1
CursorTypectStatic	TableNameCadastroLeftP TWideStringFieldADOTable1Nome	FieldNameNomeSize  TIntegerFieldADOTable1Idade	FieldNameIdade  TDateTimeFieldADOTable1DataNascimento	FieldNameData Nascimento  TWideStringFieldADOTable1email	FieldNamee-mailSize#  TWideStringFieldADOTable1Endereo	FieldName	   EndereçoSize  TWideStringFieldADOTable1TipoSanguneo	FieldName   Tipo SanguíneoSize  TBooleanFieldADOTable1Diabtico	FieldName   Diabético?  TWideStringFieldADOTable1TipoDiabetes	FieldNameTipo DiabetesSize    