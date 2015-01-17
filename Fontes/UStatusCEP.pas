unit UStatusCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscaCep, FMTBcd, DB, DBClient, Provider, SqlExpr, RzEdit,
  StdCtrls, Mask, RzButton, RzRadGrp, RzPanel, RzLabel, ExtCtrls, ComCtrls,
  Grids, DBGrids, RzDBGrid, RzBckgnd;

type
  TFrmStatusCEP = class(TFrmBuscaCep)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusCEP: TFrmStatusCEP;

implementation

{$R *.dfm}

procedure TFrmStatusCEP.GridDadosDblClick(Sender: TObject);
begin
  If (CdsCepSTATUS_CEP.AsString = 'C') and
     (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsCep.Edit;
      CdsCepSTATUS_CEP.AsString := 'A';
      CdsCep.Post;
      CdsCep.ApplyUpdates(0);
    End
  Else If (CdsCepSTATUS_CEP.AsString = 'A') and
          (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsCep.Edit;
      CdsCepSTATUS_CEP.AsString := 'C';
      CdsCep.Post;
      CdsCep.ApplyUpdates(0);
    End;
end;

end.
