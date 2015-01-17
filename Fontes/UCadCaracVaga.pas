unit UCadCaracVaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, RzDBBnEd, RzDBEdit, RzLabel;

type
  TFrmCadCaracVaga = class(TFRM_Cadastros)
    Label1: TLabel;
    DBdescVaga: TRzDBEdit;
    DBcodVaga: TRzDBButtonEdit;
    DBcodCurso: TRzDBButtonEdit;
    DBdescCurso: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCaracVaga: TFrmCadCaracVaga;

implementation

uses UCadVaga;

{$R *.dfm}

procedure TFrmCadCaracVaga.BtGravarClick(Sender: TObject);
begin
  IF (TRIM(FrmCadVaga.CdsVagCursoDESCRICAO_CUR.AsString) = '') OR
     (TRIM(FrmCadVaga.CdsVagaDESCRI_VAGA.AsString) = '') THEN
   BEGIN
    ShowMessage('Vaga ou Curso Inválidos...');
    DBcodVaga.SetFocus;
    EXIT;
   END;


 FrmCadVaga.CdsVagCurso.Post;
 FrmCadVaga.CdsVagCurso.ApplyUpdates(0);

 DesativaInclui;
 CLOSE;
end;

procedure TFrmCadCaracVaga.BtCancelarClick(Sender: TObject);
begin
  inherited;
  FrmCadVaga.CdsVagCurso.Cancel;
  FrmCadCaracVaga.Close;
end;

end.
