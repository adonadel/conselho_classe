unit UBuscaCid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, StdCtrls, FMTBcd, DB,
  DBClient, Provider, SqlExpr, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFrmBuscaCidades = class(TFrm_ModeloBusca)
    CodIni: TLabeledEdit;
    CodFin: TLabeledEdit;
    Nome: TLabeledEdit;
    UF: TLabeledEdit;
    SqlCid: TSQLDataSet;
    SqlCidIDCID: TIntegerField;
    SqlCidNOME_CID: TStringField;
    SqlCidSTATUS_CID: TStringField;
    SqlCidUF_CID: TStringField;
    Provider: TDataSetProvider;
    CdsCid: TClientDataSet;
    CdsCidIDCID: TIntegerField;
    CdsCidNOME_CID: TStringField;
    CdsCidSTATUS_CID: TStringField;
    CdsCidUF_CID: TStringField;
    DSCid: TDataSource;
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
  FrmBuscaCidades: TFrmBuscaCidades;
  SqlOriginal, SqlFiltro, SqlOrdem : String;

implementation

uses UCidades;

{$R *.dfm}

procedure TFrmBuscaCidades.GrupoFiltroChange(Sender: TObject;
  Index: Integer; NewState: TCheckBoxState);
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
      Nome.Enabled := True;
    End
  Else
    Begin
      Nome.Enabled  := False;
    End;

  If (GrupoFiltro.ItemChecked[2] =  True) then
    Begin
      UF.Enabled := True;
    End
  Else
    Begin
      UF.Enabled  := False;
    End;
end;

procedure TFrmBuscaCidades.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SqlCid.CommandText;
end;

procedure TFrmBuscaCidades.BtBuscarClick(Sender: TObject);
begin
  SqlFiltro := 'WHERE 1 = 1';

  If (GrupoFiltro.ItemChecked[0] = True) then
    Begin
         SQLFILTRO :=  SQLFILTRO + ' AND CIDADES.IDCID >= ' + QuotedStr(CodIni.Text) +  ' AND CIDADES.IDCID <= ' + QuotedStr(CodFin.Text);
    End;
  If (GrupoFiltro.ItemChecked[1] = True) then
    Begin
        SQLFILTRO :=  SQLFILTRO + ' AND CIDADES.NOME_CID  LIKE ' + QuotedStr('%' + Nome.Text + '%') ;
    End;
  If (GrupoFiltro.ItemChecked[2] = True) then
    Begin
        SQLFILTRO :=  SQLFILTRO + ' AND CIDADES.UF_CID  LIKE ' + QuotedStr('%' + UF.Text + '%') ;
    End;

  If (GrupoOrdem.ItemIndex = 0) then
    Begin
      SqlOrdem := ' ORDER BY CIDADES.IDCID';
    End
  Else If (GrupoOrdem.ItemIndex = 1) then
    Begin
      SqlOrdem := ' ORDER BY CIDADES.NOME_CID';
    End
  Else If (GrupoOrdem.ItemIndex = 2) then
    Begin
      SqlOrdem := ' ORDER BY CIDADES.UF_CID';
    End;

  If (GrupoSituacao.ItemIndex = 0) then
    Begin
       SqlFiltro := SqlFiltro + ' AND CIDADES.STATUS_CID = ' + QuotedStr('A');
    End
  Else If (GrupoSituacao.ItemIndex = 1) then
    Begin
       SqlFiltro := SqlFiltro + ' AND CIDADES.STATUS_CID = ' + QuotedStr('C');
    End;

    CdsCid.Close;
    SqlCid.Close;

    SqlCid.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SqlCid.Open;
    CdsCid.Open;
end;

procedure TFrmBuscaCidades.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  If (QuemChamou = 'CIDADES') then
    Begin
       FrmCidades.SqlCid.ParamByName('PARCID').AsInteger := CdsCidIDCID.AsInteger;
       Close;
    End;
end;

procedure TFrmBuscaCidades.RzBitBtn1Click(Sender: TObject);
begin
 RaveProjeto.Close;
 RaveProjeto.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Cidade_Simples.rav';
 RaveProjeto.Open;

 RaveProjeto.Execute;
end;

end.
