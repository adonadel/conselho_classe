inherited FRM_CADAUTO: TFRM_CADAUTO
  Left = 466
  Top = 195
  Caption = 'FRM_CADAUTO'
  ClientHeight = 458
  ClientWidth = 807
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 807
    Caption = 'CADASTRO DE AUTORIZA'#199#195'O'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 439
    Width = 807
    inherited RzStatusPane2: TRzStatusPane
      Left = 662
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 517
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 369
    Width = 807
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 598
      Top = 7
      Width = 123
      Height = 56
    end
  end
  inherited PanDados: TRzPanel
    Width = 807
    Height = 318
    inherited Paginas: TRzPageControl
      Width = 799
      Height = 310
      Enabled = False
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label5: TLabel
          Left = 18
          Top = 73
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
        end
        object Label6: TLabel
          Left = 18
          Top = 129
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label7: TLabel
          Left = 146
          Top = 130
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label8: TLabel
          Left = 19
          Top = 185
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label9: TLabel
          Left = 19
          Top = 241
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object Label10: TLabel
          Left = 274
          Top = 129
          Width = 21
          Height = 13
          Caption = 'Tipo'
        end
        object RzPanel1: TRzPanel
          Left = 408
          Top = 8
          Width = 377
          Height = 177
          Color = 10992524
          TabOrder = 0
          VisualStyle = vsClassic
          object Label2: TLabel
            Left = 19
            Top = 10
            Width = 74
            Height = 13
            Caption = 'Busca de aluno'
          end
          object Label3: TLabel
            Left = 19
            Top = 66
            Width = 72
            Height = 13
            Caption = 'Nome do aluno'
          end
          object Label4: TLabel
            Left = 19
            Top = 122
            Width = 30
            Height = 13
            Caption = 'Turma'
          end
          object EditBusTurAlu: TRzDBButtonEdit
            Left = 16
            Top = 24
            Width = 121
            Height = 21
            DataSource = DSauto
            DataField = 'IDRELTURALU'
            TabOrder = 0
            AltBtnKind = bkFind
            AltBtnVisible = True
            ButtonVisible = False
            OnAltBtnClick = EditBusTurAluAltBtnClick
          end
          object DBImage1: TDBImage
            Left = 232
            Top = 8
            Width = 137
            Height = 153
            DataField = 'FOTO_ALU'
            DataSource = DSauto
            TabOrder = 1
          end
          object EditAlu: TRzDBEdit
            Left = 16
            Top = 80
            Width = 201
            Height = 21
            DataSource = DSauto
            DataField = 'NOME_ALU'
            DisabledColor = clSilver
            Enabled = False
            TabOrder = 2
          end
          object EditTur: TRzDBEdit
            Left = 16
            Top = 136
            Width = 121
            Height = 21
            DataSource = DSauto
            DataField = 'NUM_TUR'
            DisabledColor = clSilver
            Enabled = False
            TabOrder = 3
          end
        end
        object Func: TRzDBEdit
          Left = 144
          Top = 88
          Width = 257
          Height = 21
          DataSource = DSauto
          DataField = 'NOME_FUNC'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 1
        end
        object EditFunc: TRzDBButtonEdit
          Left = 16
          Top = 88
          Width = 121
          Height = 21
          DataSource = DSauto
          DataField = 'IDFUNC'
          TabOrder = 2
          AltBtnKind = bkFind
          AltBtnVisible = True
          ButtonVisible = False
        end
        object EditData: TRzDBEdit
          Left = 16
          Top = 144
          Width = 121
          Height = 21
          DataSource = DSauto
          DataField = 'DT_AUTORIZA'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 3
        end
        object EditHora: TRzDBEdit
          Left = 144
          Top = 144
          Width = 121
          Height = 21
          DataSource = DSauto
          DataField = 'HR_AUTORIZA'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 4
        end
        object EditDesc: TRzDBEdit
          Left = 16
          Top = 200
          Width = 769
          Height = 21
          DataSource = DSauto
          DataField = 'DESCRI_AUTORIZA'
          TabOrder = 5
        end
        object EditObs: TRzDBEdit
          Left = 16
          Top = 256
          Width = 769
          Height = 21
          DataSource = DSauto
          DataField = 'OBS_AUTORIZA'
          TabOrder = 6
        end
        object EditTipo: TRzDBComboBox
          Left = 272
          Top = 144
          Width = 49
          Height = 21
          DataField = 'TIPO_AUTORIZA'
          DataSource = DSauto
          ItemHeight = 13
          TabOrder = 7
          Items.Strings = (
            'E'
            'S'
            'D')
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 19
    Top = 113
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SQLauto: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' AUTORIZACOES.IDAUTORIZA,'#13#10' AUTORIZACOES.IDFUNC,'#13#10' AUT' +
      'ORIZACOES.IDRELTURALU,'#13#10' AUTORIZACOES.DESCRI_AUTORIZA,'#13#10' AUTORIZ' +
      'ACOES.DT_AUTORIZA,'#13#10' AUTORIZACOES.HR_AUTORIZA,'#13#10' AUTORIZACOES.TI' +
      'PO_AUTORIZA,'#13#10' AUTORIZACOES.OBS_AUTORIZA,'#13#10' AUTORIZACOES.STATUS_' +
      'AUTORIZA,'#13#10#13#10#13#10' ALUNOS.NOME_ALU,'#13#10' FUNCIONARIO.NOME_FUNC,'#13#10' ALUN' +
      'OS.FOTO_ALU,'#13#10' ALUNOS.IDALU,'#13#10' TURMAS.IDTUR,'#13#10' TURMAS.NUM_TUR'#13#10#13 +
      #10#13#10#13#10' FROM AUTORIZACOES'#13#10#13#10' LEFT OUTER JOIN RELTURALU    ON   ( ' +
      'RELTURALU.IDRELTURALU=AUTORIZACOES.IDRELTURALU )'#13#10' LEFT OUTER JO' +
      'IN FUNCIONARIO ON   ( FUNCIONARIO.IDFUNC          = AUTORIZACOES' +
      '.IDFUNC )'#13#10' LEFT OUTER JOIN ALUNOS           ON   ( ALUNOS.IDALU' +
      '                      =RELTURALU.IDALU )'#13#10' LEFT OUTER JOIN TURMA' +
      'S          ON   ( TURMAS.IDTUR                      = RELTURALU.' +
      'IDTUR )'#13#10#13#10'  '#13#10' WHERE AUTORIZACOES.IDAUTORIZA = :PARAUTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARAUTO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 16
    object SQLautoIDAUTORIZA: TIntegerField
      FieldName = 'IDAUTORIZA'
      Required = True
    end
    object SQLautoIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
    end
    object SQLautoIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
    end
    object SQLautoDESCRI_AUTORIZA: TStringField
      FieldName = 'DESCRI_AUTORIZA'
      Size = 500
    end
    object SQLautoDT_AUTORIZA: TDateField
      FieldName = 'DT_AUTORIZA'
    end
    object SQLautoHR_AUTORIZA: TDateField
      FieldName = 'HR_AUTORIZA'
    end
    object SQLautoTIPO_AUTORIZA: TStringField
      FieldName = 'TIPO_AUTORIZA'
      Size = 1
    end
    object SQLautoOBS_AUTORIZA: TStringField
      FieldName = 'OBS_AUTORIZA'
      Size = 100
    end
    object SQLautoSTATUS_AUTORIZA: TStringField
      FieldName = 'STATUS_AUTORIZA'
      Size = 1
    end
    object SQLautoNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SQLautoNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      ProviderFlags = []
      Size = 50
    end
    object SQLautoFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object SQLautoIDALU: TIntegerField
      FieldName = 'IDALU'
      ProviderFlags = []
    end
    object SQLautoIDTUR: TIntegerField
      FieldName = 'IDTUR'
      ProviderFlags = []
    end
    object SQLautoNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLauto
    Left = 88
    Top = 24
  end
  object CDSauto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 152
    Top = 16
    object CDSautoIDAUTORIZA: TIntegerField
      FieldName = 'IDAUTORIZA'
      Required = True
    end
    object CDSautoIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      OnValidate = CDSautoIDFUNCValidate
    end
    object CDSautoIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      OnValidate = CDSautoIDRELTURALUValidate
    end
    object CDSautoDESCRI_AUTORIZA: TStringField
      FieldName = 'DESCRI_AUTORIZA'
      Size = 500
    end
    object CDSautoDT_AUTORIZA: TDateField
      FieldName = 'DT_AUTORIZA'
    end
    object CDSautoHR_AUTORIZA: TDateField
      FieldName = 'HR_AUTORIZA'
    end
    object CDSautoTIPO_AUTORIZA: TStringField
      FieldName = 'TIPO_AUTORIZA'
      Size = 1
    end
    object CDSautoOBS_AUTORIZA: TStringField
      FieldName = 'OBS_AUTORIZA'
      Size = 100
    end
    object CDSautoSTATUS_AUTORIZA: TStringField
      FieldName = 'STATUS_AUTORIZA'
      Size = 1
    end
    object CDSautoNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CDSautoNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      ProviderFlags = []
      Size = 50
    end
    object CDSautoFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object CDSautoIDALU: TIntegerField
      FieldName = 'IDALU'
      ProviderFlags = []
      OnValidate = CDSautoIDALUValidate
    end
    object CDSautoIDTUR: TIntegerField
      FieldName = 'IDTUR'
      ProviderFlags = []
    end
    object CDSautoNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object DSauto: TDataSource
    DataSet = CDSauto
    Left = 232
    Top = 32
  end
end
