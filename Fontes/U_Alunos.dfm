inherited F_Aluno: TF_Aluno
  Left = 299
  Top = 125
  Caption = 'Cadastro de Alunos'
  ClientHeight = 483
  ClientWidth = 955
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel [0]
    Left = 714
    Top = 32
    Width = 212
    Height = 18
  end
  object Label51: TLabel [1]
    Left = 725
    Top = 34
    Width = 203
    Height = 13
    Caption = '<F5> Nova Turma          <F6> Editar Turma'
  end
  inherited PanTitulo: TRzPanel
    Width = 955
    Caption = 'Alunos'
  end
  inherited RzStatusBar1: TRzStatusBar
    Top = 464
    Width = 955
    inherited RzStatusPane2: TRzStatusPane
      Left = 810
    end
    inherited RzStatusPane3: TRzStatusPane
      Width = 665
    end
  end
  inherited PanBotoes: TRzPanel
    Top = 394
    Width = 955
    inherited BtCancelar: TRzBitBtn
      Hint = 'Cancelar opera'#231#227'o.'
      ParentShowHint = False
      ShowHint = True
    end
    inherited BtGravar: TRzBitBtn
      Hint = 'Gravar as altera'#231#245'es.'
      ParentShowHint = False
      ShowHint = True
    end
    inherited BtBuscar: TRzBitBtn
      Hint = 'Buscar um aluno.'
      ParentShowHint = False
      ShowHint = True
      OnClick = BtBuscarClick
    end
    inherited BtStatus: TRzBitBtn
      Hint = 'Alterar o status de um aluno.'
      ParentShowHint = False
      ShowHint = True
      OnClick = BtStatusClick
    end
    inherited BtSair: TRzBitBtn
      Width = 127
      Hint = 'Sair.'
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited PanDados: TRzPanel
    Width = 955
    Height = 343
    inherited Paginas: TRzPageControl
      Width = 947
      Height = 335
      ActivePage = TabSheet4
      ParentFont = False
      TabIndex = 3
      FixedDimension = 19
      inherited TabSheet1: TRzTabSheet
        Caption = 'Dados Pessoais'
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 152
          Top = 48
          Width = 42
          Height = 13
          Caption = '*Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 49
          Width = 48
          Height = 13
          Caption = 'Matr'#237'cula:'
        end
        object Label4: TLabel
          Left = 504
          Top = 48
          Width = 125
          Height = 13
          Caption = '*Data de Nascimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 648
          Top = 48
          Width = 38
          Height = 13
          Caption = '*Sexo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 88
          Width = 71
          Height = 13
          Caption = 'Nacionalidade:'
        end
        object Label7: TLabel
          Left = 152
          Top = 88
          Width = 33
          Height = 13
          Caption = '*CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 504
          Top = 128
          Width = 124
          Height = 13
          Caption = '*Data de Exp. do RG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 320
          Top = 88
          Width = 28
          Height = 13
          Caption = '*RG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 648
          Top = 88
          Width = 76
          Height = 13
          Caption = '*Cor da Pele:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 208
          Width = 34
          Height = 13
          Caption = '*CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 152
          Top = 208
          Width = 30
          Height = 13
          Caption = 'Bairro:'
        end
        object Label13: TLabel
          Left = 320
          Top = 208
          Width = 36
          Height = 13
          Caption = 'Cidade:'
        end
        object Label14: TLabel
          Left = 504
          Top = 208
          Width = 17
          Height = 13
          Caption = 'UF:'
        end
        object Label15: TLabel
          Left = 8
          Top = 248
          Width = 81
          Height = 13
          Caption = 'Tipo Logradouro:'
        end
        object Label16: TLabel
          Left = 152
          Top = 248
          Width = 57
          Height = 13
          Caption = 'Logradouro:'
        end
        object Label17: TLabel
          Left = 504
          Top = 248
          Width = 67
          Height = 13
          Caption = 'Complemento:'
        end
        object Label19: TLabel
          Left = 8
          Top = 128
          Width = 45
          Height = 13
          Caption = 'Telefone:'
        end
        object Label20: TLabel
          Left = 152
          Top = 128
          Width = 31
          Height = 13
          Caption = 'E-mail:'
        end
        object Label21: TLabel
          Left = 504
          Top = 88
          Width = 91
          Height = 13
          Caption = '*Expedi'#231#227'o RG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 8
          Top = 168
          Width = 61
          Height = 13
          Caption = 'J'#225' Estagiou?'
        end
        object Label23: TLabel
          Left = 648
          Top = 128
          Width = 79
          Height = 13
          Caption = 'Tipo de Sangue:'
        end
        object Label24: TLabel
          Left = 152
          Top = 168
          Width = 89
          Height = 13
          Caption = 'Tempo de Est'#225'gio:'
        end
        object Label25: TLabel
          Left = 320
          Top = 168
          Width = 84
          Height = 13
          Caption = 'Turno do Est'#225'gio:'
        end
        object Label26: TLabel
          Left = 504
          Top = 168
          Width = 152
          Height = 13
          Caption = 'Experi'#234'ncia com Computadores:'
        end
        object Label50: TLabel
          Left = 560
          Top = 208
          Width = 82
          Height = 13
          Caption = '*Naturalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBNomeAlu: TRzDBEdit
          Left = 152
          Top = 64
          Width = 345
          Height = 21
          DataSource = DSAlunos
          DataField = 'NOME_ALU'
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object DBMatricula: TRzDBEdit
          Left = 8
          Top = 64
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'MATRICULA_ALU'
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object DBSexo: TRzDBEdit
          Left = 648
          Top = 64
          Width = 121
          Height = 21
          DataSource = DSAlunos
          DataField = 'SEXO_ALU'
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object DBNacionalidade: TRzDBEdit
          Left = 8
          Top = 104
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'NACIO_ALU'
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object DBCpf: TRzDBEdit
          Left = 152
          Top = 104
          Width = 161
          Height = 21
          DataSource = DSAlunos
          DataField = 'CPF_ALU'
          CharCase = ecUpperCase
          MaxLength = 14
          TabOrder = 5
        end
        object DBRG: TRzDBEdit
          Left = 320
          Top = 104
          Width = 177
          Height = 21
          DataSource = DSAlunos
          DataField = 'RG_ALU'
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object DBCorPele: TRzDBEdit
          Left = 648
          Top = 104
          Width = 121
          Height = 21
          DataSource = DSAlunos
          DataField = 'CORPELE_ALU'
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object RzDBCEP: TRzDBButtonEdit
          Left = 8
          Top = 224
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'IDCEP'
          CharCase = ecUpperCase
          TabOrder = 17
          AltBtnKind = bkFind
          ButtonKind = bkAccept
          AltBtnVisible = True
        end
        object RzDBBairro: TRzDBEdit
          Left = 152
          Top = 224
          Width = 161
          Height = 21
          DataSource = DSAlunos
          DataField = 'NOME_BAI'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          Enabled = False
          TabOrder = 18
        end
        object RzDBCidade: TRzDBEdit
          Left = 320
          Top = 224
          Width = 177
          Height = 21
          DataSource = DSAlunos
          DataField = 'NOME_CID'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          Enabled = False
          TabOrder = 19
        end
        object DBTipoLog: TRzDBEdit
          Left = 8
          Top = 264
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'DESCRI_TIPOLOG'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          Enabled = False
          TabOrder = 23
        end
        object DBLogradouro: TRzDBEdit
          Left = 152
          Top = 264
          Width = 345
          Height = 21
          DataSource = DSAlunos
          DataField = 'LOGRA_CEP'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          Enabled = False
          TabOrder = 24
        end
        object DBComplemento: TRzDBEdit
          Left = 504
          Top = 264
          Width = 425
          Height = 21
          DataSource = DSAlunos
          DataField = 'COMPLEEND_ALU'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          TabOrder = 25
        end
        object DBJaEstagiou: TRzDBEdit
          Left = 8
          Top = 184
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'JA_ESTAGIOU_ALU'
          CharCase = ecUpperCase
          TabOrder = 13
        end
        object DBTempoEstagio: TRzDBEdit
          Left = 152
          Top = 184
          Width = 161
          Height = 21
          DataSource = DSAlunos
          DataField = 'TEMPO_ESTAGIO_ALU'
          CharCase = ecUpperCase
          TabOrder = 14
        end
        object DBTurnoEstagio: TRzDBEdit
          Left = 320
          Top = 184
          Width = 177
          Height = 21
          DataSource = DSAlunos
          DataField = 'TURNOESTAGIO_ALU'
          CharCase = ecUpperCase
          TabOrder = 15
        end
        object DBExpComp: TRzDBEdit
          Left = 504
          Top = 184
          Width = 265
          Height = 21
          DataSource = DSAlunos
          DataField = 'EXPCOMPUT_ALU'
          CharCase = ecUpperCase
          TabOrder = 16
        end
        object DBTipoSangue: TRzDBEdit
          Left = 648
          Top = 144
          Width = 121
          Height = 21
          DataSource = DSAlunos
          DataField = 'TIPOSANG_ALU'
          CharCase = ecUpperCase
          TabOrder = 12
        end
        object DBFoneAlu: TRzDBEdit
          Left = 8
          Top = 144
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'FONE_ALU'
          CharCase = ecUpperCase
          MaxLength = 17
          TabOrder = 9
        end
        object DBEmail: TRzDBEdit
          Left = 152
          Top = 144
          Width = 345
          Height = 21
          DataSource = DSAlunos
          DataField = 'EMAIL_ALU'
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object DBExpRG: TRzDBEdit
          Left = 504
          Top = 104
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'EXPRG_ALU'
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object FotoAluno: TDBImage
          Left = 776
          Top = 25
          Width = 153
          Height = 180
          Hint = 'Duplo clique para carregar uma foto do computador.'
          DataField = 'FOTO_ALU'
          DataSource = DSAlunos
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 26
          OnDblClick = FotoAlunoDblClick
        end
        object DBNatu: TRzDBEdit
          Left = 648
          Top = 224
          Width = 281
          Height = 21
          DataSource = DSAlunos
          DataField = 'NATURALIDADE'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          Enabled = False
          TabOrder = 22
        end
        object DBBtnNatu: TRzDBButtonEdit
          Left = 560
          Top = 224
          Width = 81
          Height = 21
          DataSource = DSAlunos
          DataField = 'IDCID'
          CharCase = ecUpperCase
          TabOrder = 21
          AltBtnKind = bkFind
          ButtonKind = bkAccept
          AltBtnVisible = True
        end
        object RzDBUF: TRzDBEdit
          Left = 504
          Top = 224
          Width = 49
          Height = 21
          DataSource = DSAlunos
          DataField = 'UF_CID'
          CharCase = ecUpperCase
          DisabledColor = clMoneyGreen
          Enabled = False
          TabOrder = 20
        end
        object DBDataNasc: TRzDBDateTimeEdit
          Left = 504
          Top = 64
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'DTNASC_ALU'
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = DBDataNascExit
          EditType = etDate
        end
        object DBDataExpRG: TRzDBDateTimeEdit
          Left = 504
          Top = 144
          Width = 137
          Height = 21
          DataSource = DSAlunos
          DataField = 'DTEXPRG_ALU'
          CharCase = ecUpperCase
          TabOrder = 11
          EditType = etDate
        end
      end
      object TabSheet3: TRzTabSheet
        Color = 13294508
        Caption = 'Dados Familiares'
        object Label18: TLabel
          Left = 8
          Top = 48
          Width = 82
          Height = 13
          Caption = '*Nome do Pai:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 8
          Top = 88
          Width = 88
          Height = 13
          Caption = '*Nome da M'#227'e:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 320
          Top = 48
          Width = 73
          Height = 13
          Caption = '*CPF do Pai:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 554
          Top = 48
          Width = 68
          Height = 13
          Caption = '*RG do Pai:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 722
          Top = 48
          Width = 122
          Height = 13
          Caption = 'Local de Trabalho do Pai:'
        end
        object Label31: TLabel
          Left = 320
          Top = 88
          Width = 79
          Height = 13
          Caption = '*CPF da M'#227'e:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 553
          Top = 88
          Width = 74
          Height = 13
          Caption = '*RG da M'#227'e:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 722
          Top = 88
          Width = 122
          Height = 13
          Caption = 'Local de Trabalho do Pai:'
        end
        object Label34: TLabel
          Left = 8
          Top = 128
          Width = 87
          Height = 13
          Caption = 'Conjuge do Aluno:'
        end
        object Label35: TLabel
          Left = 320
          Top = 168
          Width = 108
          Height = 13
          Caption = '*Num. de Pessoas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 432
          Top = 168
          Width = 120
          Height = 13
          Caption = '*Num. Pessoas Trab.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 8
          Top = 168
          Width = 67
          Height = 13
          Caption = 'Doen'#231'a Fam.:'
        end
        object Label38: TLabel
          Left = 576
          Top = 168
          Width = 105
          Height = 13
          Caption = '*Renda Percapita:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 320
          Top = 128
          Width = 146
          Height = 13
          Caption = 'Local de Trabalho da Conjuge:'
        end
        object Label40: TLabel
          Left = 552
          Top = 128
          Width = 68
          Height = 13
          Caption = 'Renda do Pai:'
        end
        object Label41: TLabel
          Left = 722
          Top = 128
          Width = 74
          Height = 13
          Caption = 'Renda da M'#227'e:'
        end
        object Label42: TLabel
          Left = 722
          Top = 168
          Width = 88
          Height = 13
          Caption = 'Renda Alternativa:'
        end
        object Label43: TLabel
          Left = 8
          Top = 208
          Width = 86
          Height = 13
          Caption = 'Zona Residencial:'
        end
        object Label44: TLabel
          Left = 200
          Top = 208
          Width = 120
          Height = 13
          Caption = '*Tipo de Resid'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 320
          Top = 208
          Width = 80
          Height = 13
          Caption = 'Valor do Aluguel:'
        end
        object Label46: TLabel
          Left = 432
          Top = 208
          Width = 67
          Height = 13
          Caption = 'Tipo de Carro:'
        end
        object Label47: TLabel
          Left = 632
          Top = 208
          Width = 65
          Height = 13
          Caption = 'Ano do Carro:'
        end
        object Label48: TLabel
          Left = 720
          Top = 208
          Width = 112
          Height = 13
          Caption = '*Est. Civil dos Pais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBNomePai: TRzDBEdit
          Left = 8
          Top = 64
          Width = 305
          Height = 21
          DataSource = DSAlunos
          DataField = 'PAI_ALU'
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object DBCpfPai: TRzDBEdit
          Left = 322
          Top = 64
          Width = 224
          Height = 21
          DataSource = DSAlunos
          DataField = 'CPFPAI_ALU'
          CharCase = ecUpperCase
          MaxLength = 14
          TabOrder = 1
        end
        object DBRgPai: TRzDBEdit
          Left = 552
          Top = 64
          Width = 162
          Height = 21
          DataSource = DSAlunos
          DataField = 'RGPAI_ALU'
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object DBLocTrabPai: TRzDBEdit
          Left = 722
          Top = 64
          Width = 209
          Height = 21
          DataSource = DSAlunos
          DataField = 'LOCTRABPAI_ALU'
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object DBNomeMae: TRzDBEdit
          Left = 8
          Top = 104
          Width = 305
          Height = 21
          DataSource = DSAlunos
          DataField = 'MAE_ALU'
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object DBCpfMae: TRzDBEdit
          Left = 322
          Top = 104
          Width = 224
          Height = 21
          DataSource = DSAlunos
          DataField = 'CPFMAE_ALU'
          CharCase = ecUpperCase
          MaxLength = 14
          TabOrder = 5
        end
        object DBRgMae: TRzDBEdit
          Left = 552
          Top = 104
          Width = 160
          Height = 21
          DataSource = DSAlunos
          DataField = 'RGMAE_ALU'
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object DBLocTrabMae: TRzDBEdit
          Left = 722
          Top = 104
          Width = 209
          Height = 21
          DataSource = DSAlunos
          DataField = 'LOCTRABMAE_ALU'
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object DBConjugeAlu: TRzDBEdit
          Left = 8
          Top = 144
          Width = 305
          Height = 21
          DataSource = DSAlunos
          DataField = 'CONJUGE_ALU'
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object DbLocTrabConju: TRzDBEdit
          Left = 322
          Top = 144
          Width = 224
          Height = 21
          DataSource = DSAlunos
          DataField = 'LOCTRABCONJ_ALU'
          CharCase = ecUpperCase
          TabOrder = 9
        end
        object DBRendaPai: TRzDBEdit
          Left = 552
          Top = 144
          Width = 160
          Height = 21
          DataSource = DSAlunos
          DataField = 'RENDAPAI_ALU'
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object DBRendaMae: TRzDBEdit
          Left = 722
          Top = 144
          Width = 209
          Height = 21
          DataSource = DSAlunos
          DataField = 'RENDAMAE_ALU'
          CharCase = ecUpperCase
          TabOrder = 11
        end
        object DBRendaPercapita: TRzDBEdit
          Left = 552
          Top = 184
          Width = 160
          Height = 21
          DataSource = DSAlunos
          DataField = 'RENDAPERCAPITA_ALU'
          CharCase = ecUpperCase
          TabOrder = 15
        end
        object DBRendaAlt: TRzDBEdit
          Left = 722
          Top = 184
          Width = 209
          Height = 21
          DataSource = DSAlunos
          DataField = 'RENDAALTERN_ALU'
          CharCase = ecUpperCase
          TabOrder = 16
        end
        object DBNumPes: TRzDBEdit
          Left = 320
          Top = 184
          Width = 105
          Height = 21
          DataSource = DSAlunos
          DataField = 'NUMPES_ALU'
          CharCase = ecUpperCase
          TabOrder = 13
        end
        object DBNumPesTrab: TRzDBEdit
          Left = 432
          Top = 184
          Width = 113
          Height = 21
          DataSource = DSAlunos
          DataField = 'NUMPESTRAB_ALU'
          CharCase = ecUpperCase
          TabOrder = 14
        end
        object DBDoencaFam: TRzDBEdit
          Left = 8
          Top = 184
          Width = 305
          Height = 21
          DataSource = DSAlunos
          DataField = 'DOENCAFAM_ALU'
          CharCase = ecUpperCase
          TabOrder = 12
        end
        object DBTipoResidencia: TRzDBEdit
          Left = 200
          Top = 224
          Width = 113
          Height = 21
          DataSource = DSAlunos
          DataField = 'TIPORESID_ALU'
          CharCase = ecUpperCase
          TabOrder = 18
        end
        object DBValorAlu: TRzDBEdit
          Left = 320
          Top = 224
          Width = 105
          Height = 21
          DataSource = DSAlunos
          DataField = 'VALALUG_ALU'
          CharCase = ecUpperCase
          TabOrder = 19
        end
        object DBZonaRes: TRzDBEdit
          Left = 8
          Top = 224
          Width = 185
          Height = 21
          DataSource = DSAlunos
          DataField = 'ZONARES_ALU'
          CharCase = ecUpperCase
          TabOrder = 17
        end
        object DBTipoCarro: TRzDBEdit
          Left = 432
          Top = 224
          Width = 193
          Height = 21
          DataSource = DSAlunos
          DataField = 'TIPOCARRO_ALU'
          CharCase = ecUpperCase
          TabOrder = 20
        end
        object DBAnoCarro: TRzDBEdit
          Left = 632
          Top = 224
          Width = 81
          Height = 21
          DataSource = DSAlunos
          DataField = 'ANOCARRO_ALU'
          CharCase = ecUpperCase
          TabOrder = 21
        end
        object DBEstCivil: TRzDBEdit
          Left = 720
          Top = 224
          Width = 209
          Height = 21
          DataSource = DSAlunos
          DataField = 'ESTCIVPAI_ALU'
          CharCase = ecUpperCase
          TabOrder = 22
        end
      end
      object TabSheet2: TRzTabSheet
        Color = 13294508
        Caption = 'Turmas'
        object Bevel1: TBevel
          Left = 834
          Top = 32
          Width = 93
          Height = 18
        end
        object Label49: TLabel
          Left = 837
          Top = 34
          Width = 87
          Height = 13
          Caption = '<F6> Editar Turma'
        end
        object Bevel3: TBevel
          Left = 733
          Top = 32
          Width = 94
          Height = 18
        end
        object Label52: TLabel
          Left = 735
          Top = 34
          Width = 89
          Height = 13
          Caption = '<F5> Nova Turma '
        end
        object DBGridTurmas: TRzDBGrid
          Left = 8
          Top = 56
          Width = 921
          Height = 249
          Hint = 'Turmas que o aluno est'#225' relacionado.'
          DataSource = DSRelTurmas
          DefaultDrawing = True
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGridTurmasKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUM_TUR'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TURNO_TUR'
              Title.Alignment = taCenter
              Title.Caption = 'Turno'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANO_TUR'
              Title.Alignment = taCenter
              Title.Caption = 'Ano'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_CUR'
              Title.Alignment = taCenter
              Title.Caption = 'Curso'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 162
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS_RELTURALU'
              Title.Alignment = taCenter
              Title.Caption = 'Observa'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 470
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS_RELTURALU'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end>
        end
      end
      object TabSheet4: TRzTabSheet
        Color = 13294508
        Caption = 'Conselhos'
        object RzDBGrid1: TRzDBGrid
          Left = 16
          Top = 56
          Width = 921
          Height = 249
          DataSource = DsConsAlu
          DefaultDrawing = True
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'COMENT_CONSALU'
              Title.Caption = 'Coment'#225'rios'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 219
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENCAM_CONSALU'
              Title.Caption = 'Encaminhamentos'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 226
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROBLE_CONSALU'
              Title.Caption = 'Problemas'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Width = 201
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_TUR'
              Title.Caption = 'Turma'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANO_TUR'
              Title.Caption = 'Ano'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_CONS'
              Title.Caption = 'Data'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS_CONSALU'
              Title.Caption = 'Status'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Times New Roman'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
  end
  inherited BuscaRapida: TRzButtonEdit
    Top = 97
    OnKeyDown = BuscaRapidaKeyDown
  end
  object SQLAlunos: TSQLDataSet
    ObjectView = True
    CommandText = 
      'SELECT'#13#10#13#10'ALUNOS.IDALU,'#13#10'ALUNOS.IDCEP,'#13#10'ALUNOS.NOME_ALU,'#13#10'ALUNOS' +
      '.MATRICULA_ALU,'#13#10'ALUNOS.COMPLEEND_ALU,'#13#10'ALUNOS.ZONARES_ALU,'#13#10'ALU' +
      'NOS.SEXO_ALU,'#13#10'ALUNOS.NACIO_ALU,'#13#10'ALUNOS.CPF_ALU,'#13#10'ALUNOS.FOTO_A' +
      'LU,'#13#10'ALUNOS.RG_ALU,'#13#10'ALUNOS.EXPRG_ALU,'#13#10'ALUNOS.DTNASC_ALU,'#13#10'ALUN' +
      'OS.DTEXPRG_ALU,'#13#10'ALUNOS.MAE_ALU,'#13#10'ALUNOS.CPFMAE_ALU,'#13#10'ALUNOS.RGM' +
      'AE_ALU,'#13#10'ALUNOS.LOCTRABMAE_ALU,'#13#10'ALUNOS.PAI_ALU,'#13#10'ALUNOS.CPFPAI_' +
      'ALU,'#13#10'ALUNOS.RGPAI_ALU,'#13#10'ALUNOS.LOCTRABPAI_ALU,'#13#10'ALUNOS.CONJUGE_' +
      'ALU,'#13#10'ALUNOS.LOCTRABCONJ_ALU,'#13#10'ALUNOS.FONE_ALU,'#13#10'ALUNOS.EMAIL_AL' +
      'U,'#13#10'ALUNOS.CORPELE_ALU,'#13#10'ALUNOS.RENDAPAI_ALU,'#13#10'ALUNOS.RENDAMAE_A' +
      'LU,'#13#10'ALUNOS.RENDAALTERN_ALU,'#13#10'ALUNOS.ESTCIVPAI_ALU,'#13#10'ALUNOS.NUMP' +
      'ES_ALU,'#13#10'ALUNOS.NUMPESTRAB_ALU,'#13#10'ALUNOS.TIPOSANG_ALU,'#13#10'ALUNOS.TI' +
      'PORESID_ALU,'#13#10'ALUNOS.VALALUG_ALU,'#13#10'ALUNOS.TIPOCARRO_ALU,'#13#10'ALUNOS' +
      '.ANOCARRO_ALU,'#13#10'ALUNOS.DOENCAFAM_ALU,'#13#10'ALUNOS.JA_ESTAGIOU_ALU,'#13#10 +
      'ALUNOS.TEMPO_ESTAGIO_ALU,'#13#10'ALUNOS.EXPCOMPUT_ALU,'#13#10'ALUNOS.TURNOES' +
      'TAGIO_ALU,'#13#10'ALUNOS.RENDAPERCAPITA_ALU,'#13#10'ALUNOS.STATUS_ALU,'#13#10'ALUN' +
      'OS.IDCID,'#13#10#13#10'CEPS.LOGRA_CEP,'#13#10'TIPOLOGRA.DESCRI_TIPOLOG,'#13#10'NATURAL' +
      'IDADE.NOME_CID   AS NATURALIDADE,'#13#10'CIDADES.NOME_CID,'#13#10'CIDADES.UF' +
      '_CID,'#13#10'BAIRROS.NOME_BAI'#13#10#13#10'FROM ALUNOS'#13#10#13#10'LEFT OUTER JOIN CEPS O' +
      'N (CEPS.IDCEP = ALUNOS.IDCEP)'#13#10'LEFT OUTER JOIN TIPOLOGRA ON (TIP' +
      'OLOGRA.IDTIPOLOG = CEPS.IDTIPOLOG)'#13#10'LEFT OUTER JOIN CIDADES ON (' +
      'CIDADES.IDCID = CEPS.IDCID)'#13#10'LEFT OUTER JOIN CIDADES AS NATURALI' +
      'DADE ON (NATURALIDADE.IDCID =ALUNOS.IDCID)'#13#10'LEFT OUTER JOIN BAIR' +
      'ROS ON (BAIRROS.IDBAI = CEPS.IDBAI)'#13#10#13#10'WHERE ALUNOS.IDALU = :PAR' +
      'ALU'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PARALU'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = DM.Conexao
    Left = 16
    Top = 8
    object SQLAlunosIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object SQLAlunosIDCEP: TStringField
      FieldName = 'IDCEP'
      Required = True
      OnValidate = SQLAlunosIDCEPValidate
      Size = 8
    end
    object SQLAlunosNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      Required = True
      Size = 50
    end
    object SQLAlunosMATRICULA_ALU: TStringField
      FieldName = 'MATRICULA_ALU'
      Size = 12
    end
    object SQLAlunosCOMPLEEND_ALU: TStringField
      FieldName = 'COMPLEEND_ALU'
      Size = 100
    end
    object SQLAlunosZONARES_ALU: TStringField
      FieldName = 'ZONARES_ALU'
      Size = 1
    end
    object SQLAlunosSEXO_ALU: TStringField
      FieldName = 'SEXO_ALU'
      Required = True
      Size = 1
    end
    object SQLAlunosNACIO_ALU: TStringField
      FieldName = 'NACIO_ALU'
      Size = 30
    end
    object SQLAlunosCPF_ALU: TStringField
      FieldName = 'CPF_ALU'
      Required = True
      Size = 15
    end
    object SQLAlunosRG_ALU: TStringField
      FieldName = 'RG_ALU'
      Required = True
      Size = 13
    end
    object SQLAlunosEXPRG_ALU: TStringField
      FieldName = 'EXPRG_ALU'
      Required = True
      Size = 6
    end
    object SQLAlunosDTNASC_ALU: TDateField
      FieldName = 'DTNASC_ALU'
      Required = True
    end
    object SQLAlunosDTEXPRG_ALU: TDateField
      FieldName = 'DTEXPRG_ALU'
      Required = True
    end
    object SQLAlunosMAE_ALU: TStringField
      FieldName = 'MAE_ALU'
      Required = True
      Size = 50
    end
    object SQLAlunosCPFMAE_ALU: TStringField
      FieldName = 'CPFMAE_ALU'
      Required = True
      Size = 11
    end
    object SQLAlunosRGMAE_ALU: TStringField
      FieldName = 'RGMAE_ALU'
      Required = True
      Size = 15
    end
    object SQLAlunosLOCTRABMAE_ALU: TStringField
      FieldName = 'LOCTRABMAE_ALU'
      Size = 50
    end
    object SQLAlunosPAI_ALU: TStringField
      FieldName = 'PAI_ALU'
      Required = True
      Size = 50
    end
    object SQLAlunosCPFPAI_ALU: TStringField
      FieldName = 'CPFPAI_ALU'
      Required = True
      Size = 11
    end
    object SQLAlunosRGPAI_ALU: TStringField
      FieldName = 'RGPAI_ALU'
      Required = True
      Size = 15
    end
    object SQLAlunosLOCTRABPAI_ALU: TStringField
      FieldName = 'LOCTRABPAI_ALU'
      Size = 50
    end
    object SQLAlunosCONJUGE_ALU: TStringField
      FieldName = 'CONJUGE_ALU'
      Size = 50
    end
    object SQLAlunosLOCTRABCONJ_ALU: TStringField
      FieldName = 'LOCTRABCONJ_ALU'
      Size = 50
    end
    object SQLAlunosFONE_ALU: TStringField
      FieldName = 'FONE_ALU'
      Size = 10
    end
    object SQLAlunosEMAIL_ALU: TStringField
      FieldName = 'EMAIL_ALU'
      Size = 50
    end
    object SQLAlunosCORPELE_ALU: TStringField
      FieldName = 'CORPELE_ALU'
      Required = True
      Size = 30
    end
    object SQLAlunosRENDAPAI_ALU: TFMTBCDField
      FieldName = 'RENDAPAI_ALU'
      Precision = 15
      Size = 2
    end
    object SQLAlunosRENDAMAE_ALU: TFMTBCDField
      FieldName = 'RENDAMAE_ALU'
      Precision = 15
      Size = 2
    end
    object SQLAlunosRENDAALTERN_ALU: TFMTBCDField
      FieldName = 'RENDAALTERN_ALU'
      Precision = 15
      Size = 2
    end
    object SQLAlunosESTCIVPAI_ALU: TStringField
      FieldName = 'ESTCIVPAI_ALU'
      Required = True
      Size = 30
    end
    object SQLAlunosNUMPES_ALU: TIntegerField
      FieldName = 'NUMPES_ALU'
      Required = True
    end
    object SQLAlunosNUMPESTRAB_ALU: TIntegerField
      FieldName = 'NUMPESTRAB_ALU'
      Required = True
    end
    object SQLAlunosTIPOSANG_ALU: TStringField
      FieldName = 'TIPOSANG_ALU'
      Size = 2
    end
    object SQLAlunosTIPORESID_ALU: TStringField
      FieldName = 'TIPORESID_ALU'
      Required = True
      Size = 1
    end
    object SQLAlunosVALALUG_ALU: TFMTBCDField
      FieldName = 'VALALUG_ALU'
      Precision = 15
      Size = 2
    end
    object SQLAlunosTIPOCARRO_ALU: TStringField
      FieldName = 'TIPOCARRO_ALU'
      Size = 30
    end
    object SQLAlunosANOCARRO_ALU: TIntegerField
      FieldName = 'ANOCARRO_ALU'
    end
    object SQLAlunosDOENCAFAM_ALU: TStringField
      FieldName = 'DOENCAFAM_ALU'
      FixedChar = True
      Size = 1
    end
    object SQLAlunosJA_ESTAGIOU_ALU: TStringField
      FieldName = 'JA_ESTAGIOU_ALU'
      FixedChar = True
      Size = 1
    end
    object SQLAlunosTEMPO_ESTAGIO_ALU: TStringField
      FieldName = 'TEMPO_ESTAGIO_ALU'
      Size = 15
    end
    object SQLAlunosEXPCOMPUT_ALU: TStringField
      FieldName = 'EXPCOMPUT_ALU'
      Size = 1
    end
    object SQLAlunosTURNOESTAGIO_ALU: TStringField
      FieldName = 'TURNOESTAGIO_ALU'
      Size = 1
    end
    object SQLAlunosRENDAPERCAPITA_ALU: TFMTBCDField
      FieldName = 'RENDAPERCAPITA_ALU'
      Required = True
      Precision = 15
      Size = 2
    end
    object SQLAlunosSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      Required = True
      Size = 1
    end
    object SQLAlunosLOGRA_CEP: TStringField
      FieldName = 'LOGRA_CEP'
      ProviderFlags = []
      Size = 100
    end
    object SQLAlunosDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      ProviderFlags = []
      Size = 50
    end
    object SQLAlunosNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Size = 50
    end
    object SQLAlunosUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLAlunosNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Size = 30
    end
    object SQLAlunosFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      Size = 1
    end
    object SQLAlunosIDCID: TIntegerField
      FieldName = 'IDCID'
      Required = True
    end
    object SQLAlunosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = []
      Size = 50
    end
  end
  object Provider: TDataSetProvider
    DataSet = SQLAlunos
    Left = 72
    Top = 8
  end
  object CDSAlunos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 136
    Top = 8
    object CDSAlunosIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object CDSAlunosIDCEP: TStringField
      FieldName = 'IDCEP'
      Required = True
      OnValidate = CDSAlunosIDCEPValidate
      Size = 8
    end
    object CDSAlunosNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      Required = True
      Size = 50
    end
    object CDSAlunosMATRICULA_ALU: TStringField
      FieldName = 'MATRICULA_ALU'
      Size = 12
    end
    object CDSAlunosCOMPLEEND_ALU: TStringField
      FieldName = 'COMPLEEND_ALU'
      Size = 100
    end
    object CDSAlunosZONARES_ALU: TStringField
      FieldName = 'ZONARES_ALU'
      Size = 1
    end
    object CDSAlunosSEXO_ALU: TStringField
      FieldName = 'SEXO_ALU'
      Required = True
      Size = 1
    end
    object CDSAlunosNACIO_ALU: TStringField
      FieldName = 'NACIO_ALU'
      Size = 30
    end
    object CDSAlunosCPF_ALU: TStringField
      FieldName = 'CPF_ALU'
      Required = True
      EditMask = '999\.999\.999\-99;0;_'
      Size = 15
    end
    object CDSAlunosRG_ALU: TStringField
      FieldName = 'RG_ALU'
      Required = True
      Size = 13
    end
    object CDSAlunosEXPRG_ALU: TStringField
      FieldName = 'EXPRG_ALU'
      Required = True
      Size = 6
    end
    object CDSAlunosDTNASC_ALU: TDateField
      FieldName = 'DTNASC_ALU'
      Required = True
      EditMask = '99\/99\/9999;1;_'
    end
    object CDSAlunosDTEXPRG_ALU: TDateField
      FieldName = 'DTEXPRG_ALU'
      Required = True
      EditMask = '99\/99\/9999;1;_'
    end
    object CDSAlunosMAE_ALU: TStringField
      FieldName = 'MAE_ALU'
      Required = True
      Size = 50
    end
    object CDSAlunosCPFMAE_ALU: TStringField
      FieldName = 'CPFMAE_ALU'
      Required = True
      EditMask = '999\.999\.999\-99;0;_'
      Size = 11
    end
    object CDSAlunosRGMAE_ALU: TStringField
      FieldName = 'RGMAE_ALU'
      Required = True
      Size = 15
    end
    object CDSAlunosLOCTRABMAE_ALU: TStringField
      FieldName = 'LOCTRABMAE_ALU'
      Size = 50
    end
    object CDSAlunosPAI_ALU: TStringField
      FieldName = 'PAI_ALU'
      Required = True
      Size = 50
    end
    object CDSAlunosCPFPAI_ALU: TStringField
      FieldName = 'CPFPAI_ALU'
      Required = True
      EditMask = '999\.999\.999\-99;0;_'
      Size = 11
    end
    object CDSAlunosRGPAI_ALU: TStringField
      FieldName = 'RGPAI_ALU'
      Required = True
      Size = 15
    end
    object CDSAlunosLOCTRABPAI_ALU: TStringField
      FieldName = 'LOCTRABPAI_ALU'
      Size = 50
    end
    object CDSAlunosCONJUGE_ALU: TStringField
      FieldName = 'CONJUGE_ALU'
      Size = 50
    end
    object CDSAlunosLOCTRABCONJ_ALU: TStringField
      FieldName = 'LOCTRABCONJ_ALU'
      Size = 50
    end
    object CDSAlunosFONE_ALU: TStringField
      FieldName = 'FONE_ALU'
      EditMask = '\(9\x\x99\)99999\-9999;0;_'
      Size = 10
    end
    object CDSAlunosEMAIL_ALU: TStringField
      FieldName = 'EMAIL_ALU'
      Size = 50
    end
    object CDSAlunosCORPELE_ALU: TStringField
      FieldName = 'CORPELE_ALU'
      Required = True
      Size = 30
    end
    object CDSAlunosRENDAPAI_ALU: TFMTBCDField
      FieldName = 'RENDAPAI_ALU'
      Precision = 15
      Size = 2
    end
    object CDSAlunosRENDAMAE_ALU: TFMTBCDField
      FieldName = 'RENDAMAE_ALU'
      Precision = 15
      Size = 2
    end
    object CDSAlunosRENDAALTERN_ALU: TFMTBCDField
      FieldName = 'RENDAALTERN_ALU'
      Precision = 15
      Size = 2
    end
    object CDSAlunosESTCIVPAI_ALU: TStringField
      FieldName = 'ESTCIVPAI_ALU'
      Required = True
      Size = 30
    end
    object CDSAlunosNUMPES_ALU: TIntegerField
      FieldName = 'NUMPES_ALU'
      Required = True
    end
    object CDSAlunosNUMPESTRAB_ALU: TIntegerField
      FieldName = 'NUMPESTRAB_ALU'
      Required = True
    end
    object CDSAlunosTIPOSANG_ALU: TStringField
      FieldName = 'TIPOSANG_ALU'
      Size = 2
    end
    object CDSAlunosTIPORESID_ALU: TStringField
      FieldName = 'TIPORESID_ALU'
      Required = True
      Size = 1
    end
    object CDSAlunosVALALUG_ALU: TFMTBCDField
      FieldName = 'VALALUG_ALU'
      Precision = 15
      Size = 2
    end
    object CDSAlunosTIPOCARRO_ALU: TStringField
      FieldName = 'TIPOCARRO_ALU'
      Size = 30
    end
    object CDSAlunosANOCARRO_ALU: TIntegerField
      FieldName = 'ANOCARRO_ALU'
    end
    object CDSAlunosDOENCAFAM_ALU: TStringField
      FieldName = 'DOENCAFAM_ALU'
      FixedChar = True
      Size = 1
    end
    object CDSAlunosJA_ESTAGIOU_ALU: TStringField
      FieldName = 'JA_ESTAGIOU_ALU'
      FixedChar = True
      Size = 1
    end
    object CDSAlunosTEMPO_ESTAGIO_ALU: TStringField
      FieldName = 'TEMPO_ESTAGIO_ALU'
      Size = 15
    end
    object CDSAlunosEXPCOMPUT_ALU: TStringField
      FieldName = 'EXPCOMPUT_ALU'
      Size = 1
    end
    object CDSAlunosTURNOESTAGIO_ALU: TStringField
      FieldName = 'TURNOESTAGIO_ALU'
      Size = 1
    end
    object CDSAlunosRENDAPERCAPITA_ALU: TFMTBCDField
      FieldName = 'RENDAPERCAPITA_ALU'
      Required = True
      Precision = 15
      Size = 2
    end
    object CDSAlunosSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      Required = True
      Size = 1
    end
    object CDSAlunosLOGRA_CEP: TStringField
      FieldName = 'LOGRA_CEP'
      ProviderFlags = []
      Size = 100
    end
    object CDSAlunosDESCRI_TIPOLOG: TStringField
      FieldName = 'DESCRI_TIPOLOG'
      ProviderFlags = []
      Size = 50
    end
    object CDSAlunosNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Size = 50
    end
    object CDSAlunosUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSAlunosNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Size = 30
    end
    object CDSAlunosFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      Size = 1
    end
    object CDSAlunosSQLRelTurmas: TDataSetField
      FieldName = 'SQLRelTurmas'
    end
    object CDSAlunosIDCID: TIntegerField
      FieldName = 'IDCID'
      Required = True
      OnValidate = CDSAlunosIDCIDValidate
    end
    object CDSAlunosNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = []
      Size = 50
    end
    object CDSAlunosSqlConsAlu: TDataSetField
      FieldName = 'SqlConsAlu'
    end
  end
  object DSAlunos: TDataSource
    DataSet = CDSAlunos
    Left = 200
    Top = 8
  end
  object OpenPicDialog: TOpenPictureDialog
    Left = 269
    Top = 11
  end
  object CDSRelTurmas: TClientDataSet
    Aggregates = <>
    DataSetField = CDSAlunosSQLRelTurmas
    Params = <>
    Left = 688
    Top = 11
    object CDSRelTurmasIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object CDSRelTurmasIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
      OnValidate = CDSRelTurmasIDTURValidate
    end
    object CDSRelTurmasOBS_RELTURALU: TStringField
      FieldName = 'OBS_RELTURALU'
      Size = 200
    end
    object CDSRelTurmasSTATUS_RELTURALU: TStringField
      FieldName = 'STATUS_RELTURALU'
      Required = True
      Size = 1
    end
    object CDSRelTurmasIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      ProviderFlags = []
    end
    object CDSRelTurmasNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
    object CDSRelTurmasTURNO_TUR: TStringField
      FieldName = 'TURNO_TUR'
      ProviderFlags = []
      Size = 1
    end
    object CDSRelTurmasANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
      ProviderFlags = []
    end
    object CDSRelTurmasSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      ProviderFlags = []
      Size = 1
    end
    object CDSRelTurmasDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
    object CDSRelTurmasSTATUS_CUR: TStringField
      FieldName = 'STATUS_CUR'
      ProviderFlags = []
      Size = 1
    end
    object CDSRelTurmasIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      Required = True
    end
    object CDSRelTurmasDATA_RELTURALU: TDateField
      FieldName = 'DATA_RELTURALU'
    end
    object CDSRelTurmasHORA_RELTURALU: TTimeField
      FieldName = 'HORA_RELTURALU'
    end
  end
  object DSRelTurmas: TDataSource
    DataSet = CDSRelTurmas
    Left = 765
    Top = 11
  end
  object DSLiga: TDataSource
    DataSet = SQLAlunos
    Left = 437
    Top = 51
  end
  object SQLRelTurmas: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'RELTURALU.IDRELTURALU,'#13#10'RELTURALU.IDALU,'#13#10'RELTURALU.ID' +
      'TUR,'#13#10'RELTURALU.DATA_RELTURALU,'#13#10'RELTURALU.HORA_RELTURALU,'#13#10'RELT' +
      'URALU.OBS_RELTURALU,'#13#10'RELTURALU.STATUS_RELTURALU,'#13#10#13#10'TURMAS.IDCU' +
      'RSO,'#13#10'TURMAS.NUM_TUR,'#13#10'TURMAS.TURNO_TUR,'#13#10'TURMAS.ANO_TUR,'#13#10'TURMA' +
      'S.STATUS_TUR,'#13#10#13#10'CURSOS.DESCRICAO_CUR,'#13#10'CURSOS.STATUS_CUR'#13#10#13#10'FRO' +
      'M RELTURALU'#13#10#13#10'LEFT OUTER JOIN TURMAS ON  (TURMAS.IDTUR = RELTUR' +
      'ALU.IDTUR)'#13#10'LEFT OUTER JOIN CURSOS ON  (CURSOS.IDCURSO = TURMAS.' +
      'IDCURSO)'#13#10#13#10'WHERE RELTURALU.IDALU = :IDALU'
    DataSource = DSLiga
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDALU'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DM.Conexao
    Left = 605
    Top = 11
    object SQLRelTurmasIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object SQLRelTurmasIDTUR: TIntegerField
      FieldName = 'IDTUR'
      Required = True
    end
    object SQLRelTurmasOBS_RELTURALU: TStringField
      FieldName = 'OBS_RELTURALU'
      Size = 200
    end
    object SQLRelTurmasSTATUS_RELTURALU: TStringField
      FieldName = 'STATUS_RELTURALU'
      Required = True
      Size = 1
    end
    object SQLRelTurmasIDCURSO: TIntegerField
      FieldName = 'IDCURSO'
      ProviderFlags = []
    end
    object SQLRelTurmasNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      ProviderFlags = []
      Size = 10
    end
    object SQLRelTurmasTURNO_TUR: TStringField
      FieldName = 'TURNO_TUR'
      ProviderFlags = []
      Size = 1
    end
    object SQLRelTurmasANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
      ProviderFlags = []
    end
    object SQLRelTurmasSTATUS_TUR: TStringField
      FieldName = 'STATUS_TUR'
      ProviderFlags = []
      Size = 1
    end
    object SQLRelTurmasDESCRICAO_CUR: TStringField
      FieldName = 'DESCRICAO_CUR'
      ProviderFlags = []
    end
    object SQLRelTurmasSTATUS_CUR: TStringField
      FieldName = 'STATUS_CUR'
      ProviderFlags = []
      Size = 1
    end
    object SQLRelTurmasIDRELTURALU: TIntegerField
      FieldName = 'IDRELTURALU'
      Required = True
    end
    object SQLRelTurmasDATA_RELTURALU: TDateField
      FieldName = 'DATA_RELTURALU'
    end
    object SQLRelTurmasHORA_RELTURALU: TTimeField
      FieldName = 'HORA_RELTURALU'
    end
  end
  object SqlConsAlu: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'CONSALU.IDCONSALU,'#13#10'CONSALU.IDALU,'#13#10'CONSALU.IDCONS,'#13#10'C' +
      'ONSALU.COMENT_CONSALU,'#13#10'CONSALU.ENCAM_CONSALU,'#13#10'CONSALU.PROBLE_C' +
      'ONSALU,'#13#10'CONSALU.STATUS_CONSALU,'#13#10#13#10'ALUNOS.NOME_ALU,'#13#10'ALUNOS.FOT' +
      'O_ALU,'#13#10'ALUNOS.STATUS_ALU,'#13#10#13#10'TURMAS.NUM_TUR,'#13#10'TURMAS.ANO_TUR,'#13#10 +
      #13#10'CONSELHO.DATA_CONS'#13#10#13#10'FROM CONSALU'#13#10#13#10'LEFT OUTER JOIN ALUNOS O' +
      'N (ALUNOS.IDALU = CONSALU.IDALU)'#13#10'LEFT OUTER JOIN CONSELHO ON (C' +
      'ONSELHO.IDCONS = CONSALU.IDCONS)'#13#10'LEFT OUTER JOIN TURMAS ON (TUR' +
      'MAS.IDTUR = CONSELHO.IDTUR)'#13#10#13#10#13#10'WHERE CONSALU.IDALU = :IDALU'
    DataSource = DSLiga
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDALU'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = DM.Conexao
    Left = 600
    Top = 56
    object SqlConsAluIDCONSALU: TIntegerField
      FieldName = 'IDCONSALU'
      Required = True
    end
    object SqlConsAluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object SqlConsAluIDCONS: TIntegerField
      FieldName = 'IDCONS'
      Required = True
    end
    object SqlConsAluCOMENT_CONSALU: TStringField
      FieldName = 'COMENT_CONSALU'
      Size = 300
    end
    object SqlConsAluENCAM_CONSALU: TStringField
      FieldName = 'ENCAM_CONSALU'
      Size = 300
    end
    object SqlConsAluPROBLE_CONSALU: TStringField
      FieldName = 'PROBLE_CONSALU'
      Size = 300
    end
    object SqlConsAluSTATUS_CONSALU: TStringField
      FieldName = 'STATUS_CONSALU'
      Required = True
      Size = 1
    end
    object SqlConsAluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      Size = 50
    end
    object SqlConsAluFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      Size = 1
    end
    object SqlConsAluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      Size = 1
    end
    object SqlConsAluNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      Size = 10
    end
    object SqlConsAluANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
    end
    object SqlConsAluDATA_CONS: TDateField
      FieldName = 'DATA_CONS'
    end
  end
  object CdsConsAlu: TClientDataSet
    Aggregates = <>
    DataSetField = CDSAlunosSqlConsAlu
    Params = <>
    Left = 688
    Top = 56
    object CdsConsAluIDCONSALU: TIntegerField
      FieldName = 'IDCONSALU'
      Required = True
    end
    object CdsConsAluIDALU: TIntegerField
      FieldName = 'IDALU'
      Required = True
    end
    object CdsConsAluIDCONS: TIntegerField
      FieldName = 'IDCONS'
      Required = True
    end
    object CdsConsAluCOMENT_CONSALU: TStringField
      FieldName = 'COMENT_CONSALU'
      Size = 300
    end
    object CdsConsAluENCAM_CONSALU: TStringField
      FieldName = 'ENCAM_CONSALU'
      Size = 300
    end
    object CdsConsAluPROBLE_CONSALU: TStringField
      FieldName = 'PROBLE_CONSALU'
      Size = 300
    end
    object CdsConsAluSTATUS_CONSALU: TStringField
      FieldName = 'STATUS_CONSALU'
      Required = True
      Size = 1
    end
    object CdsConsAluNOME_ALU: TStringField
      FieldName = 'NOME_ALU'
      Size = 50
    end
    object CdsConsAluFOTO_ALU: TBlobField
      FieldName = 'FOTO_ALU'
      Size = 1
    end
    object CdsConsAluSTATUS_ALU: TStringField
      FieldName = 'STATUS_ALU'
      Size = 1
    end
    object CdsConsAluNUM_TUR: TStringField
      FieldName = 'NUM_TUR'
      Size = 10
    end
    object CdsConsAluANO_TUR: TIntegerField
      FieldName = 'ANO_TUR'
    end
    object CdsConsAluDATA_CONS: TDateField
      FieldName = 'DATA_CONS'
    end
  end
  object DsConsAlu: TDataSource
    DataSet = CdsConsAlu
    Left = 768
    Top = 56
  end
end
