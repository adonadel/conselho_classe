unit U_BusTurAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  SqlExpr, Provider, StdCtrls;

type
  TFRM_BUSTURALU = class(TFrm_ModeloBusca)
    SQLbusturalu: TSQLDataSet;
    SQLbusturaluIDRELTURALU: TIntegerField;
    SQLbusturaluIDALU: TIntegerField;
    SQLbusturaluIDTUR: TIntegerField;
    SQLbusturaluDATA_RELTURALU: TDateField;
    SQLbusturaluHORA_RELTURALU: TTimeField;
    SQLbusturaluOBS_RELTURALU: TStringField;
    SQLbusturaluSTATUS_RELTURALU: TStringField;
    SQLbusturaluNOME_ALU: TStringField;
    SQLbusturaluSTATUS_ALU: TStringField;
    CDSbusturalu: TClientDataSet;
    CDSbusturaluIDRELTURALU: TIntegerField;
    CDSbusturaluIDTUR: TIntegerField;
    CDSbusturaluIDALU: TIntegerField;
    CDSbusturaluDATA_RELTURALU: TDateField;
    CDSbusturaluHORA_RELTURALU: TTimeField;
    CDSbusturaluOBS_RELTURALU: TStringField;
    CDSbusturaluSTATUS_RELTURALU: TStringField;
    CDSbusturaluNOME_ALU: TStringField;
    CDSbusturaluSTATUS_ALU: TStringField;
    Dsturalu: TDataSource;
    PROVIDER: TDataSetProvider;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    ALU: TLabeledEdit;
    ANO: TLabeledEdit;
    TUR: TLabeledEdit;
    SQLbusturaluNUM_TUR: TStringField;
    SQLbusturaluANO_TUR: TIntegerField;
    SQLbusturaluSTATUS_TUR: TStringField;
    CDSbusturaluNUM_TUR: TStringField;
    CDSbusturaluANO_TUR: TIntegerField;
    CDSbusturaluSTATUS_TUR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure bTbUSCARClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSTURALU: TFRM_BUSTURALU;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UDM, U_CadTurAlu, U_CadAuto, U_CadTur;

{$R *.dfm}

procedure TFRM_BUSTURALU.FormCreate(Sender: TObject);
begin
  inherited;
SqlOriginal := SQLbusturalu.CommandText;
end;

procedure TFRM_BUSTURALU.GrupoFiltroChange(Sender: TObject; Index: Integer;
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
      TUR.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
     TUR.Clear;
      TUR.Enabled     := False;
    END;

  //Filtrando por nucleo
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      ANO.Enabled     := False;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     ANO.Clear;
      ANO.Enabled := False;
    END;


end;

procedure TFRM_BUSTURALU.bTbUSCARClick(Sender: TObject);
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
         SQLFILTRO :=  SQLFILTRO + ' AND RELTURALU.IDRELTURALU >= ' + QuotedStr(CODINI.Text) +  ' AND RELTURALU.IDRELTURALU <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (ALU.Text='') or (ALU.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Nome do aluno');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND ALUNOS.NOME_ALU  LIKE ' + QuotedStr('%' + ALU.Text + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
    //teste de preenchimento
         if (TUr.Text='') or (TUR.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Número da turma');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND TURMAS.NUM_TUR  LIKE ' + QuotedStr('%' + TUR.Text + '%');
    END;
  IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
    //teste de n
         if (ANO.Text='') or (ANO.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Ano');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND TURMAS.ANO_TUR LIKE ' + QuotedStr('%' + ANO.Text + '%');
    END;

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN

      SqlOrdem := ' ORDER BY RELTURALU.IDRELTURALU';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN
    BEGIN


      SqlOrdem := ' ORDER BY ALUNOS.NOME_ALU';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN

      SqlOrdem := ' ORDER BY TURMAS.NUM_TUR';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 3) THEN
    BEGIN

      SqlOrdem := ' ORDER BY TURMAS.ANO_TUR';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUESTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND RELTURALU.STATUS_RELTURALU = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND RELTURALU.STATUS_RELTURALU = ' + QuotedStr('C');
    END;

        

    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSbusturalu.Close;
    SQLbusturalu.Close;

    SQLbusturalu.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLbusturalu.Open;
    CDSbusturalu.Open;

end;

procedure TFRM_BUSTURALU.GridDadosDblClick(Sender: TObject);
begin
 { IF (QuemChamou = 'TURALU') THEN
    BEGIN
       FRM_CADTUR.SQlturalu.ParamByName('PARTURALU').AsInteger := CDSbusturaluIDRELTURALU.AsInteger;
       CLOSE;
    END; }
   IF (QuemChamou = 'AUTO') THEN
    BEGIN
        FRM_CADAUTO.CDSautoIDRELTURALU.AsInteger:= CDSbusturaluIDRELTURALU.AsInteger;
        FRM_CADAUTO.CDSautoIDALU.AsInteger:= CDSbusturaluIDALU.AsInteger;
        FRM_CADAUTO.CDSautoNUM_TUR.AsInteger:= CDSbusturaluNUM_TUR.AsInteger;
       CLOSE;
    END;


end;

end.
