unit Sistema.View.Pedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Sistema.Crontroller.Interfaces,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Sistema.Controller.Entidade,
  Vcl.NumberBox, System.JSON, Datasnap.DBClient, Vcl.ComCtrls, Sistema.View.Mensagens,
  Vcl.Menus, Sistema.View.TelaPesquisaComplementos, Sistema.Controller.DBGrid;

type
  TTipoTela = (tpInsert, tpConsulta);

  Tfrm_consulta_pedidos = class(TForm)
    pnlListaPedidos: TPanel;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlGrid: TPanel;
    dbgRegistros: TDBGrid;
    BtnCancelar: TSpeedButton;
    BtnInserir: TSpeedButton;
    pnlCadastroPedido: TPanel;
    pnlInformacoesCadastroClientes: TPanel;
    LblNome: TLabel;
    lblCodigoPedido: TLabel;
    edtNome: TDBEdit;
    edtCodigoPedido: TDBEdit;
    pnlInformacoesPedido: TPanel;
    PnlTopoCadastro: TPanel;
    LblTituloCadastro: TLabel;
    PnlSeparaCadastro1: TPanel;
    PnlSeparaCadastro2: TPanel;
    PnlBotoes: TPanel;
    PnlCancelar: TPanel;
    PnlFinalizar: TPanel;
    DBGridListaPedidosItens: TDBGrid;
    lblProduto: TLabel;
    edtDescricao: TDBEdit;
    BtnPesquisarProdutos: TSpeedButton;
    BtnExcluirProdutoPedido: TSpeedButton;
    pnlInformacoesCadastroEnderecoClientes: TPanel;
    lbEndereco: TLabel;
    lbNumero: TLabel;
    lbBairro: TLabel;
    lbCidade: TLabel;
    lbUf: TLabel;
    lbCep: TLabel;
    lbReferencia: TLabel;
    edtEndereco: TDBEdit;
    edtNumero: TDBEdit;
    edtBairro: TDBEdit;
    edtCidade: TDBEdit;
    edtUf: TDBEdit;
    edtCep: TDBEdit;
    edtReferencia: TDBEdit;
    lbQuantidade: TLabel;
    btnIncluirProduto: TSpeedButton;
    edtQuantidade: TNumberBox;
    pnlValoresPedido: TPanel;
    lblTotal: TLabel;
    edtTotal: TNumberBox;
    lblValorPago: TLabel;
    edtValorPago: TNumberBox;
    lblTroco: TLabel;
    edtTroco: TNumberBox;
    edtConsulta: TEdit;
    BtnPesquisaFornecedores: TSpeedButton;
    LblDataInicial: TLabel;
    DTPDataInicial: TDateTimePicker;
    LblDataFinal: TLabel;
    DTPDataFinal: TDateTimePicker;
    BtnPesquisaClientes: TSpeedButton;
    PopupMenuComplemento: TPopupMenu;
    AdicionarComplemento1: TMenuItem;
    comboTipoFiltro: TComboBox;
    lblTipoFiltro: TLabel;
    lblConsultas: TLabel;
    pnlMemoPedidos: TPanel;
    memoPedidos: TMemo;
    btnVisualizar: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnLimparFiltros: TSpeedButton;
    btnReimprimir: TSpeedButton;
    cbFormaPagamento: TComboBox;
    lbFormaPagamento: TLabel;
    edtSobrenome: TDBEdit;
    lbSobrenome: TLabel;
    procedure BtnInserirClick(Sender: TObject);
    procedure PnlCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnPesquisaClientesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPesquisarProdutosClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure btnIncluirProdutoClick(Sender: TObject);
    procedure BtnExcluirProdutoPedidoClick(Sender: TObject);
    procedure PnlFinalizarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure edtValorPagoExit(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure dbgRegistrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaPedidosItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AdicionarComplemento1Click(Sender: TObject);
    procedure comboTipoFiltroChange(Sender: TObject);
    procedure BtnPesquisaFornecedoresClick(Sender: TObject);
    procedure edtConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVisualizarClick(Sender: TObject);
    procedure AtualizarGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFormaPagamentoChange(Sender: TObject);
  private
    { Private declarations }
    FControllerEntidade: IControllerEntidade;
    FDataSourcePedidos: TDataSource;
    FDataSourcePedidosItensGrid: TDataSource;
    FDataSourceClientes: TDataSource;
    FDataSourceEnderecos: TDataSource;
    FDataSourceSetProdutos: TDataSource;
    FClientDataSetPedidos: TClientDataSet;
    FClientDataSetPedidosItens: TClientDataSet;
    FClientDataSetPedidosItensGrid: TClientDataSet;
    FClientDataSetPedidosItensComplementos: TClientDataSet;
    FClientDataSetClientes: TClientDataSet;
    FClientDataSetProdutos: TClientDataSet;
    FClientDataSetProdutosComplementos: TClientDataSet;
    FClientDataSetEnderecos: TClientDataSet;
    FPedidosItensClientDataSetGrid: TClientDataSet;
    FClientDataSetComplementosPedidosItensGrid: TClientDataSet;
    FCashCliente: TClientDataSet;
    FTipoTela: TTipoTela;
    FFrmPedidosComplemento: TFrmTelaPesquisaComplementos;
    FListaImpressaoPedidos: TStringList;
    FControllerDBGrid: IControllerDBGrid;
    FImpressora1: string;
    FImpressora2: string;
    procedure CarregarGridPedidos;
    procedure LimparCamposPedidos;
    procedure LimparCamposClientes;
    procedure LimparCamposProdutos;
    procedure AlimentarCamposClientes;
    procedure AlimentarCamposEnderecoClientes;
    procedure HabilitarDesabilitarPainel;
    procedure HabilitarDesabilitarModoConsulta;
    procedure CalcularTotal;
    procedure AtualizarMemoImpressao(pCdsPedidosItensComplementos: TClientDataSet; pCdsPedidosItens: TClientDataSet);
    procedure CalcularTroco;
    procedure CriarDataSetPedidosItens;
    procedure AdicionarProdutoNoGrid;
    procedure AplicarFiltro;
    procedure DefinirNomeClientesNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DefinirNomeUsuarioNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DefinirFormaPagamentoNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DefinirStatusNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ConsultaCaixa;
    procedure CriarDataSetComplementosPedidosItens;
    procedure InserirPedido;
    procedure VisualizarMemo;
    procedure LimparFiltros;
    procedure DefinrNomeImpressora;
    procedure CancelarPedido;
  public
    { Public declarations }
  end;

var
  frm_consulta_pedidos: Tfrm_consulta_pedidos;

implementation

uses
  Sistema.Controller.Entidades.Factory, System.TypInfo, System.Generics.Collections,
  Sistema.View.TelaDePesquisa, Sistema.Controllers.Helpers.DBEdit,
  Sistema.View.Helpers.TColumn, Sistema.View.ExibicaoListaDePedidos, ACBrPosPrinter,
  System.DateUtils, System.SysUtils, System.IniFiles, Sistema.Model.Conexao;

{$R *.dfm}


{ Tfrm_consulta_pedidos }

procedure Tfrm_consulta_pedidos.AdicionarComplemento1Click(Sender: TObject);
var
  lvalorTotalComplemento: Double;
  lFrmPedidosComplemento: TFrmTelaPesquisaComplementos;
begin
  lvalorTotalComplemento := 0;

  if FTipoTela = tpConsulta then
    Exit;

  if FPedidosItensClientDataSetGrid.RecordCount = 0 then
    Exit;

  FClientDataSetProdutos.IndexName := 'IdxId';
  FClientDataSetProdutos.Findkey([FPedidosItensClientDataSetGrid.FieldByName('id_produto').AsInteger]);
  FClientDataSetProdutos.IndexName := 'IdxDescricao';

  if FClientDataSetProdutos.FieldByName('possui_complemento').AsInteger = 0 then
    if Tfrm_mensagem.CriarMensagem(tpAviso, 'Este produto não pode receber complementos, para alterar, acesse seu cadastro!') then
      Exit;

  lFrmPedidosComplemento := TFrmTelaPesquisaComplementos.create(nil);
  try
    lFrmPedidosComplemento.IdProduto := FClientDataSetProdutos.FieldByName('id').AsInteger;
    lFrmPedidosComplemento.Descricao := FClientDataSetProdutos.FieldByName('descricao').AsString;
    lFrmPedidosComplemento.IdPedidoItem := FPedidosItensClientDataSetGrid.FieldByName('id').AsInteger;
    lFrmPedidosComplemento.CdsPedidosComplementos := FClientDataSetComplementosPedidosItensGrid;
    lFrmPedidosComplemento.ShowModal();
  finally
    lFrmPedidosComplemento.Free;
  end;

  FClientDataSetComplementosPedidosItensGrid.DisableControls;
  try
    FClientDataSetComplementosPedidosItensGrid.Filter := Format('id_pedido_item = %d', [FPedidosItensClientDataSetGrid.FieldByName('id').AsInteger]);
    FClientDataSetComplementosPedidosItensGrid.Filtered := true;

    FClientDataSetComplementosPedidosItensGrid.First;
    while not FClientDataSetComplementosPedidosItensGrid.EOF do
    begin
      lvalorTotalComplemento := lvalorTotalComplemento + FClientDataSetComplementosPedidosItensGrid.FieldByName('valor_total').AsFloat;
      FClientDataSetComplementosPedidosItensGrid.Next;
    end;

  finally
    FClientDataSetComplementosPedidosItensGrid.Filtered := false;
    FClientDataSetComplementosPedidosItensGrid.EnableControls;
  end;

  FPedidosItensClientDataSetGrid.Edit;
  FPedidosItensClientDataSetGrid.FieldByName('valor_total').AsFloat := (FClientDataSetProdutos.FieldByName('preco_venda').AsFloat * edtQuantidade.value) + lvalorTotalComplemento;
  FPedidosItensClientDataSetGrid.Post;

  CalcularTotal();
  CalcularTroco();
  AtualizarMemoImpressao(FClientDataSetComplementosPedidosItensGrid, FPedidosItensClientDataSetGrid);
  FPedidosItensClientDataSetGrid.Last;
end;

procedure Tfrm_consulta_pedidos.AdicionarProdutoNoGrid;
var
  lid: integer;
begin
  lid := FPedidosItensClientDataSetGrid.RecordCount;

  FClientDataSetPedidosItens.DisableControls;
  try
    FClientDataSetPedidosItens.Filter := Format('id_pedido = %d', [FDataSourcePedidos.DataSet.FieldByName('id').AsInteger]);
    FClientDataSetPedidosItens.Filtered := true;

    FClientDataSetProdutos.IndexName := 'IdxId';

    if FClientDataSetPedidosItens.RecordCount = 0 then
      Exit;

    FClientDataSetPedidosItens.First;
    while not FClientDataSetPedidosItens.Eof do
      begin
        FClientDataSetProdutos.FindKey([FClientDataSetPedidosItens.FieldByName('id_produto').AsInteger]);
        Inc(lid);
        FPedidosItensClientDataSetGrid.Append;
        FPedidosItensClientDataSetGrid.FieldByName('id').AsInteger := lid;
        FPedidosItensClientDataSetGrid.FieldByName('id_produto').AsInteger := FClientDataSetPedidosItens.FieldByName('id_produto').AsInteger;
        FPedidosItensClientDataSetGrid.FieldByName('descricao').AsString := FClientDataSetProdutos.FieldByName('descricao').AsString;
        FPedidosItensClientDataSetGrid.FieldByName('quantidade').AsFloat := FClientDataSetPedidosItens.FieldByName('quantidade').AsFloat;
        FPedidosItensClientDataSetGrid.FieldByName('valor_unitario').AsFloat := FClientDataSetProdutos.FieldByName('preco_venda').AsFloat;
        FPedidosItensClientDataSetGrid.FieldByName('valor_total').AsFloat := FClientDataSetPedidosItens.FieldByName('valor_total').AsFloat;
        FPedidosItensClientDataSetGrid.Post;

        FClientDataSetPedidosItens.Next;
      end;

    FClientDataSetProdutos.IndexName := 'IdxDescricao';

  finally
    FClientDataSetPedidosItens.Filtered := False;
    FClientDataSetPedidosItens.EnableControls;
  end;
end;

procedure Tfrm_consulta_pedidos.AlimentarCamposClientes;
begin
  for Var I := 0 to Pred(Self.pnlInformacoesCadastroClientes.ControlCount) do
    begin
      if Self.pnlInformacoesCadastroClientes.Controls[I] is TDBEdit then
        begin
          Var PropInfo := GetPropInfo(Self.pnlInformacoesCadastroClientes.Controls[I], 'DataSource');

          if PropInfo <> nil then
          begin
            SetObjectProp(Self.pnlInformacoesCadastroClientes.Controls[I], PropInfo, Self.FDataSourceClientes);
          end;
        end;
    end;
end;

procedure Tfrm_consulta_pedidos.AlimentarCamposEnderecoClientes;
begin
  for Var I := 0 to Pred(Self.pnlInformacoesCadastroEnderecoClientes.ControlCount) do
    begin
      if Self.pnlInformacoesCadastroEnderecoClientes.Controls[I] is TDBEdit then
        begin
          Var PropInfo := GetPropInfo(Self.pnlInformacoesCadastroEnderecoClientes.Controls[I], 'DataSource');

          if PropInfo <> nil then
          begin
            SetObjectProp(Self.pnlInformacoesCadastroEnderecoClientes.Controls[I], PropInfo, Self.FDataSourceEnderecos);
          end;
        end;
    end;
end;

procedure Tfrm_consulta_pedidos.AplicarFiltro;
begin
  if (edtConsulta.Text = '') and (comboTipoFiltro.ItemIndex = 0) then
    begin
      Exit;
    end;

  case comboTipoFiltro.ItemIndex of
   0: FControllerDBGrid.AplicarFiltro(Format('id = %d ', [strToIntDef(Trim(edtConsulta.Text), 0)]));

   1: FControllerDBGrid.AplicarFiltro(Format('data_pedido >= %s and data_pedido <= %s ', [QuotedStr(formatdatetime('dd/mm/yyyy 00:00:00', DTPDataInicial.DateTime)), QuotedStr(formatdatetime('dd/mm/yyyy 23:59:00', DTPDataFinal.DateTime))]));
  end;
end;

procedure Tfrm_consulta_pedidos.AtualizarGrid;
begin
  FDataSourcePedidos.DataSet.Refresh;
end;

procedure Tfrm_consulta_pedidos.AtualizarMemoImpressao(pCdsPedidosItensComplementos: TClientDataSet; pCdsPedidosItens: TClientDataSet);
var
  I: Integer;
begin
  memoPedidos.Clear;
  FListaImpressaoPedidos.Clear;

  if FDataSourcePedidos.State = dsInsert then
    begin
      FListaImpressaoPedidos.Add(Format('Data/Hora: %s', [formatDateTime('DD/MM/YYYY hh:mm:ss', Now())]));
      FListaImpressaoPedidos.Add(Format('PEDIDO %s', [intToStr(FControllerEntidade.Pedidos.ObterUltimoId() + 1)]));
    end
  else
    begin
      FListaImpressaoPedidos.Add(Format('Data/Hora: %s', [formatDateTime('DD/MM/YYYY hh:mm:ss', FDataSourcePedidos.DataSet.FieldByName('data_pedido').AsDateTime)]));

      if FDataSourcePedidos.DataSet.FieldByName('status_pedido').AsInteger = 2 then
        FListaImpressaoPedidos.Add(Format('PEDIDO CANCELADO %s', [FDataSourcePedidos.DataSet.FieldByName('id').AsString]))
      else
        FListaImpressaoPedidos.Add(Format('CÓPIA PEDIDO %s', [FDataSourcePedidos.DataSet.FieldByName('id').AsString]))
    end;

  FListaImpressaoPedidos.Add('--------------------');
  FListaImpressaoPedidos.Add(Format('Cliente: %s %s ', [edtNome.Text, edtSobrenome.Text]));
  FListaImpressaoPedidos.Add('');
  FListaImpressaoPedidos.Add(Format('Endereço: %s %s %s %s %s %s %s', [edtEndereco.text, edtNumero.Text, edtBairro.Text, edtCidade.Text, edtUf.Text, edtCep.Text, edtReferencia.Text]));
  FListaImpressaoPedidos.Add('');
  FListaImpressaoPedidos.Add('--------------------');
  FListaImpressaoPedidos.Add('Itens:');

  I := 0;

  pCdsPedidosItens.DisableControls;
  try
    if FTipoTela = tpConsulta then
      begin
        pCdsPedidosItens.Filter := Format('id_pedido = %d', [FDataSourcePedidos.DataSet.FieldByName('id').AsInteger]);
        pCdsPedidosItens.Filtered := true;
      end;

    FClientDataSetProdutos.IndexName := 'IdxId';

    pCdsPedidosItens.First;
    while not pCdsPedidosItens.Eof do
      begin
        Inc(I);

        FClientDataSetProdutos.FindKey([pCdsPedidosItens.FieldByName('id_produto').AsString]);

        FListaImpressaoPedidos.Add(Format('%s-UN %s - R$ %s', [pCdsPedidosItens.FieldByName('quantidade').AsString, FClientDataSetProdutos.FieldByName('Descricao').AsString, FormatFloat('0.00', (FClientDataSetProdutos.FieldByName('preco_venda').AsFloat * pCdsPedidosItens.FieldByName('quantidade').AsFloat))]));

        if pCdsPedidosItensComplementos.Active then
          begin
            pCdsPedidosItensComplementos.DisableControls;
            try
              pCdsPedidosItensComplementos.Filter := Format('id_pedido_item = %d', [pCdsPedidosItens.FieldByName('id').AsInteger]);
              pCdsPedidosItensComplementos.Filtered := true;

              pCdsPedidosItensComplementos.First;
              while not pCdsPedidosItensComplementos.EOF do
                begin

                  FClientDataSetProdutosComplementos.FindKey([pCdsPedidosItensComplementos.FieldByName('id_complemento').AsInteger]);

                  FListaImpressaoPedidos.Add(Format('  %s-UN %s - R$ %s', [pCdsPedidosItensComplementos.FieldByName('quantidade').AsString, FClientDataSetProdutosComplementos.FieldByName('Descricao').AsString, FormatFloat('0.00', pCdsPedidosItensComplementos.FieldByName('valor_total').AsFloat)]));

                  pCdsPedidosItensComplementos.Next;
                end;

              pCdsPedidosItensComplementos.Filtered := false;
            finally
              pCdsPedidosItensComplementos.EnableControls;
            end;
          end;

        FListaImpressaoPedidos.Add('');

        pCdsPedidosItens.Next;
      end;

      FClientDataSetProdutos.IndexName := 'IdxDescricao';
  finally
    pCdsPedidosItens.Filtered := false;
    pCdsPedidosItens.EnableControls;
  end;


  FListaImpressaoPedidos.Add('--------------------');

  case cbFormaPagamento.ItemIndex of
    1:  FListaImpressaoPedidos.Add('Forma de Pagamento: Dinheiro');
    2:  FListaImpressaoPedidos.Add('Forma de Pagamento: Débito');
    3:  FListaImpressaoPedidos.Add('Forma de Pagamento: Crédito');
  end;

  FListaImpressaoPedidos.Add('--------------------');
  FListaImpressaoPedidos.Add(Format('Total: R$ %s', [FormatFloat('0.00', edtTotal.Value)]));
  FListaImpressaoPedidos.Add(Format('Valor Pago: R$ %s', [FormatFloat('0.00', edtValorPago.Value)]));
  FListaImpressaoPedidos.Add(Format('Troco: R$ %s', [FormatFloat('0.00', edtTroco.Value)]));
  FListaImpressaoPedidos.Add('');
  FListaImpressaoPedidos.Add('');

  memoPedidos.Lines.AddStrings(FListaImpressaoPedidos);
end;

procedure Tfrm_consulta_pedidos.BtnCancelarClick(Sender: TObject);
begin
 // ConsultaCaixa();

  if FDataSourcePedidos.DataSet.IsEmpty then
    Exit;

  if FDataSourcePedidos.DataSet.FieldByName('status_pedido').AsInteger = 2 then
    if Tfrm_mensagem.CriarMensagem(tpAviso, 'O pedido já está cancelado!') then
      Exit;

  CancelarPedido();

  FControllerDBGrid.Atualizar;
  AplicarFiltro();
end;

procedure Tfrm_consulta_pedidos.BtnExcluirProdutoPedidoClick(Sender: TObject);
begin
  if not (FDataSourcePedidosItensGrid.DataSet.IsEmpty) then
    begin
        if (FClientDataSetComplementosPedidosItensGrid.Active) then
          begin
            FClientDataSetComplementosPedidosItensGrid.DisableControls;
            try
              FClientDataSetComplementosPedidosItensGrid.Filter := Format('id_pedido_item = %d', [FPedidosItensClientDataSetGrid.FieldByName('id').AsInteger]);
              FClientDataSetComplementosPedidosItensGrid.Filtered := true;

              FClientDataSetComplementosPedidosItensGrid.First;
              while not FClientDataSetComplementosPedidosItensGrid.EOF do
              begin
                FClientDataSetComplementosPedidosItensGrid.Delete;
                FClientDataSetComplementosPedidosItensGrid.Next;
              end;

              FClientDataSetComplementosPedidosItensGrid.Filtered := false;
            finally
              FClientDataSetComplementosPedidosItensGrid.EnableControls;
            end;
          end;

      FPedidosItensClientDataSetGrid.Delete();
      CalcularTotal();
      CalcularTroco();
      AtualizarMemoImpressao(FClientDataSetComplementosPedidosItensGrid, FPedidosItensClientDataSetGrid);
    end;
end;

procedure Tfrm_consulta_pedidos.btnIncluirProdutoClick(Sender: TObject);
var
  lid: integer;
begin
  if edtDescricao.Text = '' then
    Exit;

  lid := FPedidosItensClientDataSetGrid.RecordCount;
  Inc(lid);

  FPedidosItensClientDataSetGrid.Append;
  FPedidosItensClientDataSetGrid.FieldByName('id').AsInteger := lid;
  FPedidosItensClientDataSetGrid.FieldByName('id_produto').AsInteger := FClientDataSetProdutos.FieldByName('id').AsInteger;
  FPedidosItensClientDataSetGrid.FieldByName('descricao').AsString := FClientDataSetProdutos.FieldByName('descricao').AsString;
  FPedidosItensClientDataSetGrid.FieldByName('quantidade').AsFloat := edtQuantidade.value;
  FPedidosItensClientDataSetGrid.FieldByName('valor_unitario').AsFloat := FClientDataSetProdutos.FieldByName('preco_venda').AsFloat;
  FPedidosItensClientDataSetGrid.FieldByName('valor_total').AsFloat := FClientDataSetProdutos.FieldByName('preco_venda').AsFloat * edtQuantidade.value;
  FPedidosItensClientDataSetGrid.Post;

  CalcularTotal();
  CalcularTroco();

  AtualizarMemoImpressao(FClientDataSetComplementosPedidosItensGrid, FPedidosItensClientDataSetGrid);
  FPedidosItensClientDataSetGrid.Last;
end;

procedure Tfrm_consulta_pedidos.BtnInserirClick(Sender: TObject);
begin
  InserirPedido();
end;

procedure Tfrm_consulta_pedidos.BtnLimparFiltrosClick(Sender: TObject);
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_pedidos.BtnPesquisaClientesClick(Sender: TObject);
var
  lFormulario: TFrmTelaPesquisa;
begin

  lFormulario := TFrmTelaPesquisa.Create(nil);
  try
    lFormulario.TipoTela := tpClientes;
    lFormulario.ShowModal();

    FClientDataSetClientes.IndexName := 'IdxId';
    FClientDataSetClientes.FindKey([lFormulario.id]);
    FClientDataSetClientes.IndexName := 'IdxIdNome';
  finally
    lFormulario.Free();
  end;

  FClientDataSetEnderecos.FindKey([FDataSourceClientes.DataSet.FieldByName('id_endereco').AsString]);
  edtCep.AplicarMascaraCEP;
end;

procedure Tfrm_consulta_pedidos.BtnPesquisaFornecedoresClick(Sender: TObject);
begin
  AplicarFiltro();
end;

procedure Tfrm_consulta_pedidos.BtnPesquisarProdutosClick(Sender: TObject);
var
  lFormulario: TFrmTelaPesquisa;
begin
  lFormulario := TFrmTelaPesquisa.Create(nil);
  try
    lFormulario.TipoTela := tpProdutos;
    lFormulario.ShowModal();

    FClientDataSetProdutos.IndexName := 'IdxId';
    FClientDataSetProdutos.FindKey([lFormulario.id]);
    FClientDataSetProdutos.IndexName := 'IdxDescricao';
  finally
    lFormulario.Free();
  end;

  edtDescricao.DataSource := FDataSourceSetProdutos;
end;

procedure Tfrm_consulta_pedidos.btnVisualizarClick(Sender: TObject);
begin
  VisualizarMemo();
end;

procedure Tfrm_consulta_pedidos.CalcularTotal;
var
  lValorTotal: Double;
begin
  lValorTotal := 0;

  FPedidosItensClientDataSetGrid.First;

  while not FPedidosItensClientDataSetGrid.Eof do
    begin
      lValorTotal := lValorTotal +
        FPedidosItensClientDataSetGrid.FieldByName('valor_total').AsFloat;

      FPedidosItensClientDataSetGrid.Next;
    end;

  edtTotal.value := lValorTotal;
end;

procedure Tfrm_consulta_pedidos.CalcularTroco;
var
  lValorTroco: Double;
begin
 lValorTroco := edtValorPago.value - edtTotal.value;

 if lValorTroco < 0 then
  edtTroco.value := 0
 else
  edtTroco.value := lValorTroco;

  if edtTotal.Value = 0 then
    edtTroco.value := 0
end;

procedure Tfrm_consulta_pedidos.CancelarPedido;
var
  lDadosCaixaMovimento: TJSONObject;
  lClientDataSetPedidosItens, lClientDataSetPedidosItensComplementos: TClientDataSet;
begin
    if Tfrm_mensagem.CriarMensagem(tpCancelar, 'Você deseja realmente cancelar este pedido?') then
    begin
      FControllerEntidade.Pedidos.Deletar;

      lClientDataSetPedidosItens := TClientDataSet(FControllerEntidade.PedidosItens.Listar());
      lClientDataSetPedidosItens.DisableControls;
      try
        lClientDataSetPedidosItens.Filter := Format('id_pedido = %d', [FDataSourcePedidos.DataSet.FieldByName('id').AsInteger]);
        lClientDataSetPedidosItens.Filtered := true;

        lClientDataSetPedidosItens.First;
        while not lClientDataSetPedidosItens.Eof do
          begin
            FControllerEntidade.PedidosItens.Deletar;

            lClientDataSetPedidosItensComplementos := TClientDataSet(FControllerEntidade.ComplementosPedidosItens.Listar());
            lClientDataSetPedidosItensComplementos.DisableControls;
            try
              lClientDataSetPedidosItensComplementos.Filter := Format('id_pedido_item = %d', [lClientDataSetPedidosItens.FieldByName('id').AsInteger]);
              lClientDataSetPedidosItensComplementos.Filtered := true;

              lClientDataSetPedidosItensComplementos.First;
              while not lClientDataSetPedidosItensComplementos.EOF do
                begin
                  FControllerEntidade.ComplementosPedidosItens.Deletar;

                  lClientDataSetPedidosItensComplementos.Next;
                end;

            finally
              lClientDataSetPedidosItensComplementos.Filtered := false;
              lClientDataSetPedidosItensComplementos.EnableControls;
            end;

            lClientDataSetPedidosItens.Next;
          end;

      finally
        lClientDataSetPedidosItens.Filtered := false;
        lClientDataSetPedidosItens.EnableControls;
      end;

     { lDadosCaixaMovimento := TJSONObject.Create;
      try
        FControllerEntidade.CaixaMovimento.Inserir;

        lDadosCaixaMovimento.AddPair('tipo_movimento', TJSONString.Create('S'));
        lDadosCaixaMovimento.AddPair('valor_movimento', TJSONNumber.Create(FDataSourcePedidos.DataSet.FieldByName('valor_total').AsFloat));
        lDadosCaixaMovimento.AddPair('id_usuario', TJSONNumber.Create(FControllerEntidade.Login.Id));
        lDadosCaixaMovimento.AddPair('observacao', TJSONString.Create('Cancelamento do pedido - ' + FDataSourcePedidos.DataSet.FieldByName('id').AsString));
        lDadosCaixaMovimento.AddPair('id_FormaPagamento', TJSONNumber.Create(cbFormaPagamento.ItemIndex));

        FControllerEntidade.CaixaMovimento.EnviarDados(lDadosCaixaMovimento);
      finally
        lDadosCaixaMovimento.Free;
      end; }
    end;
end;

procedure Tfrm_consulta_pedidos.CarregarGridPedidos;
begin
  dbgRegistros.DataSource := FDataSourcePedidos;
end;

procedure Tfrm_consulta_pedidos.cbFormaPagamentoChange(Sender: TObject);
begin
  AtualizarMemoImpressao(FClientDataSetComplementosPedidosItensGrid, FPedidosItensClientDataSetGrid);
end;

procedure Tfrm_consulta_pedidos.comboTipoFiltroChange(Sender: TObject);
begin
  DTPDataInicial.Enabled := (comboTipoFiltro.ItemIndex = 1);
  DTPDataFinal.Enabled :=   (comboTipoFiltro.ItemIndex = 1);
  edtConsulta.Enabled := (comboTipoFiltro.ItemIndex = 0);
end;

procedure Tfrm_consulta_pedidos.ConsultaCaixa;
begin
  TClientDataSet(FControllerEntidade.Caixa.Listar).DisableControls;
  try
    TClientDataSet(FControllerEntidade.Caixa.Listar).Last();

  if ( (TClientDataSet(FControllerEntidade.Caixa.Listar).FieldByName('data_abertura').AsDateTime = 0 ) and
       (TClientDataSet(FControllerEntidade.Caixa.Listar).FieldByName('data_fechamento').AsDateTime = 0) ) or
     ((TClientDataSet(FControllerEntidade.Caixa.Listar).FieldByName('data_abertura').AsDateTime > 0 ) and
       (TClientDataSet(FControllerEntidade.Caixa.Listar).FieldByName('data_fechamento').AsDateTime > 0 )) then
      if Tfrm_mensagem.CriarMensagem(tpAviso, 'Abra o caixa para inserir ou excluir pedidos!') then
        abort;

  finally
    TClientDataSet(FControllerEntidade.Caixa.Listar).EnableControls;
  end;
end;

procedure Tfrm_consulta_pedidos.CriarDataSetComplementosPedidosItens;
begin
  FClientDataSetComplementosPedidosItensGrid.FieldDefs.Add('id_pedido_item', ftInteger, 0);
  FClientDataSetComplementosPedidosItensGrid.FieldDefs.Add('id_complemento', ftInteger, 0);
  FClientDataSetComplementosPedidosItensGrid.FieldDefs.Add('id_produto', ftInteger, 0);
  FClientDataSetComplementosPedidosItensGrid.FieldDefs.Add('descricao', ftstring, 220);
  FClientDataSetComplementosPedidosItensGrid.FieldDefs.Add('quantidade', ftfloat, 0);
  FClientDataSetComplementosPedidosItensGrid.FieldDefs.Add('valor_total', ftfloat, 0);

  FClientDataSetComplementosPedidosItensGrid.CreateDataSet;
  FClientDataSetComplementosPedidosItensGrid.Open;

  FClientDataSetComplementosPedidosItensGrid.FieldByName('id_pedido_item').DisplayWidth := 10;
  FClientDataSetComplementosPedidosItensGrid.FieldByName('id_produto').DisplayWidth := 10;
  FClientDataSetComplementosPedidosItensGrid.FieldByName('id_complemento').DisplayWidth := 10;
  FClientDataSetComplementosPedidosItensGrid.FieldByName('descricao').DisplayWidth := 220;
  FClientDataSetComplementosPedidosItensGrid.FieldByName('quantidade').DisplayWidth := 15;
  FClientDataSetComplementosPedidosItensGrid.FieldByName('valor_total').DisplayWidth := 15;

  FClientDataSetComplementosPedidosItensGrid.AddIndex('Idxid', 'descricao', []);
  FClientDataSetComplementosPedidosItensGrid.IndexName := 'Idxid';
end;

procedure Tfrm_consulta_pedidos.CriarDataSetPedidosItens;
begin
  FPedidosItensClientDataSetGrid.FieldDefs.Add('id', ftInteger, 0);
  FPedidosItensClientDataSetGrid.FieldDefs.Add('descricao', ftString, 60);
  FPedidosItensClientDataSetGrid.FieldDefs.Add('id_produto', ftInteger, 0);
  FPedidosItensClientDataSetGrid.FieldDefs.Add('id_pedido', ftInteger, 0);
  FPedidosItensClientDataSetGrid.FieldDefs.Add('quantidade', ftfloat, 0);
  FPedidosItensClientDataSetGrid.FieldDefs.Add('valor_unitario', ftfloat, 0);
  FPedidosItensClientDataSetGrid.FieldDefs.Add('valor_total', ftfloat, 0);

  FPedidosItensClientDataSetGrid.CreateDataSet;
  FPedidosItensClientDataSetGrid.Open;

  FPedidosItensClientDataSetGrid.FieldByName('id_produto').DisplayWidth := 20;
  FPedidosItensClientDataSetGrid.FieldByName('descricao').DisplayWidth := 60;
  FPedidosItensClientDataSetGrid.FieldByName('id_pedido').DisplayWidth := 20;
  FPedidosItensClientDataSetGrid.FieldByName('quantidade').DisplayWidth := 20;
  FPedidosItensClientDataSetGrid.FieldByName('valor_unitario').DisplayWidth := 20;
  FPedidosItensClientDataSetGrid.FieldByName('valor_total').DisplayWidth := 20;

  FPedidosItensClientDataSetGrid.AddIndex('Idxid', 'id', [ixUnique]);
  FPedidosItensClientDataSetGrid.IndexName := 'Idxid';
end;

procedure Tfrm_consulta_pedidos.dbgRegistrosDblClick(Sender: TObject);
begin
  FTipoTela := tpConsulta;

  TClientDataSet(FDataSourceClientes.DataSet).FindKey([FDataSourcePedidos.DataSet.FieldByName('id_cliente').AsInteger]);
  TClientDataSet(FDataSourceEnderecos.DataSet).FindKey([FDataSourcePedidos.DataSet.FieldByName('id_cliente').AsInteger]);

  edtCep.AplicarMascaraCEP;

  AdicionarProdutoNoGrid();

  edtTotal.Value := FDataSourcePedidos.DataSet.FieldByName('valor_total').AsFloat;
  edtTroco.Value := FDataSourcePedidos.DataSet.FieldByName('valor_troco').AsFloat;
  edtValorPago.Value := FDataSourcePedidos.DataSet.FieldByName('valor_pago').AsFloat;
  cbFormaPagamento.ItemIndex := FDataSourcePedidos.DataSet.FieldByName('id_forma_pagamento').AsInteger;

  AtualizarMemoImpressao(FClientDataSetPedidosItensComplementos, FClientDataSetPedidosItens);

  HabilitarDesabilitarPainel();
  HabilitarDesabilitarModoConsulta();
end;

procedure Tfrm_consulta_pedidos.dbgRegistrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  Column.AdicionarFormatacaoFloat(Column);

  if Column.Title.Caption = 'Cliente' then
    Column.Field.OnGetText := DefinirNomeClientesNoGrid;

  if Column.Title.Caption = 'Forma Pagamento' then
    Column.Field.OnGetText := DefinirFormaPagamentoNoGrid;

  if Column.Title.Caption = 'Usuário' then
    Column.Field.OnGetText := DefinirNomeUsuarioNoGrid;

  if Column.Title.Caption = 'Status' then
    Column.Field.OnGetText := DefinirStatusNoGrid;

  if FDataSourcePedidos.DataSet.FieldByName('status_pedido').AsInteger = 2 then
    TDBGrid(Sender).Canvas.Brush.Color := $000000E6
  else if not Odd(FDataSourcePedidos.DataSet.RecNo) and not (gdSelected in State) then
  begin
    TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end
  else if gdSelected in State then
    TDBGrid(Sender).Canvas.Brush.Color := $00F8769A;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  Column.Alignment := taLeftJustify;
end;

procedure Tfrm_consulta_pedidos.DBGridListaPedidosItensDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Column.AdicionarFormatacaoFloat(Column);

  if not Odd(FDataSourcePedidosItensGrid.DataSet.RecNo) and not(gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
    end;

    if gdSelected in State then
      (Sender as TDBGrid).Canvas.Brush.Color := $00F8769A;

      (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_consulta_pedidos.DefinirFormaPagamentoNoGrid(Sender: TField;var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString = '' then
      Exit;

  var CdsFormaDePagamento := TClientDataSet(FControllerEntidade.FormaPagamento.Listar);

  CdsFormaDePagamento.FindKey([Sender.Value]);

  Text := CdsFormaDePagamento.FieldByName('descricao').AsString;
end;

procedure Tfrm_consulta_pedidos.DefinirNomeClientesNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString = '' then
    Exit;

  if FCashCliente.FindKey([Sender.Value]) then
    Text := FCashCliente.FieldByName('nome').AsString;

end;

procedure Tfrm_consulta_pedidos.DefinirNomeUsuarioNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString = '' then
    Exit;

  var CdsUsuario := TClientDataSet(FControllerEntidade.Usuarios.Listar);

  CdsUsuario.FindKey([Sender.Value]);

  Text := CdsUsuario.FieldByName('nome').AsString;
end;

procedure Tfrm_consulta_pedidos.DefinirStatusNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString = '' then
    Exit;

  if Sender.AsInteger = 1 then
    Text := 'Ativo'
  else
    Text := 'Cancelado';
end;

procedure Tfrm_consulta_pedidos.DefinrNomeImpressora;
var
  IniFile: TIniFile;
  lLibraryPath: string;
begin
  IniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
  try
    lLibraryPath := IniFile.ReadString('Database', 'LibraryPath', '');

    FImpressora1 := IniFile.ReadString('Database', 'ImpressoraBalcao', '');
    FImpressora2 := IniFile.ReadString('Database', 'ImpressoraCozinha', '');
  finally
    IniFile.Free;
  end;
end;

procedure Tfrm_consulta_pedidos.edtConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    AplicarFiltro();
end;

procedure Tfrm_consulta_pedidos.edtQuantidadeExit(Sender: TObject);
begin
  if edtQuantidade.value <= 0 then
    edtQuantidade.value := 1;
end;

procedure Tfrm_consulta_pedidos.edtValorPagoExit(Sender: TObject);
begin
  CalcularTroco();

  AtualizarMemoImpressao(FClientDataSetComplementosPedidosItensGrid, FPedidosItensClientDataSetGrid);
end;

procedure Tfrm_consulta_pedidos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  if FDataSourcePedidos.DataSet.State in [dsInsert, dsEdit] then
    FControllerEntidade.Pedidos.Cancelar;

end;

procedure Tfrm_consulta_pedidos.FormCreate(Sender: TObject);
begin
  FControllerEntidade := TControllerEntidade.new();
  FControllerDBGrid := TControllerDBGrid.new;

  FDataSourcePedidosItensGrid := TDataSource.Create(nil);
  FDataSourcePedidos := TDataSource.Create(nil);
  FDataSourceClientes := TDataSource.Create(nil);
  FDataSourceEnderecos := TDataSource.Create(nil);
  FDataSourceSetProdutos := TDataSource.Create(nil);

  FClientDataSetPedidos := TClientDataSet.Create(nil);
  FClientDataSetPedidosItens := TClientDataSet.Create(nil);
  FClientDataSetPedidosItensGrid := TClientDataSet.Create(nil);
  FClientDataSetPedidosItensComplementos := TClientDataSet.Create(nil);
  FClientDataSetClientes := TClientDataSet.Create(nil);
  FClientDataSetProdutos := TClientDataSet.Create(nil);
  FClientDataSetProdutosComplementos := TClientDataSet.Create(nil);
  FClientDataSetEnderecos := TClientDataSet.Create(nil);
  FPedidosItensClientDataSetGrid := TClientDataSet.Create(nil);
  FClientDataSetComplementosPedidosItensGrid := TClientDataSet.Create(nil);

  FCashCliente := TClientDataSet.Create(nil);


  FClientDataSetPedidos := TClientDataSet(FControllerEntidade.Pedidos.Listar);
  FClientDataSetPedidosItens := TClientDataSet(FControllerEntidade.PedidosItens.Listar);
  FClientDataSetPedidosItensComplementos := TClientDataSet(FControllerEntidade.ComplementosPedidosItens.Listar);
  FClientDataSetClientes := TClientDataSet(FControllerEntidade.Clientes.Listar());
  FClientDataSetProdutos := TClientDataSet(FControllerEntidade.Produtos.Listar());
  FClientDataSetProdutosComplementos := TClientDataSet(FControllerEntidade.Complementos.Listar());
  FClientDataSetEnderecos := TClientDataSet(FControllerEntidade.Enderecos.Listar());

  FDataSourcePedidosItensGrid.DataSet :=  FPedidosItensClientDataSetGrid;
  FDataSourcePedidos.DataSet := FClientDataSetPedidos;
  FDataSourceClientes.DataSet := FClientDataSetClientes;
  FDataSourceEnderecos.DataSet := FClientDataSetEnderecos;
  FDataSourceSetProdutos.DataSet := FClientDataSetProdutos;

  FCashCliente.Data := FClientDataSetClientes.Data;
  FCashCliente.AddIndex('IdxId', 'id', []);
  FCashCliente.IndexName := 'IdxId';

  CriarDataSetComplementosPedidosItens();

  FControllerDBGrid
    .PreencherParametros
      .DefinirClientDataSet(TClientDataSet(FControllerEntidade.Pedidos.Listar))
    .FimPreenchimento
    .AplicarPaginacao;

  FListaImpressaoPedidos := TStringList.Create;

  DTPDataInicial.Date := Now;
  DTPDataFinal.Date := Now;

  DefinrNomeImpressora;
end;

procedure Tfrm_consulta_pedidos.FormDestroy(Sender: TObject);
begin
  FListaImpressaoPedidos.Free;

  FDataSourcePedidosItensGrid.Free;
  FDataSourcePedidos.Free;
  FDataSourceClientes.Free;
  FDataSourceEnderecos.Free;
  FDataSourceSetProdutos.Free;

end;

procedure Tfrm_consulta_pedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2: InserirPedido();
    VK_F11: VisualizarMemo();
  end;
end;

procedure Tfrm_consulta_pedidos.FormShow(Sender: TObject);
begin
  AplicarFiltro();

  AlimentarCamposClientes();
  AlimentarCamposEnderecoClientes();
  CriarDataSetPedidosItens();
  CarregarGridPedidos();
  DBGridListaPedidosItens.DataSource := FDataSourcePedidosItensGrid;
end;

procedure Tfrm_consulta_pedidos.HabilitarDesabilitarModoConsulta;
begin
  BtnPesquisaClientes.Visible := (FTipoTela = tpInsert);
  BtnPesquisarProdutos.Visible := (FTipoTela = tpInsert);
  btnIncluirProduto.Visible := (FTipoTela = tpInsert);
  BtnExcluirProdutoPedido.Visible := (FTipoTela = tpInsert);

  edtQuantidade.Enabled := (FTipoTela = tpInsert);
  edtTotal.Enabled := (FTipoTela = tpInsert);
  edtTroco.Enabled := (FTipoTela = tpInsert);
  edtValorPago.Enabled := (FTipoTela = tpInsert);
  btnReimprimir.Visible := (FTipoTela = tpConsulta);

  lbFormaPagamento.Visible := (FTipoTela = tpInsert);
  cbFormaPagamento.Visible := (FTipoTela = tpInsert);
  edtDescricao.Visible := (FTipoTela = tpInsert);
  edtQuantidade.Visible := (FTipoTela = tpInsert);
  lblProduto.Visible := (FTipoTela = tpInsert);
  lbQuantidade.Visible := (FTipoTela = tpInsert);
  PnlFinalizar.Visible := (FTipoTela = tpInsert);
end;

procedure Tfrm_consulta_pedidos.HabilitarDesabilitarPainel;
begin
  if pnlCadastroPedido.Enabled then
  begin
    pnlCadastroPedido.Enabled := False;
    pnlCadastroPedido.Visible := False;

    pnlListaPedidos.Enabled := True;
    pnlListaPedidos.Visible := True;
  end
  else
  begin
    pnlCadastroPedido.Enabled := True;
    pnlCadastroPedido.Visible := True;

    pnlListaPedidos.Enabled := False;
    pnlListaPedidos.Visible := False;
  end;
end;

procedure Tfrm_consulta_pedidos.InserirPedido;
begin
//  ConsultaCaixa();
  HabilitarDesabilitarPainel();
  FControllerEntidade.Pedidos.Inserir();
  FTipoTela := tpInsert;
  cbFormaPagamento.ItemIndex := 1;
  HabilitarDesabilitarModoConsulta();
end;

procedure Tfrm_consulta_pedidos.LimparCamposClientes;
begin
  FDataSourceClientes.DataSet := nil;
  FDataSourceEnderecos.DataSet := nil;
end;

procedure Tfrm_consulta_pedidos.LimparCamposPedidos;
begin
  for Var J := 0 to Pred(Self.pnlValoresPedido.ControlCount) do
    begin
      if (Self.pnlValoresPedido.Controls[J] is TNumberBox)  then
        TNumberBox(Self.pnlValoresPedido.Controls[J]).Value := 0;
    end;
end;

procedure Tfrm_consulta_pedidos.LimparCamposProdutos;
begin
  edtDescricao.Clear;
  edtQuantidade.Value := 1;
end;

procedure Tfrm_consulta_pedidos.LimparFiltros;
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_pedidos.PnlCancelarClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();

  FControllerEntidade.Pedidos.Cancelar();

  LimparCamposProdutos();
  LimparCamposPedidos();

  memoPedidos.Clear;
  FListaImpressaoPedidos.Clear;

  FPedidosItensClientDataSetGrid.EmptyDataSet;
  FClientDataSetComplementosPedidosItensGrid.EmptyDataSet;
end;

procedure Tfrm_consulta_pedidos.PnlFinalizarClick(Sender: TObject);
var
  lDadosPedidos, lDadosPedidosItens, lDadosPedidosItensComplementos, lDadosCaixaMovimento: TJSONObject;
  lFocusedControl: TWinControl;
begin
  lFocusedControl := Screen.ActiveControl;

  if edtTotal.Value > 0 then begin
    if (edtValorPago.Value = 0) or (edtValorPago.Value < edtTotal.Value) then
     begin
      Tfrm_mensagem.CriarMensagem(tpAviso, 'Valor pago está zerado ou menor que o total. Informe o valor corretamente para finalizar o pedido');
      Exit;
     end;
  end;

  if cbFormaPagamento.ItemIndex = 0 then
    if Tfrm_mensagem.CriarMensagem(tpAviso, 'Selecione uma forma de pagamento!') then
      Exit;

  lDadosPedidos := TJSONObject.Create;
  try
    lDadosPedidos.AddPair('valor_total', TJSONNumber.Create(edtTotal.value));
    lDadosPedidos.AddPair('valor_pago', TJSONNumber.Create(edtValorPago.value));
    lDadosPedidos.AddPair('valor_troco', TJSONNumber.Create(edtTroco.value));
    lDadosPedidos.AddPair('id_cliente', TJSONNumber.Create(FDataSourceClientes.DataSet.FieldByName('id').AsInteger));
    lDadosPedidos.AddPair('id_forma_pagamento', TJSONNumber.Create(cbFormaPagamento.ItemIndex));
    lDadosPedidos.AddPair('id_usuario', TJSONNumber.Create(FControllerEntidade.Login.Id));
    lDadosPedidos.AddPair('status_pedido', TJSONNumber.Create(1));

    FControllerEntidade.Pedidos.EnviarDados(lDadosPedidos);
  finally
    lDadosPedidos.Free;
  end;

  FPedidosItensClientDataSetGrid.First;

  while not FPedidosItensClientDataSetGrid.Eof do
    begin
      lDadosPedidosItens := TJSONObject.Create;
      try
        FControllerEntidade.PedidosItens.Inserir;

        lDadosPedidosItens.AddPair('id_produto', TJSONNumber.Create(FPedidosItensClientDataSetGrid.FieldByName('id_produto').AsInteger));
        lDadosPedidosItens.AddPair('id_pedido', TJSONNumber.Create(FControllerEntidade.Pedidos.ObterUltimoId()));
        lDadosPedidosItens.AddPair('quantidade', TJSONNumber.Create(FPedidosItensClientDataSetGrid.FieldByName('quantidade').AsFloat));
        lDadosPedidosItens.AddPair('valor_total', TJSONNumber.Create(FPedidosItensClientDataSetGrid.FieldByName('valor_total').AsFloat));
        lDadosPedidosItens.AddPair('status_pedidos_itens', TJSONNumber.Create(1));

        FControllerEntidade.PedidosItens.EnviarDados(lDadosPedidosItens);

        FClientDataSetComplementosPedidosItensGrid.DisableControls;
        try
          if (FClientDataSetComplementosPedidosItensGrid.Active) then
            begin
              FClientDataSetComplementosPedidosItensGrid.Filter := Format('id_pedido_item = %d', [FPedidosItensClientDataSetGrid.FieldByName('id').AsInteger]);
              FClientDataSetComplementosPedidosItensGrid.Filtered := true;

              FClientDataSetComplementosPedidosItensGrid.First;
              while not FClientDataSetComplementosPedidosItensGrid.EOF do
                begin
                  lDadosPedidosItensComplementos := TJSONObject.Create;
                  try
                    FControllerEntidade.ComplementosPedidosItens.Inserir;

                    lDadosPedidosItensComplementos.AddPair('id_complemento', TJSONNumber.Create(FClientDataSetComplementosPedidosItensGrid.FieldByName('id_complemento').AsInteger));
                    lDadosPedidosItensComplementos.AddPair('id_pedido_item', TJSONNumber.Create(FControllerEntidade.PedidosItens.ObterUltimoId()));
                    lDadosPedidosItensComplementos.AddPair('quantidade', TJSONNumber.Create(FClientDataSetComplementosPedidosItensGrid.FieldByName('quantidade').AsFloat));
                    lDadosPedidosItensComplementos.AddPair('valor_total', TJSONNumber.Create(FClientDataSetComplementosPedidosItensGrid.FieldByName('valor_total').AsFloat));
                    lDadosPedidosItensComplementos.AddPair('id_produto', TJSONNumber.Create(FClientDataSetComplementosPedidosItensGrid.FieldByName('id_produto').AsInteger));
                    lDadosPedidosItensComplementos.AddPair('status_pedidos_itens_complementos', TJSONNumber.Create(1));

                    FControllerEntidade.ComplementosPedidosItens.EnviarDados(lDadosPedidosItensComplementos);
                    FClientDataSetComplementosPedidosItensGrid.Next;
                  finally
                    lDadosPedidosItensComplementos.Free;
                  end;
                end;

              FClientDataSetComplementosPedidosItensGrid.Filtered := false;
            end;

        finally
          FClientDataSetComplementosPedidosItensGrid.EnableControls;
        end;

      finally
        lDadosPedidosItens.Free;
      end;

      FPedidosItensClientDataSetGrid.Next;
    end;

  FListaImpressaoPedidos.Clear;
  FPedidosItensClientDataSetGrid.EmptyDataSet;
  FClientDataSetComplementosPedidosItensGrid.EmptyDataSet;
  FControllerDBGrid.Atualizar;

  HabilitarDesabilitarPainel();

  LimparCamposProdutos();
  LimparCamposPedidos();
  AplicarFiltro();
  memoPedidos.Clear;
end;

procedure Tfrm_consulta_pedidos.VisualizarMemo;
var
  lFrmExibicaoPedido: TfrmExibicaoPedido;
begin
  lFrmExibicaoPedido := TfrmExibicaoPedido.Create(nil);
  try
    lFrmExibicaoPedido.DefinirListaDePedidos(FListaImpressaoPedidos);
    lFrmExibicaoPedido.ShowModal();
  finally
    lFrmExibicaoPedido.Free;
  end;
end;

end.
