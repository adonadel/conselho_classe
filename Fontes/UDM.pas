unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, EXTCTRLS, STDCTRLS, CONTROLS, FORMS, IniFiles,
  FMTBcd;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    SqlAux: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
 caminho: String;
 Banco: String;
 ArquivoINI: TIniFile;
 caminho_banco: String;

begin

  caminho:= ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';


  if (FileExists(caminho) = true) then
   begin
      ArquivoINI:=TIniFile.Create( caminho );
      Banco:= caminho_banco + ArquivoIni.ReadString('BANCO','CAMINHO_BANCO','');

      ArquivoINI.Free;

      Conexao.close;
      Conexao.Params.Values['CONNECTION NAME'] := 'ProjTcc';
      Conexao.Params.Values['DATABASE']        :=  Banco;
      Conexao.Params.Values['DRIVERNAME']      := 'INTERBASE';
      Conexao.Params.Values['SQLDIALECT']      := '3';
      Conexao.LoginPrompt                      := false;

      if (not FileExists(Banco)) then
      begin
       Halt;
      end;
     Conexao.open;
   end
  else
   begin
     halt;
   end;

end;

end.
