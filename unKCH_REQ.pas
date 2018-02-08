unit unKCH_REQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unMainForm, ShrFunc, StdCtrls, Buttons, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls, ComCtrls, Grids, dbcgrids, DBGridEh,
  Mask, DBCtrlsEh, DBLookupEh, IBTable;

type
  TfmKCH_REQ = class(TMainForm)
    p0: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    qOrder: TIBQuery;
    dsOrder: TDataSource;
    qOrderID_ORDER: TIntegerField;
    qOrderN_ORDER: TIBStringField;
    qOrderNAME: TIBStringField;
    qOrderAMOUNT: TIBBCDField;
    qOrderPRICE: TIBBCDField;
    qOrderPRICEA: TIBBCDField;
    qOrderID_CPTYPE: TIntegerField;
    qOrderID_CPROD: TIntegerField;
    qOrderID_AGENT: TIntegerField;
    qOrderSTATUS: TIntegerField;
    qOrderID_P: TIntegerField;
    qOrderAGENT: TIBStringField;
    qOrderFIO: TIBStringField;
    qOrderTYPEPROD: TIBStringField;
    qOrderPROD: TIBStringField;
    qOrderNSTATUS: TIBStringField;
    p1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    qOrderNCURR: TIBStringField;
    DBText10: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    pc1: TPageControl;
    ts1: TTabSheet;
    p2: TPanel;
    Label11: TLabel;
    qCH_REQ: TIBQuery;
    dsCH_REQ: TDataSource;
    qCH_REQID_REQUEST: TIntegerField;
    qCH_REQID_ORDER: TIntegerField;
    qCH_REQSTATUS: TIntegerField;
    qCH_REQD_MANAGER: TDateTimeField;
    qCH_REQID_MANAGER: TIntegerField;
    qCH_REQD_HEAD: TDateTimeField;
    qCH_REQID_HEAD: TIntegerField;
    qCH_REQD_ACC: TDateTimeField;
    qCH_REQID_ACC: TIntegerField;
    qCH_REQD_FIN: TDateTimeField;
    qCH_REQID_FIN: TIntegerField;
    qCH_REQD_CONFIRM: TDateTimeField;
    qCH_REQID_CONFIRM: TIntegerField;
    qCH_REQD_WORK: TDateTimeField;
    qCH_REQID_WORK: TIntegerField;
    qCH_REQD_CENTER_WORK: TDateTimeField;
    qCH_REQID_CENTER_WORK: TIntegerField;
    qCH_REQDESCRIPT: TMemoField;
    qCH_REQREASON: TMemoField;
    qCH_REQOLD_AMOUNT: TFloatField;
    qCH_REQNEW_AMOUNT: TFloatField;
    qCH_REQOLD_PRICE: TFloatField;
    qCH_REQNEW_PRICE: TFloatField;
    qCH_REQOLD_SUMMA: TFloatField;
    qCH_REQNEW_SUMMA: TFloatField;
    qCH_REQOLD_PTYPE: TIntegerField;
    qCH_REQNEW_PTYPE: TIntegerField;
    qCH_REQOLD_BASE_DOC: TIntegerField;
    qCH_REQNEW_BASE_DOC: TIntegerField;
    qCH_REQOLD_PROD: TIntegerField;
    qCH_REQNEW_PROD: TIntegerField;
    qCH_REQID_DOC: TIntegerField;
    qCH_REQID_REASON: TIntegerField;
    qCH_REQFIO: TIBStringField;
    qCH_REQNAME: TIBStringField;
    DBText13: TDBText;
    Label12: TLabel;
    DBText14: TDBText;
    Label13: TLabel;
    DBText15: TDBText;
    Label14: TLabel;
    DBText16: TDBText;
    ts3: TTabSheet;
    qCH_REQACC: TIBStringField;
    qCH_REQCONF: TIBStringField;
    qCH_REQFIN: TIBStringField;
    qCH_REQHEAD: TIBStringField;
    qCH_REQFWORK: TIBStringField;
    qCH_REQCWORK: TIBStringField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    Panel1: TPanel;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    Panel2: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    cb6: TCheckBox;
    Panel9: TPanel;
    Label25: TLabel;
    Panel10: TPanel;
    ed2: TEdit;
    cb2: TCheckBox;
    Panel11: TPanel;
    ed1: TEdit;
    cb1: TCheckBox;
    lcb3: TDBLookupComboboxEh;
    ed3: TEdit;
    cb3: TCheckBox;
    Panel12: TPanel;
    cb5: TCheckBox;
    lcb2: TDBLookupComboboxEh;
    Panel13: TPanel;
    cb4: TCheckBox;
    lcb1: TDBLookupComboboxEh;
    qTYPPROD: TIBQuery;
    qPROD: TIBQuery;
    qDOC: TIBQuery;
    dsTYPPROD: TDataSource;
    dsPROD: TDataSource;
    dsDOC: TDataSource;
    qOrderID_DOC: TIntegerField;
    Label26: TLabel;
    DBText31: TDBText;
    DBText32: TDBText;
    qTYPPRODID_PTYPE: TIntegerField;
    qTYPPRODNAME: TIBStringField;
    qPRODID_P_AREA: TIntegerField;
    qPRODNAME: TIBStringField;
    qOrderNDOC: TIBStringField;
    qDOCID_PROJECT_DOC: TIntegerField;
    qDOCNAME: TIBStringField;
    qOrderID_PROJECT: TIntegerField;
    Panel14: TPanel;
    Panel3: TPanel;
    m2: TMemo;
    Panel5: TPanel;
    Label24: TLabel;
    Panel6: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    m1: TMemo;
    Splitter1: TSplitter;
    Panel15: TPanel;
    cbProj: TCheckBox;
    lcbProj: TDBLookupComboboxEh;
    Panel16: TPanel;
    cbProduct: TCheckBox;
    lcbProduct: TDBLookupComboboxEh;
    Panel17: TPanel;
    cbAg: TCheckBox;
    lcbAg: TDBLookupComboboxEh;
    cbCur: TCheckBox;
    lcbCur: TDBLookupComboboxEh;
    Panel18: TPanel;
    cbOrd_Type: TCheckBox;
    lcbOrd_Type: TDBLookupComboboxEh;
    cbLid: TCheckBox;
    lcbLid: TDBLookupComboboxEh;
    cbEst: TCheckBox;
    edEst: TEdit;
    edProc: TEdit;
    cbProc: TCheckBox;
    edSumPL: TEdit;
    cbSumPL: TCheckBox;
    edDeliv: TEdit;
    cbDeliv: TCheckBox;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    edSum_Def: TEdit;
    cbSum_Def: TCheckBox;
    edDeliv_Def: TEdit;
    cbDeliv_Def: TCheckBox;
    qProj: TIBQuery;
    dsProj: TDataSource;
    dsAgent: TDataSource;
    qAgent: TIBQuery;
    qAgentID_ITEM: TIntegerField;
    qAgentNAME: TIBStringField;
    qProduct: TIBQuery;
    dsProduct: TDataSource;
    qProductID_ITEM: TIntegerField;
    qProductNAME: TIBStringField;
    dsOrd_Type: TDataSource;
    dsLid: TDataSource;
    qOrd_Type: TIBQuery;
    qLid: TIBQuery;
    qOrderID_PRODUCT: TIntegerField;
    qOrderID_CURRENCY: TIntegerField;
    qOrderID_ESTIMATE: TIntegerField;
    qOrderLID: TIntegerField;
    qOrderD_OPEN: TDateTimeField;
    qOrderDEF_SUM: TFloatField;
    qOrderMANAGER_MARGIN: TFloatField;
    qOrderDELIVERY_SUM: TFloatField;
    qOrderDEF_DELIVERY: TFloatField;
    qOrderPLAN_COST_PRICE: TFloatField;
    qProjID_PROJECT: TIntegerField;
    qProjNAME: TIBStringField;
    qProjNAME_AGENT: TIBStringField;
    qLidID_ORDER: TIntegerField;
    qLidN_ORDER: TIBStringField;
    qLidNAME: TIBStringField;
    qLidLID: TIntegerField;
    qCur: TIBQuery;
    dsCur: TDataSource;
    qCurID_CURRENCY: TSmallintField;
    qCurNAME: TIBStringField;
    qCurNAME_FULL: TIBStringField;
    qOrd_TypeID_TYPE: TIntegerField;
    qOrd_TypeNAME: TIBStringField;
    qOrderORD_TYPE: TIntegerField;
    qOrderNAME_ORD_TYPE: TIBStringField;
    Label27: TLabel;
    DBText33: TDBText;
    DBText34: TDBText;
    Label28: TLabel;
    DBText35: TDBText;
    Label29: TLabel;
    DBText36: TDBText;
    qOrderNAME_PRODUCT: TIBStringField;
    Label30: TLabel;
    DBText37: TDBText;
    qOrderNAME_PROJECT: TIBStringField;
    qCH_REQOLD_PROJECT: TIntegerField;
    qCH_REQNEW_PROJECT: TIntegerField;
    qCH_REQOLD_PRODUCT: TIntegerField;
    qCH_REQNEW_PRODUCT: TIntegerField;
    qCH_REQOLD_CURRENCY: TIntegerField;
    qCH_REQNEW_CURRENCY: TIntegerField;
    qCH_REQOLD_AGENT: TIntegerField;
    qCH_REQNEW_AGENT: TIntegerField;
    qCH_REQOLD_ESTIMATE: TIntegerField;
    qCH_REQNEW_ESTIMATE: TIntegerField;
    qCH_REQOLD_ORD_TYPE: TIntegerField;
    qCH_REQNEW_ORD_TYPE: TIntegerField;
    qCH_REQOLD_LID: TIntegerField;
    qCH_REQNEW_LID: TIntegerField;
    qCH_REQOLD_D_OPEN: TDateTimeField;
    qCH_REQNEW_D_OPEN: TDateTimeField;
    qCH_REQOLD_DEF_SUM: TFloatField;
    qCH_REQNEW_DEF_SUM: TFloatField;
    qCH_REQOLD_MANAGER_MARGIN: TFloatField;
    qCH_REQNEW_MANAGER_MARGIN: TFloatField;
    qCH_REQOLD_DELIVERY_SUM: TFloatField;
    qCH_REQNEW_DELIVERY_SUM: TFloatField;
    qCH_REQOLD_DEF_DELIVERY: TFloatField;
    qCH_REQNEW_DEF_DELIVERY: TFloatField;
    qCH_REQOLD_PLAN_COST_PRICE: TFloatField;
    qCH_REQNEW_PLAN_COST_PRICE: TFloatField;
    Label31: TLabel;
    DBText38: TDBText;
    Label32: TLabel;
    DBText39: TDBText;
    Label33: TLabel;
    DBText40: TDBText;
    Label34: TLabel;
    DBText41: TDBText;
    Label35: TLabel;
    DBText42: TDBText;
    Label36: TLabel;
    DBText43: TDBText;
    qOrderPRICE_BEZ_NDS: TFloatField;
    qOrderPRICEA_BEZ_NDS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure cb2Click(Sender: TObject);
    procedure cb3Click(Sender: TObject);
    procedure cb4Click(Sender: TObject);
    procedure cb5Click(Sender: TObject);
    procedure cb6Click(Sender: TObject);
    procedure qOrderBeforeOpen(DataSet: TDataSet);
    procedure cbEstClick(Sender: TObject);
    procedure cbSumPLClick(Sender: TObject);
    procedure cbProcClick(Sender: TObject);
    procedure cbDeliv_DefClick(Sender: TObject);
    procedure cbSum_DefClick(Sender: TObject);
    procedure cbDelivClick(Sender: TObject);
    procedure cbCurClick(Sender: TObject);
    procedure cbProjClick(Sender: TObject);
    procedure cbAgClick(Sender: TObject);
    procedure cbProductClick(Sender: TObject);
    procedure cbOrd_TypeClick(Sender: TObject);
    procedure cbLidClick(Sender: TObject);
  private
    procedure IniControl;
    { Private declarations }
  public
    Kop: word;
    C_ORDER, CH_REQ: integer;
    { Public declarations }
  end;

var
  fmKCH_REQ: TfmKCH_REQ;

implementation
uses unMain, unIS, unCH_REQ;

const
  id_Form = 37;

{$R *.dfm}

procedure TfmKCH_REQ.IniControl;
begin
  ed1.Text := '';
  ed2.Text := '';
  ed3.Text := '';
  edEst.Text := '';
  edSumPL.Text := '';
  edSumPL.Text := '';
  edProc.Text := '';
  edDeliv_Def.Text := '';
  edSum_Def.Text := '';
  edDeliv.Text := '';
  m1.Text := '';
  m2.Text := '';

  cb1.Enabled := Kop <> 0;
  cb2.Enabled := Kop <> 0;
  cb3.Enabled := Kop <> 0;
  cb4.Enabled := Kop <> 0;
  cb5.Enabled := Kop <> 0;
  cb6.Enabled := Kop <> 0;
  cbEst.Enabled := Kop <> 0;
  cbSumPL.Enabled := Kop <> 0;
  cbProc.Enabled := Kop <> 0;
  cbSum_Def.Enabled := Kop <> 0;
  cbDeliv_Def.Enabled := Kop <> 0;
  cbDeliv.Enabled := Kop <> 0;
  cbCur.Enabled := Kop <> 0;
  cbProj.Enabled := Kop <> 0;
  cbAg.Enabled := Kop <> 0;
  cbProduct.Enabled := Kop <> 0;
  cbOrd_Type.Enabled := Kop <> 0;
  cbLid.Enabled := Kop <> 0;

  ed1.Enabled := cb1.Checked;
  ed2.Enabled := cb2.Checked;
  ed3.Enabled := cb3.Checked;
  edEst.Enabled := cbEst.Checked;
  edSumPL.Enabled := cbSumPL.Checked;
  edProc.Enabled := cbProc.Checked;
  edSum_Def.Enabled := cbSum_Def.Checked;
  edDeliv_Def.Enabled := cbDeliv_Def.Checked;
  edDeliv.Enabled := cbDeliv.Checked;

  if not cb1.Checked then
    ed1.Text := qOrderAMOUNT.AsString;
  if (kop = 2) and (not qCH_REQNEW_AMOUNT.IsNull) then
  begin
    cb1.Checked := True;
    ed1.Text := qCH_REQNEW_AMOUNT.AsString;
  end
  else
    cb1.Checked := false;

  if not cb2.Checked then
    ed2.Text := qOrderPRICE.AsString;
  if (kop = 2) and (not qCH_REQNEW_PRICE.IsNull) then
  begin
    cb2.Checked := True;
    ed2.Text := qCH_REQNEW_PRICE.AsString;
  end
  else
    cb2.Checked := false;

  if not cb3.Checked then
    ed3.Text := qOrderPRICEA.AsString;
  if (kop = 2) and (not qCH_REQNEW_SUMMA.IsNull) then
  begin
    cb3.Checked := True;
    ed3.Text := qCH_REQNEW_SUMMA.AsString;
  end
  else
    cb3.Checked := false;

  if not cbEst.Checked then
    edEst.Text := qOrderID_ESTIMATE.AsString;
  if (kop = 2) and (not qCH_REQNEW_ESTIMATE.IsNull) then
  begin
    cbEst.Checked := True;
    edEst.Text := qCH_REQNEW_ESTIMATE.AsString;
  end
  else
    cbEst.Checked := false;

  if not cbSumPL.Checked then
    edSumPL.Text := qOrderPLAN_COST_PRICE.AsString;
  if (kop = 2) and (not qCH_REQNEW_PLAN_COST_PRICE.IsNull) then
  begin
    cbSumPL.Checked := True;
    edSumPL.Text := qCH_REQNEW_PLAN_COST_PRICE.AsString;
  end
  else
    cbSumPL.Checked := false;

  if not cbProc.Checked then
    edProc.Text := qOrderMANAGER_MARGIN.AsString;
  if (kop = 2) and (not qCH_REQNEW_MANAGER_MARGIN.IsNull) then
  begin
    cbProc.Checked := True;
    edProc.Text := qCH_REQNEW_MANAGER_MARGIN.AsString;
  end
  else
    cbProc.Checked := false;
  if not cbDeliv_Def.Checked then
    edDeliv_Def.Text := qOrderDEF_DELIVERY.AsString;
  if (kop = 2) and (not qCH_REQNEW_DEF_DELIVERY.IsNull) then
  begin
    cbDeliv_Def.Checked := True;
    edDeliv_Def.Text := qCH_REQNEW_DEF_DELIVERY.AsString;
  end
  else
    cbDeliv_Def.Checked := false;

  if not cbSum_Def.Checked then
    edSum_Def.Text := qOrderDEF_SUM.AsString;
  if (kop = 2) and (not qCH_REQNEW_DEF_SUM.IsNull) then
  begin
    cbSum_Def.Checked := True;
    edSum_Def.Text := qCH_REQNEW_DEF_SUM.AsString;
  end
  else
    cbSum_Def.Checked := false;

  if not cbDeliv.Checked then
    edDeliv.Text := qOrderDELIVERY_SUM.AsString;
  if (kop = 2) and (not qCH_REQNEW_DELIVERY_SUM.IsNull) then
  begin
    cbDeliv.Checked := True;
    edDeliv.Text := qCH_REQNEW_DELIVERY_SUM.AsString;
  end
  else
    cbDeliv.Checked := false;

  lcb1.Enabled := cb4.Checked;
  if kop = 1 then
    qPROD.Locate('ID_P_AREA', qOrderID_CPROD.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_PROD.IsNull) then
  begin
    qPROD.Locate('ID_P_AREA', qCH_REQNEW_PROD.AsInteger, []);
    cb4.Checked := True;
  end
  else
    cb4.Checked := false;
  lcb1.Enabled := cb4.Checked;
  lcb1.KeyValue := qPRODID_P_AREA.AsInteger;

  lcb2.Enabled := cb5.Checked;
  if kop = 1 then
    qTYPPROD.Locate('ID_PTYPE', qOrderID_CPTYPE.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_PTYPE.IsNull) then
  begin
    qTYPPROD.Locate('ID_PTYPE', qCH_REQNEW_PTYPE.AsInteger, []);
    cb5.Checked := True;
  end
  else
    cb5.Checked := false;
  lcb2.Enabled := cb5.Checked;
  lcb2.KeyValue := qTYPPRODID_PTYPE.AsInteger;

  lcb3.Enabled := cb6.Checked;
  if kop = 1 then
    qDOC.Locate('ID_PROJECT_DOC', qOrderID_DOC.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_BASE_DOC.IsNull) then
  begin
    qDOC.Locate('ID_PROJECT_DOC', qCH_REQNEW_PROD.AsInteger, []);
    cb6.Checked := True;
  end
  else
    cb6.Checked := false;
  lcb3.Enabled := cb6.Checked;
  lcb3.KeyValue := qDOCID_PROJECT_DOC.AsInteger;

  m1.Text := qCH_REQREASON.AsString;
  m2.Text := qCH_REQDESCRIPT.AsString;

  lcbCur.Enabled := cbCur.Checked;
  if kop = 1 then
    qCur.Locate('id_currency', qOrderID_CURRENCY.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_CURRENCY.IsNull) then
  begin
    qCur.Locate('id_currency', qCH_REQNEW_CURRENCY.AsInteger, []);
    cbCur.Checked := True;
  end
  else
    cbCur.Checked := false;
  lcbCur.Enabled := cbCur.Checked;
  lcbCur.KeyValue := qCurID_CURRENCY.AsInteger;

  lcbProj.Enabled := cbProj.Checked;
  if kop = 1 then
    qProj.Locate('ID_PROJECT', qOrderID_PROJECT.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_PROJECT.IsNull) then
  begin
    qProj.Locate('ID_PROJECT', qCH_REQNEW_PROJECT.AsInteger, []);
    cbProj.Checked := True;
  end
  else
    cbProj.Checked := false;
  lcbProj.Enabled := cbProj.Checked;
  lcbProj.KeyValue := qProjID_PROJECT.AsInteger;

  lcbAg.Enabled := cbAg.Checked;
  if kop = 1 then
    qAgent.Locate('ID_ITEM', qOrderID_AGENT.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_AGENT.IsNull) then
  begin
    qAgent.Locate('ID_ITEM', qCH_REQNEW_AGENT.AsInteger, []);
    cbAg.Checked := True;
  end
  else
    cbAg.Checked := false;
  lcbAg.Enabled := cbAg.Checked;
  lcbAg.KeyValue := qAgentID_ITEM.AsInteger;

  lcbProduct.Enabled := cbProduct.Checked;
  if kop = 1 then
    qProduct.Locate('ID_ITEM', qOrderID_PRODUCT.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_PRODUCT.IsNull) then
  begin
    qProduct.Locate('ID_ITEM', qCH_REQNEW_PRODUCT.AsInteger, []);
    cbProduct.Checked := True;
  end
  else
    cbProduct.Checked := false;
  lcbProduct.Enabled := cbProduct.Checked;
  lcbProduct.KeyValue := qProductID_ITEM.AsInteger;

  lcbOrd_Type.Enabled := cbOrd_Type.Checked;
  if kop = 1 then
    qOrd_Type.Locate('ID_TYPE', qOrderID_CPTYPE.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_ORD_TYPE.IsNull) then
  begin
    qOrd_Type.Locate('ID_TYPE', qCH_REQNEW_ORD_TYPE.AsInteger, []);
    cbOrd_Type.Checked := True;
  end
  else
    cbOrd_Type.Checked := false;

  lcbOrd_Type.Enabled := cbOrd_Type.Checked;
  lcbOrd_Type.KeyValue := qOrd_TypeID_TYPE.AsInteger;

  lcbLid.Enabled := cbLid.Checked;
  if kop = 1 then
    qLid.Locate('ID_ORDER', qOrderLID.AsInteger, []);
  if (kop = 2) and (not qCH_REQNEW_LID.IsNull) then
  begin
    qLid.Locate('ID_ORDER', qCH_REQNEW_LID.AsInteger, []);
    cbLid.Checked := True;
  end
  else
    cbLid.Checked := false;
  lcbLid.Enabled := cbLid.Checked;
  lcbLid.KeyValue := qLidID_ORDER.AsInteger;

end;

procedure TfmKCH_REQ.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Kop := 0;
  C_ORDER := 0;
  CH_REQ := 0;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
  pc1.ActivePage := ts1;
end;

procedure TfmKCH_REQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qOrder.Close;
  qCH_REQ.Close;
  qPROD.Close;
  qTYPPROD.Close;
  qDOC.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmKCH_REQ.FormShow(Sender: TObject);
begin
  p0.Visible := not (Kop = 0);
  with qOrder do
  begin
    Close;
    ParamByName('id_order').AsInteger := C_ORDER;
    Open;
  end;
  with qCH_REQ do
  begin
    Close;
    ParamByName('id_request').AsInteger := CH_REQ;
    Open;
  end;
  with qPROD do
  begin
    Close;
    Open;
  end;
  with qTYPPROD do
  begin
    Close;
    Open;
  end;
  with qDOC do
  begin
    Close;
    ParamByName('id_project').AsInteger := qOrderID_PROJECT.AsInteger;
    Open;
  end;
  with qPROJ do
  begin
    Close;
    Open;
  end;
  with qAgent do
  begin
    Close;
    Open;
  end;
  with qProduct do
  begin
    Close;
    Open;
  end;
  with qOrd_Type do
  begin
    Close;
    Open;
  end;
  with qLid do
  begin
    Close;
    Open;
  end;
  with qCur do
  begin
    Close;
    Open;
  end;


  
  // привязка полей

  lcbCur.KeyValue     := qOrderID_CURRENCY.AsInteger;
  lcbAg.KeyValue      := qOrderID_AGENT.AsInteger;
  lcbProj.KeyValue    := qOrderID_PROJECT.AsInteger;
  lcbProduct.KeyValue := qOrderID_PRODUCT.AsInteger;
  lcb1.KeyValue       := qOrderID_CPROD.AsInteger;
  lcb2.KeyValue       := qOrderID_CPTYPE.AsInteger;
  lcbOrd_Type.KeyValue := qOrderORD_TYPE.AsInteger;
  if qOrderLID.IsNull then lcbLid.KeyValue := null
  else lcbLid.KeyValue := qOrderLID.AsInteger;
  IniControl;
 Screen.Cursor := crDefault;
end;

procedure TfmKCH_REQ.cb1Click(Sender: TObject);
begin
  ed1.Enabled := cb1.Checked;
  if cb1.Checked then
  begin
    ed1.Clear;
    ed1.SetFocus;
  end
  else
    ed1.Text := qOrderAMOUNT.AsString;
end;

procedure TfmKCH_REQ.bb2Click(Sender: TObject);
begin
  fmKCH_REQ.Close;
end;

procedure TfmKCH_REQ.bb1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select ID_REQ from WRITE_ORD_CH_REQUEST (:id_request, :id_order,');
    Add(':status, :id_manager, :descript, :reason, :old_amount, :new_amount,');
    Add(':old_price, :new_price, :old_summa, :new_summa, :old_ptype,:new_ptype,');
    Add(':old_base_doc, :new_base_doc, :old_prod, :new_prod, :id_doc,');
    Add(':old_project, :new_project,');
    Add(':old_product, :new_product, :old_currency, :new_currency, :old_agent, :new_agent,');
    Add(':old_estimate, :new_estimate, :old_ord_type, :new_ord_type, :old_lid,:new_lid,');
    Add(':old_d_open, :new_d_open, :old_def_sum, :new_def_sum, ');
    Add(':old_manager_margin,:new_manager_margin, :old_delivery_sum, :new_delivery_sum,');
    Add(' :old_def_delivery,:new_def_delivery, :old_plan_cost_price, :new_plan_cost_price)');
    ParamByName('id_order').AsInteger := C_ORDER;
    if qCH_REQID_MANAGER.IsNull then
      ParamByName('id_manager').AsInteger := SysVars.RegTN
    else
      ParamByName('id_manager').AsInteger := qCH_REQID_MANAGER.AsInteger;
    ParamByName('status').Clear;
    if qCH_REQSTATUS.AsInteger > 0 then
      ParamByName('status').AsInteger := qCH_REQSTATUS.AsInteger;
    ParamByName('reason').AsString := m1.Text;
    ParamByName('descript').AsString := m2.Text;
    // Количество
    if cb1.Checked then
    begin
      ParamByName('old_amount').AsFloat := qOrderAMOUNT.AsFloat;
      ParamByName('new_amount').AsString := ed1.Text;
    end
    else
    begin
      ParamByName('old_amount').AsFloat := qOrderAMOUNT.AsFloat; //.Clear;
      ParamByName('new_amount').Clear;
    end;
    try
      // Сумма
      if cb2.Checked then
      begin
        ParamByName('old_price').AsFloat := qOrderPRICE.AsFloat;
        ParamByName('new_price').AsFloat := StrToFloat(ed2.Text);
      end
      else
      begin
        ParamByName('old_price').AsFloat := qOrderPRICE.AsFloat; //.Clear;
        ParamByName('new_price').Clear;
      end;
      // Услуги (сумма)
      if cb3.Checked then
      begin
        ParamByName('old_summa').AsFloat := qOrderPRICEA.AsFloat;
        ParamByName('new_summa').AsFloat := StrToFloat(ed3.Text);
      end
      else
      begin
        ParamByName('old_summa').AsFloat := qOrderPRICEA.AsFloat; //.Clear;
        ParamByName('new_summa').Clear;
      end;
      // Производство
      if cb4.Checked then
      begin
        ParamByName('old_prod').AsInteger := qOrderID_CPROD.AsInteger;
        ParamByName('new_prod').AsInteger := lcb1.KeyValue;
      end
      else
      begin
        ParamByName('old_prod').AsInteger := qOrderID_CPROD.AsInteger; //.Clear;
        ParamByName('new_prod').Clear;
      end;
      // Тип продукции
      if cb5.Checked then
      begin
        ParamByName('old_ptype').AsInteger := qOrderID_CPTYPE.AsInteger;
        ParamByName('new_ptype').AsInteger := lcb2.KeyValue;
      end
      else
      begin
        ParamByName('old_ptype').AsInteger := qOrderID_CPTYPE.AsInteger;
        //.Clear;
        ParamByName('new_ptype').Clear;
      end;
      // Документ-основание
      if cb6.Checked then
      begin
        ParamByName('old_base_doc').AsInteger := qOrderID_DOC.AsInteger;
        ParamByName('new_base_doc').AsInteger := lcb3.KeyValue;
      end
      else
      begin
        ParamByName('old_base_doc').AsInteger := qOrderID_DOC.AsInteger; //Clear;
        ParamByName('new_base_doc').Clear;
      end;
      // Приложение
      if qCH_REQID_DOC.IsNull then
        ParamByName('id_doc').Clear
      else
        ParamByName('id_doc').AsInteger := qCH_REQID_DOC.AsInteger;
      //Смета
      if cbEst.Checked then
      begin
        ParamByName('old_estimate').AsInteger := qOrderID_ESTIMATE.AsInteger;
        ParamByName('new_estimate').AsInteger := StrToInt(edEst.Text);
      end
      else
      begin
        ParamByName('old_estimate').AsInteger := qOrderID_ESTIMATE.AsInteger;
        //Clear;
        ParamByName('new_estimate').Clear;
      end;
      // Плановая Сумма
      if cbSumPL.Checked then
      begin
        ParamByName('old_PLAN_COST_PRICE').AsFloat :=
          qOrderPLAN_COST_PRICE.AsFloat;
        ParamByName('new_PLAN_COST_PRICE').AsFloat := StrToFloat(edSumPL.Text);
      end
      else
      begin
        ParamByName('old_PLAN_COST_PRICE').AsFloat :=
          qOrderPLAN_COST_PRICE.AsFloat; //Clear;
        ParamByName('new_PLAN_COST_PRICE').Clear;
      end;
      // Наценка менеджера
      if cbProc.Checked then
      begin
        ParamByName('old_MANAGER_MARGIN').AsFloat :=
          qOrderMANAGER_MARGIN.AsFloat;
        ParamByName('new_MANAGER_MARGIN').AsFloat := StrToFloat(edProc.Text);
      end
      else
      begin
        ParamByName('old_MANAGER_MARGIN').AsFloat :=
          qOrderMANAGER_MARGIN.AsFloat; //Clear;
        ParamByName('new_MANAGER_MARGIN').Clear;
      end;
      // сумма деф
      if cbSum_Def.Checked then
      begin
        ParamByName('old_DEF_SUM').AsFloat := qOrderDEF_SUM.AsFloat;
        ParamByName('new_DEF_SUM').AsFloat := StrToFloat(edSum_Def.Text);
      end
      else
      begin
        ParamByName('old_DEF_SUM').AsFloat := qOrderDEF_SUM.AsFloat; //Clear;
        ParamByName('new_DEF_SUM').Clear;
      end;

      // доставка деф
      if cbDeliv_Def.Checked then
      begin
        ParamByName('old_DEF_DELIVERY').AsFloat := qOrderDEF_DELIVERY.AsFloat;
        ParamByName('new_DEF_DELIVERY').AsFloat := StrToFloat(edDeliv_Def.Text);
      end
      else
      begin
        ParamByName('old_DEF_DELIVERY').AsFloat := qOrderDEF_DELIVERY.AsFloat;
        //Clear;
        ParamByName('new_DEF_DELIVERY').Clear;
      end;
      // доставка
      if cbDeliv.Checked then
      begin
        ParamByName('old_DELIVERY_SUM').AsFloat := qOrderDELIVERY_SUM.AsFloat;
        ParamByName('new_DELIVERY_SUM').AsFloat := StrToFloat(edDeliv.Text);
      end
      else
      begin
        ParamByName('old_DELIVERY_SUM').AsFloat := qOrderDELIVERY_SUM.AsFloat;
        //Clear;
        ParamByName('new_DELIVERY_SUM').Clear;
      end;
      // Валюта
      if cbCur.Checked then
      begin
        ParamByName('old_CURRENCY').AsInteger := qOrderID_CURRENCY.AsInteger;
        ParamByName('new_CURRENCY').AsInteger := lcbCur.KeyValue;
      end
      else
      begin
        ParamByName('old_CURRENCY').AsInteger := qOrderID_CURRENCY.AsInteger;
        //Clear;
        ParamByName('new_CURRENCY').Clear;
      end;
      // проект
      if cbProj.Checked then
      begin
        ParamByName('old_PROJECT').AsInteger := qOrderID_PROJECT.AsInteger;
        ParamByName('new_PROJECT').AsInteger := lcbProj.KeyValue;
      end
      else
      begin
        ParamByName('old_PROJECT').AsInteger := qOrderID_PROJECT.AsInteger;
        //Clear;
        ParamByName('new_PROJECT').Clear;
      end;
      // агент
      if cbAg.Checked then
      begin
        ParamByName('old_AGENT').AsInteger := qOrderID_AGENT.AsInteger;
        ParamByName('new_AGENT').AsInteger := lcbAg.KeyValue;
      end
      else
      begin
        ParamByName('old_AGENT').AsInteger := qOrderID_AGENT.AsInteger; //Clear;
        ParamByName('new_AGENT').Clear;
      end;
      // продукт
      if cbProduct.Checked then
      begin
        ParamByName('old_PRODUCT').AsInteger := qOrderID_PRODUCT.AsInteger;
        ParamByName('new_PRODUCT').AsInteger := lcbProduct.KeyValue;
      end
      else
      begin
        ParamByName('old_PRODUCT').AsInteger := qOrderID_PRODUCT.AsInteger;
        //Clear;
        ParamByName('new_PRODUCT').Clear;
      end;
      // тип заказа
      if cbOrd_Type.Checked then
      begin
        ParamByName('old_ord_type').AsInteger := qOrderORD_TYPE.AsInteger;
        ParamByName('new_ord_type').AsInteger := lcbOrd_Type.KeyValue;
      end
      else
      begin
        ParamByName('old_ord_type').AsInteger := qOrderORD_TYPE.AsInteger;
        //Clear;
        ParamByName('new_ord_type').Clear;
      end;
      // родитель заказа
      if cbLid.Checked then
      begin
        ParamByName('old_LID').AsInteger := qOrderLID.AsInteger;
        ParamByName('new_LID').AsInteger := lcbLid.KeyValue;
      end
      else
      begin
        ParamByName('old_LID').AsInteger := qOrderLID.AsInteger; //Clear;
        ParamByName('new_LID').Clear;
      end;
    except
      MsgError('Ошибка в значениях параметров', 'Проверка данных');
      exit;
    end;
    case Kop of
      1:
        begin
          ParamByName('id_request').Clear;
        end;
      2:
        begin
          ParamByName('id_request').AsInteger := CH_REQ;
        end;
    end;
    try
      Open;
      CH_REQ := FieldByName('ID_REQ').AsInteger;
      if Transaction.Active then
        Transaction.Commit;
    except

      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  Screen.Cursor := crDefault;
  fmKCH_REQ.Close;
end;

procedure TfmKCH_REQ.cb2Click(Sender: TObject);
begin
  ed2.Enabled := cb2.Checked;
  if cb2.Checked then
  begin
    ed2.Clear;
    ed2.SetFocus;
  end
  else
    ed2.Text := qOrderPRICE.AsString;
end;

procedure TfmKCH_REQ.cb3Click(Sender: TObject);
begin
  ed3.Enabled := cb3.Checked;
  if cb3.Checked then
  begin
    ed3.Clear;
    ed3.SetFocus;
  end
  else
    ed3.Text := qOrderPRICEA.AsString;
end;

procedure TfmKCH_REQ.cb4Click(Sender: TObject);
begin
  lcb1.Enabled := cb4.Checked;
end;

procedure TfmKCH_REQ.cb5Click(Sender: TObject);
begin
  lcb2.Enabled := cb5.Checked;
end;

procedure TfmKCH_REQ.cb6Click(Sender: TObject);
begin
  lcb3.Enabled := cb6.Checked;
end;

procedure TfmKCH_REQ.qOrderBeforeOpen(DataSet: TDataSet);
begin
  with qOrder, qOrder.SQL do
  begin
    close;
    clear;
    add('select p.id_order, p.n_order, p.name, p.id_doc,');
    add('p.amount,');
    add('p.price,');
    add('(select nds_val from get_nds_sum(p.price,1)) price_bez_nds,');
    add('p.pricea,');
    add('(select nds_val from get_nds_sum(p.pricea,1)) pricea_bez_nds,');
    add('p.id_cptype,');
    add('p.id_cprod, p.id_agent, p.status, r.id_p,');
    add('i.name agent, r.fio, pt.name typeprod,');
    add('a.name prod, v.name nstatus, c.name ncurr,p.id_project,');
    add('p.id_product,p.id_currency,p.id_estimate,');
    add('p.lid,p.d_open,p.def_sum,p.manager_margin,p.delivery_sum,');
    add('p.def_delivery,');
    add('p.plan_cost_price, ');
    add('(select nds_val from get_nds_sum(p.plan_cost_price,1)) plan_cost_price_bez_nds, ');
    add('p.ord_type,ot.name name_ord_type,');
    add('ii.name name_product, pr.name name_project');
    if fmMain.S19 <> 1 then
      add(',d.name ndoc')
    else
      add(',cast('''' as varchar(64)) ndoc');
    add('from project_ords p');
    add('join project_ords_state s on s.id_order = p.id_order and s.id_ord_event = 20 ');
    add('join projects pr on pr.id_project = p.id_project');
    add('join items i on i.id_item = p.id_agent');
    add('join items ii on ii.id_item = p.id_product');
    add('left join personnel r on r.id_p = s.id_fact ');
    add('join ptypes pt on p.id_cptype = pt.id_ptype');
    add('join prod_areas a on a.id_p_area = p.id_cprod ');
    add('join ord_events v on v.status = p.status ');
    add('join currency c on c.id_currency = p.id_currency ');
    add('left join ord_types ot on ot.id_type = p.ord_type');
    if fmMain.S19 <> 1 then
      add('join project_docs d on d.id_project_doc = p.id_doc');
    add('where p.id_order = :id_order');
    ParamByName('id_order').AsInteger := C_ORDER;
    // ShowMessage(text)
  end;

end;

procedure TfmKCH_REQ.cbEstClick(Sender: TObject);
begin
  edEst.Enabled := cbEst.Checked;
  if cbEst.Checked then
  begin
    edEst.Clear;
    edEst.SetFocus;
  end
  else
    edEst.Text := qOrderID_ESTIMATE.AsString;

end;

procedure TfmKCH_REQ.cbSumPLClick(Sender: TObject);
begin
  edSumPL.Enabled := cbSumPL.Checked;
  if cbSumPL.Checked then
  begin
    edSumPL.Clear;
    edSumPL.SetFocus;
  end
  else
    edSumPL.Text := qOrderPLAN_COST_PRICE.AsString;

end;

procedure TfmKCH_REQ.cbProcClick(Sender: TObject);
begin
  edProc.Enabled := cbProc.Checked;
  if cbProc.Checked then
  begin
    edProc.Clear;
    edProc.SetFocus;
  end
  else
    edProc.Text := qOrderMANAGER_MARGIN.AsString;

end;

procedure TfmKCH_REQ.cbDeliv_DefClick(Sender: TObject);
begin
  edDeliv_Def.Enabled := cbDeliv_Def.Checked;
  if cbDeliv_Def.Checked then
  begin
    edDeliv_Def.Clear;
    edDeliv_Def.SetFocus;
  end
  else
    edDeliv_Def.Text := qOrderDEF_DELIVERY.AsString;

end;

procedure TfmKCH_REQ.cbSum_DefClick(Sender: TObject);
begin
  edSum_Def.Enabled := cbSum_Def.Checked;
  if cbSum_Def.Checked then
  begin
    edSum_Def.Clear;
    edSum_Def.SetFocus;
  end
  else
    edSum_Def.Text := qOrderDEF_SUM.AsString;

end;

procedure TfmKCH_REQ.cbDelivClick(Sender: TObject);
begin
  edDeliv.Enabled := cbDeliv.Checked;
  if cbDeliv.Checked then
  begin
    edDeliv.Clear;
    edDeliv.SetFocus;
  end
  else
    edDeliv.Text := qOrderDELIVERY_SUM.AsString;

end;

procedure TfmKCH_REQ.cbCurClick(Sender: TObject);
begin
  lcbCur.Enabled := cbCur.Checked;
end;

procedure TfmKCH_REQ.cbProjClick(Sender: TObject);
begin
  lcbProj.Enabled := cbProj.Checked;
end;

procedure TfmKCH_REQ.cbAgClick(Sender: TObject);
begin
 lcbAg.Enabled := cbAg.Checked;
end;

procedure TfmKCH_REQ.cbProductClick(Sender: TObject);
begin
 lcbProduct.Enabled := cbProduct.Checked;
end;

procedure TfmKCH_REQ.cbOrd_TypeClick(Sender: TObject);
begin
 lcbOrd_Type.Enabled := cbOrd_Type.Checked;
end;

procedure TfmKCH_REQ.cbLidClick(Sender: TObject);
begin
 lcbLid.Enabled := cbLid.Checked;
end;

end.
