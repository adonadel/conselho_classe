unit UBusFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpBase, RpSystem, RpCon, RpConDS, RpDefine,
  RpRave;

type
  TFrm_BusFunc = class(TFrm_ModeloBusca)
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    NOME: TLabeledEdit;
    CPF: TLabeledEdit;
    CIDADE: TLabeledEdit;
    SQLbusFunc: TSQLDataSet;
    Providerbus: TDataSetProvider;
    CDSbusFunc: TClientDataSet;
    DSbusFunc: TDataSource;
    btnImprimir: TRzBitBtn;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    SQLbusFuncIDFUNC: TIntegerField;
    SQLbusFuncIDCEP: TStringField;
    SQLbusFuncNOME_FUNC: TStringField;
    SQLbusFuncDATANASC_FUNC: TDateField;
    SQLbusFuncCPF_FUNC: TStringField;
    SQLbusFuncRG_FUNC: TStringField;
    SQLbusFuncNACIO_FUNC: TStringField;
    SQLbusFuncNATUR_FUNC: TStringField;
    SQLbusFuncSEXO_FUNC: TStringField;
    SQLbusFuncEMAIL_FUNC: TStringField;
    SQLbusFuncOBS_FUNC: TStringField;
    SQLbusFuncDATACAD_FUNC: TDateField;
    SQLbusFuncSTATUS_FUNC: TStringField;
    SQLbusFuncLOGRA_CEP: TStringField;
    SQLbusFuncDESCRI_TIPOLOG: TStringField;
    SQLbusFuncNOME_CID: TStringField;
    SQLbusFuncUF_CID: TStringField;
    SQLbusFuncNOME_BAI: TStringField;
    CDSbusFuncIDFUNC: TIntegerField;
    CDSbusFuncIDCEP: TStringField;
    CDSbusFuncNOME_FUNC: TStringField;
    CDSbusFuncDATANASC_FUNC: TDateField;
    CDSbusFuncCPF_FUNC: TStringField;
    CDSbusFuncRG_FUNC: TStringField;
    CDSbusFuncNACIO_FUNC: TStringField;
    CDSbusFuncNATUR_FUNC: TStringField;
    CDSbusFuncSEXO_FUNC: TStringField;
    CDSbusFuncEMAIL_FUNC: TStringField;
    CDSbusFuncOBS_FUNC: TStringField;
    CDSbusFuncDATACAD_FUNC: TDateField;
    CDSbusFuncSTATUS_FUNC: TStringField;
    CDSbusFuncLOGRA_CEP: TStringField;
    CDSbusFuncDESCRI_TIPOLOG: TStringField;
    CDSbusFuncNOME_CID: TStringField;
    CDSbusFuncUF_CID: TStringField;
    CDSbusFuncNOME_BAI: TStringField;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure bTbUSCARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure GridDadosDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_BusFunc: TFrm_BusFunc;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UCadFunc;

{$R *.dfm}

procedure TFrm_BusFunc.bTbUSCARClick(Sender: TObject);
begin
  inherited;
  
  //MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := 'WHERE 1 = 1';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
         SqlFiltro :=  SQLFILTRO + ' AND FUNCIONARIO.IDFUNC >= ' + QuotedStr(CODINI.Text) +  ' AND FUNCIONARIO.IDFUNC <= ' + QuotedStr(CODFIM.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
             SqlFiltro :=  SQLFILTRO + ' AND FUNCIONARIO.NOME_FUNC  LIKE ' + QuotedStr('%' + NOME.Text + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
             SqlFiltro :=  SQLFILTRO + ' AND FUNCIONARIO.CPF_FUNC  LIKE ' + QuotedStr('%' + CPF.Text + '%');
    END;

  IF (GrupoFiltro.ItemChecked[3] = TRUE) THEN
    BEGIN
             SQLFILTRO :=  SqlFiltro + ' AND CIDADES.NOME_CID  LIKE ' + QuotedStr('%' + CIDADE.Text + '%');
    END;

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
      SqlOrdem := ' ORDER BY FUNCIONARIO.IDFUNC';

    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOMEFANTASIA
    BEGIN
      SqlOrdem := ' ORDER BY FUNCIONARIO.NOME_FUNC';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN
      SqlOrdem := ' ORDER BY FUNCIONARIO.CPF_FUNC';
    END
  ELSE
    BEGIN
      SqlOrdem := ' ORDER BY CIDADES.NOME_CID,FUNCIONARIO.NOME_FUNC';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND FUNCIONARIO.STATUS_FUNC = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND FUNCIONARIO.STATUS_FUNC = ' + QuotedStr('C');
    END;



    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CDSbusFunc.Close;
    SQLbusFunc.Close;

    SQLbusFunc.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SQLbusFunc.Open;
    CDSbusFunc.Open;

end;

procedure TFrm_BusFunc.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SQLBusFunc.CommandText;
end;

procedure TFrm_BusFunc.GrupoFiltroChange(Sender: TObject; Index: Integer;
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

  //Filtrando por Nome Fantasia
  IF (GrupoFiltro.ItemChecked[1] =  TRUE) THEN
    BEGIN
      NOME.Enabled := True;
    END
  ELSE
    BEGIN
      NOME.Enabled  := False;
    END;

  //Filtrando por CPF
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN

      CPF.Enabled        := True;

    END
  ELSE IF (GrupoFiltro.ItemChecked[2] =  FALSE) THEN
    BEGIN
      CPF.Enabled     := False;
      CPF.Clear;
    END;
  //Filtrando por Cnpj
  IF (GrupoFiltro.ItemChecked[3] =  TRUE) THEN
    BEGIN
      CIDADE.Enabled := true;
    END
  ELSE IF (GrupoFiltro.ItemChecked[3] =  FALSE) THEN
    BEGIN
      cidade.Enabled := false;
      cidade.Clear;
    END;
end;

procedure TFrm_BusFunc.GridDadosDblClick(Sender: TObject);
begin
  inherited;
   IF (QuemChamou = 'FUNC') THEN
    BEGIN
       FRM_CadFunc.SQLFunc.ParamByName('PARFUN').AsInteger := CDSBusFuncIDFUNC.AsInteger;
       CLOSE;
    END;
  IF (QuemChamou = 'HORARIOS') THEN
    BEGIN

    END;
end;

procedure TFrm_BusFunc.btnImprimirClick(Sender: TObject);
begin
  inherited;
  RvProject1.Close;
  RvProject1.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Funcionarios_Detalhado.Rav';

  RvProject1.Open;

  RvProject1.Execute;
end;

end.
