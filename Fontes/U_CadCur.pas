unit U_CadCur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, FMTBcd, SqlExpr, DB, DBClient, Provider, RzDBEdit,
  StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton, RzStatus, RzPanel,
  ExtCtrls, RzDBBnEd, Grids, DBGrids, RzDBGrid, Menus;

type
  TFRM_CADCUR = class(TFRM_CADASTROS)
    Label1: TLabel;
    NOMENUCLEO: TRzDBEdit;
    PROVIDER: TDataSetProvider;
    CDScursos: TClientDataSet;
    DScursos: TDataSource;
    SQLcursos: TSQLDataSet;
    EditNuc: TRzDBButtonEdit;
    Label2: TLabel;
    EditDesc: TRzDBEdit;
    Label3: TLabel;
    EditSigla: TRzDBEdit;
    Label4: TLabel;
    SQLcursosIDCURSO: TIntegerField;
    SQLcursosIDNUC: TIntegerField;
    SQLcursosDESCRICAO_CUR: TStringField;
    SQLcursosSIGLA_CUR: TStringField;
    SQLcursosSTATUS_CUR: TStringField;
    CDScursosIDCURSO: TIntegerField;
    CDScursosIDNUC: TIntegerField;
    CDScursosDESCRICAO_CUR: TStringField;
    CDScursosSIGLA_CUR: TStringField;
    CDScursosSTATUS_CUR: TStringField;
    SQLcursosNOMENUC: TStringField;
    CDScursosNOMENUC: TStringField;
    DSliga: TDataSource;
    RzDBGrid1: TRzDBGrid;
    SQLdiscur: TSQLDataSet;
    CDSdiscur: TClientDataSet;
    DSdiscur: TDataSource;
    SQLdiscurIDDISCUR: TIntegerField;
    SQLdiscurIDCURSO: TIntegerField;
    SQLdiscurIDDISC: TIntegerField;
    SQLdiscurANOFASE_DISCUR: TIntegerField;
    SQLdiscurNUMAULAS_DISCUR: TIntegerField;
    SQLdiscurTIPOSEMANU_DISCUR: TStringField;
    SQLdiscurOBS_DISCUR: TStringField;
    SQLdiscurSTATUS_DISCUR: TStringField;
    CDScursosSQLdiscur: TDataSetField;
    CDSdiscurIDDISCUR: TIntegerField;
    CDSdiscurIDCURSO: TIntegerField;
    CDSdiscurIDDISC: TIntegerField;
    CDSdiscurANOFASE_DISCUR: TIntegerField;
    CDSdiscurNUMAULAS_DISCUR: TIntegerField;
    CDSdiscurTIPOSEMANU_DISCUR: TStringField;
    CDSdiscurOBS_DISCUR: TStringField;
    CDSdiscurSTATUS_DISCUR: TStringField;
    EditObs: TRzDBEdit;
    Label5: TLabel;
    Panel1: TPanel;
    Label6: TLabel;
    SQLdiscurDESCR_DISC: TStringField;
    CDSdiscurDESCR_DISC: TStringField;
    procedure BtNovoClick(Sender: TObject);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure CDScursosIDNUCValidate(Sender: TField);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Adicionardisciplina1Click(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure CDSdiscurIDDISCValidate(Sender: TField);
    procedure Editardisciplina1Click(Sender: TObject);
    procedure RzDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNucAltBtnClick(Sender: TObject);
    procedure EditNucButtonClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_CADCUR: TFRM_CADCUR;

  

implementation

uses  UDM, U_BusCur, U_StatusCur, U_CadDisCur, U_BusNuc, U_CadNuc,
  U_CadTur;

{$R *.dfm}

procedure TFRM_CADCUR.BtNovoClick(Sender: TObject);
begin
  Try
     // Desligando os DataSets
     CDSdiscur.Close;
     CDScursos.Active := False ; //ou Cdscli.Close;
     SQLdiscur.Close;
     SQLcursos.Close;



     //Zerando o parametro, para garantir que nenhum
     //cliente será carregado
     SQLcursos.ParamByName('PARCUR').AsInteger := 0 ;

     //Ligar os Datasets


     SQLcursos.Open;
     SQLdiscur.Open;

     CDScursos.Open;
     CDSdiscur.Open;

     //Criando um novo registro....
     CDScursos.Append;


     //Preenchendo os Atributos automaticamente
     CDScursosSTATUS_CUR.AsString := 'A';
     //Para Desenvolver o código automático, vou utilizar o sqlaux do DM
     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(CURSOS.IDCURSO) FROM CURSOS';
     DM.SQLAux.Open;
     CDScursosIDCURSO.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text               :=  IntToStr(CDScursosIDCURSO.AsInteger);



  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;
  inherited;
  RzDBGrid1.Enabled:=false;


end;

procedure TFRM_CADCUR.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
 BtNovo.Click;
end;

procedure TFRM_CADCUR.BtCancelarClick(Sender: TObject);
begin
 //Cancelando a ação



     CDSdiscur.Close;
     CDScursos.Active := False ; //ou Cdscli.Close;
     SQLdiscur.Close;
     SQLcursos.Close;

  //Rodar a Herança.....
  inherited;
   RzDBGrid1.Enabled:=true;
     IF (QuemChamou = 'TURMAS') THEN
    BEGIN
       CLOSE;
    END;
  

end;

procedure TFRM_CADCUR.CDScursosIDNUCValidate(Sender: TField);
begin
inherited;
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  NUCLEOS.IDNUC, ' +
                                '  NUCLEOS.DESCRICAO_NUC, ' +
                                '  NUCLEOS.STATUS_NUC ' +
                                '  FROM NUCLEOS ' +
                                '  WHERE NUCLEOS.IDNUC= :PARNUC ' ;

  DM.SQLAux.ParamByName('PARNUC').AsInteger := CDScursosIDNUC.AsInteger;
  DM.SQLAux.Open;

  
  CDScursosNOMENUC.AsString := DM.SQLAux.FieldByName('DESCRICAO_NUC').AsString;


end;

procedure TFRM_CADCUR.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
           DM.SQLAux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText :=      ' SELECT' +
                                         ' CURSOS.IDCURSO,'+
                                         ' CURSOS.IDNUC,'+
                                         ' CURSOS.DESCRICAO_CUR,'+
                                         ' CURSOS.SIGLA_CUR,'+
                                         ' CURSOS.STATUS_CUR'+

                                         ' FROM CURSOS '+
                                         ' WHERE CURSOS.IDCURSO = :PARBUSCUR' ;
           DM.SQLAux.ParamByName('PARBUSCUR').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDCURSO').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_CUR').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do client
                      CDSdiscur.Close;
                      CDScursos.Close;
                      SQLdiscur.Close;
                      SQLcursos.Close;
                      SQLcursos.ParamByName('PARCUR').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLcursos.Open;
                      SQLdiscur.Open;
                      CDScursos.Open;
                      CDSdiscur.Open;

                      //Colocar a tabela em modo de edição
                      CDScursos.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                      EditNuc.SetFocus;
                        
                  End
                Else
                  Begin
                      ShowMessage('Curso Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Curso Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key
end;

procedure TFRM_CADCUR.Adicionardisciplina1Click(Sender: TObject);
begin

 







end;  //procedure

procedure TFRM_CADCUR.BtBuscarClick(Sender: TObject);
begin
  //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  SQLcursos.ParamByName('PARCUR').AsInteger := 0;


  Application.CreateForm(TFRM_BUSCUR,FRM_BUSCUR);
  //Setando a variavel quemchamou
  FRM_BUSCUR.QuemChamou := 'CURSOS';

  FRM_BUSCUR.ShowModal;
  FRM_BUSCUR.Free;

  IF (SQLcursos.ParamByName('PARCUR').AsInteger <> 0) THEN
    BEGIN


     SQLcursos.Open;
     SQLdiscur.Open;
     CDScursos.Open;
     CDSdiscur.Open;

      CDScursos.Edit;
      BuscaRapida.Text := IntToStr(CDScursosIDCURSO.AsInteger);

      inherited;
       RzDBGrid1.Enabled:=true;
    END;
end;

procedure TFRM_CADCUR.BtStatusClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TFRM_STATUSCUR,FRM_STATUSCUR);


  FRM_STATUSCUR.ShowModal;
  FRM_STATUSCUR.Free;
  RzDBGrid1.Enabled:=false;

end;

procedure TFRM_CADCUR.BtGravarClick(Sender: TObject);
begin
If (Trim(CDScursosIDNUC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    editnuc.SetFocus;
     Exit;
    End;

If (Trim(CDScursosDESCRICAO_CUR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditDesc.SetFocus;
     Exit;
    End;

If (Trim(CDScursosSIGLA_CUR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditSigla.SetFocus;
     Exit;
    End;



  Try
      //Gravando as Alterações....
      CDScursos.Post;
      //Aplicando as Alterações(comitando)
     CDScursos.ApplyUpdates(0);
      IF (QuemChamou = 'TURMAS') THEN
    BEGIN
       FRM_CADTUR.CDSturIDCURSO.AsInteger := CDScursosIDCURSO.AsInteger;
       CLOSE;
    END;
  Except
      Showmessage('Erro de Gravação');
      BuscaRapida.SetFocus;
      exit;
  End;


  inherited;

      RzDBGrid1.Enabled:=true;


end;

procedure TFRM_CADCUR.CDSdiscurIDDISCValidate(Sender: TField);
begin
 DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  DISCIPLINAS.IDDISC, ' +
                                '  DISCIPLINAS.DESCR_DISC ' +
                                '  FROM DISCIPLINAS ' +
                                '  WHERE DISCIPLINAS.IDDISC = :PARDIS ' ;

  DM.SQLAux.ParamByName('PARDIS').AsInteger := CDSdiscurIDDISC.AsInteger;
  DM.SQLAux.Open;


  CDSdiscurDESCR_DISC.AsString := DM.SQLAux.FieldByName('DESCR_DISC').AsString;

end;

procedure TFRM_CADCUR.Editardisciplina1Click(Sender: TObject);
begin
  CDSdiscur.Edit;
  Application.CreateForm(TFRM_CADDISCUR,FRM_CADDISCUR);
  FRM_CADDISCUR.AtivaInclui;
  FRM_cadDISCUR.ShowModal;
  FRM_cadDISCUR.Free;
  Exit;
  

end;

procedure TFRM_CADCUR.RzDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


 IF (KEY = VK_F5) then
  begin
        CDSdiscur.Append;

        DM.SQLAux.Close;
        DM.SQLAux.CommandText := '';
        DM.SQLAux.CommandText := ' SELECT MAX(DISCURSO.IDDISCUR) FROM DISCURSO';
        DM.SQLAux.Open;

        CDSdiscurIDDISCUR.AsInteger          := DM.SQLaux.FieldByName('MAX').AsInteger + 1;
        CDSdiscurSTATUS_DISCUR.AsString      := 'A';
  

        Application.CreateForm(TFRM_cadDISCUR,FRM_cadDISCUR);
        FRM_CADDISCUR.AtivaInclui;
        FRM_cadDISCUR.ShowModal;
        FRM_cadDISCUR.Free;

        exit;
  end;

IF (KEY = VK_F6) then
 begin
  CDSdiscur.Edit;
  Application.CreateForm(TFRM_cadDISCUR,FRM_cadDISCUR);
  FRM_CADDISCUR.AtivaInclui;
  FRM_CADDISCUR.ShowModal;
  FRM_CADDISCUR.Free;
 end;
    
end;

procedure TFRM_CADCUR.EditNucAltBtnClick(Sender: TObject);
begin


  Application.CreateForm(TFRM_BUSNUC,FRM_BUSNUC);
  //Setando a variavel quemchamou
  FRM_BUSNUC.QuemChamou := 'CURSOS';

  FRM_BUSNUC.ShowModal;
  FRM_BUSNUC.Free;


      inherited;
    

end;

procedure TFRM_CADCUR.EditNucButtonClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CADNUC,FRM_CADNUC);

  FRM_CADNUC.QuemChamou := 'CURSOS';
    FRM_CADNUC.AtivaInclui;
    
try
// FRM_CADNUC.DESLIGANDO DATASETS
  FRM_CADNUC.CDSnuc.Close;
  FRM_CADNUC.SQLnuc.Close;

//Zerando o parametro para nao carregar nenhum cliente
  FRM_CADNUC.SQLnuc.ParamByName('PARNUC').AsInteger :=0;

//Ligando DataSets
  FRM_CADNUC.SQLnuc.Open;
  FRM_CADNUC.CDSnuc.Open;

//Criando novo registro
  FRM_CADNUC.CDSnuc.Append;

//Atributos preenchidos automaticamente
  FRM_CADNUC.CDSnucSTATUS_NUC.AsString := 'A' ;

//Pegar o ultimo cadastro e somar com 1, para preencher o campo com o próximo
  DM.SQLaux.Close;
  DM.SQLaux.CommandText := '' ;
  DM.SQLaux.CommandText := ' SELECT MAX(NUCLEOS.IDNUC) FROM NUCLEOS' ;
  DM.SQLaux.Open;
  FRM_CADNUC.CDSnucIDNUC.AsInteger := DM.SQLaux.FieldByName ('MAX').AsInteger + 1 ;
  FRM_CADNUC.BuscaRapida.Text      := IntToStr(FRM_CADNUC.CDSnucIDNUC.AsInteger);
  FRM_CADNUC.ShowModal;
  FRM_CADNUC.Free;
  except
  end;


end;

end.
