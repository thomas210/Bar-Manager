unit Cadastro_C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, ADODB, ExtCtrls, Grids, DBGrids;

type
  Tcadastro_cliente = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Nome: TWideStringField;
    ADOTable1Idade: TIntegerField;
    ADOTable1DataNascimento: TDateTimeField;
    ADOTable1email: TWideStringField;
    ADOTable1Endereo: TWideStringField;
    ADOTable1TipoSanguneo: TWideStringField;
    ADOTable1Diabtico: TBooleanField;
    ADOTable1TipoDiabetes: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Button3: TButton;
    MaskEdit1: TMaskEdit;
    procedure DBCheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro_cliente: Tcadastro_cliente;

implementation

uses Inicial;

{$R *.dfm}

procedure Tcadastro_cliente.DBCheckBox1Click(Sender: TObject);
begin
if not DBCheckBox1.Checked then
Begin
  Label7.Visible := false;
  DBEdit7.Visible:= false;
end
else
Begin
  Label7.Visible := true;
  DBEdit7.Visible:= true;
end;
end;

procedure Tcadastro_cliente.Button1Click(Sender: TObject);
begin
  adotable1.Append;
end;

procedure Tcadastro_cliente.Button2Click(Sender: TObject);
begin
if (dbedit1.Text = '') or (dbedit2.Text = '') or (dbedit3.Text = '') or (dbedit4.Text = '') or (dbedit5.Text = '') or (dbedit6.Text = '') or ((dbcheckbox1.Checked) and (dbedit7.Text = '')) then
  messagedlg('É necessário preencher todos os campos', mtinformation, [mbOK], 0)
else
  begin
  adotable1.Post;
  MessageDlg('Cadastro alterado com sucesso!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tcadastro_cliente.FormCreate(Sender: TObject);
begin
  adotable1.Append;
end;

procedure Tcadastro_cliente.Button3Click(Sender: TObject);
begin
inicio := Tinicio.Create(Application);
cadastro_cliente.Free;
inicio.ShowModal;
end;

procedure Tcadastro_cliente.MaskEdit1Exit(Sender: TObject);
begin
dbedit3.Text := maskedit1.Text;
end;

end.
