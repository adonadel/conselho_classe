unit U_GerarConselho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, Mask, RzEdit, RzLabel,
  FMTBcd, SqlExpr, Provider, DB, DBClient, IniFiles;

type
  TFrmGerarConselho = class(TForm)
    PnlTitulo: TRzPanel;
    PnlPrincipal: TRzPanel;
    BtSair: TRzBitBtn;
    BtnGerar: TRzBitBtn;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel7: TRzLabel;
    EdtAno: TRzEdit;
    EdtSem: TRzEdit;
    EdtHora: TRzEdit;
    EdtTipoCons: TRzEdit;
    CDSConselho: TClientDataSet;
    DSConselho: TDataSource;
    Provider: TDataSetProvider;
    SQLConselho: TSQLDataSet;
    RzLabel5: TRzLabel;
    EdtTurno: TRzEdit;
    SQLAuxLocal: TSQLDataSet;
    SQLAuxAlu: TSQLDataSet;
    SQLConsAlu: TSQLDataSet;
    ProviderConsAlu: TDataSetProvider;
    CDSConsAlu: TClientDataSet;
    DSConsAlu: TDataSource;
    SQLConsAluIDCONSALU: TIntegerField;
    SQLConsAluIDALU: TIntegerField;
    SQLConsAluIDCONS: TIntegerField;
    SQLConsAluSTATUS_CONSALU: TStringField;
    CDSConsAluIDCONSALU: TIntegerField;
    CDSConsAluIDALU: TIntegerField;
    CDSConsAluIDCONS: TIntegerField;
    CDSConsAluSTATUS_CONSALU: TStringField;
    CDSConselhoIDCONS: TIntegerField;
    CDSConselhoIDTUR: TIntegerField;
    CDSConselhoDATA_CONS: TDateField;
    CDSConselhoHORA_CONS: TTimeField;
    CDSConselhoNUMBIMTRIM_CONS: TIntegerField;
    CDSConselhoTIPOCONS_CONS: TStringField;
    CDSConselhoOBS_CONS: TStringField;
    CDSConselhoSTATUS_CONS: TStringField;
    CDSConselhoANO_TUR: TIntegerField;
    CDSConselhoTURNO_TUR: TStringField;
    CDSConselhoSTATUS_TUR: TStringField;
    SQLConselhoIDCONS: TIntegerField;
    SQLConselhoIDTUR: TIntegerField;
    SQLConselhoDATA_CONS: TDateField;
    SQLConselhoHORA_CONS: TTimeField;
    SQLConselhoNUMBIMTRIM_CONS: TIntegerField;
    SQLConselhoTIPOCONS_CONS: TStringField;
    SQLConselhoOBS_CONS: TStringField;
    SQLConselhoSTATUS_CONS: TStringField;
    SQLConselhoANO_TUR: TIntegerField;
    SQLConselhoTURNO_TUR: TStringField;
    SQLConselhoSTATUS_TUR: TStringField;
    SQLAuxCod: TSQLDataSet;
    SQLConsAluCOMENT_CONSALU: TStringField;
    SQLConsAluENCAM_CONSALU: TStringField;
    SQLConsAluPROBLE_CONSALU: TStringField;
    CDSConsAluCOMENT_CONSALU: TStringField;
    CDSConsAluENCAM_CONSALU: TStringField;
    CDSConsAluPROBLE_CONSALU: TStringField;
    EdtData: TRzDateTimeEdit;
    procedure BtSairClick(Sender: TObject);
    procedure BtnGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGerarConselho: TFrmGerarConselho;

implementation

uses UDM, VarUtils;

{$R *.dfm}

procedure TFrmGerarConselho.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmGerarConselho.BtnGerarClick(Sender: TObject);
var
DataCons: String;
begin

   DM.SqlAux.Close;
   DM.SqlAux.CommandText:='';
   DM.SqlAux.CommandText:=' SELECT *'+
                               ' FROM TURMAS'+
                               ' WHERE TURMAS.ANO_TUR = ' + QuotedStr(EdtAno.Text)+
                               ' AND TURMAS.TURNO_TUR = ' + QuotedStr(EdtTurno.Text)+
                               ' AND TURMAS.STATUS_TUR = '+ QuotedStr('A');


   DM.SqlAux.Open;

   CDSConselho.Active:= False;
   SQLConselho.Close;
   SQLConselho.ParamByName('PARANO').AsInteger:=StrToInt(EdtAno.Text);
   SQLConselho.ParamByName('PARTURNO').AsString:= (EdtTurno.Text);
   SQLConselho.ParamByName('PARBIM').AsInteger:= StrToInt(EdtSem.Text);
   SQLConselho.ParamByName('PARSTATUS').AsString:=('A');


   SQLConselho.Open;
   CDSConselho.Open;



   //if para testar a existencia de conselhos com os dados repassados como parametros (do sqlaux)

   IF (CDSConselhoIDCONS.AsInteger > 0) THEN
   BEGIN
      ShowMessage('Conselho já gerado...');
      Exit;
   END //END PRIMEIRA CONDIÇÃO DO IF
   ELSE
   BEGIN
     WHILE NOT (DM.SqlAux.Eof) DO
      BEGIN

        CDSConselho.Append;

        CDSConselhoSTATUS_CONS.AsString  :='A';
        CDSConselhoDATA_CONS.AsDateTime  := StrToDate(EdtData.Text);
        CDSConselhoHORA_CONS.AsDateTime  := StrToTime(EdtHora.Text);
        CDSConselhoNUMBIMTRIM_CONS.AsInteger:= StrToInt(EdtSem.Text);
        CDSConselhoTIPOCONS_CONS.AsString:= (EdtTipoCons.Text);
        CDSConselhoIDTUR.AsInteger       := DM.SqlAux.fieldbyname('IDTUR').AsInteger;

//////////CÓD AUTOMÁTICO

        SQLAuxLocal.Close;
        SQLAuxLocal.CommandText := '';
        SQLAuxLocal.CommandText := ' SELECT MAX(CONSELHO.IDCONS) FROM CONSELHO ';
        SQLAuxLocal.Open;

        CDSConselhoIDCONS.AsInteger := SQLAuxLocal.FIELDBYNAME('MAX').AsInteger +1 ;
//////////CÓD AUTOMÁTICO

        TRY
        CDSConselho.Post;
        CDSConselho.ApplyUpdates(0);
        Except
        ShowMessage('Erro na geração do conselho!');
        Exit;
        END;
        DM.SqlAux.Next;

      END;//END DO WHILE NOT


    CDSConselho.First;
    
    SQLConsAlu.Open;
    CDSConsAlu.Open;

    while not(CDSConselho.Eof) do
    begin
            SQLAuxAlu.Close;
            SQLAuxAlu.CommandText:='';
            SQLAuxAlu.CommandText:=' SELECT '+
                                   ' RELTURALU.IDALU,'+
                                   ' RELTURALU.IDTUR,'+
                                   ' RELTURALU.DATA_RELTURALU,'+
                                   ' RELTURALU.OBS_RELTURALU,'+
                                   ' RELTURALU.STATUS_RELTURALU'+
                                   ' FROM RELTURALU'+
                                   ' WHERE RELTURALU.IDTUR = ' + QuotedStr(Inttostr(CDSConselhoIDTUR.asinteger)) ;

            SQLAuxAlu.Open;

            WHILE not (SQLAuxAlu.Eof)  DO
              Begin
                CDSConsAlu.Append;
                CDSConsAluSTATUS_CONSALU.AsString := 'A';
                CDSConsAluCOMENT_CONSALU.AsString := '';
                CDSConsAluENCAM_CONSALU.AsString  := '';
                CDSConsAluPROBLE_CONSALU.AsString := '';
                CDSConsAluIDALU.AsInteger         := SQLAuxAlu.FIELDBYNAME('IDALU').AsInteger;
                CDSConsAluIDCONS.AsInteger        := CDSConselho.FIELDBYNAME('IDCONS').AsInteger;

                IF ((CDSConsAlu.State <> DSEDIT) OR (CDSConsAlu.State <> DSINSERT)) THEN
                BEGIN
                    CDSConselho.Edit;
                END;
                //////////CÓD AUTOMÁTICO
                SQLAuxCod.Close;
                SQLAuxCod.CommandText := '';
                SQLAuxCod.CommandText := ' SELECT MAX(CONSALU.IDCONSALU) FROM CONSALU ';
                SQLAuxCod.Open;

                CDSConsAluIDCONSALU.AsInteger := SQLAuxCod.FIELDBYNAME('MAX').AsInteger +1 ;

                /////////CÓD AUTOMÁTICO
                
                TRY
                  DataCons:=CDSConselhoDATA_CONS.AsString;
                  CDSConsAlu.Post;
                  CDSConsAlu.ApplyUpdates(0);
                EXCEPT
                  ShowMessage('Erro na Geração');
                  Exit;
                end;
                SQLAuxAlu.Next;
              End;
            CDSConselho.Next;
      End;  
   END;//END DO ELSE DO IF

  CDSConsAlu.Close;
  SQLConsAlu.Close;
  CDSConselho.Close;
  SQLConselho.Close;
  
  EdtAno.Text:='';
  EdtSem.Text:='';
  EdtData.Text:='';
  EdtHora.Text:='';
  EdtTipoCons.Text:='';
  EdtTurno.Text:='';

  ShowMessage('Conselho gerado na data ' +DataCons+ ' com sucesso!');

end;

procedure TFrmGerarConselho.FormShow(Sender: TObject);
begin
  FocusControl(EdtTipoCons);
end;

procedure TFrmGerarConselho.FormCreate(Sender: TObject);
var ArquivoIni: TIniFile;
    caminho: String;
    pnl_sup, pnl_inf, fonte, cor_fonte: string;
begin
  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni   := TIniFile.Create(caminho);
  Except
    ShowMessage('Arquivo de configuração inexistente!');
    Halt;
  end;

  pnl_sup := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_TITULO','clMoneyGren');
  pnl_inf := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_DADO','clMoneyGren');
  cor_fonte := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_FONTE_TITULO','clBlack');
  fonte := ArquivoIni.ReadString('CONFIG_CADASTRO','FONTE_TITULO','Times New Roman');

  TRY
    PnlTitulo.Color := StringToColor(pnl_sup);
    PnlPrincipal.Color := StringToColor(pnl_inf);
    PnlTitulo.Font.Color := StringToColor(cor_fonte);
    PnlTitulo.Font.Name := fonte;
  EXCEPT
    PnlTitulo.Color := clMoneyGreen;
    PnlPrincipal.Color := clMoneyGreen;
    PnlTitulo.Font.Color := clBlack;
    PnlTitulo.Font.Name := 'Times New Roman';
  END;

  ArquivoIni.Free;

end;

end.
