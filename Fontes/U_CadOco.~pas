unit U_CadOco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzButton, RzTabs,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  RzDBBnEd, RzDBEdit, RzCmboBx, RzDBCmbo, Grids, DBGrids, RzDBGrid;

type
  TFRM_CADOCO = class(TFRM_CADASTROS)
    Label1: TLabel;
    SQLoco: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSoco: TClientDataSet;
    DSoco: TDataSource;
    SQLocoIDOCOR: TIntegerField;
    SQLocoIDFUNC: TIntegerField;
    SQLocoDESCRI_OCOR: TStringField;
    SQLocoDT_OCOR: TDateField;
    SQLocoHR_OCOR: TDateField;
    SQLocoTIPO_OCOR: TStringField;
    SQLocoGRAU_OCOR: TStringField;
    SQLocoOBS_OCOR: TStringField;
    SQLocoSTATUS_OCOR: TStringField;
    SQLocoNOME_FUNC: TStringField;
    CDSocoIDOCOR: TIntegerField;
    CDSocoIDFUNC: TIntegerField;
    CDSocoDESCRI_OCOR: TStringField;
    CDSocoDT_OCOR: TDateField;
    CDSocoHR_OCOR: TDateField;
    CDSocoTIPO_OCOR: TStringField;
    CDSocoGRAU_OCOR: TStringField;
    CDSocoOBS_OCOR: TStringField;
    CDSocoSTATUS_OCOR: TStringField;
    CDSocoNOME_FUNC: TStringField;
    FUNC: TRzDBEdit;
    IDfunc: TRzDBButtonEdit;
    Label2: TLabel;
    RzDBEdit1: TRzDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    RzDBEdit2: TRzDBEdit;
    EditGrau: TRzDBComboBox;
    Label5: TLabel;
    EditTIpo: TRzDBComboBox;
    Label6: TLabel;
    EditDes: TRzDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditObs: TRzDBEdit;
    Panel1: TPanel;
    Label9: TLabel;
    grid: TRzDBGrid;
    DSliga: TDataSource;
    DSaluoco: TDataSource;
    CDSaluoco: TClientDataSet;
    SQLaluoco: TSQLDataSet;
    SQLaluocoIDALUOCO: TIntegerField;
    SQLaluocoIDALU: TIntegerField;
    SQLaluocoIDOCOR: TIntegerField;
    SQLaluocoVERSAO_ALUOCO: TStringField;
    SQLaluocoOBS_ALUOCO: TStringField;
    SQLaluocoSTATUS_ALUOCO: TStringField;
    SQLaluocoNOME_ALU: TStringField;
    SQLaluocoFOTO_ALU: TBlobField;
    SQLaluocoSTATUS_ALU: TStringField;
    CDSocoSQLaluoco: TDataSetField;
    CDSaluocoIDALUOCO: TIntegerField;
    CDSaluocoIDALU: TIntegerField;
    CDSaluocoIDOCOR: TIntegerField;
    CDSaluocoVERSAO_ALUOCO: TStringField;
    CDSaluocoOBS_ALUOCO: TStringField;
    CDSaluocoSTATUS_ALUOCO: TStringField;
    CDSaluocoNOME_ALU: TStringField;
    CDSaluocoFOTO_ALU: TBlobField;
    CDSaluocoSTATUS_ALU: TStringField;
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure CDSocoIDFUNCValidate(Sender: TField);
    procedure BuscaRapidaAltBtnClick(Sender: TObject);
    procedure SQLaluocoIDALUValidate(Sender: TField);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSaluocoIDALUValidate(Sender: TField);
    procedure BtBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CADOCO: TFRM_CADOCO;

implementation

uses UDM, U_CadOcoAlu, U_BusOco;

{$R *.dfm}

procedure TFRM_CADOCO.BtNovoClick(Sender: TObject);
begin
  Try
     // Desligando os DataSets
     CDSaluoco.Close;
     CDSoco.close; ;
     SQLaluoco.Close;
     SQLoco.Close;



     //Zerando o parametro, para garantir que nenhum
     //cliente será carregado
      SQLoco.ParamByName('PAROCO').AsInteger := 0 ;

     //Ligar os Datasets


     SQLoco.Open;
     SQLaluoco.Open;

     CDSoco.Open;
     CDSaluoco.Open;

     //Criando um novo registro....
     CDSoco.Append;


     //Preenchendo os Atributos automaticamente
     CDSocoSTATUS_OCOR.AsString := 'A';
     CDSocoDT_OCOR.AsDateTime   := Date;
     CDSocoHR_OCOR.AsDateTime   := Time;
     //Para Desenvolver o código automático, vou utilizar o sqlaux do DM
     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(OCORRENCIAS.IDOCOR) FROM OCORRENCIAS';
     DM.SQLAux.Open;
     CDSocoIDOCOR.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text      :=  IntToStr(CDSocoIDOCOR.AsInteger);



  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;
  inherited;
  grid.Enabled:=False;

end;

procedure TFRM_CADOCO.BtCancelarClick(Sender: TObject);
begin
  //Cancelando a ação



     CDSaluoco.Close;
     CDSoco.close; ;
     SQLaluoco.Close;
     SQLoco.Close;

  //Rodar a Herança.....
  inherited;
  grid.Enabled:=False;

end;

procedure TFRM_CADOCO.BtGravarClick(Sender: TObject);
begin
  If (Trim(CDSocoIDFUNC.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    IDfunc.SetFocus;
     Exit;
    End;

If (Trim(CDSocoGRAU_OCOR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditGrau.SetFocus;
     Exit;
    End;

If (Trim(CDSocoTIPO_OCOR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditTIpo.SetFocus;
     Exit;
    End;
If (Trim(CDSocoDESCRI_OCOR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditDes.SetFocus;
     Exit;
    End;
If (Trim(CDSocoOBS_OCOR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
    EditObs.SetFocus;
     Exit;
    End;



  Try
      //Gravando as Alterações....
      CDSoco.Post;
      //Aplicando as Alterações(comitando)
     CDSoco.ApplyUpdates(0);
  Except
      Showmessage('Erro de Gravação');

      exit;
  End;


  inherited;

  CDSaluoco.Close;
     CDSoco.close; ;
     SQLaluoco.Close;
     SQLoco.Close;
     grid.Enabled:=False;

end;

procedure TFRM_CADOCO.CDSocoIDFUNCValidate(Sender: TField);
begin
inherited;
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  FUNCIONARIO.IDFUNC, ' +
                                '  FUNCIONARIO.NOME_FUNC, ' +
                                '  FUNCIONARIO.STATUS_FUNC ' +
                                '  FROM FUNCIONARIO ' +
                                '  WHERE FUNCIONARIO.IDFUNC= :PARFUN ' ;

  DM.SQLAux.ParamByName('PARFUN').AsInteger := CDSocoIDFUNC.AsInteger;
  DM.SQLAux.Open;


  CDSocoNOME_FUNC.AsString := DM.SQLAux.FieldByName('NOME_FUNC').AsString;

end;

procedure TFRM_CADOCO.BuscaRapidaAltBtnClick(Sender: TObject);
begin
  inherited;
BtNovo.Click;
end;

procedure TFRM_CADOCO.SQLaluocoIDALUValidate(Sender: TField);
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

  DM.SQLAux.ParamByName('PARALU').AsInteger := CDSaluocoIDALU.AsInteger;
  DM.SQLAux.Open;


  CDSaluocoNOME_ALU.AsString := DM.SQLAux.FieldByName('NOME_ALU').AsString;
  CDSaluocoFOTO_ALU.Value    := DM.SQLAux.FieldByName('FOTO_ALU').Value;



     
   except
    //codficação caso ocorram erros
    ShowMessage('Erro, arquivo corrompido!');
    exit;
   end;
   grid.Enabled:=False;


end;

procedure TFRM_CADOCO.gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF (KEY = VK_F5) then
  begin
        CDSaluoco.Append;

        DM.SQLAux.Close;
        DM.SQLAux.CommandText := '';
        DM.SQLAux.CommandText := ' SELECT MAX(RELA_ALUOCO.IDALUOCO) FROM RELA_ALUOCO';
        DM.SQLAux.Open;

        CDSaluocoIDALUOCO.AsInteger      := DM.SQLaux.FieldByName('MAX').AsInteger + 1;
        CDSaluocoSTATUS_ALUOCO.AsString  := 'A';

        Application.CreateForm(TFRM_CADALUOCO,FRM_CADALUOCO);
        FRM_CADALUOCO.BtNovo.Click;
        FRM_CADALUOCO.ShowModal;
        FRM_CADALUOCO.Free;

        exit;
  end;

IF (KEY = VK_F6) then
 begin
        CDSaluoco.Edit;
        Application.CreateForm(TFRM_CADALUOCO,FRM_CADALUOCO);
        FRM_CADALUOCO.AtivaInclui;
        FRM_CADALUOCO.ShowModal;
        FRM_CADALUOCO.Free;
 end;


end;

procedure TFRM_CADOCO.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
                                         ' OCORRENCIAS.IDOCOR,'+
                                         ' OCORRENCIAS.IDFUNC,'+
                                         ' OCORRENCIAS.DT_OCOR,'+
                                         ' OCORRENCIAS.HR_OCOR,'+
                                         ' OCORRENCIAS.TIPO_OCOR,'+
                                         ' OCORRENCIAS.GRAU_OCOR,'+
                                         ' OCORRENCIAS.STATUS_OCOR'+
                                         ' FROM OCORRENCIAS '+
                                         ' WHERE OCORRENCIAS.IDOCOR = :PARBUSOCO' ;
           DM.SQLAux.ParamByName('PARBUSOCO').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDOCOR').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_OCOR').AsString = 'A') Then
                  Begin
                      //Carregando o código digitado para dentro
                      //do parametro do sql do client
                      CDSaluoco.Close;
                      CDSoco.close; ;
                      SQLaluoco.Close;
                      SQLoco.Close;
                      SQLoco.ParamByName('PAROCO').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLoco.Open;
                      SQLaluoco.Open;

                       CDSoco.Open;
                       CDSaluoco.Open;

                      //Colocar a tabela em modo de edição
                      CDSoco.Edit;

                      //Habilita desabilita os componentes conforme a procedure
                      AtivaInclui;
                      IDfunc.SetFocus;
                        
                  End
                Else
                  Begin
                      ShowMessage('Ocorrência Desativada!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Ocorrência Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key
   grid.Enabled:=False;


end;

procedure TFRM_CADOCO.CDSaluocoIDALUValidate(Sender: TField);
begin
  inherited;
  DM.SQLAux.Close;
  DM.SQLAux.CommandText :=      '  SELECT ' +
                                '  ALUNOS.IDALU, ' +
                                '  ALUNOS.NOME_ALU, ' +
                                '  ALUNOS.FOTO_ALU, ' +
                                '  ALUNOS.STATUS_ALU ' +
                                '  FROM ALUNOS ' +
                                '  WHERE ALUNOS.IDALU = :PARALU ' ;

  DM.SQLAux.ParamByName('PARALU').AsInteger := CDSaluocoIDALU.AsInteger;
  DM.SQLAux.Open;


  CDSaluocoNOME_ALU.AsString := DM.SQLAux.FieldByName('NOME_ALU').AsString;
  CDSaluocoFOTO_ALU.Value    := DM.SQLAux.FieldByName('FOTO_ALU').Value;
end;

procedure TFRM_CADOCO.BtBuscarClick(Sender: TObject);
begin
    //ZERANDO O PARAMETRO DO SQLPRINCIPAL
  SQLoco.ParamByName('PAROCO').AsInteger := 0;


  Application.CreateForm(TFRM_BUSOCO,FRM_BUSOCO);
  //Setando a variavel quemchamou
  FRM_BUSOCO.QuemChamou := 'OCO';

  FRM_BUSOCO.ShowModal;
  FRM_BUSOCO.Free;
  

  IF (SQLoco.ParamByName('PAROCO').AsInteger <> 0) THEN
    BEGIN

     SQLoco.Open;
     SQLaluoco.Open;

     CDSoco.Open;
     CDSaluoco.Open;

      CDSoco.Edit;
      BuscaRapida.Text := IntToStr(CDSocoIDOCOR.AsInteger);
      inherited;
      grid.Enabled:=true;
    END;

end;

end.
