unit UCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr,
  RzDBEdit, DBCtrls, RzDBBnEd;

type
  TFrm_Cep = class(TFRM_Cadastros)
    SqlCep: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsCep: TClientDataSet;
    SqlCepIDCEP: TStringField;
    SqlCepIDCID: TIntegerField;
    SqlCepIDBAI: TIntegerField;
    SqlCepIDTIPOLOG: TIntegerField;
    SqlCepLOGRA_CEP: TStringField;
    SqlCepSTATUS_CEP: TStringField;
    SqlCepNOME_BAI: TStringField;
    SqlCepNOME_CID: TStringField;
    SqlCepUF_CID: TStringField;
    SqlCepDESCRI_TIPOLOG: TStringField;
    CdsCepIDCEP: TStringField;
    CdsCepIDCID: TIntegerField;
    CdsCepIDBAI: TIntegerField;
    CdsCepIDTIPOLOG: TIntegerField;
    CdsCepLOGRA_CEP: TStringField;
    CdsCepSTATUS_CEP: TStringField;
    CdsCepNOME_BAI: TStringField;
    CdsCepNOME_CID: TStringField;
    CdsCepUF_CID: TStringField;
    CdsCepDESCRI_TIPOLOG: TStringField;
    Label1: TLabel;
    DSCeps: TDataSource;
    DBENomeLog: TRzDBEdit;
    DBENomeCid: TRzDBEdit;
    DBENomeBai: TRzDBEdit;
    DBETipoLog: TRzDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEidcid: TRzDBButtonEdit;
    DBEidbai: TRzDBButtonEdit;
    DBEidtipolog: TRzDBButtonEdit;
    DBEestado: TRzDBEdit;
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BuscaRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure CdsCepIDCIDValidate(Sender: TField);
    procedure CdsCepIDBAIValidate(Sender: TField);
    procedure CdsCepIDTIPOLOGValidate(Sender: TField);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure DBEidcidButtonClick(Sender: TObject);
    procedure DBEidcidAltBtnClick(Sender: TObject);
    procedure DBEidbaiAltBtnClick(Sender: TObject);
    procedure DBEidbaiButtonClick(Sender: TObject);
    procedure DBEidtipologButtonClick(Sender: TObject);
    procedure DBEidtipologAltBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cep: TFrm_Cep;

implementation

uses UDM, UBuscaCep, UStatusCEP, UBuscaBair, UBuscaCid, UBuscaLog,
  UBairros, UCidades, UTipoLogra;

{$R *.dfm}

procedure TFrm_Cep.BtNovoClick(Sender: TObject);
var
Cep : String;
i : Integer;
begin

  IF (TRIM(BuscaRapida.Text) = '') THEN
    BEGIN
       //CARREGAR UMA CAIXA DE DIALOGO PARA DIGITAÇÃO DO CEP
       Cep  := InputBox('Entrada de Dados','Informe o CEP para Adiconar...','');

       If (Length(cep) <> 8) THEN
         BEGIN
            ShowMessage('Cep Inválido...');
            Exit;
         END;


       For I := 1 To length(Cep) Do
        Begin
          If not (cep[I] in ['0'..'9']) Then
            Begin
              ShowMessage('Cep Inválido...');
              Exit;
            End;
        End;

       //Se o fluxo de execução está aqui, é pq foram digitados, 8 digitos numéricos válidos...
       //Agora vamos ver se o cep já não existe no banco

       DM.SqlAux.Close;
       DM.SQLAux.CommandText := '';
       DM.SQLAux.CommandText := 'SELECT CEPS.IDCEP, CEPS.STATUS_CEP FROM CEPS WHERE CEPS.IDCEP = ' + QuotedStr(CEP);
       DM.SQLAux.Open;

       IF (DM.SQLAux.FieldByName('STATUS_CEP').AsString = '') THEN
         BEGIN
            CdsCep.Close;
            SQLCep.Close;
            SQLCep.ParamByName('PARCEP').AsString := '0';
            SQLCep.Open;
            CDSCep.Open;

            CDSCep.Append;
            CdsCepSTATUS_CEP.AsString := 'A';
            CdsCepIDCEP.AsString      := CEP;
            BuscaRapida.Text          := CEP;
            inherited;
            FocusControl(DBENomeLog);
         END
       ELSE
         BEGIN
            ShowMessage('Cep Já Existente...');
            Exit;
         END;//end do cep
    END//end do BOTAO novo com EDIT do cep em branco
  Else
    Begin
            ShowMessage('Cep Preenchido, Impossível Incluir....');
            Exit;
    End;

end;

procedure TFrm_Cep.BtCancelarClick(Sender: TObject);
begin
  inherited;
  CdsCep.Cancel;
  CdsCep.Close;
  SqlCep.Close;
  BuscaRapida.Clear;
end;

procedure TFrm_Cep.BtGravarClick(Sender: TObject);
begin
  If (Trim(CdsCepLOGRA_CEP.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBENomeLog.SetFocus;
     Exit;
    End;

    If (Trim(CdsCepIDBAI.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBEidbai.SetFocus;
     Exit;
    End;

    If (Trim(CdsCepIDCID.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBEidcid.SetFocus;
     Exit;
    End;

    If (Trim(CdsCepIDTIPOLOG.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBEidtipolog.SetFocus;
     Exit;
    End;

    CdsCepIDCEP.AsString := BuscaRapida.Text;

    if (Trim(CdsCepIDCEP.AsString) = '')then
    begin
       ShowMessage('Atributo Obrigatório....');
       BuscaRapida.SetFocus;
       exit;
    end;

  Try
      CdsCep.Post;
      CdsCep.ApplyUpdates(0);
      
      BuscaRapida.Text := '';
  Except
      ShowMessage('Erro de Gravação');
      DBENomeLog.SetFocus;
      exit;
  End;


  inherited;

  CdsCep.Close;
  SqlCep.Close;
end;

procedure TFrm_Cep.BuscaRapidaKeyPress(Sender: TObject; var Key: Char);
var
 i : integer;
begin
 inherited;
 If (key = #13) Then
  Begin
   IF (TRIM(BuscaRapida.Text) = '') THEN
    BEGIN
      BtNovo.Click;
    END//end do BOTAO novo com EDIT DO cep em branco
   Else
    Begin

       If (Length(BuscaRapida.Text) <> 8) THEN
         BEGIN
            ShowMessage('Cep Inválido...');
            Exit;
         END;


       For I := 1 To length(BuscaRapida.Text) Do
        Begin
          If not (BuscaRapida.Text[I] in ['0'..'9']) Then
            Begin
              ShowMessage('Cep Inválido...');
              Exit;
            End;
        End;


       DM.SQLAux.Close;
       DM.SQLAux.CommandText := '';
       DM.SQLAux.CommandText := 'SELECT CEPS.IDCEP, CEPS.STATUS_CEP FROM CEPS WHERE CEPS.IDCEP = ' + QuotedStr(BuscaRapida.Text);
       DM.SQLAux.Open;
       IF (DM.SQLAux.FieldByName('STATUS_CEP').AsString = 'A') THEN
         BEGIN
            CDSCep.Close;
            SQLCep.Close;
            SQLCep.ParamByName('PARCEP').AsString := BuscaRapida.Text;
            SQLCep.Open;
            CDSCep.Open;

            CDSCep.Edit;
            AtivaInclui;//procedure que muda o estado dos componentes
            FocusControl(DBENomeLog);
         END
       ELSE
         BEGIN
            ShowMessage('Cep Inexistente ou Cancelado....');
            Exit;
         END;//end do cep cancelado ou inexistente
    End;
  end;  //end do enter

end;

procedure TFrm_Cep.CdsCepIDCIDValidate(Sender: TField);
begin
  inherited;
  DM.sqlauX.close;
  DM.sqlaux.commandtext := ' SELECT ' +
                           ' CIDADES.NOME_CID,' +
                           ' CIDADES.UF_CID ' +
                           ' FROM CIDADES ' +
                           ' WHERE CIDADES.IDCID = :PARCID' ;
  DM.SQLAux.ParamByName('PARCID').AsInteger := CdsCepIDCID.AsInteger;
  DM.SQLAux.Open;

  CdsCepNOME_CID.AsString := DM.SQLAux.FIELDBYNAME('NOME_CID').AsString;
  CdsCepUF_CID.AsString := DM.SQLAux.FIELDBYNAME('UF_CID').AsString;

end;

procedure TFrm_Cep.CdsCepIDBAIValidate(Sender: TField);
begin
  inherited;
  DM.sqlauX.close;
  DM.sqlaux.commandtext := ' SELECT ' +
                           ' BAIRROS.NOME_BAI ' +
                           ' FROM BAIRROS ' +
                           ' WHERE BAIRROS.IDBAI = :PARBAI' ;
  DM.SQLAux.ParamByName('PARBAI').AsInteger := CdsCepIDBAI.AsInteger;
  DM.SQLAux.Open;

  CDSCepNOME_BAI.AsString := DM.SQLAux.FIELDBYNAME('NOME_BAI').AsString;
end;

procedure TFrm_Cep.CdsCepIDTIPOLOGValidate(Sender: TField);
begin
  inherited;
  DM.sqlauX.close;
  DM.sqlaux.commandtext := ' SELECT ' +
                           ' TIPOLOGRA.DESCRI_TIPOLOG ' +
                           ' FROM TIPOLOGRA ' +
                           ' WHERE TIPOLOGRA.IDTIPOLOG = :PARIDTIP ' ;
  DM.SQLAux.ParamByName('PARIDTIP').AsString := CdsCepIDTIPOLOG.AsString;
  DM.SQLAux.Open;

  CdsCepDESCRI_TIPOLOG.AsString := DM.SQLAux.FIELDBYNAME('DESCRI_TIPOLOG').AsString;
end;

procedure TFrm_Cep.BtBuscarClick(Sender: TObject);
begin
  SqlCep.ParamByName('PARCEP').AsInteger := 0;

  Application.CreateForm(TFrmBuscaCep,FrmBuscaCep);

  FrmBuscaCep.QuemChamou := 'CEPS';

  FrmBuscaCep.ShowModal;
  FrmBuscaCep.Free;

  If (SqlCep.ParamByName('PARCEP').AsInteger <> 0) then
    Begin
      SqlCep.Open;
      CdsCep.Open;

      CdsCep.Edit;
      BuscaRapida.Text := IntToStr(CdsCepIDCEP.ASINTEGER);
      inherited;
    End;

end;

procedure TFrm_Cep.BtStatusClick(Sender: TObject);
begin
   Application.CreateForm(TFrmStatusCEP, FrmStatusCEP);
   FrmStatusCEP.ShowModal;
   FrmStatusCEP.free;
end;

procedure TFrm_Cep.DBEidcidButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmCidades,FrmCidades);
  FrmCidades.ShowModal;
  FrmCidades.Free;
end;

procedure TFrm_Cep.DBEidcidAltBtnClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmBuscaCidades,FrmBuscaCidades);
  FrmBuscaCidades.ShowModal;
  FrmBuscaCidades.Free;
end;

procedure TFrm_Cep.DBEidbaiAltBtnClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmBairros,FrmBairros);
  FrmBairros.ShowModal;
  FrmBairros.Free;
end;

procedure TFrm_Cep.DBEidbaiButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmBuscaBair,FrmBuscaBair);
  FrmBuscaBair.ShowModal;
  FrmBuscaBair.Free;
end;

procedure TFrm_Cep.DBEidtipologButtonClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmTipoLog,FrmTipoLog);
  FrmTipoLog.ShowModal;
  FrmTipoLog.Free;
end;

procedure TFrm_Cep.DBEidtipologAltBtnClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmBuscaLog,FrmBuscaLog);
  FrmBuscaLog.ShowModal;
  FrmBuscaLog.Free;
end;

end.
