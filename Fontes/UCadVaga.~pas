unit UCadVaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr,
  RzDBEdit, DBCtrls, ComCtrls, Grids, DBGrids, RzDBBnEd;

type
  TFrmCadVaga = class(TFRM_Cadastros)
    Label1: TLabel;
    SqlVaga: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsVaga: TClientDataSet;
    SqlVagaIDVAGA: TIntegerField;
    SqlVagaIDEMP: TIntegerField;
    SqlVagaIDRELTURALU: TIntegerField;
    SqlVagaDESCRI_VAGA: TStringField;
    SqlVagaBOLSA_VAGA: TFMTBCDField;
    SqlVagaNUMAPOLICE_VAGA: TStringField;
    SqlVagaTEMPO_VAGA: TIntegerField;
    SqlVagaREQUISITO_VAGA: TStringField;
    SqlVagaDTCAD_VAGA: TDateField;
    SqlVagaHORACAD_VAGA: TTimeField;
    SqlVagaDTPRENCH_VAGA: TDateField;
    SqlVagaHORAPRENCH_VAGA: TTimeField;
    SqlVagaDTINICIO_VAGA: TDateField;
    SqlVagaSTATUS_VAGA: TStringField;
    SqlVagaNOMEFAN_EMP: TStringField;
    SqlVagaSTATUS_EMP: TStringField;
    SqlVagaNOME_ALU: TStringField;
    SqlVagaNUM_TUR: TStringField;
    CdsVagaIDVAGA: TIntegerField;
    CdsVagaIDEMP: TIntegerField;
    CdsVagaIDRELTURALU: TIntegerField;
    CdsVagaDESCRI_VAGA: TStringField;
    CdsVagaBOLSA_VAGA: TFMTBCDField;
    CdsVagaNUMAPOLICE_VAGA: TStringField;
    CdsVagaTEMPO_VAGA: TIntegerField;
    CdsVagaREQUISITO_VAGA: TStringField;
    CdsVagaDTCAD_VAGA: TDateField;
    CdsVagaHORACAD_VAGA: TTimeField;
    CdsVagaDTPRENCH_VAGA: TDateField;
    CdsVagaHORAPRENCH_VAGA: TTimeField;
    CdsVagaDTINICIO_VAGA: TDateField;
    CdsVagaSTATUS_VAGA: TStringField;
    CdsVagaNOMEFAN_EMP: TStringField;
    CdsVagaSTATUS_EMP: TStringField;
    CdsVagaNOME_ALU: TStringField;
    CdsVagaNUM_TUR: TStringField;
    Label2: TLabel;
    DBnomeEmp: TRzDBEdit;
    Label3: TLabel;
    DBnomeRel: TRzDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBrequisito: TRzDBRichEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBdtprench: TRzDBEdit;
    BDdtinicio: TRzDBEdit;
    DBnumTur: TRzDBEdit;
    DBbolsa: TRzDBEdit;
    DBdtcad: TRzDBEdit;
    DBhoraPrench: TRzDBEdit;
    DBtempo: TRzDBEdit;
    DBdescriVaga: TRzDBEdit;
    DBapolice: TRzDBEdit;
    DSLIGA: TDataSource;
    SqlVagCurso: TSQLDataSet;
    CdsVagCurso: TClientDataSet;
    DsRelacao: TDataSource;
    SqlVagCursoIDRELVAGCURSO: TIntegerField;
    SqlVagCursoIDVAGA: TIntegerField;
    SqlVagCursoSTATUS_RELVAGCURSO: TStringField;
    SqlVagCursoDESCRICAO_CUR: TStringField;
    CdsVagaSQLVAGCURSO: TDataSetField;
    CdsVagCursoIDRELVAGCURSO: TIntegerField;
    CdsVagCursoIDVAGA: TIntegerField;
    CdsVagCursoSTATUS_RELVAGCURSO: TStringField;
    CdsVagCursoDESCRICAO_CUR: TStringField;
    CdsVagCursoSTATUS_CUR: TStringField;
    Panel1: TPanel;
    RzPanel1: TRzPanel;
    DBGridDetalhe: TDBGrid;
    DsVaga: TDataSource;
    SqlVagCursoSTATUS_CUR: TStringField;
    SqlVagCursoIDCURSO: TIntegerField;
    CdsVagCursoIDCURSO: TIntegerField;
    DBidemp: TRzDBButtonEdit;
    DBIdTurAlu: TRzDBButtonEdit;
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure CdsVagaIDRELTURALUValidate(Sender: TField);
    procedure CdsVagaIDEMPValidate(Sender: TField);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SqlVagCursoIDRELVAGCURSOValidate(Sender: TField);
    procedure DBGridDetalheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure CdsVagCursoIDCURSOValidate(Sender: TField);
    procedure DBidempButtonClick(Sender: TObject);
    procedure DBidempAltBtnClick(Sender: TObject);
    procedure RzButtonEdit1AltBtnClick(Sender: TObject);
    procedure DBIdTurAluButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadVaga: TFrmCadVaga;

implementation

uses UDM, UCadCaracVaga, UBuscaVaga, UStatusVaga, UEmpresa, UBuscaEmp,
  UCadRelTurAlu;

{$R *.dfm}

procedure TFrmCadVaga.BtNovoClick(Sender: TObject);
begin
  Try
     CdsVagCurso.Close;
     CdsVaga.Close;
     SqlVagCurso.close;
     SqlVaga.Close;

     SqlVaga.ParamByName('PARVAGA').AsInteger := 0 ;

     SqlVaga.Open;
     SqlVagCurso.Open;
     CdsVaga.Open;
     CdsVagCurso.Open;

     CdsVaga.Append;

     CdsVaga.FieldByName('DTCAD_VAGA').AsDateTime := DATE;
     CdsVagaSTATUS_VAGA.AsString := 'A';

     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(VAGAEST.IDVAGA) FROM VAGAEST  ';
     DM.SQLAux.Open;
     CdsVagaIDVAGA.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text :=  IntToStr(CdsVagaIDVAGA.AsInteger);

  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão!');
   exit;
  End;

  
  inherited;
  DBGridDetalhe.Enabled:=False;
  DBidemp.Enabled:=true;
  DBIdTurAlu.Enabled:=true;
  FocusControl(DBidemp);
end;

procedure TFrmCadVaga.BtCancelarClick(Sender: TObject);
begin
  inherited;
  CdsVagCurso.Cancel;
  CdsVaga.Cancel;
  CdsVagCurso.Close;
  CdsVaga.Close;
  SqlVagCurso.Close;
  SqlVaga.Close;
  DBidemp.Enabled:=false;
  DBIdTurAlu.Enabled:=false;
end;

procedure TFrmCadVaga.BtGravarClick(Sender: TObject);
begin

  If (Trim(CdsVagaIDEMP.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBidemp.SetFocus;
     Exit;
    End;

   If (Trim(CdsVagaDESCRI_VAGA.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBdescriVaga.SetFocus;
     Exit;
    End;

   If (Trim(CdsVagaBOLSA_VAGA.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBbolsa.SetFocus;
     Exit;
    End;


  IF NOT(CdsVaga.State IN [DSEDIT,DSINSERT]) THEN
    BEGIN
         CdsVaga.Edit;
    END;


  Try
      CdsVaga.Post;
      CdsVaga.ApplyUpdates(0);
      DBidemp.Enabled:=false;
      DBIdTurAlu.Enabled:=false;
  Except
      ShowMessage('Erro de Gravação');
      DBidemp.SetFocus;
      exit;
  End;


  inherited;

  CdsVagCurso.Close;
  CdsVaga.Close;
  SqlVagCurso.Close;
  SqlVaga.Close;
end;

procedure TFrmCadVaga.CdsVagaIDRELTURALUValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                           ' ALUNOS.NOME_ALU,' +
                           ' TURMAS.NUM_TUR ' +
                           ' FROM RELTURALU ' +
                           ' LEFT OUTER JOIN ALUNOS ON (ALUNOS.IDALU = RELTURALU.IDALU)' +
                           ' LEFT OUTER JOIN TURMAS ON (TURMAS.IDTUR = RELTURALU.IDTUR)' +
                           ' WHERE RELTURALU.IDRELTURALU = :PARELTURALU' ;

  DM.SqlAux.ParamByName('PARELTURALU').AsInteger := CdsVagaIDRELTURALU.AsInteger;
  DM.SqlAux.Open;

  CdsVagaNOME_ALU.AsString := DM.SqlAux.FieldByName('NOME_ALU').AsString;
  CdsVagaNUM_TUR.AsString := DM.SqlAux.FieldByName('NUM_TUR').AsString;
end;

procedure TFrmCadVaga.CdsVagaIDEMPValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                           ' EMPRESA.NOMEFAN_EMP, ' +
                           ' EMPRESA.STATUS_EMP ' +
                           ' FROM EMPRESA ' +
                           ' WHERE  EMPRESA.IDEMP = :PAREMP ' ;

  DM.SqlAux.ParamByName('PAREMP').AsInteger := CdsVagaIDEMP.AsInteger;
  DM.SqlAux.Open;

  CdsVagaNOMEFAN_EMP.AsString := DM.SqlAux.FieldByName('NOMEFAN_EMP').AsString;
  CdsVagaSTATUS_EMP.AsString := DM.SqlAux.FieldByName('STATUS_EMP').AsString;
end;

procedure TFrmCadVaga.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //Testando se foi digitado Enter
  If ( Key = VK_Return ) Then
   Begin

      If ( Trim(BuscaRapida.Text) = '' ) Then
        Begin
           BtNovo.Click;
        End
      Else
        Begin
           DM.SqlAux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText := ' SELECT ' +
                                    ' VAGAEST.IDVAGA, '+
                                    ' VAGAEST.STATUS_VAGA, '+
                                    ' RELVAGCURSO.IDRELVAGCURSO, '+
                                    ' CURSOS.DESCRICAO_CUR '+
                                    ' FROM VAGAEST '+
                                    ' LEFT OUTER JOIN RELVAGCURSO ON (RELVAGCURSO.IDVAGA = VAGAEST.IDVAGA) '+
                                    ' LEFT OUTER JOIN CURSOS ON (CURSOS.IDCURSO = RELVAGCURSO.IDCURSO) '+
                                    ' WHERE VAGAEST.IDVAGA = :PARVAGA ';
           DM.SQLAux.ParamByName('PARVAGA').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SQLAux.FieldByName('IDVAGA').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_VAGA').AsString = 'A') Then
                  Begin
                      CdsVagCurso.Close;
                      CdsVaga.Close;
                      SqlVagCurso.Close;
                      SqlVaga.Close;
                      SqlVaga.ParamByName('PARVAGA').AsInteger := StrToInt(BuscaRapida.Text);
                      SqlVagCurso.ParamByName('IDVAGA').AsInteger := StrToInt(BuscaRapida.Text);
                      SqlVaga.Open;
                      SqlVagCurso.Open;
                      CdsVaga.Open;
                      CdsVagCurso.Open;

                      CdsVaga.Edit;
                      CdsVagCurso.Edit;

                      AtivaInclui;
                      DBGridDetalhe.Enabled:=true;
                      DBidemp.Enabled:=True;
                  End
                Else
                  Begin
                      ShowMessage('Vaga Desativada!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;
             End
           Else
             Begin
                ShowMessage('Vaga Inexistente!');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;
        End;
   End;
end;

procedure TFrmCadVaga.SqlVagCursoIDRELVAGCURSOValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                           ' CURSOS.DESCRICAO_CUR,' +
                           ' CURSOS.STATUS_CUR,' +
                           ' FROM RELVAGCURSO ' +
                           ' LEFT OUTER JOIN CURSOS ON (CURSOS.IDCURSO = RELVAGCURSO.IDCURSO)' +
                           ' WHERE RELVAGCURSO.IDRELVAGCURSO = :PARREL' ;

  DM.SqlAux.ParamByName('PARREL').AsInteger := CDSVAGCURSOIDRELVAGCURSO.AsInteger;
  DM.SqlAux.Open;

  CDSVAGCURSODESCRICAO_CUR.AsString := DM.SqlAux.FieldByName('DESCRICAO_CUR').AsString;
  CDSVAGCURSOSTATUS_CUR.AsString := DM.SqlAux.FieldByName('STATUS_CUR').AsString;
end;

procedure TFrmCadVaga.DBGridDetalheKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF(DBidemp.Text <> '')THEN
   BEGIN
    IF (KEY = VK_F5) THEN
     BEGIN
         CdsVagCurso.Append;

         DM.SQLAux.Close;
         DM.SQLAux.CommandText := ' SELECT MAX(RELVAGCURSO.IDRELVAGCURSO) FROM RELVAGCURSO ';
         DM.SQLAux.Open;

         CdsVagCursoIDRELVAGCURSO.AsInteger := DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
         CdsVagCursoSTATUS_RELVAGCURSO.AsString:= 'A';

         Application.CreateForm(TFrmCadCaracVaga,FrmCadCaracVaga);
         FrmCadCaracVaga.AtivaInclui;
         FrmCadCaracVaga.BuscaRapida.Text := CdsVagCursoIDRELVAGCURSO.AsString;         
         FrmCadCaracVaga.ShowModal;
         FrmCadCaracVaga.Free;

         IF NOT(DsVaga.State IN [DSINSERT,DSEDIT]) THEN
           BEGIN
                    CdsVaga.Edit;
           END;

         EXIT;
     END;
   IF (KEY = VK_F6) THEN
     BEGIN
       IF (CdsVagCursoIDRELVAGCURSO.AsInteger > 0) THEN
         BEGIN
             CdsVagCurso.Edit;
             Application.CreateForm(TFrmCadCaracVaga,FrmCadCaracVaga);
             FrmCadCaracVaga.AtivaInclui;
             FrmCadCaracVaga.ShowModal;
             FrmCadCaracVaga.Free;
             EXIT;
         END;
     END;
  END;   
end;

procedure TFrmCadVaga.BtBuscarClick(Sender: TObject);
begin
  SqlVaga.ParamByName('PARVAGA').AsInteger := 0;

  Application.CreateForm(TFrmBuscaVaga,FrmBuscaVaga);

  FrmBuscaVaga.QuemChamou := 'Vaga';

  FrmBuscaVaga.ShowModal;
  FrmBuscaVaga.Free;

  If (SqlVaga.ParamByName('PARVAGA').AsInteger <> 0) then
    Begin
      SqlVaga.Open;
      CdsVaga.Open;

      CdsVaga.Edit;
      BuscaRapida.Text := IntToStr(CdsVagaIDVAGA.ASINTEGER);
      inherited;
    End;
end;

procedure TFrmCadVaga.BtStatusClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmStatusVaga,FrmStatusVaga);
  FrmStatusVaga.ShowModal;
  FrmStatusVaga.FREE;
end;



procedure TFrmCadVaga.CdsVagCursoIDCURSOValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                           ' CURSOS.DESCRICAO_CUR ' +
                           ' FROM CURSOS ' +
                           ' WHERE CURSOS.IDCURSO = :PARAM' ;

  DM.SqlAux.ParamByName('PARAM').AsInteger := CdsVagCursoIDCURSO.AsInteger;
  DM.SqlAux.Open;

  CdsVagCursoDESCRICAO_CUR.AsString := DM.SqlAux.FieldByName('DESCRICAO_CUR').AsString;

end;

procedure TFrmCadVaga.DBidempButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmBuscaEmp,FrmBuscaEmp);
  FrmBuscaEmp.ShowModal;
  FrmBuscaEmp.Free;
end;

procedure TFrmCadVaga.DBidempAltBtnClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmEmpresa,FrmEmpresa);
  FrmEmpresa.ShowModal;
  FrmEmpresa.Free;
end;

procedure TFrmCadVaga.RzButtonEdit1AltBtnClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRM_RelTurAlu,FRM_RelTurAlu);
  FRM_RelTurAlu.ShowModal;
  FRM_RelTurAlu.Free;
end;

procedure TFrmCadVaga.DBIdTurAluButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRM_RelTurAlu,FRM_RelTurAlu);
  FRM_RelTurAlu.ShowModal;
  FRM_RelTurAlu.Free;
end;

end.
