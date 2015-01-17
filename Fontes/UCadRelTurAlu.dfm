inherited FRM_RelTurAlu: TFRM_RelTurAlu
  Left = 298
  Top = 126
  Caption = 'Turmas'
  ClientHeight = 383
  ClientWidth = 704
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanTitulo: TRzPanel
    Width = 704
    Caption = 'Turmas'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 364
    Width = 704
    inherited RzStatusPane2: TRzStatusPane
      Left = 559
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 414
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 294
    Width = 704
    inherited BtSair: TRzBitBtn
      Left = 596
      Top = 7
      Width = 109
      Height = 56
      Anchors = [akLeft, akTop, akBottom]
    end
  end
  inherited PanDados: TRzPanel
    Width = 704
    Height = 243
    inherited Paginas: TRzPageControl
      Width = 696
      Height = 235
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object RzLabel1: TRzLabel
          Left = 16
          Top = 56
          Width = 61
          Height = 13
          Caption = 'Nome Aluno:'
        end
        object RzLabel2: TRzLabel
          Left = 16
          Top = 96
          Width = 33
          Height = 13
          Caption = 'Turma:'
        end
        object Label2: TLabel
          Left = 16
          Top = 136
          Width = 22
          Height = 13
          Caption = 'Ano:'
        end
        object Label3: TLabel
          Left = 144
          Top = 136
          Width = 31
          Height = 13
          Caption = 'Turno:'
        end
        object Label4: TLabel
          Left = 16
          Top = 173
          Width = 25
          Height = 13
          Caption = 'Obs.:'
        end
        object DBNomeAlu: TRzDBEdit
          Left = 16
          Top = 72
          Width = 369
          Height = 21
          DataSource = F_Aluno.DSAlunos
          DataField = 'NOME_ALU'
          TabOrder = 0
        end
        object DBIDTurma: TRzDBButtonEdit
          Left = 16
          Top = 112
          Width = 69
          Height = 21
          DataSource = F_Aluno.DSRelTurmas
          DataField = 'IDTUR'
          TabOrder = 1
          AltBtnVisible = True
        end
        object DBTurma: TRzDBEdit
          Left = 88
          Top = 112
          Width = 297
          Height = 21
          DataSource = F_Aluno.DSRelTurmas
          DataField = 'NUM_TUR'
          DisabledColor = clSkyBlue
          Enabled = False
          TabOrder = 2
        end
        object DBAno: TRzDBEdit
          Left = 16
          Top = 152
          Width = 121
          Height = 21
          DataSource = F_Aluno.DSRelTurmas
          DataField = 'ANO_TUR'
          DisabledColor = clSkyBlue
          Enabled = False
          TabOrder = 3
        end
        object DBTurno: TRzDBEdit
          Left = 144
          Top = 152
          Width = 121
          Height = 21
          DataSource = F_Aluno.DSRelTurmas
          DataField = 'TURNO_TUR'
          DisabledColor = clSkyBlue
          Enabled = False
          TabOrder = 4
        end
        object DBObs: TRzDBEdit
          Left = 16
          Top = 190
          Width = 369
          Height = 21
          DataSource = F_Aluno.DSRelTurmas
          DataField = 'OBS_RELTURALU'
          TabOrder = 5
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Left = 20
    Top = 105
  end
end
