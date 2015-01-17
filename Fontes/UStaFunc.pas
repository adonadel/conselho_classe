unit UStaFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBusFunc, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFrm_StaFunc = class(TFrm_BusFunc)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_StaFunc: TFrm_StaFunc;

implementation

{$R *.dfm}

procedure TFrm_StaFunc.GridDadosDblClick(Sender: TObject);
begin
   if (CDSBusFuncSTATUS_FUNC.AsString = 'C') and
   (MessageDlg('Confirma a operação ?', mtConfirmation,[mbYes,mbNo],0)= MRYES) then
   begin
     CDSBusFunc.Edit;
     CDSBusFuncSTATUS_FUNC.AsString := 'A';
     CDSBusFunc.Post;
     CDSBusFunc.ApplyUpdates(0);
   end
  else if (CDSBusFuncSTATUS_FUNC.AsString = 'A') and
   (MessageDlg('Confirma a operação ?', mtConfirmation,[mbYes,mbNo],0)= MRYES)then
   begin
     CDSBusFunc.Edit;
     CDSBusFuncSTATUS_FUNC.AsString := 'C';
     CDSBusFunc.Post;
     CDSBusFunc.ApplyUpdates(0);
   end;

end;

end.
