unit U_StatusDis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_BusDis, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFRM_STATUSDIS = class(TFRM_BUSDIS)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_STATUSDIS: TFRM_STATUSDIS;

implementation

{$R *.dfm}

procedure TFRM_STATUSDIS.GridDadosDblClick(Sender: TObject);
begin
  IF (CDSdisBusSTATUS_DISC.AsString = 'C') AND
     (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSdisBus.Edit;
       CDSdisBusSTATUS_DISC.AsString := 'A';
       CDSdisBus.Post;
       CDSdisBus.ApplyUpdates(0);
     END
     ELSE IF (CDSdisBusSTATUS_DISC.AsString = 'A') AND
             (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSdisBus.Edit;
       CDSdisBusSTATUS_DISC.AsString := 'C';
       CDSdisBus.Post;
       CDSdisBus.ApplyUpdates(0);
     END  ;

end;

end.
