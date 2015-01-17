unit UConfigCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzBorder, RzPanel, StdCtrls, RzLabel, RzBckgnd,
  RzBmpBtn, jpeg, ExtCtrls, Mask, RzEdit, RzBtnEdt, RzCmboBx, IniFiles,
  Buttons;

type
  TFrmConfigCad = class(TForm)
    PnlTitulo: TRzPanel;
    PnlDados: TRzPanel;
    RzPanel1: TRzPanel;
    PnlTitulo1: TRzPanel;
    PnlBotao1: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    RzLabel4: TRzLabel;
    GradePnlCentral: TRzColorPicker;
    RzGroupBox3: TRzGroupBox;
    RzLabel1: TRzLabel;
    GradePnlInferior: TRzColorPicker;
    PnlBotao: TRzPanel;
    BtSair: TRzBitBtn;
    BtGravar: TRzBitBtn;
    PnlCentral: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzButtonEdit1: TRzButtonEdit;
    RzGroupBox5: TRzGroupBox;
    RzLabel5: TRzLabel;
    GradePnlSuperior: TRzColorPicker;
    RzLabel2: TRzLabel;
    CBcor: TRzColorComboBox;
    FonteDialog: TFontDialog;
    RzGroupBox2: TRzGroupBox;
    RzLabel3: TRzLabel;
    RzLabel6: TRzLabel;
    procedure CBcorChange(Sender: TObject);
    procedure GradePnlSuperiorChange(Sender: TObject);
    procedure GradePnlCentralChange(Sender: TObject);
    procedure GradePnlInferiorChange(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure PnlTitulo1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigCad: TFrmConfigCad;
  cor_titulo, cor_pnl_superior, cor_pnl_inferior, cor_pnl_central, fonte_titulo: String;

implementation

{$R *.dfm}

procedure TFrmConfigCad.CBcorChange(Sender: TObject);
begin
  PnlTitulo1.Font.Color := CBcor.SelectedColor;
  cor_titulo:= ColorToString(CBcor.SelectedColor);
end;

procedure TFrmConfigCad.GradePnlSuperiorChange(Sender: TObject);
begin
  PnlTitulo1.Color := GradePnlSuperior.SelectedColor;
  cor_pnl_superior := ColorToString(GradePnlSuperior.SelectedColor);
end;

procedure TFrmConfigCad.GradePnlCentralChange(Sender: TObject);
begin
  PnlCentral.Color := GradePnlCentral.SelectedColor;
  cor_pnl_central := ColorToString(GradePnlCentral.SelectedColor);
end;

procedure TFrmConfigCad.GradePnlInferiorChange(Sender: TObject);
begin
  PnlBotao1.Color := GradePnlInferior.SelectedColor;
  cor_pnl_inferior:= ColorToString(GradePnlInferior.SelectedColor);
end;

procedure TFrmConfigCad.BtGravarClick(Sender: TObject);
var ArquivoIni: TIniFile;
  caminho: String;
begin
  TRY
    caminho := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.ini';;
    ArquivoIni := TIniFile.Create(Caminho);
  EXCEPT
    showMessage('Erro na Gravação e Dados!'+#10+#13+'Certifique se o parâmetro de Configuração existe...');
  END;

  TRY
    ArquivoIni.WriteString('CONFIG_CADASTRO','COR_PNL_TITULO',cor_pnl_superior);
    ArquivoIni.WriteString('CONFIG_CADASTRO','COR_PNL_DADO',cor_pnl_central);
    ArquivoIni.WriteString('CONFIG_CADASTRO','COR_PNL_BOTAO',cor_pnl_inferior);
    ArquivoIni.WriteString('CONFIG_CADASTRO','COR_FONTE_TITULO',cor_titulo);
    ArquivoIni.WriteString('CONFIG_CADASTRO','FONTE_TITULO',fonte_titulo);
  EXCEPT
    ShowMessage('Está faltando um ou mais parâmetros do Arquivo de Configuração!');
  END;

  ArquivoIni.Free;
  close;
  
end;

procedure TFrmConfigCad.PnlTitulo1DblClick(Sender: TObject);
begin
  FonteDialog.Execute;
  fonte_titulo := FonteDialog.Font.Name;
  PnlTitulo1.Font.Name := fonte_titulo;
end;

procedure TFrmConfigCad.FormCreate(Sender: TObject);
var ArquivoIni: TIniFile;
caminho: string;
begin
  TRY
    caminho:= ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni := TIniFile.Create(caminho);
  EXCEPT
    ShowMessage('Arquivo de configuração inexistente!');
    Halt;
  END;

  cor_pnl_superior := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_TITULO','clMoneyGreen');
  cor_pnl_central  := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_DADO','clMoneyGreen');
  cor_pnl_inferior := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_PNL_BOTAO','clMoneyGreen');
  cor_titulo       := ArquivoIni.ReadString('CONFIG_CADASTRO','COR_FONTE_TITULO','clBlack');
  fonte_titulo     := ArquivoIni.ReadString('CONFIG_CADASTRO','FONTE_TITULO','Arial');
  //Aplicando alterações recebidas do arquivo de configuração

  TRY
    PnlTitulo1.Color      := StringToColor(cor_pnl_superior);
    PnlCentral.Color      := StringToColor(cor_pnl_central);
    PnlBotao1.Color       := StringToColor(cor_pnl_inferior);
    PnlTitulo1.Font.Color := StringToColor(cor_titulo);
    PnlTitulo1.Font.Name  := fonte_titulo;
    CBcor.SelectedColor   := StringToColor(cor_titulo);
  EXCEPT
    PnlTitulo1.Color      := clMoneyGreen;
    PnlCentral.Color      := clMoneyGreen;
    PnlBotao1.Color       := clMoneyGreen;
    PnlTitulo1.Font.Color := clHighlightText;
    PnlTitulo1.Font.Name  := 'Arial';
  END;

  ArquivoIni.Free;

end;

procedure TFrmConfigCad.BtSairClick(Sender: TObject);
begin
  close;
end;

end.
