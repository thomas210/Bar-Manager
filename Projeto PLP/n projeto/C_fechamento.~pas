unit C_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, ADODB, Mask, DBCtrls;

type
  Tfechamento = class(TForm)
    tabela_despesa: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    num_mesa: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button3: TButton;
    DataSource2: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fechamento: Tfechamento;

implementation

uses Inicial;

{$R *.dfm}

procedure Tfechamento.Button1Click(Sender: TObject);
var
  preco, preco_total: real;
begin
if num_mesa.Text = '1' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 1';
  tabela_despesa.Active := true;
  dbedit1.DataField := 'Valor';
end
else if num_mesa.Text = '2' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 2';
  tabela_despesa.Active := true;
  dbedit1.DataField := 'Valor';
end
else if num_mesa.Text = '3' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 3';
  tabela_despesa.Active := true;
  dbedit1.DataField := 'Valor';
end
else if num_mesa.Text = '4' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 4';
  tabela_despesa.Active := true;
  dbedit1.DataField := 'Valor';
end
else if num_mesa.Text = '5' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 5';
  tabela_despesa.Active := true;
  dbedit1.DataField := 'Valor';
end
else if num_mesa.Text = '6' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 6';
  tabela_despesa.Active := true;
  dbedit1.DataField := 'Valor';
end
else
  showmessage('Mesa não cadastrada');
while (tabela_despesa.Eof = false) do
begin
  preco := (StrToFloat(dbedit1.Text));
  preco_total := preco + preco_total;
  tabela_despesa.Next;
end;
  label1.Caption := FormatFloat('Total a pagar:  R$ #,##0,00', preco_total);
  tabela_despesa.Next;
  end;

procedure Tfechamento.Button2Click(Sender: TObject);
begin
inicio := tinicio.create(application);
fechamento.Free;
inicio.showmodal;
end;

procedure Tfechamento.Button3Click(Sender: TObject);
begin
if messagedlg('Tem certeza que deseja fechar a conta?', mtconfirmation, [mbyes, mbno], 0) = mryes then
begin
tabela_despesa.First;
while tabela_despesa.Eof = false do
  tabela_despesa.Delete;
adotable1.Locate('número', num_mesa.Text, [LopartialKey]);
adotable1.Edit;
dbedit2.Clear;
dbedit3.Clear;
dbedit4.Clear;
dbedit5.Clear;
dbedit6.Clear;
dbedit7.Clear;
adotable1.Post;
messagedlg('A conta foi finalizada!', mtinformation, [mbOK], 0);
inicio := Tinicio.create(application);
fechamento.Free;
inicio.ShowModal;
end;
end;

end.
