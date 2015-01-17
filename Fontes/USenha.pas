unit USenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ExtCtrls, RzPanel, RzButton;

type
  TFrmSenha = class(TForm)
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzGroupBox1: TRzGroupBox;
    RzLabel1: TRzLabel;
    EdtSenha: TEdit;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSenha: TFrmSenha;

implementation

uses UConfigSistema;

{$R *.dfm}

procedure TFrmSenha.RzButton1Click(Sender: TObject);
begin
  IF(EdtSenha.Text = 'Admin')THEN
  BEGIN
    Application.CreateForm(TFrmConfigSistema,FrmConfigSistema);
    FrmConfigSistema.ShowModal;
    FrmConfigSistema.Free;
    Close;
    Exit;
  END
  ELSE
  BEGIN
    ShowMessage('Acesso Negado!');
  END;
  Close;
end;

procedure TFrmSenha.RzButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSenha.FormShow(Sender: TObject);
begin
  EdtSenha.SetFocus;
end;

end.
