unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr,
  RzDBEdit;

type
  TFrmCidades = class(TFRM_Cadastros)
    SqlCid: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsCid: TClientDataSet;
    SqlCidIDCID: TIntegerField;
    SqlCidNOME_CID: TStringField;
    SqlCidSTATUS_CID: TStringField;
    SqlCidUF_CID: TStringField;
    CdsCidIDCID: TIntegerField;
    CdsCidNOME_CID: TStringField;
    CdsCidSTATUS_CID: TStringField;
    CdsCidUF_CID: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DSCid: TDataSource;
    DBENome: TRzDBEdit;
    DBEUF: TRzDBEdit;
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
  FrmCidades: TFrmCidades;

implementation

uses UDM, UBuscaCid, UStatusCid;

{$R *.dfm}

procedure TFrmCidades.BtNovoClick(Sender: TObject);
begin
  Try
     CdsCid.Active := False ;
     SqlCid.Close;

     SqlCid.ParamByName('PARCID').AsInteger := 0 ;

     SqlCid.Open;
     CdsCid.Open;

     CdsCid.Append;

     //CdsEmpresa.FieldByName('DATACAD_CLI').AsDateTime := DATE;  //OU ASSIM   CDSCliDATACAD_CLI.AsDateTime := DATE;
     CdsCidSTATUS_CID.AsString := 'A';

     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(CIDADES.IDCID) FROM CIDADES ';
     DM.SQLAux.Open;
     CdsCidIDCID.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text :=  IntToStr(CdsCidIDCID.AsInteger);


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão!');
   exit;
  End;

  
  inherited;
  FocusControl(DBENome);

end;

procedure TFrmCidades.BtCancelarClick(Sender: TObject);
begin
  CdsCid.Cancel;
  CdsCid.Close;
  SqlCid.Close;
  inherited;

end;

procedure TFrmCidades.BtGravarClick(Sender: TObject);
begin
  If (Trim(CdsCidNOME_CID.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBENome.SetFocus;
     Exit;
    End;

    If (Trim(CdsCidUF_CID.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBEUF.SetFocus;
     Exit;
    End;

  Try
      CdsCid.Post;
      CdsCid.ApplyUpdates(0);
  Except
      ShowMessage('Erro de Gravação');
      DBENome.SetFocus;
      exit;
  End;


  inherited;

  CdsCid.Close;
  SqlCid.Close;

end;

procedure TFrmCidades.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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
                                    ' CIDADES.IDCID, '+
                                    ' CIDADES.STATUS_CID '+
                                    ' FROM CIDADES '+
                                    ' WHERE CIDADES.IDCID = :PARBUS' ;
           DM.SQLAux.ParamByName('PARBUS').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SqlAux.Open;

           If (DM.SQLAux.FieldByName('IDCID').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_CID').AsString = 'A') Then
                  Begin
                      CdsCid.Close;
                      SqlCid.Close;
                      SqlCid.ParamByName('PARCID').AsInteger := StrToInt(BuscaRapida.Text);
                      SqlCid.Open;
                      CdsCid.Open;

                      CdsCid.Edit;

                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Cidade Desativada!');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;
             End
           Else
             Begin
                ShowMessage('Cidade Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;
        End;
   End;

end;

procedure TFrmCidades.BtBuscarClick(Sender: TObject);
begin
  SqlCid.ParamByName('PARCID').AsInteger := 0;

  Application.CreateForm(TFrmBuscaCidades,FrmBuscaCidades);

  FrmBuscaCidades.QuemChamou := 'CIDADES';

  FrmBuscaCidades.ShowModal;
  FrmBuscaCidades.Free;

  If (SqlCid.ParamByName('PARCID').AsInteger <> 0) then
    Begin
      SqlCid.Open;
      CdsCid.Open;

      CdsCid.Edit;
      BuscaRapida.Text := IntToStr(CdsCidIDCID.ASINTEGER);
      inherited;
    End;
end;

procedure TFrmCidades.BtStatusClick(Sender: TObject);
begin
   Application.CreateForm(TFrmStatusCid, FrmStatusCid);
   FrmStatusCid.ShowModal;
   FrmStatusCid.free;
end;

end.
