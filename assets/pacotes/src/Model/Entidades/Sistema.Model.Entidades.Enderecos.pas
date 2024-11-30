unit Sistema.Model.Entidades.Enderecos;

interface

uses
  Sistema.Model.Interfaces, Data.DB, System.Classes, Datasnap.DBClient, System.JSON;

type

  TModelEntidadeEnderecos = class(TInterfacedObject, IModelEntidade)
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
  FQUERY = 'SELECT * FROM enderecos';

{ TModelEntidadeEnderecos }

procedure TModelEntidadeEnderecos.Cancelar;
begin
  FClientDataSet.Cancel;
end;

constructor TModelEntidadeEnderecos.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadeEnderecos.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('endereco', ftstring, 255);
  FClientDataSet.FieldDefs.Add('numero', ftstring, 11);
  FClientDataSet.FieldDefs.Add('bairro', ftstring, 255);
  FClientDataSet.FieldDefs.Add('uf', ftstring, 2);
  FClientDataSet.FieldDefs.Add('cidade', ftstring, 255);
  FClientDataSet.FieldDefs.Add('cep', ftstring, 14);
  FClientDataSet.FieldDefs.Add('referencia', ftstring, 255);
  FClientDataSet.FieldDefs.Add('status', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('endereco').DisplayWidth := 40;
  FClientDataSet.FieldByName('numero').DisplayWidth := 40;
  FClientDataSet.FieldByName('bairro').DisplayWidth := 22;
  FClientDataSet.FieldByName('uf').DisplayWidth := 22;
  FClientDataSet.FieldByName('cidade').DisplayWidth := 10;
  FClientDataSet.FieldByName('cep').DisplayWidth := 20;
  FClientDataSet.FieldByName('referencia').DisplayWidth := 30;

  FClientDataSet.AddIndex('IdxId', 'id', []);
  FClientDataSet.IndexName := 'IdxId';
end;

procedure TModelEntidadeEnderecos.Deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadeEnderecos.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadeEnderecos.Editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadeEnderecos.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.FieldByName('endereco').AsString := LowerCase(pDados.GetValue<string>('endereco'));
  FClientDataSet.FieldByName('numero').AsString := pDados.GetValue<string>('numero');
  FClientDataSet.FieldByName('bairro').AsString := LowerCase(pDados.GetValue<string>('bairro'));
  FClientDataSet.FieldByName('uf').AsString := LowerCase(pDados.GetValue<string>('uf'));
  FClientDataSet.FieldByName('cidade').AsString := LowerCase(pDados.GetValue<string>('cidade'));
  FClientDataSet.FieldByName('cep').AsString := pDados.GetValueWithoutMask('cep');
  FClientDataSet.FieldByName('referencia').AsString := LowerCase(pDados.GetValue<string>('referencia'));

  FClientDataSet.post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadeEnderecos.Inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadeEnderecos.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadeEnderecos.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadeEnderecos.ObterUltimoId: Integer;
begin
  FClientDataSet.Last;
  Result := FClientDataSet.FieldByName('Id').AsInteger;
end;

end.
