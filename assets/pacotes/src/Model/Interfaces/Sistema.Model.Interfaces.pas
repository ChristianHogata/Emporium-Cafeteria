unit Sistema.Model.Interfaces;

interface

uses
  System.Classes, Data.DB, System.Generics.Collections, System.Json;

type
  IModelConexaoParametros = interface;
  IModelEntidadeLogin = interface;
  IModelEntidadeProdutosMovimentos = interface;

  IModelConexao = interface
    ['{0A8E84E8-116D-4A7F-AA43-D2EE36F1BED4}']
    function setParametros: IModelConexaoParametros;
    function Get: TComponent;
  end;

  IModelConexaoFactory = interface
    ['{83F0B33A-0E62-49F3-A6DA-E5FC3C7AD61D}']
    function getConexao: IModelConexao;
  end;

  IModelConexaoParametros = interface
    ['{4DE9BFF8-D143-4AB6-BD11-561389FA910F}']
    function Name(value: UTF8String) : IModelConexaoParametros;
    function DriverName(value: UTF8String) : IModelConexaoParametros;
    function DataBase(value: UTF8String) : IModelConexaoParametros;
    function UserName(value: UTF8String) : IModelConexaoParametros;
    function Password(value: UTF8String) : IModelConexaoParametros;
    function Server(value: UTF8String) : IModelConexaoParametros;
    function Port(value: UTF8String) : IModelConexaoParametros;
    function DriverId(value: UTF8String) : IModelConexaoParametros;
    function VendorHome(value: string) : IModelConexaoParametros;
    function &end: IModelConexao;
  end;

 IModelDataSet = interface
    ['{519B4DB9-F9F5-457F-99D9-1677F1CAF46A}']
    function open(aTable: String): TComponent;
    function get: TComponent;
    procedure ExecutarQuery(pQuery: string);
  end;

  IModelDataSetFactory = interface
    ['{519B4DB9-F9F5-457F-99D9-1677F1CAF46A}']
    function dataSet: IModelDataSet;
  end;

  IModelEntidade = interface
    ['{47B7EB43-A877-4A39-9BC6-1C070EBFE6AB}']
    function Listar: TComponent;
    procedure Editar;
    procedure Deletar;
    procedure Inserir;
    procedure Cancelar;
    procedure EnviarDados(pDados: TJSONObject);
    function ObterUltimoId: Integer;
  end;

  IModelEntidadeFactory = interface
    ['{47B7EB43-A877-4A39-9BC6-1C070EBFE6AB}']
    function GetModelEntidadesClientes: IModelEntidade;
    function GetModelEntidadesProdutos: IModelEntidade;
    function GetModelEntidadesPedidos: IModelEntidade;
    function GetModelEntidadesEnderecos: IModelEntidade;
    function GetModelEntidadesPedidosItens: IModelEntidade;
    function GetModelEntidadesComplementos: IModelEntidade;
    function GetModelEntidadesComplementosPedidosItens: IModelEntidade;
    function GetModelEntidadesFormaPagamento: IModelEntidade;
  end;

  IModelEntidadeProdutosMovimentosParametros = interface
    ['{D91B428A-9483-4285-B05D-ED42C33F13DD}']
    function SetIdProduto(pValor: Integer): IModelEntidadeProdutosMovimentosParametros;
    function SetDataMovimento(pValor: TDateTime): IModelEntidadeProdutosMovimentosParametros;
    function SetTipoMovimento(pValor: string): IModelEntidadeProdutosMovimentosParametros;
    function SetTipoOperacao(pValor: string): IModelEntidadeProdutosMovimentosParametros;
    function SetQuantidadeMovimento(pValor: Double): IModelEntidadeProdutosMovimentosParametros;
    function SetUsuario(pValor: Integer): IModelEntidadeProdutosMovimentosParametros;
    function FimPreenchimento: IModelEntidadeProdutosMovimentos;
  end;

  IModelEntidadeProdutosMovimentos = interface
    ['{9A0FF7FC-1038-4642-A64F-2AA7850FA14A}']
    function PreencherParametros: IModelEntidadeProdutosMovimentosParametros;
    function Listar: TComponent;
    procedure Inserir;
    procedure Cancelar;
    procedure EnviarDados;
    function GetEstoqueAtualProduto(pIdProduto: integer): Double;
  end;

  IModelEntidadeLogin = interface
    ['{CF2DE3CB-BF59-444E-944E-0E801E311A91}']
    function ObterNome: string;
    function ObterId: Integer;
    property Id: Integer read ObterId;
    property Nome: string read ObterNome;
    procedure EfetuarLogin(pDados: TJSONObject);
    procedure EfetuarLogoff;
    procedure VerificarCredenciais(pLogin, pSenha: string);
  end;

implementation

end.
