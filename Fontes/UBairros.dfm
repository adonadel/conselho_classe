inherited FrmBairros: TFrmBairros
  Left = 403
  Top = 199
  Caption = 'Cadastros de Bairros'
  ClientHeight = 422
  ClientWidth = 724
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 724
    Caption = 'Bairros'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 403
    Width = 724
    inherited RzStatusPane2: TRzStatusPane
      Left = 592
      Width = 132
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 447
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
      Width = 122
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
          Left = 32
          Top = 24
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
          Left = 32
          Top = 72
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
        object DBENomeBairr: TRzDBEdit
          Left = 32
          Top = 88
          Width = 641
          Height = 21
          DataSource = DSBai
          DataField = 'NOME_BAI'
          AutoSize = False
          FocusColor = clMoneyGreen
          TabOrder = 0
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 36
    Top = 113
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SqlBai: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'BAIRROS.IDBAI,'#13#10'BAIRROS.NOME_BAI,'#13#10'BAIRROS.STATUS_BAI'#13 +
      #10#13#10'FROM BAIRROS'#13#10#13#10'WHERE BAIRROS.IDBAI = :PARBAI'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARBAI'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 8
    object SqlBaiIDBAI: TIntegerField
      FieldName = 'IDBAI'
      Required = True
    end
    object SqlBaiNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object SqlBaiSTATUS_BAI: TStringField
      FieldName = 'STATUS_BAI'
      Required = True
      Size = 1
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlBai
    Left = 48
    Top = 8
  end
  object CdsBai: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 80
    Top = 8
    object CdsBaiIDBAI: TIntegerField
      FieldName = 'IDBAI'
      Required = True
    end
    object CdsBaiNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object CdsBaiSTATUS_BAI: TStringField
      FieldName = 'STATUS_BAI'
      Required = True
      Size = 1
    end
  end
  object DSBai: TDataSource
    DataSet = CdsBai
    Left = 120
    Top = 8
  end
end
