unit UBusCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpBase, RpSystem, RpRave, RpDefine, RpCon,
  RpConDS;

type
  TFrm_BusCargos = class(TFRM_MODELOBUSCA)
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    DESCRICAO: TLabeledEdit;
    SQLBusCargos: TSQLDataSet;
    SQLBusCargosIDCAR: TIntegerField;
    SQLBusCargosDESC_CAR: TStringField;
    SQLBusCargosSTATUS_CAR: TStringField;
    ProviderBus: TDataSetProvider;
    CDSBusCargos: TClientDataSet;
    CDSBusCargosIDCAR: TIntegerField;
    CDSBusCargosDESC_CAR: TStringField;
    CDSBusCargosSTATUS_CAR: TStringField;
    DSBusCargos: TDataSource;
    RzBitBtn1: TRzBitBtn;
    RvDataSetConnection1: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvProject1: TRvProject;
    procedure bTbUSCARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure GridDadosDblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_BusCargos: TFrm_BusCargos;
   SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UCadcargos, UCadFunc;//URelCarFun, 

{$R *.dfm}

procedure TFrm_BusCargos.bTbUSCARClick(Sender: TObject);
begin
  inherited;
    
  //MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := 'WHERE 1 = 1';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
         SqlFiltro :=  SQLFILTRO + ' AND CARGOS.IDCAR >= ' + QuotedStr(CODINI.Text) +  ' AND CARGOS.IDCAR <= ' + QuotedStr(CODFIM.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
             SqlFiltro :=  SQLFILTRO + ' AND CARGOS.DESC_CAR  LIKE ' + QuotedStr('%' + DESCRICAO.Text + '%') ;
    END;

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
      SqlOrdem := ' ORDER BY CARGOS.IDCAR';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //descricao
    BEGIN
      SqlOrdem := ' ORDER BY CARGOS.DESC_CAR';
    END ;


  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND CARGOS.STATUS_CAR = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND CARGOS.STATUS_CAR = ' + QuotedStr('C');
    END;



    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSBusCargos.Close;
    SQLBusCargos.Close;

    SQLBusCargos.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLBusCargos.Open;
    CDSBusCargos.Open;

end;

procedure TFrm_BusCargos.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SQLBusCargos.CommandText;
end;

procedure TFrm_BusCargos.GrupoFiltroChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  inherited;
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

  //Filtrando por descricap
  IF (GrupoFiltro.ItemChecked[1] =  TRUE) THEN
    BEGIN
      DESCRICAO.Enabled := True;
    END
  ELSE
    BEGIN
      DESCRICAO.Enabled  := False;
    END;
end;

procedure TFrm_BusCargos.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  IF (QuemChamou = 'CARGOS') THEN
    BEGIN
       FRM_Cadcargos.SQLCargos.ParamByName('PARCAR').AsInteger := CDSBusCargosIDCAR.AsInteger;
       CLOSE;
    END;
  IF (QuemChamou = 'RELCARFUN') THEN
    BEGIN
       FRM_CadFunc.CDScargosIDCAR.AsInteger := CDSBusCargosIDCAR.AsInteger;
      // FRM_CadFunc.BuscaRapida.Text := FRM_CadFunc.CDSFuncIDFUNC.AsString;
       CLOSE;
    END;
end;

procedure TFrm_BusCargos.RzBitBtn1Click(Sender: TObject);
begin
  RvProject1.Close;
  RvProject1.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Cargos_Detalhado.Rav';

  RvProject1.Open;

  RvProject1.Execute;

end;

end.
