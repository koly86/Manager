unit unCH_REQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unMainForm, ShrFunc, ComCtrls, ToolWin, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls, Grids, DBGridEh, Mask, DBCtrlsEh,
  DBLookupEh, StdCtrls, Menus, frxClass, frxDBSet;

type
  TfmCH_REQ = class(TMainForm)
    p1: TPanel;
    clb1: TCoolBar;
    tlb1: TToolBar;
    tlb2: TToolBar;
    tb0: TToolButton;
    qC_REQ: TIBQuery;
    dsC_REQ: TDataSource;
    qC_REQID_REQUEST: TIntegerField;
    qC_REQID_ORDER: TIntegerField;
    qC_REQSTATUS: TIntegerField;
    qC_REQD_MANAGER: TDateTimeField;
    qC_REQID_MANAGER: TIntegerField;
    qC_REQD_HEAD: TDateTimeField;
    qC_REQID_HEAD: TIntegerField;
    qC_REQD_ACC: TDateTimeField;
    qC_REQID_ACC: TIntegerField;
    qC_REQD_FIN: TDateTimeField;
    qC_REQID_FIN: TIntegerField;
    qC_REQD_CONFIRM: TDateTimeField;
    qC_REQID_CONFIRM: TIntegerField;
    qC_REQD_WORK: TDateTimeField;
    qC_REQID_WORK: TIntegerField;
    qC_REQD_CENTER_WORK: TDateTimeField;
    qC_REQID_CENTER_WORK: TIntegerField;
    qC_REQDESCRIPT: TMemoField;
    qC_REQREASON: TMemoField;
    qC_REQOLD_AMOUNT: TFloatField;
    qC_REQNEW_AMOUNT: TFloatField;
    qC_REQOLD_PRICE: TFloatField;
    qC_REQNEW_PRICE: TFloatField;
    qC_REQOLD_SUMMA: TFloatField;
    qC_REQNEW_SUMMA: TFloatField;
    qC_REQOLD_PTYPE: TIntegerField;
    qC_REQNEW_PTYPE: TIntegerField;
    qC_REQOLD_BASE_DOC: TIntegerField;
    qC_REQNEW_BASE_DOC: TIntegerField;
    qC_REQOLD_PROD: TIntegerField;
    qC_REQNEW_PROD: TIntegerField;
    qC_REQID_DOC: TIntegerField;
    qC_REQID_REASON: TIntegerField;
    qC_REQN_ORDER: TIBStringField;
    qC_REQNAME: TIBStringField;
    qC_REQMANAGER: TIBStringField;
    qC_REQFIO_CONFIRM: TIBStringField;
    dbg1: TDBGridEh;
    dbn1: TDBNavigator;
    Label32: TLabel;
    ed1: TEdit;
    tb5: TToolButton;
    tb6: TToolButton;
    ToolButton12: TToolButton;
    Label5: TLabel;
    lcb1: TDBLookupComboboxEh;
    qMAN: TIBQuery;
    dsMAN: TDataSource;
    p2: TPanel;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ToolButton1: TToolButton;
    cb1: TCheckBox;
    Label1: TLabel;
    lcb2: TDBLookupComboboxEh;
    ts3: TTabSheet;
    qOrder: TIBQuery;
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
    qOrderNCURR: TIBStringField;
    qOrderID_DOC: TIntegerField;
    qOrderNDOC: TIBStringField;
    qOrderID_PROJECT: TIntegerField;
    dsOrder: TDataSource;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText10: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label26: TLabel;
    DBText31: TDBText;
    DBText32: TDBText;
    qCH_REQ: TIBQuery;
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
    qCH_REQACC: TIBStringField;
    qCH_REQCONF: TIBStringField;
    qCH_REQFIN: TIBStringField;
    qCH_REQHEAD: TIBStringField;
    qCH_REQFWORK: TIBStringField;
    qCH_REQCWORK: TIBStringField;
    dsCH_REQ: TDataSource;
    qOrds: TIBQuery;
    dsOrds: TDataSource;
    qOrdsID_ORDER: TIntegerField;
    qOrdsN_ORDER: TIBStringField;
    qOrdsNAME: TIBStringField;
    qMANID_P: TIntegerField;
    qMANFIO: TIBStringField;
    tbh1: TToolButton;
    ToolButton3: TToolButton;
    tb8: TToolButton;
    tbh2: TToolButton;
    ToolButton7: TToolButton;
    ppm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    Label20: TLabel;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
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
    qC_REQNSTATUS: TStringField;
    DBDCH_REQ: TfrxDBDataset;
    Label13: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    p3: TPanel;
    p4: TPanel;
    p12: TPanel;
    lb16: TLabel;
    dbt12: TDBText;
    dbt14: TDBText;
    p5: TPanel;
    DBMemo1: TDBMemo;
    p6: TPanel;
    Label25: TLabel;
    p8: TPanel;
    lb4: TLabel;
    dbt3: TDBText;
    dbt4: TDBText;
    p7: TPanel;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    dbt1: TDBText;
    dbt2: TDBText;
    p9: TPanel;
    lb7: TLabel;
    dbt5: TDBText;
    dbt6: TDBText;
    p11: TPanel;
    p10: TPanel;
    lb10: TLabel;
    dbt7: TDBText;
    dbt8: TDBText;
    dbt11: TDBText;
    dbt13: TDBText;
    DBDOrder: TfrxDBDataset;
    qREQ_TP: TIBQuery;
    dsREQ_TP: TDataSource;
    DBDREQ_TP: TfrxDBDataset;
    qREQ_TPOP: TIBStringField;
    qREQ_TPNOP: TIBStringField;
    qREQ_TPOTP: TIBStringField;
    qREQ_TPNTP: TIBStringField;
    qREQ_TPOBD: TIBStringField;
    qREQ_TPNBD: TIBStringField;
    rREQ: TfrxReport;
    ppm2: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    Label14: TLabel;
    Label23: TLabel;
    cmb1: TComboBox;
    cb2: TCheckBox;
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
    qCH_REQO_AGENT: TIBStringField;
    qCH_REQN_AGENT: TIBStringField;
    qCH_REQO_PRODUCT: TIBStringField;
    qCH_REQN_PRODUCT: TIBStringField;
    qCH_REQO_PROJECT: TIBStringField;
    qCH_REQN_PROJECT: TIBStringField;
    qCH_REQO_CUR: TIBStringField;
    qCH_REQN_CUR: TIBStringField;
    qCH_REQO_ORD_TYPE: TIBStringField;
    qCH_REQN_ORD_TYPE: TIBStringField;
    qCH_REQN_NAME_ORDER: TIBStringField;
    qCH_REQN_N_ORDER: TIBStringField;
    qCH_REQO_NAME_ORDER: TIBStringField;
    qCH_REQO_N_ORDER: TIBStringField;
    Label24: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    Label29: TLabel;
    DBText33: TDBText;
    DBText34: TDBText;
    DBMemo2: TDBMemo;
    Splitter2: TSplitter;
    Panel2: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    DBText35: TDBText;
    DBText36: TDBText;
    Label37: TLabel;
    DBText37: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    Label40: TLabel;
    DBText41: TDBText;
    DBText42: TDBText;
    Panel3: TPanel;
    Label43: TLabel;
    DBText43: TDBText;
    DBText44: TDBText;
    Panel4: TPanel;
    Label46: TLabel;
    DBText45: TDBText;
    DBText46: TDBText;
    Panel5: TPanel;
    Label49: TLabel;
    DBText47: TDBText;
    DBText48: TDBText;
    Label52: TLabel;
    DBText49: TDBText;
    DBText50: TDBText;
    lb13: TLabel;
    dbt9: TDBText;
    dbt10: TDBText;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Label55: TLabel;
    DBText51: TDBText;
    DBText52: TDBText;
    DBText53: TDBText;
    DBText54: TDBText;
    qC_REQFIO_ACC: TIBStringField;
    qC_REQFIO_FIN: TIBStringField;
    qC_REQFIO_HEAD: TIBStringField;
    cbPrn: TCheckBox;
    qC_REQFIO_REJECT: TIBStringField;
    qC_REQID_REJECT: TIntegerField;
    qC_REQD_REJECT: TDateTimeField;
    tbRej: TToolButton;
    tbDerej: TToolButton;
    qCH_REQNEW_DEF_SUM_S: TIBStringField;
    qCH_REQNEW_AMOUNT_S: TIBStringField;
    qCH_REQNEW_PRICE_S: TIBStringField;
    qCH_REQNEW_SUMMA_S: TIBStringField;
    qCH_REQNEW_DELIVERY_SUM_S: TIBStringField;
    qCH_REQNEW_DEF_DELIVERY_S: TIBStringField;
    qCH_REQNEW_PLAN_COST_PRICE_S: TIBStringField;
    qCH_REQNEW_MANAGER_MARGIN_S: TIBStringField;
    Label27: TLabel;
    DBText55: TDBText;
    Label28: TLabel;
    DBText56: TDBText;
    qOrderPRICE_BEZ_NDS: TFloatField;
    qOrderPRICEA_BEZ_NDS: TFloatField;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    cb4: TCheckBox;
    ToolButton5: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tb0Click(Sender: TObject);
    procedure tbh1Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure qC_REQCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure tb8Click(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure tbh2Click(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure qC_REQAfterScroll(DataSet: TDataSet);
    procedure qOrderBeforeOpen(DataSet: TDataSet);
    procedure tbRejClick(Sender: TObject);
    procedure tbDerejClick(Sender: TObject);
    procedure cb4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
  private
    C_STS: integer;
    procedure OpenChReq;
    { Private declarations }
  public
    C_REQ, C_ORDER, C_MAN: integer;
    { Public declarations }
  end;

var
  fmCH_REQ: TfmCH_REQ;

implementation
uses unMain, unIS, unKCH_REQ;

const
  id_Form = 36;

{$R *.dfm}

procedure TfmCH_REQ.OpenChReq;
begin
  Screen.Cursor := crHourGlass;
  with qC_REQ, qC_REQ.SQL do
  begin
    if Active then
      C_REQ := qC_REQID_REQUEST.AsInteger;
    Close;
    Clear;
    Add('select c.id_request, c.id_order, c.status, c.d_manager, c.id_manager,');
    Add('c.d_head, c.id_head, c.d_acc, c.id_acc, c.d_fin, c.id_fin, c.d_confirm,');
    Add('c.id_confirm, c.d_work, c.id_work, c.d_center_work, c.id_center_work,');
    Add('c.descript, c.reason, c.old_amount, c.new_amount, c.old_price, c.new_price,');
    Add('c.old_summa, c.new_summa, c.old_ptype, c.new_ptype, c.old_base_doc,');
    Add('c.new_base_doc, c.old_prod, c.new_prod, c.id_doc, c.id_reason,');
    Add('p.n_order, p.name, r.fio manager, s.fio fio_confirm,s1.fio fio_acc,');
    Add('s2.fio fio_fin,s3.fio fio_head, s4.fio fio_reject, c.id_reject, c.d_reject');
    Add('from change_requests c join project_ords p');
    Add('on p.id_order = c.id_order');
    Add('left join personnel r  on r.id_p  = c.id_manager'); //Менеджер
    Add('left join personnel s1 on s1.id_p = c.id_acc'); //Руководитель
    Add('left join personnel s  on s.id_p  = c.id_confirm'); //ПЭО
    Add('left join personnel s2 on s2.id_p = c.id_fin'); //финюдир
    Add('left join personnel s3 on s3.id_p = c.id_head'); //дир.
    Add('left join personnel s4 on s4.id_p = c.id_reject'); //отверг.

    Add('where 1=1');
    case cmb1.ItemIndex of
      1: Add('and c.status is null');
      2: Add('and c.status = 10');
      3: Add('and c.status = 20');
      4: Add('and c.status = 30');
      5: Add('and c.status = 40');
      6: Add('and c.status = 50');
      7: Add('and c.status = 60');
      8: Add('and c.status = 70');
    end;
    case cb1.State of
      cbChecked: Add('and c.d_work is null');
      cbUnchecked: Add('and c.d_work is not null');
    end;
    // If cb1.Checked Then Add('and c.d_work is not null');

    case cb2.State of
      cbChecked: Add('and c.status is null');
      cbUnchecked: Add('and c.status is not null');
    end;
    // If cb2.Checked Then Add('and c.status is not null');
    if cb4.Checked then
      Add('and c.id_reject is null');

    if lcb1.KeyValue > 0 then
      Add('and c.id_manager = ' + IntToStr(lcb1.KeyValue));
    if lcb2.KeyValue > 0 then
      Add('and c.id_order = ' + IntToStr(lcb2.KeyValue));
    Add(OrdBy(dbg1));
    Open;
    Locate('id_request', C_REQ, []);
  end;
  qOrder.Close;
  qOrder.Open;
  qCH_REQ.Close;
  qCH_REQ.Open;
  qREQ_TP.Close;
  qREQ_TP.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCH_REQ.FormCreate(Sender: TObject);
begin
  C_MAN := 0;
  C_ORDER := 0;
  C_REQ := 0;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read('C_M', C_MAN);
    Read('C_ST', C_STS);
    ReadEh(dbg1, id_Form);
  finally
    Free;
  end;
  cmb1.ItemIndex := C_STS;
  if C_MAN = 0 then
    lcb1.KeyValue := null
  else
    lcb1.KeyValue := C_MAN;
  pc1.ActivePage := ts1;
end;

procedure TfmCH_REQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qC_REQ.Close;
  qMAN.Close;
  qOrder.Close;
  qCH_REQ.Close;
  qOrds.Close;
  qREQ_TP.Close;
  C_STS := cmb1.ItemIndex;
  if lcb1.KeyValue = null then
    C_MAN := 0
  else
    C_MAN := lcb1.KeyValue;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write('C_M', C_MAN);
    Write('C_ST', C_STS);
    Write(dbg1, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmCH_REQ.FormShow(Sender: TObject);
begin
  qMAN.Close;
  qMAN.Open;
  qMAN.FetchAll;
  qOrds.Close;
  qOrds.Open;
  qOrds.FetchAll;
  if C_MAN = 0 then
    lcb1.KeyValue := null
  else
    lcb1.KeyValue := C_MAN;
  OpenChReq;
end;

procedure TfmCH_REQ.tb0Click(Sender: TObject);
begin
  OpenChReq;
end;

procedure TfmCH_REQ.tbh1Click(Sender: TObject);
begin
  if qC_REQ.IsEmpty then
    exit;
  if ((fmMain.S19 = 1) and (qC_REQSTATUS.AsInteger > 20)) or
    ((fmMain.S19 <> 1) and (qC_REQSTATUS.AsInteger > 0)) then
  begin
    MsgInformation('Нельзя редактировать утвержденную заявку.',
      'Проверка статуса');
    exit;
  end;
  if not Assigned(fmKCH_REQ) then
    Application.CreateForm(TfmKCH_REQ, fmKCH_REQ);
  fmKCH_REQ.Kop := 2;
  fmKCH_REQ.CH_REQ := qC_REQID_REQUEST.AsInteger;
  fmKCH_REQ.C_ORDER := qC_REQID_ORDER.AsInteger;
  fmKCH_REQ.ShowModal;
  OpenChReq;
end;

procedure TfmCH_REQ.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenChReq;
end;

procedure TfmCH_REQ.qC_REQCalcFields(DataSet: TDataSet);
begin
  case qC_REQSTATUS.AsInteger of
    0: qC_REQNSTATUS.AsString := 'черновик';
    10: qC_REQNSTATUS.AsString := 'утверждена менеджером';
    20: qC_REQNSTATUS.AsString := 'утверждена руководителем менеджера';
    30: qC_REQNSTATUS.AsString := 'утверждена ПЭО';
    40: qC_REQNSTATUS.AsString := 'утверждена фин. менеджером';
    50: qC_REQNSTATUS.AsString := 'утверждена директором';
    60: qC_REQNSTATUS.AsString := 'выполнена в ИС';
    70: qC_REQNSTATUS.AsString := 'выполнена в центре';
  end;
end;

procedure TfmCH_REQ.FormActivate(Sender: TObject);
begin
  N2.Enabled := fmMain.UF102;
  N3.Enabled := fmMain.UF103;
  N4.Enabled := fmMain.UF104;
  N5.Enabled := fmMain.UF105;
  N6.Enabled := qC_REQSTATUS.AsInteger = 50;
  N7.Enabled := qC_REQSTATUS.AsInteger = 60;
  tbRej.Enabled := fmMain.UF119;
  tbDeRej.Enabled := fmMain.UF119;
end;

procedure TfmCH_REQ.N1Click(Sender: TObject);
var
  idS: string;
begin
  if qC_REQ.IsEmpty then
    exit;
  if qC_REQSTATUS.AsInteger > 0 then
  begin
    MsgInformation('Заявка уже утверждена.', 'Проверка статуса');
    exit;
  end;

  if dbg1.SelectedRows.Count = 0 then
    IDS := qC_REQID_REQUEST.AsString
  else
    IDS := SelectedID(dbg1, 'ID_REQUEST');
  if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
    ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
    ' будет утверждена менеджером. ' + SysVars.NReg + ' , утвердить заявку?',
    'Утверждение заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update CHANGE_REQUESTS set D_MANAGER = CURRENT_TIMESTAMP,');
      Add('ID_MANAGER = :idm, STATUS = 10');
      add('where ID_REQUEST in (' + IDS + ') and ID_REJECT is null');
      ParamByName('idm').AsInteger := SysVars.RegTN;
      // ParamByName('idr').Asstring := ids;
      try

        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenChReq;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
end;

procedure TfmCH_REQ.tb8Click(Sender: TObject);
var
  sn, i: integer;
begin
  if qC_REQ.IsEmpty then
    Exit;

  sn := dbg1.SelectedRows.Count;

  if dbg1.SelectedRows.Count = 0 then
  begin
    with qCH_REQ do
    begin
      Close;
      Open;
    end;
    {
    if prn = 0 then
    fr1.PrintOptions.ShowDialog := false;
  if pp = 0 then
    fr1.ShowReport;
  if pp = 1 then
  begin
    fr1.PrepareReport(true);
    fr1.Print;
  end;}

    if cbPrn.Checked then
    begin
      rREQ.PrintOptions.ShowDialog := false;
      rReq.PrepareReport(true);
        rREQ.Print;
    end
    else
      rREQ.ShowReport
  end
  else
    for i := 0 to sn - 1 do
    begin
      qC_REQ.GoToBookmark(pointer(dbg1.SelectedRows.Items[i]));

      with qCH_REQ do
      begin
        Close;
        Open;
      end;

      if cbPrn.Checked then
      begin
        rREQ.PrintOptions.ShowDialog := false;
        rReq.PrepareReport(true);
          rREQ.Print;
      end
      else
        rREQ.ShowReport
    end;
end;

procedure TfmCH_REQ.pc1Change(Sender: TObject);
begin
  {If pc1.ActivePage = ts2 Then begin
   // p7 - кол-во
   lb1.Enabled := not (qCH_REQOLD_AMOUNT.IsNull and qCH_REQNEW_AMOUNT.IsNull);
   lb2.Enabled := not qCH_REQOLD_AMOUNT.IsNull;
   lb3.Enabled := not qCH_REQNEW_AMOUNT.IsNull;
   dbt1.Enabled := not qCH_REQOLD_AMOUNT.IsNull;
   dbt2.Enabled := not qCH_REQNEW_AMOUNT.IsNull;
   // p8 - price
   lb4.Enabled := not (qCH_REQOLD_PRICE.IsNull and qCH_REQNEW_PRICE.IsNull);
   lb5.Enabled := not qCH_REQOLD_PRICE.IsNull;
   lb6.Enabled := not qCH_REQNEW_PRICE.IsNull;
   dbt3.Enabled := not qCH_REQOLD_PRICE.IsNull;
   dbt4.Enabled := not qCH_REQNEW_PRICE.IsNull;
   // p9 - pricea
   lb7.Enabled := not (qCH_REQOLD_SUMMA.IsNull and qCH_REQNEW_SUMMA.IsNull);
   lb8.Enabled := not qCH_REQOLD_SUMMA.IsNull;
   lb9.Enabled := not qCH_REQNEW_SUMMA.IsNull;
   dbt5.Enabled := not qCH_REQOLD_SUMMA.IsNull;
   dbt6.Enabled := not qCH_REQNEW_SUMMA.IsNull;
   // p10 - тип продукции
   lb10.Enabled := not (qCH_REQOLD_PTYPE.IsNull and qCH_REQNEW_PTYPE.IsNull);
   //lb11.Enabled := not qCH_REQOLD_PTYPE.IsNull;
  // lb12.Enabled := not qCH_REQNEW_PTYPE.IsNull;
   dbt7.Enabled := not qCH_REQOLD_PTYPE.IsNull;
   dbt8.Enabled := not qCH_REQNEW_PTYPE.IsNull;
   // p11 - производство
   lb13.Enabled := not (qCH_REQOLD_PROD.IsNull and qCH_REQNEW_PROD.IsNull);
  // lb14.Enabled := not qCH_REQOLD_PROD.IsNull;
  // lb15.Enabled := not qCH_REQNEW_PROD.IsNull;
   dbt9.Enabled := not qCH_REQOLD_PROD.IsNull;
   dbt10.Enabled := not qCH_REQNEW_PROD.IsNull;
   // p12 - документ - основание
   lb16.Enabled := not (qCH_REQOLD_BASE_DOC.IsNull and qCH_REQNEW_BASE_DOC.IsNull);
   lb17.Enabled := not qCH_REQOLD_BASE_DOC.IsNull;
   lb18.Enabled := not qCH_REQNEW_BASE_DOC.IsNull;
   dbt11.Enabled := not qCH_REQOLD_BASE_DOC.IsNull;
   dbt12.Enabled := not qCH_REQOLD_BASE_DOC.IsNull;
   dbt13.Enabled := not qCH_REQNEW_BASE_DOC.IsNull;
   dbt14.Enabled := not qCH_REQNEW_BASE_DOC.IsNull;
  end; }
end;

procedure TfmCH_REQ.tbh2Click(Sender: TObject);
begin
  if qC_REQ.IsEmpty then
    exit;
  if qC_REQSTATUS.AsInteger > 10 then
  begin
    MsgInformation('Нельзя удалить утвержденную заявку.', 'Проверка статуса');
    exit;
  end;
  if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
    ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
    ' будет удалена. ' + SysVars.NReg + ' , удалить заявку?',
    'Удаление заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('delete from CHANGE_REQUESTS where ID_REQUEST = :idr');
      ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenChReq;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
end;

procedure TfmCH_REQ.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_ORDER');
end;

procedure TfmCH_REQ.N2Click(Sender: TObject);
var
  IDS: string;
begin
  if qC_REQ.IsEmpty then
    exit;
  if qC_REQSTATUS.AsInteger > 19 then
  begin
    MsgInformation('Заявка уже утверждена.', 'Проверка статуса');
    exit;
  end;
  if dbg1.SelectedRows.Count = 0 then
    IDS := qC_REQID_REQUEST.AsString
  else
    IDS := SelectedID(dbg1, 'ID_REQUEST');
  if (qC_REQSTATUS.AsInteger < 10) and
    (MsgQuestion('Заявка еще не утверждена менеджером. Продолжить утверждение?',
    'Проверка статуса') = id_no) then
    exit;
  if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
    ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
    ' будет утверждена руководителем менеджера. ' + SysVars.NReg +
    ' , утвердить заявку?', 'Утверждение заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update CHANGE_REQUESTS set D_ACC = CURRENT_TIMESTAMP,');
      Add('ID_ACC = :idm, STATUS = 20');
      add('where ID_REQUEST in (' + IDS + ')  and ID_REJECT is null');
      ParamByName('idm').AsInteger := SysVars.RegTN;
      //ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenChReq;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
end;

procedure TfmCH_REQ.N3Click(Sender: TObject);
var
  IDS: string;
begin
  if qC_REQ.IsEmpty then
    exit;
  if qC_REQSTATUS.AsInteger > 29 then
  begin
    MsgInformation('Заявка уже утверждена.', 'Проверка статуса');
    exit;
  end;
  if dbg1.SelectedRows.Count = 0 then
    IDS := qC_REQID_REQUEST.AsString
  else
    IDS := SelectedID(dbg1, 'ID_REQUEST');
  if (qC_REQSTATUS.AsInteger < 20) and
    (MsgQuestion('Заявка еще не утверждена руководителем менеджера.' +
    ' Продолжить утверждение?', 'Проверка статуса') = id_no) then
    exit;
  if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
    ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
    ' будет утверждена ПЭО. ' + SysVars.NReg + ' , утвердить заявку?',
    'Утверждение заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update CHANGE_REQUESTS set D_CONFIRM = CURRENT_TIMESTAMP,');
      Add('ID_CONFIRM = :idm, STATUS = 30');
      add('where ID_REQUEST in (' + IDS + ') and ID_REJECT is null');
      ParamByName('idm').AsInteger := SysVars.RegTN;
      // ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenChReq;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
end;

procedure TfmCH_REQ.N4Click(Sender: TObject);
var
  i, sn: integer;
  flag: Boolean;
begin
  flag := True;
  if qC_REQ.IsEmpty then
    exit;
  sn := dbg1.SelectedRows.Count;
  for i := 0 to sn - 1 do
  begin
    qC_REQ.GoToBookmark(pointer(dbg1.SelectedRows.Items[i]));

    if qC_REQSTATUS.AsInteger > 39 then
    begin
      MsgInformation('Заявка № ' + qC_REQID_REQUEST.AsString +
        ' уже утверждена.', 'Проверка статуса');
      exit;
    end;
    if (qC_REQSTATUS.AsInteger < 30) and
      (MsgQuestion('Заявка еще не утверждена ПЭО.' +
      ' Продолжить утверждение?', 'Проверка статуса') = id_no) then
      exit;
    if sn = 1 then
      if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
        ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
        ' будет утверждена финансовым менеджером. ' + SysVars.NReg +
        ' , утвердить заявку?', 'Утверждение заявки') = id_yes then
        flag := true
      else
        flag := false;

    if flag then
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update CHANGE_REQUESTS set D_FIN = CURRENT_TIMESTAMP,');
        Add('ID_FIN = :idm, STATUS = 40');
        Add('where ID_REQUEST = :idr and ID_REJECT is null');
        ParamByName('idm').AsInteger := SysVars.RegTN;
        ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          if i = sn - 1 then
            OpenChReq;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
  end;
end;

procedure TfmCH_REQ.N5Click(Sender: TObject);
var
  i, sn: integer;
  flag: Boolean;
begin
  flag := True;
  if qC_REQ.IsEmpty then
    exit;
  sn := dbg1.SelectedRows.Count;
  for i := 0 to sn - 1 do
  begin
    qC_REQ.GoToBookmark(pointer(dbg1.SelectedRows.Items[i]));

    if qC_REQSTATUS.AsInteger > 49 then
    begin
      MsgInformation('Заявка' + qC_REQID_REQUEST.AsString + ' уже утверждена.',
        'Проверка статуса');
      exit;
    end;
    if (qC_REQSTATUS.AsInteger < 40) and
      (MsgQuestion('Заявка еще не утверждена финансовым менеджером.' +
      ' Продолжить утверждение?', 'Проверка статуса') = id_no) then
      exit;
    if sn = 1 then
      if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
        ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
        ' будет утверждена директором. ' + SysVars.NReg +
        ' , утвердить заявку?',
        'Утверждение заявки') = id_yes then
        flag := true
      else
        flag := false;
    if flag then
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update CHANGE_REQUESTS set D_HEAD = CURRENT_TIMESTAMP,');
        Add('ID_HEAD = :idm, STATUS = 50');
        Add('where ID_REQUEST = :idr and ID_REJECT is null');
        ParamByName('idm').AsInteger := SysVars.RegTN;
        ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          if i = sn - 1 then
            OpenChReq;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
  end;
end;

procedure TfmCH_REQ.dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  case qC_REQSTATUS.AsInteger of
    10: Background := clLime;
    20: Background := clBtnFace;
    30: Background := clInfoBk;
    40: Background := clSkyBlue;
    50: Background := clMoneyGreen;
    60, 70: Background := clScrollBar;
  end;
  if not qC_REQID_REJECT.IsNull then
    AFont.Style := [fsStrikeOut];

end;

procedure TfmCH_REQ.N6Click(Sender: TObject);
var
  i, sn: integer;
  flag: Boolean;
begin

  flag := True;
  if qC_REQ.IsEmpty then
    exit;
  sn := dbg1.SelectedRows.Count;
  for i := 0 to sn - 1 do
  begin
    qC_REQ.GoToBookmark(pointer(dbg1.SelectedRows.Items[i]));

    if qC_REQSTATUS.AsInteger > 59 then
    begin
      MsgInformation('Заявка ' + qC_REQID_REQUEST.AsString +
        ' уже выполнена в ИС.', 'Проверка статуса');
      exit;
    end;
    if fmMain.S19 = 1 then
      if (qC_REQSTATUS.AsInteger < 50) then
      begin
        MsgInformation('Заявка еще не утверждена директором.' +
          ' Выполнение изменений в ИС запрещено', 'Проверка статуса');
        exit;
      end
      else if (qC_REQSTATUS.AsInteger < 40) then
      begin
        MsgInformation('Заявка еще не утверждена финансовым менеджером.' +
          ' Выполнение изменений в ИС запрещено', 'Проверка статуса');
        exit;
      end;
    if sn = 1 then
      if MsgQuestion('По заявке № ' + qC_REQID_REQUEST.AsString +
        ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
        ' будет зафиксировано выполнение в ИС. ' + SysVars.NReg +
        ' , зафиксировать выполнение?', 'Выполнение в ИС') = id_yes then
        flag := true
      else
        flag := false;

    if flag then
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update CHANGE_REQUESTS set D_WORK = CURRENT_TIMESTAMP,');
        Add('ID_WORK = :idm, STATUS = 60');
        Add('where ID_REQUEST = :idr');
        ParamByName('idm').AsInteger := SysVars.RegTN;
        ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          if i = sn - 1 then
            OpenChReq;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
  end;
end;

procedure TfmCH_REQ.N7Click(Sender: TObject);
var
  i, sn: integer;
  flag: Boolean;
begin
  flag := True;
  if qC_REQ.IsEmpty then
    exit;
  sn := dbg1.SelectedRows.Count;
  for i := 0 to sn - 1 do
  begin
    qC_REQ.GoToBookmark(pointer(dbg1.SelectedRows.Items[i]));

    if qC_REQSTATUS.AsInteger > 69 then
    begin
      MsgInformation('Заявка' + qC_REQID_REQUEST.AsString +
        '  уже выполнена в центральной базе данных.',
        'Проверка статуса');
      exit;
    end;
    if (qC_REQSTATUS.AsInteger < 60) then
    begin
      MsgInformation('Заявка еще не выполнена в ИС.' +
        ' Выполнение изменений в центральной базе данных запрещено',
        'Проверка статуса');
      exit;
    end;
    if sn = 1 then
      if MsgQuestion('По заявке № ' + qC_REQID_REQUEST.AsString +
        ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
        ' будет зафиксировано выполнение в центральной базе данных. ' +
        SysVars.NReg + ' , зафиксировать выполнение?', 'Выполнение в ИС') =
        id_yes then
        flag := true
      else
        flag := false;

    if flag then
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update CHANGE_REQUESTS set D_CENTER_WORK = CURRENT_TIMESTAMP,');
        Add('ID_CENTER_WORK = :idm, STATUS = 70');
        Add('where ID_REQUEST = :idr');
        ParamByName('idm').AsInteger := SysVars.RegTN;
        ParamByName('idr').AsInteger := qC_REQID_REQUEST.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          if i = sn - 1 then
            OpenChReq;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
  end;
end;

procedure TfmCH_REQ.qC_REQAfterScroll(DataSet: TDataSet);
begin
  { if fmMain.S19 = 1 then
     N6.Enabled := qC_REQSTATUS.AsInteger = 50
   else
     N6.Enabled := qC_REQSTATUS.AsInteger = 40;
   N7.Enabled := qC_REQSTATUS.AsInteger = 60;   }
end;

procedure TfmCH_REQ.qOrderBeforeOpen(DataSet: TDataSet);
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
    add('p.def_delivery,p.plan_cost_price');
    if fmMain.S19 <> 1 then
      add(',d.name ndoc')
    else
      add(',cast('''' as varchar(64)) ndoc');
    add('from project_ords p');
    add('join project_ords_state s on s.id_order = p.id_order and s.id_ord_event = 20 ');
    add('join items i on i.id_item = p.id_agent');
    add('left join personnel r on r.id_p = s.id_fact ');
    add('join ptypes pt on p.id_cptype = pt.id_ptype');
    add('join prod_areas a on a.id_p_area = p.id_cprod ');
    add('join ord_events v on v.status = p.status ');
    add('join currency c on c.id_currency = p.id_currency ');
    if fmMain.S19 <> 1 then
      add('join project_docs d on d.id_project_doc = p.id_doc');
    add('where p.id_order = :id_order');
  end;

end;

procedure TfmCH_REQ.tbRejClick(Sender: TObject);
var
  IDS: string;
begin
  if dbg1.SelectedRows.Count = 0 then
    IDS := qC_REQID_REQUEST.AsString
  else
    IDS := SelectedID(dbg1, 'ID_REQUEST');
  if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
    ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
    ' будет отвергнута. ' + SysVars.NReg + ' , отвергнуть заявку?',
    'Изменение заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      close;
      clear;
      add('update change_requests set');
      add('id_reject = :idm, d_reject = current_date');
      add('where ID_REQUEST in (' + IDS + ')');
      ParamByName('idm').AsInteger := SysVars.RegTN;
      try

        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenChReq;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;

end;

procedure TfmCH_REQ.tbDerejClick(Sender: TObject);
var
  IDS: string;
begin

  IDS := SelectedID(dbg1, 'ID_REQUEST');
  if MsgQuestion('Заявка № ' + qC_REQID_REQUEST.AsString +
    ' на изменение данных в заказе - ' + qC_REQN_ORDER.AsString +
    ' будет восстановлена. ' + SysVars.NReg + ' , восстановить заявку?',
    'Изменение заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      close;
      clear;
      add('update change_requests set');
      add('id_reject = null, d_reject = null');
      add('where ID_REQUEST in (' + IDS + ')');
      // ParamByName('idm').AsInteger := SysVars.RegTN;
      try

        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenChReq;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;

end;

procedure TfmCH_REQ.cb4Click(Sender: TObject);
begin
  OpenChReq;
end;

procedure TfmCH_REQ.ToolButton5Click(Sender: TObject);
begin
  with dmiS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('execute procedure EDIT_REQUEST_ORDER(:id_request,:id_order)');
    ParamByName('id_request').AsInteger := qC_REQID_REQUEST.AsInteger;
    ParamByName('id_order').AsInteger := qC_REQID_ORDER.AsInteger;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      ShowMessage('Заявка обработана');
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

end.

