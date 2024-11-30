unit Sistema.Controllers.Helpers.DBEdit;

interface

uses
  Vcl.StdCtrls, Data.DB, Vcl.DBCtrls, System.SysUtils;

type
  TControllerHelperDBEdit = class helper for TDBEdit
  public
    procedure AplicarMascaraCPFeCNPJ;
    procedure AplicarMascaraTelefone;
    procedure AplicarMascaraCEP;
  end;

implementation

procedure TControllerHelperDBEdit.AplicarMascaraCEP;
var
  Value: string;
begin
  Value := Text;

  if Length(Value) = 8 then
    Text := Format('%s-%s', [Copy(Value, 1, 5), Copy(Value, 6, 3)]);
end;

procedure TControllerHelperDBEdit.AplicarMascaraCPFeCNPJ;
var
  FieldValue: string;
begin
  if Assigned(DataSource) and not DataField.Equals('') then
  begin
    FieldValue := DataSource.DataSet.FieldByName(DataField).AsString;
    if Length(FieldValue) = 11 then
    begin
      // AplicarMascaraTelefone máscara de CPF
      Text := Format('%s.%s.%s-%s', [Copy(FieldValue, 1, 3), Copy(FieldValue, 4, 3), Copy(FieldValue, 7, 3), Copy(FieldValue, 10, 2)]);
    end
    else if Length(FieldValue) = 14 then
    begin
      // AplicarMascaraTelefone máscara de CNPJ
      Text := Format('%s.%s.%s/%s-%s', [Copy(FieldValue, 1, 2), Copy(FieldValue, 3, 3), Copy(FieldValue, 6, 3), Copy(FieldValue, 9, 4), Copy(FieldValue, 13, 2)]);
    end;
  end;
end;

procedure TControllerHelperDBEdit.AplicarMascaraTelefone;
var
  Value: string;
begin
  Value := Text;

  if Length(Value) = 10 then
    Text := Format('(%s) %s-%s', [Copy(Value, 1, 2), Copy(Value, 3, 4), Copy(Value, 7, 4)])
  else
    if Length(Value) = 11 then
      Text := Format('(%s) %s-%s', [Copy(Value, 1, 2), Copy(Value, 3, 5), Copy(Value, 8, 4)]);
end;

end.
