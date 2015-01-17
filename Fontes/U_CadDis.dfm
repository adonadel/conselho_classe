inherited FRM_CADDIS: TFRM_CADDIS
  Caption = 'Cadastro de Disciplinas'
  ClientHeight = 291
  ClientWidth = 729
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 729
    Caption = 'DISCIPLINAS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 272
    Width = 729
    TabOrder = 4
    inherited RzStatusPane2: TRzStatusPane
      Left = 584
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 439
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 202
    Width = 729
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Left = 600
      Top = 7
      Width = 113
    end
  end
  inherited PanDados: TRzPanel
    Width = 729
    Height = 151
    inherited Paginas: TRzPageControl
      Width = 721
      Height = 143
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 17
          Top = 19
          Width = 42
          Height = 13
          Caption = 'C'#211'DIGO'
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 62
          Height = 13
          Caption = 'DESCRI'#199#195'O'
        end
        object EditDes: TRzDBEdit
          Left = 16
          Top = 80
          Width = 449
          Height = 21
          DataSource = DataSource1
          DataField = 'DESCR_DISC'
          TabOrder = 0
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 20
    Top = 112
    TabOrder = 1
    OnKeyDown = BuscaRapidaKeyDown
  end
  object CDSdis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 104
    Top = 8
    object CDSdisIDDISC: TIntegerField
      FieldName = 'IDDISC'
      Required = True
    end
    object CDSdisDESCR_DISC: TStringField
      FieldName = 'DESCR_DISC'
      Size = 50
    end
    object CDSdisSTATUS_DISC: TStringField
      FieldName = 'STATUS_DISC'
      Required = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLdis
    Left = 64
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = CDSdis
    Left = 152
    Top = 8
  end
  object SQLdis: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10' DISCIPLINAS.IDDISC,'#13#10' DISCIPLINAS.DESCR_DISC,'#13#10' DISCI' +
      'PLINAS.STATUS_DISC'#13#10#13#10'FROM DISCIPLINAS'#13#10#13#10'WHERE DISCIPLINAS.IDDI' +
      'SC = :PARDIS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARDIS'
        ParamType = ptInput
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 8
    object SQLdisIDDISC: TIntegerField
      FieldName = 'IDDISC'
      Required = True
    end
    object SQLdisDESCR_DISC: TStringField
      FieldName = 'DESCR_DISC'
      Size = 50
    end
    object SQLdisSTATUS_DISC: TStringField
      FieldName = 'STATUS_DISC'
      Required = True
      Size = 1
    end
  end
end
