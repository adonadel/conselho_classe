unit UConfigSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, Mask, RzEdit, RzLabel, IniFiles,
  RzBtnEdt;

type
  TFrmConfigSistema = class(TForm)
    PnlTitulo: TRzPanel;
    RzPanel1: TRzPanel;
    PnlBotao: TRzPanel;
    BtSair: TRzBitBtn;
    BtGravar: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    EdtNomeEmp: TRzEdit;
    RzGroupBox2: TRzGroupBox;
    RzLabel2: TRzLabel;
    EdtSistema: TRzEdit;
    RzLabel3: TRzLabel;
    EdtVersao: TRzEdit;
    RzGroupBox3: TRzGroupBox;
    RzLabel4: TRzLabel;
    AbrirDialog: TOpenDialog;
    EdtBanco: TRzButtonEdit;
    procedure BtGravarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtBancoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigSistema: TFrmConfigSistema;
  sistema : String;
  versao : Integer;
  nome_empresa: string;

implementation

uses UMenu;

{$R *.dfm}

procedure TFrmConfigSistema.BtGravarClick(Sender: TObject);
var
  ArquivoIni : TIniFile;
  caminho: String;
begin
  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni   := TIniFile.Create(caminho);
  Except
    ShowMessage('Arquivo de configuração inexistente!');
    Halt;
  end;

  IF(EdtNomeEmp.Text = '')THEN
  BEGIN
    ShowMessage('Impossível continuar! Campo "Nome da Empresa" vazio...');
    Exit;
  END;

  IF(EdtSistema.Text = '')THEN
  BEGIN
    ShowMessage('Impossível continuar! Campo "Sistema" vazio...');
    Exit;
  END;

  IF(EdtVersao.Text = '')THEN
  BEGIN
    ShowMessage('Impossível continuar! Campo "Versão" vazio...');
    Exit;
  END;

  IF(EdtBanco.Text = '')THEN
  BEGIN
    ShowMessage('Impossível continuar! É necessário ter o caminho do banco...');
    Exit;
  END;

  TRY
    ArquivoIni.WriteString('CONFIGURACOES','NOME_EMPRESA',EdtNomeEmp.Text);
    ArquivoIni.WriteString('CONFIGURACOES','SISTEMA',EdtSistema.Text);
    ArquivoIni.WriteInteger('CONFIGURACOES','VERSAO',StrToInt(EdtVersao.Text));
    ArquivoIni.WriteString('BANCO','CAMINHO_BANCO',(EdtBanco.Text));
  EXCEPT
    ShowMessage('Um ou mais parâmetros de configuração está(ão) ausente(s)!');
  END;

  Frm_Menu.LblNomeEmp.Caption := EdtNomeEmp.Text;
  Frm_Menu.LblSistema.Caption := EdtSistema.Text;
  Frm_Menu.LblVersao.Caption := EdtVersao.Text;
  ShowMessage('Caso tenha sido modificado o caminho do banco, '+#10+#13+'será necessário reiniciar o Aplicativo...');
  ArquivoIni.Free;
  Close;
end;

procedure TFrmConfigSistema.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfigSistema.FormCreate(Sender: TObject);
var
  ArquivoIni : TIniFile;
  caminho: String;
begin
  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni   := TIniFile.Create(caminho);
  Except
    ShowMessage('Arquivo de configuração inexistente!');
    Halt;
  end;

  TRY
    EdtNomeEmp.Text := ArquivoIni.ReadString('CONFIGURACOES','NOME_EMPRESA','Empresa não especificada');
    EdtSistema.Text := ArquivoIni.ReadString('CONFIGURACOES','SISTEMA','Software pirateado!!!');
    EdtVersao.Text  := ArquivoIni.ReadString('CONFIGURACOES','VERSAO','0000');
    EdtBanco.Text   := ArquivoIni.ReadString('BANCO','CAMINHO_BANCO','0000');
  EXCEPT
    EdtNomeEmp.Text := 'Empresa não especificada';
    EdtSistema.Text := 'Software pirateado!!!';
    EdtVersao.Text  := '0000';
    EdtBanco.Text   := 'Não há Banco de Dados selecionado!';
  END;
end;

procedure TFrmConfigSistema.EdtBancoButtonClick(Sender: TObject);
begin
  AbrirDialog.Execute;
  IF(FileExists(AbrirDialog.FileName) = TRUE)THEN
  BEGIN
    EdtBanco.Text := AbrirDialog.FileName;
  END
  ELSE
  BEGIN
    ShowMessage('Nenhum caminho de banco foi selecionado...'+#10+#13+
    'Indique um caminho de banco que seja válido!');
  END;

end;

end.
