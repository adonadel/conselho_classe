unit U_Alunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient,
  RzDBEdit, RzDBBnEd, DBCtrls, ExtDlgs, Jpeg, Clipbrd, Grids, DBGrids,
  RzDBGrid, Menus;

type
  TF_Aluno = class(TFRM_Cadastros)
    SQLAlunos: TSQLDataSet;
    Provider: TDataSetProvider;
    SQLAlunosIDALU: TIntegerField;
    SQLAlunosIDCEP: TStringField;
    SQLAlunosNOME_ALU: TStringField;
    SQLAlunosMATRICULA_ALU: TStringField;
    SQLAlunosCOMPLEEND_ALU: TStringField;
    SQLAlunosZONARES_ALU: TStringField;
    SQLAlunosSEXO_ALU: TStringField;
    SQLAlunosNACIO_ALU: TStringField;
    SQLAlunosCPF_ALU: TStringField;
    SQLAlunosRG_ALU: TStringField;
    SQLAlunosEXPRG_ALU: TStringField;
    SQLAlunosDTNASC_ALU: TDateField;
    SQLAlunosDTEXPRG_ALU: TDateField;
    SQLAlunosMAE_ALU: TStringField;
    SQLAlunosCPFMAE_ALU: TStringField;
    SQLAlunosRGMAE_ALU: TStringField;
    SQLAlunosLOCTRABMAE_ALU: TStringField;
    SQLAlunosPAI_ALU: TStringField;
    SQLAlunosCPFPAI_ALU: TStringField;
    SQLAlunosRGPAI_ALU: TStringField;
    SQLAlunosLOCTRABPAI_ALU: TStringField;
    SQLAlunosCONJUGE_ALU: TStringField;
    SQLAlunosLOCTRABCONJ_ALU: TStringField;
    SQLAlunosFONE_ALU: TStringField;
    SQLAlunosEMAIL_ALU: TStringField;
    SQLAlunosCORPELE_ALU: TStringField;
    SQLAlunosRENDAPAI_ALU: TFMTBCDField;
    SQLAlunosRENDAMAE_ALU: TFMTBCDField;
    SQLAlunosRENDAALTERN_ALU: TFMTBCDField;
    SQLAlunosESTCIVPAI_ALU: TStringField;
    SQLAlunosNUMPES_ALU: TIntegerField;
    SQLAlunosNUMPESTRAB_ALU: TIntegerField;
    SQLAlunosTIPOSANG_ALU: TStringField;
    SQLAlunosTIPORESID_ALU: TStringField;
    SQLAlunosVALALUG_ALU: TFMTBCDField;
    SQLAlunosTIPOCARRO_ALU: TStringField;
    SQLAlunosANOCARRO_ALU: TIntegerField;
    SQLAlunosDOENCAFAM_ALU: TStringField;
    SQLAlunosJA_ESTAGIOU_ALU: TStringField;
    SQLAlunosTEMPO_ESTAGIO_ALU: TStringField;
    SQLAlunosEXPCOMPUT_ALU: TStringField;
    SQLAlunosTURNOESTAGIO_ALU: TStringField;
    SQLAlunosRENDAPERCAPITA_ALU: TFMTBCDField;
    SQLAlunosSTATUS_ALU: TStringField;
    SQLAlunosLOGRA_CEP: TStringField;
    SQLAlunosDESCRI_TIPOLOG: TStringField;
    SQLAlunosNOME_CID: TStringField;
    SQLAlunosUF_CID: TStringField;
    SQLAlunosNOME_BAI: TStringField;
    CDSAlunos: TClientDataSet;
    CDSAlunosIDALU: TIntegerField;
    CDSAlunosIDCEP: TStringField;
    CDSAlunosNOME_ALU: TStringField;
    CDSAlunosMATRICULA_ALU: TStringField;
    CDSAlunosCOMPLEEND_ALU: TStringField;
    CDSAlunosZONARES_ALU: TStringField;
    CDSAlunosSEXO_ALU: TStringField;
    CDSAlunosNACIO_ALU: TStringField;
    CDSAlunosCPF_ALU: TStringField;
    CDSAlunosRG_ALU: TStringField;
    CDSAlunosEXPRG_ALU: TStringField;
    CDSAlunosDTNASC_ALU: TDateField;
    CDSAlunosDTEXPRG_ALU: TDateField;
    CDSAlunosMAE_ALU: TStringField;
    CDSAlunosCPFMAE_ALU: TStringField;
    CDSAlunosRGMAE_ALU: TStringField;
    CDSAlunosLOCTRABMAE_ALU: TStringField;
    CDSAlunosPAI_ALU: TStringField;
    CDSAlunosCPFPAI_ALU: TStringField;
    CDSAlunosRGPAI_ALU: TStringField;
    CDSAlunosLOCTRABPAI_ALU: TStringField;
    CDSAlunosCONJUGE_ALU: TStringField;
    CDSAlunosLOCTRABCONJ_ALU: TStringField;
    CDSAlunosFONE_ALU: TStringField;
    CDSAlunosEMAIL_ALU: TStringField;
    CDSAlunosCORPELE_ALU: TStringField;
    CDSAlunosRENDAPAI_ALU: TFMTBCDField;
    CDSAlunosRENDAMAE_ALU: TFMTBCDField;
    CDSAlunosRENDAALTERN_ALU: TFMTBCDField;
    CDSAlunosESTCIVPAI_ALU: TStringField;
    CDSAlunosNUMPES_ALU: TIntegerField;
    CDSAlunosNUMPESTRAB_ALU: TIntegerField;
    CDSAlunosTIPOSANG_ALU: TStringField;
    CDSAlunosTIPORESID_ALU: TStringField;
    CDSAlunosVALALUG_ALU: TFMTBCDField;
    CDSAlunosTIPOCARRO_ALU: TStringField;
    CDSAlunosANOCARRO_ALU: TIntegerField;
    CDSAlunosDOENCAFAM_ALU: TStringField;
    CDSAlunosJA_ESTAGIOU_ALU: TStringField;
    CDSAlunosTEMPO_ESTAGIO_ALU: TStringField;
    CDSAlunosEXPCOMPUT_ALU: TStringField;
    CDSAlunosTURNOESTAGIO_ALU: TStringField;
    CDSAlunosRENDAPERCAPITA_ALU: TFMTBCDField;
    CDSAlunosSTATUS_ALU: TStringField;
    CDSAlunosLOGRA_CEP: TStringField;
    CDSAlunosDESCRI_TIPOLOG: TStringField;
    CDSAlunosNOME_CID: TStringField;
    CDSAlunosUF_CID: TStringField;
    CDSAlunosNOME_BAI: TStringField;
    DSAlunos: TDataSource;
    TabSheet3: TRzTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBNomeAlu: TRzDBEdit;
    DBMatricula: TRzDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBSexo: TRzDBEdit;
    Label5: TLabel;
    DBNacionalidade: TRzDBEdit;
    DBCpf: TRzDBEdit;
    DBRG: TRzDBEdit;
    DBCorPele: TRzDBEdit;
    RzDBCEP: TRzDBButtonEdit;
    RzDBBairro: TRzDBEdit;
    RzDBCidade: TRzDBEdit;
    DBTipoLog: TRzDBEdit;
    DBLogradouro: TRzDBEdit;
    DBComplemento: TRzDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBNomePai: TRzDBEdit;
    DBCpfPai: TRzDBEdit;
    DBRgPai: TRzDBEdit;
    DBLocTrabPai: TRzDBEdit;
    DBNomeMae: TRzDBEdit;
    DBCpfMae: TRzDBEdit;
    DBRgMae: TRzDBEdit;
    DBLocTrabMae: TRzDBEdit;
    DBConjugeAlu: TRzDBEdit;
    DbLocTrabConju: TRzDBEdit;
    DBRendaPai: TRzDBEdit;
    DBRendaMae: TRzDBEdit;
    DBRendaPercapita: TRzDBEdit;
    DBRendaAlt: TRzDBEdit;
    DBNumPes: TRzDBEdit;
    DBNumPesTrab: TRzDBEdit;
    DBDoencaFam: TRzDBEdit;
    DBTipoResidencia: TRzDBEdit;
    DBValorAlu: TRzDBEdit;
    DBZonaRes: TRzDBEdit;
    DBTipoCarro: TRzDBEdit;
    DBAnoCarro: TRzDBEdit;
    DBJaEstagiou: TRzDBEdit;
    DBTempoEstagio: TRzDBEdit;
    DBTurnoEstagio: TRzDBEdit;
    DBExpComp: TRzDBEdit;
    DBTipoSangue: TRzDBEdit;
    DBFoneAlu: TRzDBEdit;
    DBEmail: TRzDBEdit;
    DBExpRG: TRzDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEstCivil: TRzDBEdit;
    Label48: TLabel;
    FotoAluno: TDBImage;
    OpenPicDialog: TOpenPictureDialog;
    SQLAlunosFOTO_ALU: TBlobField;
    CDSAlunosFOTO_ALU: TBlobField;
    TabSheet2: TRzTabSheet;
    DBGridTurmas: TRzDBGrid;
    CDSRelTurmas: TClientDataSet;
    DSRelTurmas: TDataSource;
    DSLiga: TDataSource;
    SQLRelTurmas: TSQLDataSet;
    SQLRelTurmasIDALU: TIntegerField;
    SQLRelTurmasIDTUR: TIntegerField;
    SQLRelTurmasOBS_RELTURALU: TStringField;
    SQLRelTurmasSTATUS_RELTURALU: TStringField;
    SQLRelTurmasIDCURSO: TIntegerField;
    SQLRelTurmasNUM_TUR: TStringField;
    SQLRelTurmasTURNO_TUR: TStringField;
    SQLRelTurmasANO_TUR: TIntegerField;
    SQLRelTurmasSTATUS_TUR: TStringField;
    SQLRelTurmasDESCRICAO_CUR: TStringField;
    SQLRelTurmasSTATUS_CUR: TStringField;
    CDSAlunosSQLRelTurmas: TDataSetField;
    CDSRelTurmasIDALU: TIntegerField;
    CDSRelTurmasIDTUR: TIntegerField;
    CDSRelTurmasOBS_RELTURALU: TStringField;
    CDSRelTurmasSTATUS_RELTURALU: TStringField;
    CDSRelTurmasIDCURSO: TIntegerField;
    CDSRelTurmasNUM_TUR: TStringField;
    CDSRelTurmasTURNO_TUR: TStringField;
    CDSRelTurmasANO_TUR: TIntegerField;
    CDSRelTurmasSTATUS_TUR: TStringField;
    CDSRelTurmasDESCRICAO_CUR: TStringField;
    CDSRelTurmasSTATUS_CUR: TStringField;
    SQLAlunosIDCID: TIntegerField;
    CDSAlunosIDCID: TIntegerField;
    DBNatu: TRzDBEdit;
    Label50: TLabel;
    DBBtnNatu: TRzDBButtonEdit;
    RzDBUF: TRzDBEdit;
    SQLAlunosNATURALIDADE: TStringField;
    CDSAlunosNATURALIDADE: TStringField;
    SQLRelTurmasIDRELTURALU: TIntegerField;
    CDSRelTurmasIDRELTURALU: TIntegerField;
    SQLRelTurmasDATA_RELTURALU: TDateField;
    SQLRelTurmasHORA_RELTURALU: TTimeField;
    CDSRelTurmasDATA_RELTURALU: TDateField;
    CDSRelTurmasHORA_RELTURALU: TTimeField;
    DBDataNasc: TRzDBDateTimeEdit;
    DBDataExpRG: TRzDBDateTimeEdit;
    Bevel1: TBevel;
    Label49: TLabel;
    TabSheet4: TRzTabSheet;
    RzDBGrid1: TRzDBGrid;
    SqlConsAlu: TSQLDataSet;
    CdsConsAlu: TClientDataSet;
    DsConsAlu: TDataSource;
    CDSAlunosSqlConsAlu: TDataSetField;
    SqlConsAluIDCONSALU: TIntegerField;
    SqlConsAluIDALU: TIntegerField;
    SqlConsAluIDCONS: TIntegerField;
    SqlConsAluCOMENT_CONSALU: TStringField;
    SqlConsAluENCAM_CONSALU: TStringField;
    SqlConsAluPROBLE_CONSALU: TStringField;
    SqlConsAluSTATUS_CONSALU: TStringField;
    SqlConsAluNOME_ALU: TStringField;
    SqlConsAluFOTO_ALU: TBlobField;
    SqlConsAluSTATUS_ALU: TStringField;
    SqlConsAluNUM_TUR: TStringField;
    SqlConsAluANO_TUR: TIntegerField;
    CdsConsAluIDCONSALU: TIntegerField;
    CdsConsAluIDALU: TIntegerField;
    CdsConsAluIDCONS: TIntegerField;
    CdsConsAluCOMENT_CONSALU: TStringField;
    CdsConsAluENCAM_CONSALU: TStringField;
    CdsConsAluPROBLE_CONSALU: TStringField;
    CdsConsAluSTATUS_CONSALU: TStringField;
    CdsConsAluNOME_ALU: TStringField;
    CdsConsAluFOTO_ALU: TBlobField;
    CdsConsAluSTATUS_ALU: TStringField;
    CdsConsAluNUM_TUR: TStringField;
    CdsConsAluANO_TUR: TIntegerField;
    Bevel2: TBevel;
    Label51: TLabel;
    Bevel3: TBevel;
    Label52: TLabel;
    SqlConsAluDATA_CONS: TDateField;
    CdsConsAluDATA_CONS: TDateField;
    procedure BtBuscarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FotoAlunoDblClick(Sender: TObject);
    procedure SQLAlunosIDCEPValidate(Sender: TField);
    procedure CDSAlunosIDCEPValidate(Sender: TField);
    procedure CDSAlunosIDCIDValidate(Sender: TField);
    procedure DBGridTurmasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSRelTurmasIDTURValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure DBDataNascExit(Sender: TObject);
    procedure BuscaRapidaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Aluno: TF_Aluno;

implementation

uses UDM, u_BusAlu, U_StatusAlu, UCadRelTurAlu, Math;

{$R *.dfm}

procedure TF_Aluno.BtBuscarClick(Sender: TObject);
begin

  SQLAlunos.ParamByName('PARALU').AsInteger :=0;

  Application.CreateForm(TFrmBuscaAlu, FrmBuscaAlu);
  FrmBuscaAlu.QuemChamou:= 'ALUNOS';
  FrmBuscaAlu.ShowModal;
  FrmBuscaAlu.Free;

  IF (SQLAlunos.ParamByName('PARALU').AsInteger <> 0) THEN
  BEGIN

   SQLAlunos.Open;
   CDSAlunos.Open;
   CDSAlunos.Edit;
   BuscaRapida.Text := IntToStr(CDSAlunosIDALU.AsInteger);
    INHERITED;

  END;  

end;

procedure TF_Aluno.BtNovoClick(Sender: TObject);
begin


  Try

        CDSAlunos.Active:= False;
        SQLAlunos.Close;

        SQLAlunos.ParamByName('PARALU').AsInteger:=0;

        SQLAlunos.Open;
        CDSAlunos.Open;

        CDSAlunos.Append;

        CDSAlunosSTATUS_ALU.AsString := 'A';

        DM.SqlAux.Close;
        DM.SqlAux.CommandText := '';
        DM.SqlAux.CommandText := ' SELECT MAX(ALUNOS.IDALU) FROM ALUNOS';
        DM.SqlAux.Open;
        CDSAlunosIDALU.AsInteger := DM.SqlAux.FIELDBYNAME('MAX').AsInteger +1 ;
        BuscaRapida.Text              := IntToStr(CDSAlunosIDALU.AsInteger);


    Except
        ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
        exit;

    End;

  inherited;
  FocusControl(DBMatricula);


end;

procedure TF_Aluno.BtCancelarClick(Sender: TObject);
begin
  //Cancelando a ação
      CDSAlunos.Cancel;

      //Desligando os Datasets
      CDSAlunos.Close;
      SQLAlunos.Close;

      //Rodar a Herança.....
  inherited;
  Paginas.TabIndex:=0;
  BuscaRapida.Clear;
  FocusControl(BuscaRapida);

end;

procedure TF_Aluno.BtGravarClick(Sender: TObject);
begin
  If (Trim(CDSAlunosNOME_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBNomeAlu.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosIDCEP.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      RzDBCEP.SetFocus;
      exit;
    end;
     If (Trim(CDSAlunosSEXO_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBSexo.SetFocus;
      exit;
    end;
     If (Trim(CDSAlunosDTNASC_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBDataNasc.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosMAE_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBNomeMae.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosPAI_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBNomePai.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosCORPELE_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBCorPele.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosESTCIVPAI_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBEstCivil.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosNUMPES_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBNumPes.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosNUMPESTRAB_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBNumPesTrab.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosTIPORESID_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBTipoResidencia.SetFocus;
      exit;
    end;
    If (Trim(CDSAlunosRENDAPERCAPITA_ALU.AsString)= '') then
    begin
      ShowMessage('Atributo Obrigatório...');
      DBRendaPercapita.SetFocus;
      exit;
    end;
    IF (CDSAlunos.State <> DSINSERT) AND (CDSAlunos.State <> DSEDIT) THEN
      BEGIN
           CDSAlunos.Edit;
      END;


    Try
      CDSAlunos.Post;
      CDSAlunos.ApplyUpdates(0);
    Except
      ShowMessage('Erro de Gravação');
      DBNomeAlu.SetFocus;
      exit;
    End;


  CDSAlunos.Close;
  SQLAlunos.Close;

  Paginas.TabIndex:=0;
  BuscaRapida.Clear;
  FocusControl(DBNomeAlu);
  inherited;
end;

procedure TF_Aluno.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
           //Na sequência estou testando se existe algum registro
           //com o valor de chave primária informado
           DM.SqlAux.Close;
           DM.SqlAux.CommandText := '';
           DM.SqlAux.CommandText := ' SELECT' +
                                         ' ALUNOS.IDALU, '+
                                         ' ALUNOS.STATUS_ALU '+
                                         ' FROM ALUNOS '+
                                         ' WHERE ALUNOS.IDALU = :PARBUSALU' ;
           DM.SqlAux.ParamByName('PARBUSALU').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SqlAux.FieldByName('IDALU').AsInteger > 0) Then
             Begin
                If (DM.SqlAux.FieldByName('STATUS_ALU').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do cliente
                      CDSAlunos.Close;
                      SQLAlunos.Close;
                      SQLAlunos.ParamByName('PARALU').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLAlunos.Open;
                      CDSAlunos.Open; 

                      //Colocar a tabela em modo de edição
                      CDSAlunos.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Aluno Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O aluno está desativado
             End //achou o aluno
           Else
             Begin
                ShowMessage('Aluno Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha aluno com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key


end;

procedure TF_Aluno.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
  BtNovo.Click;
end;

procedure TF_Aluno.BtStatusClick(Sender: TObject);
begin
  Application.CreateForm(TF_StatusAlu, F_StatusAlu);
  F_StatusAlu.ShowModal;
  F_StatusAlu.Free;

end;

procedure TF_Aluno.FormCreate(Sender: TObject);
begin
 inherited;
 FotoAluno.Picture := nil;
 Paginas.TabIndex:=0;

end;

procedure TF_Aluno.FotoAlunoDblClick(Sender: TObject);
var
  IMAGEMEMORIA : TPicture;

begin
  OpenPicDialog.Execute;

   Try
    //codigicaçãopara carregar a imagem
    if (FileExists(OpenPicDialog.FileName)) then
    begin
      {se o arquivo existir, instância o objeto TPicture, carrega a imagem
       para dentro dela, copia o objeto para a área de transferência, copia
       da área de tranferência para o DBImage}
       imagememoria:= TPicture.Create;
       imagememoria.LoadFromFile(OpenPicDialog.FileName);
       Clipboard.Assign(imagememoria);
       FotoAluno.PasteFromClipboard;
       imagememoria.free;

    end;

   except
    //codficação caso ocorram erros
    ShowMessage('Erro, arquivo corrompido!');
    exit;
   end;

end;

procedure TF_Aluno.SQLAlunosIDCEPValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                                ' CEPS.LOGRA_CEP,' +
                                ' TIPOLOGRA.DESCRI_TIPOLOG,' +
                                ' CIDADES.NOME_CID,' +
                                ' CIDADES.UF_CID,' +
                                ' BAIRROS.NOME_BAI' +
                                ' FROM CEPS ' +
                                ' LEFT OUTER JOIN TIPOLOGRA ON (TIPOLOGRA.IDTIPOLOG = CEPS.IDTIPOLOG) ' +
                                ' LEFT OUTER JOIN CIDADES ON (CIDADES.IDCID = CEPS.IDCID) ' +
                                ' LEFT OUTER JOIN BAIRROS ON (BAIRROS.IDBAI = CEPS.IDBAI) ' +
                                ' WHERE CEPS.IDCEP = :PARIDCEP ' ;
  DM.SqlAux.ParamByName('PARIDCEP').AsInteger:= CDSAlunosIDCEP.AsInteger;
  DM.SqlAux.Open;

  CDSAlunosLOGRA_CEP.AsString := DM.SqlAux.FIELDBYNAME('LOGRA_CEP').AsString;
  CDSAlunosDESCRI_TIPOLOG.AsString := DM.SqlAux.FIELDBYNAME('DESCRI_TIPOLOG').AsString;
  CDSAlunosNOME_CID.AsString := DM.SqlAux.FIELDBYNAME('NOME_CID').AsString;
  CDSAlunosUF_CID.AsString := DM.SqlAux.FIELDBYNAME('UF_CID').AsString;
  CDSAlunosNOME_BAI.AsString := DM.SqlAux.FIELDBYNAME('NOME_BAI').AsString;
end;

procedure TF_Aluno.CDSAlunosIDCEPValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                                ' CEPS.LOGRA_CEP,' +
                                ' TIPOLOGRA.DESCRI_TIPOLOG,' +
                                ' CIDADES.NOME_CID,' +
                                ' CIDADES.UF_CID,' +
                                ' BAIRROS.NOME_BAI' +
                                ' FROM CEPS ' +
                                ' LEFT OUTER JOIN TIPOLOGRA ON (TIPOLOGRA.IDTIPOLOG = CEPS.IDTIPOLOG) ' +
                                ' LEFT OUTER JOIN CIDADES ON (CIDADES.IDCID = CEPS.IDCID) ' +
                                ' LEFT OUTER JOIN BAIRROS ON (BAIRROS.IDBAI = CEPS.IDBAI) ' +
                                ' WHERE CEPS.IDCEP = :PARIDCEP ' ;
  DM.SqlAux.ParamByName('PARIDCEP').AsInteger:= CDSAlunosIDCEP.AsInteger;
  DM.SqlAux.Open;

  CDSAlunosLOGRA_CEP.AsString := DM.SqlAux.FIELDBYNAME('LOGRA_CEP').AsString;
  CDSAlunosDESCRI_TIPOLOG.AsString := DM.SqlAux.FIELDBYNAME('DESCRI_TIPOLOG').AsString;
  CDSAlunosNOME_CID.AsString := DM.SqlAux.FIELDBYNAME('NOME_CID').AsString;
  CDSAlunosUF_CID.AsString := DM.SqlAux.FIELDBYNAME('UF_CID').AsString;
  CDSAlunosNOME_BAI.AsString := DM.SqlAux.FIELDBYNAME('NOME_BAI').AsString;

end;



procedure TF_Aluno.CDSAlunosIDCIDValidate(Sender: TField);
begin
  inherited;
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := ' SELECT ' +
                                ' CIDADES.NOME_CID' +
                                ' FROM CIDADES ' +
                                ' WHERE CIDADES.IDCID = :PARIDCID ' ;
  DM.SqlAux.ParamByName('PARIDCID').AsInteger:= CDSAlunosIDCID.AsInteger;
  DM.SqlAux.Open;

  CDSAlunosNATURALIDADE.AsString := DM.SqlAux.FIELDBYNAME('NOME_CID').AsString;
end;

procedure TF_Aluno.DBGridTurmasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF (KEY = VK_F5) THEN
   BEGIN
       CDSRelTurmas.Append;

       DM.SqlAux.Close;
       DM.SqlAux.CommandText := 'SELECT MAX(RELTURALU.IDRELTURALU) FROM RELTURALU';
       DM.SqlAux.Open;

       CDSRelTurmasIDRELTURALU.AsInteger := DM.SqlAux.FIELDBYNAME('MAX').AsInteger + 1 ;
       CDSRelTurmasSTATUS_RELTURALU.AsString:= 'A';

       CDSRelTurmasHORA_RELTURALU.AsDateTime := TIME();
       CDSRelTurmasDATA_RELTURALU.AsDateTime := DATE();

       Application.CreateForm(TFRM_RelTurAlu,FRM_RelTurAlu);
       FRM_RelTurAlu.AtivaInclui;
       FRM_RelTurAlu.ShowModal;
       FRM_RelTurAlu.Free;
       EXIT;
   END; 
 IF (KEY = VK_F6) THEN
   BEGIN
     IF (CDSRelTurmasIDRELTURALU.AsInteger > 0) THEN
       BEGIN
       CDSRelTurmas.Edit;
           Application.CreateForm(TFRM_RelTurAlu,FRM_RelTurAlu);
           FRM_RelTurAlu.AtivaInclui;
           FRM_RelTurAlu.ShowModal;
           FRM_RelTurAlu.Free;
           EXIT;
       END;
   END;


end;

procedure TF_Aluno.CDSRelTurmasIDTURValidate(Sender: TField);
begin
  DM.SqlAux.Close;
  DM.SqlAux.CommandText := '';
  DM.SqlAux.CommandText := ' SELECT ' +
                                ' TURMAS.NUM_TUR,' +
                                ' TURMAS.TURNO_TUR,' +
                                ' TURMAS.ANO_TUR,' +
                                ' CURSOS.DESCRICAO_CUR' +
                                ' FROM TURMAS ' +
                                ' LEFT OUTER JOIN CURSOS ON (CURSOS.IDCURSO = TURMAS.IDCURSO) ' +
                                ' WHERE TURMAS.IDTUR = :PARIDTUR ' ;
  DM.SqlAux.ParamByName('PARIDTUR').AsInteger:= CDSRelTurmasIDTUR.AsInteger;
  DM.SqlAux.Open;

  CDSRelTurmasDESCRICAO_CUR.AsString := DM.SqlAux.FIELDBYNAME('DESCRICAO_CUR').AsString;
  CDSRelTurmasNUM_TUR.AsString := DM.SqlAux.FIELDBYNAME('NUM_TUR').AsString;
  CDSRelTurmasTURNO_TUR.AsString := DM.SqlAux.FIELDBYNAME('TURNO_TUR').AsString;
  CDSRelTurmasANO_TUR.AsString := DM.SqlAux.FIELDBYNAME('ANO_TUR').AsString;
end;

procedure TF_Aluno.FormShow(Sender: TObject);
begin
  inherited;
  If (BuscaRapida.Text <> '') THEN
  BEGIN
        //keybd_event(VK_RETURN,0 ,0 ,0);
  END ;

  If ( Trim(BuscaRapida.Text) = '' ) Then
        Begin
              
        End
      Else
        Begin
           //Na sequência estou testando se existe algum registro
           //com o valor de chave primária informado
           DM.SqlAux.Close;
           DM.SqlAux.CommandText := '';
           DM.SqlAux.CommandText := ' SELECT' +
                                         ' ALUNOS.IDALU, '+
                                         ' ALUNOS.STATUS_ALU '+
                                         ' FROM ALUNOS '+
                                         ' WHERE ALUNOS.IDALU = :PARBUSALU' ;
           DM.SqlAux.ParamByName('PARBUSALU').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SqlAux.FieldByName('IDALU').AsInteger > 0) Then
             Begin
                If (DM.SqlAux.FieldByName('STATUS_ALU').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do cliente
                      CDSAlunos.Close;
                      SQLAlunos.Close;
                      SQLAlunos.ParamByName('PARALU').AsInteger := StrToInt(BuscaRapida.Text);
                      ////SQLAlunos.Open;
                      CDSAlunos.Open; 

                      //Colocar a tabela em modo de edição
                      ////CDSAlunos.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      ////AtivaInclui;
                      BtNovo.Enabled:=false;
                      BtCancelar.Enabled:=false;
                      BtGravar.Enabled:=false;
                      BtSair.Enabled:=True;
                      BtStatus.Enabled:=false;
                      BtBuscar.Enabled:=false;
                      PanDados.Enabled:=True;
                      BuscaRapida.Enabled:=false;

                  End
                Else
                  Begin
                      ShowMessage('Aluno Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O aluno está desativado
             End //achou o aluno
           Else
             Begin
                ShowMessage('Aluno Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha aluno com o código digitado
        End;//end do else do espaço em branco


end;

procedure TF_Aluno.BtSairClick(Sender: TObject);
begin
  IF NOT (BtCancelar.Enabled)THEN
  BEGIN
      BtCancelar.Click;
  END;
  inherited;
end;

procedure TF_Aluno.DBDataNascExit(Sender: TObject);
begin
  TRY
      StrToDate(DBDataNasc.Text);
  EXCEPT
  
     ON EDBEditError do
         ShowMessage('Data inválida!');
    //  Exit;
     

  END;
end;

procedure TF_Aluno.BuscaRapidaButtonClick(Sender: TObject);
begin
  inherited;
  BtStatus.Click;
end;

end.
