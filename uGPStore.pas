unit uGPStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, ExtCtrls, DB,
  IBCustomDataSet, Buttons, ComCtrls, IBQuery, Grids,shrfunc, unmain,
  DBSTrees, unMainForm;

type
  TfmGPStore = class(TMainForm)
    Panel1: TPanel;
    dbl1: TDBLookupComboboxEh;
    qStores: TIBQuery;
    dsStores: TDataSource;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    sbRfr: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    qStoresID_P_AREA: TIntegerField;
    qStoresNAME: TIBStringField;
    dbgGP: TDBGridEh;
    qGP: TIBQuery;
    dsGP: TDataSource;
    qGPID_OBJECT: TIntegerField;
    qGPNAME: TIBStringField;
    qGPUNIT1: TIBStringField;
    qGPID_BATCH: TIntegerField;
    qGPID_PROD_OPER: TIntegerField;
    qGPID_STEP: TIntegerField;
    qGPID_OBJECT_TYPE: TIntegerField;
    qGPID_PA_BILL: TIntegerField;
    qGPFACTOR: TFloatField;
    qGPAMOUNT: TIBBCDField;
    qGPAMOUNT2: TIBBCDField;
    qGPSUM_R: TIBBCDField;
    qGPOST: TIBBCDField;
    qGPCENA: TFloatField;
    qGPSUMMA: TFloatField;
    qGPID_ITEM: TIntegerField;
    qGPID_PROJECT: TIntegerField;
    qGPID_ORDER: TIntegerField;
    qGPN_ORDER: TIBStringField;
    qGPD_CLOSE: TDateField;
    qGPPR_NAME: TIBStringField;
    qGPN_ID_AREA: TIBStringField;
    qGPN_ID_OPERATION: TIBStringField;
    qGPN_ID_PA_TO: TIBStringField;
    qGPN_ID_PA_FROM: TIBStringField;
    qGPID_PA_TO: TIntegerField;
    qGPID_PA_FROM: TIntegerField;
    qGPID_PROD_TRAFF: TIntegerField;
    qGPDEC_NO: TIBStringField;
    qGPSUMMA_E: TFloatField;
    qGPCENA_E: TFloatField;
    qGPID_CURR_ORDER: TIntegerField;
    qGPCUR_ORDER: TIBStringField;
    qGPID_CURDEF: TIntegerField;
    qGPRATE: TFloatField;
    qGPID_EST_PEO: TIntegerField;
    qGPID_VERSION: TIntegerField;
    qGPIS_COMPL: TIntegerField;
    qGPLINK_ITEM: TIntegerField;
    qGPNAME_LINK_ITEM: TIBStringField;
    qGPID_AGENT: TIntegerField;
    qGPNAME_AGENT: TIBStringField;
    qGPFIO_MANAGER: TIBStringField;
    qGPREM_ORDER: TBlobField;
    qGPD_READY_ORDER: TDateField;
    qGPID_PA_STATE: TIntegerField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbgEhSell: TDBGridEh;
    dbgEhProd: TDBGridEh;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    dbgSpecSell: TDBGridEh;
    dbgShipSell: TDBGridEh;
    GroupBox6: TGroupBox;
    Splitter5: TSplitter;
    dbgShipProd: TDBGridEh;
    qProd: TIBQuery;
    dsEhProd: TDataSource;
    dtpFrom: TDBDateTimeEditEh;
    dtpTO: TDBDateTimeEditEh;
    Label5: TLabel;
    Label6: TLabel;
    qSellPos: TIBQuery;
    qSellPosID_ORDER_POS: TIntegerField;
    qSellPosID_ORDER: TIntegerField;
    qSellPosNAME: TIBStringField;
    qSellPosAMOUNT: TFloatField;
    qSellPosPRODUCED: TFloatField;
    qSellPosSHIPPED: TFloatField;
    qSellPosRECEIVE: TFloatField;
    qSellPosID_PRODUCT: TIntegerField;
    qSellPosID_C: TIntegerField;
    qSellPosD_FIX: TDateTimeField;
    qSellPosID_FIX: TIntegerField;
    qSellPosID_DOC: TIntegerField;
    qSellPosPRICE: TIBBCDField;
    qSellPosPRICEA: TIBBCDField;
    qSellPosID_CURRENCY: TIntegerField;
    qSellPosID_VERSION: TIntegerField;
    qSellPosID_ESTIMATE: TIntegerField;
    qSellPosID_UNIT: TIntegerField;
    qSellPossUMPRICE: TFloatField;
    qSellPosNDS: TFloatField;
    qSellPosS: TFloatField;
    qSellPosPRODNAME: TIBStringField;
    dsSellPos: TDataSource;
    qShipSell: TIBQuery;
    qShipSellID_PLAN_SHIPP: TIntegerField;
    qShipSellID_ORDER: TIntegerField;
    qShipSellD_PLANING: TDateField;
    qShipSellAMOUNT: TFloatField;
    qShipSellSUMMA: TFloatField;
    qShipSellPLAN_TYPE: TIntegerField;
    qShipSellD_FIX: TDateTimeField;
    qShipSellID_FIX: TIntegerField;
    qShipSellID_C: TIntegerField;
    qShipSellIN_PLAN: TIntegerField;
    qShipSellFLAG: TIntegerField;
    qShipSellADRESS: TMemoField;
    qShipSellkol_day: TIntegerField;
    qShipSellO_D: TDateField;
    qShipSellID_DELIVERY_TYPE: TIntegerField;
    qShipSellID_REGION: TIntegerField;
    qShipSellOBJ_TYPE: TIntegerField;
    qShipSellID_CAR_TYPE: TIntegerField;
    qShipSellWEIGHT: TFloatField;
    qShipSellDELIVERY_AMOUNT: TFloatField;
    qShipSellDELIVERY_COST: TFloatField;
    qShipSellOBJ_T: TIBStringField;
    qShipSellCAR_T: TIBStringField;
    qShipSellID_ORDER_POS: TIntegerField;
    qShipSellPOS_NAME: TIBStringField;
    qShipSellITEM_NAME: TIBStringField;
    dsShip_sell: TDataSource;
    qShipProd: TIBQuery;
    qShipProdID_PLAN_SHIPP: TIntegerField;
    qShipProdID_ORDER: TIntegerField;
    qShipProdD_PLANING: TDateField;
    qShipProdAMOUNT: TFloatField;
    qShipProdSUMMA: TFloatField;
    qShipProdPLAN_TYPE: TIntegerField;
    qShipProdD_FIX: TDateTimeField;
    qShipProdID_FIX: TIntegerField;
    qShipProdID_C: TIntegerField;
    qShipProdIN_PLAN: TIntegerField;
    qShipProdFLAG: TIntegerField;
    qShipProdADRESS: TMemoField;
    qShipProdkol_day: TIntegerField;
    qShipProdO_D: TDateField;
    qShipProdID_DELIVERY_TYPE: TIntegerField;
    qShipProdID_REGION: TIntegerField;
    qShipProdOBJ_TYPE: TIntegerField;
    qShipProdID_CAR_TYPE: TIntegerField;
    qShipProdWEIGHT: TFloatField;
    qShipProdDELIVERY_AMOUNT: TFloatField;
    qShipProdDELIVERY_COST: TFloatField;
    qShipProdOBJ_T: TIBStringField;
    qShipProdCAR_T: TIBStringField;
    qShipProdID_ORDER_POS: TIntegerField;
    qShipProdPOS_NAME: TIBStringField;
    qShipProdITEM_NAME: TIBStringField;
    dsShip_Prod: TDataSource;
    Panel6: TPanel;
    Splitter6: TSplitter;
    Panel7: TPanel;
    dbTr: TDBS_TreeView;
    Label7: TLabel;
    edFnd: TEdit;
    Panel8: TPanel;
    dbgGPState: TDBGridEh;
    qGpState: TIBQuery;
    dsGpState: TDataSource;
    qGpStateID_P_AREA: TIntegerField;
    qGpStateANAME: TIBStringField;
    qGpStateID_BATCH: TIntegerField;
    qGpStateID_ORDER: TIntegerField;
    qGpStateAMOUNT: TIBBCDField;
    qIns: TIBQuery;
    qGpStateOBJ_NAME: TIBStringField;
    qGpStateVNAME: TIBStringField;
    DBGridEh1: TDBGridEh;
    Splitter7: TSplitter;
    qVEr: TIBQuery;
    dsVer: TDataSource;
    qVErID_VERSION: TIntegerField;
    qVErNAME: TIBStringField;
    qGpStateFREE: TIBBCDField;
    qGpStateREZERV: TIBBCDField;
    qGpStateREZERVPONAKL: TIBBCDField;
    qGpStateID_PRODUCT: TIntegerField;
    qGpStateID_ORDER_POS: TIntegerField;
    qProdID_ORDER: TIntegerField;
    qProdN_ORDER: TIBStringField;
    qProdNAME: TIBStringField;
    qProdAMOUNT: TIBBCDField;
    qProdPRICE: TIBBCDField;
    qProdPRICEA: TIBBCDField;
    qProdDEF_SUM: TFloatField;
    qProdD_OPEN: TDateTimeField;
    qProdD_READY: TDateField;
    qProdD_CLOSE: TDateTimeField;
    qProdD_REJECT: TDateTimeField;
    qProdSTATUS: TIntegerField;
    qProdSTATNAME: TIBStringField;
    qProdD_FIX: TDateTimeField;
    qProdID_ESTIMATE: TIntegerField;
    qProdID_VERSION_PEO: TIntegerField;
    qProdID_VERSION: TIntegerField;
    qProdID_ESTIMATE_KD: TIntegerField;
    qProdID_BATCH: TIntegerField;
    qProdNPROJ: TIBStringField;
    qProdFIO: TIBStringField;
    qProdEST_TOTAL_SUM_PEO: TFloatField;
    qProdEST_TOTAL_SUM_KD: TFloatField;
    qProdSHIP: TFloatField;
    qProdRECEIVE: TFloatField;
    qProdPRODUSED: TFloatField;
    qProdBUCH_PROD_NAME: TIBStringField;
    qProdIS_RESERVE: TIntegerField;
    qProdNPROD: TIBStringField;
    pcProd: TPageControl;
    TabSheet2: TTabSheet;
    tsShippProd: TTabSheet;
    DBGridEh2: TDBGridEh;
    qProdShipp: TIBQuery;
    qProdShippN_ORDER: TIBStringField;
    qProdShippAMOUNT: TIBBCDField;
    qProdShippD_PLANING: TDateField;
    qProdShippAMOUNT1: TFloatField;
    qProdShippSUMMA: TFloatField;
    dsProdShipp: TDataSource;
    qProdShippID_BATCH: TIntegerField;
    pcSell: TPageControl;
    TabSheet4: TTabSheet;
    tsSellShipp: TTabSheet;
    dbgSellShipp: TDBGridEh;
    qSellOrds: TIBQuery;
    dsSellOrds: TDataSource;
    qSellOrdsN_ORDER: TIBStringField;
    qSellOrdsAMOUNT: TIBBCDField;
    qSellOrdsD_PLANING: TDateField;
    qSellOrdsAMPOS: TFloatField;
    qSellOrdsSUMMA: TFloatField;
    qSellOrdsNAME: TIBStringField;
    dsEhSell: TDataSource;
    qSell: TIBQuery;
    qSellID_ORDER: TIntegerField;
    qSellN_ORDER: TIBStringField;
    qSellNAME: TIBStringField;
    qSellPRICE: TIBBCDField;
    qSellPRICEA: TIBBCDField;
    qSellDEF_SUM: TFloatField;
    qSellD_OPEN: TDateTimeField;
    qSellD_READY: TDateField;
    qSellD_CLOSE: TDateTimeField;
    qSellD_REJECT: TDateTimeField;
    qSellSTATUS: TIntegerField;
    qSellSTATNAME: TIBStringField;
    qSellD_FIX: TDateTimeField;
    qSellID_BATCH: TIntegerField;
    qSellNPROJ: TIBStringField;
    qSellFIO: TIBStringField;
    qSellSHIP: TFloatField;
    qSellRECEIVE: TFloatField;
    qSellPRODUSED: TFloatField;
    qSellIS_RESERVE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure qGPBeforeOpen(DataSet: TDataSet);
    procedure dbgGPGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure sbRfrClick(Sender: TObject);
    procedure qSellPosCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qGpStateBeforeOpen(DataSet: TDataSet);
    procedure dbTrChange(Sender: TObject; Node: TTreeNode);
    procedure dbTrStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure qSellPosAfterScroll(DataSet: TDataSet);
  private
     dragobj : integer;
    procedure DoRestore(Sender: TObject);
    procedure FindInTree_Det(ItemID: integer);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGPStore: TfmGPStore;

implementation
uses unIS;
{$R *.dfm}

procedure TfmGPStore.FindInTree_Det(ItemID: integer);
var i : integer;
begin
  dbtr.Items.BeginUpdate;
  for i := 0 to dbtr.Items.Count - 1 do
    if Integer(dbtr.Items[i].Data) = ItemId Then
    begin
      dbtr.Selected := dbtr.Items[i];
      break;
    end;
  dbtr.Items.EndUpdate;
  dbtr.Selected.MakeVisible;
end;

procedure TfmGPStore.DoRestore(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TfmGPStore.FormCreate(Sender: TObject);
begin
  qStores.Close;
  qStores.open;
end;

procedure TfmGPStore.qGPBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crHourGlass;
  with qGP, qGP.sql do
  begin
    Close;
    Clear ;
    Add('select * from GET_PA_STATE_PARENT_NEW');
    add('(:pa1,:id_parent,:id_is,:id_cena,current_date,null,null)');
    Case SysVars.ServType of
      0 : Add(OrderBy(dbgGP));
      1 : Add(OrderByFields(dbgGP));
    end;
    ParamByName('pa1').Value := dbl1.KeyValue;
    ParamByName('id_parent').Value := null;
    ParamByName('id_is').Value := 2;
    Screen.Cursor := crHourGlass;
    if fmMain.UF32 then ParamByName('id_cena').Value := 1
    else ParamByName('id_cena').Value := 0;
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmGPStore.dbgGPGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qGPID_PA_TO.AsInteger <> dbl1.KeyValue then Background := clMoneyGreen;
  if qGPLINK_ITEM.AsInteger > 0 then
  begin
    AFont.Color := clPurple;
    AFont.Style := [fsBold];
  end;
  if not qGPD_CLOSE.IsNull then AFont.Style := [fsStrikeOut];
end;

procedure TfmGPStore.sbRfrClick(Sender: TObject);
begin
{  qGp.close;
  qGp.open;}
   qProdShipp.close;
   qProdShipp.open;
   qProd.close;
   qProd.open;
   qSellpos.Close;
   qSellPos.Open;
   qSellOrds.close;
   qSellOrds.Open;
   qSell.close;
   qSell.Open;
   qGpState.close;
   qGpState.open;
end;

procedure TfmGPStore.qSellPosCalcFields(DataSet: TDataSet);
begin
  qSellPossUMPRICE.AsFloat := qSellPosAMOUNT.AsFloat * qSellPosPRICEA.AsFloat;
end;

procedure TfmGPStore.FormShow(Sender: TObject);
begin
 with dbtr do
 begin
    ClearTree;
    RootId := 4;
    Items.BeginUpdate;
    BuildTree;
    //FullExpand;
    Items.EndUpdate;
    Selected := Items[0];
  end;
end;

procedure TfmGPStore.qGpStateBeforeOpen(DataSet: TDataSet);
begin
  Screen.Cursor := crHourGlass;
  with qGPState, qGPState.sql do
  begin
    Close;
    Clear ;
    add('select a.id_p_area, a.name aname, coalesce( b.obj_name, i.name) obj_name  ,');
    add(' v.name vname, s.id_batch, s.id_order_pos, p.id_order,  p.id_product,');
    add('sum(s.amount) - sum(z.amount) - sum(y.amount) free,');
    add('sum(s.amount) amount, sum(y.amount) rezerv,');
    add('sum(z.amount) rezervponakl');
    add('from p_area_states s');
    add('join prod_areas a on a.id_p_area = s.id_p_area');
    add('left join project_ords_pos p on p.id_order_pos = s.id_order_pos');
    add('join product_objects b on b.id_object = s.id_object');
    add('join product_versions v on v.id_version = b.id_version');
    add('left join items i on i.id_item = b.id_item');
    add('left join pa_bill_pos y on y.id_batch = s.id_batch');
    add('left join p_area_bills b1 on b1.id_pa_bill = y.id_pa_bill');
    add('  and b1.pa_bill_type = 122    ');
    add('left join pa_bill_pos z on z.id_batch = s.id_batch');
    add('left join p_area_bills b2 on b2.id_pa_bill = z.id_pa_bill');
    add('  and b2.pa_bill_type in(110,106,101)');
    add('where s.id_object in');
    add(' (select id_object from product_objects where id_version = :id_version)');
    add('and a.id_patype = 10 and a.d_close is null');
    add('and s.id_object_type = 4');
    if dbl1.KeyValue <> null then
    begin
     add('and s.id_p_area = :id_p_area');
     parambyname('id_p_area').AsInteger := dbl1.KeyValue;
    end;
    add('group by 1,2,3,4,5, 6,7,8');
    Case SysVars.ServType of
      0 : Add(OrderBy(dbgGPState));
      1 : Add(OrderByFields(dbgGPState));
    end;
    //parambyname('id_version').AsInteger := qVErID_VERSION.AsInteger;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmGPStore.dbTrChange(Sender: TObject; Node: TTreeNode);
begin
 {with qINs, qINs.sql do
 begin
  close;
  clear;
  add('select low from items where id_item = :id_item');
  parambyname('id_item').AsInteger := dbtr.GetId;
  open;
  if fieldbyname('low').AsInteger <> 1 then
  begin
    qGpState.close;
    qGpState.open;
  end;
 end; }
 qVer.close;
 qVer.ParamByName('id_item').AsInteger := dbTr.GetId;
 qVer.Open;
end;

procedure TfmGPStore.dbTrStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
 dragobj := dbTr.GetId; 
end;

procedure TfmGPStore.qSellPosAfterScroll(DataSet: TDataSet);
begin
 // FindInTree_Det(qSellPosID_PRODUCT.AsInteger);
end;

end.
