unit Codigo_Inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TInicial = class(TForm)
    Label1: TLabel;
    Cadastro: TButton;
    Pedido: TButton;
    Conta_m: TButton;
    Reserva: TButton;
    sair: TButton;
    procedure CadastroClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure Conta_mClick(Sender: TObject);
    procedure PedidoClick(Sender: TObject);
    procedure ReservaClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure c_clienteClick(Sender: TObject);
    procedure DespesaCliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inicial: TInicial;

implementation

uses C_Cadastro, C_conta_mesa, C_pedidos, C_conta_cliente, C_reserva;

{$R *.dfm}

procedure TInicial.CadastroClick(Sender: TObject);
begin
cadastro_de_clientes.show;
end;

procedure TInicial.sairClick(Sender: TObject);
begin
 application.Terminate
end;

procedure TInicial.Conta_mClick(Sender: TObject);
begin
conta_mesa.show;

end;

procedure TInicial.PedidoClick(Sender: TObject);
begin
pedidos_mesa.show;

end;

procedure TInicial.ReservaClick(Sender: TObject);
begin
reserva_mesa.show
end;

procedure TInicial.Cliente1Click(Sender: TObject);
begin
  cadastro_de_clientes.show;
end;

procedure TInicial.c_clienteClick(Sender: TObject);
begin
conta_cliente.show;
end;

procedure TInicial.DespesaCliente1Click(Sender: TObject);
begin
conta_cliente.show;

end;

end.
