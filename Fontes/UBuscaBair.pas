unit UBuscaBair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmModeloBusca, RzButton, RzRadGrp, RzPanel, ExtCtrls,
  ComCtrls, Grids, DBGrids, RzDBGrid, RzBckgnd, FMTBcd, DB, DBClient,
  Provider, SqlExpr, StdCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TFrmBuscaBair = class(TFrm_ModeloBusca)
    SqlBai: TSQLDataSet;
    SqlBaiIDBAI: TIntegerField;
    SqlBaiNOME_BAI: TStringField;
    SqlBaiSTATUS_BAI: TStringField;
    Provider: TDataSetProvider;
    CdsBai: TClientDataSet;
    CdsBaiIDBAI: TIntegerField;
    CdsBaiNOME_BAI: TStringField;
    CdsBaiSTATUS_BAI: TStringField;
    DSBai: TDataSource;
    CodIni: TLabeledEdit;
    CodFin: TLabeledEdit;
    Nome: TLabeledEdit;
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
  FrmBuscaBair: TFrmBuscaBair;

implementation

uses UBairros;

{$R *.dfm}

procedure TFrmBuscaBair.GrupoFiltroChange(Sender: TObject; Index: Integer;
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
      Nome.Enabled := True;
    End
  Else
    Begin
      Nome.Enabled  := False;
    End;
end;

procedure TFrmBuscaBair.FormCreate(Sender: TObject);
begin
  inherited;
  SqlOriginal := SqlBai.CommandText;
end;

procedure TFrmBuscaBair.BtBuscarClick(Sender: TObject);
begin
  SqlFiltro := ' WHERE 1 = 1 ';

  If (GrupoFiltro.ItemChecked[0] = True) then
    Begin
         SQLFILTRO :=  SQLFILTRO + ' AND BAIRROS.IDBAI >= ' + QuotedStr(CodIni.Text) +  ' AND BAIRROS.IDBAI <= ' + QuotedStr(CodFin.Text);
    End;
  If (GrupoFiltro.ItemChecked[1] = True) then
    Begin
        SQLFILTRO :=  SQLFILTRO + ' AND BAIRROS.NOME_BAI  LIKE ' + QuotedStr('%' + Nome.Text + '%') ;
    End;

  If (GrupoOrdem.ItemIndex = 0) then
    Begin
      SqlOrdem := ' ORDER BY BAIRROS.IDBAI ';
    End
  Else If (GrupoOrdem.ItemIndex = 1) then
    Begin
      SqlOrdem := ' ORDER BY BAIRROS.NOME_BAI ';
    End;

  If (GrupoSituacao.ItemIndex = 0) then
    Begin
       SqlFiltro := SqlFiltro + ' AND BAIRROS.STATUS_BAI = ' + QuotedStr('A');
    End
  Else If (GrupoSituacao.ItemIndex = 1) then
    Begin
       SqlFiltro := SqlFiltro + ' AND BAIRROS.STATUS_BAI = ' + QuotedStr('C');
    End;

    CdsBai.Close;
    SqlBai.Close;

    SqlBai.CommandText := SqlOriginal + SqlFiltro + SqlOrdem ;

    SqlBai.Open;
    CdsBai.Open;
end;

procedure TFrmBuscaBair.GridDadosDblClick(Sender: TObject);
begin
  inherited;
  If (QuemChamou = 'BAIRROS') then
    Begin
       FrmBairros.SqlBai.ParamByName('PARBAI').AsInteger := CdsBaiIDBAI.AsInteger;
       Close;
    End;
end;

procedure TFrmBuscaBair.RzBitBtn1Click(Sender: TObject);
begin
 RaveProjeto.Close;
 RaveProjeto.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_Bairro_Simples.rav';
 RaveProjeto.Open;

 RaveProjeto.Execute;
end;

end.
