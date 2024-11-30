unit Sistema.Controllers.Helpers.JSONObject;

interface

uses
  Vcl.StdCtrls, Data.DB, Vcl.DBCtrls, System.SysUtils, System.JSON;

type
  TControllerHelperIModelEntidade = class helper for TJSONObject
  public
    function GetValueWithoutMask(const Key: string): string;
  end;

implementation

function TControllerHelperIModelEntidade.GetValueWithoutMask(const Key: string): string;
var
  lValor: string;
begin
  lValor := Self.GetValue<string>(Key);

  lValor := StringReplace(lValor, '(', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, ')', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '.', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '-', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '/', '', [rfReplaceAll]);

  Result := lValor;
end;

end.
