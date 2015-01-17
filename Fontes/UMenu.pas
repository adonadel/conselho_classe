unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, RzPanel, StdCtrls, RzLabel, jpeg,
  RzShellDialogs, RzBckgnd, RzButton, RzBmpBtn, IniFiles;

type
  TFrm_Menu = class(TForm)
    PnlSuperior: TRzPanel;
    ImgLogo: TImage;
    LblNomeEmp: TRzLabel;
    LblSistema: TRzLabel;
    LblVersao: TRzLabel;
    PnlColor: TRzBackground;
    PnlCliente: TRzPanel;
    PnlDireito: TRzPanel;
    PnlEsquerdo: TRzPanel;
    BtnCadastros: TRzBmpButton;
    BtnEndereco: TRzBmpButton;
    BtnControles: TRzBmpButton;
    BtnConfig: TRzBmpButton;
    BtnSair: TRzBmpButton;
    BtnRelat: TRzBmpButton;
    PnlEndereco: TRzPanel;
    BtnCep: TRzBmpButton;
    BtnBairro: TRzBmpButton;
    BtnCidade: TRzBmpButton;
    BtnLogra: TRzBmpButton;
    PnlCadastros: TRzPanel;
    BtnAlunos: TRzBmpButton;
    BtnFunc: TRzBmpButton;
    BtnCargos: TRzBmpButton;
    BtnEmpresa: TRzBmpButton;
    BtnVagas: TRzBmpButton;
    BtnTurmas: TRzBmpButton;
    BtnNucleos: TRzBmpButton;
    PnlControles: TRzPanel;
    BtnGerarHorarios: TRzBmpButton;
    PnlFechar: TRzPanel;
    BtnFechar: TRzBmpButton;
    BtnMinimizar: TRzBmpButton;
    PnlRelatorios: TRzPanel;
    PnlConfig: TRzPanel;
    BtnConfigMenu: TRzBmpButton;
    BtnConfigCad: TRzBmpButton;
    BtnConfigBusca: TRzBmpButton;
    ImgFundo: TImage;
    BtnConfigSistema: TRzBmpButton;
    BtnGerarConselho: TRzBmpButton;
    BtnCadConselho: TRzBmpButton;
    BtnOcorrencias: TRzBmpButton;
    BtnDisciplina: TRzBmpButton;
    BtnCursos: TRzBmpButton;
    BtnAuto: TRzBmpButton;
    BtnRelatAlu: TRzBmpButton;
    BtnRelatFunc: TRzBmpButton;
    BtnRelatCargos: TRzBmpButton;
    BtnRelatEmp: TRzBmpButton;
    BtnRelatVaga: TRzBmpButton;
    BtnRelatTurma: TRzBmpButton;
    BtnRelatNucleo: TRzBmpButton;
    BtnRelatOcorrencia: TRzBmpButton;
    BtnRelatDisc: TRzBmpButton;
    BtnRelatCursos: TRzBmpButton;
    BtnRelatAutorizacao: TRzBmpButton;
    RzSeparator1: TRzSeparator;
    BtnPropHora: TRzBmpButton;
    procedure BtnEnderecoClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure BtnControlesClick(Sender: TObject);
    procedure BtnRelatClick(Sender: TObject);
    procedure BtnConfigClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnCadastrosClick(Sender: TObject);
    procedure Cadastros1Click(Sender: TObject);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnGerarHorariosClick(Sender: TObject);
    procedure BtnLograClick(Sender: TObject);
    procedure BtnCidadeClick(Sender: TObject);
    procedure BtnBairroClick(Sender: TObject);
    procedure BtnCepClick(Sender: TObject);
    procedure BtnNucleosClick(Sender: TObject);
    procedure BtnTurmasClick(Sender: TObject);
    procedure BtnVagasClick(Sender: TObject);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure BtnCargosClick(Sender: TObject);
    procedure BtnFuncClick(Sender: TObject);
    procedure BtnAlunosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfigMenuClick(Sender: TObject);
    procedure BtnConfigCadClick(Sender: TObject);
    procedure BtnConfigBuscaClick(Sender: TObject);
    procedure BtnConfigSistemaClick(Sender: TObject);
    procedure BtnGerarConselhoClick(Sender: TObject);
    procedure BtnCadConselhoClick(Sender: TObject);
    procedure BtnOcorrenciasClick(Sender: TObject);
    procedure BtnDisciplinaClick(Sender: TObject);
    procedure BtnCursosClick(Sender: TObject);
    procedure BtnAutoClick(Sender: TObject);
    procedure BtnRelatAluClick(Sender: TObject);
    procedure BtnRelatFuncClick(Sender: TObject);
    procedure BtnRelatCargosClick(Sender: TObject);
    procedure BtnRelatEmpClick(Sender: TObject);
    procedure BtnRelatVagaClick(Sender: TObject);
    procedure BtnRelatTurmaClick(Sender: TObject);
    procedure BtnRelatNucleoClick(Sender: TObject);
    procedure BtnRelatOcorrenciaClick(Sender: TObject);
    procedure BtnRelatDiscClick(Sender: TObject);
    procedure BtnRelatCursosClick(Sender: TObject);
    procedure BtnRelatAutorizacaoClick(Sender: TObject);
    procedure BtnPropHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Menu: TFrm_Menu;

implementation

uses UBairros, UCadCaracVaga, UCadVaga, UCEP, UCidades, UEmpresa,
  UTipoLogra, UConfigMenu, UConfigCad, UConfigBusca,
  UConfigSistema, USenha, U_Alunos, U_CadConselho, U_GerarConselho,
  UCadcargos, UCadFunc, U_CadAuto, U_CadCur, U_CadDis, U_CadNuc, U_CadOco,
  U_CadTur, u_BusAlu, U_BusAuto, U_BusCur, U_BusDis, U_BusDisCur, U_BusNuc,
  U_BusOco, U_BusTur, U_BusTurAlu, UBuscaBair, UBuscaCep, UBuscaCid,
  UBuscaEmp, UBuscaLog, UBusCargos, UBuscaVaga, UBusFunc, UGerarHorarios,
  UPropHorarios;

{$R *.dfm}

procedure TFrm_Menu.BtnEnderecoClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  PnlEndereco.Visible:=True;
end;

procedure TFrm_Menu.FormClick(Sender: TObject);
begin
  PnlEndereco.Visible:=False;
  PnlCadastros.Visible:=False;
  PnlControles.Visible:=False;
  PnlFechar.Visible:=False;
  PnlRelatorios.Visible:=False;
  PnlConfig.Visible:=False;
end;

procedure TFrm_Menu.BtnControlesClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  PnlControles.Visible:=True;
end;

procedure TFrm_Menu.BtnRelatClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  PnlRelatorios.Visible:=True;
end;

procedure TFrm_Menu.BtnConfigClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  PnlConfig.Visible:=True;
end;

procedure TFrm_Menu.BtnSairClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  PnlFechar.Visible:=True;
end;

procedure TFrm_Menu.BtnCadastrosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  PnlCadastros.Visible:=True;
end;

procedure TFrm_Menu.Cadastros1Click(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
end;

procedure TFrm_Menu.BtnMinimizarClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Frm_Menu.WindowState:=wsMinimized;
end;

procedure TFrm_Menu.BtnFecharClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  close;
end;

procedure TFrm_Menu.BtnRelatorioClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
end;

procedure TFrm_Menu.BtnGerarHorariosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrm_GerarHorarios,Frm_GerarHorarios);
  Frm_GerarHorarios.ShowModal;
  Frm_GerarHorarios.Free;
end;

procedure TFrm_Menu.BtnLograClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmTipoLog,FrmTipoLog);
  FrmTipoLog.ShowModal;
  FrmTipoLog.Free;
end;

procedure TFrm_Menu.BtnCidadeClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmCidades,FrmCidades);
  FrmCidades.ShowModal;
  FrmCidades.Free;
end;

procedure TFrm_Menu.BtnBairroClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmBairros,FrmBairros);
  FrmBairros.ShowModal;
  FrmBairros.Free;
end;

procedure TFrm_Menu.BtnCepClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrm_Cep,Frm_Cep);
  Frm_Cep.ShowModal;
  Frm_Cep.Free;
end;

procedure TFrm_Menu.BtnNucleosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CADNUC,FRM_CADNUC);
  FRM_CADNUC.ShowModal;
  FRM_CADNUC.Free;
end;

procedure TFrm_Menu.BtnTurmasClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CADTUR,FRM_CADTUR);
  FRM_CADTUR.ShowModal;
  FRM_CADTUR.Free;
end;

procedure TFrm_Menu.BtnVagasClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmCadVaga,FrmCadVaga);
  FrmCadVaga.ShowModal;
  FrmCadVaga.Free;
end;

procedure TFrm_Menu.BtnEmpresaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmEmpresa,FrmEmpresa);
  FrmEmpresa.ShowModal;
  FrmEmpresa.Free;
end;

procedure TFrm_Menu.BtnCargosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_Cadcargos,FRM_Cadcargos);
  FRM_Cadcargos.ShowModal;
  FRM_Cadcargos.Free;
end;

procedure TFrm_Menu.BtnFuncClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CadFunc,FRM_CadFunc);
  FRM_CadFunc.ShowModal;
  FRM_CadFunc.Free;
end;

procedure TFrm_Menu.BtnAlunosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TF_Aluno,F_Aluno);
  F_Aluno.ShowModal;
  F_Aluno.Free;
end;

procedure TFrm_Menu.FormCreate(Sender: TObject);
var
  ArquivoIni : TIniFile;
  sistema : String;
  versao : Integer;
  caminho : String;
  nome_empresa, Img_Fundo, Img_Logo, Cor1, Cor2: string;
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
    Img_Fundo    := ArquivoIni.ReadString('CONFIG_MENU','IMG_FUNDO',caminho_opcao2+'ImgPadrao');
    Img_Logo     := ArquivoIni.ReadString('CONFIG_MENU','IMG_LOGO',caminho_opcao2+'ImgPadrao');
    Cor1         := ArquivoIni.ReadString('CONFIG_MENU','COR_GRADIENTE_I','clSilver');
    Cor2         := ArquivoIni.ReadString('CONFIG_MENU','COR_GRADIENTE_II','clSkyBlue');

    TRY//try feito para parâmetros mais simples, como o de sistema e a cor do painel superior
      LblSistema.Caption := 'Software: ' + sistema;
      LblVersao.Caption := 'Versão: ' + IntToStr(versao);
      Caption := ' Empresa: ' +nome_empresa;
      LblNomeEmp.Caption := nome_empresa;
      PnlColor.GradientColorStart := StringToColor(Cor1);
      PnlColor.GradientColorStop := StringToColor(Cor2);
    EXCEPT
      LblSistema.Caption := 'Software Pirateado';
      LblVersao.Caption := 'Versão: 0000' ;
      Frm_Menu.Caption := 'Empresa não especificada!';
      LblNomeEmp.Caption := 'Empresa não especificada!';
      PnlColor.GradientColorStart := clSilver;
      PnlColor.GradientColorStop := clSkyBlue;
    END;
    /////////////////////////////////////////////
    TRY//try feito para possível erro na imagem
      ImgFundo.Picture.LoadFromFile('Img_Fundo.jpg');
      ImgLogo.Picture.LoadFromFile('Img_Logo.jpg');
    EXCEPT
      ShowMessage('Um erro impediu a leitura do Arquivo de Configuração...'+#10+#13+
      '  Possíveis Causas:'+#10+#13+'    '+#26+'Algum caminho de imagem pode estar inacessível;'+#10+#13+
      '    '+#26+'O caminho do banco pode estar errado.'+#10+#13+'  Definidos parâmetros padrão para o Sistema!'+#10+#13+
      '    '+#26+'Vá em Configurações e defina os seus Parâmetros para o Menu Pricipal.');
      ImgFundo.Picture.LoadFromFile(caminho_opcao2+'ImgPadrao.jpg');
      ImgLogo.Picture.LoadFromFile(caminho_opcao2+'ImgPadrao.jpg');
    END;
    ArquivoIni.Free;
end;

procedure TFrm_Menu.BtnConfigMenuClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmConfigMenu,FrmConfigMenu);
  FrmConfigMenu.ShowModal;
  FrmConfigMenu.Free;
end;

procedure TFrm_Menu.BtnConfigCadClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmConfigCad,FrmConfigCad);
  FrmConfigCad.ShowModal;
  FrmConfigCad.Free;
end;

procedure TFrm_Menu.BtnConfigBuscaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmConfigBusca,FrmConfigBusca);
  FrmConfigBusca.ShowModal;
  FrmConfigBusca.Free;
end;

procedure TFrm_Menu.BtnConfigSistemaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmSenha,FrmSenha);
  FrmSenha.ShowModal;
  FrmSenha.Free;
end;

procedure TFrm_Menu.BtnGerarConselhoClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmGerarConselho,FrmGerarConselho);
  FrmGerarConselho.ShowModal;
  FrmGerarConselho.Free;
end;

procedure TFrm_Menu.BtnCadConselhoClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TF_CadConselho,F_CadConselho);
  F_CadConselho.ShowModal;
  F_CadConselho.Free;
end;

procedure TFrm_Menu.BtnOcorrenciasClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CADOCO,FRM_CADOCO);
  FRM_CADOCO.ShowModal;
  FRM_CADOCO.Free;
end;

procedure TFrm_Menu.BtnDisciplinaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CADDIS,FRM_CADDIS);
  FRM_CADDIS.ShowModal;
  FRM_CADDIS.Free;
end;

procedure TFrm_Menu.BtnCursosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CADCUR,FRM_CADCUR);
  FRM_CADCUR.ShowModal;
  FRM_CADCUR.Free;
end;

procedure TFrm_Menu.BtnAutoClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_CADAUTO,FRM_CADAUTO);
  FRM_CADAUTO.ShowModal;
  FRM_CADAUTO.Free;
end;

procedure TFrm_Menu.BtnRelatAluClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmBuscaAlu,FrmBuscaAlu);
  FrmBuscaAlu.ShowModal;
  FrmBuscaAlu.Free;
end;

procedure TFrm_Menu.BtnRelatFuncClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrm_BusFunc,Frm_BusFunc);
  Frm_BusFunc.ShowModal;
  Frm_BusFunc.Free;
end;

procedure TFrm_Menu.BtnRelatCargosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrm_BusCargos,Frm_BusCargos);
  Frm_BusCargos.ShowModal;
  Frm_BusCargos.Free;
end;

procedure TFrm_Menu.BtnRelatEmpClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmBuscaEmp,FrmBuscaEmp);
  FrmBuscaEmp.ShowModal;
  FrmBuscaEmp.Free;
end;

procedure TFrm_Menu.BtnRelatVagaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrmBuscaVaga,FrmBuscaVaga);
  FrmBuscaVaga.ShowModal;
  FrmBuscaVaga.Free;
end;

procedure TFrm_Menu.BtnRelatTurmaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_BUSTUR,FRM_BUSTUR);
  FRM_BUSTUR.ShowModal;
  FRM_BUSTUR.Free;
end;

procedure TFrm_Menu.BtnRelatNucleoClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_BUSNUC,FRM_BUSNUC);
  FRM_BUSNUC.ShowModal;
  FRM_BUSNUC.Free;
end;

procedure TFrm_Menu.BtnRelatOcorrenciaClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_BUSOCO,FRM_BUSOCO);
  FRM_BUSOCO.ShowModal;
  FRM_BUSOCO.Free;
end;

procedure TFrm_Menu.BtnRelatDiscClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_BUSDIS,FRM_BUSDIS);
  FRM_BUSDIS.ShowModal;
  FRM_BUSDIS.Free;
end;

procedure TFrm_Menu.BtnRelatCursosClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_BUSCUR,FRM_BUSCUR);
  FRM_BUSCUR.ShowModal;
  FRM_BUSCUR.Free;
end;

procedure TFrm_Menu.BtnRelatAutorizacaoClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFRM_BUSAUTO,FRM_BUSAUTO);
  FRM_BUSAUTO.ShowModal;
  FRM_BUSAUTO.Free;
end;

procedure TFrm_Menu.BtnPropHoraClick(Sender: TObject);
begin
  Frm_Menu.FormClick(Sender);
  Application.CreateForm(TFrm_ProHora,Frm_ProHora);
  Frm_ProHora.ShowModal;
  Frm_ProHora.Free;
end;

end.
