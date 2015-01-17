inherited FRM_CADDISCUR: TFRM_CADDISCUR
  Left = 519
  Top = 138
  Caption = 'FRM_CADDISCUR'
  ClientHeight = 463
  ClientWidth = 724
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 724
    Height = 89
    Caption = 'CADASTRO DE DISCIPLINAS NOS CURSOS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 444
    Width = 724
    inherited RzStatusPane2: TRzStatusPane
      Left = 579
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 434
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 374
    Width = 724
    inherited BtSair: TRzBitBtn
      Left = 598
      Top = 7
      Width = 118
      Height = 57
    end
  end
  inherited PanDados: TRzPanel
    Top = 89
    Width = 724
    Height = 285
    inherited Paginas: TRzPageControl
      Width = 716
      Height = 277
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 19
          Top = 65
          Width = 27
          Height = 13
          Caption = 'Curso'
        end
        object Label3: TLabel
          Left = 19
          Top = 113
          Width = 45
          Height = 13
          Caption = 'Disciplina'
        end
        object Label4: TLabel
          Left = 19
          Top = 162
          Width = 47
          Height = 13
          Caption = 'Ano/Faze'
        end
        object Label5: TLabel
          Left = 146
          Top = 162
          Width = 81
          Height = 13
          Caption = 'N'#250'mero de Aulas'
        end
        object Label6: TLabel
          Left = 275
          Top = 163
          Width = 29
          Height = 13
          Caption = 'Grade'
        end
        object Label7: TLabel
          Left = 19
          Top = 209
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object EditDis: TRzDBButtonEdit
          Left = 16
          Top = 128
          Width = 121
          Height = 21
          DataSource = FRM_CADCUR.DSdiscur
          DataField = 'IDDISC'
          TabOrder = 0
          AltBtnKind = bkFind
          AltBtnVisible = True
          ButtonVisible = False
          OnAltBtnClick = EditDisAltBtnClick
        end
        object Disciplinas: TRzDBEdit
          Left = 144
          Top = 128
          Width = 425
          Height = 21
          DataSource = FRM_CADCUR.DSdiscur
          DataField = 'DESCR_DISC'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 1
        end
        object EditAno: TRzDBEdit
          Left = 16
          Top = 176
          Width = 121
          Height = 21
          DataSource = FRM_CADCUR.DSdiscur
          DataField = 'ANOFASE_DISCUR'
          TabOrder = 2
        end
        object EditNum: TRzDBEdit
          Left = 144
          Top = 176
          Width = 121
          Height = 21
          DataSource = FRM_CADCUR.DSdiscur
          DataField = 'NUMAULAS_DISCUR'
          TabOrder = 3
        end
        object EditGrade: TRzDBEdit
          Left = 272
          Top = 176
          Width = 121
          Height = 21
          DataSource = FRM_CADCUR.DSdiscur
          DataField = 'TIPOSEMANU_DISCUR'
          TabOrder = 4
        end
        object EditObs: TRzDBEdit
          Left = 16
          Top = 224
          Width = 553
          Height = 21
          DataSource = FRM_CADCUR.DSdiscur
          DataField = 'OBS_DISCUR'
          TabOrder = 5
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 80
          Width = 264
          Height = 21
          DataField = 'DESCRICAO_CUR'
          DataSource = FRM_CADCUR.DScursos
          Enabled = False
          TabOrder = 6
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 21
    Top = 145
  end
end
