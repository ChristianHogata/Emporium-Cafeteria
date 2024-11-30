unit Sistema.Controller.DBGrid;

interface

uses
  Datasnap.DBClient;

type
  IControllerDBGrid = interface;

  IControllerDBGridParametros = interface
    ['{3001230D-B1D7-46B2-99EA-8FE441A9BB88}']
    function DefinirClientDataSet(pClientDataSet: TClientDataSet): IControllerDBGridParametros;
    function FimPreenchimento: IControllerDBGrid;
  end;

  IControllerDBGrid = interface
    ['{96E89E46-9C28-4356-8D70-FE93528D4C7B}']
    function PreencherParametros: IControllerDBGridParametros;
    procedure AplicarPaginacao;
    procedure ProximaPagina;
    procedure PaginaAnterior;
    function ObterPaginaAtual: integer;
    function ObterTotaldePaginas: integer;
    procedure AplicarFiltro(pFiltro: string);
    procedure Atualizar;
    procedure LimparFiltros;
  end;

  TControllerDBGrid = class(TInterfacedObject, IControllerDBGrid, IControllerDBGridParametros)
  private
    FPaginaAtual: Integer;
    FLimiteDePaginas: Integer;
    FClientDataSet: TClientDataSet;
    FTotalDePaginas: Integer;
    constructor Create;
    procedure Filtrar;
  public
    function PreencherParametros: IControllerDBGridParametros;
    procedure AplicarPaginacao;
    procedure ProximaPagina;
    procedure PaginaAnterior;
    function DefinirClientDataSet(pClientDataSet: TClientDataSet): IControllerDBGridParametros;
    function FimPreenchimento: IControllerDBGrid;
    function ObterPaginaAtual: integer;
    function ObterTotaldePaginas: integer;
    procedure AplicarFiltro(pFiltro: string);
    procedure Atualizar;
    procedure LimparFiltros;
    class function new: IControllerDBGrid;
  end;

implementation

uses
  System.SysUtils, Math;

{ TControllerDBGrid }

procedure TControllerDBGrid.Filtrar;
var
  StartIndex, EndIndex: Integer;
begin
  StartIndex := (FPaginaAtual - 1) * FLimiteDePaginas;
  EndIndex := StartIndex + FLimiteDePaginas - 1;

  FClientDataSet.DisableControls;
  try
    FClientDataSet.Filtered := False;
    FClientDataSet.Filter := Format('Index >= %d AND Index <= %d', [StartIndex + 1, EndIndex + 1]);
    FClientDataSet.Filtered := True;
  finally
    FClientDataSet.EnableControls;
  end;
end;

procedure TControllerDBGrid.AplicarFiltro(pFiltro: string);
begin
  FClientDataSet.DisableControls;
  try
    FClientDataSet.Filtered := False;
    FClientDataSet.Filter := pFiltro;
    FClientDataSet.Filtered := True;
  finally
    FClientDataSet.EnableControls;
  end;
end;

procedure TControllerDBGrid.AplicarPaginacao;
begin
  Filtrar();
end;

procedure TControllerDBGrid.Atualizar;
begin
  FClientDataSet.Refresh;
  Filtrar;
end;

constructor TControllerDBGrid.Create;
begin
  FPaginaAtual := 1;
  FLimiteDePaginas := 20;
  FTotalDePaginas := 0;
end;

function TControllerDBGrid.DefinirClientDataSet(pClientDataSet: TClientDataSet): IControllerDBGridParametros;
begin
  FClientDataSet := pClientDataSet;
  Result := Self;
end;

function TControllerDBGrid.FimPreenchimento: IControllerDBGrid;
begin
  if FClientDataSet.RecordCount > 0 then
    FTotalDePaginas := Ceil(FClientDataSet.RecordCount / 20)
  else
    FTotalDePaginas := 0;

  Result := Self;
end;

procedure TControllerDBGrid.LimparFiltros;
begin
  FClientDataSet.Filtered := False;
end;

class function TControllerDBGrid.new: IControllerDBGrid;
begin
  Result := Self.Create;
end;

function TControllerDBGrid.ObterPaginaAtual: integer;
begin
  Result := FPaginaAtual;
end;

function TControllerDBGrid.ObterTotaldePaginas: integer;
begin
  Result := FTotalDePaginas;
end;

procedure TControllerDBGrid.PaginaAnterior;
begin
  if FPaginaAtual > 1 then
    begin
      Dec(FPaginaAtual);
      Filtrar();
    end;
end;

function TControllerDBGrid.PreencherParametros: IControllerDBGridParametros;
begin
  Result := Self;
end;

procedure TControllerDBGrid.ProximaPagina;
begin
  if FPaginaAtual = FTotalDePaginas then
    Exit;

  Inc(FPaginaAtual);
  Filtrar();
end;

end.
