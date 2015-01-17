unit U_Horarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, RzDBEdit, RzDBBnEd, Grids,
  DBGrids, RzDBGrid, RzLabel, RzPanel, FMTBcd, DB, SqlExpr, DBClient,
  Provider, RzButton, RzBtnEdt;

type
  TFrm_Horarios = class(TForm)
    PnlTopo: TRzPanel;
    PnlDados: TRzPanel;
    RzLabel4: TRzLabel;
    SQLHORARIOPRONTO: TSQLDataSet;
    DSHORARIOPRONTO: TDataSource;
    PROVIDERHORARIOPRONTO: TDataSetProvider;
    CDSHORARIOPRONTO: TClientDataSet;
    RZBTvizualizar: TRzBitBtn;
    SQLHORARIOPRONTOIDHOR: TIntegerField;
    SQLHORARIOPRONTOIDRELACAO: TIntegerField;
    SQLHORARIOPRONTODIA_HOR: TIntegerField;
    SQLHORARIOPRONTOAULA_HOR: TIntegerField;
    SQLHORARIOPRONTOSTATUS_HOR: TStringField;
    SQLHORARIOPRONTOTURNO_HOR: TStringField;
    SQLHORARIOPRONTOIDTURMA: TIntegerField;
    SQLHORARIOPRONTOIDFUNC: TIntegerField;
    SQLHORARIOPRONTOIDDISCUR: TIntegerField;
    SQLHORARIOPRONTOIDDISC: TIntegerField;
    SQLHORARIOPRONTODESCR_DISC: TStringField;
    SQLHORARIOPRONTONOME_FUNC: TStringField;
    CDSHORARIOPRONTOIDHOR: TIntegerField;
    CDSHORARIOPRONTOIDRELACAO: TIntegerField;
    CDSHORARIOPRONTODIA_HOR: TIntegerField;
    CDSHORARIOPRONTOAULA_HOR: TIntegerField;
    CDSHORARIOPRONTOSTATUS_HOR: TStringField;
    CDSHORARIOPRONTOTURNO_HOR: TStringField;
    CDSHORARIOPRONTOIDTURMA: TIntegerField;
    CDSHORARIOPRONTOIDFUNC: TIntegerField;
    CDSHORARIOPRONTOIDDISCUR: TIntegerField;
    CDSHORARIOPRONTOIDDISC: TIntegerField;
    CDSHORARIOPRONTODESCR_DISC: TStringField;
    CDSHORARIOPRONTONOME_FUNC: TStringField;
    CDSHORARIOPRONTOVALORH: TStringField;
    DBIDTURMA: TRzDBButtonEdit;
    PnlHorarios: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBGMatSeg: TRzDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGMatQui: TRzDBGrid;
    DBGMatSex: TRzDBGrid;
    DBGMatQua: TRzDBGrid;
    DBGMatTer: TRzDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBGVespSeg: TRzDBGrid;
    DBGVespTer: TRzDBGrid;
    DBGVespQua: TRzDBGrid;
    DBGVespQui: TRzDBGrid;
    DBGVespSex: TRzDBGrid;
    Panel4: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBGNotSeg: TRzDBGrid;
    DBGNotTer: TRzDBGrid;
    DBGNotQua: TRzDBGrid;
    DBGNotQui: TRzDBGrid;
    DBGNotSex: TRzDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    procedure RZBTvizualizarClick(Sender: TObject);
    procedure DBIDTURMAButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Horarios: TFrm_Horarios;

implementation

uses UDM, U_BusTur;

{$R *.dfm}

procedure TFrm_Horarios.RZBTvizualizarClick(Sender: TObject);
VAR
i, c : STRING;

begin
     if(DBIDTURMA.Text = '')then
     begin
      ShowMessage('Informe uma turma...');
     end ;

     PnlHorarios.Enabled := True;
     SQLHORARIOPRONTO.Open;
     CDSHORARIOPRONTO.Open;
     CDSHORARIOPRONTO.Edit;

end;

procedure TFrm_Horarios.DBIDTURMAButtonClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_BUSTUR,FRM_BUSTUR);
    FRM_BUSTUR.QuemChamou := 'HOR';
    FRM_BUSTUR.ShowModal;
    FRM_BUSTUR.Free;

    IF (Frm_Horarios.SQLHORARIOPRONTO.ParamByName('PARTURMA').AsInteger <> 0) THEN
      BEGIN

        Frm_Horarios.SQLHORARIOPRONTO.Open;
        Frm_Horarios.CDSHORARIOPRONTO.Open;

        Frm_Horarios.CDSHORARIOPRONTO.Edit;

        inherited;
      END;
end;

end.
