unit Sistema.Model.Entidades.Complementos;

interface

uses
  Sistema.Model.Interfaces, System.Classes, Datasnap.DBClient, System.JSON;

type
  TModelEntidadeComplementos = class(TInterfacedObject, IModelEntidade)
  private
    FDataSet: IModelDataSet;
    FClientDataSet: TClientDataSet;
    procedure CriarClientDataSet;
    constructor Create;
  public
    destructor Destroy; override;
    class function new: IModelEntidade;
    function Listar: TComponent;
    procedure editar;
    procedure inserir;
    procedure cancelar;
    procedure deletar;
    function ObterUltimoId: Integer;
    procedure EnviarDados(pDados: TJSONObject);
  end;

implementation

uses
  System.SysUtils, Sistema.Model.DataSetFactory, Data.DB;

Const
  FQUERY = 'SELECT cp.*, ROW_NUMBER() OVER (ORDER BY descricao) as Index FROM public."complementos" cp ORDER BY descricao ASC';

{ TModelEntidadeComplementos }

procedure TModelEntidadeComplementos.cancelar;
begin
  FClientDataSet.Cancel;
end;

constructor TModelEntidadeComplementos.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadeComplementos.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('descricao', ftstring, 255);
  FClientDataSet.FieldDefs.Add('valor', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('observacao', ftstring, 255);
  FClientDataSet.FieldDefs.Add('Index', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('status', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('descricao').DisplayWidth := 30;
  FClientDataSet.FieldByName('valor').DisplayWidth := 30;
  FClientDataSet.FieldByName('observacao').DisplayWidth := 100;
  FClientDataSet.FieldByName('Index').DisplayWidth := 10;

  FClientDataSet.AddIndex('IdxId', 'id', []);
  FClientDataSet.AddIndex('IdxDescricao', 'descricao', []);
  FClientDataSet.IndexName := 'IdxId';
end;

procedure TModelEntidadeComplementos.deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadeComplementos.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadeComplementos.editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadeComplementos.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.FieldByName('descricao').AsString := LowerCase(pDados.GetValue<string>('descricao'));
  FClientDataSet.FieldByName('valor').AsFloat := pDados.GetValue<Double>('valor');
  FClientDataSet.FieldByName('observacao').AsString := pDados.GetValue<string>('observacao');
  FClientDataSet.FieldByName('status').AsString := pDados.GetValue<string>('status');

  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadeComplementos.inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadeComplementos.Listar: TComponent;
begin
  Result := FClientDataSet;
end;

class function TModelEntidadeComplementos.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadeComplementos.ObterUltimoId: Integer;
begin

end;

end.
