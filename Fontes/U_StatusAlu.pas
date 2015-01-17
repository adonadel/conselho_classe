unit U_StatusAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, u_BusAlu, FMTBcd, DBClient, DB, Provider, SqlExpr, StdCtrls,
  ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids, DBGrids,
  RzDBGrid, RzBckgnd, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  TF_StatusAlu = class(TFrmBuscaAlu)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_StatusAlu: TF_StatusAlu;

implementation

{$R *.dfm}

procedure TF_StatusAlu.GridDadosDblClick(Sender: TObject);
begin
  IF (CDSAlunosSTATUS_ALU.AsString = 'C') AND
     (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSAlunos.Edit;
       CDSAlunosSTATUS_ALU.AsString := 'A';
       CDSAlunos.Post;
       CDSAlunos.ApplyUpdates(0);
     END
     ELSE IF (CDSAlunosSTATUS_ALU.AsString = 'A') AND
             (MessageDlg('CONFIRMAR A OPERAÇÃO ?',mtConfirmation,[MBYES,MBNO],0) = MRYES) THEN
     BEGIN
       CDSAlunos.Edit;
       CDSAlunosSTATUS_ALU.AsString := 'C';
       CDSAlunos.Post;
       CDSAlunos.ApplyUpdates(0);
     END;

end;


end.
