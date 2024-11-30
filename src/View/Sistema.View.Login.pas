unit Sistema.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Sistema.Crontroller.Interfaces;

type
  Tfrm_login = class(TForm)
    pnlGeral: TPanel;
    btn_fechar: TSpeedButton;
    pnl_apresentacao: TPanel;
    pnl_campos: TPanel;
    pnlDividirTela: TPanel;
    lbLogin: TLabel;
    lbDescricaoSistema: TLabel;
    ImgLogo: TImage;
    LbApresentacao: TLabel;
    lbCreditos: TLabel;
    pnlEntrar: TPanel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtNomeUsuario: TLabel;
    lbSenha: TLabel;
    procedure btn_fecharClick(Sender: TObject);
    procedure pnlEntrarMouseEnter(Sender: TObject);
    procedure pnlEntrarMouseLeave(Sender: TObject);
    procedure pnlEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FControllerEntidade: IControllerEntidade;
    procedure ValidarLogin;
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

uses
  Sistema.View.Mensagens, Sistema.View.Principal, Sistema.Controller.Entidades.Factory, Data.DB,
  Datasnap.DBClient, Sistema.Controller.Entidade, System.JSON;

{$R *.dfm}


procedure Tfrm_login.btn_fecharClick(Sender: TObject);
begin
  frm_login.Close;
  application.Terminate;
end;

procedure Tfrm_login.edtSenhaKeyPress(Sender: TObject; var Key: Char);
Var
  lFrm_Principal: Tfrm_principal;
begin
  if Key = #13 then
  begin
    ValidarLogin();
    lFrm_Principal := Tfrm_principal.Create(nil);
  try
    lFrm_Principal.ShowModal();
  finally
    lFrm_Principal.Free;
  end;
    Close;
  end;
end;

procedure Tfrm_login.FormCreate(Sender: TObject);
begin
  FControllerEntidade := TControllerEntidade.new();
end;

procedure Tfrm_login.pnlEntrarClick(Sender: TObject);
Var
  lFrm_Principal: Tfrm_principal;
begin
  lFrm_Principal := Tfrm_principal.Create(nil);
  try
    lFrm_Principal.ShowModal();
  finally
    lFrm_Principal.Free;
  end;

  Close;
end;

procedure Tfrm_login.pnlEntrarMouseEnter(Sender: TObject);
begin
  pnlEntrar.Color := $00F42B62;
end;

procedure Tfrm_login.pnlEntrarMouseLeave(Sender: TObject);
begin
  pnlEntrar.Color := $00F87498;
end;

procedure Tfrm_login.ValidarLogin;
var
  lDadosLogin: TJSONObject;
begin
  lDadosLogin := TJSONObject.Create;
  try
    lDadosLogin.AddPair('login', TJSONString.Create(edtUsuario.Text));
    lDadosLogin.AddPair('senha', TJSONString.Create(edtSenha.Text));

    FControllerEntidade.Login.EfetuarLogin(lDadosLogin);
  finally
    lDadosLogin.Free;
  end;
end;

end.
