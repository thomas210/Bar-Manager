unit C_realizar_pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls, ExtCtrls;

type
  Trealizar_pedido = class(TForm)
    ADOConnection1: TADOConnection;
    tabela_mesa: TADOTable;
    data_mesa: TDataSource;
    num_mesa: TLabeledEdit;
    Button1: TButton;
    grid_produtos: TDBGrid;
    tabela_produtos: TADOTable;
    data_produtos: TDataSource;
    tabela_produtosProduto: TWideStringField;
    tabela_produtosPreo: TBCDField;
    tabela_produtosEstoque: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    quantidade: TLabeledEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    LabeledEdit1: TLabeledEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    data_despesa: TDataSource;
    dbproduto: TDBEdit;
    Label3: TLabel;
    dbquantidade: TDBEdit;
    dbpreco: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    Button5: TButton;
    DBEdit3: TDBEdit;
    tabela_despesa: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure quantidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  realizar_pedido: Trealizar_pedido;

implementation

uses Inicial;

{$R *.dfm}

procedure Trealizar_pedido.Button1Click(Sender: TObject);
begin

if num_mesa.Text = '1' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 1';
  tabela_despesa.Active := true;
  dbproduto.DataField := 'produto';
  dbquantidade.DataField := 'quantidade';
  dbpreco.DataField := 'valor';
  tabela_produtos.Edit;
  tabela_despesa.Append;
  label2.Caption := 'Mesa N�: '+num_mesa.Text;
  label2.Visible := true;
end
else if num_mesa.Text = '2' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 2';
  tabela_despesa.Active := true;
  dbproduto.DataField := 'produto';
  dbquantidade.DataField := 'quantidade';
  dbpreco.DataField := 'valor';
  tabela_produtos.Edit;
  tabela_despesa.Append;
  label2.Caption := 'Mesa N�: '+num_mesa.Text;
  label2.Visible := true;
end
else if num_mesa.Text = '3' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 3';
  tabela_despesa.Active := true;
  dbproduto.DataField := 'produto';
  dbquantidade.DataField := 'quantidade';
  dbpreco.DataField := 'valor';
  tabela_produtos.Edit;
  tabela_despesa.Append;
  label2.Caption := 'Mesa N�: '+num_mesa.Text;
  label2.Visible := true;
end
else if num_mesa.Text = '4' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 4';
  tabela_despesa.Active := true;
  dbproduto.DataField := 'produto';
  dbquantidade.DataField := 'quantidade';
  dbpreco.DataField := 'valor';
  tabela_produtos.Edit;
  tabela_despesa.Append;
  label2.Caption := 'Mesa N�: '+num_mesa.Text;
  label2.Visible := true;
end
else if num_mesa.Text = '5' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 5';
  tabela_despesa.Active := true;
  dbproduto.DataField := 'produto';
  dbquantidade.DataField := 'quantidade';
  dbpreco.DataField := 'valor';
  tabela_produtos.Edit;
  tabela_despesa.Append;
  label2.Caption := 'Mesa N�: '+num_mesa.Text;
  label2.Visible := true;
end
else if num_mesa.Text = '6' then
begin
  tabela_despesa.TableName := 'Despesa Mesa 6';
  tabela_despesa.Active := true;
  dbproduto.DataField := 'produto';
  dbquantidade.DataField := 'quantidade';
  dbpreco.DataField := 'valor';
  tabela_produtos.Edit;
  tabela_despesa.Append;
  label2.Caption := 'Mesa N�: '+num_mesa.Text;
  label2.Visible := true;
end
else
begin
  messagedlg('A mesa n�o existe', mterror, [mbOK], 0);
  num_mesa.Clear;
end;
end;

procedure Trealizar_pedido.Button2Click(Sender: TObject);
var
  q_pedido, q_estoque, final: integer;
  total, p_unit: real;
begin
if num_mesa.Text = '' then
begin
  messagedlg('� necess�rio informar o n�mero da mesa', mtwarning, [mbOK], 0);
  quantidade.Clear;
end
else
begin
  q_pedido := StrToInt(quantidade.Text);
  q_estoque := StrToInt(dbedit2.Text);
  if (q_pedido > q_estoque) then
  begin
    messagedlg('Sem quantidade suficiente no estoque', mtwarning, [mbOK], 0);
    quantidade.Clear;
  end
  else
  begin
    final := q_estoque - q_pedido;
    p_unit := StrToFloat(dbedit3.Text);
    total := p_unit * q_pedido;
    dbedit2.Text := FormatFloat('##', final);
    dbquantidade.Text := quantidade.Text;
    dbproduto.Text := dbedit1.Text;
    dbpreco.Text := FormatFloat('#####,##000.00', total);
  end;
end;
end;

procedure Trealizar_pedido.Button3Click(Sender: TObject);
begin
if num_mesa.Text = '' then
begin
  messagedlg('� necess�rio informar o n�mero da mesa', mtwarning, [mbOK], 0);
  labelededit1.Clear;
end
else
begin
if not tabela_produtos.Locate('produto', labelededit1.Text, [LopartialKey]) then
  showmessage('Produto n�o Cadastrado');
tabela_produtos.Edit;
tabela_despesa.Append;
end;
end;

procedure Trealizar_pedido.Button5Click(Sender: TObject);
begin
inicio := Tinicio.create(Application);
realizar_pedido.Free;
inicio.showmodal;
end;

procedure Trealizar_pedido.Button4Click(Sender: TObject);
begin
 tabela_produtos.Post;
 tabela_despesa.Post;
messagedlg('Pedido realizado com Sucesso', mtinformation, [mbOK], 0);
tabela_despesa.Append;
quantidade.Clear;
end;

procedure Trealizar_pedido.Button6Click(Sender: TObject);
begin
tabela_mesa.Edit;
tabela_despesa.ClearFields;
tabela_despesa.Post;
end;

procedure Trealizar_pedido.quantidadeChange(Sender: TObject);
begin
tabela_produtos.Edit;
end;

end.
