unit U_BusDisCur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, Provider, DB,
  DBClient, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFRM_BUSDISCUR = class(TFrm_ModeloBusca)
    SQLBUSdiscur: TSQLDataSet;
    SQLBUSdiscurIDDISCUR: TIntegerField;
    SQLBUSdiscurIDCURSO: TIntegerField;
    SQLBUSdiscurIDDISC: TIntegerField;
    SQLBUSdiscurANOFASE_DISCUR: TIntegerField;
    SQLBUSdiscurNUMAULAS_DISCUR: TIntegerField;
    SQLBUSdiscurTIPOSEMANU_DISCUR: TStringField;
    SQLBUSdiscurOBS_DISCUR: TStringField;
    SQLBUSdiscurSTATUS_DISCUR: TStringField;
    SQLBUSdiscurDESCR_DISC: TStringField;
    CDSdBUSiscur: TClientDataSet;
    CDSdBUSiscurIDDISCUR: TIntegerField;
    CDSdBUSiscurIDCURSO: TIntegerField;
    CDSdBUSiscurIDDISC: TIntegerField;
    CDSdBUSiscurANOFASE_DISCUR: TIntegerField;
    CDSdBUSiscurNUMAULAS_DISCUR: TIntegerField;
    CDSdBUSiscurTIPOSEMANU_DISCUR: TStringField;
    CDSdBUSiscurOBS_DISCUR: TStringField;
    CDSdBUSiscurSTATUS_DISCUR: TStringField;
    CDSdBUSiscurDESCR_DISC: TStringField;
    DSdiscur: TDataSource;
    PROVIDER: TDataSetProvider;
    SQLBUSdiscurDESCRICAO_CUR: TStringField;
    CDSdBUSiscurDESCRICAO_CUR: TStringField;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    DIS: TLabeledEdit;
    CUR: TLabeledEdit;
    TIPO: TLabeledEdit;
    AULAS: TLabeledEdit;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    bTiMPRIMIR: TRzBitBtn;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure bTbUSCARClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bTiMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSDISCUR: TFRM_BUSDISCUR;
   SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

{$R *.dfm}

procedure TFRM_BUSDISCUR.GrupoFiltroChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  //Filtrando por Código
  IF (GrupoFiltro.ItemChecked[0] =  TRUE) THEN
    BEGIN
      CODINI.Enabled := True;
      CODFIM.Enabled := True;
    END
  ELSE
    BEGIN
      codini.Clear;
      codfim.Clear;
      CODINI.Enabled := False;
      CODFIM.Enabled := False;
    END;

  //Filtrando por Descricao
  IF (GrupoFiltro.ItemChecked[1] =  TRUE) THEN
    BEGIN

      DIS.Enabled := True;
    END
  ELSE
    BEGIN
    dis.Clear;
      dis.Enabled  := False;
    END;

  //Filtrando por Sigla
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      cur.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
     cur.Clear;
      cur.Enabled     := False;
    END;

  //Filtrando por nucleo
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      TIPO.Enabled     := False;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     TIPO.Clear;
      TIPO.Enabled := False;
    END;

     //Filtrando por nucleo
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      AULAS.Enabled     := False;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     AULAS.Clear;
      AULAS.Enabled := False;
    END;

end;

procedure TFRM_BUSDISCUR.bTbUSCARClick(Sender: TObject);
begin
 //MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := ' WHERE 1 = 1 ';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
     //teste de preenchimento
         if (CODINI.Text='') or (CODINI.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Código Inicial');
                   exit;
            end;
         if (CODFIM.Text='') or (CODFIM.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Código Final');
                   exit;
            end;
         SQLFILTRO :=  SQLFILTRO + ' AND DISCURSO.IDDISCUR >= ' + QuotedStr(CODINI.Text) +  ' AND DISCURSO.IDDISCUR <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (DIS.Text='') or (DIS.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Disciplina');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND DISCIPLINA.DESCR_DISC  LIKE ' + QuotedStr('%' + DIS.Text + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (CUR.Text='') or (CUR.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Curso');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND CURSOS.DESCRICAO_CUR  LIKE ' + QuotedStr('%' + CUR.Text + '%');
    END;
  IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
    //teste de n
         if (TIPO.Text='') or (TIpo.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Tipo');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND DISCURSO.TIPOSEMANU_DISCUR LIKE ' + QuotedStr('%' + TIPO.Text + '%');
    END;
  IF (GrupoFiltro.ItemChecked[4] = TRUE) THEN
    BEGIN
    //teste de n
         if (TIPO.Text='') or (TIpo.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Número de aulas');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND DISCURSO.NUMAULAS_DISCUR LIKE ' + QuotedStr('%' + AULAS.Text + '%');
    END;

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN

      SqlOrdem := ' ORDER BY DISCURSO.IDDISCUR';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN
    BEGIN


      SqlOrdem := ' ORDER BY DISCIPLINA.DESCR_DISC';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN

      SqlOrdem := ' ORDER BY DESCRICAO_CUR';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 3) THEN
    BEGIN

      SqlOrdem := ' ORDER BY DISCURSO.TIPOSEMANU_DISCUR';
    END
   ELSE IF (GrupoOrdem.ItemIndex = 4) THEN
    BEGIN

      SqlOrdem := ' ORDER BY DISCURSO.NUMAULAS_DISCUR';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUESTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND DISCURSO.STATUS_DISCUR= ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND RELTURALU.DISCURSO.STATUS_DISCUR = ' + QuotedStr('C');
    END;

        

    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSdBUSiscur.Close;
    SQLBUSdiscur.Close;

    SQLBUSdiscur.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLBUSdiscur.Open;
    CDSdBUSiscur.Open;

end;

procedure TFRM_BUSDISCUR.GridDadosDblClick(Sender: TObject);
begin
IF (QuemChamou = 'DISCUR') THEN
    BEGIN
       //FRM_CADAUTO.SQLauto.ParamByName('DISCUR').AsInteger := CDSbusautoIDAUTORIZA.AsInteger;
       CLOSE;
    END;
end;

procedure TFRM_BUSDISCUR.FormCreate(Sender: TObject);
begin
  inherited;
   SqlOriginal := SQLBUSdiscur.CommandText;
end;

procedure TFRM_BUSDISCUR.bTiMPRIMIRClick(Sender: TObject);
begin
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelDiscCur.Rav';
  RaveProj.Open;

  RaveProj.Execute;

end;

end.
