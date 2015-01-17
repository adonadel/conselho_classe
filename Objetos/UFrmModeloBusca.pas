unit UFrmModeloBusca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, ExtCtrls, Grids, DBGrids, RzDBGrid, StdCtrls, ComCtrls,
  RzPanel, RzRadGrp, RzButton, IniFiles;

type
  TFrm_ModeloBusca = class(TForm)
    PnlDados: TPanel;
    RzBackground1: TRzBackground;
    GridDados: TRzDBGrid;
    Status: TStatusBar;
    PNLTITULO: TRzPanel;
    PNLFILTRO: TRzPanel;
    GrupoFiltro: TRzCheckGroup;
    GrupoSituacao: TRzRadioGroup;
    GrupoOrdem: TRzRadioGroup;
    Bevel1: TBevel;
    BtBuscar: TRzBitBtn;
    BTsair: TRzBitBtn;
    procedure BTSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SqlOriginal, SqlFiltro, SqlOrdem : String;
    QuemChamou: String;
  end;

var
  Frm_ModeloBusca: TFrm_ModeloBusca;

implementation

{$R *.dfm}

procedure TFrm_ModeloBusca.BTSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_ModeloBusca.FormCreate(Sender: TObject);
var ArquivoIni : TIniFile;
    versao: integer;
    sistema: string;
    caminho: string;
    nome_empresa: string;
    cor_titulo, cor_pnl_superior, cor_pnl_central, fonte_titulo: String;
begin
  try
    caminho      := ExtractFilePath(Application.ExeName) + 'CONFIGURACAO.INI';
    ArquivoIni   := TIniFile.Create(caminho);
  except
    showMessage('Arquivo de configuração inexistente!');
    Halt;
  end;

    versao       := ArquivoIni.ReadInteger('CONFIGURACOES','VERSAO',0000);
    sistema      := ArquivoIni.ReadString('CONFIGURACOES','SISTEMA','Software pirata!');
    nome_empresa := ArquivoIni.ReadString('CONFIGURACOES','NOME_EMPRESA','Empresa não especificada');
    cor_titulo       := ArquivoIni.ReadString('CONFIG_BUSCA','COR_FONTE','clBlack');
    cor_pnl_superior := ArquivoIni.ReadString('CONFIG_BUSCA','COR_PNL_TITULO','clMoneyGreen');
    cor_pnl_central  := ArquivoIni.ReadString('CONFIG_BUSCA','COR_PNL_DADO','clMoneyGreen');
    fonte_titulo     := ArquivoIni.ReadString('CONFIG_BUSCA','FONTE','Times New Roman');
    

  //-------------------------------------------------------------------------------------//

    Status.Panels[0].Text := ' Versão: ' + IntToStr(versao);
    Status.Panels[1].Text := ' Empresa: ' + nome_empresa ;
    Status.Panels[2].Text := ' Software: ' + sistema ;
    Caption := 'Empresa: '+nome_empresa;
    
    TRY
      PNLTITULO.Color := StringToColor(cor_pnl_superior);
      PNLFILTRO.Color := StringToColor(cor_pnl_central);
      PNLTITULO.Font.Color := StringToColor(cor_titulo);
      PNLTITULO.Font.Name := fonte_titulo;
    EXCEPT
      PNLTITULO.Color := clMoneyGreen;
      PNLFILTRO.Color := clMoneyGreen;
      PNLTITULO.Font.Color := clHighlightText;
      PNLTITULO.Font.Name := 'Times New Roman';
    END;

    ArquivoIni.Free;

end;

end.
