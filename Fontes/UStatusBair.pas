unit UStatusBair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscaBair, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd;

type
  TFrmStatusBair = class(TFrmBuscaBair)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusBair: TFrmStatusBair;

implementation

{$R *.dfm}

procedure TFrmStatusBair.GridDadosDblClick(Sender: TObject);
begin
  If (CdsBaiSTATUS_BAI.AsString = 'C') and
     (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsBai.Edit;
      CdsBaiSTATUS_BAI.AsString := 'A';
      CdsBai.Post;
      CdsBai.ApplyUpdates(0);
    End
  Else If (CdsBaiSTATUS_BAI.AsString = 'A') and
          (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsBai.Edit;
      CdsBaiSTATUS_BAI.AsString := 'C';
      CdsBai.Post;
      CdsBai.ApplyUpdates(0);
    End;
end;

end.
