program Projeto;

uses
  Forms,
  Codigo_Inicio in 'Codigo_Inicio.pas' {Inicial},
  C_Cadastro in '..\..\Delphi\C_Cadastro.pas' {cadastro_de_clientes},
  C_conta_mesa in 'C_conta_mesa.pas' {conta_mesa},
  C_pedidos in 'C_pedidos.pas' {pedidos_mesa},
  C_reserva in '..\..\Delphi\C_reserva.pas' {reserva_mesa},
  C_conta_cliente in '..\..\Delphi\C_conta_cliente.pas' {conta_cliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TInicial, Inicial);
  Application.CreateForm(Tcadastro_de_clientes, cadastro_de_clientes);
  Application.CreateForm(Tconta_mesa, conta_mesa);
  Application.CreateForm(Tpedidos_mesa, pedidos_mesa);
  Application.CreateForm(Treserva_mesa, reserva_mesa);
  Application.CreateForm(Tconta_cliente, conta_cliente);
  Application.Run;
end.
