unit U_StatusTur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_BusTur, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TFRM_STATUSTUR = class(TFRM_BUSTUR)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_STATUSTUR: TFRM_STATUSTUR;

implementation

uses UDM, U_CadTur;

{$R *.dfm}

procedure TFRM_STATUSTUR.GridDadosDblClick(Sender: TObject);
begin
   IF (CDSbusturSTATUS_TUR.AsString = 'C') AND
     (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSbustur.Edit;
       CDSbusturSTATUS_TUR.AsString := 'A';
       CDSbustur.Post;
       CDSbustur.ApplyUpdates(0);
     END
     ELSE IF (CDSbusturSTATUS_TUR.AsString = 'A') AND
             (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSbustur.Edit;
       CDSbusturSTATUS_TUR.AsString := 'C';
       CDSbustur.Post;
       CDSbustur.ApplyUpdates(0);
     END  ;

end;

end.
