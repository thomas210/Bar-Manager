unit C_conta_mesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  Tconta_mesa = class(TForm)
    Conta: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button4: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    b_voltar: TButton;
    procedure Button4Click(Sender: TObject);
    procedure b_voltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  conta_mesa: Tconta_mesa;

implementation

{$R *.dfm}

procedure Tconta_mesa.Button4Click(Sender: TObject);
begin
conta_mesa.Close;

end;

procedure Tconta_mesa.b_voltarClick(Sender: TObject);
begin
conta_mesa.Close;
end;

end.
