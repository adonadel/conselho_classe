unit UCadFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  RzDBEdit, RzDBBnEd, RzLabel, ExtDlgs, DBCtrls, Jpeg, ClipBrd, Grids,
  DBGrids, RzDBGrid;

type
  TFRM_CadFunc = class(TFRM_Cadastros)
    SQLFunc: TSQLDataSet;
    Provider: TDataSetProvider;
    CDSFunc: TClientDataSet;
    DSFunc: TDataSource;
    DBnomefunc: TRzDBEdit;
    DBdatanascfunc: TRzDBEdit;
    DBnatufunc: TRzDBEdit;
    DBcpffunc: TRzDBEdit;
    DBrgfunc: TRzDBEdit;
    DBsexofunc: TRzDBEdit;
    DBnaciofunc: TRzDBEdit;
    DBemailfunc: TRzDBEdit;
    DBobsfunc: TRzDBEdit;
    DBdatacadfunc: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    RzLabel13: TRzLabel;
    DBdesctipologfunc: TRzDBEdit;
    DBlografunc: TRzDBEdit;
    DBcidfunc: TRzDBEdit;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    DBbaifunc: TRzDBEdit;
    DBuffunc: TRzDBEdit;
    RzLabel18: TRzLabel;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    DBcepfunc: TRzDBButtonEdit;
    DBImgfunc: TDBImage;
    OpenPictureDialog: TOpenPictureDialog;
    CDScargos: TClientDataSet;
    DScargos: TDataSource;
    SQLcargos: TSQLDataSet;
    TabSheet2: TRzTabSheet;
    SQLFuncIDFUNC: TIntegerField;
    SQLFuncIDCEP: TStringField;
    SQLFuncNOME_FUNC: TStringField;
    SQLFuncDATANASC_FUNC: TDateField;
    SQLFuncCPF_FUNC: TStringField;
    SQLFuncRG_FUNC: TStringField;
    SQLFuncNACIO_FUNC: TStringField;
    SQLFuncNATUR_FUNC: TStringField;
    SQLFuncSEXO_FUNC: TStringField;
    SQLFuncEMAIL_FUNC: TStringField;
    SQLFuncOBS_FUNC: TStringField;
    SQLFuncDATACAD_FUNC: TDateField;
    SQLFuncFOTO_FUNC: TBlobField;
    SQLFuncSTATUS_FUNC: TStringField;
    SQLFuncLOGRA_CEP: TStringField;
    SQLFuncDESCRI_TIPOLOG: TStringField;
    SQLFuncNOME_CID: TStringField;
    SQLFuncUF_CID: TStringField;
    SQLFuncNOME_BAI: TStringField;
    CDSFuncIDFUNC: TIntegerField;
    CDSFuncIDCEP: TStringField;
    CDSFuncNOME_FUNC: TStringField;
    CDSFuncDATANASC_FUNC: TDateField;
    CDSFuncCPF_FUNC: TStringField;
    CDSFuncRG_FUNC: TStringField;
    CDSFuncNACIO_FUNC: TStringField;
    CDSFuncNATUR_FUNC: TStringField;
    CDSFuncSEXO_FUNC: TStringField;
    CDSFuncEMAIL_FUNC: TStringField;
    CDSFuncOBS_FUNC: TStringField;
    CDSFuncDATACAD_FUNC: TDateField;
    CDSFuncFOTO_FUNC: TBlobField;
    CDSFuncSTATUS_FUNC: TStringField;
    CDSFuncLOGRA_CEP: TStringField;
    CDSFuncDESCRI_TIPOLOG: TStringField;
    CDSFuncNOME_CID: TStringField;
    CDSFuncUF_CID: TStringField;
    CDSFuncNOME_BAI: TStringField;
    DSliga: TDataSource;
    SQLcargosIDCAR: TIntegerField;
    SQLcargosIDCURSO: TIntegerField;
    SQLcargosDESCRICAO_CUR: TStringField;
    SQLcargosSTATUS_CUR: TStringField;
    SQLcargosDESC_CAR: TStringField;
    SQLcargosSTATUS_CAR: TStringField;
    SQLcargosDTINI_RELCARFUN: TDateField;
    SQLcargosDTFIM_RELCARFUN: TDateField;
    CDSFuncSQLcargos: TDataSetField;
    CDScargosIDCAR: TIntegerField;
    CDScargosIDCURSO: TIntegerField;
    CDScargosDESCRICAO_CUR: TStringField;
    CDScargosSTATUS_CUR: TStringField;
    CDScargosDESC_CAR: TStringField;
    CDScargosSTATUS_CAR: TStringField;
    CDScargosDTINI_RELCARFUN: TDateField;
    CDScargosDTFIM_RELCARFUN: TDateField;
    RzDBGrid1: TRzDBGrid;
    TabSheet3: TRzTabSheet;
    RzDBGrid2: TRzDBGrid;
    RzLabel8: TRzLabel;
    SQLcargosIDRELACARFUN: TIntegerField;
    SQLcargosIDFUNC: TIntegerField;
    CDScargosIDRELACARFUN: TIntegerField;
    CDScargosIDFUNC: TIntegerField;
    SQLcargosSTATUS_RELCARFUN: TStringField;
    CDScargosSTATUS_RELCARFUN: TStringField;
    DSDiscProf: TDataSource;
    CDSDiscProf: TClientDataSet;
    SQLDiscProf: TSQLDataSet;
    RzLabel10: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel19: TRzLabel;
    RzLabel22: TRzLabel;
    SQLDiscProfIDRELACAO: TIntegerField;
    SQLDiscProfIDFUNC: TIntegerField;
    SQLDiscProfIDDISCUR: TIntegerField;
    SQLDiscProfANO_REL: TIntegerField;
    SQLDiscProfSEMESTRE_REL: TStringField;
    SQLDiscProfSTATUS_REL: TStringField;
    SQLDiscProfIDDISC: TIntegerField;
    SQLDiscProfANOFASE_DISCUR: TIntegerField;
    SQLDiscProfNUMAULAS_DISCUR: TIntegerField;
    SQLDiscProfTIPOSEMANU_DISCUR: TStringField;
    SQLDiscProfOBS_DISCUR: TStringField;
    SQLDiscProfSTATUS_DISCUR: TStringField;
    SQLDiscProfDESCR_DISC: TStringField;
    SQLDiscProfSTATUS_DISC: TStringField;
    CDSFuncSQLDiscProf: TDataSetField;
    CDSDiscProfIDRELACAO: TIntegerField;
    CDSDiscProfIDFUNC: TIntegerField;
    CDSDiscProfIDDISCUR: TIntegerField;
    CDSDiscProfANO_REL: TIntegerField;
    CDSDiscProfSEMESTRE_REL: TStringField;
    CDSDiscProfSTATUS_REL: TStringField;
    CDSDiscProfIDDISC: TIntegerField;
    CDSDiscProfANOFASE_DISCUR: TIntegerField;
    CDSDiscProfNUMAULAS_DISCUR: TIntegerField;
    CDSDiscProfTIPOSEMANU_DISCUR: TStringField;
    CDSDiscProfOBS_DISCUR: TStringField;
    CDSDiscProfSTATUS_DISCUR: TStringField;
    CDSDiscProfDESCR_DISC: TStringField;
    CDSDiscProfSTATUS_DISC: TStringField;
    SQLDiscProfIDCURSO: TIntegerField;
    SQLDiscProfDESCRICAO_CUR: TStringField;
    SQLDiscProfSTATUS_CUR: TStringField;
    CDSDiscProfIDCURSO: TIntegerField;
    CDSDiscProfDESCRICAO_CUR: TStringField;
    CDSDiscProfSTATUS_CUR: TStringField;
    procedure CDSFuncIDCEPValidate(Sender: TField);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure DBImgfuncClick(Sender: TObject);
    procedure CDScargosIDCARValidate(Sender: TField);
    procedure CDScargosIDCURSOValidate(Sender: TField);
    procedure CDSDiscProfIDDISCValidate(Sender: TField);
    procedure RzDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBcepfuncButtonClick(Sender: TObject);
    procedure CDSDiscProfIDDISCURValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_CadFunc: TFRM_CadFunc;
  QuemChamoufunc: String;

implementation

uses UBusFunc, UStaFunc,  UBuscaCep, UDM;//URelCarFun, UDiscProf,

{$R *.dfm}

procedure TFRM_CadFunc.CDSFuncIDCEPValidate(Sender: TField);
begin
  inherited;
  DM.SQLAux.close;
  DM.SQLAux.CommandText := ' SELECT ' +
                           ' CEPS.LOGRA_CEP,' +
                           ' TIPOLOGRA.DESCRI_TIPOLOG,' +
                           ' CIDADES.NOME_CID,' +
                           ' CIDADES.UF_CID,' +
                           ' BAIRROS.NOME_BAI' +
                           ' FROM CEPS ' +
                           ' LEFT OUTER JOIN TIPOLOGRA ON (TIPOLOGRA.IDTIPOLOG = CEPS.IDTIPOLOG)' +
                           ' LEFT OUTER JOIN CIDADES ON (CIDADES.IDCID = CEPS.IDCID)' +
                           ' LEFT OUTER JOIN BAIRROS ON (BAIRROS.IDBAI = CEPS.IDBAI)' +
                           ' WHERE CEPS.IDCEP = :PARIDCEP' ;
  DM.SQLAux.ParamByName('PARIDCEP').AsInteger := CDSFuncIDCEP.AsInteger;
  DM.SQLAux.Open;

  CDSFuncLOGRA_CEP.AsString := DM.SQLAux.FIELDBYNAME('LOGRA_CEP').AsString;
  CDSFuncDESCRI_TIPOLOG.AsString := DM.SQLAux.FIELDBYNAME('DESCRI_TIPOLOG').AsString;
  CDSFuncNOME_CID.AsString := DM.SQLAux.FIELDBYNAME('NOME_CID').AsString;
  CDSFuncUF_CID.AsString := DM.SQLAux.FIELDBYNAME('UF_CID').AsString;
  CDSFuncNOME_BAI.AsString := DM.SQLAux.FIELDBYNAME('NOME_BAI').AsString;

end;



procedure TFRM_CadFunc.BtCancelarClick(Sender: TObject);
begin

  CDSFunc.Cancel;
  CDSFunc.Close;
  SQLFunc.Close;


  inherited;

end;

procedure TFRM_CadFunc.BtGravarClick(Sender: TObject);
begin
  
   
  If (Trim(CDSFuncNOME_FUNC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBnomefunc.SetFocus;
     Exit;
    End;



    If (Trim(CDSFuncDATANASC_FUNC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBdatanascfunc.SetFocus;
     Exit;
    End;
    If (Trim(CDSFuncOBS_FUNC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBobsfunc.SetFocus;
     Exit;
    End;

    If (Trim(CDSFuncNOME_CID.AsString) = '') Then
    Begin
     ShowMessage('Cep inválido....');
     DBcepfunc.SetFocus;
     Exit;
    End;

    if (CDSFuncDATANASC_FUNC.AsDateTime > CDSFuncDATACAD_FUNC.AsDateTime) then
     begin
       ShowMessage('Impossível Cadastrar uma pessoa que ainda não nasceu....');
       DBdatanascfunc.SetFocus;
       Exit;
     end;

     if((CDScargos.State <> DSEDIT) or (CDScargos.State <> DSINSERT))then
      begin
       CDSFunc.Edit;
       CDScargos.Edit;
      end;

     if (DBsexofunc.Text = 'M' ) or (DBsexofunc.Text = 'F') then
           begin
            IF (CDSFunc.State = DSINSERT) THEN
             BEGIN
                Try

                    DM.SQLAux.Close;
                    DM.SQLAux.CommandText := '';
                    DM.SQLAux.CommandText := ' SELECT MAX(FUNCIONARIO.IDFUNC) FROM FUNCIONARIO';
                    DM.SQLAux.Open;
                    CDSFuncIDFUNC.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
                    BuscaRapida.Text              :=  IntToStr(CDSFuncIDFUNC.AsInteger);

                    CDSFunc.Post;
                    CDSFunc.ApplyUpdates(0);
                Except
                    Showmessage('Erro de Gravação');
                    DBnomefunc.SetFocus;
                    exit;
                End;
             END
           ELSE
             BEGIN
                    CDSFunc.Post;
                    CDSFunc.ApplyUpdates(0);
             END;

          inherited;

          CDSFunc.Close;
          CDScargos.Close;
          CDSDiscProf.Close;
          SQLFunc.Close;
          SQLcargos.Close;
          SQLDiscProf.Close;
       end // sexo
        else
         begin
          ShowMessage('Sexo Inválido....');
          DBsexofunc.SetFocus;
          Exit;
         end;
end;

procedure TFRM_CadFunc.BtNovoClick(Sender: TObject);
begin

  Try
     CDSDiscProf.Close;
     CDScargos.Close;
     CDSFunc.Close;
     SQLDiscProf.Close;
     SQLcargos.Close;
     SQLFunc.Close;


     SQLFunc.ParamByName('PARFUN').AsInteger := 0 ;

     SQLFunc.Open;
     SQLcargos.Open;
     SQLDiscProf.Open;
     CDSFunc.Open;
     CDScargos.Open;
     CDSDiscProf.Open;

     CDSFunc.Append;

     CDSFunc.FieldByName('DATACAD_FUNC').AsDateTime := DATE;
     CDSFuncSTATUS_FUNC.AsString := 'A';

     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(FUNCIONARIO.IDFUNC) FROM FUNCIONARIO';
     DM.SQLAux.Open;
     CDSFuncIDFUNC.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text              :=  IntToStr(CDSFuncIDFUNC.AsInteger);


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;


  inherited;
  FocusControl(DBnomefunc);

end;

procedure TFRM_CadFunc.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If ( Key = VK_Return ) Then
   Begin

      If ( Trim(BuscaRapida.Text) = '' ) Then
        Begin
           BtNovo.Click;
        End
      Else
        Begin

           DM.SQLAux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText := ' SELECT' +
                                    ' FUNCIONARIO.IDFUNC, '+
                                    ' FUNCIONARIO.STATUS_FUNC '+
                                    ' FROM FUNCIONARIO '+
                                    ' WHERE FUNCIONARIO.IDFUNC = :PARBUSFUN' ;
           DM.SQLAux.ParamByName('PARBUSFUN').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDFUNC').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_FUNC').AsString = 'A') Then
                  Begin
                      CDScargos.Close;
                      CDSFunc.Close;
                      SQLcargos.Close;
                      SQLFunc.Close;

                      SQLFunc.ParamByName('PARFUN').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLFunc.Open;
                      SQLcargos.Open;
                      CDSFunc.Open;
                      CDScargos.Open;

                      CDSFunc.Edit;

                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Funcionário Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Funcionário Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key

end;

procedure TFRM_CadFunc.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
 BtNovo.Click;
end;

procedure TFRM_CadFunc.BtBuscarClick(Sender: TObject);
begin

  SQLFunc.ParamByName('PARFUN').AsInteger := 0;


  Application.CreateForm(TFrm_BusFunc,Frm_BusFunc);
  //Setando a variavel quemchamou
  Frm_BusFunc.QuemChamou := 'FUNC';

  Frm_BusFunc.ShowModal;
  Frm_BusFunc.Free;

  IF (SQLFunc.ParamByName('PARFUN').AsInteger <> 0) THEN
    BEGIN

      SQLFunc.Open;
      SQLcargos.Open;
      CDSFunc.Open;
      CDScargos.Open;

      CDSFunc.Edit;
      BuscaRapida.Text := IntToStr(CDSFuncIDFUNC.ASINTEGER);
      AtivaInclui;
      inherited;
    END;

end;

procedure TFRM_CadFunc.BtStatusClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_StaFunc,Frm_StaFunc);
  Frm_StaFunc.ShowModal;
  Frm_StaFunc.Free;
end;

procedure TFRM_CadFunc.DBImgfuncClick(Sender: TObject);
var
IMAGEMEMORIA :TPicture;
begin
  inherited;
   OpenPictureDialog.Execute;
  TRY
     IF (FileExists(OpenPictureDialog.FileName) = True) THEN
      BEGIN
       IMAGEMEMORIA := TPicture.Create;
       IMAGEMEMORIA.LoadFromFile(OpenPictureDialog.FileName);
       Clipboard.Assign(IMAGEMEMORIA);
       DBImgfunc.PasteFromClipboard;
       IMAGEMEMORIA.Free;
      END;

  EXCEPT
    ShowMessage('Erroooo, arquivo comrropido');
    Exit;
  END;
end;

procedure TFRM_CadFunc.CDScargosIDCARValidate(Sender: TField);
begin
  DM.SQLAux.Close;
  DM.SQLAux.CommandText := ' SELECT'+
                           ' CARGOS.DESC_CAR, '+
                           ' CARGOS.STATUS_CAR '+
                           ' FROM CARGOS'+
                           ' WHERE  CARGOS.IDCAR = :PARIDFUNC ';

  DM.SQLAux.ParamByName('PARIDFUNC').AsInteger := CDScargosIDCAR.AsInteger;
  DM.SQLAux.Open;


  CDScargosDESC_CAR.AsString := DM.SQLAux.fieldbyname('DESC_CAR').AsString;
  CDScargosSTATUS_CAR.AsString := DM.SQLAux.fieldbyname('STATUS_CAR').AsString;

end;

procedure TFRM_CadFunc.CDScargosIDCURSOValidate(Sender: TField);
begin
  DM.SQLAux.Close;
  dm.SQLAux.CommandText := '';
  DM.SQLAux.CommandText := ' SELECT'+
                           ' CURSOS.DESCRICAO_CUR, '+
                           ' CURSOS.STATUS_CUR '+
                           ' FROM CURSOS'+
                           ' WHERE  CURSOS.IDCUR = :PARIDCUR ';

  DM.SQLAux.ParamByName('PARIDCUR').AsInteger := CDScargosIDCURSO.AsInteger;
  DM.SQLAux.Open;


  CDScargosDESCRICAO_CUR.AsString := DM.SQLAux.fieldbyname('DESCRICAO_CUR').AsString;
  CDScargosSTATUS_CUR.AsString := DM.SQLAux.fieldbyname('STATUS_CUR').AsString;

end;

procedure TFRM_CadFunc.CDSDiscProfIDDISCValidate(Sender: TField);
begin
  inherited;
   DM.SQLAux.Close;
   dm.SQLAux.CommandText := '';
   DM.SQLAux.CommandText := ' SELECT'+
                            ' DISCIPLINAS.DESCR_DISC, '+
                            ' DISCIPLINAS.STATUS_DISC '+
                            ' FROM DISCIPLINAS'+
                            ' WHERE  DISCIPLINAS.IDDISC = :PARIDDIS ';

   DM.SQLAux.ParamByName('PARIDDIS').AsInteger := CDSDiscProfIDDISC.AsInteger;
   DM.SQLAux.Open;


   CDSDiscProfDESCR_DISC.AsString := DM.SQLAux.fieldbyname('DESCR_DISC').AsString;
   CDSDiscProfSTATUS_DISC.AsString := DM.SQLAux.fieldbyname('STATUS_DISC').AsString;
end;








procedure TFRM_CadFunc.RzDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (KEY = VK_F5) THEN
   BEGIN
       CDScargos.Append;

       DM.SQLAux.Close;
       DM.SQLAux.CommandText := 'SELECT MAX(RELCARFUN.IDRELACARFUN) FROM RELCARFUN';
       DM.SQLAux.Open;
       CDScargos.FieldByName('DTINI_RELCARFUN').AsDateTime := DATE;
       CDScargosIDRELACARFUN.AsInteger := DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
       CDScargosSTATUS_RELCARFUN.AsString:= 'A';

       //Application.CreateForm(TFrm_RelCarFun,Frm_RelCarFun);
       //Frm_RelCarFun.AtivaInclui;
       
       //Frm_RelCarFun.ShowModal;
       //Frm_RelCarFun.Free;
      
       Exit;
   END;

 IF (KEY = VK_F6) THEN
   BEGIN
    if((CDScargos.State <> DSEDIT) or (CDScargos.State <> DSINSERT))then
    begin
     CDScargos.Edit;
    end;
     IF (CDSFuncIDFUNC.AsInteger > 0) THEN
       BEGIN
            if (CDScargosSTATUS_RELCARFUN.AsString = 'C') then
             begin
               ShowMessage('Seleciona e pressione F5');
               exit;
             end
          else if (CDScargosSTATUS_RELCARFUN.AsString = 'A') and
           (MessageDlg('Confirma a operação ?', mtConfirmation,[mbYes,mbNo],0)= MRYES)then
           begin
             CDScargos.Edit;
             CDScargosSTATUS_RELCARFUN.AsString := 'C';
             CDScargos.FieldByName('DTFIM_RELCARFUN').AsDateTime := DATE;
             CDScargos.Post;
             CDScargos.ApplyUpdates(0);
           end;
       END;

   END;
/////////////////////   cargos
end;







procedure TFRM_CadFunc.RzDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (KEY = VK_F5) THEN
   BEGIN
   If (CDSFunc.State = dsinsert) Then
     Begin
       CDSFunc.Post;
       CDSFunc.ApplyUpdates(0);
       CDSFunc.Edit;
     End;

   if((CDSDiscProf.State <> DSEDIT) or (CDSDiscProf.State <> DSINSERT))then
    begin
     CDSDiscProf.Edit;
    end;
       CDSDiscProf.Append;

       DM.SQLAux.Close;
       DM.SQLAux.CommandText := 'SELECT MAX(DISCPROF.IDRELACAO) FROM DISCPROF';
       DM.SQLAux.Open;
       //CDSDiscProf.FieldByName('DTINI_RELCARFUN').AsDateTime := DATE;
       CDSDiscProfIDRELACAO.AsInteger := DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
       CDSDiscProfSTATUS_REL.AsString:= 'A';
      // FRM_DiscProf.BuscaRapida.Text :=  FRM_CadFunc.CDSFuncIDFUNC.AsString;
       //Application.CreateForm(TFRM_DiscProf,FRM_DiscProf);
       //FRM_DiscProf.AtivaInclui;

       //FRM_DiscProf.ShowModal;
       //FRM_DiscProf.Free;
      // Frm_RelCarFun.BtnSairCargo.Enabled := false;
       Exit;
   END;

 IF (KEY = VK_F6) THEN
   BEGIN
    if((CDSDiscProf.State <> DSEDIT) or (CDSDiscProf.State <> DSINSERT))then
    begin
     CDSDiscProf.Edit;
    end;
     IF (CDSFuncIDFUNC.AsInteger > 0) THEN
       BEGIN
            if (CDSDiscProfSTATUS_REL.AsString = 'C') then
             begin
               ShowMessage('Erro... Disciplina ja cancelada!!');
               exit;
             end
          else if (CDSDiscProfSTATUS_REL.AsString = 'A') and
           (MessageDlg('Confirma a operação ?', mtConfirmation,[mbYes,mbNo],0)= MRYES)then
           begin
             CDSDiscProf.Edit;
             CDSDiscProfSTATUS_REL.AsString := 'C';
             //CDScargos.FieldByName('DTFIM_RELCARFUN').AsDateTime := DATE;
             CDSDiscProf.Post;
             CDSDiscProf.ApplyUpdates(0);
           end;
       END;

   END;



end;















procedure TFRM_CadFunc.DBcepfuncButtonClick(Sender: TObject);
begin

  SQLFunc.ParamByName('PARFUN').AsInteger := 0;


  Application.CreateForm(TFrmBuscaCep,FrmBuscaCep);
  //Setando a variavel quemchamou
  FrmBuscaCep.QuemChamou := 'FUNCCEP';

  FrmBuscaCep.ShowModal;
  FrmBuscaCep.Free;

  IF (SQLFunc.ParamByName('PARFUN').AsInteger <> 0) THEN
    BEGIN

      SQLFunc.Open;
      SQLcargos.Open;
      SQLDiscProf.Open;
      CDSFunc.Open;
      CDScargos.Open;
      CDSDiscProf.Open;

      CDSFunc.Edit;
      BuscaRapida.Text := IntToStr(CDSFuncIDFUNC.ASINTEGER);
      AtivaInclui;
      inherited;
    END;

end;

procedure TFRM_CadFunc.CDSDiscProfIDDISCURValidate(Sender: TField);
begin
  inherited;

   DM.SQLAux.Close;
   dm.SQLAux.CommandText := ' ';
   DM.SQLAux.CommandText := ' SELECT'+
                            
                            ' DISCURSO.IDCURSO,'+
                            ' DISCURSO.IDDISC,'+
                            ' DISCURSO.ANOFASE_DISCUR,'+
                            ' DISCURSO.NUMAULAS_DISCUR,'+
                            ' DISCURSO.TIPOSEMANU_DISCUR,'+
                            ' DISCURSO.OBS_DISCUR,'+
                            ' DISCURSO.STATUS_DISCUR,'+


                            ' DISCIPLINAS.DESCR_DISC,'+
                            ' DISCIPLINAS.STATUS_DISC,'+

                            ' CURSOS.DESCRICAO_CUR,'+
                            ' CURSOS.STATUS_CUR'+

                            ' FROM DISCURSO'+

                            ' LEFT OUTER JOIN DISCPROF ON (DISCPROF.IDDISCUR=DISCURSO.IDDISCUR)'+
                            ' LEFT OUTER JOIN DISCIPLINAS ON (DISCIPLINAS.IDDISC=DISCURSO.IDDISC)'+
                            ' LEFT OUTER JOIN CURSOS ON (CURSOS.IDCURSO=DISCURSO.IDCURSO)'+
                            ' WHERE DISCURSO.IDDISCUR = :PARIDDIS' ;

   DM.SQLAux.ParamByName('PARIDDIS').AsInteger := CDSDiscProfIDDISCUR.AsInteger;
   DM.SQLAux.Open;

   CDSDiscProfDESCR_DISC.AsString := DM.SQLAux.fieldbyname('DESCR_DISC').AsString;
   //CDSDiscProfSTATUS_DISC.AsString := DM.SQLAux.fieldbyname('STATUS_DISC').AsString;



end;

end.







