inherited FrmTipoLog: TFrmTipoLog
  Left = 385
  Top = 173
  Caption = 'Cadastro de Tipos de Logradouros'
  ClientHeight = 422
  ClientWidth = 724
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 724
    Caption = 'Tipos de Logradouros'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 403
    Width = 724
    inherited RzStatusPane2: TRzStatusPane
      Left = 624
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 479
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 333
    Width = 724
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 600
      Top = 8
      Width = 119
    end
  end
  inherited PanDados: TRzPanel
    Width = 724
    Height = 282
    inherited Paginas: TRzPageControl
      Width = 716
      Height = 274
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 24
          Top = 16
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
          Left = 112
          Top = 16
          Width = 51
          Height = 13
          AutoSize = False
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEDescTipoLog: TRzDBEdit
          Left = 112
          Top = 32
          Width = 569
          Height = 21
          DataSource = DSTipoLog
          DataField = 'DESCRI_TIPOLOG'
          AutoSize = False
          FocusColor = clMoneyGreen
          TabOrder = 0
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 28
    Top = 105
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SqlTipoLog: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'TIPOLOGRA.IDTIPOLOG,'#13#10'TIPOLOGRA.DESCRI_TIPOLOG,'#13#10'TIPOL' +
      'OGRA.STATUS_TIPOLOG'#13#10#13#10'FROM TIPOLOGRA'#13#10#13#10'WHERE TIPOLOGRA.IDTIPOL' +
      'OG = :PARLOG'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARLOG'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 8
    object SqlTipoLogIDTIPOLOG: TIntegerField
      FieldName = 'IDTIPOLOG'
      Required = True
    end
    object SqlTipoLogDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      Required = True
      Size = 50
    end
    object SqlTipoLogSTATUS_TIPOLOG: TStringField
      FieldName = 'STATUS_TIPOLOG'
      Required = True
      Size = 1
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlTipoLog
    Left = 56
    Top = 8
  end
  object CdsTipoLog: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 96
    Top = 8
    object CdsTipoLogIDTIPOLOG: TIntegerField
      FieldName = 'IDTIPOLOG'
      Required = True
    end
    object CdsTipoLogDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      Required = True
      Size = 50
    end
    object CdsTipoLogSTATUS_TIPOLOG: TStringField
      FieldName = 'STATUS_TIPOLOG'
      Required = True
      Size = 1
    end
  end
  object DSTipoLog: TDataSource
    DataSet = CdsTipoLog
    Left = 136
    Top = 8
  end
end
