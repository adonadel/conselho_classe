inherited FrmCidades: TFrmCidades
  Left = 320
  Top = 213
  Caption = 'Cadastro de Cidades'
  ClientHeight = 422
  ClientWidth = 709
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 709
    Caption = 'Cidades'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 403
    Width = 709
    inherited RzStatusPane2: TRzStatusPane
      Left = 609
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 464
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 333
    Width = 709
    inherited BtCancelar: TRzBitBtn
      Width = 114
    end
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 600
      Top = 7
      Width = 107
    end
  end
  inherited PanDados: TRzPanel
    Width = 709
    Height = 282
    inherited Paginas: TRzPageControl
      Width = 701
      Height = 274
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 24
          Top = 8
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
          Left = 24
          Top = 56
          Width = 31
          Height = 13
          AutoSize = False
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 632
          Top = 56
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
        object DBENome: TRzDBEdit
          Left = 24
          Top = 72
          Width = 593
          Height = 21
          DataSource = DSCid
          DataField = 'NOME_CID'
          AutoSize = False
          FocusColor = clMoneyGreen
          TabOrder = 0
        end
        object DBEUF: TRzDBEdit
          Left = 632
          Top = 72
          Width = 33
          Height = 21
          DataSource = DSCid
          DataField = 'UF_CID'
          AutoSize = False
          FocusColor = clMoneyGreen
          TabOrder = 1
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 28
    Top = 97
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SqlCid: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'CIDADES.IDCID,'#13#10'CIDADES.NOME_CID,'#13#10'CIDADES.STATUS_CID,' +
      #13#10'CIDADES.UF_CID'#13#10#13#10'FROM CIDADES'#13#10#13#10'WHERE CIDADES.IDCID = :PARCI' +
      'D'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARCID'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 8
    object SqlCidIDCID: TIntegerField
      FieldName = 'IDCID'
      Required = True
    end
    object SqlCidNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 50
    end
    object SqlCidSTATUS_CID: TStringField
      FieldName = 'STATUS_CID'
      Required = True
      Size = 1
    end
    object SqlCidUF_CID: TStringField
      FieldName = 'UF_CID'
      Required = True
      Size = 2
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlCid
    Left = 48
    Top = 8
  end
  object CdsCid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 80
    Top = 8
    object CdsCidIDCID: TIntegerField
      FieldName = 'IDCID'
      Required = True
    end
    object CdsCidNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 50
    end
    object CdsCidSTATUS_CID: TStringField
      FieldName = 'STATUS_CID'
      Required = True
      Size = 1
    end
    object CdsCidUF_CID: TStringField
      FieldName = 'UF_CID'
      Required = True
      Size = 2
    end
  end
  object DSCid: TDataSource
    DataSet = CdsCid
    Left = 112
    Top = 8
  end
end
