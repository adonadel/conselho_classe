unit UBairros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, FMTBcd, DBClient, Provider, DB, SqlExpr, StdCtrls,
  Mask, RzEdit, RzBtnEdt, RzTabs, RzButton, RzStatus, RzPanel, ExtCtrls,
  RzDBEdit;

type
  TFrmBairros = class(TFRM_Cadastros)
    SqlBai: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsBai: TClientDataSet;
    SqlBaiIDBAI: TIntegerField;
    SqlBaiNOME_BAI: TStringField;
    SqlBaiSTATUS_BAI: TStringField;
    CdsBaiIDBAI: TIntegerField;
    CdsBaiNOME_BAI: TStringField;
    CdsBaiSTATUS_BAI: TStringField;
    DSBai: TDataSource;
    DBENomeBairr: TRzDBEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  FrmBairros: TFrmBairros;

implementation

uses UDM, UBuscaBair, UStatusBair;

{$R *.dfm}

procedure TFrmBairros.BtNovoClick(Sender: TObject);
begin
  Try
     CdsBai.Active := False ;
     SqlBai.Close;

     SqlBai.ParamByName('PARBAI').AsInteger := 0 ;

     SqlBai.Open;
     CdsBai.Open;

     CdsBai.Append;

     //CdsEmpresa.FieldByName('DATACAD_CLI').AsDateTime := DATE;  //OU ASSIM   CDSCliDATACAD_CLI.AsDateTime := DATE;
     CdsBaiSTATUS_BAI.AsString := 'A';

     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(BAIRROS.IDBAI) FROM BAIRROS ';
     DM.SQLAux.Open;
     CdsBaiIDBAI.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text :=  IntToStr(CdsBaiIDBAI.AsInteger);


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão!');
   exit;
  End;

  
  inherited;
  FocusControl(DBENomeBairr);

end;

procedure TFrmBairros.BtCancelarClick(Sender: TObject);
begin
  CdsBai.Cancel;
  CdsBai.Close;
  SqlBai.Close;
  
  inherited;

end;

procedure TFrmBairros.BtGravarClick(Sender: TObject);
begin
  If (Trim(CdsBaiNOME_BAI.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBENomeBairr.SetFocus;
     Exit;
    End;

  Try
      CdsBai.Post;
      CdsBai.ApplyUpdates(0);
  Except
      ShowMessage('Erro de Gravação');
      DBENomeBairr.SetFocus;
      exit;
  End;


  inherited;

  CdsBai.Close;
  SqlBai.Close;

end;

procedure TFrmBairros.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

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
                                    ' BAIRROS.IDBAI, '+
                                    ' BAIRROS.STATUS_BAI '+
                                    ' FROM BAIRROS '+
                                    ' WHERE BAIRROS.IDBAI = :PARBUSBAI' ;
           DM.SQLAux.ParamByName('PARBUSBAI').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SQLAux.FieldByName('IDBAI').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_BAI').AsString = 'A') Then
                  Begin
                      CdsBai.Close;
                      SqlBai.Close;
                      SqlBai.ParamByName('PARBAI').AsInteger := StrToInt(BuscaRapida.Text);
                      SqlBai.Open;
                      CdsBai.Open;

                      CdsBai.Edit;

                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Bairro Desativada!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;
             End
           Else
             Begin
                ShowMessage('Bairro Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;
        End;
   End;

end;

procedure TFrmBairros.BtBuscarClick(Sender: TObject);
begin
  SqlBai.ParamByName('PARBAI').AsInteger := 0;

  Application.CreateForm(TFrmBuscaBair,FrmBuscaBair);

  FrmBuscaBair.QuemChamou := 'BAIRROS';

  FrmBuscaBair.ShowModal;
  FrmBuscaBair.Free;

  If (SqlBai.ParamByName('PARBAI').AsInteger <> 0) then
    Begin
      SqlBai.Open;
      CdsBai.Open;

      CdsBai.Edit;
      BuscaRapida.Text := IntToStr(CdsBaiIDBAI.ASINTEGER);
      inherited;
    End;
end;
procedure TFrmBairros.BtStatusClick(Sender: TObject);
begin
   Application.CreateForm(TFrmStatusBair, FrmStatusBair);
   FrmStatusBair.ShowModal;
   FrmStatusBair.free;
end;

end.
