unit Sistema.Controller.Entidade;

interface

uses
  Sistema.Crontroller.Interfaces, Sistema.Model.Interfaces;

type
  TControllerEntidade = class(TInterfacedObject, IControllerEntidade)
  private
    FEntidadeCliente: IModelEntidade;
    FEntidadeEndereco: IModelEntidade;
    FEntidadePedido: IModelEntidade;
    FEntidadePedidosItens: IModelEntidade;
    FEntidadeProdutos: IModelEntidade;
    FEntidadeComplementos: IModelEntidade;
    FEntidadeComplementosPedidosItens: IModelEntidade;
    FEntidadeFormaPagamento: IModelEntidade;
  public
    class function new: IControllerEntidade;
    function Clientes: IModelEntidade;
    function Produtos: IModelEntidade;
    function Pedidos: IModelEntidade;
    function Enderecos: IModelEntidade;
    function PedidosItens: IModelEntidade;
    function Complementos: IModelEntidade;
    function ComplementosPedidosItens: IModelEntidade;
    function FormaPagamento: IModelEntidade;
  end;

implementation

uses
  Sistema.Controller.Entidades.Factory;

{ TControllerEntidade }

function TControllerEntidade.Clientes: IModelEntidade;
begin
  if not assigned(FEntidadeCliente) then
    FEntidadeCliente := TControllerEntidadeFactory.new.ObterEntidadeClientes;

  Result := FEntidadeCliente;
end;

function TControllerEntidade.Complementos: IModelEntidade;
begin
  if not assigned(FEntidadeComplementos) then
    FEntidadeComplementos := TControllerEntidadeFactory.new.ObterEntidadeComplementos;

  Result := FEntidadeComplementos;
end;

function TControllerEntidade.ComplementosPedidosItens: IModelEntidade;
begin
  if not assigned(FEntidadeComplementosPedidosItens) then
    FEntidadeComplementosPedidosItens := TControllerEntidadeFactory.new.ObterEntidadeComplementoPedidosItens;

  Result := FEntidadeComplementosPedidosItens;
end;

function TControllerEntidade.Enderecos: IModelEntidade;
begin
  if not assigned(FEntidadeEndereco) then
    FEntidadeEndereco := TControllerEntidadeFactory.new.ObterEntidadeEnderecos;

  Result := FEntidadeEndereco;
end;

function TControllerEntidade.FormaPagamento: IModelEntidade;
begin
  if not assigned(FEntidadeFormaPagamento) then
    FEntidadeFormaPagamento := TControllerEntidadeFactory.new.ObterEntidadeFormaPagamento;

  Result := FEntidadeFormaPagamento;
end;

function TControllerEntidade.Pedidos: IModelEntidade;
begin
  if not assigned(FEntidadePedido) then
    FEntidadePedido := TControllerEntidadeFactory.new.ObterEntidadePedidos;

  Result := FEntidadePedido;
end;

function TControllerEntidade.PedidosItens: IModelEntidade;
begin
  if not assigned(FEntidadePedidosItens) then
    FEntidadePedidosItens := TControllerEntidadeFactory.new.ObterEntidadePedidosItens;

  Result := FEntidadePedidosItens;
end;

function TControllerEntidade.Produtos: IModelEntidade;
begin
  if not assigned(FEntidadeProdutos) then
    FEntidadeProdutos := TControllerEntidadeFactory.new.ObterEntidadeProdutos;

  Result := FEntidadeProdutos;
end;

class function TControllerEntidade.new: IControllerEntidade;
begin
  Result := Self.Create;
end;

end.
