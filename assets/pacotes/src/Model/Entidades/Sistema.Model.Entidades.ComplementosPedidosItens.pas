unit Sistema.Model.Entidades.ComplementosPedidosItens;

interface

uses
  Sistema.Model.Interfaces, Data.DB, System.Classes, Datasnap.DBClient, System.JSON;

type

  TModelEntidadeComplementosPedidosItens = class(TInterfacedObject, IModelEntidade)
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
  FQUERY = 'SELECT * FROM pedidos_itens_complementos';

{ TModelEntidadeComplementosPedidosItens }

procedure TModelEntidadeComplementosPedidosItens.Cancelar;
begin
  FClientDataSet.Cancel;
end;

constructor TModelEntidadeComplementosPedidosItens.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadeComplementosPedidosItens.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_pedido_item', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_complemento', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('id_produto', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('quantidade', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('valor_total', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('status_pedidos_itens_complementos', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 10;
  FClientDataSet.FieldByName('id_pedido_item').DisplayWidth := 10;
  FClientDataSet.FieldByName('id_produto').DisplayWidth := 10;
  FClientDataSet.FieldByName('id_complemento').DisplayWidth := 10;
  FClientDataSet.FieldByName('quantidade').DisplayWidth := 15;
  FClientDataSet.FieldByName('valor_total').DisplayWidth := 15;
  FClientDataSet.FieldByName('status_pedidos_itens_complementos').DisplayWidth := 10;

  FClientDataSet.AddIndex('Idxid_pedido_item', 'id_pedido_item', []);
  FClientDataSet.IndexName := 'Idxid_pedido_item';
end;

procedure TModelEntidadeComplementosPedidosItens.Deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status_pedidos_itens_complementos').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadeComplementosPedidosItens.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadeComplementosPedidosItens.Editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadeComplementosPedidosItens.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.state in [dsEdit, dsInsert]) then
    Exit;

  FClientDataSet.FieldByName('id_pedido_item').AsInteger := pDados.GetValue<Integer>('id_pedido_item');
  FClientDataSet.FieldByName('id_complemento').AsInteger := pDados.GetValue<Integer>('id_complemento');
  FClientDataSet.FieldByName('id_produto').AsInteger := pDados.GetValue<Integer>('id_produto');
  FClientDataSet.FieldByName('quantidade').AsFloat := pDados.GetValue<Double>('quantidade');
  FClientDataSet.FieldByName('valor_total').AsFloat := pDados.GetValue<Double>('valor_total');
  FClientDataSet.FieldByName('status_pedidos_itens_complementos').AsInteger := pDados.GetValue<Integer>('status_pedidos_itens_complementos');

  FClientDataSet.post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadeComplementosPedidosItens.Inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadeComplementosPedidosItens.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadeComplementosPedidosItens.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadeComplementosPedidosItens.ObterUltimoId: Integer;
begin
  FClientDataSet.Last;
  Result := FClientDataSet.FieldByName('ID').AsInteger;
end;

end.
