inherited FrmCadVaga: TFrmCadVaga
  Left = 265
  Top = 51
  Caption = 'Cadastro de Vagas'
  ClientHeight = 650
  ClientWidth = 888
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 888
    Caption = 'Cadastro de Vagas'
    TabOrder = 1
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 631
    Width = 888
    TabOrder = 2
    inherited RzStatusPane2: TRzStatusPane
      Left = 736
      Width = 152
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 591
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 561
    Width = 888
    TabOrder = 3
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 720
      Width = 167
    end
  end
  inherited PanDados: TRzPanel
    Width = 888
    Height = 510
    TabOrder = 4
    inherited Paginas: TRzPageControl
      Width = 880
      Height = 502
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 40
          Top = 20
          Width = 36
          Height = 13
          AutoSize = False
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 40
          Top = 62
          Width = 68
          Height = 13
          Caption = '*C'#243'd. Emp.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 40
          Top = 110
          Width = 83
          Height = 13
          Caption = '*C'#243'd. Tur/Alu:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 40
          Top = 158
          Width = 67
          Height = 13
          Caption = '*Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 680
          Top = 110
          Width = 84
          Height = 13
          Caption = '*Bolsa Aux'#237'lio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 680
          Top = 62
          Width = 53
          Height = 13
          Caption = 'N'#186' Ap'#243'lice:'
        end
        object Label7: TLabel
          Left = 384
          Top = 159
          Width = 64
          Height = 13
          Caption = 'Tempo Vaga:'
        end
        object Label8: TLabel
          Left = 40
          Top = 206
          Width = 52
          Height = 13
          Caption = 'Requisitos:'
        end
        object Label9: TLabel
          Left = 680
          Top = 251
          Width = 71
          Height = 13
          Caption = 'Data Cadastro:'
        end
        object Label10: TLabel
          Left = 680
          Top = 158
          Width = 100
          Height = 13
          Caption = 'Data Preenchimento:'
        end
        object Label11: TLabel
          Left = 528
          Top = 158
          Width = 100
          Height = 13
          Caption = 'Hora Preenchimento:'
        end
        object Label12: TLabel
          Left = 680
          Top = 206
          Width = 56
          Height = 13
          Caption = 'Data In'#237'cio:'
        end
        object Label13: TLabel
          Left = 528
          Top = 110
          Width = 33
          Height = 13
          Caption = 'Turma:'
        end
        object Label14: TLabel
          Left = 120
          Top = 62
          Width = 75
          Height = 13
          Caption = 'Nome Empresa:'
        end
        object Label15: TLabel
          Left = 120
          Top = 110
          Width = 61
          Height = 13
          Caption = 'Nome Aluno:'
        end
        object DBnomeEmp: TRzDBEdit
          Left = 120
          Top = 78
          Width = 549
          Height = 21
          DataSource = DsVaga
          DataField = 'NOMEFAN_EMP'
          ReadOnly = True
          Color = clSkyBlue
          ReadOnlyColor = clSkyBlue
          TabOrder = 1
        end
        object DBnomeRel: TRzDBEdit
          Left = 120
          Top = 126
          Width = 401
          Height = 21
          DataSource = DsVaga
          DataField = 'NOME_ALU'
          ReadOnly = True
          Color = clSkyBlue
          ReadOnlyColor = clSkyBlue
          TabOrder = 3
        end
        object DBrequisito: TRzDBRichEdit
          Left = 40
          Top = 222
          Width = 627
          Height = 65
          DataField = 'REQUISITO_VAGA'
          DataSource = DsVaga
          TabOrder = 10
          FocusColor = clMoneyGreen
        end
        object DBdtprench: TRzDBEdit
          Left = 680
          Top = 174
          Width = 150
          Height = 21
          DataSource = DsVaga
          DataField = 'DTPRENCH_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 9
        end
        object BDdtinicio: TRzDBEdit
          Left = 680
          Top = 222
          Width = 150
          Height = 21
          DataSource = DsVaga
          DataField = 'DTINICIO_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 11
        end
        object DBnumTur: TRzDBEdit
          Left = 528
          Top = 126
          Width = 140
          Height = 21
          DataSource = DsVaga
          DataField = 'NUM_TUR'
          ReadOnly = True
          Color = clSkyBlue
          ReadOnlyColor = clSkyBlue
          TabOrder = 4
        end
        object DBbolsa: TRzDBEdit
          Left = 680
          Top = 126
          Width = 150
          Height = 21
          DataSource = DsVaga
          DataField = 'BOLSA_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 5
        end
        object DBdtcad: TRzDBEdit
          Left = 680
          Top = 267
          Width = 150
          Height = 21
          DataSource = DsVaga
          DataField = 'DTCAD_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 12
        end
        object DBhoraPrench: TRzDBEdit
          Left = 528
          Top = 174
          Width = 137
          Height = 21
          DataSource = DsVaga
          DataField = 'HORAPRENCH_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 8
        end
        object DBtempo: TRzDBEdit
          Left = 384
          Top = 174
          Width = 137
          Height = 21
          DataSource = DsVaga
          DataField = 'TEMPO_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 7
        end
        object DBdescriVaga: TRzDBEdit
          Left = 40
          Top = 174
          Width = 337
          Height = 21
          DataSource = DsVaga
          DataField = 'DESCRI_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 6
        end
        object DBapolice: TRzDBEdit
          Left = 680
          Top = 78
          Width = 150
          Height = 21
          DataSource = DsVaga
          DataField = 'NUMAPOLICE_VAGA'
          FocusColor = clMoneyGreen
          TabOrder = 2
        end
        object Panel1: TPanel
          Left = 16
          Top = 304
          Width = 841
          Height = 161
          Color = clSkyBlue
          TabOrder = 13
          object RzPanel1: TRzPanel
            Left = 1
            Top = 1
            Width = 839
            Height = 29
            Align = alTop
            BorderInner = fsBump
            Caption = 'Caracter'#237'sticas da Vaga'
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBGridDetalhe: TDBGrid
            Left = 1
            Top = 30
            Width = 839
            Height = 130
            Hint = '<F5> Nova Caracter'#237'stica'#13'<F6> Editar Caracter'#237'stica'
            Align = alClient
            DataSource = DsRelacao
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyDown = DBGridDetalheKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'IDRELVAGCURSO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Rela'#231#227'o'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_CUR'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o Curso'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Width = 635
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS_RELVAGCURSO'
                Title.Alignment = taCenter
                Title.Caption = 'Status Rela'#231#227'o'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Times New Roman'
                Title.Font.Style = [fsBold]
                Width = 86
                Visible = True
              end>
          end
        end
        object DBidemp: TRzDBButtonEdit
          Left = 39
          Top = 78
          Width = 74
          Height = 21
          Hint = '<Buscas> Click na Lupa <Inser'#231#227'o> Clique no Bot'#227'o Pastas'
          DataSource = DsVaga
          DataField = 'IDEMP'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          AltBtnKind = bkFolder
          ButtonKind = bkFind
          AltBtnVisible = True
          OnAltBtnClick = DBidempAltBtnClick
          OnButtonClick = DBidempButtonClick
          FlatButtons = True
        end
        object DBIdTurAlu: TRzDBButtonEdit
          Left = 40
          Top = 126
          Width = 74
          Height = 21
          DataSource = DsVaga
          DataField = 'IDRELTURALU'
          Enabled = False
          TabOrder = 14
          ButtonKind = bkFolder
          OnButtonClick = DBIdTurAluButtonClick
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 44
    Top = 109
    TabOrder = 0
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SqlVaga: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10'VAGAEST.IDVAGA,'#13#10'VAGAEST.IDEMP,'#13#10'VAGAEST.IDRELTURALU,' +
      #13#10'VAGAEST.DESCRI_VAGA,'#13#10'VAGAEST.BOLSA_VAGA,'#13#10'VAGAEST.NUMAPOLICE_' +
      'VAGA,'#13#10'VAGAEST.TEMPO_VAGA,'#13#10'VAGAEST.REQUISITO_VAGA,'#13#10'VAGAEST.DTC' +
      'AD_VAGA,'#13#10'VAGAEST.HORACAD_VAGA,'#13#10'VAGAEST.DTPRENCH_VAGA,'#13#10'VAGAEST' +
      '.HORAPRENCH_VAGA,'#13#10'VAGAEST.DTINICIO_VAGA,'#13#10'VAGAEST.STATUS_VAGA,'#13 +
      #10#13#10'EMPRESA.NOMEFAN_EMP,'#13#10'EMPRESA.STATUS_EMP,'#13#10#13#10'ALUNOS.NOME_ALU,' +
      #13#10#13#10'TURMAS.NUM_TUR'#13#10#13#10'FROM VAGAEST'#13#10#13#10'LEFT OUTER JOIN EMPRESA ON' +
      ' (EMPRESA.IDEMP= VAGAEST.IDEMP)'#13#10'LEFT OUTER JOIN RELTURALU ON (R' +
      'ELTURALU.IDRELTURALU = VAGAEST.IDRELTURALU )'#13#10'LEFT OUTER JOIN AL' +
      'UNOS ON (ALUNOS.IDALU = RELTURALU.IDALU)'#13#10'LEFT OUTER JOIN TURMAS' +
      ' ON (TURMAS.IDTUR = RELTURALU.IDTUR)'#13#10#13#10'WHERE VAGAEST.IDVAGA = :' +
      'PARVAGA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARVAGA'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 16
    object SqlVagaIDVAGA: TIntegerField
      FieldName = 'IDVAGA'
      Required = True
    end
    object SqlVagaIDEMP: TIntegerField
      FieldName = 'IDEMP'
      Required = True
    end
    object SqlVagaIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
    end
    object SqlVagaDESCRI_VAGA: TStringField
      FieldName = 'DESCRI_VAGA'
      Required = True
      Size = 50
    end
    object SqlVagaBOLSA_VAGA: TFMTBCDField
      FieldName = 'BOLSA_VAGA'
      Required = True
      Precision = 15
      Size = 2
    end
    object SqlVagaNUMAPOLICE_VAGA: TStringField
      FieldName = 'NUMAPOLICE_VAGA'
      Size = 15
    end
    object SqlVagaTEMPO_VAGA: TIntegerField
      FieldName = 'TEMPO_VAGA'
    end
    object SqlVagaREQUISITO_VAGA: TStringField
      FieldName = 'REQUISITO_VAGA'
      Size = 200
    end
    object SqlVagaDTCAD_VAGA: TDateField
      FieldName = 'DTCAD_VAGA'
    end
    object SqlVagaHORACAD_VAGA: TTimeField
      FieldName = 'HORACAD_VAGA'
    end
    object SqlVagaDTPRENCH_VAGA: TDateField
      FieldName = 'DTPRENCH_VAGA'
    end
    object SqlVagaHORAPRENCH_VAGA: TTimeField
      FieldName = 'HORAPRENCH_VAGA'
    end
    object SqlVagaDTINICIO_VAGA: TDateField
      FieldName = 'DTINICIO_VAGA'
    end
    object SqlVagaSTATUS_VAGA: TStringField
      FieldName = 'STATUS_VAGA'
      Required = True
      Size = 1
    end
    object SqlVagaNOMEFAN_EMP: TStringField
      FieldName = 'NOMEFAN_EMP'
      ProviderFlags = []
      Size = 50
    end
    object SqlVagaSTATUS_EMP: TStringField
      FieldName = 'STATUS_EMP'
      ProviderFlags = []
      Size = 1
    end
    object SqlVagaNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SqlVagaNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlVaga
    Left = 48
    Top = 16
  end
  object CdsVaga: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 80
    Top = 16
    object CdsVagaIDVAGA: TIntegerField
      FieldName = 'IDVAGA'
      Required = True
    end
    object CdsVagaIDEMP: TIntegerField
      FieldName = 'IDEMP'
      Required = True
      OnValidate = CdsVagaIDEMPValidate
    end
    object CdsVagaIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      OnValidate = CdsVagaIDRELTURALUValidate
    end
    object CdsVagaDESCRI_VAGA: TStringField
      FieldName = 'DESCRI_VAGA'
      Required = True
      Size = 50
    end
    object CdsVagaBOLSA_VAGA: TFMTBCDField
      FieldName = 'BOLSA_VAGA'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object CdsVagaNUMAPOLICE_VAGA: TStringField
      FieldName = 'NUMAPOLICE_VAGA'
      Size = 15
    end
    object CdsVagaTEMPO_VAGA: TIntegerField
      FieldName = 'TEMPO_VAGA'
    end
    object CdsVagaREQUISITO_VAGA: TStringField
      FieldName = 'REQUISITO_VAGA'
      Size = 200
    end
    object CdsVagaDTCAD_VAGA: TDateField
      FieldName = 'DTCAD_VAGA'
      EditMask = '##/##/####;1; '
    end
    object CdsVagaHORACAD_VAGA: TTimeField
      FieldName = 'HORACAD_VAGA'
    end
    object CdsVagaDTPRENCH_VAGA: TDateField
      FieldName = 'DTPRENCH_VAGA'
      EditMask = '##/##/####;1; '
    end
    object CdsVagaHORAPRENCH_VAGA: TTimeField
      FieldName = 'HORAPRENCH_VAGA'
    end
    object CdsVagaDTINICIO_VAGA: TDateField
      FieldName = 'DTINICIO_VAGA'
      EditMask = '##/##/####;1; '
    end
    object CdsVagaSTATUS_VAGA: TStringField
      FieldName = 'STATUS_VAGA'
      Required = True
      Size = 1
    end
    object CdsVagaNOMEFAN_EMP: TStringField
      FieldName = 'NOMEFAN_EMP'
      ProviderFlags = []
      Size = 50
    end
    object CdsVagaSTATUS_EMP: TStringField
      FieldName = 'STATUS_EMP'
      ProviderFlags = []
      Size = 1
    end
    object CdsVagaNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CdsVagaNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
    object CdsVagaSQLVAGCURSO: TDataSetField
      FieldName = 'SQLVAGCURSO'
    end
  end
  object DsVaga: TDataSource
    DataSet = CdsVaga
    Left = 112
    Top = 16
  end
  object DSLIGA: TDataSource
    DataSet = SqlVaga
    Left = 16
    Top = 51
  end
  object SqlVagCurso: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10'RELVAGCURSO.IDRELVAGCURSO,'#13#10'RELVAGCURSO.IDVAGA,'#13#10'RELV' +
      'AGCURSO.IDCURSO,'#13#10'RELVAGCURSO.STATUS_RELVAGCURSO,'#13#10#13#10'CURSOS.DESC' +
      'RICAO_CUR,'#13#10'CURSOS.STATUS_CUR'#13#10#13#10'FROM RELVAGCURSO'#13#10#13#10'LEFT OUTER ' +
      'JOIN CURSOS ON (CURSOS.IDCURSO = RELVAGCURSO.IDCURSO)'#13#10#13#10'WHERE R' +
      'ELVAGCURSO.IDVAGA = :IDVAGA'#13#10#13#10#13#10#13#10
    DataSource = DSLIGA
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDVAGA'
        ParamType = ptInput
        Size = 4
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 21
    Top = 83
    object SqlVagCursoIDRELVAGCURSO: TIntegerField
      FieldName = 'IDRELVAGCURSO'
      Required = True
      OnValidate = SqlVagCursoIDRELVAGCURSOValidate
    end
    object SqlVagCursoIDVAGA: TIntegerField
      FieldName = 'IDVAGA'
    end
    object SqlVagCursoIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
    end
    object SqlVagCursoSTATUS_RELVAGCURSO: TStringField
      FieldName = 'STATUS_RELVAGCURSO'
      Required = True
      Size = 1
    end
    object SqlVagCursoDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
    object SqlVagCursoSTATUS_CUR: TStringField
      FieldName = 'STATUS_CUR'
      ProviderFlags = []
      Size = 1
    end
  end
  object CdsVagCurso: TClientDataSet
    Aggregates = <>
    DataSetField = CdsVagaSQLVAGCURSO
    Params = <>
    Left = 53
    Top = 83
    object CdsVagCursoIDRELVAGCURSO: TIntegerField
      FieldName = 'IDRELVAGCURSO'
      Required = True
    end
    object CdsVagCursoIDVAGA: TIntegerField
      FieldName = 'IDVAGA'
    end
    object CdsVagCursoIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      Required = True
      OnValidate = CdsVagCursoIDCURSOValidate
    end
    object CdsVagCursoSTATUS_RELVAGCURSO: TStringField
      FieldName = 'STATUS_RELVAGCURSO'
      Required = True
      Size = 1
    end
    object CdsVagCursoDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
    object CdsVagCursoSTATUS_CUR: TStringField
      FieldName = 'STATUS_CUR'
      ProviderFlags = []
      Size = 1
    end
  end
  object DsRelacao: TDataSource
    DataSet = CdsVagCurso
    Left = 85
    Top = 83
  end
end
