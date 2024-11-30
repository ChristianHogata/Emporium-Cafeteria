object frmExibicaoPedido: TfrmExibicaoPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Exibi'#231#227'o do pedido'
  ClientHeight = 519
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pnlImpressaoPedidoExibicao: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 519
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 759
    ExplicitHeight = 511
    object memoPedido: TMemo
      Left = 264
      Top = 8
      Width = 235
      Height = 505
      Align = alCustom
      ReadOnly = True
      TabOrder = 0
    end
  end
end
