inherited FRM_CADOCO: TFRM_CADOCO
  Left = 368
  Top = 108
  Caption = 'FRM_CADOCO'
  ClientHeight = 673
  ClientWidth = 727
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 727
    Caption = 'CADASTRO DE OCORR'#202'NCIAS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 654
    Width = 727
    inherited RzStatusPane2: TRzStatusPane
      Left = 582
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 437
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 584
    Width = 727
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtSair: TRzBitBtn
      Left = 596
      Top = 7
      Width = 124
      Height = 57
    end
  end
  inherited PanDados: TRzPanel
    Width = 727
    Height = 533
    inherited Paginas: TRzPageControl
      Width = 719
      Height = 525
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 14
          Top = 14
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 14
          Top = 65
          Width = 55
          Height = 13
          Caption = 'Funcion'#225'rio'
        end
        object Label3: TLabel
          Left = 14
          Top = 113
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label4: TLabel
          Left = 142
          Top = 113
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label5: TLabel
          Left = 268
          Top = 113
          Width = 23
          Height = 13
          Caption = 'Grau'
        end
        object Label6: TLabel
          Left = 15
          Top = 161
          Width = 21
          Height = 13
          Caption = 'Tipo'
        end
        object Label7: TLabel
          Left = 14
          Top = 209
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label8: TLabel
          Left = 14
          Top = 257
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object FUNC: TRzDBEdit
          Left = 141
          Top = 80
          Width = 396
          Height = 21
          DataSource = DSoco
          DataField = 'NOME_FUNC'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 0
        end
        object IDfunc: TRzDBButtonEdit
          Left = 11
          Top = 80
          Width = 121
          Height = 21
          DataSource = DSoco
          DataField = 'IDFUNC'
          TabOrder = 1
          AltBtnKind = bkFind
          AltBtnVisible = True
          ButtonVisible = False
        end
        object RzDBEdit1: TRzDBEdit
          Left = 11
          Top = 128
          Width = 119
          Height = 21
          DataSource = DSoco
          DataField = 'DT_OCOR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 2
        end
        object RzDBEdit2: TRzDBEdit
          Left = 139
          Top = 128
          Width = 119
          Height = 21
          DataSource = DSoco
          DataField = 'HR_OCOR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 3
        end
        object EditGrau: TRzDBComboBox
          Left = 264
          Top = 128
          Width = 57
          Height = 21
          DataField = 'GRAU_OCOR'
          DataSource = DSoco
          ItemHeight = 13
          TabOrder = 4
          Items.Strings = (
            'B'
            'M'
            'A')
        end
        object EditTIpo: TRzDBComboBox
          Left = 11
          Top = 176
          Width = 682
          Height = 21
          DataField = 'TIPO_OCOR'
          DataSource = DSoco
          ItemHeight = 13
          TabOrder = 5
          Items.Strings = (
            'Vandalismo'
            'Invas'#227'o'
            'Roubo'
            'Agress'#227'o f'#237'sica'
            'Agress'#227'o verbal'
            'Amea'#231'a'
            'Discrimina'#231#227'o'
            'Bullying'
            'Uso de drogas l'#237'citas'
            'Uso de drogas il'#237'citas'
            'Venda de drogas l'#237'citas'
            'Venda de drogas il'#237'citas'
            'Posse de objetos perigosos'
            'Ass'#233'dio sexual'
            'Estupro'
            'Atentado ao pudor'
            'Uso de aparelhos eletr'#244'nicos em sala de aula'
            'Sa'#237'da injustificada'
            'Chegada atrasada')
        end
        object EditDes: TRzDBEdit
          Left = 11
          Top = 224
          Width = 680
          Height = 21
          DataSource = DSoco
          DataField = 'DESCRI_OCOR'
          TabOrder = 6
        end
        object EditObs: TRzDBEdit
          Left = 11
          Top = 272
          Width = 682
          Height = 21
          DataSource = DSoco
          DataField = 'OBS_OCOR'
          TabOrder = 7
        end
        object Panel1: TPanel
          Left = 8
          Top = 312
          Width = 689
          Height = 177
          BorderStyle = bsSingle
          Caption = 'Panel1'
          Enabled = False
          TabOrder = 8
          object Label9: TLabel
            Left = 256
            Top = 4
            Width = 140
            Height = 37
            Caption = 'ALUNOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -31
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object grid: TRzDBGrid
            Left = 7
            Top = 38
            Width = 670
            Height = 128
            Hint = '<F5> Adicionar disciplina'#13'<F6> Editar disciplina'
            DataSource = DSaluoco
            DefaultDrawing = True
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyDown = gridKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'IDALU'
                Title.Caption = 'C'#211'DIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_ALU'
                Title.Caption = 'NOME'
                Width = 482
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS_ALU'
                Title.Caption = 'STATUS'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Top = 104
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SQLoco: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10' OCORRENCIAS.IDOCOR,'#13#10' OCORRENCIAS.IDFUNC,'#13#10' OCORRENC' +
      'IAS.DESCRI_OCOR,'#13#10' OCORRENCIAS.DT_OCOR,'#13#10' OCORRENCIAS.HR_OCOR,'#13#10 +
      ' OCORRENCIAS.TIPO_OCOR,'#13#10' OCORRENCIAS.GRAU_OCOR,'#13#10' OCORRENCIAS.O' +
      'BS_OCOR,'#13#10' OCORRENCIAS.STATUS_OCOR,'#13#10#13#10' FUNCIONARIO.NOME_FUNC'#13#10#13 +
      #10#13#10'FROM  OCORRENCIAS'#13#10#13#10'LEFT OUTER JOIN FUNCIONARIO ON (FUNCIONA' +
      'RIO.IDFUNC= OCORRENCIAS.IDFUNC)'#13#10#13#10'WHERE  OCORRENCIAS.IDOCOR = :' +
      'PAROCO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PAROCO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLocoIDOCOR: TIntegerField
      FieldName = 'IDOCOR'
      Required = True
    end
    object SQLocoIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
    end
    object SQLocoDESCRI_OCOR: TStringField
      FieldName = 'DESCRI_OCOR'
      Size = 300
    end
    object SQLocoDT_OCOR: TDateField
      FieldName = 'DT_OCOR'
    end
    object SQLocoHR_OCOR: TDateField
      FieldName = 'HR_OCOR'
    end
    object SQLocoTIPO_OCOR: TStringField
      FieldName = 'TIPO_OCOR'
      Size = 1
    end
    object SQLocoGRAU_OCOR: TStringField
      FieldName = 'GRAU_OCOR'
      Size = 1
    end
    object SQLocoOBS_OCOR: TStringField
      FieldName = 'OBS_OCOR'
      Size = 100
    end
    object SQLocoSTATUS_OCOR: TStringField
      FieldName = 'STATUS_OCOR'
      Size = 1
    end
    object SQLocoNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      ProviderFlags = []
      Size = 50
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLoco
    Left = 80
    Top = 8
  end
  object CDSoco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 152
    Top = 8
    object CDSocoIDOCOR: TIntegerField
      FieldName = 'IDOCOR'
      Required = True
    end
    object CDSocoIDFUNC: TIntegerField
      FieldName = 'IDFUNC'
      OnValidate = CDSocoIDFUNCValidate
    end
    object CDSocoDESCRI_OCOR: TStringField
      FieldName = 'DESCRI_OCOR'
      Size = 300
    end
    object CDSocoDT_OCOR: TDateField
      FieldName = 'DT_OCOR'
    end
    object CDSocoHR_OCOR: TDateField
      FieldName = 'HR_OCOR'
    end
    object CDSocoTIPO_OCOR: TStringField
      FieldName = 'TIPO_OCOR'
      Size = 1
    end
    object CDSocoGRAU_OCOR: TStringField
      FieldName = 'GRAU_OCOR'
      Size = 1
    end
    object CDSocoOBS_OCOR: TStringField
      FieldName = 'OBS_OCOR'
      Size = 100
    end
    object CDSocoSTATUS_OCOR: TStringField
      FieldName = 'STATUS_OCOR'
      Size = 1
    end
    object CDSocoNOME_FUNC: TStringField
      FieldName = 'NOME_FUNC'
      ProviderFlags = []
      Size = 50
    end
    object CDSocoSQLaluoco: TDataSetField
      FieldName = 'SQLaluoco'
    end
  end
  object DSoco: TDataSource
    DataSet = CDSoco
    Left = 224
    Top = 8
  end
  object DSliga: TDataSource
    DataSet = SQLoco
    Left = 336
    Top = 8
  end
  object DSaluoco: TDataSource
    DataSet = CDSaluoco
    Left = 560
    Top = 8
  end
  object CDSaluoco: TClientDataSet
    Aggregates = <>
    DataSetField = CDSocoSQLaluoco
    Params = <>
    Left = 485
    Top = 11
    object CDSaluocoIDALUOCO: TIntegerField
      FieldName = 'IDALUOCO'
      Required = True
    end
    object CDSaluocoIDALU: TIntegerField
      FieldName = 'IDALU'
      OnValidate = CDSaluocoIDALUValidate
    end
    object CDSaluocoIDOCOR: TIntegerField
      FieldName = 'IDOCOR'
    end
    object CDSaluocoVERSAO_ALUOCO: TStringField
      FieldName = 'VERSAO_ALUOCO'
      Size = 500
    end
    object CDSaluocoOBS_ALUOCO: TStringField
      FieldName = 'OBS_ALUOCO'
      Size = 100
    end
    object CDSaluocoSTATUS_ALUOCO: TStringField
      FieldName = 'STATUS_ALUOCO'
      Size = 1
    end
    object CDSaluocoNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CDSaluocoFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object CDSaluocoSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
  end
  object SQLaluoco: TSQLDataSet
    CommandText = 
      'SELECT '#13#10' RELA_ALUOCO.IDALUOCO,'#13#10' RELA_ALUOCO.IDALU,'#13#10' RELA_ALUO' +
      'CO.IDOCOR,'#13#10' RELA_ALUOCO.VERSAO_ALUOCO,'#13#10' RELA_ALUOCO.OBS_ALUOCO' +
      ','#13#10' RELA_ALUOCO.STATUS_ALUOCO,'#13#10#13#10' ALUNOS.NOME_ALU,'#13#10' ALUNOS.FOT' +
      'O_ALU,'#13#10' ALUNOS.STATUS_ALU'#13#10#13#10#13#10#13#10'FROM RELA_ALUOCO'#13#10#13#10'LEFT OUTER' +
      ' JOIN ALUNOS ON (ALUNOS.IDALU = RELA_ALUOCO.IDALU)'#13#10#13#10#13#10'WHERE RE' +
      'LA_ALUOCO.IDOCOR= :IDOCOR'
    DataSource = DSliga
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDOCOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DM.Conexao
    Left = 408
    Top = 11
    object SQLaluocoIDALUOCO: TIntegerField
      FieldName = 'IDALUOCO'
      Required = True
    end
    object SQLaluocoIDALU: TIntegerField
      FieldName = 'IDALU'
    end
    object SQLaluocoIDOCOR: TIntegerField
      FieldName = 'IDOCOR'
    end
    object SQLaluocoVERSAO_ALUOCO: TStringField
      FieldName = 'VERSAO_ALUOCO'
      Size = 500
    end
    object SQLaluocoOBS_ALUOCO: TStringField
      FieldName = 'OBS_ALUOCO'
      Size = 100
    end
    object SQLaluocoSTATUS_ALUOCO: TStringField
      FieldName = 'STATUS_ALUOCO'
      Size = 1
    end
    object SQLaluocoNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SQLaluocoFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object SQLaluocoSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
  end
end