unit UBuscaEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, Mask, StdCtrls, RpBase, RpSystem, RpCon, RpConDS,
  RpDefine, RpRave;

type
  TFrmBuscaEmp = class(TFrm_ModeloBusca)
    SqlEmpresaBusca: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    DSempresa: TDataSource;
    CdsEmpresaBusca: TClientDataSet;
    CdsEmpresaBuscaIDEMP: TIntegerField;
    CdsEmpresaBuscaCOMPEND_EMP: TStringField;
    CdsEmpresaBuscaNOMEFAN_EMP: TStringField;
    CdsEmpresaBuscaRAZAOSOC_EMP: TStringField;
    CdsEmpresaBuscaCNPJ_EMP: TStringField;
    CdsEmpresaBuscaINSCEST_EMP: TStringField;
    CdsEmpresaBuscaFONE_EMP: TStringField;
    CdsEmpresaBuscaSITE_EMP: TStringField;
    CdsEmpresaBuscaFAX_EMP: TStringField;
    CdsEmpresaBuscaEMAIL_EMP: TStringField;
    CdsEmpresaBuscaSTATUS_EMP: TStringField;
    CODINI: TLabeledEdit;
    CODFIM: TLabeledEdit;
    DESCR: TLabeledEdit;
    labcnpj: TLabel;
    cnpj: TMaskEdit;
    RaveProjeto: TRvProject;
    RaveConexao: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RzBitBtn1: TRzBitBtn;
    procedure GrupoFiltroChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaEmp: TFrmBuscaEmp;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UEmpresa;

{$R *.dfm}

procedure TFrmBuscaEmp.GrupoFiltroChange(Sender: TObject; Index: Integer;
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

  //Filtrando por Nome Empresa
  IF (GrupoFiltro.ItemChecked[1] =  TRUE) THEN
    BEGIN
      DESCR.Enabled := True;
    END
  ELSE
    BEGIN
      DESCR.Enabled  := False;
    END;

  //Filtrando por Cnpj
  IF (GrupoFiltro.ItemChecked[2] =  TRUE) THEN
    BEGIN
      labcnpj.Enabled    := True;
      cnpj.Enabled       := True;
    END;

end;

procedure TFrmBuscaEmp.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SqlEmpresaBusca.CommandText;
end;

procedure TFrmBuscaEmp.BtBuscarClick(Sender: TObject);
begin
  //MONTANDO A VARIAVEL QUE REPRESENTA A PARTE DO where NO SQL
  SqlFiltro := ' WHERE 1 = 1 ';

  IF (GrupoFiltro.ItemChecked[0] = TRUE) THEN
    BEGIN
         SQLFILTRO :=  SQLFILTRO + ' AND EMPRESA.IDEMP >= ' + QuotedStr(CODINI.Text) +  ' AND EMPRESA.IDEMP <= ' + QuotedStr(codfim.Text);
    END;

  IF (GrupoFiltro.ItemChecked[1] = TRUE) THEN
    BEGIN
             SQLFILTRO :=  SQLFILTRO + ' AND EMPRESA.NOMEFAN_EMP  LIKE ' + QuotedStr('%' + DESCR.Text + '%') ;
    END;
  IF (GrupoFiltro.ItemChecked[2] = TRUE) THEN
    BEGIN
             SQLFILTRO :=  SQLFILTRO + ' AND EMPRESA.CNPJ_EMP  LIKE ' + QuotedStr('%' + CNPJ.Text + '%');
    END;

  // Montar a Ordenação...

  IF (GrupoOrdem.ItemIndex = 0) THEN //POR CÓDIGO
    BEGIN
      SqlOrdem := ' ORDER BY EMPRESA.IDEMP ';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 1) THEN //NOMEFANTASIA
    BEGIN
      SqlOrdem := ' ORDER BY EMPRESA.NOMEFAN_EMP ';
    END
  ELSE IF (GrupoOrdem.ItemIndex = 2) THEN
    BEGIN
      SqlOrdem := ' ORDER BY EMPRESA.CNPJ_EMP ';
    END;

  //ADICIONAR A VARIAVEL DO FILTRO A QUEWSTÃO DA SITUACAO
  IF (GrupoSituacao.ItemIndex = 0) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND EMPRESA.STATUS_EMP = ' + QuotedStr('A');
    END
  ELSE IF (GrupoSituacao.ItemIndex = 1) THEN
    BEGIN
       SqlFiltro := SqlFiltro + ' AND EMPRESA.STATUS_EMP = ' + QuotedStr('C');
    END;



    //AGORA VAMOS MONTAR A CONSULTA A PARTIR DAS VARIAVEIS

    CdsEmpresaBusca.Close;
    SqlEmpresaBusca.Close;

    SqlEmpresaBusca.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SqlEmpresaBusca.Open;
    CdsEmpresaBusca.Open;

end;

procedure TFrmBuscaEmp.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  IF (QuemChamou = 'EMPRESA') THEN
    BEGIN
       FrmEmpresa.SqlEmpresa.ParamByName('PAREMP').AsInteger := CdsEmpresaBuscaIDEMP.AsInteger;
       CLOSE;
    END;
  IF (QuemChamou = 'VENDAS') THEN
    BEGIN

    END;

end;

procedure TFrmBuscaEmp.RzBitBtn1Click(Sender: TObject);
begin
 RaveProjeto.Close;
 RaveProjeto.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Empresa_Simples.rav';
 RaveProjeto.Open;

 RaveProjeto.Execute;
end;

end.
