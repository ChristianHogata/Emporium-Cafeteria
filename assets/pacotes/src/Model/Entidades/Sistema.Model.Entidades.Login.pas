unit Sistema.Model.Entidades.Login;

interface

uses
  Sistema.Model.Interfaces, System.JSON;

type
  TModelEntidadeLogin = class(TInterfacedObject, IModelEntidadeLogin)
  private
    FIdUsuario: Integer;
    FNomeUsuario: string;
    class var FInstance: IModelEntidadeLogin;
    function ObterNome: string;
    function ObterId: Integer;
    constructor Create;
  public
    property Id: Integer read ObterId;
    property Nome: string read ObterNome;
    procedure VerificarCredenciais(pLogin: string; pSenha: string);
    procedure EfetuarLogin(pDados: TJSONObject);
    procedure EfetuarLogoff;
    class function ObterInstancia: IModelEntidadeLogin;
    destructor Destroy; override;
  end;
implementation

uses
  Sistema.Model.Entidades.Factory, Datasnap.DBClient, System.SysUtils;

{ TModelEntidadeLogin }

constructor TModelEntidadeLogin.Create;
begin
  FIdUsuario := 0;
end;

destructor TModelEntidadeLogin.Destroy;
begin
  inherited;
end;

procedure TModelEntidadeLogin.EfetuarLogin(pDados: TJSONObject);
var
  lModelEntidadeUsuario: IModelEntidade;
  lClientDataSetUsuarios: TClientDataSet;
begin
  lModelEntidadeUsuario := TModelEntityFactory.new.GetModelEntidadesUsuarios();
  lClientDataSetUsuarios := lModelEntidadeUsuario.Listar as TClientDataSet;

  if not lClientDataSetUsuarios.FindKey([pDados.GetValue<string>('login'), pDados.GetValue<string>('senha')]) then
    raise Exception.Create('Login ou senha incorretos!');

  FNomeUsuario := lClientDataSetUsuarios.FieldByName('login').AsString;
  FIdUsuario := lClientDataSetUsuarios.FieldByName('id').AsInteger;
end;

procedure TModelEntidadeLogin.EfetuarLogoff;
begin
  FInstance := nil;
end;

function TModelEntidadeLogin.ObterId: Integer;
begin
  Result := FIdUsuario;
end;

class function TModelEntidadeLogin.ObterInstancia: IModelEntidadeLogin;
begin
  if not Assigned(FInstance) then
    FInstance := Self.Create;

  Result := FInstance;
end;

function TModelEntidadeLogin.ObterNome: string;
begin
  Result := FNomeUsuario;
end;

procedure TModelEntidadeLogin.VerificarCredenciais(pLogin, pSenha: string);
var
  lModelEntidadeUsuario: IModelEntidade;
  lClientDataSetUsuarios: TClientDataSet;
begin
  lModelEntidadeUsuario := TModelEntityFactory.new.GetModelEntidadesUsuarios();
  lClientDataSetUsuarios := lModelEntidadeUsuario.Listar as TClientDataSet;

  if not lClientDataSetUsuarios.FindKey([LowerCase(plogin), LowerCase(pSenha)]) then
    raise Exception.Create('Login ou senha incorretos!');
end;

end.
