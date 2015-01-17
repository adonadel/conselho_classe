inherited FRM_Cadcargos: TFRM_Cadcargos
  Left = 541
  Top = 175
  Caption = 'FRM_Cadcargos'
  ClientHeight = 280
  ClientWidth = 731
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 731
    Caption = 'Cargos'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 261
    Width = 731
    inherited RzStatusPane2: TRzStatusPane
      Left = 586
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 441
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 191
    Width = 731
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 608
      Width = 105
    end
  end
  inherited PanDados: TRzPanel
    Width = 731
    Height = 140
    inherited Paginas: TRzPageControl
      Width = 723
      Height = 132
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object RzLabel1: TRzLabel
          Left = 8
          Top = 16
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object RzLabel2: TRzLabel
          Left = 8
          Top = 57
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object DBdescricargos: TRzDBEdit
          Left = 8
          Top = 72
          Width = 369
          Height = 21
          DataSource = DSCargos
          DataField = 'DESC_CAR'
          CharCase = ecUpperCase
          TabOrder = 0
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Top = 105
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SQLCargos: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'CARGOS.IDCAR,'#13#10'CARGOS.DESC_CAR,'#13#10'CARGOS.STATUS_CAR'#13#10#13#10 +
      'FROM CARGOS'#13#10'WHERE CARGOS.IDCAR = :PARCAR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARCAR'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 24
    Top = 8
    object SQLCargosIDCAR: TIntegerField
      FieldName = 'IDCAR'
      Required = True
    end
    object SQLCargosDESC_CAR: TStringField
      FieldName = 'DESC_CAR'
      Required = True
      Size = 30
    end
    object SQLCargosSTATUS_CAR: TStringField
      FieldName = 'STATUS_CAR'
      Required = True
      Size = 1
    end
  end
  object Provider: TDataSetProvider
    DataSet = SQLCargos
    Left = 64
    Top = 8
  end
  object CDSCargos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 104
    Top = 8
    object CDSCargosIDCAR: TIntegerField
      FieldName = 'IDCAR'
      Required = True
    end
    object CDSCargosDESC_CAR: TStringField
      FieldName = 'DESC_CAR'
      Required = True
      Size = 30
    end
    object CDSCargosSTATUS_CAR: TStringField
      FieldName = 'STATUS_CAR'
      Required = True
      Size = 1
    end
  end
  object DSCargos: TDataSource
    DataSet = CDSCargos
    Left = 144
    Top = 8
  end
end
