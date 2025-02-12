unit Sistema.Model.Entidades.PedidosItens;

interface

uses
  Sistema.Model.Interfaces, Data.DB, System.Classes, Datasnap.DBClient, System.JSON, Sistema.Model.Entidades.Factory;

type
  TModelEntidadePedidosItens = class(TInterfacedObject, IModelEntidade)
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
    procedure Finalizar;
    function ObterUltimoId: Integer;
    procedure EnviarDados(pDados: TJSONObject); overload;
  end;

implementation

uses
  System.SysUtils, Sistema.Model.DataSetFactory;

Const
  FQUERY = 'SELECT * FROM pedidos_itens';

{ TModelEntidadePedidosItens }

procedure TModelEntidadePedidosItens.Cancelar;
begin
  FClientDataSet.Cancel;
end;

constructor TModelEntidadePedidosItens.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadePedidosItens.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_produto', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_pedido', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('quantidade', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('valor_total', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('status_pedidos_itens', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('id_produto').DisplayWidth := 20;
  FClientDataSet.FieldByName('id_pedido').DisplayWidth := 20;
  FClientDataSet.FieldByName('quantidade').DisplayWidth := 20;
  FClientDataSet.FieldByName('valor_total').DisplayWidth := 20;
  FClientDataSet.FieldByName('status_pedidos_itens').DisplayWidth := 20;

  FClientDataSet.AddIndex('Idxid_pedidoPedidoItens', 'id_pedido', []);
  FClientDataSet.IndexName := 'Idxid_pedidoPedidoItens';
end;

procedure TModelEntidadePedidosItens.Deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status_pedidos_itens').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadePedidosItens.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadePedidosItens.Editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadePedidosItens.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.state in [dsEdit, dsInsert]) then
    Exit;

  FClientDataSet.FieldByName('id_produto').AsInteger := pDados.GetValue<Integer>('id_produto');
  FClientDataSet.FieldByName('id_pedido').AsInteger := pDados.GetValue<Integer>('id_pedido');
  FClientDataSet.FieldByName('quantidade').AsFloat := pDados.GetValue<Double>('quantidade');
  FClientDataSet.FieldByName('valor_total').AsFloat := pDados.GetValue<Double>('valor_total');
  FClientDataSet.FieldByName('status_pedidos_itens').AsInteger := pDados.GetValue<Integer>('status_pedidos_itens');

  FClientDataSet.post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh();
end;

procedure TModelEntidadePedidosItens.Finalizar;
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadePedidosItens.Inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadePedidosItens.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadePedidosItens.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadePedidosItens.ObterUltimoId: Integer;
var
  lModelDataSet: IModelDataSet;
  lQuery: TDataSet;
begin
  lModelDataSet := TModelDataSetFactory.new.dataSet;

  lQuery := lModelDataSet.open('SELECT max(id) as id FROM pedidos_itens') as TDataSet;

  if lQuery.IsEmpty then
    Result := 0
  else
    Result :=  lQuery.FieldByName('id').AsInteger;
end;

end.
