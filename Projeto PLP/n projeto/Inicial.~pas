unit Inicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TInicio = class(TForm)
    MainMenu1: TMainMenu;
    Funes1: TMenuItem;
    AddCliente1: TMenuItem;
    Modificar1: TMenuItem;
    Mesa1: TMenuItem;
    Reservar1: TMenuItem;
    Pedido1: TMenuItem;
    Realizar1: TMenuItem;
    Fechamento1: TMenuItem;
    Sobre1: TMenuItem;
    Label1: TLabel;
    procedure AddCliente1Click(Sender: TObject);
    procedure Reservar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Realizar1Click(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure Fechamento1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inicio: TInicio;

implementation

uses Cadastro_C, reservar_mesa, C_realizar_pedido, C_mod_cadastro,
  C_fechamento, Unit1;

{$R *.dfm}

procedure TInicio.AddCliente1Click(Sender: TObject);
begin
cadastro_cliente := Tcadastro_cliente.Create(Application);
inicio.Free;
cadastro_cliente.ShowModal;
end;

procedure TInicio.Reservar1Click(Sender: TObject);
begin
reserva_mesa := Treserva_mesa.Create(Application);
inicio.Free;
reserva_mesa.ShowModal;
end;

procedure TInicio.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TInicio.Realizar1Click(Sender: TObject);
begin
realizar_pedido:= Trealizar_pedido.Create(Application);
inicio.Free;
realizar_pedido.showmodal;
end;

procedure TInicio.Modificar1Click(Sender: TObject);
begin
mod_cadastro := Tmod_cadastro.create(application);
inicio.Free;
mod_cadastro.showmodal;
end;

procedure TInicio.Fechamento1Click(Sender: TObject);
begin
fechamento := Tfechamento.create(application);
inicio.Free;
fechamento.showmodal;
end;

procedure TInicio.Sobre1Click(Sender: TObject);
begin
form1.show;
end;

end.
