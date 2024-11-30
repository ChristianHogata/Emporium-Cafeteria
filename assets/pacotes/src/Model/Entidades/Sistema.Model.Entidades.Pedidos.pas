unit Sistema.Model.Entidades.Pedidos;

interface

uses
  Sistema.Model.Interfaces, Sistema.Model.Entidades.Factory, Data.DB, System.Classes, Datasnap.DBClient, System.JSON;

type
  TModelEntidadePedidos = class(TInterfacedObject, IModelEntidade)
  private
    FDataSet: IModelDataSet;
    FClientDataSet: TClientDataSet;
    procedure CriarClientDataSet;
    constructor Create;
    procedure ClientDataSetCalcFields(DataSet: TDataSet);
  public
    destructor Destroy; override;
    class function new: IModelEntidade;
    function Listar: TComponent;
    procedure Editar;
    procedure Deletar;
    procedure Inserir;
    procedure Cancelar;
    function ObterUltimoId: Integer;
    procedure EnviarDados(pDados: TJSONObject);
  end;

implementation

uses
  System.SysUtils, Sistema.Model.DataSetFactory;

Const
  FQUERY = 'SELECT pd.*, ROW_NUMBER() OVER (ORDER BY data_pedido) as Index FROM pedidos pd';

{ TModelEntidadePedidos }

procedure TModelEntidadePedidos.Cancelar;
begin
  FClientDataSet.Cancel;
end;

procedure TModelEntidadePedidos.ClientDataSetCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Index').AsInteger := DataSet.RecNo;
end;

constructor TModelEntidadePedidos.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadePedidos.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('valor_total', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('valor_pago', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('valor_troco', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('id_cliente', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_forma_pagamento', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_usuario', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('data_pedido', ftDateTime, 0);
  FClientDataSet.FieldDefs.Add('status_pedido', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('Index', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('valor_total').DisplayWidth := 70;
  FClientDataSet.FieldByName('valor_pago').DisplayWidth := 40;
  FClientDataSet.FieldByName('valor_troco').DisplayWidth := 22;
  FClientDataSet.FieldByName('id_cliente').DisplayWidth := 22;
  FClientDataSet.FieldByName('id_forma_pagamento').DisplayWidth := 10;
  FClientDataSet.FieldByName('id_usuario').DisplayWidth := 20;
  FClientDataSet.FieldByName('data_pedido').DisplayWidth := 10;
  FClientDataSet.FieldByName('status_pedido').DisplayWidth := 10;
  FClientDataSet.FieldByName('Index').DisplayWidth := 10;

  FClientDataSet.AddIndex('IdxData_pedidoIDPedido', 'data_pedido;id', []);
  FClientDataSet.IndexName := 'IdxData_pedidoIDPedido';
end;

procedure TModelEntidadePedidos.Deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status_pedido').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadePedidos.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadePedidos.Editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadePedidos.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.FieldByName('valor_total').AsFloat := pDados.GetValue<Double>('valor_total');
  FClientDataSet.FieldByName('valor_pago').AsFloat := pDados.GetValue<Double>('valor_pago');
  FClientDataSet.FieldByName('valor_troco').AsFloat := pDados.GetValue<Double>('valor_troco');
  FClientDataSet.FieldByName('id_cliente').AsInteger := pDados.GetValue<Integer>('id_cliente');
  FClientDataSet.FieldByName('id_forma_pagamento').AsInteger := pDados.GetValue<Integer>('id_forma_pagamento');
  FClientDataSet.FieldByName('id_usuario').AsInteger := pDados.GetValue<Integer>('id_usuario');
  FClientDataSet.FieldByName('data_pedido').AsDateTime := Now();
  FClientDataSet.FieldByName('status_pedido').AsInteger := pDados.GetValue<Integer>('status_pedido');

  FClientDataSet.post;
  FClientDataSet.ApplyUpdates(0);
end;

procedure TModelEntidadePedidos.Inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadePedidos.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadePedidos.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadePedidos.ObterUltimoId: Integer;
var
  lModelDataSet: IModelDataSet;
  lQuery: TDataSet;
begin
  lModelDataSet := TModelDataSetFactory.new.dataSet;

  lQuery := lModelDataSet.open('SELECT max(id) as id FROM pedidos') as TDataSet;

  if lQuery.IsEmpty then
    Result := 0
  else
    Result :=  lQuery.FieldByName('id').AsInteger;
end;

end.
