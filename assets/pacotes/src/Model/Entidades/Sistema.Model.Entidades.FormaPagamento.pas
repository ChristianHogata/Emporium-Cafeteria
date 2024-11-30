unit Sistema.Model.Entidades.FormaPagamento;

interface

uses
  Sistema.Model.Interfaces, System.Classes, Datasnap.DBClient, System.JSON;

type
  TModelEntidadeFormaDePagamento = class(TInterfacedObject, IModelEntidade)
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
  System.SysUtils, Sistema.Model.DataSetFactory, Data.DB, Sistema.Models.Helpers.JSONObject;

Const
  FQUERY = 'SELECT * FROM public."forma_pagamento"';

{ TModelEntidadeFormaDePagamento }

procedure TModelEntidadeFormaDePagamento.cancelar;
begin
  FClientDataSet.Cancel;
end;


constructor TModelEntidadeFormaDePagamento.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadeFormaDePagamento.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('descricao', ftstring, 40);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('descricao').DisplayWidth := 40;

  FClientDataSet.AddIndex('IdxId', 'id', []);
  FClientDataSet.IndexName := 'IdxId';
end;

procedure TModelEntidadeFormaDePagamento.deletar;
begin
  FClientDataSet.Delete;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadeFormaDePagamento.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadeFormaDePagamento.editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadeFormaDePagamento.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.FieldByName('descricao').AsString := LowerCase(pDados.GetValue<string>('descricao'));

  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadeFormaDePagamento.inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadeFormaDePagamento.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadeFormaDePagamento.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadeFormaDePagamento.ObterUltimoId: Integer;
begin

end;

end.
