object F_CadConselho: TF_CadConselho
  Left = 243
  Top = 11
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conselho de Classe'
  ClientHeight = 661
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTitulo: TRzPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 65
    Align = alTop
    BorderInner = fsBump
    Caption = 'Conselho de Classe'
    Color = 13294508
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object PnlDados: TRzPanel
    Left = 0
    Top = 128
    Width = 949
    Height = 493
    Align = alClient
    BorderInner = fsBump
    Color = 13294508
    TabOrder = 1
    object RzLabel1: TRzLabel
      Left = 16
      Top = 14
      Width = 47
      Height = 19
      Caption = 'Turmas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel2: TRzLabel
      Left = 16
      Top = 190
      Width = 45
      Height = 19
      Caption = 'Alunos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel3: TRzLabel
      Left = 480
      Top = 14
      Width = 80
      Height = 19
      Caption = 'Coment'#225'rios:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel4: TRzLabel
      Left = 480
      Top = 342
      Width = 67
      Height = 19
      Caption = 'Problemas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object RzLabel9: TRzLabel
      Left = 480
      Top = 191
      Width = 105
      Height = 19
      Caption = 'Encaminhamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object GridTurmas: TRzDBGrid
      Left = 16
      Top = 32
      Width = 457
      Height = 153
      Hint = 
        'Listar as turmas que tem o conselho marcado para o dia em quest'#227 +
        'o.'
      DataSource = DsConselho
      DefaultDrawing = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = FormKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NUM_TUR'
          Title.Alignment = taCenter
          Title.Caption = 'Turma'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_CUR'
          Title.Alignment = taCenter
          Title.Caption = 'Curso'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TURNO_TUR'
          Title.Alignment = taCenter
          Title.Caption = 'Turno'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANO_TUR'
          Title.Alignment = taCenter
          Title.Caption = 'Ano'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS_TUR'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object GridAlunos: TRzDBGrid
      Left = 16
      Top = 208
      Width = 457
      Height = 273
      Hint = 'Listar os alunos que ser'#227'o avaliados.'
      DataSource = DsConsAlu
      DefaultDrawing = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = FormKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME_ALU'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 423
          Visible = True
        end>
    end
    object DBComentarios: TRzDBEdit
      Left = 480
      Top = 32
      Width = 273
      Height = 153
      Hint = 'Coment'#225'rios do aluno em quest'#227'o.'
      DataSource = DsConsAlu
      DataField = 'COMENT_CONSALU'
      AutoSize = False
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyDown = FormKeyDown
    end
    object DBEncaminhamentos: TRzDBEdit
      Left = 480
      Top = 208
      Width = 454
      Height = 129
      Hint = 'Encaminhamentos do aluno em quest'#227'o.'
      DataSource = DsConsAlu
      DataField = 'ENCAM_CONSALU'
      AutoSize = False
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyDown = FormKeyDown
    end
    object DBProblemas: TRzDBEdit
      Left = 480
      Top = 360
      Width = 457
      Height = 121
      Hint = 'Problemas do aluno em quest'#227'o.'
      DataSource = DsConsAlu
      DataField = 'PROBLE_CONSALU'
      AutoSize = False
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = FormKeyDown
    end
    object DBFoto: TDBImage
      Left = 760
      Top = 32
      Width = 172
      Height = 153
      Hint = 'Foto do aluno em quest'#227'o.'
      DataField = 'FOTO_ALU'
      DataSource = DsConsAlu
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      TabOrder = 5
      OnKeyDown = FormKeyDown
    end
  end
  object PnlCentral: TRzPanel
    Left = 0
    Top = 65
    Width = 949
    Height = 63
    Align = alTop
    BorderInner = fsBump
    Color = 13294508
    TabOrder = 2
    object RzLabel8: TRzLabel
      Left = 16
      Top = 13
      Width = 32
      Height = 19
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object BtnCarregar: TRzButton
      Left = 152
      Top = 29
      Width = 113
      Height = 23
      Hint = 'Carrega os conselhos na data em quest'#227'o.'
      Caption = 'Carregar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnCarregarClick
    end
    object EdtData: TEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      OnExit = EdtDataExit
      OnKeyDown = EdtDataKeyDown
    end
  end
  object PnlInferior: TRzStatusBar
    Left = 0
    Top = 621
    Width = 949
    Height = 40
    AutoStyle = False
    BorderInner = fsBump
    BorderOuter = fsRaised
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Color = 13294508
    TabOrder = 3
    object RzLabel6: TRzLabel
      Left = 136
      Top = 8
      Width = 113
      Height = 19
      Hint = 'Pressione F3 para cancelar a opera'#231#227'o.'
      Alignment = taCenter
      AutoSize = False
      Caption = '<F3> Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      BorderOuter = fsRaised
    end
    object RzLabel7: TRzLabel
      Left = 256
      Top = 8
      Width = 113
      Height = 19
      Hint = 'Pressione F4 para ver as informa'#231#245'es do aluno.'
      Alignment = taCenter
      AutoSize = False
      Caption = '<F4> Informa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      BorderOuter = fsRaised
    end
    object RzLabel5: TRzLabel
      Left = 16
      Top = 8
      Width = 113
      Height = 19
      Hint = 'Pressione F2 para salvar as modifica'#231#245'es.'
      Alignment = taCenter
      AutoSize = False
      Caption = '<F2> Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      BorderOuter = fsRaised
    end
    object RzLabel10: TRzLabel
      Left = 376
      Top = 8
      Width = 113
      Height = 19
      Hint = 'Pressione F5 para sair.'
      Alignment = taCenter
      AutoSize = False
      Caption = '<F5> Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      BorderOuter = fsRaised
    end
    object RzLabel11: TRzLabel
      Left = 497
      Top = 8
      Width = 113
      Height = 19
      Hint = 'Pressione F6 para imprimir a rela'#231#227'o do conselho de classe.'
      Alignment = taCenter
      AutoSize = False
      Caption = '<F6> Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      BorderOuter = fsRaised
    end
  end
  object SqlConsAlu: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'CONSALU.IDCONSALU,'#13#10'CONSALU.IDALU,'#13#10'CONSALU.IDCONS,'#13#10'C' +
      'ONSALU.COMENT_CONSALU,'#13#10'CONSALU.ENCAM_CONSALU,'#13#10'CONSALU.PROBLE_C' +
      'ONSALU,'#13#10'CONSALU.STATUS_CONSALU,'#13#10#13#10'ALUNOS.NOME_ALU,'#13#10'ALUNOS.FOT' +
      'O_ALU,'#13#10'ALUNOS.STATUS_ALU,'#13#10#13#10'TURMAS.NUM_TUR'#13#10#13#10'FROM CONSALU'#13#10#13#10 +
      'LEFT OUTER JOIN ALUNOS ON (ALUNOS.IDALU = CONSALU.IDALU)'#13#10'LEFT O' +
      'UTER JOIN CONSELHO ON (CONSELHO.IDCONS = CONSALU.IDCONS)'#13#10'LEFT O' +
      'UTER JOIN TURMAS ON (TURMAS.IDTUR = CONSELHO.IDTUR)'#13#10#13#10#13#10'WHERE C' +
      'ONSALU.IDCONS = :IDCONS'
    DataSource = DsLiga
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDCONS'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DM.Conexao
    Left = 48
    Top = 384
    object SqlConsAluIDCONSALU: TIntegerField
      FieldName = 'IDCONSALU'
      Required = True
    end
    object SqlConsAluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object SqlConsAluIDCONS: TIntegerField
      FieldName = 'IDCONS'
      Required = True
    end
    object SqlConsAluCOMENT_CONSALU: TStringField
      FieldName = 'COMENT_CONSALU'
      Size = 300
    end
    object SqlConsAluENCAM_CONSALU: TStringField
      FieldName = 'ENCAM_CONSALU'
      Size = 300
    end
    object SqlConsAluPROBLE_CONSALU: TStringField
      FieldName = 'PROBLE_CONSALU'
      Size = 300
    end
    object SqlConsAluSTATUS_CONSALU: TStringField
      FieldName = 'STATUS_CONSALU'
      Required = True
      Size = 1
    end
    object SqlConsAluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object SqlConsAluFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object SqlConsAluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
    object SqlConsAluNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object SqlConselho: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10'CONSELHO.IDCONS,'#13#10'CONSELHO.IDTUR,'#13#10'CONSELHO.DATA_CONS' +
      ','#13#10'CONSELHO.HORA_CONS,'#13#10'CONSELHO.NUMBIMTRIM_CONS,'#13#10'CONSELHO.TIPO' +
      'CONS_CONS,'#13#10'CONSELHO.OBS_CONS,'#13#10'CONSELHO.STATUS_CONS,'#13#10#13#10'TURMAS.' +
      'NUM_TUR,'#13#10'TURMAS.ANO_TUR,'#13#10'TURMAS.TURNO_TUR,'#13#10'TURMAS.STATUS_TUR,' +
      #13#10'CURSOS.DESCRICAO_CUR'#13#10#13#10'FROM CONSELHO'#13#10#13#10'LEFT OUTER JOIN TURMA' +
      'S ON (TURMAS.IDTUR = CONSELHO.IDTUR)'#13#10'LEFT OUTER JOIN CURSOS ON ' +
      '(CURSOS.IDCURSO = TURMAS.IDCURSO) '#13#10#13#10#13#10'WHERE  CONSELHO.DATA_CON' +
      'S = :PARCONS '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARCONS'
        ParamType = ptInput
      end>
    SQLConnection = DM.Conexao
    Left = 56
    Top = 192
    object SqlConselhoIDCONS: TIntegerField
      FieldName = 'IDCONS'
      Required = True
    end
    object SqlConselhoIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object SqlConselhoDATA_CONS: TDateField
      FieldName = 'DATA_CONS'
      Required = True
    end
    object SqlConselhoHORA_CONS: TTimeField
      FieldName = 'HORA_CONS'
    end
    object SqlConselhoNUMBIMTRIM_CONS: TIntegerField
      FieldName = 'NUMBIMTRIM_CONS'
      Required = True
    end
    object SqlConselhoTIPOCONS_CONS: TStringField
      FieldName = 'TIPOCONS_CONS'
      Required = True
      Size = 6
    end
    object SqlConselhoOBS_CONS: TStringField
      FieldName = 'OBS_CONS'
      Size = 300
    end
    object SqlConselhoSTATUS_CONS: TStringField
      FieldName = 'STATUS_CONS'
      Required = True
      Size = 1
    end
    object SqlConselhoNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
    object SqlConselhoANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
      ProviderFlags = []
    end
    object SqlConselhoTURNO_TUR: TStringField
      FieldName = 'TURNO_TUR'
      ProviderFlags = []
      Size = 1
    end
    object SqlConselhoSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      ProviderFlags = []
      Size = 1
    end
    object SqlConselhoDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
    end
  end
  object DsLiga: TDataSource
    DataSet = SqlConselho
    Left = 64
    Top = 280
  end
  object Provider: TDataSetProvider
    DataSet = SqlConselho
    Left = 136
    Top = 200
  end
  object CdsConselho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 216
    Top = 200
    object CdsConselhoIDCONS: TIntegerField
      FieldName = 'IDCONS'
      Required = True
    end
    object CdsConselhoIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object CdsConselhoDATA_CONS: TDateField
      FieldName = 'DATA_CONS'
      Required = True
    end
    object CdsConselhoHORA_CONS: TTimeField
      FieldName = 'HORA_CONS'
    end
    object CdsConselhoNUMBIMTRIM_CONS: TIntegerField
      FieldName = 'NUMBIMTRIM_CONS'
      Required = True
    end
    object CdsConselhoTIPOCONS_CONS: TStringField
      FieldName = 'TIPOCONS_CONS'
      Required = True
      Size = 6
    end
    object CdsConselhoOBS_CONS: TStringField
      FieldName = 'OBS_CONS'
      Size = 300
    end
    object CdsConselhoSTATUS_CONS: TStringField
      FieldName = 'STATUS_CONS'
      Required = True
      Size = 1
    end
    object CdsConselhoNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
    object CdsConselhoANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
      ProviderFlags = []
    end
    object CdsConselhoTURNO_TUR: TStringField
      FieldName = 'TURNO_TUR'
      ProviderFlags = []
      Size = 1
    end
    object CdsConselhoSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      ProviderFlags = []
      Size = 1
    end
    object CdsConselhoDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
    object CdsConselhoSqlConsAlu: TDataSetField
      FieldName = 'SqlConsAlu'
    end
  end
  object DsConselho: TDataSource
    DataSet = CdsConselho
    Left = 296
    Top = 200
  end
  object CdsConsAlu: TClientDataSet
    Aggregates = <>
    DataSetField = CdsConselhoSqlConsAlu
    Params = <>
    Left = 144
    Top = 384
    object CdsConsAluIDCONSALU: TIntegerField
      FieldName = 'IDCONSALU'
      Required = True
    end
    object CdsConsAluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object CdsConsAluIDCONS: TIntegerField
      FieldName = 'IDCONS'
      Required = True
    end
    object CdsConsAluCOMENT_CONSALU: TStringField
      FieldName = 'COMENT_CONSALU'
      Size = 300
    end
    object CdsConsAluENCAM_CONSALU: TStringField
      FieldName = 'ENCAM_CONSALU'
      Size = 300
    end
    object CdsConsAluPROBLE_CONSALU: TStringField
      FieldName = 'PROBLE_CONSALU'
      Size = 300
    end
    object CdsConsAluSTATUS_CONSALU: TStringField
      FieldName = 'STATUS_CONSALU'
      Required = True
      Size = 1
    end
    object CdsConsAluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      ProviderFlags = []
      Size = 50
    end
    object CdsConsAluFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      ProviderFlags = []
      Size = 1
    end
    object CdsConsAluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      ProviderFlags = []
      Size = 1
    end
    object CdsConsAluNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
  end
  object DsConsAlu: TDataSource
    DataSet = CdsConsAlu
    Left = 224
    Top = 384
  end
  object SQLAuxData: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Conexao
    Left = 432
    Top = 248
  end
  object RaveProjectCons: TRvProject
    Engine = RvSystem1
    Left = 88
    Top = 520
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 160
    Top = 520
  end
  object RvConnection: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsConsAlu
    Left = 256
    Top = 520
  end
end
