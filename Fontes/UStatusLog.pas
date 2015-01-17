unit UStatusLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscaLog, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd;

type
  TFrmStatusLog = class(TFrmBuscaLog)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusLog: TFrmStatusLog;

implementation

{$R *.dfm}

procedure TFrmStatusLog.GridDadosDblClick(Sender: TObject);
begin
  If (CdsTipoLogSTATUS_TIPOLOG.AsString = 'C') and
     (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsTipoLog.Edit;
      CdsTipoLogSTATUS_TIPOLOG.AsString := 'A';
      CdsTipoLog.Post;
      CdsTipoLog.ApplyUpdates(0);
    End
  Else If (CdsTipoLogSTATUS_TIPOLOG.AsString = 'A') and
          (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsTipoLog.Edit;
      CdsTipoLogSTATUS_TIPOLOG.AsString := 'C';
      CdsTipoLog.Post;
      CdsTipoLog.ApplyUpdates(0);
    End;
end;

end.
