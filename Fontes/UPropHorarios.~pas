unit UPropHorarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, RzButton, StdCtrls, Mask, RzEdit, RzLabel, Grids,
  DBGrids, RzDBGrid, ExtCtrls, RzPanel, RzGrids, FMTBcd, SqlExpr, Provider,
  DB, DBClient, RzDBEdit, Buttons;

type
  TFrm_ProHora = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    DBGProfs: TRzDBGrid;
    Pnlprophor: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzPanel5: TRzPanel;
    DBano: TRzEdit;
    DBsemestre: TRzEdit;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    BtnAtualizar: TRzButton;
    NomeProf: TRzEdit;
    RzLabel6: TRzLabel;
    RzPanel6: TRzPanel;
    DbImgPro: TDBImage;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DSFunc: TDataSource;
    CDSFunc: TClientDataSet;
    Provider: TDataSetProvider;
    SQLFunc: TSQLDataSet;
    CDSFuncIDFUNC: TIntegerField;
    CDSFuncNOME_FUNC: TStringField;
    CDSFuncDATANASC_FUNC: TDateField;
    CDSFuncCPF_FUNC: TStringField;
    CDSFuncRG_FUNC: TStringField;
    CDSFuncNACIO_FUNC: TStringField;
    CDSFuncNATUR_FUNC: TStringField;
    CDSFuncSEXO_FUNC: TStringField;
    CDSFuncEMAIL_FUNC: TStringField;
    CDSFuncOBS_FUNC: TStringField;
    CDSFuncDATACAD_FUNC: TDateField;
    CDSFuncSTATUS_FUNC: TStringField;
    CDSFuncIDCAR: TIntegerField;
    CDSFuncDESC_CAR: TStringField;
    SQLFuncIDFUNC: TIntegerField;
    SQLFuncNOME_FUNC: TStringField;
    SQLFuncDATANASC_FUNC: TDateField;
    SQLFuncCPF_FUNC: TStringField;
    SQLFuncRG_FUNC: TStringField;
    SQLFuncNACIO_FUNC: TStringField;
    SQLFuncNATUR_FUNC: TStringField;
    SQLFuncSEXO_FUNC: TStringField;
    SQLFuncEMAIL_FUNC: TStringField;
    SQLFuncOBS_FUNC: TStringField;
    SQLFuncDATACAD_FUNC: TDateField;
    SQLFuncSTATUS_FUNC: TStringField;
    SQLFuncIDCAR: TIntegerField;
    SQLFuncDESC_CAR: TStringField;
    Dbemail: TRzDBEdit;
    DBFone: TRzDBEdit;
    dbcpf: TRzDBEdit;
    SQLFuncFONERES_FUNC: TStringField;
    SQLFuncCELULAR_FUNC: TStringField;
    CDSFuncFONERES_FUNC: TStringField;
    CDSFuncCELULAR_FUNC: TStringField;
    SQLFuncFOTO_FUNC: TBlobField;
    CDSFuncFOTO_FUNC: TBlobField;
    Bevel3: TBevel;
    SQLMatSeg: TSQLDataSet;
    ProviderMatSeg: TDataSetProvider;
    CDSMatSeg: TClientDataSet;
    DSMatSeg: TDataSource;
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
    DBGVespSeg: TRzDBGrid;
    DBGVespTer: TRzDBGrid;
    DBGVespQua: TRzDBGrid;
    DBGVespQui: TRzDBGrid;
    DBGVespSex: TRzDBGrid;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
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
    SQLMatTer: TSQLDataSet;
    ProviderMatTer: TDataSetProvider;
    CDSMatTer: TClientDataSet;
    DSMatTer: TDataSource;
    SQLMatTerIDPROPHOR: TIntegerField;
    SQLMatTerIDFUNC: TIntegerField;
    SQLMatTerDIA_PROPHOR: TIntegerField;
    SQLMatTerAULA_PROPHOR: TIntegerField;
    SQLMatTerSTATUS_PROPHOR: TStringField;
    SQLMatTerTURNO_PROPHOR: TStringField;
    SQLMatTerANO_PROPHOR: TStringField;
    SQLMatTerSEMESTRE_PROPHOR: TStringField;
    SQLMatTerVALOR: TStringField;
    CDSMatTerIDPROPHOR: TIntegerField;
    CDSMatTerIDFUNC: TIntegerField;
    CDSMatTerDIA_PROPHOR: TIntegerField;
    CDSMatTerAULA_PROPHOR: TIntegerField;
    CDSMatTerSTATUS_PROPHOR: TStringField;
    CDSMatTerTURNO_PROPHOR: TStringField;
    CDSMatTerANO_PROPHOR: TStringField;
    CDSMatTerSEMESTRE_PROPHOR: TStringField;
    CDSMatTerVALOR: TStringField;
    SQLMatQua: TSQLDataSet;
    ProviderMatQua: TDataSetProvider;
    DSMatQua: TDataSource;
    CDSMatQua: TClientDataSet;
    SQLMatQuaIDPROPHOR: TIntegerField;
    SQLMatQuaIDFUNC: TIntegerField;
    SQLMatQuaDIA_PROPHOR: TIntegerField;
    SQLMatQuaAULA_PROPHOR: TIntegerField;
    SQLMatQuaSTATUS_PROPHOR: TStringField;
    SQLMatQuaTURNO_PROPHOR: TStringField;
    SQLMatQuaANO_PROPHOR: TStringField;
    SQLMatQuaSEMESTRE_PROPHOR: TStringField;
    SQLMatQuaVALOR: TStringField;
    CDSMatQuaIDPROPHOR: TIntegerField;
    CDSMatQuaIDFUNC: TIntegerField;
    CDSMatQuaDIA_PROPHOR: TIntegerField;
    CDSMatQuaAULA_PROPHOR: TIntegerField;
    CDSMatQuaSTATUS_PROPHOR: TStringField;
    CDSMatQuaTURNO_PROPHOR: TStringField;
    CDSMatQuaANO_PROPHOR: TStringField;
    CDSMatQuaSEMESTRE_PROPHOR: TStringField;
    CDSMatQuaVALOR: TStringField;
    SQLMatQui: TSQLDataSet;
    ProviderMatQui: TDataSetProvider;
    DSMatQui: TDataSource;
    CDSMatQui: TClientDataSet;
    SQLMatQuiIDPROPHOR: TIntegerField;
    SQLMatQuiIDFUNC: TIntegerField;
    SQLMatQuiDIA_PROPHOR: TIntegerField;
    SQLMatQuiAULA_PROPHOR: TIntegerField;
    SQLMatQuiSTATUS_PROPHOR: TStringField;
    SQLMatQuiTURNO_PROPHOR: TStringField;
    SQLMatQuiANO_PROPHOR: TStringField;
    SQLMatQuiSEMESTRE_PROPHOR: TStringField;
    SQLMatQuiVALOR: TStringField;
    CDSMatQuiIDPROPHOR: TIntegerField;
    CDSMatQuiIDFUNC: TIntegerField;
    CDSMatQuiDIA_PROPHOR: TIntegerField;
    CDSMatQuiAULA_PROPHOR: TIntegerField;
    CDSMatQuiSTATUS_PROPHOR: TStringField;
    CDSMatQuiTURNO_PROPHOR: TStringField;
    CDSMatQuiANO_PROPHOR: TStringField;
    CDSMatQuiSEMESTRE_PROPHOR: TStringField;
    CDSMatQuiVALOR: TStringField;
    ProviderMatSex: TDataSetProvider;
    DSMatSex: TDataSource;
    CDSMatSex: TClientDataSet;
    SQLMatSex: TSQLDataSet;
    SQLMatSexIDPROPHOR: TIntegerField;
    SQLMatSexIDFUNC: TIntegerField;
    SQLMatSexDIA_PROPHOR: TIntegerField;
    SQLMatSexAULA_PROPHOR: TIntegerField;
    SQLMatSexSTATUS_PROPHOR: TStringField;
    SQLMatSexTURNO_PROPHOR: TStringField;
    SQLMatSexANO_PROPHOR: TStringField;
    SQLMatSexSEMESTRE_PROPHOR: TStringField;
    SQLMatSexVALOR: TStringField;
    CDSMatSexIDPROPHOR: TIntegerField;
    CDSMatSexIDFUNC: TIntegerField;
    CDSMatSexDIA_PROPHOR: TIntegerField;
    CDSMatSexAULA_PROPHOR: TIntegerField;
    CDSMatSexSTATUS_PROPHOR: TStringField;
    CDSMatSexTURNO_PROPHOR: TStringField;
    CDSMatSexANO_PROPHOR: TStringField;
    CDSMatSexSEMESTRE_PROPHOR: TStringField;
    CDSMatSexVALOR: TStringField;
    CDSVesSeg: TClientDataSet;
    DSVesSeg: TDataSource;
    ProviderVesSeg: TDataSetProvider;
    SQLVesSeg: TSQLDataSet;
    SQLVesSegIDPROPHOR: TIntegerField;
    SQLVesSegIDFUNC: TIntegerField;
    SQLVesSegDIA_PROPHOR: TIntegerField;
    SQLVesSegAULA_PROPHOR: TIntegerField;
    SQLVesSegSTATUS_PROPHOR: TStringField;
    SQLVesSegTURNO_PROPHOR: TStringField;
    SQLVesSegANO_PROPHOR: TStringField;
    SQLVesSegSEMESTRE_PROPHOR: TStringField;
    SQLVesSegVALOR: TStringField;
    CDSVesSegIDPROPHOR: TIntegerField;
    CDSVesSegDIA_PROPHOR: TIntegerField;
    CDSVesSegAULA_PROPHOR: TIntegerField;
    CDSVesSegSTATUS_PROPHOR: TStringField;
    CDSVesSegTURNO_PROPHOR: TStringField;
    CDSVesSegANO_PROPHOR: TStringField;
    CDSVesSegSEMESTRE_PROPHOR: TStringField;
    CDSVesSegIDFUNC: TIntegerField;
    CDSVesSegVALOR: TStringField;
    SQLVesTer: TSQLDataSet;
    ProviderVesTer: TDataSetProvider;
    DSVesTer: TDataSource;
    CDSVesTer: TClientDataSet;
    SQLVesTerIDPROPHOR: TIntegerField;
    SQLVesTerIDFUNC: TIntegerField;
    SQLVesTerDIA_PROPHOR: TIntegerField;
    SQLVesTerAULA_PROPHOR: TIntegerField;
    SQLVesTerSTATUS_PROPHOR: TStringField;
    SQLVesTerTURNO_PROPHOR: TStringField;
    SQLVesTerANO_PROPHOR: TStringField;
    SQLVesTerSEMESTRE_PROPHOR: TStringField;
    SQLVesTerVALOR: TStringField;
    CDSVesTerIDPROPHOR: TIntegerField;
    CDSVesTerIDFUNC: TIntegerField;
    CDSVesTerDIA_PROPHOR: TIntegerField;
    CDSVesTerAULA_PROPHOR: TIntegerField;
    CDSVesTerSTATUS_PROPHOR: TStringField;
    CDSVesTerTURNO_PROPHOR: TStringField;
    CDSVesTerANO_PROPHOR: TStringField;
    CDSVesTerSEMESTRE_PROPHOR: TStringField;
    CDSVesTerVALOR: TStringField;
    SQLVesQua: TSQLDataSet;
    ProviderVesQua: TDataSetProvider;
    DSVesQua: TDataSource;
    CDSVesQua: TClientDataSet;
    SQLVesQuaIDPROPHOR: TIntegerField;
    SQLVesQuaIDFUNC: TIntegerField;
    SQLVesQuaDIA_PROPHOR: TIntegerField;
    SQLVesQuaAULA_PROPHOR: TIntegerField;
    SQLVesQuaSTATUS_PROPHOR: TStringField;
    SQLVesQuaTURNO_PROPHOR: TStringField;
    SQLVesQuaANO_PROPHOR: TStringField;
    SQLVesQuaSEMESTRE_PROPHOR: TStringField;
    SQLVesQuaVALOR: TStringField;
    CDSVesQuaIDPROPHOR: TIntegerField;
    CDSVesQuaIDFUNC: TIntegerField;
    CDSVesQuaDIA_PROPHOR: TIntegerField;
    CDSVesQuaAULA_PROPHOR: TIntegerField;
    CDSVesQuaSTATUS_PROPHOR: TStringField;
    CDSVesQuaTURNO_PROPHOR: TStringField;
    CDSVesQuaANO_PROPHOR: TStringField;
    CDSVesQuaSEMESTRE_PROPHOR: TStringField;
    CDSVesQuaVALOR: TStringField;
    SQLVesQui: TSQLDataSet;
    ProviderVesQui: TDataSetProvider;
    DSVesQui: TDataSource;
    CDSVesQui: TClientDataSet;
    SQLVesQuiIDPROPHOR: TIntegerField;
    SQLVesQuiIDFUNC: TIntegerField;
    SQLVesQuiDIA_PROPHOR: TIntegerField;
    SQLVesQuiAULA_PROPHOR: TIntegerField;
    SQLVesQuiSTATUS_PROPHOR: TStringField;
    SQLVesQuiTURNO_PROPHOR: TStringField;
    SQLVesQuiANO_PROPHOR: TStringField;
    SQLVesQuiSEMESTRE_PROPHOR: TStringField;
    SQLVesQuiVALOR: TStringField;
    CDSVesQuiIDPROPHOR: TIntegerField;
    CDSVesQuiIDFUNC: TIntegerField;
    CDSVesQuiDIA_PROPHOR: TIntegerField;
    CDSVesQuiAULA_PROPHOR: TIntegerField;
    CDSVesQuiSTATUS_PROPHOR: TStringField;
    CDSVesQuiTURNO_PROPHOR: TStringField;
    CDSVesQuiANO_PROPHOR: TStringField;
    CDSVesQuiSEMESTRE_PROPHOR: TStringField;
    CDSVesQuiVALOR: TStringField;
    SQLVesSex: TSQLDataSet;
    ProviderVesSex: TDataSetProvider;
    DSVesSex: TDataSource;
    CDSVesSex: TClientDataSet;
    SQLVesSexIDPROPHOR: TIntegerField;
    SQLVesSexIDFUNC: TIntegerField;
    SQLVesSexDIA_PROPHOR: TIntegerField;
    SQLVesSexAULA_PROPHOR: TIntegerField;
    SQLVesSexSTATUS_PROPHOR: TStringField;
    SQLVesSexTURNO_PROPHOR: TStringField;
    SQLVesSexANO_PROPHOR: TStringField;
    SQLVesSexSEMESTRE_PROPHOR: TStringField;
    SQLVesSexVALOR: TStringField;
    CDSVesSexIDPROPHOR: TIntegerField;
    CDSVesSexIDFUNC: TIntegerField;
    CDSVesSexDIA_PROPHOR: TIntegerField;
    CDSVesSexAULA_PROPHOR: TIntegerField;
    CDSVesSexSTATUS_PROPHOR: TStringField;
    CDSVesSexTURNO_PROPHOR: TStringField;
    CDSVesSexANO_PROPHOR: TStringField;
    CDSVesSexSEMESTRE_PROPHOR: TStringField;
    CDSVesSexVALOR: TStringField;
    SQLNotSeg: TSQLDataSet;
    ProviderNotSeg: TDataSetProvider;
    DSNotSeg: TDataSource;
    CDSNotSeg: TClientDataSet;
    SQLNotSegIDPROPHOR: TIntegerField;
    SQLNotSegIDFUNC: TIntegerField;
    SQLNotSegDIA_PROPHOR: TIntegerField;
    SQLNotSegAULA_PROPHOR: TIntegerField;
    SQLNotSegSTATUS_PROPHOR: TStringField;
    SQLNotSegTURNO_PROPHOR: TStringField;
    SQLNotSegANO_PROPHOR: TStringField;
    SQLNotSegSEMESTRE_PROPHOR: TStringField;
    SQLNotSegVALOR: TStringField;
    CDSNotSegIDPROPHOR: TIntegerField;
    CDSNotSegIDFUNC: TIntegerField;
    CDSNotSegDIA_PROPHOR: TIntegerField;
    CDSNotSegAULA_PROPHOR: TIntegerField;
    CDSNotSegSTATUS_PROPHOR: TStringField;
    CDSNotSegTURNO_PROPHOR: TStringField;
    CDSNotSegANO_PROPHOR: TStringField;
    CDSNotSegSEMESTRE_PROPHOR: TStringField;
    CDSNotSegVALOR: TStringField;
    SQLNotTer: TSQLDataSet;
    ProviderNotTer: TDataSetProvider;
    DSNotTer: TDataSource;
    CDSNotTer: TClientDataSet;
    SQLNotTerIDPROPHOR: TIntegerField;
    SQLNotTerIDFUNC: TIntegerField;
    SQLNotTerDIA_PROPHOR: TIntegerField;
    SQLNotTerAULA_PROPHOR: TIntegerField;
    SQLNotTerSTATUS_PROPHOR: TStringField;
    SQLNotTerTURNO_PROPHOR: TStringField;
    SQLNotTerANO_PROPHOR: TStringField;
    SQLNotTerSEMESTRE_PROPHOR: TStringField;
    SQLNotTerVALOR: TStringField;
    CDSNotTerIDPROPHOR: TIntegerField;
    CDSNotTerIDFUNC: TIntegerField;
    CDSNotTerDIA_PROPHOR: TIntegerField;
    CDSNotTerAULA_PROPHOR: TIntegerField;
    CDSNotTerSTATUS_PROPHOR: TStringField;
    CDSNotTerTURNO_PROPHOR: TStringField;
    CDSNotTerANO_PROPHOR: TStringField;
    CDSNotTerSEMESTRE_PROPHOR: TStringField;
    CDSNotTerVALOR: TStringField;
    SQLNotQua: TSQLDataSet;
    ProviderNotQua: TDataSetProvider;
    DSNotQua: TDataSource;
    CDSNotQua: TClientDataSet;
    SQLNotQuaIDPROPHOR: TIntegerField;
    SQLNotQuaIDFUNC: TIntegerField;
    SQLNotQuaDIA_PROPHOR: TIntegerField;
    SQLNotQuaAULA_PROPHOR: TIntegerField;
    SQLNotQuaSTATUS_PROPHOR: TStringField;
    SQLNotQuaTURNO_PROPHOR: TStringField;
    SQLNotQuaANO_PROPHOR: TStringField;
    SQLNotQuaSEMESTRE_PROPHOR: TStringField;
    SQLNotQuaVALOR: TStringField;
    CDSNotQuaIDPROPHOR: TIntegerField;
    CDSNotQuaIDFUNC: TIntegerField;
    CDSNotQuaDIA_PROPHOR: TIntegerField;
    CDSNotQuaAULA_PROPHOR: TIntegerField;
    CDSNotQuaSTATUS_PROPHOR: TStringField;
    CDSNotQuaTURNO_PROPHOR: TStringField;
    CDSNotQuaANO_PROPHOR: TStringField;
    CDSNotQuaSEMESTRE_PROPHOR: TStringField;
    CDSNotQuaVALOR: TStringField;
    SQLNotQui: TSQLDataSet;
    ProviderNotQui: TDataSetProvider;
    DSNotQui: TDataSource;
    CDSNotQui: TClientDataSet;
    SQLNotQuiIDPROPHOR: TIntegerField;
    SQLNotQuiIDFUNC: TIntegerField;
    SQLNotQuiDIA_PROPHOR: TIntegerField;
    SQLNotQuiAULA_PROPHOR: TIntegerField;
    SQLNotQuiSTATUS_PROPHOR: TStringField;
    SQLNotQuiTURNO_PROPHOR: TStringField;
    SQLNotQuiANO_PROPHOR: TStringField;
    SQLNotQuiSEMESTRE_PROPHOR: TStringField;
    SQLNotQuiVALOR: TStringField;
    CDSNotQuiIDPROPHOR: TIntegerField;
    CDSNotQuiIDFUNC: TIntegerField;
    CDSNotQuiDIA_PROPHOR: TIntegerField;
    CDSNotQuiAULA_PROPHOR: TIntegerField;
    CDSNotQuiSTATUS_PROPHOR: TStringField;
    CDSNotQuiTURNO_PROPHOR: TStringField;
    CDSNotQuiANO_PROPHOR: TStringField;
    CDSNotQuiSEMESTRE_PROPHOR: TStringField;
    CDSNotQuiVALOR: TStringField;
    SQLNotSex: TSQLDataSet;
    ProviderNotSex: TDataSetProvider;
    DSNotSex: TDataSource;
    CDSNotSex: TClientDataSet;
    SQLNotSexIDPROPHOR: TIntegerField;
    SQLNotSexIDFUNC: TIntegerField;
    SQLNotSexDIA_PROPHOR: TIntegerField;
    SQLNotSexAULA_PROPHOR: TIntegerField;
    SQLNotSexSTATUS_PROPHOR: TStringField;
    SQLNotSexTURNO_PROPHOR: TStringField;
    SQLNotSexANO_PROPHOR: TStringField;
    SQLNotSexSEMESTRE_PROPHOR: TStringField;
    SQLNotSexVALOR: TStringField;
    CDSNotSexIDPROPHOR: TIntegerField;
    CDSNotSexIDFUNC: TIntegerField;
    CDSNotSexDIA_PROPHOR: TIntegerField;
    CDSNotSexAULA_PROPHOR: TIntegerField;
    CDSNotSexSTATUS_PROPHOR: TStringField;
    CDSNotSexTURNO_PROPHOR: TStringField;
    CDSNotSexANO_PROPHOR: TStringField;
    CDSNotSexSEMESTRE_PROPHOR: TStringField;
    CDSNotSexVALOR: TStringField;
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
    SQLMatSegIDPROPHOR: TIntegerField;
    SQLMatSegIDFUNC: TIntegerField;
    SQLMatSegDIA_PROPHOR: TIntegerField;
    SQLMatSegAULA_PROPHOR: TIntegerField;
    SQLMatSegSTATUS_PROPHOR: TStringField;
    SQLMatSegTURNO_PROPHOR: TStringField;
    SQLMatSegANO_PROPHOR: TStringField;
    SQLMatSegSEMESTRE_PROPHOR: TStringField;
    SQLMatSegVALOR: TStringField;
    CDSMatSegIDPROPHOR: TIntegerField;
    CDSMatSegIDFUNC: TIntegerField;
    CDSMatSegDIA_PROPHOR: TIntegerField;
    CDSMatSegAULA_PROPHOR: TIntegerField;
    CDSMatSegSTATUS_PROPHOR: TStringField;
    CDSMatSegTURNO_PROPHOR: TStringField;
    CDSMatSegANO_PROPHOR: TStringField;
    CDSMatSegSEMESTRE_PROPHOR: TStringField;
    CDSMatSegVALOR: TStringField;
    SQLFuncSTATUS_RELCARFUN: TStringField;
    CDSFuncSTATUS_RELCARFUN: TStringField;
    procedure BtnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NomeProfChange(Sender: TObject);
    procedure DBGMatSegDblClick(Sender: TObject);
    procedure DBGMatTerDblClick(Sender: TObject);
    procedure DBGMatQuaDblClick(Sender: TObject);
    procedure DBGMatQuiDblClick(Sender: TObject);
    procedure DBGMatSexDblClick(Sender: TObject);
    procedure DBGVespSegDblClick(Sender: TObject);
    procedure DBGVespTerDblClick(Sender: TObject);
    procedure DBGVespQuaDblClick(Sender: TObject);
    procedure DBGVespQuiDblClick(Sender: TObject);
    procedure DBGVespSexDblClick(Sender: TObject);
    procedure DBGNotSegDblClick(Sender: TObject);
    procedure DBGNotTerDblClick(Sender: TObject);
    procedure DBGNotQuaDblClick(Sender: TObject);
    procedure DBGNotQuiDblClick(Sender: TObject);
    procedure DBGNotSexDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLMatSegBeforeOpen(DataSet: TDataSet);
    procedure SQLMatTerBeforeOpen(DataSet: TDataSet);
    procedure SQLMatQuaBeforeOpen(DataSet: TDataSet);
    procedure SQLMatQuiBeforeOpen(DataSet: TDataSet);
    procedure SQLMatSexBeforeOpen(DataSet: TDataSet);
    procedure SQLVesSegBeforeOpen(DataSet: TDataSet);
    procedure SQLVesTerBeforeOpen(DataSet: TDataSet);
    procedure SQLVesQuaBeforeOpen(DataSet: TDataSet);
    procedure SQLVesQuiBeforeOpen(DataSet: TDataSet);
    procedure SQLVesSexBeforeOpen(DataSet: TDataSet);
    procedure SQLNotSegBeforeOpen(DataSet: TDataSet);
    procedure SQLNotTerBeforeOpen(DataSet: TDataSet);
    procedure SQLNotQuaBeforeOpen(DataSet: TDataSet);
    procedure SQLNotQuiBeforeOpen(DataSet: TDataSet);
    procedure SQLNotSexBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ProHora: TFrm_ProHora;

implementation

uses UDM;

{$R *.dfm}

procedure TFrm_ProHora.BtnAtualizarClick(Sender: TObject);
VAR
 i : Integer;
 c : Integer;
begin
    if(CDSFuncCPF_FUNC.AsString = '')then
     begin
      ShowMessage('Selecione um Professor...');
     end
    else
     begin
       IF (DBano.Text = '') or (DBsemestre.Text = '') THEN
        BEGIN
         ShowMessage('Digitar corretamente o Ano e o Semestre');
         DBano.SetFocus;
         Exit;
        END
       ELSE
        BEGIN
         if (Length(DBano.Text) = 4) then
          begin
            if(DBsemestre.Text = 'A') or (DBsemestre.Text = 'B') then
             begin
             //////////////////////////MATUTINOS///////////////////////////

             //////Matutinos em braco
             //////////////////////////////////////////////////// Segunda
               CDSMatSeg.Close;
               SQLMatSeg.Close;
               SQLMatSeg.Open;
               CDSMatSeg.Open;

               Pnlprophor.Enabled := true;

                IF not(CDSMatSegIDPROPHOR.AsInteger > 0)THEN //Verificação de propostas existentes
                 BEGIN
                    FOR i:=1 TO 5 DO
                     BEGIN
                        FOR c:=1 TO 5 DO
                         BEGIN
                            CDSMatSeg.Append;
                            CDSMatSegSTATUS_PROPHOR.AsString   := 'A';
                            CDSMatSegAULA_PROPHOR.AsInteger    := i;
                            CDSMatSegDIA_PROPHOR.AsInteger     := c;
                            CDSMatSegSEMESTRE_PROPHOR.AsString := DBsemestre.Text;
                            CDSMatSegANO_PROPHOR.AsInteger     := StrToInt(DBano.Text);
                            CDSMatSegIDFUNC.AsInteger          := CDSFuncIDFUNC.AsInteger;
                            CDSMatSegTURNO_PROPHOR.AsString    := 'M';

                            //PK
                            DM.SQLAux.Close;
                            DM.SQLAux.CommandText := '';
                            DM.SQLAux.CommandText := ' SELECT MAX(PROPHOR.IDPROPHOR) FROM PROPHOR';
                            DM.SQLAux.Open;

                            CDSMatSegIDPROPHOR.AsInteger         := DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;

                            CDSMatSeg.Post;
                            CDSMatSeg.ApplyUpdates(0);
                         END;
                     END;
                 END;

             //////Matutinos em braco
             //////////////////////////////////////////////////// Segunda
               CDSMatSeg.Close;
               SQLMatSeg.Close;
               SQLMatSeg.Open;
               CDSMatSeg.Open;
              //////////////////////////////////////////////////// Terça
               CDSMatTer.Close;
               SQLMatTer.Close;
               SQLMatTer.Open;
               CDSMatTer.Open;
               ////////////////////////////////////////////////////Quarta
               CDSMatQua.Close;
               SQLMatQua.Close;
               SQLMatQua.Open;
               CDSMatQua.Open;
               ////////////////////////////////////////////////////Quinta
               CDSMatQui.Close;
               SQLMatQui.Close;
               SQLMatQui.Open;
               CDSMatQui.Open;
               ////////////////////////////////////////////////////Sexta
               CDSMatSex.Close;
               SQLMatSex.Close;
               SQLMatSex.Open;
               CDSMatSex.Open;

               //////////////////////////VESPERTINOS///////////////////////////

               //////Verpertinos em braco
               CDSVesSeg.Close;
               SQLVesSeg.Close;
               SQLVesSeg.Open;
               CDSVesSeg.Open;

               Pnlprophor.Enabled := true;

                IF not(CDSVesSegIDPROPHOR.AsInteger > 0)THEN //Verificação de propostas existentes
                 BEGIN
                    FOR i:=1 TO 5 DO
                     BEGIN
                        FOR c:=1 TO 5 DO
                         BEGIN
                            CDSVesSeg.Append;
                            CDSVesSegSTATUS_PROPHOR.AsString   := 'A';
                            CDSVesSegAULA_PROPHOR.AsInteger    := i;
                            CDSVesSegDIA_PROPHOR.AsInteger     := c;
                            CDSVesSegSEMESTRE_PROPHOR.AsString := DBsemestre.Text;
                            CDSVesSegANO_PROPHOR.AsInteger     := StrToInt(DBano.Text);
                            CDSVesSegIDFUNC.AsInteger          := CDSFuncIDFUNC.AsInteger;
                            CDSVesSegTURNO_PROPHOR.AsString    := 'V';

                            //PK
                            DM.SQLAux.Close;
                            DM.SQLAux.CommandText := '';
                            DM.SQLAux.CommandText := ' SELECT MAX(PROPHOR.IDPROPHOR) FROM PROPHOR';
                            DM.SQLAux.Open;

                            CDSVesSegIDPROPHOR.AsInteger         := DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;

                            CDSVesSeg.Post;
                            CDSVesSeg.ApplyUpdates(0);
                         END;
                     END;
                 END;

               //////Verpertinos em braco
               //////////////////////////////////////////////////// Segunda
               CDSVesSeg.Close;
               SQLVesSeg.Close;
               SQLVesSeg.Open;
               CDSVesSeg.Open;
               //////////////////////////////////////////////////// Terça
               CDSVesTer.Close;
               SQLVesTer.Close;
               SQLVesTer.Open;
               CDSVesTer.Open;
               //////////////////////////////////////////////////// Quarta
               CDSVesQua.Close;
               SQLVesQua.Close;
               SQLVesQua.Open;
               CDSVesQua.Open;
               //////////////////////////////////////////////////// Quinta
               CDSVesQui.Close;
               SQLVesQui.Close;
               SQLVesQui.Open;
               CDSVesQui.Open;
               //////////////////////////////////////////////////// Sexta
               CDSVesSex.Close;
               SQLVesSex.Close;
               SQLVesSex.Open;
               CDSVesSex.Open;

               //////////////////////////NOTURNOS///////////////////////////

               //////Noturnos em braco
               CDSNotSeg.Close;
               SQLNotSeg.Close;
               SQLNotSeg.Open;
               CDSNotSeg.Open;

               Pnlprophor.Enabled := true;

                IF not(CDSNotSegIDPROPHOR.AsInteger > 0)THEN //Verificação de propostas existentes
                 BEGIN
                    FOR i:=1 TO 5 DO
                     BEGIN
                        FOR c:=1 TO 5 DO
                         BEGIN
                            CDSNotSeg.Append;
                            CDSNotSegSTATUS_PROPHOR.AsString   := 'A';
                            CDSNotSegAULA_PROPHOR.AsInteger    := i;
                            CDSNotSegDIA_PROPHOR.AsInteger     := c;
                            CDSNotSegSEMESTRE_PROPHOR.AsString := DBsemestre.Text;
                            CDSNotSegANO_PROPHOR.AsInteger     := StrToInt(DBano.Text);
                            CDSNotSegIDFUNC.AsInteger          := CDSFuncIDFUNC.AsInteger;
                            CDSNotSegTURNO_PROPHOR.AsString    := 'N';

                            //PK
                            DM.SQLAux.Close;
                            DM.SQLAux.CommandText := '';
                            DM.SQLAux.CommandText := ' SELECT MAX(PROPHOR.IDPROPHOR) FROM PROPHOR';
                            DM.SQLAux.Open;

                            CDSNotSegIDPROPHOR.AsInteger         := DM.SQLAux.FIELDBYNAME('MAX').AsInteger + 1 ;

                            CDSNotSeg.Post;
                            CDSNotSeg.ApplyUpdates(0);

                         END;
                     END;
                 END;

               //////////////////////////////////////////////////// Segunda
               CDSNotSeg.Close;
               SQLNotSeg.Close;
               SQLNotSeg.Open;
               CDSNotSeg.Open;
               //////////////////////////////////////////////////// Terça
               CDSNotTer.Close;
               SQLNotTer.Close;
               SQLNotTer.Open;
               CDSNotTer.Open;
               //////////////////////////////////////////////////// Quarta
               CDSNotQua.Close;
               SQLNotQua.Close;
               SQLNotQua.Open;
               CDSNotQua.Open;
               //////////////////////////////////////////////////// Quinta
               CDSNotQui.Close;
               SQLNotQui.Close;
               SQLNotQui.Open;
               CDSNotQui.Open;
               //////////////////////////////////////////////////// Sexta
               CDSNotSex.Close;
               SQLNotSex.Close;
               SQLNotSex.Open;
               CDSNotSex.Open;

             end
            else
             begin
               ShowMessage('Semestre inválido...');
             end;
          end
         else
          begin
             ShowMessage('Ano inválido...');
          end;
        END;
     end;
end;
procedure TFrm_ProHora.FormCreate(Sender: TObject);
begin
  SQLFunc.Open;
  CDSFunc.Open;
end;

procedure TFrm_ProHora.NomeProfChange(Sender: TObject);
begin
   CDSFunc.Close;
   SQLFunc.Close;


     SQLFunc.CommandText := ' SELECT '+
                            ' FUNCIONARIO.IDFUNC, '+
                            ' FUNCIONARIO.NOME_FUNC, '+
                            ' FUNCIONARIO.DATANASC_FUNC, '+
                            ' FUNCIONARIO.CPF_FUNC, '+
                            ' FUNCIONARIO.RG_FUNC, '+
                            ' FUNCIONARIO.FONERES_FUNC, '+
                            ' FUNCIONARIO.CELULAR_FUNC, '+
                            ' FUNCIONARIO.NACIO_FUNC, '+
                            ' FUNCIONARIO.NATUR_FUNC, '+
                            ' FUNCIONARIO.SEXO_FUNC,'+
                            ' FUNCIONARIO.EMAIL_FUNC, '+
                            ' FUNCIONARIO.OBS_FUNC, '+
                            ' FUNCIONARIO.DATACAD_FUNC, '+
                            ' FUNCIONARIO.STATUS_FUNC, '+
                            ' CARGOS.IDCAR, '+
                            ' CARGOS.DESC_CAR, '+
                            ' RELCARFUN.STATUS_RELCARFUN, '+
                            ' FUNCIONARIO.FOTO_FUNC '+
                            ' FROM FUNCIONARIO '+

                            ' LEFT OUTER JOIN RELCARFUN ON (RELCARFUN.IDFUNC=FUNCIONARIO.IDFUNC) '+
                            ' LEFT OUTER JOIN CARGOS ON (CARGOS.IDCAR=RELCARFUN.IDCAR) '+
                            ' WHERE  CARGOS.DESC_CAR = '  +QuotedStr('PROFESSOR')+  ' AND FUNCIONARIO.NOME_FUNC LIKE ' + QuotedStr( NomeProf.Text + '%' ) + ' AND FUNCIONARIO.STATUS_FUNC LIKE ' + QuotedStr('A') + ' AND RELCARFUN.STATUS_RELCARFUN LIKE ' + QuotedStr('A')+
                            ' ORDER BY FUNCIONARIO.NOME_FUNC ';
   SQLFunc.Open;
   CDSFunc.Open;


   // SE NAO TIVER UM REGISTRO EM DETERMINADO DIA E EM DETERMINADA AULA NO BANCO
   // PREENCHER COM ESPAÇO EM BRANCO, CASO CONTRARIO PREENCHER COM X

end;
////Preenchendo os cadastros de proposta em branco
procedure TFrm_ProHora.DBGMatSegDblClick(Sender: TObject);
begin
 IF (CDSMatSegVALOR.AsString <> 'X') THEN
   BEGIN
        CDSMatSeg.Edit;
        CDSMatSegVALOR.AsString :='X';
        CDSMatSeg.Post;
        CDSMatSeg.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSMatSeg.Edit;
        CDSMatSegVALOR.AsString :='';
        CDSMatSeg.Post;
        CDSMatSeg.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGMatTerDblClick(Sender: TObject);
begin
 IF (CDSMatTerVALOR.AsString <> 'X') THEN
   BEGIN
        CDSMatTer.Edit;
        CDSMatTerVALOR.AsString :='X';
        CDSMatTer.Post;
        CDSMatTer.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSMatTer.Edit;
        CDSMatTerVALOR.AsString :='';
        CDSMatTer.Post;
        CDSMatTer.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGMatQuaDblClick(Sender: TObject);
begin
  IF (CDSMatQuaVALOR.AsString <> 'X') THEN
   BEGIN
        CDSMatQua.Edit;
        CDSMatQuaVALOR.AsString :='X';
        CDSMatQua.Post;
        CDSMatQua.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSMatQua.Edit;
        CDSMatQuaVALOR.AsString :='';
        CDSMatQua.Post;
        CDSMatQua.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGMatQuiDblClick(Sender: TObject);
begin
  IF (CDSMatQuiVALOR.AsString <> 'X') THEN
   BEGIN
        CDSMatQui.Edit;
        CDSMatQuiVALOR.AsString :='X';
        CDSMatQui.Post;
        CDSMatQui.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSMatQui.Edit;
        CDSMatQuiVALOR.AsString :='';
        CDSMatQui.Post;
        CDSMatQui.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGMatSexDblClick(Sender: TObject);
begin
  IF (CDSMatSexVALOR.AsString <> 'X') THEN
   BEGIN
        CDSMatSex.Edit;
        CDSMatSexVALOR.AsString :='X';
        CDSMatSex.Post;
        CDSMatSex.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSMatSex.Edit;
        CDSMatSexVALOR.AsString :='';
        CDSMatSex.Post;
        CDSMatSex.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGVespSegDblClick(Sender: TObject);
begin
  IF (CDSVesSegVALOR.AsString <> 'X') THEN
   BEGIN
        CDSVesSeg.Edit;
        CDSVesSegVALOR.AsString :='X';
        CDSVesSeg.Post;
        CDSVesSeg.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSVesSeg.Edit;
        CDSVesSegVALOR.AsString :='';
        CDSVesSeg.Post;
        CDSVesSeg.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGVespTerDblClick(Sender: TObject);
begin
  IF (CDSVesTerVALOR.AsString <> 'X') THEN
   BEGIN
        CDSVesTer.Edit;
        CDSVesTerVALOR.AsString :='X';
        CDSVesTer.Post;
        CDSVesTer.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSVesTer.Edit;
        CDSVesTerVALOR.AsString :='';
        CDSVesTer.Post;
        CDSVesTer.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGVespQuaDblClick(Sender: TObject);
begin
  IF (CDSVesQuaVALOR.AsString <> 'X') THEN
   BEGIN
        CDSVesQua.Edit;
        CDSVesQuaVALOR.AsString :='X';
        CDSVesQua.Post;
        CDSVesQua.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSVesQua.Edit;
        CDSVesQuaVALOR.AsString :='';
        CDSVesQua.Post;
        CDSVesQua.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGVespQuiDblClick(Sender: TObject);
begin
  IF (CDSVesQuiVALOR.AsString <> 'X') THEN
   BEGIN
        CDSVesQui.Edit;
        CDSVesQuiVALOR.AsString :='X';
        CDSVesQui.Post;
        CDSVesQui.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSVesQui.Edit;
        CDSVesQuiVALOR.AsString :='';
        CDSVesQui.Post;
        CDSVesQui.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGVespSexDblClick(Sender: TObject);
begin
  IF (CDSVesSexVALOR.AsString <> 'X') THEN
   BEGIN
        CDSVesSex.Edit;
        CDSVesSexVALOR.AsString :='X';
        CDSVesSex.Post;
        CDSVesSex.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSVesSex.Edit;
        CDSVesSexVALOR.AsString :='';
        CDSVesSex.Post;
        CDSVesSex.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGNotSegDblClick(Sender: TObject);
begin
  IF (CDSNotSegVALOR.AsString <> 'X') THEN
   BEGIN
        CDSNotSeg.Edit;
        CDSNotSegVALOR.AsString :='X';
        CDSNotSeg.Post;
        CDSNotSeg.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSNotSeg.Edit;
        CDSNotSegVALOR.AsString :='';
        CDSNotSeg.Post;
        CDSNotSeg.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGNotTerDblClick(Sender: TObject);
begin
  IF (CDSNotTerVALOR.AsString <> 'X') THEN
   BEGIN
        CDSNotTer.Edit;
        CDSNotTerVALOR.AsString :='X';
        CDSNotTer.Post;
        CDSNotTer.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSNotTer.Edit;
        CDSNotTerVALOR.AsString :='';
        CDSNotTer.Post;
        CDSNotTer.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGNotQuaDblClick(Sender: TObject);
begin
  IF (CDSNotQuaVALOR.AsString <> 'X') THEN
   BEGIN
        CDSNotQua.Edit;
        CDSNotQuaVALOR.AsString :='X';
        CDSNotQua.Post;
        CDSNotQua.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSNotQua.Edit;
        CDSNotQuaVALOR.AsString :='';
        CDSNotQua.Post;
        CDSNotQua.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGNotQuiDblClick(Sender: TObject);
begin
  IF (CDSNotQuiVALOR.AsString <> 'X') THEN
   BEGIN
        CDSNotQui.Edit;
        CDSNotQuiVALOR.AsString :='X';
        CDSNotQui.Post;
        CDSNotQui.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSNotQui.Edit;
        CDSNotQuiVALOR.AsString :='';
        CDSNotQui.Post;
        CDSNotQui.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.DBGNotSexDblClick(Sender: TObject);
begin
  IF (CDSNotSexVALOR.AsString <> 'X') THEN
   BEGIN
        CDSNotSex.Edit;
        CDSNotSexVALOR.AsString :='X';
        CDSNotSex.Post;
        CDSNotSex.ApplyUpdates(0);
   END
 ELSE
   BEGIN
        CDSNotSex.Edit;
        CDSNotSexVALOR.AsString :='';
        CDSNotSex.Post;
        CDSNotSex.ApplyUpdates(0);
   END;
end;

procedure TFrm_ProHora.SpeedButton1Click(Sender: TObject);
begin
   ////// Horário sendo gerado.....

///////Carregando campos de turma e professor pra poder comparar

  {DM.SQLAux.close;
  DM.SQLAux.CommandText := ' SELECT ' +
                           ' TURMAS.NUM_TUR, ' +
                           ' TURMAS.TURNO_TUR, ' +
                           ' TURMAS.ANO_TUR ' +
                           ' FROM TURMAS ' +
                           ' WHERE TURMAS.IDTUR = :PARIDTUR' ;
                           /////WHERE COM STATUS='A'
  DM.SQLAux.ParamByName('PARIDTUR').AsInteger := CDSTURMAIDTUR.AsInteger;
  DM.SQLAux.Open;
  ////////////////////////
  DM.SQLAux.close;
  DM.SQLAux.CommandText := ' SELECT ' +
                           ' DISCIPLINAS.DESCR_DISC ' +
                           ' FROM DISCIPLINAS ' +
                           ' WHERE .IDTUR = :PARIDTUR' ;
  DM.SQLAux.ParamByName('PARIDDISC').AsInteger := CDSDISCIDDISC.AsInteger;
  DM.SQLAux.Open;
  /////////////////////////
  DM.SQLAux.close;
  DM.SQLAux.CommandText := ' SELECT ' +
                           ' FUNCIONARIO.NOME_FUNC, ' +
                           ' FROM FUNCIONARIO ' +
                           ' WHERE FUNCIONARIO.IDFUNC = :PARIDFUNC' ;
                           /////WHERE COM STATUS='A'
  DM.SQLAux.ParamByName('PARIDFUNC').AsInteger := CDSFUNCIDFUNC.AsInteger;
  DM.SQLAux.Open;


  //////GERAÇÃO
  IF()THEN
   BEGIN
   END;  }

end;

procedure TFrm_ProHora.SQLMatSegBeforeOpen(DataSet: TDataSet);
begin

               SQLMatSeg.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLMatSeg.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLMatSeg.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLMatSeg.ParamByName('PARTUR').AsString    :=  'M' ;
               SQLMatSeg.ParamByName('PARDIA').AsInteger   :=   1;

end;

procedure TFrm_ProHora.SQLMatTerBeforeOpen(DataSet: TDataSet);
begin
               SQLMatTer.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLMatTer.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLMatTer.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLMatTer.ParamByName('PARTUR').AsString    :=  'M' ;
               SQLMatTer.ParamByName('PARDIA').AsInteger   :=   2;
end;

procedure TFrm_ProHora.SQLMatQuaBeforeOpen(DataSet: TDataSet);
begin
               SQLMatQua.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLMatQua.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLMatQua.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLMatQua.ParamByName('PARTUR').AsString    :=  'M' ;
               SQLMatQua.ParamByName('PARDIA').AsInteger   :=   3;
end;

procedure TFrm_ProHora.SQLMatQuiBeforeOpen(DataSet: TDataSet);
begin
               SQLMatQui.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLMatQui.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLMatQui.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLMatQui.ParamByName('PARTUR').AsString    :=  'M' ;
               SQLMatQui.ParamByName('PARDIA').AsInteger   :=   4;
end;

procedure TFrm_ProHora.SQLMatSexBeforeOpen(DataSet: TDataSet);
begin
               SQLMatSex.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLMatSex.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLMatSex.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLMatSex.ParamByName('PARTUR').AsString    :=  'M' ;
               SQLMatSex.ParamByName('PARDIA').AsInteger   :=   5;

end;

procedure TFrm_ProHora.SQLVesSegBeforeOpen(DataSet: TDataSet);
begin
               SQLVesSeg.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLVesSeg.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLVesSeg.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLVesSeg.ParamByName('PARTUR').AsString    :=  'V' ;
               SQLVesSeg.ParamByName('PARDIA').AsInteger   :=   1;
end;

procedure TFrm_ProHora.SQLVesTerBeforeOpen(DataSet: TDataSet);
begin
               SQLVesTer.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLVesTer.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLVesTer.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLVesTer.ParamByName('PARTUR').AsString    :=  'V' ;
               SQLVesTer.ParamByName('PARDIA').AsInteger   :=   2;
end;

procedure TFrm_ProHora.SQLVesQuaBeforeOpen(DataSet: TDataSet);
begin
               SQLVesQua.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLVesQua.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLVesQua.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLVesQua.ParamByName('PARTUR').AsString    :=  'V' ;
               SQLVesQua.ParamByName('PARDIA').AsInteger   :=   3;
end;

procedure TFrm_ProHora.SQLVesQuiBeforeOpen(DataSet: TDataSet);
begin
               SQLVesQui.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLVesQui.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLVesQui.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLVesQui.ParamByName('PARTUR').AsString    :=  'V' ;
               SQLVesQui.ParamByName('PARDIA').AsInteger   :=   4;
end;

procedure TFrm_ProHora.SQLVesSexBeforeOpen(DataSet: TDataSet);
begin
               SQLVesSex.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLVesSex.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLVesSex.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLVesSex.ParamByName('PARTUR').AsString    :=  'V' ;
               SQLVesSex.ParamByName('PARDIA').AsInteger   :=   5;
end;

procedure TFrm_ProHora.SQLNotSegBeforeOpen(DataSet: TDataSet);
begin
               SQLNotSeg.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLNotSeg.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLNotSeg.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLNotSeg.ParamByName('PARTUR').AsString    :=  'N' ;
               SQLNotSeg.ParamByName('PARDIA').AsInteger   :=   1;
end;

procedure TFrm_ProHora.SQLNotTerBeforeOpen(DataSet: TDataSet);
begin
               SQLNotTer.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLNotTer.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLNotTer.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLNotTer.ParamByName('PARTUR').AsString    :=  'N' ;
               SQLNotTer.ParamByName('PARDIA').AsInteger   :=   2;
end;

procedure TFrm_ProHora.SQLNotQuaBeforeOpen(DataSet: TDataSet);
begin
               SQLNotQua.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLNotQua.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLNotQua.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLNotQua.ParamByName('PARTUR').AsString    :=  'N' ;
               SQLNotQua.ParamByName('PARDIA').AsInteger   :=   3;
end;

procedure TFrm_ProHora.SQLNotQuiBeforeOpen(DataSet: TDataSet);
begin
               SQLNotQui.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLNotQui.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLNotQui.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLNotQui.ParamByName('PARTUR').AsString    :=  'N' ;
               SQLNotQui.ParamByName('PARDIA').AsInteger   :=   4;
end;

procedure TFrm_ProHora.SQLNotSexBeforeOpen(DataSet: TDataSet);
begin
               SQLNotSex.ParamByName('PARFUNC').AsInteger  :=  CDSFuncIDFUNC.AsInteger ;
               SQLNotSex.ParamByName('PARANO').AsInteger   :=  STRTOINT(DBano.Text) ;
               SQLNotSex.ParamByName('PARSEM').AsString    :=  DBsemestre.Text ;
               SQLNotSex.ParamByName('PARTUR').AsString    :=  'N' ;
               SQLNotSex.ParamByName('PARDIA').AsInteger   :=   5;
end;

end.



