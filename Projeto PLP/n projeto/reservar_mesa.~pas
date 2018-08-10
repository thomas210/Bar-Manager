unit reservar_mesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, Mask, DBCtrls;

type
  Treserva_mesa = class(TForm)
    tabela_cliente: TADOTable;
    data_cliente: TDataSource;
    Label1: TLabel;
    grid_cliente: TDBGrid;
    Label2: TLabel;
    Button1: TButton;
    tabela_clienteNome: TWideStringField;
    tabela_clienteIdade: TIntegerField;
    tabela_clienteDataNascimento: TDateTimeField;
    tabela_clienteemail: TWideStringField;
    tabela_clienteEndereo: TWideStringField;
    tabela_clienteTipoSanguneo: TWideStringField;
    tabela_clienteDiabtico: TBooleanField;
    tabela_clienteTipoDiabetes: TWideStringField;
    Edit1: TEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBText1: TDBText;
    ADOConnection1: TADOConnection;
    tabela_mesa: TADOTable;
    data_mesa: TDataSource;
    grid_mesa: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reserva_mesa: Treserva_mesa;

implementation

uses Inicial;

{$R *.dfm}

procedure Treserva_mesa.Button1Click(Sender: TObject);
begin
if not tabela_cliente.Locate('nome',edit1.Text,[LopartialKey]) then
messagedlg('O cliente não existe na base de dados', mterror, [mbok], 0);
end;

procedure Treserva_mesa.Button2Click(Sender: TObject);
begin
tabela_mesa.Edit;
 if dbedit1.Text = '' then
  dbedit1.Text := dbedit2.Text
 else if dbedit2.Text = '' then
  dbedit2.Text := dbedit2.Text
 else if dbedit3.Text = '' then
  dbedit3.Text := dbedit2.Text
 else if dbedit4.Text = '' then
  dbedit4.Text := dbedit2.Text
 else if dbedit5.Text = '' then
  dbedit5.Text := dbedit2.Text
 else if dbedit6.Text = '' then
  dbedit6.Text := dbedit2.Text
end;

procedure Treserva_mesa.Button3Click(Sender: TObject);
begin
  tabela_mesa.Post;
  messagedlg('Reserva realizada com sucesso', mtinformation, [mbOK], 0);
  inicio := Tinicio.Create(Application);
  reserva_mesa.Free;
  inicio.ShowModal;
end;

procedure Treserva_mesa.Button4Click(Sender: TObject);
begin
  inicio := Tinicio.Create(Application);
  reserva_mesa.Free;
  inicio.ShowModal;
end;

end.
