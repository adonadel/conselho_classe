unit UStatusEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscaEmp, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
  StdCtrls, ExtCtrls, RzButton, RzRadGrp, RzPanel, ComCtrls, Grids,
  DBGrids, RzDBGrid, RzBckgnd;

type
  TFrmStatusEmp = class(TFrmBuscaEmp)
    procedure GridDadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStatusEmp: TFrmStatusEmp;

implementation

{$R *.dfm}

procedure TFrmStatusEmp.GridDadosDblClick(Sender: TObject);
begin
  If (CdsEmpresaBuscaSTATUS_EMP.AsString = 'C') and
     (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsEmpresaBusca.Edit;
      CdsEmpresaBuscaSTATUS_EMP.AsString := 'A';
      CdsEmpresaBusca.Post;
      CdsEmpresaBusca.ApplyUpdates(0);
    End
  Else If (CdsEmpresaBuscaSTATUS_EMP.AsString = 'A') and
          (MessageDlg('Confirma a operação?', mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    Begin
      CdsEmpresaBusca.Edit;
      CdsEmpresaBuscaSTATUS_EMP.AsString := 'C';
      CdsEmpresaBusca.Post;
      CdsEmpresaBusca.ApplyUpdates(0);
    End;

end;

end.
