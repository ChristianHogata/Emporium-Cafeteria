unit Sistema.View.Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrm_Pesquisa = class(TForm)
    PnlPesquisa: TPanel;
    EdtNomeDescricao: TEdit;
    DbGridPesquisa: TDBGrid;
    LblNomeDescricao: TLabel;
    BtnPesquisaClientes: TSpeedButton;
  private
    { Private declarations }
    FDataSourcePesquisa: TDataSource;
  public
    { Public declarations }
    Constructor Create(pDataSource: TDataSource) Overload; Reintroduce;
  end;

var
  Frm_Pesquisa: TFrm_Pesquisa;

implementation

uses
  Datasnap.DBClient;

{$R *.dfm}

{ TFrm_Pesquisa }

constructor TFrm_Pesquisa.Create(pDataSource: TDataSource);
begin
  Inherited Create(nil);
  FDataSourcePesquisa := pDataSource;
end;

end.
