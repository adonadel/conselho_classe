unit U_CadOcoAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzButton, RzTabs,
  RzStatus, RzPanel, ExtCtrls, RzDBEdit, DBCtrls, RzDBBnEd;

type
  TFRM_CADALUOCO = class(TFRM_CADASTROS)
    Label1: TLabel;
    RzDBEdit1: TRzDBEdit;
    Label2: TLabel;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    Label4: TLabel;
    EditAlu: TRzDBButtonEdit;
    DBImage1: TDBImage;
    EditNome: TRzDBEdit;
    EditV: TRzDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditObs: TRzDBEdit;
    Label7: TLabel;
    RzDBEdit4: TRzDBEdit;
    Label8: TLabel;
    RzDBEdit5: TRzDBEdit;
    Label9: TLabel;
    RzDBEdit6: TRzDBEdit;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure EditAluAltBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADALUOCO: TFRM_CADALUOCO;

implementation

uses U_CadOco, U_Alunos, u_BusAlu, U_BusAuto;

{$R *.dfm}

procedure TFRM_CADALUOCO.BtCancelarClick(Sender: TObject);
begin
inherited;
  FRM_CADOCO.CDSaluoco.Cancel;
  close;
end;

procedure TFRM_CADALUOCO.BtGravarClick(Sender: TObject);
begin
  IF (TRIM(FRM_CADoco.CDSaluocoIDALU.AsString) = '') then
   BEGIN
    ShowMessage('Aluno Inválido...');
    EditAlu.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADoco.CDSaluocoVERSAO_ALUOCO.AsString) = '')  then
   BEGIN
    ShowMessage('Versão do aluno Inválida...');
    EditV.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADoco.CDSaluocoOBS_ALUOCO.AsString) = '')     then
   BEGIN
    ShowMessage('Observação Inválida...');
    EditObs.SetFocus;
    EXIT;
   END;


 FRM_CADoco.CDSaluocoSTATUS_ALUOCO.AsString := 'A';
 FRM_CADoco.CDSaluoco.Post;
 FRM_CADoco.CDSaluoco.ApplyUpdates(0);


 DesativaInclui;
 CLOSE;

end;

procedure TFRM_CADALUOCO.EditAluAltBtnClick(Sender: TObject);
begin
 Application.CreateForm(TFrmBuscaAlu,FrmBuscaAlu);
  //Setando a variavel quemchamou
  FrmBuscaAlu.QuemChamou := 'ALUOCO';

  FrmBuscaAlu.ShowModal;
  FrmBuscaAlu.Free;


      inherited;

end;

end.
