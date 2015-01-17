unit UstaCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBusCargos, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpRave, RpBase, RpSystem, RpDefine, RpCon, RpConDS;

type
  TFrm_StaCargos = class(TFrm_BusCargos)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_StaCargos: TFrm_StaCargos;

implementation

{$R *.dfm}

procedure TFrm_StaCargos.GridDadosDblClick(Sender: TObject);
begin
  if (CDSBusCargosSTATUS_CAR.AsString = 'C') and
   (MessageDlg('Confirma a operação ?', mtConfirmation,[mbYes,mbNo],0)= MRYES) then
   begin
     CDSBusCargos.Edit;
     CDSBusCargosSTATUS_CAR.AsString := 'A';
     CDSBusCargos.Post;
     CDSBusCargos.ApplyUpdates(0);
   end
  else if (CDSBusCargosSTATUS_CAR.AsString = 'A') and
   (MessageDlg('Confirma a operação ?', mtConfirmation,[mbYes,mbNo],0)= MRYES)then
   begin
     CDSBusCargos.Edit;
     CDSBusCargosSTATUS_CAR.AsString := 'C';
     CDSBusCargos.Post;
     CDSBusCargos.ApplyUpdates(0);
   end;

end;

end.
