unit U_BusDis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFRM_BUSDIS = class(TFrm_ModeloBusca)
    SQLdisBus: TSQLDataSet;
    SQLdisBusIDDISC: TIntegerField;
    SQLdisBusDESCR_DISC: TStringField;
    SQLdisBusSTATUS_DISC: TStringField;
    PROVIDER: TDataSetProvider;
    CDSdisBus: TClientDataSet;
    CDSdisBusIDDISC: TIntegerField;
    CDSdisBusDESCR_DISC: TStringField;
    CDSdisBusSTATUS_DISC: TStringField;
    DSdisBus: TDataSource;
    NOME: TLabeledEdit;
    CODFIM: TLabeledEdit;
    CODINI: TLabeledEdit;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RaveConection2: TRvDataSetConnection;
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
  FRM_BUSDIS: TFRM_BUSDIS;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses U_CadDis, U_CadDisCur, U_CadCur, UDM;

{$R *.dfm}

procedure TFRM_BUSDIS.GrupoFiltroChange(Sender: TObject; Index: Integer;
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

procedure TFRM_BUSDIS.FormCreate(Sender: TObject);
begin
  SqlOriginal := SQLdisBus.CommandText;

end;

procedure TFRM_BUSDIS.GridDadosDblClick(Sender: TObject);
begin
 inherited;
  IF (QuemChamou = 'DISCIPLINAS') THEN
    BEGIN
       FRM_CADDIS.SQLdis.ParamByName('PARDIS').AsInteger := CDSdisBusIDDISC.AsInteger;
       CLOSE;
    END;
  IF (QuemChamou = 'DISCUR') THEN
    BEGIN
       FRM_CADCUR.CDSdiscurIDDISC.AsInteger := CDSdisBusIDDISC.AsInteger;
       CLOSE;
    END;

end;

procedure TFRM_BUSDIS.bTiMPRIMIRClick(Sender: TObject);
begin
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelDisc.Rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

procedure TFRM_BUSDIS.bTbUSCARClick(Sender: TObject);
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
         SQLFILTRO :=  SQLFILTRO + ' AND DISCIPLINAS.IDDISC >= ' + QuotedStr(CODINI.Text) +  ' AND DISCIPLINAS.IDDISC <= ' + QuotedStr(CODFIM.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
       //teste de preenchimento
         if (NOME.Text='') or (nome.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Nome');
                   exit;
            end;

             SQLFILTRO :=  SQLFILTRO + ' AND DISCIPLINAS.DESCR_DISC  LIKE ' + QuotedStr('%' + NOME.Text + '%') ;
    END;

   // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
      SqlOrdem := ' ORDER BY DISCIPLINAS.IDDISC ';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOME
    BEGIN
      SqlOrdem := ' ORDER BY DISCIPLINAS.DESCR_DISC ';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUESTÃO DA SITUACAO
   IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND DISCIPLINAS.STATUS_DISC = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND DISCIPLINAS.STATUS_DISC = ' + QuotedStr('C');
    END;
    


    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSdisBus.Close;
    SQLdisBus.Close;

    SQLdisBus.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLdisBus.Open;
    CDSdisBus.Open;

end;

end.
