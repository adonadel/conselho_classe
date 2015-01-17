unit UConfigMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, RzLabel, RzBmpBtn, jpeg, IniFiles,
  Mask, RzEdit, RzBorder, RzBckgnd, ExtDlgs;

type
  TFrmConfigMenu = class(TForm)
    PnlTitulo: TRzPanel;
    PnlBotao: TRzPanel;
    PnlDados: TRzPanel;
    BtSair: TRzBitBtn;
    BtGravar: TRzBitBtn;
    RzPanel1: TRzPanel;
    PnlEsquerdo: TRzPanel;
    PnlTitulo1: TRzPanel;
    RzPanel2: TRzPanel;
    ImgFundo: TImage;
    RzBmpButton1: TRzBmpButton;
    RzBmpButton2: TRzBmpButton;
    RzBmpButton3: TRzBmpButton;
    LblNomeEmp: TRzLabel;
    ImgLogo: TImage;
    LblVersao: TRzLabel;
    LblSistema: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    RzLabel2: TRzLabel;
    OpenPictureDialogFundo: TOpenPictureDialog;
    PnlCor: TRzBackground;
    RzGroupBox2: TRzGroupBox;
    RzLabel3: TRzLabel;
    BtnCadastros: TRzBmpButton;
    BtnEndereco: TRzBmpButton;
    BtnControles: TRzBmpButton;
    OpenPictureDialogLogo: TOpenPictureDialog;
    RzGroupBox4: TRzGroupBox;
    GradeCor1: TRzColorPicker;
    RzLabel4: TRzLabel;
    RzGroupBox3: TRzGroupBox;
    RzLabel1: TRzLabel;
    GradeCor2: TRzColorPicker;
    RzLabel6: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure ImgFundoDblClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure ImgLogoDblClick(Sender: TObject);
    procedure GradeCor1Change(Sender: TObject);
    procedure GradeCor2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigMenu: TFrmConfigMenu;
  Img_Fundo, Img_Logo, Cor1, Cor2: String;

implementation

uses UMenu;

{$R *.dfm}

procedure TFrmConfigMenu.FormCreate(Sender: TObject);
var
  ArquivoIni : TIniFile;
  sistema : String;
  versao : Integer;
  caminho : String;
  nome_empresa: string;
  caminho_opcao2: String;
begin
  caminho_opcao2 := ExtractFilePath(Application.ExeName);

  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni   := TIniFile.Create(caminho);
  Except
    ShowMessage('Arquivo de configuração inexistente!');
    Halt;
  end;

    versao       := ArquivoIni.ReadInteger('CONFIGURACOES','VERSAO',0000);
    sistema      := ArquivoIni.ReadString('CONFIGURACOES','SISTEMA','Software pirata!');
    nome_empresa := ArquivoIni.ReadString('CONFIGURACOES','NOME_EMPRESA','Empresa não especificada');
    Img_Fundo    := ArquivoIni.ReadString('CONFIG_MENU','IMG_FUNDO',caminho_opcao2+'ImgPadrao.jpg');
    Img_Logo     := ArquivoIni.ReadString('CONFIG_MENU','IMG_LOGO',caminho_opcao2+'ImgPadrao.jpg');
    Cor1         := ArquivoIni.ReadString('CONFIG_MENU','COR_GRADIENTE_I','clSilver');
    Cor2         := ArquivoIni.ReadString('CONFIG_MENU','COR_GRADIENTE_II','clSkyBlue');

    TRY
      LblSistema.Caption := 'Software: ' + sistema;
      LblVersao.Caption := 'Versão: ' + IntToStr(versao);
      LblNomeEmp.Caption := nome_empresa;
      PnlCor.GradientColorStart := StringToColor(Cor1);
      PnlCor.GradientColorStop := StringToColor(Cor2);
      ImgFundo.Picture.LoadFromFile(Img_Fundo);
      ImgLogo.Picture.LoadFromFile(Img_Logo);
    EXCEPT
      ImgFundo.Picture.LoadFromFile(caminho_opcao2+'ImgPadrao.jpg');
      ImgLogo.Picture.LoadFromFile(caminho_opcao2+'ImgPadrao.jpg');
      PnlCor.GradientColorStart := clSilver;
      PnlCor.GradientColorStop := clSkyBlue;
    END;

    ArquivoIni.Free;

end;

procedure TFrmConfigMenu.ImgFundoDblClick(Sender: TObject);
begin
  TRY
    OpenPictureDialogFundo.Execute;
    IF(FileExists(OpenPictureDialogFundo.FileName) = True)THEN
    BEGIN
      Img_Fundo := OpenPictureDialogFundo.FileName;
      ImgFundo.Picture.LoadFromFile(OpenPictureDialogFundo.FileName);
      Frm_Menu.ImgFundo.Picture.LoadFromFile(OpenPictureDialogFundo.FileName);
    END;
  EXCEPT
    ShowMessage('Arquivo Corrompido ou Formato Inválido...');
    Img_Fundo := 'ImgPadrao.jpg';
    Frm_Menu.ImgFundo.Picture.LoadFromFile('ImgPadrao.jpg');
    Exit;
  END;
end;

procedure TFrmConfigMenu.BtGravarClick(Sender: TObject);
var ArquivoINI: TIniFile;
    caminho: String;
begin
  TRY
    caminho := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.ini';
    ArquivoINI := TIniFile.Create(caminho);

    ArquivoINI.WriteString('CONFIG_MENU','IMG_FUNDO',Img_Fundo);
    ArquivoINI.WriteString('CONFIG_MENU','IMG_LOGO',Img_Logo);
    ArquivoINI.WriteString('CONFIG_MENU','COR_GRADIENTE_I',Cor1);
    ArquivoINI.WriteString('CONFIG_MENU','COR_GRADIENTE_II',Cor2);

  //****************************************************************************//
    Frm_Menu.PnlColor.GradientColorStart := StringToColor(Cor1);
    Frm_Menu.PnlColor.GradientColorStop := StringToColor(Cor2);
    Img_Fundo := '';
    Img_Logo := '';
    Cor1 := '';
    Cor2 := '';
    ArquivoINI.Free;
    
    Close;
  EXCEPT
    ShowMessage('Erro na Gravação e Dados!'+#10+#13+'Certifique se o parâmetro de Configuração existe...');
    exit
  END;
end;

procedure TFrmConfigMenu.BtSairClick(Sender: TObject);
begin
  Img_Fundo := '';
  Img_Logo := '';
  Cor1 := '';
  Cor2 := '';
  Close;
end;

procedure TFrmConfigMenu.ImgLogoDblClick(Sender: TObject);
begin
  TRY
    OpenPictureDialogLogo.Execute;
    IF(FileExists(OpenPictureDialogLogo.FileName) = True)THEN
    BEGIN
      Img_Logo := OpenPictureDialogLogo.FileName;
      ImgLogo.Picture.LoadFromFile(OpenPictureDialogLogo.FileName);
      Frm_Menu.ImgLogo.Picture.LoadFromFile(OpenPictureDialogLogo.FileName);
    END;
  EXCEPT
    ShowMessage('Arquivo Corrompido ou Formato Inválido...');
    Img_Fundo := 'ImgPadrao.jpg';
    Frm_Menu.ImgLogo.Picture.LoadFromFile('ImgPadrao.jpg');
    Exit;
  END;
end;

procedure TFrmConfigMenu.GradeCor1Change(Sender: TObject);
begin
  Cor1 := ColorToString(GradeCor1.SelectedColor);
  PnlCor.GradientColorStart:=GradeCor1.SelectedColor;
end;

procedure TFrmConfigMenu.GradeCor2Change(Sender: TObject);
begin
  Cor2 := ColorToString(GradeCor2.SelectedColor);
  PnlCor.GradientColorStop:=GradeCor2.SelectedColor;
end;

end.
