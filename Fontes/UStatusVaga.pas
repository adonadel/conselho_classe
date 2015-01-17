unit UStatusVaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscaVaga, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd;

type
  TFrmStatusVaga = class(TFrmBuscaVaga)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusVaga: TFrmStatusVaga;

implementation

{$R *.dfm}

procedure TFrmStatusVaga.GridDadosDblClick(Sender: TObject);
begin
  If (CdsVagaSTATUS_VAGA.AsString = 'C') and
     (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsVaga.Edit;
      CdsVagaSTATUS_VAGA.AsString := 'A';
      CdsVaga.Post;
      CdsVaga.ApplyUpdates(0);
    End
  Else If (CdsVagaSTATUS_VAGA.AsString = 'A') and
          (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsVaga.Edit;
      CdsVagaSTATUS_VAGA.AsString := 'C';
      CdsVaga.Post;
      CdsVaga.ApplyUpdates(0);
    End;
end;

end.
