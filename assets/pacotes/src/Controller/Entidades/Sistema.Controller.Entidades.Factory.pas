unit Sistema.Controller.Entidades.Factory;

interface

uses
  Sistema.Crontroller.Interfaces, Sistema.Model.Interfaces;

type
  TControllerEntidadeFactory = class(TInterfacedObject, IControllerEntidadeFactory)
  public
    class function new: IControllerEntidadeFactory;
    function ObterEntidadeClientes: IModelEntidade;
    function ObterEntidadeProdutos: IModelEntidade;
    function ObterEntidadePedidos: IModelEntidade;
    function ObterEntidadeEnderecos: IModelEntidade;
    function ObterEntidadePedidosItens: IModelEntidade;
    function ObterEntidadeComplementos: IModelEntidade;
    function ObterEntidadeComplementoPedidosItens: IModelEntidade;
    function ObterEntidadeFormaPagamento: IModelEntidade;
  end;

implementation

uses
  Sistema.Model.Entidades.Produtos,
  Sistema.Model.Entidades.PedidosItens, Sistema.Model.Entidades.Pedidos,
  Sistema.Model.Entidades.Enderecos, Sistema.Model.Entidades.Clientes,
  Sistema.Model.Entidades.Complementos,
  Sistema.Model.Entidades.ComplementosPedidosItens,
  Sistema.Model.Entidades.FormaPagamento;

{ TControllerEntidadeFactory }

function TControllerEntidadeFactory.ObterEntidadeClientes: IModelEntidade;
begin
  Result := TModelEntidadeClientes.new;
end;

function TControllerEntidadeFactory.ObterEntidadeComplementoPedidosItens: IModelEntidade;
begin
  Result := TModelEntidadeComplementosPedidosItens.new;
end;

function TControllerEntidadeFactory.ObterEntidadeComplementos: IModelEntidade;
begin
  Result := TModelEntidadeComplementos.new();
end;

function TControllerEntidadeFactory.ObterEntidadeEnderecos: IModelEntidade;
begin
  Result := TModelEntidadeEnderecos.new;
end;

function TControllerEntidadeFactory.ObterEntidadeFormaPagamento: IModelEntidade;
begin
  Result := TModelEntidadeFormaDePagamento.new;
end;

function TControllerEntidadeFactory.ObterEntidadePedidos: IModelEntidade;
begin
  Result := TModelEntidadePedidos.new;
end;

function TControllerEntidadeFactory.ObterEntidadePedidosItens: IModelEntidade;
begin
  Result := TModelEntidadePedidosItens.new;
end;

function TControllerEntidadeFactory.ObterEntidadeProdutos: IModelEntidade;
begin
  Result := TModelEntidadeProdutos.new;
end;

class function TControllerEntidadeFactory.new: IControllerEntidadeFactory;
begin
  Result := Self.Create;
end;

end.
