unit UCadcargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Cadastros, StdCtrls, Mask, RzEdit, RzBtnEdt, RzTabs, RzButton,
  RzStatus, RzPanel, ExtCtrls, FMTBcd, DB, SqlExpr, RzLabel, RzDBEdit,
  DBClient, Provider, RzDBBnEd;

type
  TFRM_Cadcargos = class(TFRM_Cadastros)
    SQLCargos: TSQLDataSet;
    Provider: TDataSetProvider;
    CDSCargos: TClientDataSet;
    DSCargos: TDataSource;
    SQLCargosIDCAR: TIntegerField;
    SQLCargosDESC_CAR: TStringField;
    CDSCargosIDCAR: TIntegerField;
    CDSCargosDESC_CAR: TStringField;
    DBdescricargos: TRzDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    SQLCargosSTATUS_CAR: TStringField;
    CDSCargosSTATUS_CAR: TStringField;
    procedure BtGravarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtBuscarClick(Sender: TObject);
    procedure BtStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Cadcargos: TFRM_Cadcargos;

implementation

uses UDM, UBusCargos, UstaCargos;

{$R *.dfm}

procedure TFRM_Cadcargos.BtGravarClick(Sender: TObject);
begin


  If (Trim(CDSCargosDESC_CAR.AsString) = '') Then
    Begin
     ShowMessage('Atributo Obrigatório....');
     DBdescricargos.SetFocus;
     Exit;
    End;




   IF (CDSCargos.State = DSINSERT) THEN
     BEGIN
        Try

            DM.SQLAux.Close;
            DM.SQLAux.CommandText := '';
            DM.SQLAux.CommandText := ' SELECT MAX(CARGOS.IDCAR) FROM CARGOS';
            DM.SQLAux.Open;
            CDSCargosIDCAR.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
            CDSCargosSTATUS_CAR.AsString := 'A';
            BuscaRapida.Text              :=  IntToStr(CDSCargosIDCAR.AsInteger);

            CDSCargos.Post;
            CDSCargos.ApplyUpdates(0);
        Except
            Showmessage('Erro de Gravação');
            DBdescricargos.SetFocus;
            exit;
        End;
     END
   ELSE
     BEGIN
            CDSCargos.Post;
            CDSCargos.ApplyUpdates(0);
     END;

  inherited;

  CDSCargos.Close;
  SQLCargos.Close;
end;

procedure TFRM_Cadcargos.BtNovoClick(Sender: TObject);
begin


  Try

     CDSCargos.Active := False ;
     SQLCargos.Close;

     SQLCargos.ParamByName('PARCAR').AsInteger := 0 ;

     SQLCargos.Open;
     CDSCargos.Open;
     CDSCargos.Append;

     CDSCargosSTATUS_CAR.AsString := 'A';

     DM.SQLAux.Close;
     DM.SQLAux.CommandText := '';
     DM.SQLAux.CommandText := ' SELECT MAX(CARGOS.IDCAR) FROM CARGOS';
     DM.SQLAux.Open;
     CDSCargosIDCAR.AsInteger :=  DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;
     BuscaRapida.Text              :=  IntToStr(CDSCargosIDCAR.AsInteger);


  Except
   ShowMessage('Erro de Inclusão, ' +#13+#10+ 'Verifique a Conexão....');
   exit;
  End;

  
  inherited;
  FocusControl(DBdescricargos);

end;

procedure TFRM_Cadcargos.BuscaRapidaKeyDown(Sender: TObject; var Key: Word;
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

           DM.SQLAux.Close;
           DM.SQLAux.CommandText := '';
           DM.SQLAux.CommandText := ' SELECT' +
                                    ' CARGOS.IDCAR, '+
                                    ' CARGOS.STATUS_CAR '+
                                    ' FROM CARGOS '+
                                    ' WHERE CARGOS.IDCAR = :PARBUSCAR' ;
           DM.SQLAux.ParamByName('PARBUSCAR').AsInteger := StrToInt(BuscaRapida.Text);
           DM.SQLAux.Open;

           If (DM.SQLAux.FieldByName('IDCAR').AsInteger > 0) Then
             Begin
                If (DM.SQLAux.FieldByName('STATUS_CAR').AsString = 'A') Then
                  Begin

                      CDSCargos.Close;
                      SQLCargos.Close;
                      SQLCargos.ParamByName('PARCAR').AsInteger := StrToInt(BuscaRapida.Text);
                      SQLCargos.Open;
                      CDSCargos.Open;

                      CDSCargos.Edit;

                      AtivaInclui;
                  End
                Else
                  Begin
                      ShowMessage('Cargo Desativado !');
                      BuscaRapida.Clear;
                      BuscaRapida.SetFocus;
                  End;//O cliente está desativado
             End //achou o cliente
           Else
             Begin
                ShowMessage('Cargo Inexistente !');
                BuscaRapida.Clear;
                BuscaRapida.SetFocus;
             End;//end do else, não tinha cliente com o código digitado
        End;//end do else do espaço em branco
   End; //end do if key
end;

procedure TFRM_Cadcargos.BtCancelarClick(Sender: TObject);
begin
  inherited;
  CDSCargos.Cancel;
  CDSCargos.Close;
  SQLCargos.Close;
end;

procedure TFRM_Cadcargos.BtBuscarClick(Sender: TObject);
begin

  SQLCargos.ParamByName('PARCAR').AsInteger := 0;


  Application.CreateForm(TFrm_BusCargos,Frm_BusCargos);
  //Setando a variavel quemchamou
  Frm_BusCargos.QuemChamou := 'CARGOS';

  Frm_BusCargos.ShowModal;
  Frm_BusCargos.Free;

  IF (SQLCargos.ParamByName('PARCAR').AsInteger <> 0) THEN
    BEGIN

      SQLCargos.Open;
      CDSCargos.Open;

      CDSCargos.Edit;
      BuscaRapida.Text := IntToStr(CDSCargosIDCAR.ASINTEGER);
      AtivaInclui;
      inherited;      
    END;
end;

procedure TFRM_Cadcargos.BtStatusClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrm_StaCargos,Frm_StaCargos);
  Frm_StaCargos.ShowModal;
  Frm_StaCargos.Free;
end;

end.
