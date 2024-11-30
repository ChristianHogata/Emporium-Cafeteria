unit Sistema.Model.Entidades.Clientes;

interface

uses
  Sistema.Model.Interfaces, Data.DB, System.Classes, Datasnap.DBClient, System.JSON;

type

  TModelEntidadeClientes = class(TInterfacedObject, IModelEntidade)
  private
    FDataSet: IModelDataSet;
    FClientDataSet: TClientDataSet;
    procedure CriarClientDataSet;
    constructor Create;
  public
    destructor Destroy; override;
    class function new: IModelEntidade;
    function Listar: TComponent;
    procedure Editar;
    procedure Deletar;
    procedure Inserir;
    procedure Cancelar;
    procedure EnviarDados(pDados: TJSONObject);
    function ObterUltimoId: Integer;
  end;

implementation

uses
  System.SysUtils, Sistema.Model.DataSetFactory, Sistema.Models.Helpers.JSONObject;

Const
  FQUERY = 'SELECT cl.*, ROW_NUMBER() OVER (ORDER BY nome, sobrenome) as Index FROM clientes cl';

{ TModelEntidadeClientes }

procedure TModelEntidadeClientes.Cancelar;
begin
  FClientDataSet.Cancel;
end;

constructor TModelEntidadeClientes.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadeClientes.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('nome', ftstring, 255);
  FClientDataSet.FieldDefs.Add('sobrenome', ftstring, 255);
  FClientDataSet.FieldDefs.Add('cpf', ftstring, 11);
  FClientDataSet.FieldDefs.Add('cnpj', ftstring, 14);
  FClientDataSet.FieldDefs.Add('tipo_pessoa', ftstring, 1);
  FClientDataSet.FieldDefs.Add('telefone', ftstring, 20);
  FClientDataSet.FieldDefs.Add('email', ftstring, 100);
  FClientDataSet.FieldDefs.Add('Index', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('status', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('nome').DisplayWidth := 40;
  FClientDataSet.FieldByName('sobrenome').DisplayWidth := 40;
  FClientDataSet.FieldByName('cpf').DisplayWidth := 22;
  FClientDataSet.FieldByName('cnpj').DisplayWidth := 22;
  FClientDataSet.FieldByName('tipo_pessoa').DisplayWidth := 10;
  FClientDataSet.FieldByName('telefone').DisplayWidth := 20;
  FClientDataSet.FieldByName('email').DisplayWidth := 30;
  FClientDataSet.FieldByName('Index').DisplayWidth := 10;

  FClientDataSet.AddIndex('IdxIdNome', 'nome;sobrenome;id', []);
  FClientDataSet.AddIndex('IdxCpf', 'cpf', []);
  FClientDataSet.AddIndex('IdxId', 'id', []);
  FClientDataSet.IndexName := 'IdxIdNome';
end;

procedure TModelEntidadeClientes.Deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadeClientes.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadeClientes.Editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadeClientes.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.FieldByName('nome').AsString := LowerCase(pDados.GetValue<string>('nome'));
  FClientDataSet.FieldByName('sobrenome').AsString := LowerCase(pDados.GetValue<string>('sobrenome'));
  FClientDataSet.FieldByName('cpf').AsString := pDados.GetValueWithoutMask('cpf');
  FClientDataSet.FieldByName('cnpj').AsString := pDados.GetValueWithoutMask('cnpj');
  FClientDataSet.FieldByName('tipo_pessoa').AsString := pDados.GetValue<string>('tipo_pessoa');
  FClientDataSet.FieldByName('telefone').AsString := pDados.GetValueWithoutMask('telefone');
  FClientDataSet.FieldByName('email').AsString := LowerCase(pDados.GetValue<string>('email'));
  FClientDataSet.FieldByName('id_endereco').AsInteger := pDados.GetValue<Integer>('id_endereco');
  FClientDataSet.FieldByName('status').AsInteger := pDados.GetValue<Integer>('status');

  FClientDataSet.post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadeClientes.Inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadeClientes.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadeClientes.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadeClientes.ObterUltimoId: Integer;
begin
  FClientDataSet.Last;
  Result := FClientDataSet.FieldByName('ID').AsInteger;
end;

end.
