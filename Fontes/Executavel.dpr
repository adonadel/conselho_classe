program Executavel;

uses
  Forms,
  UMenu in 'UMenu.pas' {Frm_Menu},
  U_Cadastros in '..\Objetos\U_Cadastros.pas' {FRM_Cadastros},
  UFrmModeloBusca in '..\Objetos\UFrmModeloBusca.pas' {Frm_ModeloBusca},
  UBairros in 'UBairros.pas' {FrmBairros},
  UBuscaBair in 'UBuscaBair.pas' {FrmBuscaBair},
  UBuscaCep in 'UBuscaCep.pas' {FrmBuscaCep},
  UBuscaCid in 'UBuscaCid.pas' {FrmBuscaCidades},
  UBuscaEmp in 'UBuscaEmp.pas' {FrmBuscaEmp},
  UBuscaLog in 'UBuscaLog.pas' {FrmBuscaLog},
  UBuscaVaga in 'UBuscaVaga.pas' {FrmBuscaVaga},
  UCadCaracVaga in 'UCadCaracVaga.pas' {FrmCadCaracVaga},
  UCadVaga in 'UCadVaga.pas' {FrmCadVaga},
  UCEP in 'UCEP.pas' {Frm_Cep},
  UCidades in 'UCidades.pas' {FrmCidades},
  UDM in 'UDM.pas' {DM: TDataModule},
  UEmpresa in 'UEmpresa.pas' {FrmEmpresa},
  UStatusBair in 'UStatusBair.pas' {FrmStatusBair},
  UStatusCEP in 'UStatusCEP.pas' {FrmStatusCEP},
  UStatusCid in 'UStatusCid.pas' {FrmStatusCid},
  UStatusEmp in 'UStatusEmp.pas' {FrmStatusEmp},
  UStatusLog in 'UStatusLog.pas' {FrmStatusLog},
  UStatusVaga in 'UStatusVaga.pas' {FrmStatusVaga},
  UTipoLogra in 'UTipoLogra.pas' {FrmTipoLog},
  UConfigMenu in 'UConfigMenu.pas' {FrmConfigMenu},
  UConfigCad in 'UConfigCad.pas' {FrmConfigCad},
  UConfigBusca in 'UConfigBusca.pas' {FrmConfigBusca},
  UConfigSistema in 'UConfigSistema.pas' {FrmConfigSistema},
  USenha in 'USenha.pas' {FrmSenha},
  u_BusAlu in 'u_BusAlu.pas' {FrmBuscaAlu},
  U_CadConselho in 'U_CadConselho.pas' {F_CadConselho},
  U_GerarConselho in 'U_GerarConselho.pas' {GerarConselho},
  U_StatusAlu in 'U_StatusAlu.pas' {F_StatusAlu},
  UBusCargos in 'UBusCargos.pas' {Frm_BusCargos},
  UBusFunc in 'UBusFunc.pas' {Frm_BusFunc},
  UCadcargos in 'UCadcargos.pas' {FRM_Cadcargos},
  UCadFunc in 'UCadFunc.pas' {FRM_CadFunc},
  UstaCargos in 'UstaCargos.pas' {Frm_StaCargos},
  UStaFunc in 'UStaFunc.pas' {Frm_StaFunc},
  U_BusAuto in 'U_BusAuto.pas' {FRM_BUSAUTO},
  U_BusCur in 'U_BusCur.pas' {FRM_BUSCUR},
  U_BusDis in 'U_BusDis.pas' {FRM_BUSDIS},
  U_BusDisCur in 'U_BusDisCur.pas' {FRM_BUSDISCUR},
  U_BusNuc in 'U_BusNuc.pas' {FRM_BUSNUC},
  U_BusOco in 'U_BusOco.pas' {FRM_BUSOCO},
  U_BusTur in 'U_BusTur.pas' {FRM_BUSTUR},
  U_BusTurAlu in 'U_BusTurAlu.pas' {FRM_BUSTURALU},
  U_CadAuto in 'U_CadAuto.pas' {FRM_CADAUTO},
  U_CadCur in 'U_CadCur.pas' {FRM_CADCUR},
  U_CadDis in 'U_CadDis.pas' {FRM_CADDIS},
  U_CadDisCur in 'U_CadDisCur.pas' {FRM_CADDISCUR},
  U_CadNuc in 'U_CadNuc.pas' {FRM_CADNUC},
  U_CadOco in 'U_CadOco.pas' {FRM_CADOCO},
  U_CadOcoAlu in 'U_CadOcoAlu.pas' {FRM_CADALUOCO},
  U_CadTur in 'U_CadTur.pas' {FRM_CADTUR},
  U_CadTurAlu in 'U_CadTurAlu.pas' {FRM_CADTURALU},
  U_Status_Oco in 'U_Status_Oco.pas' {FRM_STATUSOCO},
  U_StatusAuto in 'U_StatusAuto.pas' {FRM_STATUSAUTO},
  U_StatusCur in 'U_StatusCur.pas' {FRM_STATUSCUR},
  U_StatusDis in 'U_StatusDis.pas' {FRM_STATUSDIS},
  U_StatusNuc in 'U_StatusNuc.pas' {FRM_STATUSNUC},
  U_StatusTur in 'U_StatusTur.pas' {FRM_STATUSTUR},
  UCadRelTurAlu in 'UCadRelTurAlu.pas' {FRM_RelTurAlu},
  U_Alunos in 'U_Alunos.pas' {F_Aluno},
  U_Horarios in 'U_Horarios.pas' {Frm_Horarios},
  UGerarHorarios in 'UGerarHorarios.pas' {Frm_GerarHorarios},
  UPropHorarios in 'UPropHorarios.pas' {Frm_ProHora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Menu, Frm_Menu);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.