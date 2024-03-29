unit U_BusOco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, FMTBcd, DB, DBClient, Provider, SqlExpr,
  RzButton, RzRadGrp, RzPanel, ExtCtrls, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFRM_BUSOCO = class(TFrm_ModeloBusca)
    SQLoco: TSQLDataSet;
    SQLocoIDOCOR: TIntegerField;
    SQLocoIDFUNC: TIntegerField;
    SQLocoDESCRI_OCOR: TStringField;
    SQLocoDT_OCOR: TDateField;
    SQLocoHR_OCOR: TDateField;
    SQLocoTIPO_OCOR: TStringField;
    SQLocoGRAU_OCOR: TStringField;
    SQLocoOBS_OCOR: TStringField;
    SQLocoSTATUS_OCOR: TStringField;
    SQLocoNOME_FUNC: TStringField;
    PROVIDER: TDataSetProvider;
    CDSoco: TClientDataSet;
    CDSocoIDOCOR: TIntegerField;
    CDSocoIDFUNC: TIntegerField;
    CDSocoDESCRI_OCOR: TStringField;
    CDSocoDT_OCOR: TDateField;
    CDSocoHR_OCOR: TDateField;
    CDSocoTIPO_OCOR: TStringField;
    CDSocoGRAU_OCOR: TStringField;
    CDSocoOBS_OCOR: TStringField;
    CDSocoSTATUS_OCOR: TStringField;
    CDSocoNOME_FUNC: TStringField;
    DSoco: TDataSource;
    GRAU: TLabeledEdit;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    TIPO: TLabeledEdit;
    FUNC: TLabeledEdit;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    RzBitBtn1: TRzBitBtn;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure bTbUSCARClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSOCO: TFRM_BUSOCO;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UDM, U_CadOco;

{$R *.dfm}

procedure TFRM_BUSOCO.GrupoFiltroChange(Sender: TObject;
  Index: Integer; NewState: TCheckBoxState);
begin
  //Filtrando por C�digo
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

      TIPO.Enabled := True;
    END
  ELSE
    BEGIN
    TIPO.Clear;
      tipo.Enabled  := False;
    END;

  //Filtrando por Sigla
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      grau.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
     grau.Clear;
      grau.Enabled     := False;
    END;

  //Filtrando por nucleo
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      FUNC.Enabled     := False;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     FUNC.Clear;
      FUNC.Enabled := False;
    END;



end;

procedure TFRM_BUSOCO.bTbUSCARClick(Sender: TObject);
begin
//MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := ' WHERE 1 = 1 ';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
     //teste de preenchimento
         if (CODINI.Text='') or (CODINI.Text=' ') then
            begin
                   ShowMessage('Campo obrigat�rio: C�digo Inicial');
                   exit;
            end;
         if (CODFIM.Text='') or (CODFIM.Text=' ') then
            begin
                   ShowMessage('Campo obrigat�rio: C�digo Final');
                   exit;
            end;
         SQLFILTRO :=  SQLFILTRO + ' AND OCORRENCIAS.IDOCOR >= ' + QuotedStr(CODINI.Text) +  ' AND OCORRENCIAS.IDOCOR <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (TIPO.Text='') or (tipo.Text=' ') then
            begin
                   ShowMessage('Campo obrigat�rio: Tipo');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND OCORRENCIAS.TIPO_OCOR  LIKE ' + QuotedStr('%' + TIPO.Text + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (GRAU.Text='') or (grau.Text=' ') then
            begin
                   ShowMessage('Campo obrigat�rio: Grau');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND OCORRENCIAS.GRAU_OCOR  LIKE ' + QuotedStr('%' + GRAU.Text + '%');
    END;
  IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
    //teste de n
         if (FUNC.Text='') or (func.Text=' ') then
            begin
                   ShowMessage('Campo obrigat�rio: Funcion�rio');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND FUNCIONARIO.NOME_FUNC LIKE ' + QuotedStr('%' + func.Text + '%');
    END;

  // Montar a Ordena��o...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR C�DIGO
    BEGIN

      SqlOrdem := ' ORDER BY OCORRENCIAS.IDOCOR';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOMEFANTASIA
    BEGIN


      SqlOrdem := ' ORDER BY OCORRENCIAS.TIPO_OCOR';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN

      SqlOrdem := ' ORDER BY OCORRENCIAS.GRAU_OCOR';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 3) THEN
    BEGIN

      SqlOrdem := ' ORDER BY FUNCIONARIO.NOME_FUNC';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUEWST�O DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND OCORRENCIAS.STATUS_OCOR = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND OCORRENCIAS.STATUS_OCOR = ' + QuotedStr('C');
    END;



    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSoco.Close;
    SQLoco.Close;

    SQLoco.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLoco.Open;
    CDSoco.Open;


end;

procedure TFRM_BUSOCO.GridDadosDblClick(Sender: TObject);
begin
   IF (QuemChamou = 'OCO') THEN
    BEGIN
       FRM_CADOCO.SQLoco.ParamByName('PAROCO').AsInteger := CDSocoIDOCOR.AsInteger;
       CLOSE;
    END;


inherited;

end;

procedure TFRM_BUSOCO.FormCreate(Sender: TObject);
begin
SqlOriginal := SQLoco.CommandText;


end;

procedure TFRM_BUSOCO.RzBitBtn1Click(Sender: TObject);
begin
  inherited;
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelOco.Rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

end.
