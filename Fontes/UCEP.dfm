inherited Frm_Cep: TFrm_Cep
  Left = 354
  Top = 175
  Caption = 'Cadastro de CEPS'
  ClientHeight = 470
  ClientWidth = 729
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 729
    Caption = 'CEPS'
    TabOrder = 1
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 451
    Width = 729
    TabOrder = 2
    inherited RzStatusPane1: TRzStatusPane
      Width = 177
    end
    inherited RzStatusPane2: TRzStatusPane
      Left = 592
      Width = 137
    end
    inherited RzStatusPane3: TRzStatusPane
      Left = 177
      Width = 415
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 381
    Width = 729
    TabOrder = 3
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 608
      Width = 120
    end
  end
  inherited PanDados: TRzPanel
    Width = 729
    Height = 330
    TabOrder = 4
    inherited Paginas: TRzPageControl
      Width = 721
      Height = 322
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 40
          Top = 32
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'C'#243'digo CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 144
          Top = 32
          Width = 57
          Height = 13
          AutoSize = False
          Caption = 'Logradouro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 40
          Top = 80
          Width = 72
          Height = 13
          AutoSize = False
          Caption = 'C'#243'digo Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 144
          Top = 80
          Width = 67
          Height = 13
          AutoSize = False
          Caption = 'Nome Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 632
          Top = 80
          Width = 17
          Height = 13
          AutoSize = False
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 40
          Top = 128
          Width = 66
          Height = 13
          AutoSize = False
          Caption = 'C'#243'digo Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 144
          Top = 128
          Width = 61
          Height = 13
          AutoSize = False
          Caption = 'Nome Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 40
          Top = 176
          Width = 73
          Height = 13
          AutoSize = False
          Caption = 'C'#243'd. Tipo Log.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 144
          Top = 176
          Width = 81
          Height = 13
          AutoSize = False
          Caption = 'Tipo Logradouro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBENomeLog: TRzDBEdit
          Left = 144
          Top = 48
          Width = 529
          Height = 21
          DataSource = DSCeps
          DataField = 'LOGRA_CEP'
          AutoSize = False
          FocusColor = clMoneyGreen
          TabOrder = 0
        end
        object DBENomeCid: TRzDBEdit
          Left = 144
          Top = 96
          Width = 481
          Height = 21
          DataSource = DSCeps
          DataField = 'NOME_CID'
          ReadOnly = True
          AutoSize = False
          DisabledColor = clGradientInactiveCaption
          Enabled = False
          ReadOnlyColor = clGradientInactiveCaption
          TabOrder = 4
        end
        object DBENomeBai: TRzDBEdit
          Left = 144
          Top = 144
          Width = 529
          Height = 21
          DataSource = DSCeps
          DataField = 'NOME_BAI'
          ReadOnly = True
          AutoSize = False
          DisabledColor = clGradientInactiveCaption
          Enabled = False
          ReadOnlyColor = clGradientInactiveCaption
          TabOrder = 6
        end
        object DBETipoLog: TRzDBEdit
          Left = 144
          Top = 192
          Width = 529
          Height = 21
          DataSource = DSCeps
          DataField = 'DESCRI_TIPOLOG'
          ReadOnly = True
          AutoSize = False
          DisabledColor = clGradientInactiveCaption
          Enabled = False
          ReadOnlyColor = clGradientInactiveCaption
          TabOrder = 7
        end
        object DBEidcid: TRzDBButtonEdit
          Left = 40
          Top = 96
          Width = 89
          Height = 21
          DataSource = DSCeps
          DataField = 'IDCID'
          TabOrder = 1
          ButtonKind = bkFind
          AltBtnVisible = True
          OnAltBtnClick = DBEidcidAltBtnClick
          OnButtonClick = DBEidcidButtonClick
        end
        object DBEidbai: TRzDBButtonEdit
          Left = 40
          Top = 144
          Width = 89
          Height = 21
          DataSource = DSCeps
          DataField = 'IDBAI'
          TabOrder = 2
          ButtonKind = bkFind
          AltBtnVisible = True
          OnAltBtnClick = DBEidbaiAltBtnClick
          OnButtonClick = DBEidbaiButtonClick
        end
        object DBEidtipolog: TRzDBButtonEdit
          Left = 40
          Top = 192
          Width = 89
          Height = 21
          DataSource = DSCeps
          DataField = 'IDTIPOLOG'
          TabOrder = 3
          ButtonKind = bkFind
          AltBtnVisible = True
          OnAltBtnClick = DBEidtipologAltBtnClick
          OnButtonClick = DBEidtipologButtonClick
        end
        object DBEestado: TRzDBEdit
          Left = 632
          Top = 96
          Width = 41
          Height = 21
          DataSource = DSCeps
          DataField = 'UF_CID'
          ReadOnly = True
          Color = clGradientInactiveCaption
          ReadOnlyColor = clGradientInactiveCaption
          TabOrder = 5
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 44
    Top = 124
    Width = 89
    TabOrder = 0
    OnKeyPress = BuscaRapidaKeyPress
    ButtonVisible = False
  end
  object SqlCep: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'CEPS.IDCEP,'#13#10'CEPS.IDCID,'#13#10'CEPS.IDBAI,'#13#10'CEPS.IDTIPOLOG,' +
      #13#10'CEPS.LOGRA_CEP,'#13#10'CEPS.STATUS_CEP,'#13#10#13#10'BAIRROS.NOME_BAI,'#13#10'CIDADE' +
      'S.NOME_CID,'#13#10'CIDADES.UF_CID,'#13#10'TIPOLOGRA.DESCRI_TIPOLOG'#13#10#13#10'FROM C' +
      'EPS'#13#10#13#10'LEFT OUTER JOIN BAIRROS ON (BAIRROS.IDBAI = CEPS.IDBAI)'#13#10 +
      'LEFT OUTER JOIN CIDADES ON (CIDADES.IDCID = CEPS.IDCID)'#13#10'LEFT OU' +
      'TER JOIN TIPOLOGRA ON (TIPOLOGRA.IDTIPOLOG = CEPS.IDTIPOLOG)'#13#10#13#10 +
      'WHERE CEPS.IDCEP = :PARCEP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARCEP'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 8
    Top = 8
    object SqlCepIDCEP: TStringField
      FieldName = 'IDCEP'
      Required = True
      Size = 8
    end
    object SqlCepIDCID: TIntegerField
      FieldName = 'IDCID'
      Required = True
    end
    object SqlCepIDBAI: TIntegerField
      FieldName = 'IDBAI'
      Required = True
    end
    object SqlCepIDTIPOLOG: TIntegerField
      FieldName = 'IDTIPOLOG'
      Required = True
    end
    object SqlCepLOGRA_CEP: TStringField
      FieldName = 'LOGRA_CEP'
      Required = True
      Size = 100
    end
    object SqlCepSTATUS_CEP: TStringField
      FieldName = 'STATUS_CEP'
      Required = True
      Size = 1
    end
    object SqlCepNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Size = 30
    end
    object SqlCepNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Size = 50
    end
    object SqlCepUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SqlCepDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      ProviderFlags = []
      Size = 50
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlCep
    Left = 40
    Top = 8
  end
  object CdsCep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 72
    Top = 8
    object CdsCepIDCEP: TStringField
      FieldName = 'IDCEP'
      Required = True
      Size = 8
    end
    object CdsCepIDCID: TIntegerField
      FieldName = 'IDCID'
      Required = True
      OnValidate = CdsCepIDCIDValidate
    end
    object CdsCepIDBAI: TIntegerField
      FieldName = 'IDBAI'
      Required = True
      OnValidate = CdsCepIDBAIValidate
    end
    object CdsCepIDTIPOLOG: TIntegerField
      FieldName = 'IDTIPOLOG'
      Required = True
      OnValidate = CdsCepIDTIPOLOGValidate
    end
    object CdsCepLOGRA_CEP: TStringField
      FieldName = 'LOGRA_CEP'
      Required = True
      Size = 100
    end
    object CdsCepSTATUS_CEP: TStringField
      FieldName = 'STATUS_CEP'
      Required = True
      Size = 1
    end
    object CdsCepNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Size = 30
    end
    object CdsCepNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Size = 50
    end
    object CdsCepUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object CdsCepDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      Size = 50
    end
  end
  object DSCeps: TDataSource
    DataSet = CdsCep
    Left = 104
    Top = 8
  end
end
