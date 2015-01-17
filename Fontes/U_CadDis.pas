unit U_CadDis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient,
  RzDBEdit;

type
  TFRM_CADDIS = class(TFRM_CADASTROS)
    Label1: TLabel;
    Label2: TLabel;
    EditDes: TRzDBEdit;
    CDSdis: TClientDataSet;
    PROVIDER: TDataSetProvider;
    DataSource1: TDataSource;
    SQLdis: TSQLDataSet;
    SQLdisIDDISC: TIntegerField;
    SQLdisDESCR_DISC: TStringField;
    SQLdisSTATUS_DISC: TStringField;
    CDSdisIDDISC: TIntegerField;
    CDSdisDESCR_DISC: TStringField;
    CDSdisSTATUS_DISC: TStringField;
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADDIS: TFRM_CADDIS;

implementation

uses UDM, U_BusDis, U_StatusDis;

{$R *.dfm}

procedure TFRM_CADDIS.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
BtNovo.Click;
end;

procedure TFRM_CADDIS.BtNovoClick(Sender: TObject);
begin
Try
 // Desligando os DataSets
     CDSdis.Active := False ; //ou Cdscli.Close;
     SQLdis.Close;


     //Zerando o parametro, para garantir que nenhum
     //cliente será carregado
     SQLdis.ParamByName('PARDIS').AsInteger := 0 ;

     //Ligar os Datasets
     SQLdis.Open;
     CDSdis.Open;

     //Criando um novo registro....
     CDSdis.Append;

     //Preenchendo os Atributos automaticamente

     CDSdisSTATUS_DISC.AsString := 'A';
     //Para Desenvolver o código automático, vou utilizar o sqlaux do DM
     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(DISCIPLINAS.IDDISC) FROM DISCIPLINAS';
     DM.SQLAux.Open; 
     CDSdisIDDISC.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text              :=  IntToStr(CDSdisIDDISC.AsInteger);


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;

  
  inherited;
  FocusControl(EditDes);
end;

procedure TFRM_CADDIS.BtCancelarClick(Sender: TObject);
begin
  //Cancelando a ação
  CDSdis.Cancel;

  //Desligando os Datasets
  CDSdis.Close;
  SQLdis.Close;

  //Rodar a Herança.....
  inherited;

end;

procedure TFRM_CADDIS.BtGravarClick(Sender: TObject);
begin
If (Trim(CDSdisDESCR_DISC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    BuscaRapida.SetFocus;
     Exit;
    End;



  Try
      //Gravando as Alterações....
      CDSdis.Post;
      //Aplicando as Alterações(comitando)
      CDSdis.ApplyUpdates(0);
  Except
      Showmessage('Erro de Gravação');
      BuscaRapida.SetFocus;
      exit;
  End;


  inherited;

   //Desligando os Datasets
  CDSdis.Close;
  SQLdis.Close;
end;



procedure TFRM_CADDIS.BtBuscarClick(Sender: TObject);
begin
   //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  SQLdis.ParamByName('PARDIS').AsInteger := 0;


  Application.CreateForm(TFRM_BUSDIS,FRM_BUSDIS);
  //Setando a variavel quemchamou
  FRM_BUSDIS.QuemChamou := 'DISCIPLINAS';

  FRM_BUSDIS.ShowModal;
  FRM_BUSDIS.Free;

  IF (SQLdis.ParamByName('PARDIS').AsInteger <> 0) THEN
    BEGIN

      SQLdis.Open;
      CDSdis.Open;

      CDSdis.Edit;
      BuscaRapida.Text := IntToStr(CDSdisIDDISC.AsInteger);
      inherited;
    END;

end;

procedure TFRM_CADDIS.BtStatusClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_STATUSDIS, FRM_STATUSDIS);
  FRM_STATUSDIS.ShowModal;
  FRM_STATUSDIS.Free;
end;

procedure TFRM_CADDIS.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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
           DM.SQLaux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText := ' SELECT' +
                                    ' DISCIPLINAS.IDDISC, '+
                                    ' DISCIPLINAS.STATUS_DISC'+
                                    ' FROM DISCIPLINAS '+
                                    ' WHERE DISCIPLINAS.IDDISC = :PARBUSDIS' ;
           DM.SQLAux.ParamByName('PARBUSDIS').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDDISC').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_DIS').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do cliente
                      CDSdis.Close;
                      SQLdis.Close;
                      SQLdis.ParamByName('PARDIS').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLdis.Open;
                      CDSdis.Open;

                      //Colocar a tabela em modo de edição
                      CDSdis.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Disciplina Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Disciplina Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key

end;

procedure TFRM_CADDIS.FormCreate(Sender: TObject);
begin
  inherited;
    IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       BtNovo.Click;
    END;
end;

end.
