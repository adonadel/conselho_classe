unit UConfigBusca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBorder, StdCtrls, RzCmboBx, RzPanel, Mask, RzEdit, RzBtnEdt,
  RzButton, RzLabel, ExtCtrls, Grids, RzGrids, IniFiles;

type
  TFrmConfigBusca = class(TForm)
    PnlTitulo: TRzPanel;
    PnlDados: TRzPanel;
    RzLabel6: TRzLabel;
    RzPanel1: TRzPanel;
    PnlSuperior: TRzPanel;
    PnlBotao1: TRzPanel;
    PnlCentral: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzLabel2: TRzLabel;
    CBcor: TRzColorComboBox;
    RzGroupBox4: TRzGroupBox;
    RzLabel4: TRzLabel;
    GradePnlCentral: TRzColorPicker;
    RzGroupBox5: TRzGroupBox;
    RzLabel5: TRzLabel;
    GradePnlSuperior: TRzColorPicker;
    RzGroupBox2: TRzGroupBox;
    RzLabel3: TRzLabel;
    PnlBotao: TRzPanel;
    BtSair: TRzBitBtn;
    BtGravar: TRzBitBtn;
    Bevel1: TBevel;
    RzGroupBox6: TRzGroupBox;
    RzGroupBox7: TRzGroupBox;
    RzGroupBox8: TRzGroupBox;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzStringGrid1: TRzStringGrid;
    RzEdit1: TRzEdit;
    RzLabel7: TRzLabel;
    FonteDialog: TFontDialog;
    procedure CBcorChange(Sender: TObject);
    procedure GradePnlSuperiorChange(Sender: TObject);
    procedure GradePnlCentralChange(Sender: TObject);
    procedure PnlSuperiorDblClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfigBusca: TFrmConfigBusca;
  cor_titulo, cor_pnl_superior, cor_pnl_central, fonte_titulo: String;

implementation

{$R *.dfm}

procedure TFrmConfigBusca.CBcorChange(Sender: TObject);
begin
  PnlSuperior.Font.Color := CBcor.SelectedColor;
  cor_titulo := ColorToString(CBcor.SelectedColor);
end;

procedure TFrmConfigBusca.GradePnlSuperiorChange(Sender: TObject);
begin
  PnlSuperior.Color := GradePnlSuperior.SelectedColor;
  cor_pnl_superior  := ColorToString(GradePnlSuperior.SelectedColor);
end;

procedure TFrmConfigBusca.GradePnlCentralChange(Sender: TObject);
begin
  PnlCentral.Color := GradePnlCentral.SelectedColor;
  cor_pnl_central  := ColorToString(GradePnlCentral.SelectedColor);
end;

procedure TFrmConfigBusca.PnlSuperiorDblClick(Sender: TObject);
begin
  FonteDialog.Execute;
  fonte_titulo := FonteDialog.Font.Name;
  PnlSuperior.Font.Name := fonte_titulo;
end;

procedure TFrmConfigBusca.BtGravarClick(Sender: TObject);
var ArquivoIni: TIniFile;
caminho: String;
begin
  TRY
    caminho    := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni := TIniFile.Create(caminho);
  EXCEPT
    showMessage('Arquivo de Configuração Inexistente!');
  END;

  TRY
    ArquivoIni.WriteString('CONFIG_BUSCA','COR_PNL_TITULO',cor_pnl_superior);
    ArquivoIni.WriteString('CONFIG_BUSCA','COR_PNL_DADO',cor_pnl_central);
    ArquivoIni.WriteString('CONFIG_BUSCA','COR_FONTE',cor_titulo);
    ArquivoIni.WriteString('CONFIG_BUSCA','FONTE',fonte_titulo);
  EXCEPT
    ShowMessage('Está faltando um ou mais parâmetros do Arquivo de Configuração!');
  END;

  ArquivoIni.Free;
  Close;

end;

procedure TFrmConfigBusca.FormCreate(Sender: TObject);
var ArquivoIni: TIniFile;
caminho: String;
begin
  TRY
    caminho    := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni := TIniFile.Create(caminho);
  EXCEPT
    showMessage('Arquivo de Configuração Inexistente!');
  END;

  cor_titulo       := ArquivoIni.ReadString('CONFIG_BUSCA','COR_FONTE','clBlack');
  cor_pnl_superior := ArquivoIni.ReadString('CONFIG_BUSCA','COR_PNL_TITULO','clMoneyGreen');
  cor_pnl_central  := ArquivoIni.ReadString('CONFIG_BUSCA','COR_PNL_DADO','clMoneyGreen');
  fonte_titulo     := ArquivoIni.ReadString('CONFIG_BUSCA','FONTE','Times New Roman');
  //Aplicando alterações//
  TRY
    PnlSuperior.Color := StringToColor(cor_pnl_superior);
    PnlCentral.Color := StringToColor(cor_pnl_central);
    PnlSuperior.Font.Color := StringToColor(cor_titulo);
    PnlSuperior.Font.Name := fonte_titulo;
    CBcor.SelectedColor := StringToColor(cor_titulo);
  EXCEPT
    PnlSuperior.Color := clMoneyGreen;
    PnlCentral.Color := clMoneyGreen;
    PnlSuperior.Font.Color := clHighlightText;
    PnlSuperior.Font.Name := 'Times New Roman';
  END;

  ArquivoIni.Free;

end;

procedure TFrmConfigBusca.BtSairClick(Sender: TObject);
begin
  close;
end;

end.
