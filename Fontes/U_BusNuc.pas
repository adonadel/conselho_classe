unit U_BusNuc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFRM_BUSNUC = class(TFrm_ModeloBusca)
    SQLNucleosBus: TSQLDataSet;
    Provider: TDataSetProvider;
    CDSNucleosBus: TClientDataSet;
    DSNucleosBus: TDataSource;
    NOME: TLabeledEdit;
    CODFIM: TLabeledEdit;
    CODINI: TLabeledEdit;
    SQLNucleosBusIDNUC: TIntegerField;
    SQLNucleosBusDESCRICAO_NUC: TStringField;
    SQLNucleosBusSTATUS_NUC: TStringField;
    CDSNucleosBusIDNUC: TIntegerField;
    CDSNucleosBusDESCRICAO_NUC: TStringField;
    CDSNucleosBusSTATUS_NUC: TStringField;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RaveConection3: TRvDataSetConnection;
    bTiMPRIMIR: TRzBitBtn;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure bTiMPRIMIRClick(Sender: TObject);
    procedure bTbUSCARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSNUC: TFRM_BUSNUC;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UDM, U_CadNuc, U_CadCur;

{$R *.dfm}

procedure TFRM_BUSNUC.GrupoFiltroChange(Sender: TObject; Index: Integer;
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
      CODINI.Clear;
      CODFIM.Clear;
      CODINI.Enabled := False;
      CODFIM.Enabled := False;
    END;

  //Filtrando por Nome Fantasia
  IF (GrupoFiltro.ItemChecked[1] =  TRUE) THEN
    BEGIN
      NOME.Enabled := True;
    END
  ELSE
    BEGIN
      NOME.Enabled  := False;
    END;


end;

procedure TFRM_BUSNUC.FormCreate(Sender: TObject);
begin
SqlOriginal := SQLNucleosBus.CommandText;

end;

procedure TFRM_BUSNUC.GridDadosDblClick(Sender: TObject);
begin
 inherited;
  IF (QuemChamou = 'NUCLEOS') THEN
    BEGIN
       FRM_CADNUC.SQLNuc.ParamByName('PARNUC').AsInteger := CDSNucleosBusIDNUC.AsInteger;
       CLOSE;
    END;

   IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       FRM_CADCUR.CDScursosIDNUC.AsInteger := CDSNucleosBusIDNUC.AsInteger;
       CLOSE;
    END;




end;

procedure TFRM_BUSNUC.bTiMPRIMIRClick(Sender: TObject);
begin
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelNuc.Rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

procedure TFRM_BUSNUC.bTbUSCARClick(Sender: TObject);
begin
//MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := ' WHERE 1 = 1';

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
         //adicionar ao SQL
         SQLFILTRO :=  SQLFILTRO + ' AND NUCLEOS.IDNUC >= ' + QuotedStr(CODINI.Text) +  ' AND NUCLEOS.IDNUC <= ' + QuotedStr(CODFIM.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
       //teste de preenchimento
         if (NOME.Text='') or (nome.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Descrição');
                   exit;
            end;

             SQLFILTRO :=  SQLFILTRO + ' AND NUCLEOS.DESCRICAO_NUC  LIKE ' + QuotedStr('%' + NOME.Text + '%') ;
    END;

   // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
      SqlOrdem := ' ORDER BY NUCLEOS.IDNUC ';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOME
    BEGIN
      SqlOrdem := ' ORDER BY NUCLEOS.DESCRICAO_NUC ';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUESTÃO DA SITUACAO
   IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND NUCLEOS.STATUS_NUC = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND NUCLEOS.STATUS_NUC= ' + QuotedStr('C');
    END;
    


    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSNucleosBus.Close;
    SQLNucleosBus.Close;

    SQLNucleosBus.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLNucleosBus.Open;
    CDSNucleosBus.Open;


end;

end.
