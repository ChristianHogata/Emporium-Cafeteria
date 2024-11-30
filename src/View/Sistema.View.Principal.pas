unit Sistema.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Sistema.View.Produtos, Sistema.View.Clientes, Sistema.View.Pedidos,
  Sistema.View.CadastroComplementos,
  Sistema.Crontroller.Interfaces, Sistema.Controller.Entidade;

type
  Tfrm_principal = class(TForm)
    pnlMenu: TPanel;
    pnlTopo: TPanel;
    lbNomeSistema: TLabel;
    btnFechar: TSpeedButton;
    btnUsuarios: TSpeedButton;
    PnlBotaoProdutos: TPanel;
    ImgBotaoProdutos: TImage;
    LblBotaoProdutos: TLabel;
    PnlBotaoPedidos: TPanel;
    ImgBotaoPedidos: TImage;
    LblBotaoPedidos: TLabel;
    Panel1: TPanel;
    pnlPrincipal: TPanel;
    PnlBotaoClientes: TPanel;
    ImgBotaoClientes: TImage;
    LblBotaoClientes: TLabel;
    PnlBotaoComplementos: TPanel;
    ImgBotaoComplementos: TImage;
    lblBotaoComplementos: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure ImgBotaoClientesClick(Sender: TObject);
    procedure ImgBotaoProdutosClick(Sender: TObject);
    procedure ImgBotaoPedidosClick(Sender: TObject);
    procedure ImgBotaoPedidosMouseEnter(Sender: TObject);
    procedure ImgBotaoPedidosMouseLeave(Sender: TObject);
    procedure ImgBotaoProdutosMouseEnter(Sender: TObject);
    procedure ImgBotaoProdutosMouseLeave(Sender: TObject);
    procedure ImgBotaoClientesMouseLeave(Sender: TObject);
    procedure ImgBotaoClientesMouseEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImgBotaoComplementosClick(Sender: TObject);
    procedure PnlBotaoComplementosMouseEnter(Sender: TObject);
    procedure PnlBotaoComplementosMouseLeave(Sender: TObject);
  private
    { Private declarations }
    FFrm_Consulta_Produto: Tfrm_consulta_produto;
    FFrm_Consulta_Pedidos: Tfrm_consulta_pedidos;
    FFrm_Consulta_Clientes: Tfrm_consulta_clientes;
    FFrm_Consulta_Complementos: Tfrm_consulta_complementos;
  public
    { Public declarations }
  end;

  var
    frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

procedure Tfrm_principal.btnFecharClick(Sender: TObject);
begin
  Close();
  Application.Terminate;
end;

procedure Tfrm_principal.FormDestroy(Sender: TObject);
begin
  FFrm_Consulta_Produto.Free;
  FFrm_Consulta_Pedidos.Free;
  FFrm_Consulta_Clientes.Free;
end;

procedure Tfrm_principal.ImgBotaoClientesClick(Sender: TObject);
begin
  if not Assigned(FFrm_Consulta_Clientes) then
   FFrm_Consulta_Clientes := Tfrm_consulta_clientes.Create(nil);

  FFrm_Consulta_Clientes.AtualizarGrid;
  FFrm_Consulta_Clientes.Parent := pnlPrincipal;
  FFrm_Consulta_Clientes.Show();
end;

procedure Tfrm_principal.ImgBotaoPedidosClick(Sender: TObject);
begin
  if not Assigned(FFrm_Consulta_Pedidos) then
   FFrm_Consulta_Pedidos := Tfrm_consulta_pedidos.Create(nil);

  FFrm_Consulta_Pedidos.AtualizarGrid;
  FFrm_Consulta_Pedidos.Parent := pnlPrincipal;
  FFrm_Consulta_Pedidos.Show();
end;

procedure Tfrm_principal.ImgBotaoProdutosClick(Sender: TObject);
begin
  if not Assigned(FFrm_Consulta_Produto) then
   FFrm_Consulta_Produto := Tfrm_consulta_produto.Create(nil);

  FFrm_Consulta_Produto.AtualizarGrid;
  FFrm_Consulta_Produto.Parent := pnlPrincipal;
  FFrm_Consulta_Produto.Show();
end;

procedure Tfrm_principal.ImgBotaoComplementosClick(Sender: TObject);
begin
  if not Assigned(FFrm_Consulta_Complementos) then
    FFrm_Consulta_Complementos := Tfrm_consulta_complementos.Create(nil);

  FFrm_Consulta_Complementos.AtualizarGrid;
  FFrm_Consulta_Complementos.Parent := pnlPrincipal;
  FFrm_Consulta_Complementos.Show();
end;

procedure Tfrm_principal.PnlBotaoComplementosMouseEnter(Sender: TObject);
begin
  PnlBotaoComplementos.Color := $00F54B7A;
end;

procedure Tfrm_principal.PnlBotaoComplementosMouseLeave(Sender: TObject);
begin
  PnlBotaoComplementos.Color := $00F87498;
end;

procedure Tfrm_principal.ImgBotaoPedidosMouseEnter(Sender: TObject);
begin
  PnlBotaoPedidos.Color := $00F54B7A;
end;

procedure Tfrm_principal.ImgBotaoPedidosMouseLeave(Sender: TObject);
begin
  PnlBotaoPedidos.Color := $00F87498;
end;

procedure Tfrm_principal.ImgBotaoProdutosMouseEnter(Sender: TObject);
begin
  PnlBotaoProdutos.Color := $00F54B7A;
end;

procedure Tfrm_principal.ImgBotaoProdutosMouseLeave(Sender: TObject);
begin
  PnlBotaoProdutos.Color := $00F87498;
end;

procedure Tfrm_principal.ImgBotaoClientesMouseEnter(Sender: TObject);
begin
  PnlBotaoClientes.Color := $00F54B7A;
end;

procedure Tfrm_principal.ImgBotaoClientesMouseLeave(Sender: TObject);
begin
  PnlBotaoClientes.Color := $00F87498;
end;

end.
