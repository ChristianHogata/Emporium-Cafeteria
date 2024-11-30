program EmporiumCafeteria;

uses
  Vcl.Forms,
  Sistema.View.Mensagens in '..\src\View\Sistema.View.Mensagens.pas' {frm_mensagem},
  Sistema.View.Principal in '..\src\View\Sistema.View.Principal.pas' {frm_principal},
  Sistema.View.Produtos in '..\src\View\Sistema.View.Produtos.pas' {frm_consulta_produto},
  Sistema.View.Clientes in '..\src\View\Sistema.View.Clientes.pas' {frm_consulta_clientes},
  Sistema.View.Pedidos in '..\src\View\Sistema.View.Pedidos.pas' {frm_consulta_pedidos},
  Sistema.View.TelaDePesquisa in '..\src\View\Sistema.View.TelaDePesquisa.pas' {FrmTelaPesquisa},
  Sistema.View.CadastroComplementos in '..\src\View\Sistema.View.CadastroComplementos.pas' {frm_consulta_complementos},
  Sistema.View.TelaPesquisaComplementos in '..\src\View\Sistema.View.TelaPesquisaComplementos.pas' {FrmTelaPesquisaComplementos},
  Sistema.View.Helpers.TColumn in '..\src\View\Helpers\Sistema.View.Helpers.TColumn.pas',
  Sistema.View.ExibicaoListaDePedidos in '..\src\View\Sistema.View.ExibicaoListaDePedidos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //ReportMemoryLeaksOnShutdown := True;

  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.Run;
end.
