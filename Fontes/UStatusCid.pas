unit UStatusCid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscaCid, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd;

type
  TFrmStatusCid = class(TFrmBuscaCidades)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusCid: TFrmStatusCid;

implementation

{$R *.dfm}

procedure TFrmStatusCid.GridDadosDblClick(Sender: TObject);
begin
  If (CdsCidSTATUS_CID.AsString = 'C') and
     (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsCid.Edit;
      CdsCidSTATUS_CID.AsString := 'A';
      CdsCid.Post;
      CdsCid.ApplyUpdates(0);
    End
  Else If (CdsCidSTATUS_CID.AsString = 'A') and
          (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsCid.Edit;
      CdsCidSTATUS_CID.AsString := 'C';
      CdsCid.Post;
      CdsCid.ApplyUpdates(0);
    End;
end;

end.
