program Projeto_PLP;

uses
  Forms,
  Inicial in 'Inicial.pas' {Inicio},
  Cadastro_C in 'Cadastro_C.pas' {cadastro_cliente},
  reservar_mesa in 'reservar_mesa.pas' {reserva_mesa},
  C_realizar_pedido in 'C_realizar_pedido.pas' {realizar_pedido},
  C_mod_cadastro in 'C_mod_cadastro.pas' {mod_cadastro},
  C_fechamento in 'C_fechamento.pas' {fechamento},
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TInicio, Inicio);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
