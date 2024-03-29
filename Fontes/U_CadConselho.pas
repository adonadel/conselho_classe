unit U_CadConselho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzDBEdit, Grids, DBGrids, RzDBGrid, StdCtrls,
  Mask, RzEdit, RzLabel, RzDBLbl, DBCtrls, RzButton, FMTBcd, DB, SqlExpr,
  DBClient, Provider, ExtDlgs, RpBase, RpSystem, RpCon, RpConDS, RpDefine,
  RpRave, IniFiles;

type
  TF_CadConselho = class(TForm)
    PnlTitulo: TRzPanel;
    PnlDados: TRzPanel;
    GridTurmas: TRzDBGrid;
    RzLabel1: TRzLabel;
    GridAlunos: TRzDBGrid;
    RzLabel2: TRzLabel;
    DBComentarios: TRzDBEdit;
    DBEncaminhamentos: TRzDBEdit;
    DBProblemas: TRzDBEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    DBFoto: TDBImage;
    PnlCentral: TRzPanel;
    BtnCarregar: TRzButton;
    PnlInferior: TRzStatusBar;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    SqlConsAlu: TSQLDataSet;
    SqlConselho: TSQLDataSet;
    SqlConselhoIDCONS: TIntegerField;
    SqlConselhoIDTUR: TIntegerField;
    SqlConselhoDATA_CONS: TDateField;
    SqlConselhoHORA_CONS: TTimeField;
    SqlConselhoNUMBIMTRIM_CONS: TIntegerField;
    SqlConselhoTIPOCONS_CONS: TStringField;
    SqlConselhoOBS_CONS: TStringField;
    SqlConselhoSTATUS_CONS: TStringField;
    SqlConselhoNUM_TUR: TStringField;
    SqlConselhoANO_TUR: TIntegerField;
    SqlConselhoTURNO_TUR: TStringField;
    SqlConselhoSTATUS_TUR: TStringField;
    SqlConselhoDESCRICAO_CUR: TStringField;
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
    DsLiga: TDataSource;
    Provider: TDataSetProvider;
    CdsConselho: TClientDataSet;
    DsConselho: TDataSource;
    CdsConselhoIDCONS: TIntegerField;
    CdsConselhoIDTUR: TIntegerField;
    CdsConselhoDATA_CONS: TDateField;
    CdsConselhoHORA_CONS: TTimeField;
    CdsConselhoNUMBIMTRIM_CONS: TIntegerField;
    CdsConselhoTIPOCONS_CONS: TStringField;
    CdsConselhoOBS_CONS: TStringField;
    CdsConselhoSTATUS_CONS: TStringField;
    CdsConselhoNUM_TUR: TStringField;
    CdsConselhoANO_TUR: TIntegerField;
    CdsConselhoTURNO_TUR: TStringField;
    CdsConselhoSTATUS_TUR: TStringField;
    CdsConselhoDESCRICAO_CUR: TStringField;
    CdsConselhoSqlConsAlu: TDataSetField;
    CdsConsAlu: TClientDataSet;
    DsConsAlu: TDataSource;
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
    SQLAuxData: TSQLDataSet;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RaveProjectCons: TRvProject;
    RvSystem1: TRvSystem;
    RvConnection: TRvDataSetConnection;
    EdtData: TEdit;
    SqlConsAluNUM_TUR: TStringField;
    CdsConsAluNUM_TUR: TStringField;
    procedure BtnCarregarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtDataExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadConselho: TF_CadConselho;

implementation

uses UDM, U_Alunos, Math;

{$R *.dfm}

procedure TF_CadConselho.BtnCarregarClick(Sender: TObject);
var
PASSOU, TAMBEM: boolean;
begin
If (Length(EdtData.Text) <> 10) THEN
            BEGIN
               ShowMessage('Data Inv�lida...');
               Exit;
            END;



          If ((EdtData.Text[3] <> '/') or (EdtData.Text[6] <> '/')) Then
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;

          TRY

          IF NOT(EdtData.Text[1] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[2] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[4] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[5] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[7] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[8] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[9] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;

          SQLAuxData.Close;
          SQLAuxData.CommandText:='';
          SQLAuxData.CommandText:=' SELECT '+
                                  ' CONSELHO.DATA_CONS '+
                                  ' FROM CONSELHO '+
                                  ' WHERE 1=1 ';
          SQLAuxData.Open;

          //ShowMessage(DateToStr(SQLAuxData.FieldByName('DATA_CONS').AsDateTime));////////////////////////////////////////////////
          PASSOU:=False;
          TAMBEM:=TRUE;

          while not(SQLAuxData.Eof or (TAMBEM = FALSE)) do

          begin///WHILE
          IF((EdtData.Text) <> DateToStr(SQLAuxData.FieldByName('DATA_CONS').AsDateTime))THEN
             BEGIN
              //ShowMessage('Data inv�lida...');
              //Exit;
              // ShowMessage(DateToStr(SQLAuxData.FieldByName('DATA_CONS').AsDateTime));////////////////////////////////////////////////
               PASSOU:=True;
               SQLAuxData.Next;
             END
             else
             begin
             PASSOU:=false;
             CDSConselho.Close;
             SQLConselho.Close;
             SQLConselho.ParamByName('PARCONS').AsDate := StrToDate(EdtData.Text);
             SQLConselho.Open;
             CDSConselho.Open;
             FocusControl(DBComentarios);
             TAMBEM:=FALSE;
             end;
          end;///WHILE
         EXCEPT
           ShowMessage('Data inv�lida...');
           Exit;
         END;
  IF(passou)THEN
     BEGIN
       ShowMessage('Data inv�lida...');
     end;

  {
  CDSConselho.Close;
  SQLConselho.Close;
  SQLConselho.ParamByName('PARCONS').AsDate := StrToDate(EdtData.Text);
  SQLConselho.Open;
  CDSConselho.Open;
  FocusControl(DBComentarios);
  }

  
end;

procedure TF_CadConselho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(CdsConsAlu.State= DSEDIT)then
  begin
    Action:=caNone;
    ShowMessage('Imposs�vel Sair! Dados em edi��o!');
  end;
end;

procedure TF_CadConselho.EdtDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF (KEY = VK_F3) THEN
    BEGIN
       CdsConsAlu.Cancel;

       CdsConsAlu.Close;
       SqlConsAlu.Close;

       CdsConselho.Close;
       SqlConselho.Close;

       EdtData.Clear;
       FocusControl(EdtData);

    END;
    IF ((KEY = VK_F5) AND (MessageDlg('CONFIRMAR A OPERA��O ?',mtConfirmation,[MBYES,MBNO],0) = MRYES)) THEN
    BEGIN
       CdsConsAlu.Cancel;

       CdsConsAlu.Close;
       SqlConsAlu.Close;

       CdsConselho.Close;
       SqlConselho.Close;

       Close;
    END;
  IF (KEY = VK_RETURN) THEN
  BEGIN
  //////////////////////////////////////////////////////////S� PARA GARANTIR

          ////Testando o tamanho
          If (Length(EdtData.Text) <> 10) THEN
            BEGIN
               ShowMessage('Data Inv�lida...');
               Exit;
            END;


          ////Testando a barra
          If ((EdtData.Text[3] <> '/') or (EdtData.Text[6] <> '/')) Then
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;

          ////Try para verificar se foi apenas n�meros digitados
          TRY

          IF NOT(EdtData.Text[1] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[2] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[4] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[5] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[7] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[8] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
          IF NOT(EdtData.Text[9] in ['0'..'9']) THEN
            Begin
               ShowMessage('Data inv�lida...');
               Exit;
            END;
         EXCEPT
           ShowMessage('Data inv�lida...');
           Exit;
         END;
  //////////////////////////////////////////////////////////S� PARA GARANTIR
         If ( Trim(EdtData.Text) = '' ) Then
        Begin
              ShowMessage('Data n�o corresponde a um conselho existente!');
        End
        else
        begin
            BtnCarregar.Click;
        end;
  END;
end;

procedure TF_CadConselho.EdtDataExit(Sender: TObject);
begin
    TRY
      FocusControl(DBComentarios);
    EXCEPT
      ShowMessage('Data Inv�lida');
    END
end;

procedure TF_CadConselho.FormShow(Sender: TObject);
begin
    EdtData.SetFocus;
end;

procedure TF_CadConselho.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
IMPRIMIR: boolean;
begin
    IF (KEY = VK_F2) THEN
    BEGIN
        IF (CdsConsAlu.State= DSEDIT) THEN
        BEGIN
          CdsConsAlu.Post;
          CdsConsAlu.ApplyUpdates(0);
          CdsConsAlu.Next;
          IF (CdsConsAlu.Eof) THEN
             BEGIN
                IMPRIMIR:=True;
             END;
          FocusControl(DBComentarios);
        END;

    END ;
    IF (KEY = VK_F3) THEN
    BEGIN
       CdsConsAlu.Cancel;

       CdsConsAlu.Close;
       SqlConsAlu.Close;

       CdsConselho.Close;
       SqlConselho.Close;

       EdtData.Clear;
       FocusControl(EdtData);

    END;
    IF (KEY = VK_F4) THEN
    BEGIN
       Application.CreateForm(TF_Aluno, F_Aluno);
       F_Aluno.BuscaRapida.Text:=IntToStr(CdsConsAluIDALU.AsInteger);

       F_Aluno.ShowModal;




       F_Aluno.Free;
    END;
    IF ((KEY = VK_F5) AND (MessageDlg('Deseja mesmo sair ?',mtConfirmation,[MBYES,MBNO],0) = MRYES)) THEN
    BEGIN
       CdsConsAlu.Cancel;

       CdsConsAlu.Close;
       SqlConsAlu.Close;

       CdsConselho.Close;
       SqlConselho.Close;
       
       Close;
    END;
  IF ((Key = VK_F6)) THEN
    BEGIN
       IF (IMPRIMIR) THEN
          BEGIN
            RaveProjectCons.Close;
            RaveProjectCons.ProjectFile :=  ExtractFilePath(Application.ExeName) + 'Relatorios\Relat_ConsAlu.rav';
            RaveProjectCons.Open;

            RaveProjectCons.Execute;
          END;
    END;
end;

procedure TF_CadConselho.FormCreate(Sender: TObject);
var ArquivoIni: TIniFile;
    caminho: String;
    pnl_sup, pnl_inf, fonte, cor_fonte, pnl_central: string;
begin
  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni   := TIniFile.Create(caminho);
  Except
    ShowMessage('Arquivo de configura��o inexistente!');
    Halt;
  end;

  pnl_central := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_TITULO','clMoneyGren');
  pnl_sup := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_TITULO','clMoneyGren');
  pnl_inf := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_DADO','clMoneyGren');
  cor_fonte := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_FONTE_TITULO','clBlack');
  fonte := ArquivoIni.ReadString('CONFIG_CADASTRO','FONTE_TITULO','Times New Roman');

  TRY
    PnlTitulo.Color := StringToColor(pnl_sup);
    PnlDados.Color := StringToColor(pnl_central);
    PnlTitulo.Font.Color := StringToColor(cor_fonte);
    PnlTitulo.Font.Name := fonte;
    PnlCentral.Color := StringToColor(pnl_central);
    PnlInferior.Color := StringToColor(pnl_inf);
  EXCEPT
    PnlTitulo.Color := clMoneyGreen;
    PnlDados.Color := clMoneyGreen;
    PnlTitulo.Font.Color := clBlack;
    PnlTitulo.Font.Name := 'Times New Roman';
    PnlCentral.Color := clMoneyGreen;
    PnlInferior.Color := clMoneyGreen;
  END;

  ArquivoIni.Free;

  DBFoto.Picture := nil;

end;

end.
