inherited FrmCadCaracVaga: TFrmCadCaracVaga
  Left = 279
  Top = 164
  Caption = 'Caracter'#237'sticas da Vaga'
  ClientHeight = 366
  ClientWidth = 695
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 695
    Caption = 'Caracter'#237'sticas da Vaga'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 347
    Width = 695
    inherited RzStatusPane2: TRzStatusPane
      Left = 550
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 405
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 277
    Width = 695
    inherited BtSair: TRzBitBtn
      Left = 600
      Width = 94
    end
  end
  inherited PanDados: TRzPanel
    Width = 695
    Height = 226
    inherited Paginas: TRzPageControl
      Width = 687
      Height = 218
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 40
          Top = 28
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
        object RzLabel1: TRzLabel
          Left = 40
          Top = 72
          Width = 53
          Height = 13
          Caption = 'C'#243'd. Vaga:'
        end
        object RzLabel2: TRzLabel
          Left = 40
          Top = 120
          Width = 72
          Height = 13
          Caption = '*C'#243'd. Curso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RzLabel3: TRzLabel
          Left = 120
          Top = 72
          Width = 94
          Height = 13
          Caption = 'Descri'#231#227'o da Vaga:'
        end
        object RzLabel4: TRzLabel
          Left = 120
          Top = 120
          Width = 96
          Height = 13
          Caption = 'Descri'#231#227'o do Curso:'
        end
        object DBdescVaga: TRzDBEdit
          Left = 120
          Top = 88
          Width = 513
          Height = 21
          DataSource = FrmCadVaga.DsVaga
          DataField = 'DESCRI_VAGA'
          ReadOnly = True
          Color = clSkyBlue
          ReadOnlyColor = clSkyBlue
          TabOrder = 0
        end
        object DBcodVaga: TRzDBButtonEdit
          Left = 40
          Top = 88
          Width = 73
          Height = 21
          DataSource = FrmCadVaga.DsRelacao
          DataField = 'IDVAGA'
          ReadOnly = True
          Color = clInfoBk
          FocusColor = clSkyBlue
          TabOrder = 1
          ButtonVisible = False
        end
        object DBcodCurso: TRzDBButtonEdit
          Left = 40
          Top = 136
          Width = 73
          Height = 21
          DataSource = FrmCadVaga.DsRelacao
          DataField = 'IDCURSO'
          TabOrder = 2
          ButtonVisible = False
        end
        object DBdescCurso: TRzDBEdit
          Left = 120
          Top = 136
          Width = 513
          Height = 21
          DataSource = FrmCadVaga.DsRelacao
          DataField = 'DESCRICAO_CUR'
          ReadOnly = True
          Color = clSkyBlue
          ReadOnlyColor = clSkyBlue
          TabOrder = 3
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 44
    Top = 116
  end
end
