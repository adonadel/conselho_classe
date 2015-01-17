/*==============================================================*/
/* DBMS name:      InterBase 6.x                                */
/* Created on:     19/05/2014 16:28:49                          */
/*==============================================================*/


drop table ALUNOS;

drop table AUTORIZACOES;

drop table BAIRROS;

drop table CARGOS;

drop table CEPS;

drop table CIDADES;

drop table CONSALU;

drop table CONSDISC;

drop table CONSELHO;

drop table CURSOS;

drop table DISCIPLINAS;

drop table DISCPROF;

drop table DISCURSO;

drop table EMPRESA;

drop table FUNCIONARIO;

drop table HORARIOS;

drop table NUCLEOS;

drop table OCORRENCIAS;

drop table PROPHOR;

drop table RELA_ALUOCO;

drop table RELA_FUNCIOCOR;

drop table RELCARFUN;

drop table RELCDISCALU;

drop table RELPROCONS;

drop table RELTURALU;

drop table RELVAGCURSO;

drop table TIPOLOGRA;

drop table TURMAS;

drop table VAGAEST;

drop domain GRAUOCO;

drop domain STATUSCAD;

drop domain TIPOOCO;

drop domain UF;

/*==============================================================*/
/* Domain: GRAUOCO                                              */
/*==============================================================*/
create domain GRAUOCO as VARCHAR(1)  
      check (value is null or (value in ('B','M','G') and value = upper(value)));

/*==============================================================*/
/* Domain: STATUSCAD                                            */
/*==============================================================*/
create domain STATUSCAD as VARCHAR(1) default 'A' 
      check (value is null or (value in ('C','A') and value = upper(value)));

/*==============================================================*/
/* Domain: TIPOOCO                                              */
/*==============================================================*/
create domain TIPOOCO as VARCHAR(1)  
      check (value is null or (value in ('F','V','D','R') and value = upper(value)));

/*==============================================================*/
/* Domain: UF                                                   */
/*==============================================================*/
create domain UF as VARCHAR(2) default 'SC' 
      check (value is null or (value in ('AC','AL','AM','AP','BA','CE','DF','ES','GO','MA','MG','MS','MT','PA','PB','PE','PI','PR','RJ','RN','RO','RR','RS','SC','SE','SP','TO') and value = upper(value)));

/*==============================================================*/
/* Table: ALUNOS                                                */
/*==============================================================*/
create table ALUNOS (
IDALU                INTEGER                        not null,
IDCID                INTEGER                        not null,
IDCEP                VARCHAR(8)                     not null,
NOME_ALU             VARCHAR(50)                    not null,
MATRICULA_ALU        VARCHAR(12),
COMPLEEND_ALU        VARCHAR(100),
ZONARES_ALU          VARCHAR(1),
SEXO_ALU             VARCHAR(1)                     not null,
NACIO_ALU            VARCHAR(30),
CPF_ALU              VARCHAR(15)                    not null,
RG_ALU               VARCHAR(13)                    not null,
EXPRG_ALU            VARCHAR(6)                     not null,
DTNASC_ALU           DATE                           not null,
DTEXPRG_ALU          DATE                           not null,
MAE_ALU              VARCHAR(50)                    not null,
CPFMAE_ALU           VARCHAR(11)                    not null,
RGMAE_ALU            VARCHAR(15)                    not null,
LOCTRABMAE_ALU       VARCHAR(50),
PAI_ALU              VARCHAR(50)                    not null,
CPFPAI_ALU           VARCHAR(11)                    not null,
RGPAI_ALU            VARCHAR(15)                    not null,
LOCTRABPAI_ALU       VARCHAR(50),
CONJUGE_ALU          VARCHAR(50),
LOCTRABCONJ_ALU      VARCHAR(50),
FONE_ALU             VARCHAR(10),
EMAIL_ALU            VARCHAR(50),
CORPELE_ALU          VARCHAR(30)                    not null,
RENDAPAI_ALU         NUMERIC(10,2),
RENDAMAE_ALU         NUMERIC(10,2),
RENDAALTERN_ALU      NUMERIC(10,2),
ESTCIVPAI_ALU        VARCHAR(30)                    not null,
NUMPES_ALU           INTEGER                        not null,
NUMPESTRAB_ALU       INTEGER                        not null,
TIPOSANG_ALU         VARCHAR(2),
TIPORESID_ALU        VARCHAR(1)                     not null,
VALALUG_ALU          NUMERIC(10,2),
TIPOCARRO_ALU        VARCHAR(30),
ANOCARRO_ALU         INTEGER,
DOENCAFAM_ALU        CHAR(1),
JA_ESTAGIOU_ALU      CHAR(1),
TEMPO_ESTAGIO_ALU    VARCHAR(15),
ANO_ESTAGIO_ALU      INTEGER,
EXPCOMPUT_ALU        VARCHAR(1),
TURNOESTAGIO_ALU     VARCHAR(1),
RENDAPERCAPITA_ALU   NUMERIC(10,2)                  not null,
STATUS_ALU           STATUSCAD                      not null,
constraint PK_ALUNOS primary key (IDALU)
);

/*==============================================================*/
/* Table: AUTORIZACOES                                          */
/*==============================================================*/
create table AUTORIZACOES (
IDAUTORIZA           INTEGER                        not null,
IDFUNC               INTEGER,
IDRELTURALU          INTEGER,
DESCRI_AUTORIZA      VARCHAR(500),
DT_AUTORIZA          DATE,
HR_AUTORIZA          TIME,
TIPO_AUTORIZA        VARCHAR(1),
OBS_AUTORIZA         VARCHAR(100),
STATUS_AUTORIZA      STATUSCAD,
constraint PK_AUTORIZACOES primary key (IDAUTORIZA)
);

/*==============================================================*/
/* Table: BAIRROS                                               */
/*==============================================================*/
create table BAIRROS (
IDBAI                INTEGER                        not null,
NOME_BAI             VARCHAR(30)                    not null,
STATUS_BAI           STATUSCAD                      not null,
constraint PK_BAIRROS primary key (IDBAI)
);

/*==============================================================*/
/* Table: CARGOS                                                */
/*==============================================================*/
create table CARGOS (
IDCAR                INTEGER                        not null,
DESC_CAR             VARCHAR(30)                    not null,
STATUS_CAR           STATUSCAD                      not null,
constraint PK_CARGOS primary key (IDCAR)
);

/*==============================================================*/
/* Table: CEPS                                                  */
/*==============================================================*/
create table CEPS (
IDCEP                VARCHAR(8)                     not null,
IDCID                INTEGER                        not null,
IDBAI                INTEGER                        not null,
IDTIPOLOG            INTEGER                        not null,
LOGRA_CEP            VARCHAR(100)                   not null,
STATUS_CEP           STATUSCAD                      not null,
constraint PK_CEPS primary key (IDCEP)
);

/*==============================================================*/
/* Table: CIDADES                                               */
/*==============================================================*/
create table CIDADES (
IDCID                INTEGER                        not null,
NOME_CID             VARCHAR(50)                    not null,
STATUS_CID           STATUSCAD                      not null,
UF_CID               UF                             not null,
constraint PK_CIDADES primary key (IDCID)
);

/*==============================================================*/
/* Table: CONSALU                                               */
/*==============================================================*/
create table CONSALU (
IDCONSALU            INTEGER                        not null,
IDALU                INTEGER                        not null,
IDCONS               INTEGER                        not null,
COMENT_CONSALU       VARCHAR(300)                   not null,
ENCAM_CONSALU        VARCHAR(300)                   not null,
PROBLE_CONSALU       VARCHAR(300)                   not null,
STATUS_CONSALU       STATUSCAD                      not null,
constraint PK_CONSALU primary key (IDCONSALU)
);

/*==============================================================*/
/* Table: CONSDISC                                              */
/*==============================================================*/
create table CONSDISC (
IDCONSDISC           INTEGER                        not null,
IDDISCUR             INTEGER,
IDCONS               INTEGER                        not null,
STATUS_CONSDISC      STATUSCAD                      not null,
constraint PK_CONSDISC primary key (IDCONSDISC)
);

/*==============================================================*/
/* Table: CONSELHO                                              */
/*==============================================================*/
create table CONSELHO (
IDCONS               INTEGER                        not null,
IDTUR                INTEGER                        not null,
DATA_CONS            DATE                           not null,
HORA_CONS            TIME                           not null,
NUMBIMTRIM_CONS      INTEGER                        not null,
TIPOCONS_CONS        VARCHAR(6)                     not null,
OBS_CONS             VARCHAR(300),
STATUS_CONS          STATUSCAD                      not null,
constraint PK_CONSELHO primary key (IDCONS)
);

/*==============================================================*/
/* Table: CURSOS                                                */
/*==============================================================*/
create table CURSOS (
IDCURSO              INTEGER                        not null,
IDNUC                INTEGER                        not null,
DESCRICAO_CUR        VARCHAR(20)                    not null,
SIGLA_CUR            VARCHAR(3)                     not null,
STATUS_CUR           STATUSCAD                      not null,
constraint PK_CURSOS primary key (IDCURSO)
);

/*==============================================================*/
/* Table: DISCIPLINAS                                           */
/*==============================================================*/
create table DISCIPLINAS (
IDDISC               INTEGER                        not null,
DESCR_DISC           VARCHAR(50),
STATUS_DISC          STATUSCAD                      not null,
constraint PK_DISCIPLINAS primary key (IDDISC)
);

/*==============================================================*/
/* Table: DISCPROF                                              */
/*==============================================================*/
create table DISCPROF (
IDRELACAO            INTEGER                        not null,
IDFUNC               INTEGER                        not null,
IDDISCUR             INTEGER                        not null,
ANO_REL              INTEGER                        not null,
SEMESTRE_REL         VARCHAR(50)                    not null,
STATUS_REL           STATUSCAD                      not null,
constraint PK_DISCPROF primary key (IDRELACAO)
);

/*==============================================================*/
/* Table: DISCURSO                                              */
/*==============================================================*/
create table DISCURSO (
IDDISCUR             INTEGER                        not null,
IDCURSO              INTEGER                        not null,
IDDISC               INTEGER                        not null,
ANOFASE_DISCUR       INTEGER,
NUMAULAS_DISCUR      INTEGER,
TIPOSEMANU_DISCUR    VARCHAR(1),
OBS_DISCUR           VARCHAR(35),
STATUS_DISCUR        STATUSCAD                      not null,
constraint PK_DISCURSO primary key (IDDISCUR)
);

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
IDEMP                INTEGER                        not null,
COMPEND_EMP          VARCHAR(100),
NOMEFAN_EMP          VARCHAR(50)                    not null,
RAZAOSOC_EMP         VARCHAR(50)                    not null,
CNPJ_EMP             VARCHAR(14)                    not null,
INSCEST_EMP          VARCHAR(14)                    not null,
FONE_EMP             VARCHAR(11),
SITE_EMP             VARCHAR(30),
FAX_EMP              VARCHAR(11),
EMAIL_EMP            VARCHAR(100),
STATUS_EMP           STATUSCAD                      not null,
constraint PK_EMPRESA primary key (IDEMP)
);

/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table FUNCIONARIO (
IDFUNC               INTEGER                        not null,
IDCEP                VARCHAR(8)                     not null,
NOME_FUNC            VARCHAR(50)                    not null,
DATANASC_FUNC        DATE                           not null,
CPF_FUNC             VARCHAR(15),
RG_FUNC              VARCHAR(13),
NACIO_FUNC           VARCHAR(32)                    not null,
NATUR_FUNC           VARCHAR(32)                    not null,
SEXO_FUNC            VARCHAR(1)                     not null,
EMAIL_FUNC           VARCHAR(100),
OBS_FUNC             VARCHAR(50)                    not null,
DATACAD_FUNC         DATE                           not null,
STATUS_FUNC          STATUSCAD                      not null,
constraint PK_FUNCIONARIO primary key (IDFUNC)
);

/*==============================================================*/
/* Table: HORARIOS                                              */
/*==============================================================*/
create table HORARIOS (
IDHOR                INTEGER                        not null,
IDRELACAO            INTEGER                        not null,
DIA_HOR              INTEGER                        not null,
AULA_HOR             INTEGER                        not null,
STATUS_HOR           STATUSCAD                      not null,
constraint PK_HORARIOS primary key (IDHOR)
);

/*==============================================================*/
/* Table: NUCLEOS                                               */
/*==============================================================*/
create table NUCLEOS (
IDNUC                INTEGER                        not null,
DESCRICAO_NUC        VARCHAR(50)                    not null,
STATUS_NUC           STATUSCAD                      not null,
constraint PK_NUCLEOS primary key (IDNUC)
);

/*==============================================================*/
/* Table: OCORRENCIAS                                           */
/*==============================================================*/
create table OCORRENCIAS (
IDOCOR               INTEGER                        not null,
IDFUNC               INTEGER,
DESCRI_OCOR          VARCHAR(300),
DT_OCOR              DATE,
HR_OCOR              TIME,
TIPO_OCOR            VARCHAR(1),
GRAU_OCOR            VARCHAR(1),
OBS_OCOR             VARCHAR(100),
STATUS_OCOR          STATUSCAD,
constraint PK_OCORRENCIAS primary key (IDOCOR)
);

/*==============================================================*/
/* Table: PROPHOR                                               */
/*==============================================================*/
create table PROPHOR (
IDPROPHOR            INTEGER                        not null,
IDFUNC               INTEGER                        not null,
DIA_PROPHOR          INTEGER                        not null,
AULA_PROPHOR         INTEGER                        not null,
STATUS_PROPHOR       STATUSCAD                      not null,
constraint PK_PROPHOR primary key (IDPROPHOR)
);

/*==============================================================*/
/* Table: RELA_ALUOCO                                           */
/*==============================================================*/
create table RELA_ALUOCO (
IDALUOCO             INTEGER                        not null,
IDALU                INTEGER,
IDOCOR               INTEGER,
VERSAO_ALUOCO        VARCHAR(500),
OBS_ALUOCO           VARCHAR(100),
STATUS_ALUOCO        STATUSCAD,
constraint PK_RELA_ALUOCO primary key (IDALUOCO)
);

/*==============================================================*/
/* Table: RELA_FUNCIOCOR                                        */
/*==============================================================*/
create table RELA_FUNCIOCOR (
ID_FUNOCO            INTEGER                        not null,
IDOCOR               INTEGER,
IDFUNC               INTEGER,
VERSAO_FUNOCO        VARCHAR(500),
OBS_FUNOCO           VARCHAR(100),
STATUS_FUNOCO        STATUSCAD,
constraint PK_RELA_FUNCIOCOR primary key (ID_FUNOCO)
);

/*==============================================================*/
/* Table: RELCARFUN                                             */
/*==============================================================*/
create table RELCARFUN (
IDRELACARFUN         INTEGER                        not null,
IDFUNC               INTEGER                        not null,
IDCURSO              INTEGER,
IDCAR                INTEGER                        not null,
DTINI_RELCARFUN      DATE,
DTFIM_RELCARFUN      DATE,
STATUS_RELCARFUN     STATUSCAD                      not null,
constraint PK_RELCARFUN primary key (IDRELACARFUN)
);

/*==============================================================*/
/* Table: RELCDISCALU                                           */
/*==============================================================*/
create table RELCDISCALU (
IDRELCDISCALU        INTEGER                        not null,
IDCONSDISC           INTEGER                        not null,
IDALU                INTEGER                        not null,
SITUACAO_RELCDISCALU VARCHAR(11)                    not null,
STATUS_RELCDISCALU   STATUSCAD                      not null,
constraint PK_RELCDISCALU primary key (IDRELCDISCALU)
);

/*==============================================================*/
/* Table: RELPROCONS                                            */
/*==============================================================*/
create table RELPROCONS (
IDRELPROCONS         INTEGER                        not null,
IDFUNC               INTEGER                        not null,
IDCONS               INTEGER                        not null,
STATUS_RELPROCONS    STATUSCAD                      not null,
constraint PK_RELPROCONS primary key (IDRELPROCONS)
);

/*==============================================================*/
/* Table: RELTURALU                                             */
/*==============================================================*/
create table RELTURALU (
IDRELTURALU          INTEGER                        not null,
IDALU                INTEGER                        not null,
IDTUR                INTEGER                        not null,
DATA_RELTURALU       DATE,
HORA_RELTURALU       TIME,
OBS_RELTURALU        VARCHAR(200),
STATUS_RELTURALU     STATUSCAD                      not null,
constraint PK_RELTURALU primary key (IDRELTURALU)
);

/*==============================================================*/
/* Table: RELVAGCURSO                                           */
/*==============================================================*/
create table RELVAGCURSO (
IDRELVAGCURSO        INTEGER                        not null,
IDVAGA               INTEGER,
IDCURSO              INTEGER                        not null,
STATUS_RELVAGCURSO   STATUSCAD                      not null,
constraint PK_RELVAGCURSO primary key (IDRELVAGCURSO)
);

/*==============================================================*/
/* Table: TIPOLOGRA                                             */
/*==============================================================*/
create table TIPOLOGRA (
IDTIPOLOG            INTEGER                        not null,
DESCRI_TIPOLOG       VARCHAR(50)                    not null,
STATUS_TIPOLOG       STATUSCAD                      not null,
constraint PK_TIPOLOGRA primary key (IDTIPOLOG)
);

/*==============================================================*/
/* Table: TURMAS                                                */
/*==============================================================*/
create table TURMAS (
IDTUR                INTEGER                        not null,
IDCURSO              INTEGER                        not null,
NUM_TUR              VARCHAR(10)                    not null,
TURNO_TUR            VARCHAR(1),
ANO_TUR              INTEGER                        not null,
STATUS_TUR           STATUSCAD                      not null,
constraint PK_TURMAS primary key (IDTUR)
);

/*==============================================================*/
/* Table: VAGAEST                                               */
/*==============================================================*/
create table VAGAEST (
IDVAGA               INTEGER                        not null,
IDEMP                INTEGER                        not null,
IDRELTURALU          INTEGER,
DESCRI_VAGA          VARCHAR(50)                    not null,
BOLSA_VAGA           NUMERIC(10,2)                  not null,
NUMAPOLICE_VAGA      VARCHAR(15),
TEMPO_VAGA           INTEGER,
REQUISITO_VAGA       VARCHAR(200),
DTCAD_VAGA           DATE,
HORACAD_VAGA         TIME,
DTPRENCH_VAGA        DATE,
HORAPRENCH_VAGA      TIME,
DTINICIO_VAGA        DATE,
STATUS_VAGA          STATUSCAD                      not null,
constraint PK_VAGAEST primary key (IDVAGA)
);

alter table ALUNOS
   add constraint FK_ALUNOS_CEP_ALUNO_CEPS foreign key (IDCEP)
      references CEPS (IDCEP);

alter table ALUNOS
   add constraint FK_ALUNOS_CIDADES_A_CIDADES foreign key (IDCID)
      references CIDADES (IDCID);

alter table AUTORIZACOES
   add constraint FK_AUTORIZA_REL_FUNCI_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table AUTORIZACOES
   add constraint FK_AUTORIZA_REL_TURAL_RELTURAL foreign key (IDRELTURALU)
      references RELTURALU (IDRELTURALU);

alter table CEPS
   add constraint FK_CEPS_BAIRROS_C_BAIRROS foreign key (IDBAI)
      references BAIRROS (IDBAI);

alter table CEPS
   add constraint FK_CEPS_CIDADES_C_CIDADES foreign key (IDCID)
      references CIDADES (IDCID);

alter table CEPS
   add constraint FK_CEPS_TIPOLOG_C_TIPOLOGR foreign key (IDTIPOLOG)
      references TIPOLOGRA (IDTIPOLOG);

alter table CONSALU
   add constraint FK_CONSALU_ALU_CONSA_ALUNOS foreign key (IDALU)
      references ALUNOS (IDALU);

alter table CONSALU
   add constraint FK_CONSALU_CONS_CONS_CONSELHO foreign key (IDCONS)
      references CONSELHO (IDCONS);

alter table CONSDISC
   add constraint FK_CONSDISC_CONS_COND_CONSELHO foreign key (IDCONS)
      references CONSELHO (IDCONS);

alter table CONSDISC
   add constraint FK_CONSDISC_REL_DISCU_DISCURSO foreign key (IDDISCUR)
      references DISCURSO (IDDISCUR);

alter table CONSELHO
   add constraint FK_CONSELHO_TUR_CONS_TURMAS foreign key (IDTUR)
      references TURMAS (IDTUR);

alter table CURSOS
   add constraint FK_CURSOS_NUCLEOS_C_NUCLEOS foreign key (IDNUC)
      references NUCLEOS (IDNUC);

alter table DISCPROF
   add constraint FK_DISCPROF_DISCUR_DI_DISCURSO foreign key (IDDISCUR)
      references DISCURSO (IDDISCUR);

alter table DISCPROF
   add constraint FK_DISCPROF_FUNC_PROF_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table DISCURSO
   add constraint FK_DISCURSO_CURSOS_AU_CURSOS foreign key (IDCURSO)
      references CURSOS (IDCURSO);

alter table DISCURSO
   add constraint FK_DISCURSO_DISC_AULA_DISCIPLI foreign key (IDDISC)
      references DISCIPLINAS (IDDISC);

alter table FUNCIONARIO
   add constraint FK_FUNCIONA_CEPS_FUNC_CEPS foreign key (IDCEP)
      references CEPS (IDCEP);

alter table HORARIOS
   add constraint FK_HORARIOS_DISCPOF_H_DISCPROF foreign key (IDRELACAO)
      references DISCPROF (IDRELACAO);

alter table OCORRENCIAS
   add constraint FK_OCORRENC_RELA_COOR_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table PROPHOR
   add constraint FK_PROPHOR_FUNC_PROP_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table RELA_ALUOCO
   add constraint FK_RELA_ALU_REL_ALUOC_ALUNOS foreign key (IDALU)
      references ALUNOS (IDALU);

alter table RELA_ALUOCO
   add constraint FK_RELA_ALU_REL_OCOAL_OCORRENC foreign key (IDOCOR)
      references OCORRENCIAS (IDOCOR);

alter table RELA_FUNCIOCOR
   add constraint FK_RELA_FUN_RELA_FUNO_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table RELA_FUNCIOCOR
   add constraint FK_RELA_FUN_RELA_OCOF_OCORRENC foreign key (IDOCOR)
      references OCORRENCIAS (IDOCOR);

alter table RELCARFUN
   add constraint FK_RELCARFU_CARGOS_RE_CARGOS foreign key (IDCAR)
      references CARGOS (IDCAR);

alter table RELCARFUN
   add constraint FK_RELCARFU_CURSOS_RE_CURSOS foreign key (IDCURSO)
      references CURSOS (IDCURSO);

alter table RELCARFUN
   add constraint FK_RELCARFU_FUNC_RELC_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table RELCDISCALU
   add constraint FK_RELCDISC_CONSALURE_ALUNOS foreign key (IDALU)
      references ALUNOS (IDALU);

alter table RELCDISCALU
   add constraint FK_RELCDISC_CONSRELDA_CONSDISC foreign key (IDCONSDISC)
      references CONSDISC (IDCONSDISC);

alter table RELPROCONS
   add constraint FK_RELPROCO_CONS_RELP_CONSELHO foreign key (IDCONS)
      references CONSELHO (IDCONS);

alter table RELPROCONS
   add constraint FK_RELPROCO_FUNC_RELP_FUNCIONA foreign key (IDFUNC)
      references FUNCIONARIO (IDFUNC);

alter table RELTURALU
   add constraint FK_RELTURAL_ALUNOS_RE_ALUNOS foreign key (IDALU)
      references ALUNOS (IDALU);

alter table RELTURALU
   add constraint FK_RELTURAL_TURMAS_RE_TURMAS foreign key (IDTUR)
      references TURMAS (IDTUR);

alter table RELVAGCURSO
   add constraint FK_RELVAGCU_CURSOS_RE_CURSOS foreign key (IDCURSO)
      references CURSOS (IDCURSO);

alter table RELVAGCURSO
   add constraint FK_RELVAGCU_VAGAEST_R_VAGAEST foreign key (IDVAGA)
      references VAGAEST (IDVAGA);

alter table TURMAS
   add constraint FK_TURMAS_TURMAS_CU_CURSOS foreign key (IDCURSO)
      references CURSOS (IDCURSO);

alter table VAGAEST
   add constraint FK_VAGAEST_EMPRESA_V_EMPRESA foreign key (IDEMP)
      references EMPRESA (IDEMP);

alter table VAGAEST
   add constraint FK_VAGAEST_RELTURALU_RELTURAL foreign key (IDRELTURALU)
      references RELTURALU (IDRELTURALU);

