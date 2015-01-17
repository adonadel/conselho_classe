unit U_CadDisCur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, RzDBBnEd, RzDBEdit, Mask, RzEdit,
  RzBtnEdt, RzButton, RzTabs, RzStatus, RzPanel, ExtCtrls, DBCtrls;

type
  TFRM_CADDISCUR = class(TFRM_CADASTROS)
    EditDis: TRzDBButtonEdit;
    Disciplinas: TRzDBEdit;
    EditAno: TRzDBEdit;
    EditNum: TRzDBEdit;
    EditGrade: TRzDBEdit;
    EditObs: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure EditDisAltBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADDISCUR: TFRM_CADDISCUR;

implementation

uses U_CadCur, U_BusDis;

{$R *.dfm}

procedure TFRM_CADDISCUR.BtCancelarClick(Sender: TObject);
begin
  inherited;
  FRM_CADCUR.CDSdiscur.Cancel;
  close;
end;

procedure TFRM_CADDISCUR.BtGravarClick(Sender: TObject);
begin


  IF (TRIM(FRM_CADCUR.CDSdiscurIDDISC.AsString) = '') then
   BEGIN
    ShowMessage('Disciplina Inválida...');
    EditDis.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADCUR.CDSdiscurANOFASE_DISCUR.AsString) = '')  then
   BEGIN
    ShowMessage('Ano/Fase Inválida...');
    EditAno.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADCUR.CDSdiscurNUMAULAS_DISCUR.AsString) = '')     then
   BEGIN
    ShowMessage('Numero de Aulas Inválida...');
    EditNum.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADCUR.CDSdiscurTIPOSEMANU_DISCUR.AsString) = '')  then
   BEGIN
    ShowMessage('Tipo de Grade Inválida...');
    EditGrade.SetFocus;
    EXIT;
   END;
  IF (TRIM(FRM_CADCUR.CDSdiscurOBS_DISCUR.AsString) = '')  then
   BEGIN
    ShowMessage('Observação Inválida...');
    EditObs.SetFocus;
    EXIT;
   END;

 FRM_CADCUR.CDSdiscurSTATUS_DISCUR.AsString := 'A';
 FRM_CADCUR.CDSdiscur.Post;
 FRM_CADCUR.CDSdiscur.ApplyUpdates(0);


 DesativaInclui;
 CLOSE;
end;

procedure TFRM_CADDISCUR.EditDisAltBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_BUSDIS,FRM_BUSDIS);
  //Setando a variavel quemchamou
  FRM_BUSDIS.QuemChamou := 'DISCUR';

  FRM_BUSDIS.ShowModal;
  FRM_BUSDIS.Free;


      inherited;

end;

end.
