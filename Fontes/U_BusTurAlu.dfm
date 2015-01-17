inherited FRM_BUSTURALU: TFRM_BUSTURALU
  Left = 310
  Top = 206
  Caption = 'FRM_BUSTURALU'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlDados: TPanel
    inherited GridDados: TRzDBGrid
      DataSource = Dsturalu
      OnDblClick = GridDadosDblClick
    end
  end
  inherited PNLTITULO: TRzPanel
    Caption = 'BUSCA DE TURMAS/ALUNOS'
  end
  inherited PNLFILTRO: TRzPanel
    inherited GrupoFiltro: TRzCheckGroup
      Columns = 1
      Items.Strings = (
        'C'#243'digo'
        'Nome do Aluno'
        'N'#250'mero da Turma'
        'Ano')
      OnChange = GrupoFiltroChange
      CheckStates = (
        1
        0
        0
        0)
    end
    inherited GrupoSituacao: TRzRadioGroup
      ItemIndex = 0
      Items.Strings = (
        'Ativos'
        'Cancelados'
        'Todos')
    end
    inherited GrupoOrdem: TRzRadioGroup
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome do Aluno'
        'N'#250'mero da Turma'
        'Ano')
    end
    inherited BtBuscar: TRzBitBtn
      OnClick = bTbUSCARClick
    end
    object CODINI: TLabeledEdit
      Left = 71
      Top = 125
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd. Inicial'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 5
    end
    object CODFIM: TLabeledEdit
      Left = 159
      Top = 125
      Width = 35
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd. Final'
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 6
    end
    object ALU: TLabeledEdit
      Left = 71
      Top = 149
      Width = 314
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Aluno '
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 7
    end
    object ANO: TLabeledEdit
      Left = 452
      Top = 149
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 22
      EditLabel.Height = 13
      EditLabel.Caption = 'Ano '
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 8
    end
    object TUR: TLabeledEdit
      Left = 452
      Top = 125
      Width = 330
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 59
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#176' da turma '
      Enabled = False
      LabelPosition = lpLeft
      TabOrder = 9
    end
  end
  object SQLbusturalu: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' RELTURALU.IDRELTURALU,'#13#10' RELTURALU.IDALU,'#13#10' RELTURALU' +
      '.IDTUR,'#13#10' RELTURALU.DATA_RELTURALU,'#13#10' RELTURALU.HORA_RELTURALU,'#13 +
      #10' RELTURALU.OBS_RELTURALU,'#13#10' RELTURALU.STATUS_RELTURALU,'#13#10#13#10' ALU' +
      'NOS.NOME_ALU,'#13#10' ALUNOS.STATUS_ALU,'#13#10' TURMAS.NUM_TUR,'#13#10' TURMAS.AN' +
      'O_TUR,'#13#10' TURMAS.STATUS_TUR,'#13#10' ALUNOS.FOTO_ALU'#13#10#13#10'FROM RELTURALU'#13 +
      #10#13#10'LEFT OUTER JOIN ALUNOS ON (ALUNOS.IDALU=RELTURALU.IDALU)'#13#10'LEF' +
      'T OUTER JOIN TURMAS ON (TURMAS.IDTUR=RELTURALU.IDTUR)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLbusturaluIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      Required = True
    end
    object SQLbusturaluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object SQLbusturaluIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object SQLbusturaluDATA_RELTURALU: TDateField
      FieldName = 'DATA_RELTURALU'
    end
    object SQLbusturaluHORA_RELTURALU: TTimeField
      FieldName = 'HORA_RELTURALU'
    end
    object SQLbusturaluOBS_RELTURALU: TStringField
      FieldName = 'OBS_RELTURALU'
      Size = 200
    end
    object SQLbusturaluSTATUS_RELTURALU: TStringField
      FieldName = 'STATUS_RELTURALU'
      Required = True
      Size = 1
    end
    object SQLbusturaluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SQLbusturaluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
    object SQLbusturaluNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      Size = 10
    end
    object SQLbusturaluANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
    end
    object SQLbusturaluSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      Size = 1
    end
  end
  object CDSbusturalu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 184
    Top = 8
    object CDSbusturaluIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      Required = True
    end
    object CDSbusturaluIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object CDSbusturaluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object CDSbusturaluDATA_RELTURALU: TDateField
      FieldName = 'DATA_RELTURALU'
    end
    object CDSbusturaluHORA_RELTURALU: TTimeField
      FieldName = 'HORA_RELTURALU'
    end
    object CDSbusturaluOBS_RELTURALU: TStringField
      FieldName = 'OBS_RELTURALU'
      Size = 200
    end
    object CDSbusturaluSTATUS_RELTURALU: TStringField
      FieldName = 'STATUS_RELTURALU'
      Required = True
      Size = 1
    end
    object CDSbusturaluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CDSbusturaluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
    object CDSbusturaluNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      Size = 10
    end
    object CDSbusturaluANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
    end
    object CDSbusturaluSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      Size = 1
    end
  end
  object Dsturalu: TDataSource
    DataSet = CDSbusturalu
    Left = 248
    Top = 8
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLbusturalu
    Left = 96
    Top = 8
  end
end
