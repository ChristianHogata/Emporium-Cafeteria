unit Sistema.View.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Sistema.Crontroller.Interfaces, Vcl.DBCtrls, Vcl.Mask, System.JSON,
  Vcl.ControlList, Datasnap.DBClient, Sistema.Controller.DBGrid;

type
  Tfrm_consulta_clientes = class(TForm)
    pnlCadastroCliente: TPanel;
    pnlInformacoesCadastro: TPanel;
    edtSobrenome: TDBEdit;
    edtNome: TDBEdit;
    edtCnpj: TDBEdit;
    edtCpf: TDBEdit;
    edtEmail: TDBEdit;
    edtTelefone: TDBEdit;
    lbCPF: TLabel;
    lbCnpj: TLabel;
    lbTelefone: TLabel;
    lbEmail: TLabel;
    LblNome: TLabel;
    LblSobrenome: TLabel;
    pnlInformacoesEndereco: TPanel;
    edtEndereco: TDBEdit;
    lbEndereco: TLabel;
    lbNumero: TLabel;
    edtNumero: TDBEdit;
    edtBairro: TDBEdit;
    lbBairro: TLabel;
    edtUf: TDBEdit;
    lbUf: TLabel;
    edtCidade: TDBEdit;
    lbCidade: TLabel;
    edtCep: TDBEdit;
    lbCep: TLabel;
    edtReferencia: TDBEdit;
    lbReferencia: TLabel;
    PnlDivisaoEndereco: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    PnlBotoes: TPanel;
    PnlCancelar: TPanel;
    btnSalvar: TPanel;
    PnlTopoCadastro: TPanel;
    LblTituloCadastro: TLabel;
    PnlSeparaCadastro1: TPanel;
    PnlSeparaCadastro2: TPanel;
    edtIE: TDBEdit;
    LblIE: TLabel;
    GroupBox1: TGroupBox;
    EdtIdEstrangeiro: TDBEdit;
    LblIdEstrangeiro: TLabel;
    EdtISUF: TDBEdit;
    LblISUF: TLabel;
    EdtRazaoSocial: TDBEdit;
    LblRazaoSocial: TLabel;
    ChkIndicadorIEDestinatario: TDBCheckBox;
    EdtNomeFantasia: TDBEdit;
    LblNomeFantasia: TLabel;
    EdtIM: TDBEdit;
    LblIM: TLabel;
    edtCodigoMunicipio: TDBEdit;
    LblMunicipio: TLabel;
    EdtMunicipio: TDBEdit;
    LblHifen: TLabel;
    EdtLogradouro: TDBEdit;
    LblLogradouro: TLabel;
    EdtPais: TDBEdit;
    Label1: TLabel;
    EdtCodigoPais: TDBEdit;
    LblPais: TLabel;
    pnlListaClientes: TPanel;
    lblConsultas: TLabel;
    lblTipoFiltro: TLabel;
    BtnPesquisaFornecedores: TSpeedButton;
    BtnLimparFiltros: TSpeedButton;
    pnlGrid: TPanel;
    dbgRegistros: TDBGrid;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnInserir: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    edtConsulta: TEdit;
    comboTipoFiltro: TComboBox;
    RbSituacao: TDBRadioGroup;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PnlCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtCpfExit(Sender: TObject);
    procedure edtCnpjExit(Sender: TObject);
    procedure edtTelefoneExit(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure dbgRegistrosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnPesquisaFornecedoresClick(Sender: TObject);
    procedure edtConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarGrid;
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLimparFiltrosClick(Sender: TObject);
    procedure DefinirStatusNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    FControllerEntidade: IControllerEntidade;
    FDataSourceClientes: TDataSource;
    FDataSourceEnderecos: TDataSource;
    FCashClientes: TClientDataSet;
    FControllerDBGrid: IControllerDBGrid;
    procedure CarregarGridClientes;
    procedure AlimentarCamposClientes;
    procedure AlimentarCamposEndereco;
    procedure HabilitarDesabilitarPainel;
    procedure AplicarMascaras;
    procedure AplicarFiltro;
    procedure ConsultarCPFCNJP;
    function RemoverMascara(pValor: string): string;
    procedure EditarClientes;
    procedure LimparFiltros;
    procedure InativarCliente;
  public
    { Public declarations }
  end;

implementation

uses
  Sistema.View.Principal, Sistema.View.Mensagens, Sistema.View.Helpers.TColumn, Sistema.Controller.Entidade, System.TypInfo, Sistema.Controllers.Helpers.DBEdit;
{$R *.dfm}

procedure Tfrm_consulta_clientes.AlimentarCamposClientes;
begin
   for Var I := 0 to Pred(Self.pnlInformacoesCadastro.ControlCount) do
    begin
      Var PropInfo := GetPropInfo(Self.pnlInformacoesCadastro.Controls[I], 'DataSource');

      if PropInfo <> nil then
      begin
        SetObjectProp(Self.pnlInformacoesCadastro.Controls[I], PropInfo, Self.FDataSourceClientes);
      end;
    end;

   RbSituacao.DataSource := Self.FDataSourceClientes;
end;

procedure Tfrm_consulta_clientes.AlimentarCamposEndereco;
begin
  for Var I := 0 to Pred(Self.pnlInformacoesEndereco.ControlCount) do
    begin
      Var PropInfo := GetPropInfo(Self.pnlInformacoesEndereco.Controls[I], 'DataSource');

      if PropInfo <> nil then
      begin
        SetObjectProp(Self.pnlInformacoesEndereco.Controls[I], PropInfo, Self.FDataSourceEnderecos);
      end;
    end;
end;

procedure Tfrm_consulta_clientes.AplicarFiltro;
begin
  if edtConsulta.Text = '' then
    Exit;

    case comboTipoFiltro.ItemIndex of
        0:  FControllerDBGrid.AplicarFiltro(Format('id = %d', [strToIntDef(Trim(edtConsulta.Text), 0)]));
        1:  FControllerDBGrid.AplicarFiltro('cpf like UPPER(''' + ''+Trim(UpperCase(edtConsulta.Text))+'' + '%'') ');
        2:  FControllerDBGrid.AplicarFiltro('UPPER(nome) like UPPER(''' + ''+Trim(UpperCase(edtConsulta.Text))+'' + '%'') ');
        3:  FControllerDBGrid.AplicarFiltro('UPPER(telefone) like UPPER(''' + ''+Trim(UpperCase(edtConsulta.Text))+'' + '%'') ');
    end;
end;

procedure Tfrm_consulta_clientes.AplicarMascaras;
begin
  edtCnpj.AplicarMascaraCPFeCNPJ;
  edtCpf.AplicarMascaraCPFeCNPJ;
  edtTelefone.AplicarMascaraTelefone;
  edtCep.AplicarMascaraCEP;
end;

procedure Tfrm_consulta_clientes.AtualizarGrid;
begin
  FDataSourceClientes.DataSet.Refresh;
end;

procedure Tfrm_consulta_clientes.BtnEditarClick(Sender: TObject);
begin
  EditarClientes();
end;

procedure Tfrm_consulta_clientes.BtnExcluirClick(Sender: TObject);
begin
  if FDataSourceClientes.DataSet.IsEmpty then
    Exit;

  if not Tfrm_mensagem.CriarMensagem(tpAviso, 'Confirma a inativação deste cadastro? Ele não poderá ser mais usado nas rotinas do sistema.') then
    Exit;

  InativarCliente();

  FControllerDBGrid.Atualizar;
end;

procedure Tfrm_consulta_clientes.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_consulta_clientes.BtnInserirClick(Sender: TObject);
begin
  FDataSourceClientes.DataSet.DisableControls;
  try
    FCashClientes.Data := TClientDataSet(FDataSourceClientes.DataSet).Data;
    FCashClientes.MergeChangeLog;
  finally
    FDataSourceClientes.DataSet.EnableControls;
  end;

  FControllerEntidade.Clientes.Inserir;
  FControllerEntidade.Enderecos.Inserir;

  RbSituacao.ItemIndex := 0;

  HabilitarDesabilitarPainel();
end;

procedure Tfrm_consulta_clientes.BtnLimparFiltrosClick(Sender: TObject);
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_clientes.BtnPesquisaFornecedoresClick(Sender: TObject);
begin
  AplicarFiltro();
end;

procedure Tfrm_consulta_clientes.CarregarGridClientes;
begin
  dbgRegistros.DataSource := FDataSourceClientes;
end;

procedure Tfrm_consulta_clientes.ConsultarCPFCNJP;
begin
  FCashClientes.AddIndex('IdxCpf', 'cpf', []);
  FCashClientes.IndexName := 'IdxCpf';

  try
    if FCashClientes.FindKey([RemoverMascara(edtCpf.Text)]) then
      raise Exception.Create(Format('Esse CPF j� est� cadastrado no cliente: %s', [FCashClientes.FieldByName('nome').AsString]));
  finally
    FCashClientes.IndexName := '';
  end;
end;

procedure Tfrm_consulta_clientes.dbgRegistrosDblClick(Sender: TObject);
begin
  EditarClientes();
end;

procedure Tfrm_consulta_clientes.dbgRegistrosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  Column.AdicionarFormatacao(Column);

  if Column.Title.Caption = 'Status' then
    Column.Field.OnGetText := DefinirStatusNoGrid;

  if not Odd(FDataSourceClientes.DataSet.RecNo) then
    if not(gdSelected in State) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := $00FFC8C8;
      TDBGrid(Sender).Canvas.FillRect(Rect);
      TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
    end;

    if gdSelected in State then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := $00F8769A;
    end;
      (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_consulta_clientes.DefinirStatusNoGrid(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = 1 then
    Text := 'Ativo'
  else
    Text := 'Inativo';
end;

procedure Tfrm_consulta_clientes.EditarClientes;
begin
  FDataSourceClientes.DataSet.DisableControls;
  try
    FCashClientes.Data := TClientDataSet(FDataSourceClientes.DataSet).Data;
    FCashClientes.MergeChangeLog;
  finally
    FDataSourceClientes.DataSet.EnableControls;
  end;

  HabilitarDesabilitarPainel();

  TClientDataSet(FDataSourceEnderecos.DataSet).FindKey([FDataSourceClientes.DataSet.FieldByName('id_endereco').AsString]);

  FControllerEntidade.Clientes.Editar;
  FControllerEntidade.Enderecos.Editar;
  AplicarMascaras();
end;

procedure Tfrm_consulta_clientes.edtCepExit(Sender: TObject);
begin
  edtCep.AplicarMascaraCEP;
end;

procedure Tfrm_consulta_clientes.edtCnpjExit(Sender: TObject);
begin
  edtCnpj.AplicarMascaraCPFeCNPJ;
end;

procedure Tfrm_consulta_clientes.edtConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    AplicarFiltro();
end;

procedure Tfrm_consulta_clientes.edtCpfExit(Sender: TObject);
begin
  edtCpf.AplicarMascaraCPFeCNPJ;
end;

procedure Tfrm_consulta_clientes.edtTelefoneExit(Sender: TObject);
begin
  edtTelefone.AplicarMascaraTelefone;
end;

procedure Tfrm_consulta_clientes.FormCreate(Sender: TObject);
begin
  FDataSourceClientes := TDataSource.Create(nil);
  FDataSourceEnderecos := TDataSource.Create(nil);
  FCashClientes := TClientDataSet.Create(nil);

  FControllerEntidade := TControllerEntidade.new();

  FDataSourceClientes.DataSet := TDataSet(FControllerEntidade.Clientes.Listar());
  FDataSourceEnderecos.DataSet := TDataSet(FControllerEntidade.Enderecos.Listar());

  FControllerDBGrid := TControllerDBGrid.new;

  FControllerDBGrid
    .PreencherParametros
      .DefinirClientDataSet(TClientDataSet(FControllerEntidade.Clientes.Listar))
    .FimPreenchimento
    .AplicarPaginacao;
end;

procedure Tfrm_consulta_clientes.FormDestroy(Sender: TObject);
begin
  FDataSourceEnderecos.Free;
  FDataSourceClientes.Free;
  FCashClientes.Free;
end;

procedure Tfrm_consulta_clientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    begin
      FDataSourceClientes.DataSet.DisableControls;
      try
        FCashClientes.Data := TClientDataSet(FDataSourceClientes.DataSet).Data;
        FCashClientes.MergeChangeLog;
      finally
        FDataSourceClientes.DataSet.EnableControls;
      end;

      FControllerEntidade.Clientes.Inserir;
      FControllerEntidade.Enderecos.Inserir;

      HabilitarDesabilitarPainel();
    end;
end;

procedure Tfrm_consulta_clientes.FormShow(Sender: TObject);
begin
  if FdataSourceClientes.state in [dsEdit, dsInsert] then
    FdataSourceClientes.dataset.cancel;

  pnlCadastroCliente.Enabled := false;
  pnlCadastroCliente.Visible := false;
  pnlListaClientes.Enabled := true;
  pnlListaClientes.Visible := true;

  edtConsulta.SetFocus;
  CarregarGridClientes();
  AlimentarCamposClientes();
  AlimentarCamposEndereco();
end;

procedure Tfrm_consulta_clientes.HabilitarDesabilitarPainel;
begin
  if pnlCadastroCliente.Enabled then
    begin
      pnlCadastroCliente.Enabled := false;
      pnlCadastroCliente.Visible := false;
      pnlListaClientes.Enabled := true;
      pnlListaClientes.Visible := true;
    end
  else
    begin
      pnlCadastroCliente.Enabled := true;
      pnlCadastroCliente.Visible := true;
      pnlListaClientes.Enabled := false;
      pnlListaClientes.Visible := false;
      edtNome.SetFocus;
    end;
end;

procedure Tfrm_consulta_clientes.InativarCliente;
begin
  TClientDataSet(FDataSourceEnderecos.DataSet).FindKey([FDataSourceClientes.DataSet.FieldByName('id_endereco').AsString]);

  FControllerEntidade.Enderecos.Deletar();
  FControllerEntidade.Clientes.Deletar();
end;

procedure Tfrm_consulta_clientes.LimparFiltros;
begin
  FControllerDBGrid.LimparFiltros;
end;

procedure Tfrm_consulta_clientes.btnSalvarClick(Sender: TObject);
var
  lDadosClientes, lDadosEndereco: TJSONObject;
begin
 // ConsultarCPFCNJP();

  lDadosEndereco := TJSONObject.Create;
  try
    lDadosEndereco.AddPair('endereco', TJSONString.Create(edtEndereco.Text));
    lDadosEndereco.AddPair('numero', TJSONString.Create(edtNumero.Text));
    lDadosEndereco.AddPair('bairro', TJSONString.Create(edtBairro.Text));
    lDadosEndereco.AddPair('uf', TJSONString.Create(edtUF.Text));
    lDadosEndereco.AddPair('cidade', TJSONString.Create(edtCidade.Text));
    lDadosEndereco.AddPair('cep', TJSONString.Create(edtCEP.Text));
    lDadosEndereco.AddPair('referencia', TJSONString.Create(edtReferencia.Text));

    FControllerEntidade.Enderecos.EnviarDados(lDadosEndereco);
  finally
    lDadosEndereco.Free;
  end;

  lDadosClientes := TJSONObject.Create;
  try
    lDadosClientes.AddPair('nome', TJSONString.Create(edtNome.Text));
    lDadosClientes.AddPair('sobrenome', TJSONString.Create(edtSobrenome.Text));
    lDadosClientes.AddPair('cpf', TJSONString.Create(edtCPF.Text));
    lDadosClientes.AddPair('cnpj', TJSONString.Create(edtCNPJ.Text));
    lDadosClientes.AddPair('tipo_pessoa', TJSONString.Create('F'));
    lDadosClientes.AddPair('telefone', TJSONString.Create(edtTelefone.Text));
    lDadosClientes.AddPair('email', TJSONString.Create(edtEmail.Text));
    lDadosClientes.AddPair('id_endereco', TJSONNumber.Create(FControllerEntidade.Enderecos.ObterUltimoId()));

    if (RbSituacao.ItemIndex = 0) or (RbSituacao.ItemIndex = -1) then
      lDadosClientes.AddPair('status', TJSONNumber.Create(1))
    else
      lDadosClientes.AddPair('status', TJSONNumber.Create(2));

    lDadosClientes.AddPair('id_endereco', TJSONNumber.Create(FControllerEntidade.Enderecos.ObterUltimoId()));

    FControllerEntidade.Clientes.EnviarDados(lDadosClientes);
  finally
    lDadosClientes.Free;
  end;

  HabilitarDesabilitarPainel();

  FControllerDBGrid.Atualizar;
  AplicarFiltro();
end;

procedure Tfrm_consulta_clientes.PnlCancelarClick(Sender: TObject);
begin
  HabilitarDesabilitarPainel();
  FControllerEntidade.Clientes.Cancelar();
  FControllerEntidade.Enderecos.Cancelar();
end;

function Tfrm_consulta_clientes.RemoverMascara(pValor: string): string;
var
  lValor: string;
begin
  lValor := pValor;

  lValor := StringReplace(lValor, ' ', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '(', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, ')', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '.', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '-', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '/', '', [rfReplaceAll]);

  Result := lValor;
end;

end.
