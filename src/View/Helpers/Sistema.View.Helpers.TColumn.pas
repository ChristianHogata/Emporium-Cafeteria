unit Sistema.View.Helpers.TColumn;

interface

uses
  Vcl.StdCtrls, Data.DB, Vcl.DBCtrls, System.SysUtils, Vcl.DBGrids;

type
  TViewHelperTColumn = class helper for TColumn
  private
    procedure FloatFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CPFCNPJFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure TelefoneFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure TipoPessoaFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure WideStringFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  public
    procedure AdicionarFormatacaoFloat(pColumn: TColumn);
    procedure AdicionarFormatacaoCPFCNPJ(pColumn: TColumn);
    procedure AdicionarFormatacaoTelefone(pColumn: TColumn);
    procedure AdicionarFormatacaoTipoPessoa(pColumn: TColumn);
    procedure AdicionarFormatacao(pColumn: TColumn);
    procedure AdicionarFormatacaoWideString(pColumn: TColumn);
  end;

implementation

uses
  System.Variants, StrUtils;


{ TViewHelperTColumn }



procedure TViewHelperTColumn.FloatFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00', Sender.AsFloat);
end;

procedure TViewHelperTColumn.TelefoneFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  Value: string;
begin
  Value := Sender.AsString;

  if Length(Value) = 10 then
    Text := Format('(%s) %s-%s', [Copy(Value, 1, 2), Copy(Value, 3, 4), Copy(Value, 7, 4)])
  else
    if Length(Value) = 11 then
      Text := Format('(%s) %s-%s', [Copy(Value, 1, 2), Copy(Value, 3, 5), Copy(Value, 8, 4)]);
end;

procedure TViewHelperTColumn.TipoPessoaFieldGetText(Sender: TField  ;var Text: string; DisplayText: Boolean);
begin
  case IndexStr(Trim(UpperCase(Sender.AsString)), ['F', 'J']) of
    0: Text := 'Pessoa F�sica';
    1: Text := 'Pessoa Jur�dica';
  end;
end;

procedure TViewHelperTColumn.WideStringFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Trim(UpperCase(Sender.FieldName))) = 'OBSERVACAO' then
    if (Trim(UpperCase(Sender.AsString))) = '(WIDEMEMO)' then
      Text := '';
end;

{ TViewHelperTColumn }

procedure TViewHelperTColumn.AdicionarFormatacao(pColumn: TColumn);
begin
  AdicionarFormatacaoCPFCNPJ(pColumn);
  AdicionarFormatacaoTelefone(pColumn);
  //AdicionarFormatacaoTipoPessoa(pColumn);
end;

procedure TViewHelperTColumn.AdicionarFormatacaoCPFCNPJ(pColumn: TColumn);
begin
  if (pColumn.Field.DataType <> ftWideString) then
    exit;

  if (Trim(UpperCase(pColumn.Field.DisplayName)) = 'CPF') or (Trim(UpperCase(pColumn.Field.DisplayName)) = 'CNPJ') then
    pColumn.Field.OnGetText := CPFCNPJFieldGetText;
end;

procedure TViewHelperTColumn.AdicionarFormatacaoFloat(pColumn: TColumn);
begin
  if (pColumn.Field.DataType <> ftFloat) then
    exit;

  if not VarIsEmpty(pColumn.Field.Value) then
    pColumn.Field.OnGetText := FloatFieldGetText;
end;

procedure TViewHelperTColumn.AdicionarFormatacaoTelefone(pColumn: TColumn);
begin
  if (pColumn.Field.DataType <> ftWideString) then
    exit;

  if (Trim(UpperCase(pColumn.Field.DisplayName)) = 'TELEFONE') then
    pColumn.Field.OnGetText := TelefoneFieldGetText;
end;

procedure TViewHelperTColumn.AdicionarFormatacaoTipoPessoa(pColumn: TColumn);
begin
  if (pColumn.Field.DataType <> ftWideString) then
    exit;

  if (Trim(UpperCase(pColumn.Field.DisplayName)) = 'TIPO_PESSOA') then
    pColumn.Field.OnGetText := TipoPessoaFieldGetText;
end;

procedure TViewHelperTColumn.AdicionarFormatacaoWideString(pColumn: TColumn);
begin
  if (pColumn.Field.DataType <> ftWideMemo) then
    exit;

  pColumn.Field.OnGetText :=  WideStringFieldGetText;
end;

procedure TViewHelperTColumn.CPFCNPJFieldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  FieldValue: string;
  TextValue: string;
begin
  FieldValue := Sender.AsString;

  if Length(FieldValue) = 11 then
  begin
    // AplicarMascaraTelefone m�scara de CPF
    Text := Format('%s.%s.%s-%s', [Copy(FieldValue, 1, 3), Copy(FieldValue, 4, 3), Copy(FieldValue, 7, 3), Copy(FieldValue, 10, 2)]);
  end
  else if Length(FieldValue) = 14 then
  begin
    // AplicarMascaraTelefone m�scara de CNPJ
    Text := Format('%s.%s.%s/%s-%s', [Copy(FieldValue, 1, 2), Copy(FieldValue, 3, 3), Copy(FieldValue, 6, 3), Copy(FieldValue, 9, 4), Copy(FieldValue, 13, 2)]);
  end;
end;

end.
