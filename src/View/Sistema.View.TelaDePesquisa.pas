unit Sistema.View.TelaDePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Sistema.Crontroller.Interfaces, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.Buttons, Sistema.Controller.DBGrid;

type
  TFrmTelaPesquisa = class(TForm)
    pnlPrincipal: TPanel;
    DBGrid1: TDBGrid;
    EdtPesquisa: TEdit;
    BtnPesquisa: TSpeedButton;
    lblConsultas: TLabel;
    btnAdicionarClientes: TSpeedButton;
    BtnLimparFiltros: TSpeedButton;
    comboTipoFiltro: TComboBox;
    lblTipoFiltro: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnPesquisaClick(Sender: TObject);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClientesClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtnLimparFiltrosClick(Sender: TObject);
  private
    FTipoTela: TTipoTela;
    FDataSource: TDataSource;
    FControllerDBGrid: IControllerDBGrid;
    FControllerEntidade: IControllerEntidade;
    FId: Integer;
    procedure DefinirTipoTela(pTipoTela: TTipoTela);
    procedure DefinirColunas;
    procedure AplicarFiltro;
    procedure SetId(const Value: Integer);
    function ObterId: Integer;
    procedure DefinirPossuiComplemento(Sender: TField; var Text: string; DisplayText: Boolean);
  public
    { Public declarations }
    property TipoTela: TTipoTela write DefinirTipoTela;
    property Id: Integer read ObterId write SetId;
  end;

var
  FrmTelaPesquisa: TFrmTelaPesquisa;

implementation

uses
  Sistema.View.Helpers.TColumn, Sistema.View.Clientes,
  Sistema.Controller.Entidade;

{$R *.dfm}

{ TFrmTelaPesquisa }

procedure TFrmTelaPesquisa.AplicarFiltro;
begin
  if EdtPesquisa.Text = '' then
    begin
    // FControllerDBGrid.AplicarPaginacao;
     Exit;
    end;

  if FTipoTela = tpClientes then
    begin
      case comboTipoFiltro.ItemIndex of
        0:  FControllerDBGrid.AplicarFiltro(Format('id = %d', [strToIntDef(Trim(EdtPesquisa.Text), 0)]));
        1:  FControllerDBGrid.AplicarFiltro('cpf like UPPER(''' + ''+Trim(UpperCase(EdtPesquisa.Text))+'' + '%'') ');
        2:  FControllerDBGrid.AplicarFiltro('UPPER(nome) like UPPER(''' + ''+Trim(UpperCase(EdtPesquisa.Text))+'' + '%'') ');
        3:  FControllerDBGrid.AplicarFiltro('UPPER(telefone) like UPPER(''' + ''+Trim(UpperCase(EdtPesquisa.Text))+'' + '%'') ');
      end;
    end;

  case FTipoTela of
    tpProdutos: FControllerDBGrid.AplicarFiltro('UPPER(descricao) like UPPER(''' + ''+Trim(UpperCase(EdtPesquisa.Text))+'' + '%'') and status = 1');
    tpComplementos: FControllerDBGrid.AplicarFiltro('UPPER(descricao) like UPPER(''' + ''+Trim(UpperCase(EdtPesquisa.Text))+'' + '%'') and status = 1');
  end;
end;

procedure TFrmTelaPesquisa.btnAdicionarClientesClick(Sender: TObject);
var
  lFrmClientes: Tfrm_consulta_clientes;
begin
  lFrmClientes := Tfrm_consulta_clientes.Create(nil);
  try
    lFrmClientes.BorderStyle := bsSingle;
    lFrmClientes.ShowModal;
    lFrmClientes.Repaint;
  finally
    lFrmClientes.Free;
  end;
end;


procedure TFrmTelaPesquisa.BtnLimparFiltrosClick(Sender: TObject);
begin
  FControllerDBGrid.AplicarFiltro('status = 1');
end;

procedure TFrmTelaPesquisa.BtnPesquisaClick(Sender: TObject);
begin
  AplicarFiltro();
end;

procedure TFrmTelaPesquisa.DBGrid1DblClick(Sender: TObject);
begin
  Close();
end;

procedure TFrmTelaPesquisa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  Column.AdicionarFormatacaoFloat(Column);

  if FTipoTela = tpClientes then
    Column.AdicionarFormatacao(Column);

  if Column.Title.Caption = 'Possui Complemento ' then
    Column.Field.OnGetText := DefinirPossuiComplemento;

  if FTipoTela = tpComplementos then
    Column.AdicionarFormatacaoWideString(Column);

  if not Odd(FDataSource.DataSet.RecNo) and not(gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
    end;

  if gdSelected in State then
    (Sender as TDBGrid).Canvas.Brush.Color := $00F8769A;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  Column.Alignment := taLeftJustify;
end;

procedure TFrmTelaPesquisa.DefinirColunas;
begin
  case FTipoTela of
    tpClientes:
    begin
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'id';
        Title.Caption := 'ID Cliente';;
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'nome';
        Title.Caption := 'Nome ';
        Width := 250;
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'sobrenome';
        Title.Caption := 'Sobrenome ';
        Width := 250;
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'cpf';
        Title.Caption := 'CPF ';
        Width := 275;
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'telefone';
        Title.Caption := 'Telefone ';
        Width := 275;
      end;
    end;
    tpProdutos:
        begin
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'id';
        Title.Caption := 'ID Produto ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'descricao';
        Title.Caption := 'Descrição ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'preco_venda';
        Title.Caption := 'Preço Venda ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'peso_liquido';
        Title.Caption := 'Peso Líquido ';
        Width := 150;
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'EAN';
        Title.Caption := 'EAN ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'possui_complemento';
        Title.Caption := 'Possui Complemento ';
      end;
    end;

    tpComplementos:
        begin
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'id';
        Title.Caption := 'ID Produto ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'descricao';
        Title.Caption := 'Descrição ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'valor';
        Title.Caption := 'Valor ';
      end;
      with DbGrid1.Columns.Add do
      begin
        FieldName := 'Observacao';
        Title.Caption := 'Observação ';
      end;
    end;

  end;
end;

procedure TFrmTelaPesquisa.DefinirPossuiComplemento(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = 0 then
    Text := 'Não'
  else
    Text := 'Sim';
end;

procedure TFrmTelaPesquisa.DefinirTipoTela(pTipoTela: TTipoTela);
begin
  FTipoTela := pTipoTela;
end;

procedure TFrmTelaPesquisa.EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    AplicarFiltro();
end;

procedure TFrmTelaPesquisa.FormCreate(Sender: TObject);
begin
  FDataSource := TDataSource.Create(nil);

  FControllerEntidade := TControllerEntidade.new();
  FControllerDBGrid := TControllerDBGrid.new;
end;

procedure TFrmTelaPesquisa.FormDestroy(Sender: TObject);
begin
  FDataSource.Free();
end;

procedure TFrmTelaPesquisa.FormShow(Sender: TObject);
begin

  case FTipoTela of
    tpClientes: FDataSource.DataSet := TClientDataSet(FControllerEntidade.Clientes.Listar);
    tpProdutos: FDataSource.DataSet := TClientDataSet(FControllerEntidade.Produtos.Listar);
    tpComplementos: FDataSource.DataSet := TClientDataSet(FControllerEntidade.Complementos.Listar);
  end;

  FControllerDBGrid
    .PreencherParametros
      .DefinirClientDataSet(TClientDataSet(FDataSource.DataSet))
    .FimPreenchimento
    .AplicarPaginacao;

  DBGrid1.DataSource := FDataSource;
  DefinirColunas();

  comboTipoFiltro.Visible := (FTipoTela = tpClientes);
  lblTipoFiltro.Visible :=  (FTipoTela = tpClientes);

 // btnAdicionarClientes.visible := (FTipoTela = tpClientes);

  FControllerDBGrid.AplicarFiltro('status = 1');
end;

function TFrmTelaPesquisa.ObterId: Integer;
begin
  Result := FDataSource.DataSet.FieldByName('id').AsInteger;
end;

procedure TFrmTelaPesquisa.SetId(const Value: Integer);
begin
  FId := Value;
end;

end.
