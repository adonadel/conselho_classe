unit U_BusTur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFRM_BUSTUR = class(TFrm_ModeloBusca)
    SQLbustur: TSQLDataSet;
    PROVIDERBUS: TDataSetProvider;
    CDSbustur: TClientDataSet;
    SQLbusturIDTUR: TIntegerField;
    SQLbusturIDCURSO: TIntegerField;
    SQLbusturNUM_TUR: TStringField;
    SQLbusturTURNO_TUR: TStringField;
    SQLbusturANO_TUR: TIntegerField;
    SQLbusturSTATUS_TUR: TStringField;
    SQLbusturDESCRICAO_CUR: TStringField;
    CDSbusturIDTUR: TIntegerField;
    CDSbusturIDCURSO: TIntegerField;
    CDSbusturNUM_TUR: TStringField;
    CDSbusturTURNO_TUR: TStringField;
    CDSbusturANO_TUR: TIntegerField;
    CDSbusturSTATUS_TUR: TStringField;
    CDSbusturDESCRICAO_CUR: TStringField;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    NUM: TLabeledEdit;
    TUR: TLabeledEdit;
    ANO: TLabeledEdit;
    Cur: TLabeledEdit;
    bTiMPRIMIR: TRzBitBtn;
    DSbustur: TDataSource;
    RaveProj: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure GridDadosDblClick(Sender: TObject);
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure bTiMPRIMIRClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BUSTUR: TFRM_BUSTUR;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UDM, U_CadTur;

{$R *.dfm}

procedure TFRM_BUSTUR.GridDadosDblClick(Sender: TObject);
begin
 IF (QuemChamou = 'TURMA') THEN
    BEGIN
       FRM_CADTUR.SQLtur.ParamByName('PARTUR').AsInteger := CDSbusturIDTUR.AsInteger;
       CLOSE;
    END;

end;

procedure TFRM_BUSTUR.GrupoFiltroChange(Sender: TObject; Index: Integer;
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
      num.Enabled := True;
    END
  ELSE
    BEGIN
     num.Clear;
      num.Enabled  := False;
    END;

  //Filtrando por Sigla
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      ano.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
     ano.Clear;
      ano.Enabled     := False;
    END;

  //Filtrando por nucleo
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      tur.Enabled     := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
     tur.Clear;
      tur.Enabled := False;
    END;
  



end;

procedure TFRM_BUSTUR.FormCreate(Sender: TObject);
begin
inherited;
SqlOriginal := SQLbustur.CommandText;

end;

procedure TFRM_BUSTUR.bTiMPRIMIRClick(Sender: TObject);
begin
  RaveProj.Close;
  RaveProj.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\RelTurmas.Rav';
  RaveProj.Open;

  RaveProj.Execute;
end;

procedure TFRM_BUSTUR.BtBuscarClick(Sender: TObject);
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
         SQLFILTRO :=  SQLFILTRO + ' AND TURMAS.IDTUR >= ' + QuotedStr(CODINI.Text) +  ' AND TURMAS.IDTUR <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
       //teste de preenchimento
         if (num.Text='') or (num.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Número');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND TURMAS.NUM_TUR =  ' + QuotedStr(Num.text) ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
       //teste de preenchimento
         if (ANO.Text='') or (ANO.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Ano');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND TURMAS.ANO_TUR =  ' + QuotedStr(Ano.text);
    END;
  IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
      if (TUR.Text='') or (TUR.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Turno');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND TURMAS.TURNO_TUR LIKE ' + QuotedStr('%' + TUR.Text + '%');
    END;
  IF (GrupoFiltro.ItemChecked[4] = TRUE) THEN
    BEGIN
      if (Cur.Text='') or (cur.Text=' ') then
            begin
                   ShowMessage('Campo obrigatório: Curso');
                   exit;
            end;
             SQLFILTRO :=  SQLFILTRO + ' AND CURSOS.DESCRICAO_CUR LIKE ' + QuotedStr('%' + cur.Text + '%');
    END;


  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
    //teste de preenchimento

      SqlOrdem := ' ORDER BY TURMAS.IDTUR ';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOMEFANTASIA
    BEGIN


      SqlOrdem := ' ORDER BY TURMAS.NUM_TUR ';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN

      SqlOrdem := ' ORDER BY TURMAS.ANO_TUR ';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 3) THEN
    BEGIN
    //teste de n

      SqlOrdem := ' ORDER BY TURMAS.TURNO_TUR';
    END
   ELSE IF (GrupoOrdem.ItemIndex = 4) THEN
    BEGIN

      SqlOrdem := ' ORDER BY CURSOS.DESCRICAO_CUR';
    END;


  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND TURMAS.STATUS_TUR = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND TURMAS.STATUS_TUR = ' + QuotedStr('C');
    END;

        

    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSbustur.Close;
    SQLbustur.Close;

    SQLbustur.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLbustur.Open;
    CDSbustur.Open;

end;

end.
