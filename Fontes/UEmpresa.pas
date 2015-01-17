unit UEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls,
  Mask, RzEdit, RzBtnEdt, RzTabs, RzButton, RzStatus, RzPanel, ExtCtrls,
  DBCtrls, RzDBEdit;

type
  TFrmEmpresa = class(TFRM_Cadastros)
    SqlEmpresa: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CdsEmpresa: TClientDataSet;
    CdsEmpresaIDEMP: TIntegerField;
    CdsEmpresaCOMPEND_EMP: TStringField;
    CdsEmpresaNOMEFAN_EMP: TStringField;
    CdsEmpresaRAZAOSOC_EMP: TStringField;
    CdsEmpresaCNPJ_EMP: TStringField;
    CdsEmpresaINSCEST_EMP: TStringField;
    CdsEmpresaFONE_EMP: TStringField;
    CdsEmpresaSITE_EMP: TStringField;
    CdsEmpresaFAX_EMP: TStringField;
    CdsEmpresaEMAIL_EMP: TStringField;
    CdsEmpresaSTATUS_EMP: TStringField;
    Label1: TLabel;
    DSempresa: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBcompend: TRzDBEdit;
    DBnome: TRzDBEdit;
    DBrazaoSoc: TRzDBEdit;
    DBsite: TRzDBEdit;
    DBemail: TRzDBEdit;
    DBcnpj: TRzDBEdit;
    DBinsc: TRzDBEdit;
    DBfax: TRzDBEdit;
    DBfone: TRzDBEdit;
    procedure BtNovoClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

uses UDM, UBuscaEmp, UStatusEmp;

{$R *.dfm}

procedure TFrmEmpresa.BtNovoClick(Sender: TObject);
begin
  Try
     CdsEmpresa.Active := False ;
     SqlEmpresa.Close;

     SqlEmpresa.ParamByName('PAREMP').AsInteger := 0 ;

     SqlEmpresa.Open;
     CdsEmpresa.Open;

     CdsEmpresa.Append;

     //CdsEmpresa.FieldByName('DATACAD_CLI').AsDateTime := DATE;  //OU ASSIM   CDSCliDATACAD_CLI.AsDateTime := DATE;
     CdsEmpresaSTATUS_EMP.AsString := 'A';

     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(EMPRESA.IDEMP) FROM EMPRESA ';
     DM.SQLAux.Open;
     CdsEmpresaIDEMP.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text :=  IntToStr(CdsEmpresaIDEMP.AsInteger);


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão!');
   exit;
  End;

  
  inherited;
  FocusControl(DBcompend);

end;

procedure TFrmEmpresa.BtCancelarClick(Sender: TObject);
begin
  CdsEmpresa.Cancel;
  CdsEmpresa.Close;
  SqlEmpresa.Close;

  inherited;

end;

procedure TFrmEmpresa.BtGravarClick(Sender: TObject);
begin
  If (Trim(CdsEmpresaNOMEFAN_EMP.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBnome.SetFocus;
     Exit;
    End;

   If (Trim(CdsEmpresaRAZAOSOC_EMP.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBrazaoSoc.SetFocus;
     Exit;
    End;

    If (Trim(CdsEmpresaCNPJ_EMP.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBcnpj.SetFocus;
     Exit;
    End;

    If (Trim(CdsEmpresaINSCEST_EMP.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBinsc.SetFocus;
     Exit;
    End;

  Try
      CdsEmpresa.Post;
      CdsEmpresa.ApplyUpdates(0);
  Except
      ShowMessage('Erro de Gravação');
      DBcompend.SetFocus;
      exit;
  End;


  inherited;

  CdsEmpresa.Close;
  SqlEmpresa.Close;

end;

procedure TFrmEmpresa.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //Testando se foi digitado Enter
  If ( Key = VK_Return ) Then
   Begin

      If ( Trim(BuscaRapida.Text) = '' ) Then
        Begin
           BtNovo.Click;
        End
      Else
        Begin
           DM.SqlAux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText := ' SELECT' +
                                    ' EMPRESA.IDEMP, '+
                                    ' EMPRESA.STATUS_EMP '+
                                    ' FROM EMPRESA '+
                                    ' WHERE EMPRESA.IDEMP = :PARBUSEMP' ;
           DM.SQLAux.ParamByName('PARBUSEMP').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SQLAux.FieldByName('IDEMP').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_EMP').AsString = 'A') Then
                  Begin
                      CdsEmpresa.Close;
                      SqlEmpresa.Close;
                      SqlEmpresa.ParamByName('PAREMP').AsInteger := StrToInt(BuscaRapida.Text);
                      SqlEmpresa.Open;
                      CdsEmpresa.Open;

                      CdsEmpresa.Edit;

                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Empresa Desativada!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;
             End
           Else
             Begin
                ShowMessage('Empresa Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;
        End;
   End;

end;

procedure TFrmEmpresa.BtBuscarClick(Sender: TObject);
begin
  SqlEmpresa.ParamByName('PAREMP').AsInteger := 0;

  Application.CreateForm(TFrmBuscaEmp,FrmBuscaEmp);

  FrmBuscaEmp.QuemChamou := 'EMPRESA';

  FrmBuscaEmp.ShowModal;
  FrmBuscaEmp.Free;

  If (SqlEmpresa.ParamByName('PAREMP').AsInteger <> 0) then
    Begin
      SqlEmpresa.Open;
      CdsEmpresa.Open;

      CdsEmpresa.Edit;
      BuscaRapida.Text := IntToStr(CdsEmpresaIDEMP.ASINTEGER);
      inherited;
    End;
end;

procedure TFrmEmpresa.BtStatusClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmStatusEmp,FrmStatusEmp);
  FrmStatusEmp.ShowModal;
  FrmStatusEmp.FREE;
end;

end.
