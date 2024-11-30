unit Sistema.View.Mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TtpMensagem = (tpAviso, tpConfirmacao, tpErro, tpDelete, tpCancelar);

  Tfrm_mensagem = class(TForm)
    pnlFundo: TPanel;
    pnlTopo: TPanel;
    ImgLogo: TImage;
    lblMensagem: TLabel;
    ImgTpConfirmacao: TImage;
    lblDescricao: TLabel;
    pnlNao: TPanel;
    pnlSim: TPanel;
    ImgTpErro: TImage;
    ImgTpDelete: TImage;
    ImgTpAviso: TImage;
    ImgTpCancelar: TImage;
    procedure pnlSimClick(Sender: TObject);
    procedure pnlNaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FResposta: Boolean;
    FTipoMensagem: TtpMensagem;
    procedure ExibirMensagemAviso;
    procedure ExibirMensagemDelete;
    procedure ExibirMensagemConfirmacao;
    procedure ExibirMensagemErro;
    procedure ExibirMensagemCancelar;
    procedure MontarMensagem;
  public
    { Public declarations }
    class function CriarMensagem (pTipo: TtpMensagem; pMensagem: string): boolean;
  end;

implementation

uses
  System.StrUtils;

{$R *.dfm}


class function Tfrm_mensagem.CriarMensagem(pTipo: TtpMensagem; pMensagem: string): boolean;
Var
  lfrm_mensagem: Tfrm_mensagem;
begin
  lfrm_mensagem := Tfrm_mensagem.create (nil);
  try
    lfrm_mensagem.FTipoMensagem := pTipo;
    lfrm_mensagem.lblDescricao.caption := pMensagem;
    lfrm_mensagem.ShowModal;
    Result := lfrm_mensagem.FResposta;
  finally
    lfrm_mensagem.Free();
  end;
end;

procedure Tfrm_mensagem.ExibirMensagemAviso;
begin
  lblMensagem.Caption := 'ATENÇÃO - AVISO';
  pnlSim.caption := 'OK';
  pnlNao.visible := false;
  ImgTpAviso.Visible := True;
end;

procedure Tfrm_mensagem.ExibirMensagemCancelar;
begin
  lblMensagem.Caption := 'CONFIRMAÇÃO DE CANCELAMENTO NECESSÁRIA';
  ImgTpCancelar.Visible := True;
end;

procedure Tfrm_mensagem.ExibirMensagemConfirmacao;
begin
  lblMensagem.Caption := 'CONFIRMAÇÃO NECESSÁRIA';
  ImgTpConfirmacao.Visible := True;
end;

procedure Tfrm_mensagem.ExibirMensagemDelete;
begin
  lblMensagem.Caption := 'CONFIRMAÇÃO DE EXCLUSÃO NECESSÁRIA';
  ImgTpDelete.Visible := True;
end;

procedure Tfrm_mensagem.ExibirMensagemErro;
begin
  lblMensagem.Caption := 'ERRO NA OPERAÇÃO';
  pnlSim.caption := 'OK';
  pnlNao.visible := false;
  ImgTpDelete.Visible := True;
end;

procedure Tfrm_mensagem.FormShow(Sender: TObject);
begin
  MontarMensagem();
end;

procedure Tfrm_mensagem.MontarMensagem;
begin
  case FTipoMensagem of
    tpAviso: ExibirMensagemAviso();
    tpDelete: ExibirMensagemDelete();
    tpConfirmacao: ExibirMensagemConfirmacao();
    tpErro: ExibirMensagemErro();
    tpCancelar: ExibirMensagemCancelar();
  end;
end;

procedure Tfrm_mensagem.pnlNaoClick(Sender: TObject);
begin
  FResposta := false;
  Close;
end;

procedure Tfrm_mensagem.pnlSimClick(Sender: TObject);
begin
  FResposta := true;
  Close;
end;

end.
