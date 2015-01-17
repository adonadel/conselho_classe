unit UBuscaCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, StdCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, RzEdit, RzDBLbl, RzLabel, Mask, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFrmBuscaCep = class(TFrm_ModeloBusca)
    SqlCep: TSQLDataSet;
    SqlCepIDCEP: TStringField;
    SqlCepIDCID: TIntegerField;
    SqlCepIDBAI: TIntegerField;
    SqlCepIDTIPOLOG: TIntegerField;
    SqlCepLOGRA_CEP: TStringField;
    SqlCepSTATUS_CEP: TStringField;
    SqlCepNOME_BAI: TStringField;
    SqlCepNOME_CID: TStringField;
    SqlCepUF_CID: TStringField;
    SqlCepDESCRI_TIPOLOG: TStringField;
    Provider: TDataSetProvider;
    CdsCep: TClientDataSet;
    CdsCepIDCEP: TStringField;
    CdsCepIDCID: TIntegerField;
    CdsCepIDBAI: TIntegerField;
    CdsCepIDTIPOLOG: TIntegerField;
    CdsCepLOGRA_CEP: TStringField;
    CdsCepSTATUS_CEP: TStringField;
    CdsCepNOME_BAI: TStringField;
    CdsCepNOME_CID: TStringField;
    CdsCepUF_CID: TStringField;
    CdsCepDESCRI_TIPOLOG: TStringField;
    DSCeps: TDataSource;
    CodCep: TRzMaskEdit;
    LblCep: TRzLabel;
    NomeLog: TRzEdit;
    LblLog: TRzLabel;
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
  FrmBuscaCep: TFrmBuscaCep;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UCEP;

{$R *.dfm}

procedure TFrmBuscaCep.GrupoFiltroChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  If (GrupoFiltro.ItemChecked[0] =  True) then
    Begin
      CodCEP.Enabled := True;
      LblCep.Enabled := True;
    End
  Else
    Begin
      CodCEP.Clear;
      CodCEP.Enabled := False;
      LblCep.Enabled := False;
    End;

  If (GrupoFiltro.ItemChecked[1] =  True) then
    Begin
      NomeLog.Enabled := True;
      LblLog.Enabled  := True;
    End
  Else
    Begin
      NomeLog.Enabled  := False;
      LblLog.Enabled   := False;;
    End;
end;

procedure TFrmBuscaCep.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SqlCep.CommandText;
end;

procedure TFrmBuscaCep.BtBuscarClick(Sender: TObject);
begin
  SqlFiltro := ' WHERE 1 = 1 ';

  If (GrupoFiltro.ItemChecked[0] = True) then
    Begin
         SQLFILTRO :=  SQLFILTRO + ' AND CEPS.IDCEP LIKE ' + QuotedStr('%' + CodCEP.Text + '%');
    End;
  If (GrupoFiltro.ItemChecked[1] = True) then
    Begin
        SQLFILTRO :=  SQLFILTRO + ' AND CEPS.LOGRA_CEP  LIKE ' + QuotedStr('%' + NomeLog.Text + '%') ;
    End;

  If (GrupoOrdem.ItemIndex = 0) then
    Begin
      SqlOrdem := ' ORDER BY CEPS.IDCEP ';
    End
  Else If (GrupoOrdem.ItemIndex = 1) then
    Begin
      SqlOrdem := ' ORDER BY CEPS.LOGRA_CEP ';
    End;

  If (GrupoSituacao.ItemIndex = 0) then
    Begin
       SqlFiltro := SqlFiltro + ' AND CEPS.STATUS_CEP = ' + QuotedStr('A');
    End
  Else If (GrupoSituacao.ItemIndex = 1) then
    Begin
       SqlFiltro := SqlFiltro + ' AND CEPS.STATUS_CEP = ' + QuotedStr('C');
    End;

    CdsCep.Close;
    SqlCep.Close;

    SqlCep.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SqlCep.Open;
    CdsCep.Open;
end;

procedure TFrmBuscaCep.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  If (QuemChamou = 'CEPS') then
    Begin
       Frm_Cep.SqlCep.ParamByName('PARCEP').AsInteger := CdsCepIDCEP.AsInteger;
       Close;
    End;
end;

procedure TFrmBuscaCep.RzBitBtn1Click(Sender: TObject);
begin
 RaveProjeto.Close;
 RaveProjeto.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_CEP_Simples.rav';
 RaveProjeto.Open;

 RaveProjeto.Execute;
end;

end.
