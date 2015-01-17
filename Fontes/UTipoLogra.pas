unit UTipoLogra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls,
  Mask, RzEdit, RzBtnEdt, RzTabs, RzButton, RzStatus, RzPanel, ExtCtrls,
  RzDBEdit;

type
  TFrmTipoLog = class(TFRM_Cadastros)
    SqlTipoLog: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsTipoLog: TClientDataSet;
    SqlTipoLogIDTIPOLOG: TIntegerField;
    SqlTipoLogDESCRI_TIPOLOG: TStringField;
    SqlTipoLogSTATUS_TIPOLOG: TStringField;
    CdsTipoLogIDTIPOLOG: TIntegerField;
    CdsTipoLogDESCRI_TIPOLOG: TStringField;
    CdsTipoLogSTATUS_TIPOLOG: TStringField;
    DSTipoLog: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBEDescTipoLog: TRzDBEdit;
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoLog: TFrmTipoLog;

implementation

uses UDM, UBuscaLog, UStatusLog;

{$R *.dfm}

procedure TFrmTipoLog.BtNovoClick(Sender: TObject);
begin
  Try
    CdsTipoLog.Close;
    SqlTipoLog.Close;

    SqlTipoLog.ParamByName('PARLOG').AsInteger := 0 ;

    SqlTipoLog.Open;
    CdsTipoLog.Open;

    CdsTipoLog.Append;

    CdsTipoLogSTATUS_TIPOLOG.AsString := 'A';

    DM.SqlAux.Close;
    DM.SqlAux.CommandText := '';
    DM.SqlAux.CommandText := ' SELECT MAX(TIPOLOGRA.IDTIPOLOG) FROM TIPOLOGRA';
    DM.SqlAux.Open;
    CdsTipoLogIDTIPOLOG.AsInteger :=  DM.SqlAux.FIELDBYNAME('MAX').AsInteger + 1 ;
    BuscaRapida.Text              :=  IntToStr(CdsTipoLogIDTIPOLOG.AsInteger);

  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   Exit;
  End;

  inherited;
  FocusControl(DBEDescTipoLog);
end;

procedure TFrmTipoLog.BtCancelarClick(Sender: TObject);
begin
  CdsTipoLog.Cancel;

  CdsTipoLog.Close;
  SqlTipoLog.Close;

  inherited;
end;

procedure TFrmTipoLog.BtGravarClick(Sender: TObject);
begin
  If (Trim(CdsTipoLogDESCRI_TIPOLOG.AsString) = '') Then
    Begin
      ShowMessage('Atributo Obrigatório!');
      DBEDescTipoLog.SetFocus;
      Exit;
    End;

  Try
    CdsTipoLog.Post;
    CdsTipoLog.ApplyUpdates(0);
  Except
    Showmessage('Erro de Gravação');
    DBEDescTipoLog.SetFocus;
    Exit;
  End;

  inherited;

  CdsTipoLog.Close;
  SqlTipoLog.Close;
end;

procedure TFrmTipoLog.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
  BtNovo.Click;
end;

procedure TFrmTipoLog.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If ( Key = VK_Return ) Then
   Begin
      If ( Trim(BuscaRapida.Text) = '' ) Then
        Begin
           BtNovo.Click;
        End
      Else
        Begin
           DM.SqlAux.Close;
           DM.SqlAux.CommandText := '';
           DM.SqlAux.CommandText := ' SELECT' +
                                    ' TIPOLOGRA.IDTIPOLOG, '+
                                    ' TIPOLOGRA.STATUS_TIPOLOG '+
                                    ' FROM TIPOLOGRA '+
                                    ' WHERE TIPOLOGRA.IDTIPOLOG = :PARBUSTIPO' ;
           DM.SqlAux.ParamByName('PARBUSTIPO').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SqlAux.FieldByName('IDTIPOLOG').AsInteger > 0) Then
             Begin
                If (DM.SqlAux.FieldByName('STATUS_TIPOLOG').AsString = 'A') Then
                  Begin
                      CdsTipoLog.Close;
                      SqlTipoLog.Close;
                      SqlTipoLog.ParamByName('PARLOG').AsInteger := StrToInt(BuscaRapida.Text);
                      SqlTipoLog.Open;
                      CdsTipoLog.Open;

                      CdsTipoLog.Edit;

                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Logradouro Desativado!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;
             End
           Else
             Begin
                ShowMessage('Logradouro Inexistente!');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;
        End;
   End;
end;

procedure TFrmTipoLog.BtBuscarClick(Sender: TObject);
begin
  SqlTipoLog.ParamByName('PARLOG').AsInteger := 0;

  Application.CreateForm(TFrmBuscaLog,FrmBuscaLog);

  FrmBuscaLog.QuemChamou := 'LOG';

  FrmBuscaLog.ShowModal;
  FrmBuscaLog.Free;

  If (SqlTipoLog.ParamByName('PARLOG').AsInteger <> 0) then
    Begin
      SqlTipoLog.Open;
      CdsTipoLog.Open;

      CdsTipoLog.Edit;
      BuscaRapida.Text := IntToStr(CdsTipoLogIDTIPOLOG.ASINTEGER);
      inherited;
    End;
end;

procedure TFrmTipoLog.BtStatusClick(Sender: TObject);
begin
   Application.CreateForm(TFrmStatusLog, FrmStatusLog);
   FrmStatusLog.ShowModal;
   FrmStatusLog.free;
end;

end.
