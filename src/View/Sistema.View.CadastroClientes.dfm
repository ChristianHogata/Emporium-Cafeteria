object frm_cadastro_clientes: Tfrm_cadastro_clientes
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 591
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlCadastroCliente: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 591
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      963
      587)
    object LblNome: TLabel
      Left = 25
      Top = 82
      Width = 51
      Height = 23
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 27
      Top = 158
      Width = 8
      Height = 23
      Caption = 'c'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 232
      Width = 136
      Height = 23
      Caption = 'Nome de usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblSobrenome: TLabel
      Left = 281
      Top = 84
      Width = 92
      Height = 23
      Caption = 'Sobrenome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 963
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 16
        Top = 12
        Width = 259
        Height = 31
        Caption = 'CADASTRO DE CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16282776
        Font.Height = -23
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object pnlSepara: TPanel
        Left = 0
        Top = 56
        Width = 963
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object pnlDivisao: TPanel
          Left = 0
          Top = -40
          Width = 963
          Height = 41
          Align = alBottom
          TabOrder = 0
        end
      end
    end
    object PnlBotoes: TPanel
      Left = 568
      Top = 520
      Width = 395
      Height = 67
      Anchors = [akBottom]
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        395
        67)
      object PnlCancelar: TPanel
        Left = 213
        Top = 9
        Width = 169
        Height = 42
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Cancelar'
        Color = 193
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object PnlInserir: TPanel
        Left = 30
        Top = 9
        Width = 169
        Height = 42
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Salvar'
        Color = 16282776
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object EdtNome: TEdit
      Left = 25
      Top = 111
      Width = 232
      Height = 31
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 27
      Top = 187
      Width = 281
      Height = 31
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 28
      Top = 261
      Width = 281
      Height = 31
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EdtSobrenome: TEdit
      Left = 281
      Top = 113
      Width = 376
      Height = 31
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object RadioGroup1: TRadioGroup
      Left = 680
      Top = 84
      Width = 225
      Height = 73
      Caption = 'Tipo Pessoa'
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 6
    end
  end
end
