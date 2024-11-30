unit Sistema.Models.Helpers.JSONObject;

interface

uses
  Vcl.StdCtrls, Data.DB, Vcl.DBCtrls, System.SysUtils, System.JSON;

type
  TModelHelperJSONObject = class helper for TJSONObject
  public
    function GetValueWithoutMask(const Key: string): string;
  end;

implementation

function TModelHelperJSONObject.GetValueWithoutMask(const Key: string): string;
var
  lValor: string;
begin
  lValor := Self.GetValue<string>(Key);

  lValor := StringReplace(lValor, ' ', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '(', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, ')', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '.', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '-', '', [rfReplaceAll]);
  lValor := StringReplace(lValor, '/', '', [rfReplaceAll]);

  Result := lValor;
end;

end.
