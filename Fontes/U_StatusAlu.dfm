inherited F_StatusAlu: TF_StatusAlu
  Caption = 'Status alunos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Status: TStatusBar
    Panels = <
      item
        Width = 100
      end
      item
        Width = 400
      end
      item
        Width = 50
      end>
  end
  inherited PNLFILTRO: TRzPanel
    inherited GrupoFiltro: TRzCheckGroup
      CheckStates = (
        0
        0
        0)
    end
  end
  inherited SQLAlunos: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'ALUNOS.IDALU,'#13#10'ALUNOS.IDCID,'#13#10'ALUNOS.IDCEP,'#13#10'ALUNOS.NO' +
      'ME_ALU,'#13#10'ALUNOS.MATRICULA_ALU,'#13#10'ALUNOS.COMPLEEND_ALU,'#13#10'ALUNOS.ZO' +
      'NARES_ALU,'#13#10'ALUNOS.SEXO_ALU,'#13#10'ALUNOS.NACIO_ALU,'#13#10'ALUNOS.CPF_ALU,' +
      #13#10'ALUNOS.RG_ALU,'#13#10'ALUNOS.EXPRG_ALU,'#13#10'ALUNOS.DTNASC_ALU,'#13#10'ALUNOS.' +
      'DTEXPRG_ALU,'#13#10'ALUNOS.MAE_ALU,'#13#10'ALUNOS.CPFMAE_ALU,'#13#10'ALUNOS.RGMAE_' +
      'ALU,'#13#10'ALUNOS.LOCTRABMAE_ALU,'#13#10'ALUNOS.PAI_ALU,'#13#10'ALUNOS.CPFPAI_ALU' +
      ','#13#10'ALUNOS.RGPAI_ALU,'#13#10'ALUNOS.LOCTRABPAI_ALU,'#13#10'ALUNOS.CONJUGE_ALU' +
      ','#13#10'ALUNOS.LOCTRABCONJ_ALU,'#13#10'ALUNOS.FONE_ALU,'#13#10'ALUNOS.EMAIL_ALU,'#13 +
      #10'ALUNOS.CORPELE_ALU,'#13#10'ALUNOS.RENDAPAI_ALU,'#13#10'ALUNOS.RENDAMAE_ALU,' +
      #13#10'ALUNOS.RENDAALTERN_ALU,'#13#10'ALUNOS.ESTCIVPAI_ALU,'#13#10'ALUNOS.NUMPES_' +
      'ALU,'#13#10'ALUNOS.NUMPESTRAB_ALU,'#13#10'ALUNOS.TIPOSANG_ALU,'#13#10'ALUNOS.TIPOR' +
      'ESID_ALU,'#13#10'ALUNOS.VALALUG_ALU,'#13#10'ALUNOS.TIPOCARRO_ALU,'#13#10'ALUNOS.AN' +
      'OCARRO_ALU,'#13#10'ALUNOS.DOENCAFAM_ALU,'#13#10'ALUNOS.JA_ESTAGIOU_ALU,'#13#10'ALU' +
      'NOS.TEMPO_ESTAGIO_ALU,'#13#10'ALUNOS.EXPCOMPUT_ALU,'#13#10'ALUNOS.TURNOESTAG' +
      'IO_ALU,'#13#10'ALUNOS.RENDAPERCAPITA_ALU,'#13#10'ALUNOS.STATUS_ALU,'#13#10#13#10'CEPS.' +
      'LOGRA_CEP,'#13#10'TIPOLOGRA.DESCRI_TIPOLOG,'#13#10'CIDADES.NOME_CID,'#13#10'CIDADE' +
      'S.UF_CID,'#13#10'BAIRROS.NOME_BAI'#13#10#13#10'FROM ALUNOS'#13#10#13#10'LEFT OUTER JOIN CE' +
      'PS ON (CEPS.IDCEP = ALUNOS.IDCEP)'#13#10'LEFT OUTER JOIN TIPOLOGRA ON ' +
      '(TIPOLOGRA.IDTIPOLOG = CEPS.IDTIPOLOG)'#13#10'LEFT OUTER JOIN CIDADES ' +
      'ON (CIDADES.IDCID = CEPS.IDCID)'#13#10'LEFT OUTER JOIN BAIRROS ON (BAI' +
      'RROS.IDBAI = CEPS.IDBAI)'#13#10
    inherited SQLAlunosLOGRA_CEP: TStringField
      ProviderFlags = []
    end
    inherited SQLAlunosDESCRI_TIPOLOG: TStringField
      ProviderFlags = []
    end
    inherited SQLAlunosNOME_CID: TStringField
      ProviderFlags = []
    end
    inherited SQLAlunosUF_CID: TStringField
      ProviderFlags = []
    end
    inherited SQLAlunosNOME_BAI: TStringField
      ProviderFlags = []
    end
  end
  inherited CDSAlunos: TClientDataSet
    inherited CDSAlunosLOGRA_CEP: TStringField
      ProviderFlags = []
    end
    inherited CDSAlunosDESCRI_TIPOLOG: TStringField
      ProviderFlags = []
    end
    inherited CDSAlunosNOME_CID: TStringField
      ProviderFlags = []
    end
    inherited CDSAlunosUF_CID: TStringField
      ProviderFlags = []
    end
    inherited CDSAlunosNOME_BAI: TStringField
      ProviderFlags = []
    end
  end
end
