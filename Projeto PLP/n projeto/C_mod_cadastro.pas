unit C_mod_cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls;

type
  Tmod_cadastro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    Button3: TButton;
    MaskEdit1: TMaskEdit;
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
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button4: TButton;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mod_cadastro: Tmod_cadastro;

implementation

uses Inicial;

{$R *.dfm}

procedure Tmod_cadastro.Button1Click(Sender: TObject);
begin
if not adotable1.Locate('nome', edit1.Text, [LopartialKey]) then
  showmessage('Cliente Não cadastrado')
else
  adotable1.Edit;
end;

procedure Tmod_cadastro.Button3Click(Sender: TObject);
begin
adotable1.Close;
inicio := Tinicio.create(Application);
mod_cadastro.Free;
inicio.showmodal;
end;

procedure Tmod_cadastro.Button2Click(Sender: TObject);
begin
if (dbedit1.Text = '') or (dbedit2.Text = '') or (dbedit3.Text = '') or (dbedit4.Text = '') or (dbedit5.Text = '') or (dbedit6.Text = '') or ((dbcheckbox1.Checked) and (dbedit7.Text = '')) then
  messagedlg('É necessário preencher todos os campos', mtinformation, [mbOK], 0)
else
  begin
  adotable1.Post;
  MessageDlg('Cadastro alterado com sucesso!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tmod_cadastro.Button4Click(Sender: TObject);
begin
if messagedlg('Tem certeza que deseja excluir o cadastro?', mtConfirmation, [mbyes, mbno],0) = mryes then
 messagedlg('Cadastro excluído', mtInformation, [mbOK], 0);
 adotable1.Delete;
end;

procedure Tmod_cadastro.DBCheckBox1Click(Sender: TObject);
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

procedure Tmod_cadastro.MaskEdit1Exit(Sender: TObject);
begin
dbedit3.Text := maskedit1.Text;
end;

procedure Tmod_cadastro.DBEdit3Change(Sender: TObject);
begin
maskedit1.Text := dbedit3.Text;
end;

procedure Tmod_cadastro.FormCreate(Sender: TObject);
begin
adotable1.Edit;
end;

procedure Tmod_cadastro.MaskEdit1Click(Sender: TObject);
begin
adotable1.Edit;
end;

end.
