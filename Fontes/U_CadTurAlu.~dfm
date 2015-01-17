inherited FRM_CADTURALU: TFRM_CADTURALU
  Caption = 'FRM_CADTURALU'
  ClientHeight = 379
  ClientWidth = 733
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 733
    Caption = 'CADASTRO DE ALUNOS NAS TURMAS'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 360
    Width = 733
    inherited RzStatusPane2: TRzStatusPane
      Left = 588
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 443
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 290
    Width = 733
    inherited BtSair: TRzBitBtn
      Left = 597
      Top = 7
      Width = 126
      Height = 56
    end
  end
  inherited PanDados: TRzPanel
    Width = 733
    Height = 239
    inherited Paginas: TRzPageControl
      Width = 725
      Height = 231
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 11
          Top = 15
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 11
          Top = 65
          Width = 30
          Height = 13
          Caption = 'Turma'
        end
        object Label3: TLabel
          Left = 138
          Top = 65
          Width = 27
          Height = 13
          Caption = 'Aluno'
        end
        object Label4: TLabel
          Left = 11
          Top = 113
          Width = 23
          Height = 13
          Caption = 'Data'
        end
        object Label5: TLabel
          Left = 139
          Top = 113
          Width = 23
          Height = 13
          Caption = 'Hora'
        end
        object Label6: TLabel
          Left = 11
          Top = 162
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object EditTur: TRzDBEdit
          Left = 8
          Top = 80
          Width = 121
          Height = 21
          DataSource = FRM_CADTUR.DStur
          DataField = 'NUM_TUR'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 0
        end
        object EditAlu: TRzDBButtonEdit
          Left = 136
          Top = 80
          Width = 121
          Height = 21
          DataSource = FRM_CADTUR.Dsturalu
          DataField = 'IDALU'
          Alignment = taRightJustify
          TabOrder = 1
          AltBtnKind = bkFind
          ButtonKind = bkFolder
          AltBtnVisible = True
          ButtonVisible = False
          OnAltBtnClick = EditAluAltBtnClick
          OnButtonClick = EditAluButtonClick
        end
        object Alunos: TRzDBEdit
          Left = 264
          Top = 80
          Width = 353
          Height = 21
          DataSource = FRM_CADTUR.Dsturalu
          DataField = 'NOME_ALU'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 2
        end
        object EditData: TRzDBEdit
          Left = 8
          Top = 128
          Width = 121
          Height = 21
          DataSource = FRM_CADTUR.Dsturalu
          DataField = 'DATA_RELTURALU'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 3
        end
        object EditHora: TRzDBEdit
          Left = 136
          Top = 128
          Width = 121
          Height = 21
          DataSource = FRM_CADTUR.Dsturalu
          DataField = 'HORA_RELTURALU'
          DisabledColor = clSilver
          Enabled = False
          TabOrder = 4
        end
        object EditObs: TRzDBEdit
          Left = 8
          Top = 176
          Width = 609
          Height = 21
          DataSource = FRM_CADTUR.Dsturalu
          DataField = 'OBS_RELTURALU'
          TabOrder = 5
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 13
    Top = 105
  end
end
