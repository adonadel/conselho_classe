unit U_BusCur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
    TFRM_BUSCUR = class(TFrm_ModeloBusca)
    SQLcursosBus: TSQLDataSet;
    SQLcursosBusIDCURSO: TIntegerField;
    SQLcursosBusIDNUC: TIntegerField;
    SQLcursosBusDESCRICAO_CUR: TStringField;
    SQLcursosBusSIGLA_CUR: TStringField;
    SQLcursosBusSTATUS_CUR: TStringField;
    SQLcursosBusDESCRICAO_NUC: TStringField;
    PROVIDER: TDataSetProvider;
    CDScursosBus: TClientDataSet;
    CDScursosBusIDCURSO: TIntegerField;
    CDScursosBusIDNUC: TIntegerField;
    CDScursosBusDESCRICAO_CUR: TStringField;
    CDScursosBusSIGLA_CUR: TStringField;
    CDScursosBusSTATUS_CUR: TStringField;
    CDScursosBusDESCRICAO_NUC: TStringField;
    DataSource1: TDataSource;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    DESC: TLabeledEdit;
    NUC: TLabeledEdit;
    SIG: TLabeledEdit;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RaveConection: TRvDataSetConnection;
    bTiMPRIMIR: TRzBitBtn;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure GridDadosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bTiMPRIMIRClick(Sender: TObject);
    procedure bTbUSCARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSCUR: TFRM_BUSCUR;
   SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UDM, U_CadCur, U_CadTur;

{$R *.dfm}

procedure TFRM_BUSCUR.GrupoFiltroChange(Sender: TObject; Index: Integer;
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

      DESC.Enabled := True;
    END
  ELSE
    BEGIN
    Desc.Clear;
      DESC.Enabled  := False;
    END;

  //Filtrando por Sigla
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      SIG.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
     sig.Clear;
      SIG.Enabled     := False;
    END;

  //Filtrando por nucleo
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      NUC.Enabled     := False;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     sig.Clear;
      NUC.Enabled := False;
    END;




    //Desenmvolver as outras opciones....

end;

procedure TFRM_BUSCUR.GridDadosDblClick(Sender: TObject);
begin
   IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       FRM_CADCUR.SQLcursos.ParamByName('PARCUR').AsInteger := CDScursosBusIDCURSO.AsInteger;
       CLOSE;
    END;
   IF (QuemChamou = 'TURMAS') THEN
    BEGIN
        FRM_CADTUR.CDSturIDCURSO.AsInteger:= CDScursosBusIDCURSO.AsInteger;
       CLOSE;
    END;

end;

procedure TFRM_BUSCUR.FormCreate(Sender: TObject);
begin
  inherited;
SqlOriginal := SQLcursosBus.CommandText;
end;

procedure TFRM_BUSCUR.FormShow(Sender: TObject);
begin
  inherited;
CODINI.SetFocus;
end;

procedure TFRM_BUSCUR.bTiMPRIMIRClick(Sender: TObject);
begin
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelCursos.Rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

procedure TFRM_BUSCUR.bTbUSCARClick(Sender: TObject);
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
         SQLFILTRO :=  SQLFILTRO + ' AND CURSOS.IDCURSO >= ' + QuotedStr(CODINI.Text) +  ' AND CURSOS.IDCURSO <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (DESC.Text='') or (DESC.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Descrição');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND CURSOS.DESCRICAO_CUR  LIKE ' + QuotedStr('%' + DESC.Text + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (SIG.Text='') or (SIG.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Sigla');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND CURSOS.SIGLA_CUR  LIKE ' + QuotedStr('%' + SIG.Text + '%');
    END;
  IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
    //teste de n
         if (NUC.Text='') or (NUC.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Núcleo');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND NUCLEOS.DESCRICAO_NUC LIKE ' + QuotedStr('%' + NUC.Text + '%');
    END;

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN

      SqlOrdem := ' ORDER BY CURSOS.IDCURSO';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOMEFANTASIA
    BEGIN


      SqlOrdem := ' ORDER BY CURSOS.DESCRICAO_CUR';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN

      SqlOrdem := ' ORDER BY CURSOS.SIGLA_CUR';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 3) THEN
    BEGIN

      SqlOrdem := ' ORDER BY CURSOS.DESCRICAO_NUC';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND CURSOS.STATUS_CUR = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND CURSOS.STATUS_CUR = ' + QuotedStr('C');
    END;

        

    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDScursosBus.Close;
    SQLcursosBus.Close;

    SQLcursosBus.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLcursosBus.Open;
    CDScursosBus.Open;

end;

end.
