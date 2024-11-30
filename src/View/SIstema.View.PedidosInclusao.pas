unit SIstema.View.PedidosInclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_pedidos_inclusao = class(TForm)
    EdtDescricao: TDBEdit;
    LblDescricao: TLabel;
    LblQuantidade: TLabel;
    EdtQuantidade: TDBEdit;
    BtnPesquisaProdutos: TSpeedButton;
    DBGridPesquisaProdutos: TDBGrid;
    PnlAdicionar: TPanel;
    PnlCancelar: TPanel;
    LblTituloCadastro: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pedidos_inclusao: Tfrm_pedidos_inclusao;

implementation

{$R *.dfm}

end.
