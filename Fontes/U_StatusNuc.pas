unit U_StatusNuc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_BusNuc, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFRM_STATUSNUC = class(TFRM_BUSNUC)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_STATUSNUC: TFRM_STATUSNUC;

implementation

{$R *.dfm}

procedure TFRM_STATUSNUC.GridDadosDblClick(Sender: TObject);
begin
  IF (CDSNucleosBusSTATUS_NUC.AsString = 'C') AND
     (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSNucleosBus.Edit;
       CDSNucleosBusSTATUS_NUC.AsString := 'A';
       CDSNucleosBus.Post;
       CDSNucleosBus.ApplyUpdates(0);
     END
     ELSE IF (CDSNucleosBusSTATUS_NUC.AsString = 'A') AND
             (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSNucleosBus.Edit;
       CDSNucleosBusSTATUS_NUC.AsString := 'C';
       CDSNucleosBus.Post;
       CDSNucleosBus.ApplyUpdates(0);
     END  ;

end;

end.
