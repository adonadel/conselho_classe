unit U_CadAuto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzButton, RzTabs,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider,
  DBCtrls, RzDBEdit, RzDBBnEd, ExtDlgs, RzCmboBx, RzDBCmbo;

type
  TFRM_CADAUTO = class(TFRM_CADASTROS)
    Label1: TLabel;
    RzPanel1: TRzPanel;
    EditBusTurAlu: TRzDBButtonEdit;
    Label2: TLabel;
    DBImage1: TDBImage;
    EditAlu: TRzDBEdit;
    Label3: TLabel;
    EditTur: TRzDBEdit;
    Label4: TLabel;
    Func: TRzDBEdit;
    Label5: TLabel;
    EditFunc: TRzDBButtonEdit;
    EditData: TRzDBEdit;
    Label6: TLabel;
    EditHora: TRzDBEdit;
    Label7: TLabel;
    EditDesc: TRzDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    EditObs: TRzDBEdit;
    Label10: TLabel;
    EditTipo: TRzDBComboBox;
    SQLauto: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSauto: TClientDataSet;
    DSauto: TDataSource;
    SQLautoIDAUTORIZA: TIntegerField;
    SQLautoIDFUNC: TIntegerField;
    SQLautoIDRELTURALU: TIntegerField;
    SQLautoDESCRI_AUTORIZA: TStringField;
    SQLautoDT_AUTORIZA: TDateField;
    SQLautoHR_AUTORIZA: TDateField;
    SQLautoTIPO_AUTORIZA: TStringField;
    SQLautoOBS_AUTORIZA: TStringField;
    SQLautoSTATUS_AUTORIZA: TStringField;
    SQLautoNOME_ALU: TStringField;
    SQLautoNOME_FUNC: TStringField;
    SQLautoFOTO_ALU: TBlobField;
    SQLautoIDALU: TIntegerField;
    SQLautoIDTUR: TIntegerField;
    SQLautoNUM_TUR: TStringField;
    CDSautoIDAUTORIZA: TIntegerField;
    CDSautoIDFUNC: TIntegerField;
    CDSautoIDRELTURALU: TIntegerField;
    CDSautoDESCRI_AUTORIZA: TStringField;
    CDSautoDT_AUTORIZA: TDateField;
    CDSautoHR_AUTORIZA: TDateField;
    CDSautoTIPO_AUTORIZA: TStringField;
    CDSautoOBS_AUTORIZA: TStringField;
    CDSautoSTATUS_AUTORIZA: TStringField;
    CDSautoNOME_ALU: TStringField;
    CDSautoNOME_FUNC: TStringField;
    CDSautoFOTO_ALU: TBlobField;
    CDSautoIDALU: TIntegerField;
    CDSautoIDTUR: TIntegerField;
    CDSautoNUM_TUR: TStringField;
    procedure EditBusTurAluAltBtnClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure CDSautoIDRELTURALUValidate(Sender: TField);
    procedure CDSautoIDALUValidate(Sender: TField);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure CDSautoIDFUNCValidate(Sender: TField);
    procedure SQLautoIDTURValidate(Sender: TField);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADAUTO: TFRM_CADAUTO;

implementation

uses UDM, U_BusTurAlu, U_BusAuto, U_StatusAuto;

{$R *.dfm}

procedure TFRM_CADAUTO.EditBusTurAluAltBtnClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_BUSTURALU,FRM_BUSTURALU);
  //Setando a variavel quemchamou
  FRM_BUSTURALU.QuemChamou := 'AUTO';

  FRM_BUSTURALU.ShowModal;
 FRM_BUSTURALU.Free;


      inherited;

end;

procedure TFRM_CADAUTO.BtNovoClick(Sender: TObject);
begin
  Try
     // Desligando os DataSets
     CDSauto.Close;

     SQLauto.Close;




     //Zerando o parametro, para garantir que nenhum
     //cliente será carregado
      SQLauto.ParamByName('PARAUTO').AsInteger := 0 ;

     //Ligar os Datasets


     SQLauto.Open;

     CDSauto.Open;

     //Criando um novo registro....
     CDSauto.Append;


     //Preenchendo os Atributos automaticamente
     CDSautoSTATUS_AUTORIZA.AsString := 'A';
     //Para Desenvolver o código automático, vou utilizar o sqlaux do DM
     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(AUTORIZACOES.IDAUTORIZA) FROM AUTORIZACOES';
     DM.SQLAux.Open;
     CDSautoIDAUTORIZA.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text      :=  IntToStr(CDSautoIDAUTORIZA.AsInteger);
     CDSautoDT_AUTORIZA.AsDateTime :=Date;
     CDSautoHR_AUTORIZA.AsDateTime  := Time;

      

  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;
  inherited;

end;

procedure TFRM_CADAUTO.CDSautoIDRELTURALUValidate(Sender: TField);


begin
try
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  RELTURALU.IDALU, ' +
                                '  RELTURALU.STATUS_RELTURALU, ' +
                                '  RELTURALU.IDTUR, ' +
                                '  RELTURALU.IDALU, ' +
                                '  TURMAS.NUM_TUR, ' +
                                '  TURMAS.STATUS_TUR, ' +
                                '  ALUNOS.STATUS_ALU, ' +
                                '  ALUNOS.FOTO_ALU, ' +
                                '  ALUNOS.NOME_ALU, ' +
                                '  ALUNOS.STATUS_ALU, ' +
                                '  ALUNOS.FOTO_ALU, ' +
                                '  RELTURALU.STATUS_RELTURALU ' +

                                '  FROM RELTURALU ' +

                                ' LEFT OUTER JOIN ALUNOS ON (ALUNOS.IDALU = RELTURALU.IDALU) ' +
                                ' LEFT OUTER JOIN TURMAS ON (TURMAS.IDTUR = RELTURALU.IDTUR) ' +
                                '  WHERE RELTURALU.IDRELTURALU = :PARTURALU' ;

  DM.SQLAux.ParamByName('PARTURALU').AsInteger := CDSautoIDRELTURALU.AsInteger;
  DM.SQLAux.Open;


  CDSautoIDALU.AsInteger   := DM.SQLAux.FieldByName('IDALU').AsInteger;
  CDSautoNUM_TUR.AsInteger := DM.SQLAux.FieldByName('IDALU').AsInteger;





   except
    //codficação caso ocorram erros
    ShowMessage('Erro, arquivo corrompido!');
    exit;
   end;

end;

procedure TFRM_CADAUTO.CDSautoIDALUValidate(Sender: TField);


begin
try
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  ALUNOS.IDALU, ' +
                                '  ALUNOS.NOME_ALU, ' +
                                '  ALUNOS.STATUS_ALU, ' +
                                '  ALUNOS.FOTO_ALU ' +
                                '  FROM ALUNOS ' +
                                '  WHERE ALUNOS.IDALU= :PARALU ' ;

  DM.SQLAux.ParamByName('PARALU').AsInteger := CDSautoIDALU.AsInteger;
  DM.SQLAux.Open;


  CDSautoNOME_ALU.AsString := DM.SQLAux.FieldByName('NOME_ALU').AsString;
  CDSautoFOTO_ALU.Value    := DM.SQLAux.FieldByName('FOTO_ALU').Value;


   except
    //codficação caso ocorram erros
    ShowMessage('Erro, arquivo corrompido!');
    exit;
   end;

end;

procedure TFRM_CADAUTO.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
                                         ' AUTORIZACOES.IDAUTORIZA, '+
                                         ' AUTORIZACOES.STATUS_AUTORIZA '+
                                         ' FROM AUTORIZACOES '+
                                         ' WHERE AUTORIZACOES.IDAUTORIZA = :PARAUTO' ;
           DM.SQLAux.ParamByName('PARAUTO').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDAUTORIZA').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_AUTORIZA').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do cliente
                      CDSauto.Close;
                      SQLauto.Close;
                      SQLauto.ParamByName('PARAUTO').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLauto.Open;
                      CDSauto.Open;

                      //Colocar a tabela em modo de edição
                      CDSauto.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Autorização Desativada !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O aluno está desativado
             End //achou o aluno
           Else
             Begin
                ShowMessage('Autorização Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha aluno com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key

end;

procedure TFRM_CADAUTO.BtCancelarClick(Sender: TObject);
begin
   //Cancelando a ação
      CDSauto.Cancel;

      //Desligando os Datasets
      CDSauto.Close;
      SQLauto.Close;

      //Rodar a Herança.....
  inherited;
  BuscaRapida.Clear;
  FocusControl(BuscaRapida);

end;

procedure TFRM_CADAUTO.BtGravarClick(Sender: TObject);
begin
  If (Trim(CDSautoIDFUNC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditFunc.SetFocus;
     Exit;
    End;

If (Trim(CDSautoIDRELTURALU.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditBusTurAlu.SetFocus;
     Exit;
    End;                 

If (Trim(CDSautoTIPO_AUTORIZA.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditTipo.SetFocus;
     Exit;
    End;
If (Trim(CDSautoDESCRI_AUTORIZA.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditDesc.SetFocus;
     Exit;
    End;
If (Trim(CDSautoOBS_AUTORIZA.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditObs.SetFocus;
     Exit;
    End;



  Try
      //Gravando as Alterações....
      CDSauto.Post;
      //Aplicando as Alterações(comitando)
     CDSauto.ApplyUpdates(0);
  Except
      Showmessage('Erro de Gravação');
      BuscaRapida.SetFocus;
      exit;
  End;


  inherited;

   //Desligando os Datasets
     CDSauto.Close;

     CDSauto.Close;
     

end;

procedure TFRM_CADAUTO.CDSautoIDFUNCValidate(Sender: TField);
begin
inherited;
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  FUNCIONARIO.IDFUNC, ' +
                                '  FUNCIONARIO.NOME_FUNC, ' +
                                '  FUNCIONARIO.STATUS_FUNC' +

                                '  FROM FUNCIONARIO ' +
                                '  WHERE FUNCIONARIO.IDFUNC = :PARFUNC' ;

  DM.SQLAux.ParamByName('PARFUNC').AsInteger := CDSautoIDFUNC.AsInteger;
  DM.SQLAux.Open;


  CDSautoNOME_FUNC.AsString := DM.SQLAux.FieldByName('NOME_FUNC').AsString;

end;

procedure TFRM_CADAUTO.SQLautoIDTURValidate(Sender: TField);
begin
try
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  TURMAS.IDTUR, ' +
                                '  TURMAS.NUM_TUR, ' +
                                '  TURMAS.STATUS_TUR' +

                                '  FROM TURMAS ' +
                                '  WHERE TURMAS.IDTUR = :PARTUR' ;

  DM.SQLAux.ParamByName('PARTUR').AsInteger := CDSautoIDTUR.AsInteger;
  DM.SQLAux.Open;


  CDSautoNUM_TUR.AsString := DM.SQLAux.FieldByName('NUM_TUR').AsString;
  except
  end;

end;

procedure TFRM_CADAUTO.BtBuscarClick(Sender: TObject);
begin
   //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  SQLauto.ParamByName('PARAUTO').AsInteger := 0;


  Application.CreateForm(TFRM_BUSAUTO,FRM_BUSAUTO);
  //Setando a variavel quemchamou
  FRM_BUSAUTO.QuemChamou := 'AUTO';

  FRM_BUSAUTO.ShowModal;
  FRM_BUSAUTO.Free;

  IF (SQLauto.ParamByName('PARAUTO').AsInteger <> 0) THEN
    BEGIN

     SQLauto.Open;

     CDSauto.Open;

      CDSauto.Edit;
      BuscaRapida.Text := IntToStr(CDSautoIDAUTORIZA.AsInteger);
      inherited;
      
    END;

end;

procedure TFRM_CADAUTO.BtStatusClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TFRM_STATUSAUTO, FRM_STATUSAUTO);
  FRM_STATUSAUTO.ShowModal;
  FRM_STATUSAUTO.Free;
end;

end.
