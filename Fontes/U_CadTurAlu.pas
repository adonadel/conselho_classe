unit U_CadTurAlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzButton, RzTabs,
  RzStatus, RzPanel, ExtCtrls, RzDBEdit, RzDBBnEd;

type
  TFRM_CADTURALU = class(TFRM_CADASTROS)
    Label1: TLabel;
    EditTur: TRzDBEdit;
    EditAlu: TRzDBButtonEdit;
    Alunos: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditData: TRzDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditHora: TRzDBEdit;
    EditObs: TRzDBEdit;
    Label6: TLabel;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure EditAluAltBtnClick(Sender: TObject);
    procedure EditAluButtonClick(Sender: TObject);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADTURALU: TFRM_CADTURALU;

implementation

uses UDM, U_CadTur, U_Alunos, u_BusAlu, U_BusNuc, U_BusCur, U_BusTurAlu;

{$R *.dfm}

procedure TFRM_CADTURALU.BtCancelarClick(Sender: TObject);
begin
  inherited;
  FRM_CADTUR.CDSturalu.Cancel;
  close;

end;

procedure TFRM_CADTURALU.BtGravarClick(Sender: TObject);
begin
  IF (TRIM(FRM_CADTUR.CDSturaluIDALU.AsString) = '') then
   BEGIN
    ShowMessage('Aluno Inv�lido...');
    EditAlu.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADTUR.CDSturaluOBS_RELTURALU.AsString) = '')  then
   BEGIN
    ShowMessage('Observa��o Inv�lida...');
    EditObs.SetFocus;
    EXIT;
   END;
  

 FRM_CADTUR.CDSturaluSTATUS_RELTURALU.AsString := 'A';
 FRM_CADTUR.CDSturalu.Post;
 FRM_CADTUR.CDSturalu.ApplyUpdates(0);


 DesativaInclui;
 CLOSE;

end;

procedure TFRM_CADTURALU.EditAluAltBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFrmBuscaAlu,FrmBuscaAlu);
  //Setando a variavel quemchamou
  FrmBuscaAlu.QuemChamou := 'TURALU';

  FrmBuscaAlu.ShowModal;
  FrmBuscaAlu.Free;


      inherited;

end;

procedure TFRM_CADTURALU.EditAluButtonClick(Sender: TObject);
begin
  
  Application.CreateForm(TF_Aluno,F_Aluno);
  F_Aluno.QuemChamou := 'TURALU';
  F_Aluno.AtivaInclui;

  Try

        F_Aluno.CDSAlunos.Active:= False;
        F_Aluno.SQLAlunos.Close;

        F_Aluno.SQLAlunos.ParamByName('PARALU').AsInteger:=0;

        F_Aluno.SQLAlunos.Open;
        F_Aluno.CDSAlunos.Open;

        F_Aluno.CDSAlunos.Append;

        F_Aluno.CDSAlunosSTATUS_ALU.AsString := 'A';

        DM.SQLAux.Close;
        DM.SQLAux.CommandText := '';
        DM.SQLAux.CommandText := ' SELECT MAX(ALUNOS.IDALU) FROM ALUNOS';
        DM.SQLAux.Open;
        F_Aluno.CDSAlunosIDALU.AsInteger := DM.SQLAux.FIELDBYNAME('MAX').AsInteger +1 ;
        BuscaRapida.Text              := IntToStr(F_Aluno.CDSAlunosIDALU.AsInteger);
         F_Aluno.ShowModal;
         F_Aluno.Free;

    Except


    End;

end;

procedure TFRM_CADTURALU.BuscaRapidaAltBtnClick(Sender: TObject);
begin
   BtNovo.Click;

end;

procedure TFRM_CADTURALU.BtBuscarClick(Sender: TObject);
begin
  //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  FRM_CADTUR.SQlturalu.ParamByName('BUSTURALU').AsInteger := 0;


  Application.CreateForm(TFRM_BUSTURALU,FRM_BUSTURALU);
  //Setando a variavel quemchamou
  FRM_BUSTURALU.QuemChamou := 'TURALU';

  FRM_BUSTURALU.ShowModal;
  FRM_BUSTURALU.Free;

  IF (FRM_CADTUR.SQlturalu.ParamByName('BUSTURALU').AsInteger <> 0) THEN
    BEGIN
      FRM_CADTUR.sqltur.Open;
     FRM_CADTUR.sqlturalu.Open;

      FRM_CADTUR.cdstur.Open;
     FRM_CADTUR.cdsturalu.Open;


      FRM_CADTUR.cdsturalu.Edit;
      BuscaRapida.Text := IntToStr(FRM_CADTUR.CDSturaluIDRELTURALU.AsInteger);
      inherited;
      
    END;


end;

end.
