unit Sistema.View.CadastroComplementos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Sistema.Crontroller.Interfaces, Sistema.Controller.DBGrid;

type
  Tfrm_consulta_complementos = class(TForm)
    pnlListaComplementos: TPanel;
    BtnPesquisaUsuarios: TSpeedButton;
    pnlGrid: TPanel;
    dbgRegistros: TDBGrid;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnInserir: TSpeedButton;
    pnlCadastroComplementos: TPanel;
    PnlBotoes: TPanel;
    PnlCancelar: TPanel;
    btnSalvar: TPanel;
    PnlTopoCadastro: TPanel;
    LblTituloCadastro: TLabel;
    PnlSeparaCadastro1: TPanel;
    PnlSeparaCadastro2: TPanel;
    pnlInformacoesCadastro: TPanel;
    lblDescricaoComplemento: TLabel;
    lblIdComplemento: TLabel;
    edtDescricaoComplemento: TDBEdit;
    edtIdComplemento: TDBEdit;
    edtValor: TDBEdit;
    lblValor: TLabel;
    lblObservacao: TLabel;
    memoObservacao: TDBMemo;
    edtConsulta: TEdit;
    comboTipoFiltro: TComboBox;
    lblTipoFiltro: TLabel;
    lblConsultas: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnLimparFiltros: TSpeedButton;
    RbSituacao: TDBRadioGroup;
    procedure PnlCancelarClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgRegistrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnPesquisaUsuariosClick(Sender: TObject);
    procedure edtConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
  private
    FControllerEntidade: IControllerEntidade;
    FDataSourceComplementos: TDataSource;
    FControllerDBGrid: IControllerDBGrid;
    procedure HabilitarDesabilitarPainel;
    procedure CarregarGridComplementos;
    procedure AlimentarCamposComplementos;
    procedure AplicarFiltro;
    procedure LimparFiltros;
    procedure EditarComplementos;
    procedure DefinirStatusNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure InativarComplemento;
  public
    { Public declarations }
  end;

var
  frm_consulta_complementos: Tfrm_consulta_complementos;

implementation

uses
  System.TypInfo, Sistema.Controller.Entidade, System.JSON, Sistema.View.Helpers.TColumn,
  Datasnap.DBClient, Sistema.View.Mensagens;

{$R *.dfm}

procedure Tfrm_consulta_complementos.AlimentarCamposComplementos;
begin
  for Var I := 0 to Pred(Self.pnlInformacoesCadastro.ControlCount) do
    begin
      Var PropInfo := GetPropInfo(Self.pnlInformacoesCadastro.Controls[I], 'DataSource');

      if PropInfo <> nil then
        begin
          SetObjectProp(Self.pnlInformacoesCadastro.Controls[I], PropInfo, Self.FDataSourceComplementos);
        end;
    end;

  RbSituacao.DataSource := Self.FDataSourceComplementos;
end;

procedure Tfrm_consulta_complementos.AplicarFiltro;
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

procedure Tfrm_consulta_complementos.AtualizarGrid;
begin
  FDataSourceComplementos.DataSet.Refresh;
end;

procedure Tfrm_consulta_complementos.BtnEditarClick(Sender: TObject);
begin
  EditarComplementos();
end;

procedure Tfrm_consulta_complementos.BtnExcluirClick(Sender: TObject);
begin
  if FDataSourceComplementos.DataSet.IsEmpty then
    Exit;

  if not Tfrm_mensagem.CriarMensagem(tpAviso, 'Confirma a inativação deste cadastro? Ele não poderá ser mais usado nas rotinas do sistema.') then
    Exit;

  InativarComplemento();

  FControllerDBGrid.Atualizar;
   AplicarFiltro();
end;

procedure Tfrm_consulta_complementos.BtnInserirClick(Sender: TObject);
begin
  FControllerEntidade.Complementos.Inserir;
  HabilitarDesabilitarPainel();
  RbSituacao.ItemIndex := 0;
end;

procedure Tfrm_consulta_complementos.BtnLimparFiltrosClick(Sender: TObject);
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_complementos.BtnPesquisaUsuariosClick(Sender: TObject);
begin
  AplicarFiltro();
end;

procedure Tfrm_consulta_complementos.btnSalvarClick(Sender: TObject);
var
  lDadosComplemento: TJSONObject;
  lValor: Double;
begin
  lValor := strToFloatDef(StringReplace(edtValor.Text, '.', ',', [rfReplaceAll]), 0);

  lDadosComplemento := TJSONObject.Create;
  try
    lDadosComplemento.AddPair('descricao', TJSONString.Create(edtDescricaoComplemento.Text));
    lDadosComplemento.AddPair('valor', TJSONNumber.Create(lValor));
    lDadosComplemento.AddPair('observacao', TJSONString.Create(edtDescricaoComplemento.Text));

    if (RbSituacao.ItemIndex = 0) or (RbSituacao.ItemIndex = -1) then
      lDadosComplemento.AddPair('status', TJSONNumber.Create(1))
    else
      lDadosComplemento.AddPair('status', TJSONNumber.Create(2));

    FControllerEntidade.Complementos.EnviarDados(lDadosComplemento);
  finally
    lDadosComplemento.Free;
  end;

  HabilitarDesabilitarPainel();

  FControllerDBGrid.Atualizar;
   AplicarFiltro();
end;

procedure Tfrm_consulta_complementos.CarregarGridComplementos;
begin
  dbgRegistros.DataSource := FDataSourceComplementos;
end;

procedure Tfrm_consulta_complementos.dbgRegistrosDblClick(Sender: TObject);
begin
  EditarComplementos();
end;

procedure Tfrm_consulta_complementos.dbgRegistrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  Column.AdicionarFormatacaoFloat(Column);

  if Column.Title.Caption = 'Status' then
    Column.Field.OnGetText := DefinirStatusNoGrid;

  if not Odd(FDataSourceComplementos.DataSet.RecNo) and not(gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
    end;

    if gdSelected in State then
      (Sender as TDBGrid).Canvas.Brush.Color := $00F8769A;

      (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_consulta_complementos.DefinirStatusNoGrid(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
    if Sender.AsInteger = 1 then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure Tfrm_consulta_complementos.EditarComplementos;
begin
  FControllerEntidade.Complementos.Editar;
  HabilitarDesabilitarPainel();
end;

procedure Tfrm_consulta_complementos.edtConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    AplicarFiltro();
end;

procedure Tfrm_consulta_complementos.FormCreate(Sender: TObject);
begin
  FDataSourceComplementos := TDataSource.Create(nil);

  FControllerEntidade := TControllerEntidade.new();

  FDataSourceComplementos.DataSet := TDataSet(FControllerEntidade.Complementos.Listar());

  FControllerDBGrid := TControllerDBGrid.new;

  FControllerDBGrid
    .PreencherParametros
      .DefinirClientDataSet(TClientDataSet(FControllerEntidade.Complementos.Listar))
    .FimPreenchimento
    .AplicarPaginacao;
end;

procedure Tfrm_consulta_complementos.FormDestroy(Sender: TObject);
begin
  FDataSourceComplementos.Free;
end;

procedure Tfrm_consulta_complementos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F12 then
  begin
    FControllerEntidade.Complementos.Inserir;
    HabilitarDesabilitarPainel();
  end;
end;

procedure Tfrm_consulta_complementos.FormShow(Sender: TObject);
begin
  edtConsulta.SetFocus;
  CarregarGridComplementos();
  AlimentarCamposComplementos();

   AplicarFiltro();
end;

procedure Tfrm_consulta_complementos.HabilitarDesabilitarPainel;
begin
  if pnlCadastroComplementos.Enabled then
    begin
      pnlCadastroComplementos.Enabled := false;
      pnlCadastroComplementos.Visible := false;
      pnlListaComplementos.Enabled := true;
      pnlListaComplementos.Visible := true;
    end
  else
    begin
      pnlCadastroComplementos.Enabled := true;
      pnlCadastroComplementos.Visible := true;
      pnlListaComplementos.Enabled := false;
      pnlListaComplementos.Visible := false;
    end;
end;

procedure Tfrm_consulta_complementos.InativarComplemento;
begin
   FControllerEntidade.Complementos.Deletar();
end;

procedure Tfrm_consulta_complementos.LimparFiltros;
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_complementos.PnlCancelarClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();
  FControllerEntidade.Complementos.Cancelar();
end;

end.
