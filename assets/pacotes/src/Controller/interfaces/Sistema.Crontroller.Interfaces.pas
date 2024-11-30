unit Sistema.Crontroller.Interfaces;

interface

uses
  System.Classes, Data.DB, Sistema.Model.Interfaces, Datasnap.DBClient;

type
  TTipoTela = (tpClientes, tpEndereco, tpProdutos, tpComplementos);

  Tprocedures = reference to procedure;

  IControllerEntidade = interface
    ['{C682791E-C47B-4019-A633-4906233B5FCE}']
    function Clientes: IModelEntidade;
    function Produtos: IModelEntidade;
    function Pedidos: IModelEntidade;
    function Enderecos: IModelEntidade;
    function Complementos: IModelEntidade;
    function PedidosItens: IModelEntidade;
    function ComplementosPedidosItens: IModelEntidade;
    function FormaPagamento: IModelEntidade;
  end;

  IControllerEntidadeFactory = interface
    ['{7919FD30-6CC0-4D41-B748-8665EF017CAF}']
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

end.
