unit Sistema.View.TelaPesquisaComplementos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Sistema.Crontroller.Interfaces, Vcl.NumberBox, Datasnap.DBClient;

type
  TFrmTelaPesquisaComplementos = class(TForm)
    pnlCadastroComplementosPedidosItens: TPanel;
    pnlInformacoesCadastro: TPanel;
    PnlTopoCadastro: TPanel;
    LblTituloCadastro: TLabel;
    PnlSeparaCadastro1: TPanel;
    PnlSeparaCadastro2: TPanel;
    PnlBotoesRodape: TPanel;
    PnlCancelar: TPanel;
    pnlSalvar: TPanel;
    pnlListaComplementosItens: TPanel;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    BtnExcluir: TSpeedButton;
    BtnInserir: TSpeedButton;
    BtnPesquisaProdutos: TSpeedButton;
    edtIdComplemento: TEdit;
    lblDescricaoComplemento: TLabel;
    pnlGrid: TPanel;
    dbgComplementos: TDBGrid;
    lblIdComplemento: TLabel;
    edtDescricaoComplemento: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtIdProduto: TEdit;
    edtDescricaoProduto: TEdit;
    edtQuantidade: TNumberBox;
    lbTotal: TLabel;
    edtTotal: TNumberBox;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure pnlSalvarClick(Sender: TObject);
    procedure BtnPesquisaProdutosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PnlCancelarClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure dbgComplementosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FControllerEntidade: IControllerEntidade;
    FDataSourceComplementoPedidosItens: TDataSource;
    FDataSourceComplemento: TDataSource;
    FIdProduto: Integer;
    FDescricaoProduto: string;
    FIdPedido_Item: Integer;
    FDescricao: string;
    FCdsPedidosComplementos: TClientDataSet;
    procedure CarregarGridComplementoPedidosItens;
    procedure HabilitarDesabilitarPainel;
    procedure calcularTotal;
    procedure SetDescricao(const Value: string);
    procedure SetIdPedidoItem(const Value: Integer);
    procedure SetIdProduto(const Value: Integer);
    procedure SetCdsPedidosComplementos(const Value: TClientDataSet);
  public
    { Public declarations }
    function ObterDataSetAtualizado: TClientDataSet;
    property IdPedidoItem: Integer read FIdPedido_Item write SetIdPedidoItem;
    property Descricao: string read FDescricao write SetDescricao;
    property IdProduto: Integer read FIdProduto write SetIdProduto;
    property CdsPedidosComplementos: TClientDataSet read FCdsPedidosComplementos write SetCdsPedidosComplementos;
  end;

var
  FrmTelaPesquisaComplementos: TFrmTelaPesquisaComplementos;

implementation

uses
  Sistema.Controller.Entidade, System.TypInfo, System.JSON,
  Sistema.View.TelaDePesquisa, Sistema.View.Helpers.TColumn;

{$R *.dfm}

procedure TFrmTelaPesquisaComplementos.BtnEditarClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();
  FDataSourceComplementoPedidosItens.DataSet.Edit;
end;

procedure TFrmTelaPesquisaComplementos.BtnExcluirClick(Sender: TObject);
begin
  FDataSourceComplementoPedidosItens.DataSet.Delete;
end;

procedure TFrmTelaPesquisaComplementos.BtnInserirClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();
  FDataSourceComplementoPedidosItens.DataSet.Insert;
end;

procedure TFrmTelaPesquisaComplementos.BtnPesquisaProdutosClick(Sender: TObject);
var
  lFormulario: TFrmTelaPesquisa;
begin
  FDataSourceComplemento.DataSet := TDataSet(FControllerEntidade.Complementos.Listar());

  lFormulario := TFrmTelaPesquisa.Create(nil);
  try
    lFormulario.TipoTela := tpComplementos;
    lFormulario.ShowModal();

    TClientDataSet(FDataSourceComplemento.Dataset).IndexName := 'IdxId';
    TClientDataSet(FDataSourceComplemento.Dataset).FindKey([lFormulario.id]);
    TClientDataSet(FDataSourceComplemento.Dataset).IndexName := 'IdxDescricao';

    edtDescricaoComplemento.Text := FDataSourceComplemento.DataSet.FieldByName('descricao').AsString;
    edtIdComplemento.Text := FDataSourceComplemento.DataSet.FieldByName('id').AsString;
  finally
    lFormulario.Free();
  end;

  calcularTotal();
end;

procedure TFrmTelaPesquisaComplementos.btnSomarClick(Sender: TObject);
begin
  calcularTotal();
end;

procedure TFrmTelaPesquisaComplementos.calcularTotal;
begin
  edtTotal.value := FDataSourceComplemento.DataSet.FieldByName('valor').AsFloat * edtQuantidade.Value;
end;

procedure TFrmTelaPesquisaComplementos.CarregarGridComplementoPedidosItens;
begin
  dbgComplementos.DataSource := FDataSourceComplementoPedidosItens;
end;

procedure TFrmTelaPesquisaComplementos.dbgComplementosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Column.AdicionarFormatacaoFloat(Column);

  if not Odd(FDataSourceComplementoPedidosItens.DataSet.RecNo) and not(gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
    end;

    if gdSelected in State then
      (Sender as TDBGrid).Canvas.Brush.Color := $00F8769A;

      (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmTelaPesquisaComplementos.FormCreate(Sender: TObject);
begin
  FDataSourceComplementoPedidosItens := TDataSource.Create(nil);
  FDataSourceComplemento := TDataSource.Create(nil);

  FControllerEntidade := TControllerEntidade.new();
end;

procedure TFrmTelaPesquisaComplementos.FormDestroy(Sender: TObject);
begin
  FDataSourceComplemento.Free;
  FDataSourceComplementoPedidosItens.Free;
end;

procedure TFrmTelaPesquisaComplementos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    HabilitarDesabilitarPainel();
    FDataSourceComplementoPedidosItens.DataSet.Insert;
  end;
end;

procedure TFrmTelaPesquisaComplementos.FormShow(Sender: TObject);
begin
  edtIdProduto.Text := intToStr(FIdProduto);
  edtDescricaoProduto.Text := FDescricao;

  FDataSourceComplementoPedidosItens.DataSet := FCdsPedidosComplementos;

  FCdsPedidosComplementos.Filtered := False;

  if FCdsPedidosComplementos.RecordCount <> 0 then
    begin
      FCdsPedidosComplementos.DisableControls;
      try
        FCdsPedidosComplementos.Filter := Format('id_pedido_item = %d', [FIdPedido_Item]);
        FCdsPedidosComplementos.Filtered := True;
      finally
        FCdsPedidosComplementos.EnableControls;
      end;

    end;

  CarregarGridComplementoPedidosItens();
end;

procedure TFrmTelaPesquisaComplementos.HabilitarDesabilitarPainel;
begin
    if pnlListaComplementosItens.Enabled then
    begin
      pnlCadastroComplementosPedidosItens.Enabled := true;
      pnlCadastroComplementosPedidosItens.Visible := true;
      pnlListaComplementosItens.Enabled := false;
      pnlListaComplementosItens.Visible := false;
    end
  else
    begin
      pnlCadastroComplementosPedidosItens.Enabled := false;
      pnlCadastroComplementosPedidosItens.Visible := false;
      pnlListaComplementosItens.Enabled := true;
      pnlListaComplementosItens.Visible := true;
    end;
end;

function TFrmTelaPesquisaComplementos.ObterDataSetAtualizado: TClientDataSet;
begin
  Result := FCdsPedidosComplementos;
end;

procedure TFrmTelaPesquisaComplementos.PnlCancelarClick(Sender: TObject);
begin
  FCdsPedidosComplementos.Cancel;
  edtTotal.Value := 0;
  HabilitarDesabilitarPainel();
  FDataSourceComplemento.DataSet := nil;
end;

procedure TFrmTelaPesquisaComplementos.pnlSalvarClick(Sender: TObject);
begin
  if not (FCdsPedidosComplementos.State in [DsInsert, DsEdit]) then
    Exit;

  FCdsPedidosComplementos.FieldByName('id_complemento').AsInteger := FDataSourceComplemento.DataSet.FieldByName('id').AsInteger;
  FCdsPedidosComplementos.FieldByName('quantidade').AsFloat := edtQuantidade.Value;
  FCdsPedidosComplementos.FieldByName('valor_total').AsFloat := (edtQuantidade.Value * edtTotal.Value);
  FCdsPedidosComplementos.FieldByName('id_produto').AsInteger := FIdProduto;
  FCdsPedidosComplementos.FieldByName('id_pedido_item').AsInteger := FIdPedido_Item;
  FCdsPedidosComplementos.FieldByName('descricao').AsString := edtDescricaoComplemento.Text;

  FCdsPedidosComplementos.Post;

  edtTotal.Value := 0;
  FDataSourceComplemento.DataSet := nil;

  HabilitarDesabilitarPainel();
end;

procedure TFrmTelaPesquisaComplementos.SetCdsPedidosComplementos(const Value: TClientDataSet);
begin
  FCdsPedidosComplementos := Value;
end;

procedure TFrmTelaPesquisaComplementos.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TFrmTelaPesquisaComplementos.SetIdPedidoItem(const Value: Integer);
begin
  FIdPedido_Item := Value;
end;

procedure TFrmTelaPesquisaComplementos.SetIdProduto(const Value: Integer);
begin
  FIdProduto := Value;
end;

end.
