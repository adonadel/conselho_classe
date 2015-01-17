unit U_CadNuc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, RzButton, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs,
  RzStatus, RzPanel, ExtCtrls, RzDBEdit, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TFRM_CADNUC = class(TFRM_CADASTROS)
    Label1: TLabel;
    Label2: TLabel;
    EditDes: TRzDBEdit;
    PROVIDER: TDataSetProvider;
    CDSnuc: TClientDataSet;
    DsNuc: TDataSource;
    CDSnucIDNUC: TIntegerField;
    CDSnucDESCRICAO_NUC: TStringField;
    CDSnucSTATUS_NUC: TStringField;
    SQLNuc: TSQLDataSet;
    SQLNucIDNUC: TIntegerField;
    SQLNucDESCRICAO_NUC: TStringField;
    SQLNucSTATUS_NUC: TStringField;
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtBuscarClick(Sender: TObject);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADNUC: TFRM_CADNUC;
 

implementation

uses UDM, UFrmModeloBusca, U_BusNuc, U_StatusNuc, U_CadCur;

{$R *.dfm}

procedure TFRM_CADNUC.BtNovoClick(Sender: TObject);
begin

  TRY

// DESLIGANDO DATASETS
  CDSnuc.Close;
  SQLnuc.Close;

//Zerando o parametro para nao carregar nenhum cliente
  SQLnuc.ParamByName('PARNUC').AsInteger :=0;

//Ligando DataSets
  SQLnuc.Open;
  CDSnuc.Open;

//Criando novo registro
  CDSnuc.Append;

//Atributos preenchidos automaticamente
  CDSnucSTATUS_NUC.AsString := 'A' ;

//Pegar o ultimo cadastro e somar com 1, para preencher o campo com o próximo
  DM.SQLaux.Close;
  DM.SQLaux.CommandText := '' ;
  DM.SQLaux.CommandText := ' SELECT MAX(NUCLEOS.IDNUC) FROM NUCLEOS' ;
  DM.SQLaux.Open;
  CDSnucIDNUC.AsInteger := DM.SQLaux.FieldByName ('MAX').AsInteger + 1 ;
  BuscaRapida.Text      := IntToStr(CDSnucIDNUC.AsInteger);

  Except
    ShowMessage('Erro de Inclusão, '+#13+#10+' Verifique a conexão...');
    exit;
  end;//End except


  inherited;
  FocusControl(EditDes);

end;

procedure TFRM_CADNUC.BtCancelarClick(Sender: TObject);
begin

//Cancela qualquer ação
  CDSnuc.Cancel;

//Desligando os DataSets
  CDSnuc.Close;
  SQLnuc.Close;

//Herança
  inherited;
   IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       
       CLOSE;
    END;

end;

procedure TFRM_CADNUC.BtGravarClick(Sender: TObject);
begin
//Testando se os campos estão preenchidos
  if (Trim(CDSnucDESCRICAO_NUC.AsString) = '') then
    begin
      ShowMessage('Atributo Obrigatório');
      BuscaRapida.SetFocus;
      Exit;
    end;

//Campo protegido
  TRY

    //Gravando alterações
    CDSnuc.Post;

    //Aplicando Alterações (comitando)
    CDSnuc.ApplyUpdates(0);

    IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       FRM_CADCUR.CDScursosIDNUC.AsInteger := CDSnucIDNUC.AsInteger;
       CLOSE;
    END;

  EXCEPT

    ShowMessage('Erro de Gravação');
    BuscaRapida.SetFocus;
    Exit;

  end;

//Desligando componentes e rodando herança
  inherited;
  CDSnuc.Close;
  SQLnuc.Close;
  IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       CLOSE;
    END;

end;

procedure TFRM_CADNUC.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
           DM.SQLAux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText := ' SELECT' +
                                         ' NUCLEOS.IDNUC, '+
                                         ' NUCLEOS.STATUS_NUC'+
                                         ' FROM NUCLEOS '+
                                         ' WHERE NUCLEOS.IDNUC = :PARBUSNUC' ;
           DM.SQLAux.ParamByName('PARBUSNUC').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDNUC').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_NUC').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do cliente
                      CDSnuc.Close;
                      SQLNuc.Close;
                      SQLNuc.ParamByName('PARNUC').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLNuc.Open;
                      CDSnuc.Open;

                      //Colocar a tabela em modo de edição
                      CDSnuc.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Núcleo Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Núcleo Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key


end;

procedure TFRM_CADNUC.BtBuscarClick(Sender: TObject);
begin
  //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  SQLNuc.ParamByName('PARNUC').AsInteger := 0;


  Application.CreateForm(TFrm_BusNuc,Frm_BusNuc);
  //Setando a variavel quemchamou
  Frm_BusNuc.QuemChamou := 'NUCLEOS';

  Frm_BusNuc.ShowModal;
  Frm_BusNuc.Free;

  IF (SQLNuc.ParamByName('PARNUC').AsInteger <> 0) THEN
    BEGIN

      SQLNuc.Open;
      CDSnuc.Open;

      CDSnuc.Edit;
      BuscaRapida.Text := IntToStr(CDSnucIDNUC.AsInteger);
      inherited;
    END;

end;

procedure TFRM_CADNUC.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
BtNovo.Click;
end;

procedure TFRM_CADNUC.BtStatusClick(Sender: TObject);
begin

  Application.CreateForm(TFRM_STATUSNUC, FRM_STATUSNUC);
  FRM_STATUSNUC.ShowModal;
  FRM_STATUSNUC.Free;
end;

procedure TFRM_CADNUC.FormCreate(Sender: TObject);
begin
  inherited;
IF (QuemChamou = 'CURSOS') THEN
    BEGIN
       BtNovo.Click;
    END;
end;

end.
