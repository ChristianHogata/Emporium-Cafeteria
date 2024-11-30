unit Sistema.View.CadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_cadastro_clientes = class(TForm)
    pnlCadastroCliente: TPanel;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlSepara: TPanel;
    pnlDivisao: TPanel;
    PnlInserir: TPanel;
    PnlCancelar: TPanel;
    PnlBotoes: TPanel;
    EdtNome: TEdit;
    LblNome: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    EdtSobrenome: TEdit;
    LblSobrenome: TLabel;
    RadioGroup1: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_clientes: Tfrm_cadastro_clientes;

implementation

{$R *.dfm}



end.
