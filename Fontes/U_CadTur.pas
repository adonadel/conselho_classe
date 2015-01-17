unit U_CadTur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzButton, RzTabs,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, SqlExpr, DB, DBClient, Provider,
  Grids, DBGrids, RzDBGrid, RzDBEdit, RzDBBnEd;

type
  TFRM_CADTUR = class(TFRM_CADASTROS)
    PROVIDER: TDataSetProvider;
    CDStur: TClientDataSet;
    SQLtur: TSQLDataSet;
    Label1: TLabel;
    CDSturIDTUR: TIntegerField;
    CDSturIDCURSO: TIntegerField;
    CDSturNUM_TUR: TStringField;
    CDSturTURNO_TUR: TStringField;
    CDSturANO_TUR: TIntegerField;
    CDSturSTATUS_TUR: TStringField;
    DSliga: TDataSource;
    SQLturIDTUR: TIntegerField;
    SQLturIDCURSO: TIntegerField;
    SQLturNUM_TUR: TStringField;
    SQLturTURNO_TUR: TStringField;
    SQLturANO_TUR: TIntegerField;
    SQLturSTATUS_TUR: TStringField;
    DStur: TDataSource;
    SQLturDESCRICAO_CUR: TStringField;
    CDSturDESCRICAO_CUR: TStringField;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    EditCurso: TRzDBButtonEdit;
    Label3: TLabel;
    NomeCurso: TRzDBEdit;
    EditNum: TRzDBEdit;
    EditTur: TRzDBEdit;
    EditAno: TRzDBEdit;
    E: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzDBGrid1: TRzDBGrid;
    SQlturalu: TSQLDataSet;
    SQlturaluIDRELTURALU: TIntegerField;
    SQlturaluIDALU: TIntegerField;
    SQlturaluIDTUR: TIntegerField;
    SQlturaluDATA_RELTURALU: TDateField;
    SQlturaluHORA_RELTURALU: TTimeField;
    SQlturaluOBS_RELTURALU: TStringField;
    SQlturaluSTATUS_RELTURALU: TStringField;
    SQlturaluNOME_ALU: TStringField;
    SQlturaluSTATUS_ALU: TStringField;
    CDSturSQlturalu: TDataSetField;
    CDSturalu: TClientDataSet;
    Dsturalu: TDataSource;
    CDSturaluIDRELTURALU: TIntegerField;
    CDSturaluIDALU: TIntegerField;
    CDSturaluIDTUR: TIntegerField;
    CDSturaluDATA_RELTURALU: TDateField;
    CDSturaluHORA_RELTURALU: TTimeField;
    CDSturaluOBS_RELTURALU: TStringField;
    CDSturaluSTATUS_RELTURALU: TStringField;
    CDSturaluNOME_ALU: TStringField;
    CDSturaluSTATUS_ALU: TStringField;
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure CDSturIDCURSOValidate(Sender: TField);
    procedure BtNovoClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure RzDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSturaluIDALUValidate(Sender: TField);
    procedure EditCursoAltBtnClick(Sender: TObject);
    procedure EditCursoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADTUR: TFRM_CADTUR;

implementation

uses UDM, U_BusTur, U_StatusTur, U_CadTurAlu, U_BusCur, U_CadCur;

{$R *.dfm}

procedure TFRM_CADTUR.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
                                         ' TURMAS.IDTUR,'+
                                         ' TURMAS.IDCURSO,'+
                                         ' TURMAS.NUM_TUR,'+
                                         ' TURMAS.TURNO_TUR,'+
                                         ' TURMAS.STATUS_TUR,'+
                                         ' TURMAS.ANO_TUR'+

                                         ' FROM TURMAS '+
                                         ' WHERE TURMAS.IDTUR = :PARBUSTUR' ;
           DM.SQLAux.ParamByName('PARBUSTUR').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDTUR').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_TUR').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do client
                      CDSturalu.Close;
                      CDStur.Close;
                      CDSturalu.Close;
                      CDStur.Close;
                      SQLtur.ParamByName('PARTUR').AsInteger := StrToInt(BuscaRapida.Text);
                      CDStur.Open;
                      CDSturalu.Open;
                      CDStur.Open;
                      CDSturalu.Open;

                      //Colocar a tabela em modo de edição
                      CDStur.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                      EditCurso.SetFocus;
                        
                  End
                Else
                  Begin
                      ShowMessage('Turma Desativada!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Turma Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key

end;

procedure TFRM_CADTUR.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
BtNovo.Click;
end;

procedure TFRM_CADTUR.BtCancelarClick(Sender: TObject);
begin
 //Cancelando a ação



     CDSturalu.Close;
     CDStur.Active := False ; //ou Cdscli.Close;
     CDSturalu.Close;
     CDStur.Close;

  //Rodar a Herança.....
  inherited;
  RzDBGrid1.Enabled:=true;


end;

procedure TFRM_CADTUR.BtGravarClick(Sender: TObject);
begin
  If (Trim(CDSturIDCURSO.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditCurso.SetFocus;
     Exit;
    End;

If (Trim(CDSturNUM_TUR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditNum.SetFocus;
     Exit;
    End;

If (Trim(CDSturTURNO_TUR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditTur.SetFocus;
     Exit;
    End;
If (Trim(CDSturANO_TUR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditAno.SetFocus;
     Exit;
    End;



  Try
      //Gravando as Alterações....
      CDStur.Post;
      //Aplicando as Alterações(comitando)
     CDStur.ApplyUpdates(0);
  Except
      Showmessage('Erro de Gravação');
      
      exit;
  End;


  inherited;

   //Desligando os Datasets
     CDSturalu.Close;
     CDStur.Active := False ; //ou Cdscli.Close;
     SQlturalu.Close;
     SQLtur.Close;

end;

procedure TFRM_CADTUR.CDSturIDCURSOValidate(Sender: TField);
begin
inherited;
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  CURSOS.IDCURSO, ' +
                                '  CURSOS.DESCRICAO_CUR, ' +
                                '  CURSOS.SIGLA_CUR ' +
                                '  FROM CURSOS ' +
                                '  WHERE CURSOS.IDCURSO= :PARCUR ' ;

  DM.SQLAux.ParamByName('PARCUR').AsInteger := CDSturIDCURSO.AsInteger;
  DM.SQLAux.Open;


  CDSturDESCRICAO_CUR.AsString := DM.SQLAux.FieldByName('DESCRICAO_CUR').AsString;

end;

procedure TFRM_CADTUR.BtNovoClick(Sender: TObject);
begin
 Try
     // Desligando os DataSets
     CDSturalu.Close;
     CDStur.Active := False ; //ou Cdscli.Close;
     SQLturalu.Close;
     SQLtur.Close;



     //Zerando o parametro, para garantir que nenhum
     //cliente será carregado
      SQLtur.ParamByName('PARTUR').AsInteger := 0 ;

     //Ligar os Datasets


     SQLtur.Open;
     SQLturalu.Open;

     CDStur.Open;
     CDSturalu.Open;

     //Criando um novo registro....
     CDStur.Append;


     //Preenchendo os Atributos automaticamente
     CDSturSTATUS_TUR.AsString := 'A';
     //Para Desenvolver o código automático, vou utilizar o sqlaux do DM
     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(TURMAS.IDTUR) FROM TURMAS';
     DM.SQLAux.Open;
     CDSturIDTUR.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text      :=  IntToStr(CDSturIDTUR.AsInteger);

      

  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;
  inherited;
  RzDBGrid1.Enabled:=false;

end;

procedure TFRM_CADTUR.BtBuscarClick(Sender: TObject);
begin
  //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  SQLtur.ParamByName('PARTUR').AsInteger := 0;


  Application.CreateForm(TFRM_BUSTUR,FRM_BUSTUR);
  //Setando a variavel quemchamou
  FRM_BUSTUR.QuemChamou := 'TURMA';

  FRM_BUSTUR.ShowModal;
  FRM_BUSTUR.Free;

  IF (SQLtur.ParamByName('PARTUR').AsInteger <> 0) THEN
    BEGIN

     SQLtur.Open;
     SQLturalu.Open;

     CDStur.Open;
     CDSturalu.Open;

      CDStur.Edit;
      BuscaRapida.Text := IntToStr(CDSturIDTUR.AsInteger);
      inherited;
      RzDBGrid1.Enabled:=true;
    END;

end;

procedure TFRM_CADTUR.BtStatusClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRM_STATUSTUR, FRM_STATUSTUR);
  FRM_STATUSTUR.ShowModal;
  FRM_STATUSTUR.Free;
end;

procedure TFRM_CADTUR.RzDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF (KEY = VK_F5) then
  begin
        CDSturalu.Append;

        DM.SQLAux.Close;
        DM.SQLAux.CommandText := '';
        DM.SQLAux.CommandText := ' SELECT MAX(RELTURALU.IDRELTURALU) FROM RELTURALU';
        DM.SQLAux.Open;

        CDSturaluIDRELTURALU.AsInteger      := DM.SQLaux.FieldByName('MAX').AsInteger + 1;
        CDSturaluSTATUS_RELTURALU.AsString  := 'A';
        CDSturaluDATA_RELTURALU.AsDateTime  := Date;
        CDSturaluHORA_RELTURALU.AsDateTime  := Time;

        Application.CreateForm(TFRM_CADTURALU,FRM_CADTURALU);
        FRM_CADTURALU.AtivaInclui;
        FRM_CADTURALU.ShowModal;
        FRM_CADTURALU.Free;

        exit;
  end;

IF (KEY = VK_F6) then
 begin
  CDSturalu.Edit;
  Application.CreateForm(TFRM_CADTURALU,FRM_CADTURALU);
  FRM_CADTURALU.AtivaInclui;
  FRM_CADTURALU.ShowModal;
  FRM_CADTURALU.Free;
 end;

end;

procedure TFRM_CADTUR.CDSturaluIDALUValidate(Sender: TField);
begin
  inherited;
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  ALUNOS.IDALU, ' +
                                '  ALUNOS.NOME_ALU, ' +
                                '  ALUNOS.STATUS_ALU ' +
                                '  FROM ALUNOS ' +
                                '  WHERE ALUNOS.IDALU = :PARALU ' ;

  DM.SQLAux.ParamByName('PARALU').AsInteger := CDSturaluIDALU.AsInteger;
  DM.SQLAux.Open;


  CDSturaluNOME_ALU.AsString := DM.SQLAux.FieldByName('NOME_ALU').AsString;
end;

procedure TFRM_CADTUR.EditCursoAltBtnClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_BUSCUR,FRM_BUSCUR);
  //Setando a variavel quemchamou
  FRM_BUSCUR.QuemChamou := 'TURMAS';

  FRM_BUSCUR.ShowModal;
  FRM_BUSCUR.Free;


      inherited;

end;

procedure TFRM_CADTUR.EditCursoButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_CADCUR,FRM_CADCUR);
  FRM_CADCUR.QuemChamou := 'TURMAS';
  FRM_CADCUR.AtivaInclui;
  Try
     // Desligando os DataSets
     FRM_CADCUR.CDSdiscur.Close;
     FRM_CADCUR.CDScursos.Active := False ; //ou Cdscli.Close;
     FRM_CADCUR.SQLdiscur.Close;
     FRM_CADCUR.SQLcursos.Close;



     //Zerando o parametro, para garantir que nenhum
     //cliente será carregado
     FRM_CADCUR.SQLcursos.ParamByName('PARCUR').AsInteger := 0 ;

     //Ligar os Datasets


     FRM_CADCUR.SQLcursos.Open;
     FRM_CADCUR.SQLdiscur.Open;

     FRM_CADCUR.CDScursos.Open;
     FRM_CADCUR.CDSdiscur.Open;

     //Criando um novo registro....
     FRM_CADCUR.CDScursos.Append;


     //Preenchendo os Atributos automaticamente
     FRM_CADCUR.CDScursosSTATUS_CUR.AsString := 'A';
     //Para Desenvolver o código automático, vou utilizar o sqlaux do DM
     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(CURSOS.IDCURSO) FROM CURSOS';
     DM.SQLAux.Open;
     FRM_CADCUR.CDScursosIDCURSO.AsInteger     :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     FRM_CADCUR.BuscaRapida.Text               :=  IntToStr(FRM_CADCUR.CDScursosIDCURSO.AsInteger);
     FRM_CADCUR.ShowModal;
     FRM_CADCUR.Free;


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;


end;

end.
