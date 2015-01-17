unit u_BusAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DBClient, DB,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFrmBuscaAlu = class(TFrm_ModeloBusca)
    SQLAlunos: TSQLDataSet;
    SQLAlunosIDALU: TIntegerField;
    SQLAlunosIDCEP: TStringField;
    SQLAlunosNOME_ALU: TStringField;
    SQLAlunosMATRICULA_ALU: TStringField;
    SQLAlunosCOMPLEEND_ALU: TStringField;
    SQLAlunosZONARES_ALU: TStringField;
    SQLAlunosSEXO_ALU: TStringField;
    SQLAlunosNACIO_ALU: TStringField;
    SQLAlunosCPF_ALU: TStringField;
    SQLAlunosRG_ALU: TStringField;
    SQLAlunosEXPRG_ALU: TStringField;
    SQLAlunosDTNASC_ALU: TDateField;
    SQLAlunosDTEXPRG_ALU: TDateField;
    SQLAlunosMAE_ALU: TStringField;
    SQLAlunosCPFMAE_ALU: TStringField;
    SQLAlunosRGMAE_ALU: TStringField;
    SQLAlunosLOCTRABMAE_ALU: TStringField;
    SQLAlunosPAI_ALU: TStringField;
    SQLAlunosCPFPAI_ALU: TStringField;
    SQLAlunosRGPAI_ALU: TStringField;
    SQLAlunosLOCTRABPAI_ALU: TStringField;
    SQLAlunosCONJUGE_ALU: TStringField;
    SQLAlunosLOCTRABCONJ_ALU: TStringField;
    SQLAlunosFONE_ALU: TStringField;
    SQLAlunosEMAIL_ALU: TStringField;
    SQLAlunosCORPELE_ALU: TStringField;
    SQLAlunosRENDAPAI_ALU: TFMTBCDField;
    SQLAlunosRENDAMAE_ALU: TFMTBCDField;
    SQLAlunosRENDAALTERN_ALU: TFMTBCDField;
    SQLAlunosESTCIVPAI_ALU: TStringField;
    SQLAlunosNUMPES_ALU: TIntegerField;
    SQLAlunosNUMPESTRAB_ALU: TIntegerField;
    SQLAlunosTIPOSANG_ALU: TStringField;
    SQLAlunosTIPORESID_ALU: TStringField;
    SQLAlunosVALALUG_ALU: TFMTBCDField;
    SQLAlunosTIPOCARRO_ALU: TStringField;
    SQLAlunosANOCARRO_ALU: TIntegerField;
    SQLAlunosDOENCAFAM_ALU: TStringField;
    SQLAlunosJA_ESTAGIOU_ALU: TStringField;
    SQLAlunosTEMPO_ESTAGIO_ALU: TStringField;
    SQLAlunosEXPCOMPUT_ALU: TStringField;
    SQLAlunosTURNOESTAGIO_ALU: TStringField;
    SQLAlunosRENDAPERCAPITA_ALU: TFMTBCDField;
    SQLAlunosSTATUS_ALU: TStringField;
    SQLAlunosLOGRA_CEP: TStringField;
    SQLAlunosDESCRI_TIPOLOG: TStringField;
    SQLAlunosNOME_CID: TStringField;
    SQLAlunosUF_CID: TStringField;
    SQLAlunosNOME_BAI: TStringField;
    Provider: TDataSetProvider;
    DSAlunos: TDataSource;
    CDSAlunos: TClientDataSet;
    CDSAlunosIDALU: TIntegerField;
    CDSAlunosIDCEP: TStringField;
    CDSAlunosNOME_ALU: TStringField;
    CDSAlunosMATRICULA_ALU: TStringField;
    CDSAlunosCOMPLEEND_ALU: TStringField;
    CDSAlunosZONARES_ALU: TStringField;
    CDSAlunosSEXO_ALU: TStringField;
    CDSAlunosNACIO_ALU: TStringField;
    CDSAlunosCPF_ALU: TStringField;
    CDSAlunosRG_ALU: TStringField;
    CDSAlunosEXPRG_ALU: TStringField;
    CDSAlunosDTNASC_ALU: TDateField;
    CDSAlunosDTEXPRG_ALU: TDateField;
    CDSAlunosMAE_ALU: TStringField;
    CDSAlunosCPFMAE_ALU: TStringField;
    CDSAlunosRGMAE_ALU: TStringField;
    CDSAlunosLOCTRABMAE_ALU: TStringField;
    CDSAlunosPAI_ALU: TStringField;
    CDSAlunosCPFPAI_ALU: TStringField;
    CDSAlunosRGPAI_ALU: TStringField;
    CDSAlunosLOCTRABPAI_ALU: TStringField;
    CDSAlunosCONJUGE_ALU: TStringField;
    CDSAlunosLOCTRABCONJ_ALU: TStringField;
    CDSAlunosFONE_ALU: TStringField;
    CDSAlunosEMAIL_ALU: TStringField;
    CDSAlunosCORPELE_ALU: TStringField;
    CDSAlunosRENDAPAI_ALU: TFMTBCDField;
    CDSAlunosRENDAMAE_ALU: TFMTBCDField;
    CDSAlunosRENDAALTERN_ALU: TFMTBCDField;
    CDSAlunosESTCIVPAI_ALU: TStringField;
    CDSAlunosNUMPES_ALU: TIntegerField;
    CDSAlunosNUMPESTRAB_ALU: TIntegerField;
    CDSAlunosTIPOSANG_ALU: TStringField;
    CDSAlunosTIPORESID_ALU: TStringField;
    CDSAlunosVALALUG_ALU: TFMTBCDField;
    CDSAlunosTIPOCARRO_ALU: TStringField;
    CDSAlunosANOCARRO_ALU: TIntegerField;
    CDSAlunosDOENCAFAM_ALU: TStringField;
    CDSAlunosJA_ESTAGIOU_ALU: TStringField;
    CDSAlunosTEMPO_ESTAGIO_ALU: TStringField;
    CDSAlunosEXPCOMPUT_ALU: TStringField;
    CDSAlunosTURNOESTAGIO_ALU: TStringField;
    CDSAlunosRENDAPERCAPITA_ALU: TFMTBCDField;
    CDSAlunosSTATUS_ALU: TStringField;
    CDSAlunosLOGRA_CEP: TStringField;
    CDSAlunosDESCRI_TIPOLOG: TStringField;
    CDSAlunosNOME_CID: TStringField;
    CDSAlunosUF_CID: TStringField;
    CDSAlunosNOME_BAI: TStringField;
    NOME: TLabeledEdit;
    CIDADE: TLabeledEdit;
    MATRICULA: TLabeledEdit;
    MATRICULA1: TLabeledEdit;
    BtnImprimir: TRzBitBtn;
    RaveProjectAlu: TRvProject;
    RvSystem1: TRvSystem;
    RvConnection: TRvDataSetConnection;
    SQLAlunosIDCID: TIntegerField;
    CDSAlunosIDCID: TIntegerField;
    procedure bTbUSCARClick(Sender: TObject);
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaAlu: TFrmBuscaAlu;

implementation

uses U_Alunos, U_Cadastros;

{$R *.dfm}

procedure TFrmBuscaAlu.bTbUSCARClick(Sender: TObject);
begin
  //MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := ' WHERE 1 = 1';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
         SQLFILTRO :=  SQLFILTRO + ' AND ALUNOS.MATRICULA_ALU >= ' + QuotedStr(MATRICULA.Text) +  ' AND ALUNOS.MATRICULA_ALU <= ' + QuotedStr(MATRICULA1.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
             SQLFILTRO :=  SQLFILTRO + ' AND ALUNOS.NOME_ALU  LIKE ' + QuotedStr(NOME.Text + '%') ;
    END;

  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
             SQLFILTRO :=  SQLFILTRO + ' AND CIDADES.NOME_CID  LIKE ' + QuotedStr('%' + CIDADE.Text + '%') ;
    END;

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN
    BEGIN
      SqlOrdem := ' ORDER BY ALUNOS.MATRICULA_ALU';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN
    BEGIN
      SqlOrdem := ' ORDER BY ALUNOS.NOME_ALU';
    END;


  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND ALUNOS.STATUS_ALU = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND ALUNOS.STATUS_ALU = ' + QuotedStr('C');
    END;



    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSAlunos.Close;
    SQLAlunos.Close;

    SQLAlunos.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLAlunos.Open;
    CDSAlunos.Open;




end;

procedure TFrmBuscaAlu.GrupoFiltroChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
   //Filtrando por Código
  IF (GrupoFiltro.ItemChecked[0] =  TRUE) THEN
    BEGIN
      MATRICULA.Enabled := True;
      MATRICULA1.Enabled := True;
    END
  ELSE
    BEGIN
      MATRICULA.Clear;
      MATRICULA1.Clear;
      MATRICULA.Enabled := False;
      MATRICULA1.Enabled := False;
    END;

  //Filtrando por Nome
  IF (GrupoFiltro.ItemChecked[1] =  TRUE) THEN
    BEGIN
      NOME.Enabled := True;
    END
  ELSE
    BEGIN
      NOME.Clear;
      NOME.Enabled  := False;
    END;
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      CIDADE.Enabled := True;
    END
  ELSE
    BEGIN
      CIDADE.Clear;
      CIDADE.Enabled  := False;
    END;


end;

procedure TFrmBuscaAlu.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal:=SQLAlunos.CommandText;
end;

procedure TFrmBuscaAlu.GridDadosDblClick(Sender: TObject);
begin
  IF (QuemChamou = 'ALUNOS') THEN
    BEGIN
      F_Aluno.SQLAlunos.ParamByName('PARALU').AsInteger := CDSAlunosIDALU.AsInteger;
       
      Close;
    END;

end;

procedure TFrmBuscaAlu.BtnImprimirClick(Sender: TObject);
begin
   RaveProjectAlu.Close;
   RaveProjectAlu.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Alunos_Detalhado.rav';
   RaveProjectAlu.Open;

   RaveProjectAlu.Execute;


end;

end.
