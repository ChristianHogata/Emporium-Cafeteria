unit Sistema.View.ExibicaoListaDePedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmExibicaoPedido = class(TForm)
    pnlImpressaoPedidoExibicao: TPanel;
    memoPedido: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FLista: TStringList;
  public
    { Public declarations }
    procedure DefinirListaDePedidos(pLista: TStringList);
  end;

var
  frmExibicaoPedido: TfrmExibicaoPedido;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmExibicaoPedido.DefinirListaDePedidos(pLista: TStringList);
begin
  FLista := pLista;
end;

procedure TfrmExibicaoPedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmExibicaoPedido.FormShow(Sender: TObject);
begin
  if not Assigned(FLista) then
    close;

  memoPedido.Lines.AddStrings(FLista);
end;

end.
