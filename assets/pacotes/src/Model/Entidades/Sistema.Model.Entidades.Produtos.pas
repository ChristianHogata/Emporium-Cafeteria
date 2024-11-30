unit Sistema.Model.Entidades.Produtos;

interface

uses
  Sistema.Model.Interfaces, Data.DB, System.Classes, Datasnap.DBClient, System.JSON;

type
  TModelEntidadeProdutos = class(TInterfacedObject, IModelEntidade)
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
    procedure Finalizar;
    procedure Inserir;
    procedure Cancelar;
    function ObterUltimoId: Integer;
    procedure EnviarDados(pDados: TJSONObject);
  end;

implementation

uses
  System.SysUtils, Sistema.Model.DataSetFactory;

Const
  FQUERY = 'SELECT pd.*, ROW_NUMBER() OVER (ORDER BY descricao) as Index FROM produtos pd order by descricao Asc';

{ TModelEntidadeProdutos }

procedure TModelEntidadeProdutos.Cancelar;
begin
  FClientDataSet.Cancel;
end;

constructor TModelEntidadeProdutos.create;
begin
  FDataSet := TModelDataSetFactory.new.dataSet;
  FClientDataSet := TClientDataSet.Create(nil);

  CriarClientDataSet();
end;

procedure TModelEntidadeProdutos.CriarClientDataSet;
begin
  FClientDataSet.FieldDefs.Add('id', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('grupo', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('sub_grupo', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('descricao', ftstring, 255);
  FClientDataSet.FieldDefs.Add('peso_bruto', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('peso_liquido', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('preco_custo', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('preco_venda', ftfloat, 0);
  FClientDataSet.FieldDefs.Add('unidade_entrada', ftstring, 20);
  FClientDataSet.FieldDefs.Add('unidade_saida', ftstring, 20);
  FClientDataSet.FieldDefs.Add('ean', ftstring, 255);
  FClientDataSet.FieldDefs.Add('Index', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('status', ftInteger, 0);
  FClientDataSet.FieldDefs.Add('possui_complemento', ftInteger, 0);

  FClientDataSet.SetProvider(FDataSet.open(FQUERY));
  FClientDataSet.Open;

  FClientDataSet.FieldByName('id').DisplayWidth := 20;
  FClientDataSet.FieldByName('grupo').DisplayWidth := 20;
  FClientDataSet.FieldByName('sub_grupo').DisplayWidth := 20;
  FClientDataSet.FieldByName('descricao').DisplayWidth := 20;
  FClientDataSet.FieldByName('peso_bruto').DisplayWidth := 20;
  FClientDataSet.FieldByName('peso_liquido').DisplayWidth := 20;
  FClientDataSet.FieldByName('preco_custo').DisplayWidth := 20;
  FClientDataSet.FieldByName('preco_venda').DisplayWidth := 20;
  FClientDataSet.FieldByName('unidade_entrada').DisplayWidth := 20;
  FClientDataSet.FieldByName('unidade_saida').DisplayWidth := 20;
  FClientDataSet.FieldByName('ean').DisplayWidth := 20;
  FClientDataSet.FieldByName('status').DisplayWidth := 10;
  FClientDataSet.FieldByName('Index').DisplayWidth := 10;

  FClientDataSet.AddIndex('IdxId', 'id', []);
  FClientDataSet.AddIndex('IdxDescricao', 'descricao', []);

  FClientDataSet.IndexName := 'IdxDescricao';
end;

procedure TModelEntidadeProdutos.Deletar;
begin
  FClientDataSet.Edit;
  FClientDataSet.FieldByName('status').AsInteger := 2;
  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
end;

destructor TModelEntidadeProdutos.destroy;
begin
  FClientDataSet.Free;
  inherited;
end;

procedure TModelEntidadeProdutos.Editar;
begin
  FClientDataSet.Edit;
end;

procedure TModelEntidadeProdutos.EnviarDados(pDados: TJSONObject);
begin
  if not (FClientDataSet.State in [DsInsert, DsEdit]) then
    Exit;

  FClientDataSet.FieldByName('grupo').AsFloat := pDados.GetValue<Double>('grupo');
  FClientDataSet.FieldByName('sub_grupo').AsFloat := pDados.GetValue<Double>('sub_grupo');
  FClientDataSet.FieldByName('descricao').AsString := LowerCase(pDados.GetValue<string>('descricao'));
  FClientDataSet.FieldByName('peso_bruto').AsFloat := pDados.GetValue<Double>('peso_bruto');
  FClientDataSet.FieldByName('peso_liquido').AsFloat := pDados.GetValue<Double>('peso_liquido');
  FClientDataSet.FieldByName('preco_custo').AsFloat := pDados.GetValue<Double>('preco_custo');
  FClientDataSet.FieldByName('preco_venda').AsFloat := pDados.GetValue<Double>('preco_venda');
  FClientDataSet.FieldByName('unidade_entrada').AsString := pDados.GetValue<string>('unidade_entrada');
  FClientDataSet.FieldByName('unidade_saida').AsString := pDados.GetValue<string>('unidade_saida');
  FClientDataSet.FieldByName('ean').AsString := pDados.GetValue<string>('ean');
  FClientDataSet.FieldByName('status').AsInteger := pDados.GetValue<Integer>('status');
  FClientDataSet.FieldByName('caminho_imagem_produto').AsString := pDados.GetValue<string>('caminho_imagem_produto');
  FClientDataSet.FieldByName('possui_complemento').AsInteger := pDados.GetValue<Integer>('possui_complemento');

  FClientDataSet.Post;
  FClientDataSet.ApplyUpdates(0);
  FClientDataSet.Refresh;
end;

procedure TModelEntidadeProdutos.Inserir;
begin
  FClientDataSet.Insert;
end;

function TModelEntidadeProdutos.Listar: TComponent;
begin
  FClientDataSet.Refresh;
  Result := FClientDataSet;
end;

class function TModelEntidadeProdutos.new: IModelEntidade;
begin
  Result := Self.create;
end;

function TModelEntidadeProdutos.ObterUltimoId: Integer;
begin

end;

procedure TModelEntidadeProdutos.Finalizar;
begin
   FClientDataSet.Post;
   FClientDataSet.ApplyUpdates(0);
   FClientDataSet.Refresh;
end;

end.
