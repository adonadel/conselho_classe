inherited Frm_StaFunc: TFrm_StaFunc
  Left = 269
  Top = 177
  Caption = 'Frm_StaFunc'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PNLTITULO: TRzPanel
    Caption = 'Status do Funcion'#225'rios'
  end
  inherited PNLFILTRO: TRzPanel
    inherited GrupoFiltro: TRzCheckGroup
      CheckStates = (
        0
        0
        0
        0)
    end
  end
  inherited SQLbusFunc: TSQLDataSet
    CommandText = 
      'SELECT'#13#10#13#10'FUNCIONARIO.IDFUNC,'#13#10'FUNCIONARIO.IDCEP,'#13#10'FUNCIONARIO.N' +
      'OME_FUNC,'#13#10'FUNCIONARIO.DATANASC_FUNC,'#13#10'FUNCIONARIO.CPF_FUNC,'#13#10'FU' +
      'NCIONARIO.RG_FUNC,'#13#10'FUNCIONARIO.NACIO_FUNC,'#13#10'FUNCIONARIO.NATUR_F' +
      'UNC,'#13#10'FUNCIONARIO.SEXO_FUNC,'#13#10'FUNCIONARIO.EMAIL_FUNC,'#13#10'FUNCIONAR' +
      'IO.OBS_FUNC,'#13#10'FUNCIONARIO.DATACAD_FUNC,'#13#10'FUNCIONARIO.STATUS_FUNC' +
      ','#13#10#13#10'CEPS.LOGRA_CEP,'#13#10'TIPOLOGRA.DESCRI_TIPOLOG,'#13#10'CIDADES.NOME_CI' +
      'D,'#13#10'CIDADES.UF_CID,'#13#10'BAIRROS.NOME_BAI,'#13#10#13#10'RELCARFUN.DTINI_RELCAR' +
      'FUN,'#13#10'RELCARFUN.DTFIM_RELCARFUN,'#13#10'CARGOS.IDCAR,'#13#10'CARGOS.DESC_CAR' +
      #13#10#13#10'FROM FUNCIONARIO'#13#10#13#10'LEFT OUTER JOIN CEPS ON (CEPS.IDCEP=FUNC' +
      'IONARIO.IDCEP)'#13#10'LEFT OUTER JOIN TIPOLOGRA ON (TIPOLOGRA.IDTIPOLO' +
      'G=CEPS.IDTIPOLOG)'#13#10'LEFT OUTER JOIN BAIRROS ON (BAIRROS.IDBAI=CEP' +
      'S.IDBAI)'#13#10'LEFT OUTER JOIN CIDADES ON (CIDADES.IDCID=CEPS.IDCID)'#13 +
      #10#13#10'LEFT OUTER JOIN RELCARFUN ON (RELCARFUN.IDFUNC=FUNCIONARIO.ID' +
      'FUNC)'#13#10'LEFT OUTER JOIN CARGOS ON (CARGOS.IDCAR=RELCARFUN.IDCAR)'
  end
  inherited CDSbusFunc: TClientDataSet
    inherited CDSbusFuncLOGRA_CEP: TStringField [12]
    end
    inherited CDSbusFuncDESCRI_TIPOLOG: TStringField [13]
    end
    inherited CDSbusFuncNOME_CID: TStringField [14]
    end
    inherited CDSbusFuncUF_CID: TStringField [15]
    end
    inherited CDSbusFuncNOME_BAI: TStringField [16]
    end
    inherited CDSbusFuncSTATUS_FUNC: TStringField [17]
      ProviderFlags = []
    end
  end
end
