unit U_BusAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, FMTBcd, StdCtrls, ExtCtrls, Grids, DBGrids,
  RzDBGrid, SqlExpr, Provider, DB, DBClient, RzButton, RzRadGrp, RzPanel,
  ComCtrls, RzBckgnd, Mask, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFRM_BUSAUTO = class(TFrm_ModeloBusca)
    SQLbusauto: TSQLDataSet;
    SQLbusautoIDAUTORIZA: TIntegerField;
    SQLbusautoIDFUNC: TIntegerField;
    SQLbusautoIDRELTURALU: TIntegerField;
    SQLbusautoDESCRI_AUTORIZA: TStringField;
    SQLbusautoDT_AUTORIZA: TDateField;
    SQLbusautoHR_AUTORIZA: TDateField;
    SQLbusautoTIPO_AUTORIZA: TStringField;
    SQLbusautoOBS_AUTORIZA: TStringField;
    SQLbusautoSTATUS_AUTORIZA: TStringField;
    SQLbusautoNOME_ALU: TStringField;
    SQLbusautoNOME_FUNC: TStringField;
    SQLbusautoFOTO_ALU: TBlobField;
    SQLbusautoIDALU: TIntegerField;
    SQLbusautoIDTUR: TIntegerField;
    SQLbusautoNUM_TUR: TStringField;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    ALU: TLabeledEdit;
    TIPO: TLabeledEdit;
    FUNC: TLabeledEdit;
    PROVIDER: TDataSetProvider;
    CDSbusauto: TClientDataSet;
    DataSource1: TDataSource;
    CDSbusautoIDAUTORIZA: TIntegerField;
    CDSbusautoIDFUNC: TIntegerField;
    CDSbusautoIDRELTURALU: TIntegerField;
    CDSbusautoDESCRI_AUTORIZA: TStringField;
    CDSbusautoDT_AUTORIZA: TDateField;
    CDSbusautoHR_AUTORIZA: TDateField;
    CDSbusautoTIPO_AUTORIZA: TStringField;
    CDSbusautoOBS_AUTORIZA: TStringField;
    CDSbusautoSTATUS_AUTORIZA: TStringField;
    CDSbusautoNOME_ALU: TStringField;
    CDSbusautoNOME_FUNC: TStringField;
    CDSbusautoFOTO_ALU: TBlobField;
    CDSbusautoIDALU: TIntegerField;
    CDSbusautoIDTUR: TIntegerField;
    CDSbusautoNUM_TUR: TStringField;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    bTiMPRIMIR: TRzBitBtn;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure bTbUSCARClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure bTiMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSAUTO: TFRM_BUSAUTO;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses U_CadAuto;

{$R *.dfm}

procedure TFRM_BUSAUTO.GrupoFiltroChange(Sender: TObject; Index: Integer;
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
      ALU.Enabled := True;
    END
  ELSE
    BEGIN
     ALU.Clear;
      ALU.Enabled  := False;
    END;

  //Filtrando por Sigla
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      FUNC.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
     FUNC.Clear;
      FUNC.Enabled     := False;
    END;

  //Filtrando por nucleo

IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      TIPO.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     TIPO.Clear;
      TIPO.Enabled := False;
    END;
end;

procedure TFRM_BUSAUTO.FormCreate(Sender: TObject);
begin
  inherited;
SqlOriginal := SQLbusauto.CommandText;
end;

procedure TFRM_BUSAUTO.bTbUSCARClick(Sender: TObject);
begin
  //MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := ' WHERE 1 = 1 ';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
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
         SQLFILTRO :=  SQLFILTRO + ' AND AUTORIZACOES.IDAUTORIZA >= ' + QuotedStr(CODINI.Text) +  ' AND AUTORIZACOES.IDAUTORIZA <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
       //teste de preenchimento
         if (ALU.Text='') or (ALU.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Nome do Aluno');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND ALUNOS.NOME_ALU LIKE  ' + QuotedStr('%'+ ALU.text  + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
       //teste de preenchimento
         if (FUNC.Text='') or (FUNC.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Nome do Funcionário');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND FUNCIONARIO.NOME_FUNC LIKE  ' + QuotedStr('%' + FUNC.text + '%');
    END;

     IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
      if (tipo.Text='') or (TIPO.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Tipo');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND AUTORIZACOES.TIPO_AUTORIZA LIKE ' + QuotedStr('%' + TIPO.Text + '%');
    END;
  

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
    //teste de preenchimento

      SqlOrdem := ' ORDER BY AUTORIZACOES.IDAUTORIZA ';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOMEFANTASIA
    BEGIN


      SqlOrdem := ' ORDER BY ALUNOS.NOME_ALU ';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN

      SqlOrdem := ' ORDER BY FUNCIONARIO.NOME_FUNC ';
    END
  ELSE  IF (GrupoOrdem.ItemIndex = 3) THEN
    BEGIN

      SqlOrdem := ' ORDER BY AUTORIZACOES.TIPO_AUTORIZA';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND AUTORIZACOES.STATUS_AUTORIZA = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND AUTORIZACOES.STATUS_AUTORIZA = ' + QuotedStr('C');
    END;

        

    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSbusauto.Close;
    SQLbusauto.Close;

    SQLbusauto.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLbusauto.Open;
    CDSbusauto.Open;


end;

procedure TFRM_BUSAUTO.GridDadosDblClick(Sender: TObject);
begin
   IF (QuemChamou = 'AUTO') THEN
    BEGIN
       FRM_CADAUTO.SQLauto.ParamByName('PARAUTO').AsInteger := CDSbusautoIDAUTORIZA.AsInteger;
       CLOSE;
    END;

end;

procedure TFRM_BUSAUTO.bTiMPRIMIRClick(Sender: TObject);
begin
  inherited;
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelAuto.Rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

end.
