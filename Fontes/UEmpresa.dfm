inherited FrmEmpresa: TFrmEmpresa
  Left = 239
  Top = 141
  Caption = 'Empresa'
  ClientHeight = 578
  ClientWidth = 959
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 959
    Caption = 'Empresa'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 559
    Width = 959
    inherited RzStatusPane2: TRzStatusPane
      Left = 814
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 669
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 489
    Width = 959
    inherited BtBuscar: TRzBitBtn
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Width = 162
    end
  end
  inherited PanDados: TRzPanel
    Width = 959
    Height = 438
    inherited Paginas: TRzPageControl
      Width = 951
      Height = 430
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 92
          Height = 13
          Caption = 'C'#243'digo da Empresa'
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 157
          Height = 13
          Caption = '*Complemento de Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 112
          Width = 94
          Height = 13
          Caption = '*Nome Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 160
          Width = 85
          Height = 13
          Caption = '*Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 744
          Top = 112
          Width = 37
          Height = 13
          Caption = '*CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 744
          Top = 160
          Width = 111
          Height = 13
          Caption = '*Inscri'#231#227'o Estadual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 744
          Top = 256
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label8: TLabel
          Left = 16
          Top = 208
          Width = 18
          Height = 13
          Caption = 'Site'
        end
        object Label9: TLabel
          Left = 744
          Top = 208
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label10: TLabel
          Left = 16
          Top = 256
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object DBcompend: TRzDBEdit
          Left = 16
          Top = 80
          Width = 913
          Height = 21
          DataSource = DSempresa
          DataField = 'COMPEND_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 0
        end
        object DBnome: TRzDBEdit
          Left = 16
          Top = 128
          Width = 713
          Height = 21
          DataSource = DSempresa
          DataField = 'NOMEFAN_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 1
        end
        object DBrazaoSoc: TRzDBEdit
          Left = 16
          Top = 176
          Width = 713
          Height = 21
          DataSource = DSempresa
          DataField = 'RAZAOSOC_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 2
        end
        object DBsite: TRzDBEdit
          Left = 16
          Top = 224
          Width = 713
          Height = 21
          DataSource = DSempresa
          DataField = 'SITE_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 3
        end
        object DBemail: TRzDBEdit
          Left = 16
          Top = 272
          Width = 713
          Height = 21
          DataSource = DSempresa
          DataField = 'EMAIL_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 4
        end
        object DBcnpj: TRzDBEdit
          Left = 744
          Top = 128
          Width = 185
          Height = 21
          DataSource = DSempresa
          DataField = 'CNPJ_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 5
        end
        object DBinsc: TRzDBEdit
          Left = 744
          Top = 176
          Width = 185
          Height = 21
          DataSource = DSempresa
          DataField = 'INSCEST_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 6
        end
        object DBfax: TRzDBEdit
          Left = 744
          Top = 224
          Width = 185
          Height = 21
          DataSource = DSempresa
          DataField = 'FAX_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 7
        end
        object DBfone: TRzDBEdit
          Left = 744
          Top = 272
          Width = 185
          Height = 21
          DataSource = DSempresa
          DataField = 'FONE_EMP'
          FocusColor = clMoneyGreen
          TabOrder = 8
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 20
    Top = 105
    Width = 125
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SqlEmpresa: TSQLDataSet
    CommandText = 'SELECT '#13#10#13#10'*'#13#10#13#10'FROM EMPRESA'#13#10#13#10'WHERE EMPRESA.IDEMP = :PAREMP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PAREMP'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 8
  end
  object PROVIDER: TDataSetProvider
    DataSet = SqlEmpresa
    Left = 48
    Top = 8
  end
  object CdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 80
    Top = 8
    object CdsEmpresaIDEMP: TIntegerField
      FieldName = 'IDEMP'
      Required = True
    end
    object CdsEmpresaCOMPEND_EMP: TStringField
      FieldName = 'COMPEND_EMP'
      Size = 100
    end
    object CdsEmpresaNOMEFAN_EMP: TStringField
      FieldName = 'NOMEFAN_EMP'
      Required = True
      Size = 50
    end
    object CdsEmpresaRAZAOSOC_EMP: TStringField
      FieldName = 'RAZAOSOC_EMP'
      Required = True
      Size = 50
    end
    object CdsEmpresaCNPJ_EMP: TStringField
      FieldName = 'CNPJ_EMP'
      Required = True
      Size = 14
    end
    object CdsEmpresaINSCEST_EMP: TStringField
      FieldName = 'INSCEST_EMP'
      Required = True
      Size = 14
    end
    object CdsEmpresaFONE_EMP: TStringField
      FieldName = 'FONE_EMP'
      Size = 11
    end
    object CdsEmpresaSITE_EMP: TStringField
      FieldName = 'SITE_EMP'
      Size = 30
    end
    object CdsEmpresaFAX_EMP: TStringField
      FieldName = 'FAX_EMP'
      Size = 11
    end
    object CdsEmpresaEMAIL_EMP: TStringField
      FieldName = 'EMAIL_EMP'
      Size = 100
    end
    object CdsEmpresaSTATUS_EMP: TStringField
      FieldName = 'STATUS_EMP'
      Required = True
      Size = 1
    end
  end
  object DSempresa: TDataSource
    DataSet = CdsEmpresa
    Left = 112
    Top = 8
  end
end
