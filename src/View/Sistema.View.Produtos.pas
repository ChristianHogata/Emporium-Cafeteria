﻿unit Sistema.View.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient, Vcl.DBCtrls, Vcl.Mask, Sistema.Crontroller.Interfaces,
  Vcl.ComCtrls, Vcl.ExtDlgs, System.SysUtils, Sistema.Controller.Entidade,
  Sistema.Controller.DBGrid;

type
  Tfrm_consulta_produto = class(TForm)
    pnlListaProdutos: TPanel;
    comboTipoFiltro: TComboBox;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    edtConsulta: TEdit;
    dbgRegistros: TDBGrid;
    pnlGrid: TPanel;
    pnlCadastroProdutos: TPanel;
    pnlInformacoesCadastro: TPanel;
    lblDescricao: TLabel;
    lbPesoBruto: TLabel;
    lbPrecoCusto: TLabel;
    lbPesoLiquido: TLabel;
    lbGrupo: TLabel;
    lbSubGrupo: TLabel;
    lbId: TLabel;
    edtSubGrupo: TDBEdit;
    edtGrupo: TDBEdit;
    edtPesoBruto: TDBEdit;
    edtDescricao: TDBEdit;
    edtPesoLiquido: TDBEdit;
    edtPrecoVenda: TDBEdit;
    RbSituacao: TDBRadioGroup;
    edtId: TDBEdit;
    PnlBotoesRodape: TPanel;
    PnlCancelar: TPanel;
    pnlSalvar: TPanel;
    lbPrecoVenda: TLabel;
    edtUnidadeEntrada: TDBEdit;
    edtUnidadeSaida: TDBEdit;
    edtEan: TDBEdit;
    lbEstoque: TLabel;
    lbUnidadeEntrada: TLabel;
    lbUnidadeSaida: TLabel;
    lbEan: TLabel;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnInserir: TSpeedButton;
    BtnPesquisaProdutos: TSpeedButton;
    PnlTopoCadastro: TPanel;
    LblTituloCadastro: TLabel;
    PnlSeparaCadastro1: TPanel;
    PnlSeparaCadastro2: TPanel;
    GroupBoxPrecosCustos: TGroupBox;
    pnlImagemProdutos: TPanel;
    DBImagemProduto: TDBImage;
    btnAdicionarImagem: TSpeedButton;
    btnExcluirImagem: TSpeedButton;
    edtEstoque: TEdit;
    lblTipoFiltro: TLabel;
    GrpOpcoesProdutos: TGroupBox;
    lblConsultas: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    edtPrecoCusto: TDBEdit;
    BtnLimparFiltros: TSpeedButton;
    chkPossuiComplemento: TDBCheckBox;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlSalvarClick(Sender: TObject);
    procedure PnlCancelarClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure btnAdicionarImagemClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluirImagemClick(Sender: TObject);
    procedure dbgRegistrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnPesquisaProdutosClick(Sender: TObject);
    procedure edtConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarGrid;
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure DefinirStatusNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    FControllerEntidade: IControllerEntidade;
    FDataSourceProdutos: TDataSource;
    FCaminhoImagen: string;
    FControllerDBGrid: IControllerDBGrid;
    procedure CarregarGridProdutos;
    procedure CarregarImagemProduto;
    procedure AlimentarCampos;
    procedure HabilitarDesabilitarPainel;
    procedure VerificarTamanhoDaImagem(pCaminho: string);
    procedure AplicarFiltro;
    procedure EditarProdutos;
    procedure LimparFiltros;
    procedure InativarProduto;
  public
    { Public declarations }
  end;

var
  frm_consulta_produto: Tfrm_consulta_produto;

implementation

uses
  System.TypInfo, Sistema.Controller.Entidades.Factory, System.JSON,
  Sistema.View.Helpers.TColumn, Sistema.View.Mensagens;

{$R *.dfm}


procedure Tfrm_consulta_produto.AlimentarCampos;
begin
  for Var I := 0 to Pred(Self.pnlInformacoesCadastro.ControlCount) do
  begin
    Var PropInfo := GetPropInfo(Self.pnlInformacoesCadastro.Controls[I], 'DataSource');

    if PropInfo <> nil then
    begin
      SetObjectProp(Self.pnlInformacoesCadastro.Controls[I], PropInfo, Self.FDataSourceProdutos);
    end;
  end;

  for Var I := 0 to Pred(Self.GroupBoxPrecosCustos.ControlCount) do
  begin
    Var PropInfo := GetPropInfo(Self.GroupBoxPrecosCustos.Controls[I], 'DataSource');

    if PropInfo <> nil then
    begin
      SetObjectProp(Self.GroupBoxPrecosCustos.Controls[I], PropInfo, Self.FDataSourceProdutos);
    end;
  end;

  DBImagemProduto.DataSource := Self.FDataSourceProdutos;
  RbSituacao.DataSource := Self.FDataSourceProdutos;
  chkPossuiComplemento.DataSource := Self.FDataSourceProdutos;
end;

procedure Tfrm_consulta_produto.AplicarFiltro;
begin
  if edtConsulta.Text = '' then
    begin
      Exit;
    end;

  case comboTipoFiltro.ItemIndex of
    0:  FControllerDBGrid.AplicarFiltro(Format('id = %d ', [strToIntDef(Trim(edtConsulta.Text), 0)]));
    1:  FControllerDBGrid.AplicarFiltro('UPPER(descricao) like UPPER(''' + ''+Trim(UpperCase(edtConsulta.Text))+'' + '%'') ');
  end;
end;

procedure Tfrm_consulta_produto.AtualizarGrid;
begin
  FDataSourceProdutos.DataSet.Refresh;
end;

procedure Tfrm_consulta_produto.btnAdicionarImagemClick(Sender: TObject);
var
  lCarregadorDeImagens: TOpenPictureDialog;
begin
  lCarregadorDeImagens := TOpenPictureDialog.Create(nil);
  try
    if lCarregadorDeImagens.Execute then
    begin
       if not (FDataSourceProdutos.State in [dsInsert, dsEdit]) then
              FControllerEntidade.Produtos.Editar();

        if lCarregadorDeImagens.FileName <> '' then
        begin
            VerificarTamanhoDaImagem(lCarregadorDeImagens.FileName);
            DBImagemProduto.Picture.LoadFromFile(lCarregadorDeImagens.FileName);
            FCaminhoImagen := lCarregadorDeImagens.FileName;
        end;
    end;
  finally
    lCarregadorDeImagens.Free;
  end;
end;

procedure Tfrm_consulta_produto.BtnEditarClick(Sender: TObject);
begin
  EditarProdutos();
end;

procedure Tfrm_consulta_produto.BtnExcluirClick(Sender: TObject);
begin
  if FDataSourceProdutos.DataSet.IsEmpty then
    Exit;

  if not Tfrm_mensagem.CriarMensagem(tpAviso, 'Confirma a inativação deste cadastro? Ele não poderá ser mais usado nas rotinas do sistema.') then
    Exit;

  InativarProduto();

  FControllerDBGrid.Atualizar;
  AplicarFiltro();
end;

procedure Tfrm_consulta_produto.btnExcluirImagemClick(Sender: TObject);
begin
  FCaminhoImagen := '';
  FDataSourceProdutos.DataSet.FieldByName('caminho_imagem_produto').Clear;
end;

procedure Tfrm_consulta_produto.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_consulta_produto.BtnInserirClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();
  FControllerEntidade.Produtos.Inserir();
  RbSituacao.ItemIndex := 0;
end;

procedure Tfrm_consulta_produto.BtnLimparFiltrosClick(Sender: TObject);
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_produto.BtnPesquisaProdutosClick(Sender: TObject);
begin
  AplicarFiltro();
end;

procedure Tfrm_consulta_produto.CarregarGridProdutos;
begin
  dbgRegistros.DataSource := FDataSourceProdutos;
end;

procedure Tfrm_consulta_produto.CarregarImagemProduto;
begin
  if not FDataSourceProdutos.DataSet.FieldByName('caminho_imagem_produto').AsString.Equals('') then
    begin
      try
        DBImagemProduto.Picture.LoadFromFile(FDataSourceProdutos.DataSet.FieldByName('caminho_imagem_produto').AsString);
      except
        raise Exception.Create('Imagem n�o encontrada!');
      end;
    end;
end;

procedure Tfrm_consulta_produto.dbgRegistrosDblClick(Sender: TObject);
begin
  EditarProdutos();
end;

procedure Tfrm_consulta_produto.dbgRegistrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 Column.AdicionarFormatacaoFloat(Column);

 if Column.Title.Caption = 'Status' then
    Column.Field.OnGetText := DefinirStatusNoGrid;

  if not Odd(FDataSourceProdutos.DataSet.RecNo) and not(gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
    end;

    if gdSelected in State then
      (Sender as TDBGrid).Canvas.Brush.Color := $00F8769A;

      (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_consulta_produto.DefinirStatusNoGrid(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    if Sender.AsInteger = 1 then
    Text := 'Ativo'
  else
    Text := 'Cancelado';
end;

procedure Tfrm_consulta_produto.EditarProdutos;
begin
  HabilitarDesabilitarPainel();
  FControllerEntidade.Produtos.Editar();
  CarregarImagemProduto();
end;

procedure Tfrm_consulta_produto.edtConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    AplicarFiltro();
end;

procedure Tfrm_consulta_produto.FormCreate(Sender: TObject);
begin
  FControllerEntidade := TControllerEntidade.new();

  FDataSourceProdutos := TDataSource.Create(nil);

  FDataSourceProdutos.DataSet := TDataSet(FControllerEntidade.Produtos.Listar());

  FControllerDBGrid := TControllerDBGrid.new;

  FControllerDBGrid
    .PreencherParametros
      .DefinirClientDataSet(TClientDataSet(FControllerEntidade.Produtos.Listar))
    .FimPreenchimento
    .AplicarPaginacao;
end;

procedure Tfrm_consulta_produto.FormDestroy(Sender: TObject);
begin
  FDataSourceProdutos.Free;
end;

procedure Tfrm_consulta_produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    HabilitarDesabilitarPainel();
    FControllerEntidade.Produtos.Inserir();
  end;
end;

procedure Tfrm_consulta_produto.FormShow(Sender: TObject);
begin
  edtConsulta.SetFocus;
  CarregarGridProdutos();
  AlimentarCampos();

  AplicarFiltro();
end;

procedure Tfrm_consulta_produto.HabilitarDesabilitarPainel;
begin
  if FdataSourceProdutos.DataSet.State in [dsEdit, dsInsert] then
    FdataSourceProdutos.DataSet.Cancel;

  if pnlCadastroProdutos.Enabled then
    begin
      pnlCadastroProdutos.Enabled := false;
      pnlCadastroProdutos.Visible := false;
      pnlListaProdutos.Enabled := true;
      pnlListaProdutos.Visible := true;
    end
  else
    begin
      pnlCadastroProdutos.Enabled := true;
      pnlCadastroProdutos.Visible := true;
      pnlListaProdutos.Enabled := false;
      pnlListaProdutos.Visible := false;
    end;
end;

procedure Tfrm_consulta_produto.InativarProduto;
begin
  FControllerEntidade.Produtos.Deletar();
end;

procedure Tfrm_consulta_produto.LimparFiltros;
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_produto.pnlSalvarClick(Sender: TObject);
var
  lDadosProdutos: TJSONObject;
begin

  lDadosProdutos := TJSONObject.Create;
  try
    lDadosProdutos.AddPair('grupo', TJSONNumber.Create(StrToIntDef(edtGrupo.Text, 0)));
    lDadosProdutos.AddPair('sub_grupo', TJSONNumber.Create(StrToIntDef(edtSubGrupo.Text, 0)));
    lDadosProdutos.AddPair('descricao', TJSONString.Create(edtDescricao.Text));
    lDadosProdutos.AddPair('peso_bruto', TJSONNumber.Create(StrToFloatDef(edtPesoBruto.Text, 0)));
    lDadosProdutos.AddPair('peso_liquido', TJSONNumber.Create(StrToFloatDef(edtPesoLiquido.Text, 0)));
    lDadosProdutos.AddPair('preco_custo', TJSONNumber.Create(StrToFloatDef(edtPrecoCusto.Text, 0)));
    lDadosProdutos.AddPair('preco_venda', TJSONNumber.Create(StrToFloatDef(edtPrecoVenda.Text, 0)));
    lDadosProdutos.AddPair('unidade_entrada', TJSONString.Create(edtUnidadeEntrada.Text));
    lDadosProdutos.AddPair('unidade_saida', TJSONString.Create(edtUnidadeSaida.Text));
    lDadosProdutos.AddPair('ean', TJSONString.Create(edtEan.Text));
 //   lDadosProdutos.AddPair('complemento', TJSONString.Create(edtComplemento.Text));

    if chkPossuiComplemento.Checked then
      lDadosProdutos.AddPair('possui_complemento', TJSONNumber.Create(1))
    else
      lDadosProdutos.AddPair('possui_complemento', TJSONNumber.Create(0));

    if (RbSituacao.ItemIndex = 0) or (RbSituacao.ItemIndex = -1) then
      lDadosProdutos.AddPair('status', TJSONNumber.Create(1))
    else
      lDadosProdutos.AddPair('status', TJSONNumber.Create(2));

    lDadosProdutos.AddPair('caminho_imagem_produto', FCaminhoImagen);

    FControllerEntidade.Produtos.EnviarDados(lDadosProdutos);
  finally
    lDadosProdutos.Free;
  end;

  HabilitarDesabilitarPainel();

  FControllerDBGrid.Atualizar;
  AplicarFiltro();
end;

procedure Tfrm_consulta_produto.VerificarTamanhoDaImagem(pCaminho: string);
const
  MEGABYTE = SizeOf(Byte) shl 20;

Var
  lArquito: TFileStream;

begin
   lArquito := TFileStream.Create(pCaminho, fmOpenRead or fmShareExclusive);
  try
    if (FloatToStrF(lArquito.Size / MEGABYTE, ffNumber, 6, 2) = '2') then
      raise Exception.Create('Esta imagem ultrapassa os 2 MB. Por favor, selecione uma imagem menor!');
  finally
    lArquito.Free;
  end;
end;

procedure Tfrm_consulta_produto.PnlCancelarClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();
  FControllerEntidade.Produtos.Cancelar();
end;

end.
