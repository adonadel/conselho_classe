unit UCadRelTurAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, RzDBLbl, RzDBBnEd, RzLabel, RzDBEdit,
  DBCtrls;

type
  TFRM_RelTurAlu = class(TFRM_Cadastros)
    Label1: TLabel;
    DBNomeAlu: TRzDBEdit;
    RzLabel1: TRzLabel;
    DBIDTurma: TRzDBButtonEdit;
    RzLabel2: TRzLabel;
    DBTurma: TRzDBEdit;
    DBAno: TRzDBEdit;
    DBTurno: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBObs: TRzDBEdit;
    Label4: TLabel;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RelTurAlu: TFRM_RelTurAlu;

implementation

uses U_Alunos;

{$R *.dfm}

procedure TFRM_RelTurAlu.BtCancelarClick(Sender: TObject);
begin
  inherited;
  F_Aluno.CDSRelTurmas.Cancel;
  Close;
end;

procedure TFRM_RelTurAlu.BtGravarClick(Sender: TObject);
begin
  IF (TRIM(F_Aluno.CDSRelTurmasNUM_TUR.AsString) = '') THEN
   BEGIN
    ShowMessage('Número Turma Inválido...');
    DBIDTurma.SetFocus;
    EXIT;
   END;

 F_Aluno.CDSRelTurmas.Post;
 F_Aluno.CDSRelTurmas.ApplyUpdates(0);


 DesativaInclui;
 Close;
 inherited;

end;

end.
