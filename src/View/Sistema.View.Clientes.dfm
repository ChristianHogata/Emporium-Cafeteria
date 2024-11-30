object frm_consulta_clientes: Tfrm_consulta_clientes
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 724
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pnlCadastroCliente: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 724
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    Visible = False
    object PnlBotoes: TPanel
      Left = 0
      Top = 664
      Width = 1117
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        1117
        56)
      object PnlCancelar: TPanel
        Left = 934
        Top = 0
        Width = 170
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
        OnClick = PnlCancelarClick
      end
      object btnSalvar: TPanel
        Left = 748
        Top = 0
        Width = 170
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
        OnClick = btnSalvarClick
      end
    end
    object pnlInformacoesCadastro: TPanel
      Left = 16
      Top = 70
      Width = 1088
      Height = 316
      BevelOuter = bvNone
      TabOrder = 0
      object lbCPF: TLabel
        Left = 6
        Top = 84
        Width = 24
        Height = 20
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbCnpj: TLabel
        Left = 646
        Top = 258
        Width = 32
        Height = 20
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lbTelefone: TLabel
        Left = 4
        Top = 151
        Width = 57
        Height = 20
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbEmail: TLabel
        Left = 235
        Top = 81
        Width = 43
        Height = 20
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LblNome: TLabel
        Left = 92
        Top = 11
        Width = 41
        Height = 20
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LblSobrenome: TLabel
        Left = 346
        Top = 14
        Width = 77
        Height = 20
        Caption = 'Sobrenome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 11
        Width = 15
        Height = 20
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LblIE: TLabel
        Left = 900
        Top = 258
        Width = 12
        Height = 20
        Caption = 'IE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblIdEstrangeiro: TLabel
        Left = 893
        Top = 41
        Width = 94
        Height = 20
        Caption = 'ID Estrangeiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblISUF: TLabel
        Left = 664
        Top = 199
        Width = 149
        Height = 20
        Caption = 'Inscri'#231#227'o na SUFRAMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblRazaoSocial: TLabel
        Left = 832
        Top = 96
        Width = 85
        Height = 20
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblNomeFantasia: TLabel
        Left = 854
        Top = 10
        Width = 98
        Height = 20
        Caption = 'Nome Fantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblIM: TLabel
        Left = 900
        Top = 201
        Width = 17
        Height = 20
        Caption = 'IM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edtSobrenome: TDBEdit
        Left = 346
        Top = 37
        Width = 332
        Height = 28
        DataField = 'sobrenome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtNome: TDBEdit
        Left = 92
        Top = 37
        Width = 237
        Height = 28
        DataField = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtCnpj: TDBEdit
        Left = 646
        Top = 284
        Width = 230
        Height = 28
        DataField = 'cnpj'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnExit = edtCnpjExit
      end
      object edtCpf: TDBEdit
        Left = 6
        Top = 106
        Width = 201
        Height = 28
        DataField = 'cpf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = edtCpfExit
      end
      object edtEmail: TDBEdit
        Left = 235
        Top = 106
        Width = 443
        Height = 28
        DataField = 'email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object edtTelefone: TDBEdit
        Left = 6
        Top = 177
        Width = 230
        Height = 28
        DataField = 'telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnExit = edtTelefoneExit
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 40
        Width = 62
        Height = 28
        DataField = 'id'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object edtIE: TDBEdit
        Left = 900
        Top = 280
        Width = 180
        Height = 28
        DataField = 'ie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
        OnExit = edtCnpjExit
      end
      object GroupBox1: TGroupBox
        Left = 816
        Top = 121
        Width = 265
        Height = 85
        Caption = 'Configura'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Visible = False
        object ChkIndicadorIEDestinatario: TDBCheckBox
          Left = 16
          Top = 32
          Width = 233
          Height = 17
          Caption = 'Indicador da IE do Destinat'#225'rio'
          DataField = 'indiedest'
          TabOrder = 0
          Visible = False
        end
      end
      object EdtIdEstrangeiro: TDBEdit
        Left = 893
        Top = 67
        Width = 201
        Height = 28
        DataField = 'idestrangeiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Visible = False
        OnExit = edtCpfExit
      end
      object EdtISUF: TDBEdit
        Left = 664
        Top = 224
        Width = 230
        Height = 28
        DataField = 'isuf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = False
        OnExit = edtCpfExit
      end
      object EdtRazaoSocial: TDBEdit
        Left = 832
        Top = 119
        Width = 323
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object EdtNomeFantasia: TDBEdit
        Left = 854
        Top = 33
        Width = 332
        Height = 28
        DataField = 'nomefantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object EdtIM: TDBEdit
        Left = 900
        Top = 223
        Width = 180
        Height = 28
        DataField = 'im'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Visible = False
        OnExit = edtCnpjExit
      end
      object RbSituacao: TDBRadioGroup
        Left = 698
        Top = 11
        Width = 128
        Height = 79
        Caption = 'Situa'#231#227'o'
        DataField = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'Ativo'
          'Inativo')
        ParentFont = False
        TabOrder = 14
        Values.Strings = (
          '1'
          '2')
        Visible = False
      end
    end
    object PnlTopoCadastro: TPanel
      Left = 0
      Top = 0
      Width = 1117
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object LblTituloCadastro: TLabel
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
      object PnlSeparaCadastro1: TPanel
        Left = 0
        Top = 56
        Width = 1117
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
        object PnlSeparaCadastro2: TPanel
          Left = 0
          Top = -40
          Width = 1117
          Height = 41
          Align = alBottom
          TabOrder = 0
        end
      end
    end
    object pnlInformacoesEndereco: TPanel
      Left = -2
      Top = 320
      Width = 1120
      Height = 338
      Align = alCustom
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object lbEndereco: TLabel
        Left = 26
        Top = 19
        Width = 62
        Height = 20
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 693
        Top = 19
        Width = 54
        Height = 20
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbBairro: TLabel
        Left = 820
        Top = 19
        Width = 40
        Height = 20
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbUf: TLabel
        Left = 275
        Top = 85
        Width = 17
        Height = 20
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbCidade: TLabel
        Left = 26
        Top = 85
        Width = 47
        Height = 20
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbCep: TLabel
        Left = 381
        Top = 85
        Width = 25
        Height = 20
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbReferencia: TLabel
        Left = 26
        Top = 150
        Width = 70
        Height = 20
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LblMunicipio: TLabel
        Left = 562
        Top = 85
        Width = 66
        Height = 20
        Caption = 'Munic'#237'pio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblHifen: TLabel
        Left = 666
        Top = 111
        Width = 6
        Height = 20
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblLogradouro: TLabel
        Left = 911
        Top = 147
        Width = 78
        Height = 20
        Caption = 'Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label1: TLabel
        Left = 586
        Top = 176
        Width = 6
        Height = 20
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LblPais: TLabel
        Left = 482
        Top = 150
        Width = 25
        Height = 20
        Caption = 'Pa'#237's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object edtEndereco: TDBEdit
        Left = 26
        Top = 42
        Width = 649
        Height = 28
        DataField = 'endereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtNumero: TDBEdit
        Left = 692
        Top = 42
        Width = 111
        Height = 28
        DataField = 'numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtBairro: TDBEdit
        Left = 820
        Top = 42
        Width = 203
        Height = 28
        DataField = 'bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtUf: TDBEdit
        Left = 275
        Top = 108
        Width = 87
        Height = 28
        DataField = 'uf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtCidade: TDBEdit
        Left = 26
        Top = 108
        Width = 232
        Height = 28
        DataField = 'cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtCep: TDBEdit
        Left = 381
        Top = 108
        Width = 156
        Height = 28
        DataField = 'cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnExit = edtCepExit
      end
      object edtReferencia: TDBEdit
        Left = 26
        Top = 173
        Width = 437
        Height = 28
        DataField = 'referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object PnlDivisaoEndereco: TPanel
        Left = 0
        Top = 0
        Width = 1120
        Height = 1
        Align = alTop
        TabOrder = 10
      end
      object edtCodigoMunicipio: TDBEdit
        Left = 562
        Top = 108
        Width = 94
        Height = 28
        DataField = 'codigomunicipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Visible = False
      end
      object EdtMunicipio: TDBEdit
        Left = 682
        Top = 108
        Width = 303
        Height = 28
        DataField = 'municipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Visible = False
      end
      object EdtLogradouro: TDBEdit
        Left = 911
        Top = 170
        Width = 175
        Height = 28
        DataField = 'logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object EdtPais: TDBEdit
        Left = 602
        Top = 173
        Width = 303
        Height = 28
        DataField = 'pais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Visible = False
      end
      object EdtCodigoPais: TDBEdit
        Left = 482
        Top = 173
        Width = 94
        Height = 28
        DataField = 'codigopais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Visible = False
      end
    end
  end
  object pnlListaClientes: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 724
    Align = alClient
    AutoSize = True
    BevelKind = bkFlat
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      1117
      720)
    object lblConsultas: TLabel
      Left = 17
      Top = 113
      Width = 497
      Height = 20
      Caption = 
        'Digite o que deseja encontrar e pressione ENTER ou clique em PES' +
        'QUISAR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTipoFiltro: TLabel
      Left = 530
      Top = 111
      Width = 68
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'Tipo Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object BtnPesquisaFornecedores: TSpeedButton
      Left = 837
      Top = 124
      Width = 131
      Height = 48
      Cursor = crHandPoint
      Hint = 'Clique para pesquisar'
      Align = alCustom
      Anchors = [akRight]
      Caption = 'Pesquisar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        361B0000424D361B000000000000360000002800000030000000300000000100
        180000000000001B0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE8FF95B9FF95B9FFE0EAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D9E6FF85AEFF82ACFF82ACFF94B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD9E6FF85AEFF82ACFF82ACFF82ACFF91B6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E6FF85AEFF
        82ACFF82ACFF82ACFF82ADFFD7E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF3F7FFCFDFFFB4CDFF9FC0FF90B4FF89B2FF89B2FF
        91B7FFA1C1FFB5CEFFD2E1FFF5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFD9E6FF85AEFF82ACFF82ACFF82ACFF84ACFFD3E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFD6E4FFA2C0FF83ADFF82AC
        FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF84ACFFA6
        C3FFDDE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E6FF85AEFF82ACFF82ACFF
        82ACFF84ACFFD4E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE
        E9FF99BBFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
        82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF9EBFFFE6EEFFFFFFFFFFFF
        FFD9E6FF85AEFF82ACFF82ACFF82ACFF84ACFFD5E3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFCFFB5CEFF81ABFF82ACFF82ACFF82ACFF82ACFF82AC
        FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
        ACFF82ACFF82ACFF82ADFFBED4FFD7E4FF85AEFF82ACFF82ACFF82ACFF83AEFF
        D6E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F8FF9DBDFF82ACFF82
        ACFF82ACFF82ACFF82ACFF82ACFF99BCFFC1D6FFDFEAFFEBF2FFF9FBFFF9FBFF
        EBF2FFDFEAFFC0D5FF9ABCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
        FF82ACFF82ACFF82ACFF83AEFFD7E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4F8FF97BAFF82ACFF82ACFF82ACFF82ACFF81ABFFABC6FFEBF2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF2FFAA
        C7FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF85AEFFD8E5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFF9BBDFF82ACFF82ACFF82ACFF82
        ACFF91B7FFE3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2ECFF92B6FF82ACFF82ACFF82AC
        FF82ACFF82ACFFD6E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B1CCFF82ACFF82ACFF82ACFF82ACFFA1C1FFF5F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5F8FFA0C0FF82ACFF82ACFF82ACFF82ACFFBED4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDBE7FF82ACFF82ACFF82ACFF82ACFFA1C1FFFC
        FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFA0C0FF82AC
        FF82ACFF82ACFF82ADFFE6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFF95B8FF
        82ACFF82ACFF82ACFF91B7FFF5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF5F8FF92B6FF82ACFF82ACFF82ACFF9EBFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCFDFFF82ACFF82ACFF82ACFF81ABFFE4EDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2EC
        FF81ABFF82ACFF82ACFF82ACFFDDE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BBDFF82ACFF
        82ACFF82ACFFABC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAC7FF82ACFF82ACFF82ACFFA6C3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFEBF2FF82ACFF82ACFF82ACFF81ABFFECF2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEBF2FF82ACFF82ACFF82ACFF84ACFFF5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D9FF82ACFF82ACFF
        82ACFF9BBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ABCFF82ACFF82ACFF82ACFF
        D2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAAC7FF82ACFF82ACFF82ACFFC1D6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC0D5FF82ACFF82ACFF82ACFFB5CEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93B7FF82ACFF82ACFF
        82ACFFDFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEAFF82ACFF82ACFF82ACFF
        A0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF85AFFF82ACFF82ACFF82ACFFECF3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFECF2FF82ACFF82ACFF82ACFF92B6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF82ACFF82ACFF82ACFF
        82ACFFF9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFF82ACFF82ACFF82ACFF
        8BB2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFDFF82ACFF82ACFF82ACFF82ACFFF9FBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF9FBFF82ACFF82ACFF82ACFF8BB2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86AFFF82ACFF82ACFF
        82ACFFECF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF2FF82ACFF82ACFF82ACFF
        91B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF93B6FF82ACFF82ACFF82ACFFE0EAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDFEAFF82ACFF82ACFF82ACFF9FC0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7C5FF82ACFF82ACFF
        82ACFFC2D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1D6FF82ACFF82ACFF82ACFF
        B4CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC4D8FF82ACFF82ACFF82ACFF9BBDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF99BCFF82ACFF82ACFF82ACFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6EFFF82ACFF82ACFF
        82ACFF81ABFFECF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF2FF82ACFF82ACFF82ACFF83ADFF
        F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF97BAFF82ACFF82ACFF82ACFFABC8FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFABC6FF82ACFF82ACFF82ACFFA2C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBDCFF82ACFF
        82ACFF82ACFF81ABFFE5EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3ECFF81ABFF82ACFF82ACFF82ACFFD6E4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFBFCFF8EB5FF82ACFF82ACFF82ACFF92B7FFF6F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F8FF91B7
        FF82ACFF82ACFF82ACFF99BBFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3E2FF
        82ACFF82ACFF82ACFF82ACFFA2C0FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFCFDFFA1C1FF82ACFF82ACFF82ACFF81ABFFDEE9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAC6FF82ACFF82ACFF82ACFF82ACFFA2
        C0FFF6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F8FFA1C1FF82ACFF82AC
        FF82ACFF82ACFFB5CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7F9FF95B8FF82ACFF82ACFF82ACFF82ACFF92B7FFE5EDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE4EDFF91B7FF82ACFF82ACFF82ACFF82ACFF9DBDFFFBFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F5FF90B4FF82ACFF82ACFF82
        ACFF82ACFF81ABFFABC8FFECF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFECF2FFABC7FF81ABFF82ACFF82ACFF82ACFF82AC
        FF97BAFFF4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0F5FF95B8FF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFF9BBD
        FFC2D6FFE0EAFFECF2FFFAFBFFFAFBFFEBF2FFE0EAFFC1D6FF9BBBFF82ACFF82
        ACFF82ACFF82ACFF82ACFF82ACFF9BBDFFF4F8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F9FFAAC6FF82
        ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
        82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFB1CCFFFBFC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3E2FF8EB5FF82ACFF82ACFF82ACFF82AC
        FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
        ACFF82ACFF93B7FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFCFFCBDCFF97BAFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
        82ACFF82ACFF82ACFF82ACFF82ACFF9BBDFFCFDFFFFDFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6EFFFC4D8
        FFA7C5FF91B7FF86AFFF82ACFF82ACFF85AFFF93B7FFAAC7FFC6D9FFEBF2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      OnClick = BtnPesquisaFornecedoresClick
    end
    object BtnLimparFiltros: TSpeedButton
      Left = 962
      Top = 137
      Width = 145
      Height = 28
      Cursor = crHandPoint
      Hint = 'Clique para limpar e resetar os filtros'
      Align = alCustom
      Anchors = [akRight]
      Caption = 'Limpar Filtros'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFFBED4FFA5C2FFA3C1FFA3C1FFA3
        C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FF
        A3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA7C4FFC7DAFFFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF9FBEFF82ACFF82ACFF82ACFF82ACFF82
        ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
        82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFBDD3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBBD2FF82ACFF81ABFFB0CAFFB4CDFFB4CDFFB4
        CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFF
        B4CDFFB4CDFFB4CDFFB4CDFFB4CDFF9EBFFF82ACFF97BBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDCE8FF83ADFF82ACFFB9D0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF4F8FF8EB4FF82ACFF9BBDFFFCFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFFA3C2FF82ACFF88B0FFECF3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFC0D5FF82ACFF82ACFFD2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFEFFA0C0FFA5C2FFF9FBFFFFFFFFFFFFFFEDF3FF95B9FF
        B8D0FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFE1EBFF82ADFF82ACFFB4CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFAFBFF8DB2FF82ACFF9EBFFFF8FAFFECF3FF8EB5FF82ACFF
        A2C1FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFF5F8
        FF8EB5FF82ACFF96BAFFFAFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE9F1FF8DB2FF82ACFF9CBEFF8FB4FF82ACFF9BBBFF
        F6F9FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFB2CD
        FF82ACFF87AEFFEAF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF2FF8DB3FF82ACFF82ACFF99BCFFF6F9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFF98BA
        FF82ACFFAFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF2FF8FB4FF82ACFF82ACFF9BBBFFF6F9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFBAD1
        FF82ACFF83ADFFD8E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE9F1FF8DB2FF82ACFF9CBEFF8FB4FF82ACFF9BBBFF
        F6F9FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFBFC
        FF9CBEFF82ACFF88B0FFE8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFAFBFF8DB2FF82ACFF9EBFFFF8FAFFECF3FF8EB5FF82ACFF
        A2C1FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFF3F7FF90B4FF82ACFF90B5FFF4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFDFEFFA0C0FFA4C3FFF9FBFFFFFFFFFFFFFFEDF3FF96B8FF
        B8D0FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFE6EFFF87AEFF82ACFF9EBFFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFD5E3FF81ABFF82ACFFB1CBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBED4FF82ACFF82ACFFC8DAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF93B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFFA9C5FF82ACFF82ADFFB2CCFFB4CDFFB4CDFFB4
        CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFFB4CDFF
        B4CDFFB4CDFFB4CDFFB4CDFFB4CDFF9EBFFF82ACFF97BBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFF98BAFF82ACFF82ACFF82ACFF82ACFF82
        ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
        82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFBDD3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FAFFBBD2FFA4C3FFA3C1FFA3C1FFA3
        C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA3C1FF
        A3C1FFA3C1FFA3C1FFA3C1FFA3C1FFA6C3FFC6D9FFFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 6
      OnClick = BtnLimparFiltrosClick
    end
    object pnlGrid: TPanel
      Left = 16
      Top = 189
      Width = 1074
      Height = 447
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 1
      object dbgRegistros: TDBGrid
        Left = 2
        Top = 11
        Width = 1035
        Height = 395
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        DrawingStyle = gdsGradient
        FixedColor = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbgRegistrosDrawColumnCell
        OnDblClick = dbgRegistrosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'ID Cliente'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Caption = 'Nome '
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sobrenome'
            Title.Caption = 'Sobrenome '
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'CPF'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Title.Caption = 'Telefone '
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Width = 222
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'Status'
            Visible = True
          end>
      end
    end
    object pnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 1117
      Height = 75
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 17
        Top = 26
        Width = 220
        Height = 31
        Caption = 'CONSULTA CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16282776
        Font.Height = -23
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object BtnEditar: TSpeedButton
        Left = 957
        Top = 0
        Width = 80
        Height = 74
        Cursor = crHandPoint
        Hint = 'Clique para editar os registros'
        Align = alRight
        Caption = 'Editar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          361B0000424D361B000000000000360000002800000030000000300000000100
          180000000000001B0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFCADCFF9DBDFF88B0FF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFDCE8FFFFFFFF
          FFFFFFFFFFFFFFFFFFDBE7FF90B4FF82ACFF82ACFF82ACFF82ACFF82ACFF96BA
          FFE4EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F2F6FF9ABCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF87AFFFE2ECFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF9ABCFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF87AFFFE2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADCFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF90B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF87AFFFE2ECFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF9CBEFF82ACFF82ACFF82ACFFA6C4FFF1F6FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFC0D5FF82AC
          FF82ACFF82ACFF82ACFF87AFFFE2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88B0FF
          82ACFF82ACFF82ACFFF1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFC0D5FF82ACFF82ACFF82ACFF82ACFF87AFFF
          E2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF81ABFF82ACFF82ACFF82ACFFC0D5FFFFFFFFFFFFFFFFFF
          FFC0D5FF82ACFF82ACFF82ACFF82ACFF87AFFFE2ECFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95B9FF82ACFF82
          ACFF82ACFF82ACFFC0D5FFFFFFFFFFFFFFFFFFFFC0D5FF82ACFF82ACFF82ACFF
          82ACFF87AFFFE3ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFDBE7FF90B4FF82ACFF82ACFF82ACFF82ACFF8FB5FFDCE8FFFFFFFF
          FFFFFFFFFFFFFFFFFFE3ECFF87AFFF82ACFF82ACFF82ACFF82ACFFC0D5FFFFFF
          FFFFFFFFFFFFFFC0D5FF82ACFF82ACFF82ACFF82ACFF95B9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2ECFF87
          AFFF82ACFF82ACFF82ACFF82ACFFC0D5FFFFFFFFFFFFFFE2ECFF84ADFF82ACFF
          82ACFF82ACFF8AB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFF90B4FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2ECFF87AFFF82ACFF82ACFF82ACFF82AC
          FFC0D5FFE2ECFF87AFFF82ACFF82ACFF82ACFF82ACFFC8DAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFDAE7FF8EB5FF82ACFF82AC
          FF82ACFF82ACFF90B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE2ECFF87AFFF82ACFF82ACFF82ACFF82ACFF85AEFF82ACFF82ACFF82ACFF
          82ACFFC0D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3ECFF87AFFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFFBCD3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE3ECFF87AFFF82ACFF82ACFF82ACFF82ACFF82ACFFBCD3FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3ECFF87AF
          FF82ACFF82ACFF82ACFFBCD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3ECFF96B8FF8AB0FFC8DAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFDBE7FF90B4FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFDCE8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFF90B4FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFDAE7FF8EB5FF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF90
          B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFDBE7FF90B4FF8FB5FFDCE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF8FB5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFDBE7FF90B4FF82ACFF82ACFF8FB5FFDCE8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFDFFCADCFF9DBDFF88B0FF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF82AC
          FF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFF2F6FF9ABCFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFF90B4FF82ACFF82ACFF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFCFDFF
          9ABCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF8BB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFDAE7FF8EB5FF82ACFF82AC
          FF90B4FFDBE7FFFFFFFFFFFFFFCADCFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFFD0E0FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBEFF
          82ACFF82ACFF82ACFFA6C4FFF1F6FFFFFFFFFFFFFFD5E3FF84ACFF82ACFF82AC
          FF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF88B0FF82ACFF82ACFF82ACFFF1F6FFFFFFFFFF
          FFFFD5E3FF84ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFD6E4FF83AEFF82ACFF82ACFF82ACFF81AB
          FFCBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFD6E4FF83
          AEFF82ACFF82ACFF82ACFF81ABFFCBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFD6E4FF83AEFF82ACFF82ACFF82ACFF81ABFFCBDCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFF84ACFF82ACFF82
          ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF88B0FF82ACFF82ACFF82ACFFF1F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBEFF
          82ACFF82ACFF82ACFFA7C4FFF2F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81
          ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF
          98BAFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F6FF98BAFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFDFFC9DBFF9DBEFF86B0FF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF90B5FFD1E1FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 1
        OnClick = BtnEditarClick
        ExplicitLeft = 813
      end
      object BtnExcluir: TSpeedButton
        Left = 1037
        Top = 0
        Width = 80
        Height = 74
        Cursor = crHandPoint
        Hint = 'Clique para excluir os registros'
        Align = alRight
        Caption = 'Excluir'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          361B0000424D361B000000000000360000002800000030000000300000000100
          180000000000001B0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          FDFFCADCFF9DBDFF88B0FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF88B0FF9EBF
          FFCADCFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF2F6FF9ABCFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF9ABCFFF2F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF9ABCFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF9ABCFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFCADCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFCADCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBEFF82ACFF82
          ACFF82ACFFA6C4FFF1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F6FFA5C3
          FF82ACFF82ACFF82ACFF9DBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF88B0FF82ACFF82ACFF82ACFFF1F6FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F6FF82ACFF82ACFF82ACFF87AFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFDBE7FF90B4FF8FB5FFDCE8FFFFFFFF
          FFFFFFFFFFFFFFFFFFDBE7FF90B4FF8FB5FFDCE8FFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF90B4FF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82
          ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF8FB5FFFFFFFF
          FFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FFDAE7FF8EB5FF90B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFFDAE7FF8EB5FF90
          B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82
          ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDBE7FF90B4FF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFDCE8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE7FF
          8EB5FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF90B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82AC
          FF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82
          ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF88B0FF82ACFF82ACFF82ACFFF1F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF1F6FF82ACFF82ACFF82ACFF87AFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBEFF82AC
          FF82ACFF82ACFFA7C4FFF2F6FFFFFFFFFFFFFFFFFFFFFFFFFFF1F6FFA6C4FF82
          ACFF82ACFF82ACFF9DBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFCADCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF98BA
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF9ABCFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F6FF98BAFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF9ABCFFF2F6FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFDFFC9DBFF9DBEFF86B0FF82ACFF82ACFF82ACFF82ACFF86B0FF9DBEFFCA
          DCFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 1
        OnClick = BtnExcluirClick
        ExplicitLeft = 906
      end
      object BtnInserir: TSpeedButton
        Left = 877
        Top = 0
        Width = 80
        Height = 74
        Cursor = crHandPoint
        Hint = 'Clique aqui ou F2 para inserir novos registros'
        Align = alRight
        Caption = 'Inserir - F2'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          361B0000424D361B000000000000360000002800000030000000300000000100
          180000000000001B0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFFCADCFF9D
          BDFF88B0FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF88B0FF9EBFFFCADCFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF2F6FF9ABCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF9ABCFFF2F6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF9ABCFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF9ABCFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFCADCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          CADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBEFF82ACFF82ACFF82ACFFA6
          C4FFF1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF1F6FFA5C3FF82ACFF82ACFF82ACFF9DBDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF88B0FF82ACFF82ACFF82ACFFF1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F6FF82ACFF82ACFF82ACFF
          87AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE7FF
          90B4FF8FB5FFDCE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE7FF90B4FF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFDCE8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF90B4FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82
          ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFDAE7FF8EB5FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF90
          B4FFDBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF
          82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90B4FF
          82ACFF82ACFF8FB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDAE7FF8EB5FF90B4FFDBE7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFDFFCADCFF9DBDFF88B0FF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F6FF9ABCFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFDFF9ABCFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF8BB3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADCFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFF
          D0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9CBEFF82ACFF82ACFF82ACFFA6C4FFF1F6FFFFFFFFFFFFFFD5E3FF84AC
          FF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88B0FF82ACFF82ACFF82ACFFF1
          F6FFFFFFFFFFFFFFD5E3FF84ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFD6E4FF83AEFF82ACFF82AC
          FF82ACFF81ABFFCBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFD6E4FF83AEFF82ACFF82ACFF82ACFF81ABFFCBDCFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFD6E4FF83AEFF82ACFF82ACFF82ACFF81AB
          FFCBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFF84
          ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88B0FF82ACFF82ACFF82ACFFF1
          F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9CBEFF82ACFF82ACFF82ACFFA7C4FFF2F6FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82ACFF82ACFF82ACFF82ACFF82
          ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9DBFF82ACFF82ACFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFDFF98BAFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF81
          ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F6FF98BAFF82ACFF82
          ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF
          82ACFF82ACFF82ACFF82ACFF81ABFFCDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFDFFC9DBFF9DBEFF86B0FF82ACFF82ACFF82ACFF82AC
          FF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF82ACFF90B5FFD1E1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        OnClick = BtnInserirClick
        ExplicitLeft = 744
        ExplicitHeight = 73
      end
      object Panel1: TPanel
        Left = 0
        Top = 74
        Width = 1117
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
        object Panel2: TPanel
          Left = 0
          Top = -40
          Width = 1117
          Height = 41
          Align = alBottom
          TabOrder = 0
        end
      end
    end
    object edtConsulta: TEdit
      Left = 16
      Top = 140
      Width = 498
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edtConsultaKeyPress
    end
    object comboTipoFiltro: TComboBox
      Left = 530
      Top = 141
      Width = 147
      Height = 28
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'ID Cliente'
      Items.Strings = (
        'ID Cliente'
        'CPF '
        'Nome '
        'Telefone')
    end
  end
end
