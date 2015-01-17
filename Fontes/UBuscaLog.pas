unit UBuscaLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFrmBuscaLog = class(TFrm_ModeloBusca)
    SqlTipoLog: TSQLDataSet;
    SqlTipoLogIDTIPOLOG: TIntegerField;
    SqlTipoLogDESCRI_TIPOLOG: TStringField;
    SqlTipoLogSTATUS_TIPOLOG: TStringField;
    Provider: TDataSetProvider;
    CdsTipoLog: TClientDataSet;
    CdsTipoLogIDTIPOLOG: TIntegerField;
    CdsTipoLogDESCRI_TIPOLOG: TStringField;
    CdsTipoLogSTATUS_TIPOLOG: TStringField;
    DSTipoLog: TDataSource;
    CodIni: TLabeledEdit;
    CodFin: TLabeledEdit;
    Desc: TLabeledEdit;
    RaveProjeto: TRvProject;
    RvSystem1: TRvSystem;
    RaveConexao: TRvDataSetConnection;
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
  FrmBuscaLog: TFrmBuscaLog;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UTipoLogra;

{$R *.dfm}

procedure TFrmBuscaLog.GrupoFiltroChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  If (GrupoFiltro.ItemChecked[0] =  True) then
    Begin
      CodIni.Enabled := True;
      CodFin.Enabled := True;
    End
  Else
    Begin
      CodIni.Clear;
      CodFin.Clear;
      CodIni.Enabled := False;
      CodFin.Enabled := False;
    End;

  If (GrupoFiltro.ItemChecked[1] =  True) then
    Begin
      Desc.Enabled := True;
    End
  Else
    Begin
      Desc.Enabled  := False;
    End;
end;

procedure TFrmBuscaLog.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SqlTipoLog.CommandText;
end;

procedure TFrmBuscaLog.BtBuscarClick(Sender: TObject);
begin
  SqlFiltro := ' WHERE 1 = 1';
  
  If (GrupoFiltro.ItemChecked[0] = True) then
    Begin
         SQLFILTRO :=  SQLFILTRO + ' AND TIPOLOGRA.IDTIPOLOG >= ' + QuotedStr(CodIni.Text) +  ' AND TIPOLOGRA.IDTIPOLOG <= ' + QuotedStr(CodFin.Text);
    End;
  If (GrupoFiltro.ItemChecked[1] = True) then
    Begin
        SQLFILTRO :=  SQLFILTRO + ' AND TIPOLOGRA.DESCRI_TIPOLOG  LIKE ' + QuotedStr('%' + Desc.Text + '%') ;
    End;

  If (GrupoOrdem.ItemIndex = 0) then
    Begin
      SqlOrdem := ' ORDER BY TIPOLOGRA.IDTIPOLOG';
    End
  Else If (GrupoOrdem.ItemIndex = 1) then
    Begin
      SqlOrdem := ' ORDER BY TIPOLOGRA.DESCRI_TIPOLOG';
    End;

  If (GrupoSituacao.ItemIndex = 0) then
    Begin
       SqlFiltro := SqlFiltro + ' AND TIPOLOGRA.STATUS_TIPOLOG = ' + QuotedStr('A');
    End
  Else If (GrupoSituacao.ItemIndex = 1) then
    Begin
       SqlFiltro := SqlFiltro + ' AND TIPOLOGRA.STATUS_TIPOLOG = ' + QuotedStr('C');
    End;

    CdsTipoLog.Close;
    SqlTipoLog.Close;

    SqlTipoLog.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SqlTipoLog.Open;
    CdsTipoLog.Open;
end;

procedure TFrmBuscaLog.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  If (QuemChamou = 'LOG') then
    Begin
       FrmTipoLog.SqlTipoLog.ParamByName('PARLOG').AsInteger := CdsTipoLogIDTIPOLOG.AsInteger;
       Close;
    End;
end;

procedure TFrmBuscaLog.RzBitBtn1Click(Sender: TObject);
begin
 RaveProjeto.Close;
 RaveProjeto.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Logradouro_Simples.rav';
 RaveProjeto.Open;

 RaveProjeto.Execute;
end;

end.
