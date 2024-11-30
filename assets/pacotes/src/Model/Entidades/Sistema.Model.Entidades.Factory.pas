unit Sistema.Model.Entidades.Factory;

interface

uses
  Sistema.Model.Interfaces;

type
  TModelEntityFactory = class(TInterfacedObject, IModelEntidadeFactory)
  public
    class function new: IModelEntidadeFactory;
    function GetModelEntidadesClientes: IModelEntidade;
    function GetModelEntidadesProdutos: IModelEntidade;
    function GetModelEntidadesPedidos: IModelEntidade;
    function GetModelEntidadesEnderecos: IModelEntidade;
    function GetModelEntidadesPedidosItens: IModelEntidade;
    function GetModelEntidadesComplementos: IModelEntidade;
    function GetModelEntidadesComplementosPedidosItens: IModelEntidade;
    function GetModelEntidadesFormaPagamento: IModelEntidade;
  end;

implementation

uses
  Sistema.Model.Entidades.Clientes, Sistema.Model.Entidades.PedidosItens,
  Sistema.Model.DataSetFactory, Sistema.Model.Entidades.Produtos,
  Sistema.Model.Entidades.Pedidos, Sistema.Model.Entidades.Enderecos,
  Sistema.Model.Entidades.Complementos,
  Sistema.Model.Entidades.ComplementosPedidosItens, Sistema.Model.Entidades.FormaPagamento;

{ TModelEntityFactory }

function TModelEntityFactory.GetModelEntidadesClientes: IModelEntidade;
begin
  Result := TModelEntidadeClientes.new;
end;

function TModelEntityFactory.GetModelEntidadesComplementos: IModelEntidade;
begin
  Result := TModelEntidadeComplementos.new();
end;

function TModelEntityFactory.GetModelEntidadesComplementosPedidosItens: IModelEntidade;
begin
  Result := TModelEntidadeComplementosPedidosItens.new;
end;

function TModelEntityFactory.GetModelEntidadesEnderecos: IModelEntidade;
begin
  Result := TModelEntidadeEnderecos.new;
end;

function TModelEntityFactory.GetModelEntidadesFormaPagamento: IModelEntidade;
begin
  Result := TModelEntidadeFormaDePagamento.new;
end;

function TModelEntityFactory.GetModelEntidadesPedidos: IModelEntidade;
begin
  Result := TModelEntidadePedidos.new;
end;

function TModelEntityFactory.GetModelEntidadesPedidosItens: IModelEntidade;
begin
  Result := TModelEntidadePedidosItens.new;
end;

function TModelEntityFactory.GetModelEntidadesProdutos: IModelEntidade;
begin
  Result := TModelEntidadeProdutos.new;
end;

class function TModelEntityFactory.new: IModelEntidadeFactory;
begin
  Result := Self.Create;
end;

end.
