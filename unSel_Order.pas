unit unSel_Order;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unMainForm, shrfunc, DB, IBCustomDataSet, IBQuery, Grids,
  DBGridEh, Mask, DBCtrlsEh, StdCtrls, ComCtrls, ToolWin;

type
  TfmOrder_Center = class(TMainForm)
    CoolBar1: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    Label57: TLabel;
    ed_find: TEdit;
    ToolButton10: TToolButton;
    Label61: TLabel;
    d_beg: TDBDateTimeEditEh;
    Label64: TLabel;
    d_end: TDBDateTimeEditEh;
    dbgOrders: TDBGridEh;
    qOrders: TIBQuery;
    qOrdersID_ORDER: TIntegerField;
    qOrdersN_ORDER: TIBStringField;
    qOrdersNAME: TIBStringField;
    qOrdersAMOUNT: TIBBCDField;
    qOrdersPRICE: TIBBCDField;
    qOrdersPRICEA: TIBBCDField;
    qOrdersID_CURRENCY: TIntegerField;
    qOrdersDEF_SUM: TFloatField;
    qOrdersD_OPEN: TDateTimeField;
    qOrdersD_READY: TDateField;
    qOrdersD_CLOSE: TDateTimeField;
    qOrdersD_REJECT: TDateTimeField;
    qOrdersMARGIN: TFloatField;
    qOrdersDISCOUNT: TFloatField;
    qOrdersMANAGER_MARGIN: TFloatField;
    qOrdersDELIVERY_SUM: TFloatField;
    qOrdersPLAN_COST_PRICE: TFloatField;
    qOrdersID_CPTYPE: TIntegerField;
    qOrdersID_CPROD: TIntegerField;
    qOrdersID_OPER_TYPE: TIntegerField;
    qOrdersSTATUS: TIntegerField;
    qOrdersD_FIX: TDateTimeField;
    qOrdersID_FIX: TIntegerField;
    qOrdersID_PRODUCT: TIntegerField;
    qOrdersID_PROJECT: TIntegerField;
    qOrdersID_C: TIntegerField;
    qOrdersID_AX: TIBStringField;
    qOrdersID_DOC: TIntegerField;
    qOrdersID_DOGOVOR: TIntegerField;
    qOrdersREM: TMemoField;
    qOrdersIS_CHARGE: TIntegerField;
    qOrdersIS_COL: TIntegerField;
    qOrdersID_PRICE_POS: TIntegerField;
    qOrdersID_ESTIMATE: TIntegerField;
    qOrdersID_VERSION: TIntegerField;
    qOrdersID_ESTIMATE_KD: TIntegerField;
    qOrdersID_VERSION_PEO: TIntegerField;
    qOrdersID_BATCH: TIntegerField;
    qOrdersNPTYPE: TIBStringField;
    qOrdersNOPERTYPE: TIBStringField;
    qOrdersNPROD: TIBStringField;
    qOrdersNCURR: TIBStringField;
    qOrdersNSTATUS: TIBStringField;
    qOrdersNPROJ: TIBStringField;
    qOrdersFIO: TIBStringField;
    qOrdersDOG_NUMBER: TIBStringField;
    qOrdersDOG_NUMBER_: TIBStringField;
    qOrdersDOG_DATE_IN: TDateField;
    qOrdersKOL_DAY: TIntegerField;
    qOrdersVID: TIBStringField;
    qOrdersID_CHIEF: TIntegerField;
    qOrdersFIO_CHIEF: TIBStringField;
    qOrdersPATH: TBlobField;
    qOrdersFULL_NAME: TMemoField;
    qOrdersNAME_PRODUCT: TIBStringField;
    qOrdersNAME_ORDTYPE: TIBStringField;
    qOrdersLID: TIntegerField;
    qOrdersORD_TYPE: TIntegerField;
    qOrdersEST_TOTAL_SUM_PEO: TFloatField;
    qOrdersEST_TOTAL_SUM_KD: TFloatField;
    qOrdersSHIP: TFloatField;
    qOrdersRECEIVE: TFloatField;
    qOrdersPRODUSED: TFloatField;
    qOrdersBUCH_PROD_NAME: TIBStringField;
    qOrdersIS_RESERVE: TIntegerField;
    qOrdersnStat: TStringField;
    qOrdersfiLL: TStringField;
    qOrdersID_AGENT: TIntegerField;
    qOrdersDOCNAME: TIBStringField;
    qOrdersORDKIND: TIBStringField;
    qOrdersORD_KIND: TIntegerField;
    qOrdersPROFIT: TFloatField;
    qOrdersIS_SELF: TIntegerField;
    dsOrders: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton5Click(Sender: TObject);
    procedure ed_findKeyPress(Sender: TObject; var Key: Char);
    procedure dbgOrdersGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgOrdersDblClick(Sender: TObject);
  private
   procedure Open_Order;
    { Private declarations }
  public
   id_order :Integer;
   id_f     :Integer;
    { Public declarations }
  end;

var
  fmOrder_Center: TfmOrder_Center;

 const id_form = 99;
 
implementation

 uses unMain, unIs, unKOrder, unCliOrds;
{$R *.dfm}

procedure TfmOrder_Center.Open_Order;
begin
 try
  Screen.Cursor := crHourGlass;
  with qOrders, qOrders.SQL do
  begin
   if Active then id_order := qOrdersID_ORDER.AsInteger;
   Close;
   Clear;
   Add('select p.id_order, p.n_order, p.name, p.amount, p.is_self,');
   Add('p.price, (select nds_val from get_nds_sum(p.price,1)) price_bez_nds,');
   Add('p.pricea, p.id_currency, p.def_sum, p.d_open, p.d_ready, p.d_close,');
   Add('p.d_reject, p.margin, p.discount, p.manager_margin,');
   Add('p.delivery_sum, p.plan_cost_price, p.id_cptype,');
   Add('p.id_cprod, pt.id_oper_type, p.status, p.d_fix,');
   Add('p.id_fix, p.id_product, p.id_project, p.id_c, p.id_ax,');
   Add('p.id_doc, p.id_dogovor, p.rem,p.IS_CHARGE,p.is_col,p.id_price_pos,');
   Add('p.id_estimate,ee.id_version id_version_peo, p.id_version, ');
   Add('p.id_estimate_kd, p.id_batch, pt.name nptype, ot.name nopertype,');
   Add('a.name nprod, c.name ncurr, e.name nstatus, prj.name nproj, r.fio,');
   Add('d.dog_number,d.dog_number_, d.dog_date_in, coalesce(d.kol_day,0) kol_day,');
   Add('case when d.vid = 0 then ''' + '�/�' + ''' else ''' + '���/��' + ''' end vid, p.id_chief');
   Add(', rr.fio fio_chief, p.path, p.full_name, i.name name_product, oo.name');
   Add('name_ordtype,p.lid,p.ord_type, ee.total_sum est_total_sum_peo,');
   Add('e1.total_sum est_total_sum_kd, p.ship, p.receive,p.prodused,');
   Add(' p.BUCH_PROD_NAME, p.is_reserve, p.id_agent, dd.name docname, ');
   Add('kk.name ordkind, p.ord_kind, case when ee.total_sum <> 0 then ');
   Add('(p.price/(ee.total_sum+p.delivery_sum)-1)*100 when (ee.total_sum = 0)');
   Add(' or (ee.total_sum is null) then -100 end profit from project_ords p');
   Add(' left join ptypes pt on p.id_cptype = pt.id_ptype');
   Add(' left join estimates ee on ee.id_estimate = p.id_estimate');
   Add(' left join estimates e1 on e1.id_estimate = p.id_estimate_kd');
   Add(' left join oper_types ot on ot.id_oper_type = pt.id_oper_type');
   Add(' left join prod_areas a on a.id_p_area = p.id_cprod');
   Add(' left join currency c on c.id_currency = p.id_currency');
   Add(' left join ord_events e on e.status = p.status');
   Add(' left join projects prj on prj.id_project = p.id_project');
   Add(' left join personnel r on r.id_p = p.id_fix');
   Add(' left join personnel rr on rr.id_p = p.id_chief');
   Add(' left join dogovor d on d.id_dogovor = p.id_dogovor');
   Add(' left join items i on i.id_item = p.id_product');
   Add(' left join ord_types oo on oo.id_type = p.ord_type');
   Add(' left join project_docs dd on dd.id_project_doc = p.id_doc');
   Add(' left join order_kinds kk on kk.id_ord_kind = p.ord_kind');
   Add(' where 1=1');

   if (d_beg.Value <> null) then
   begin
    Add('and p.d_open >= :d_beg');
    ParamByName('d_beg').AsDate := d_beg.Value;
   end;

   if (d_end.Value <> null) then
   begin
    Add('and p.d_open <= :d_end');
    ParamByName('d_end').AsDate := d_end.Value;
   end;

   Open;
   if (id_order > 0) then Locate('id_order',id_order,[]);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmOrder_Center.FormCreate(Sender: TObject);
begin
 id_order := -1;
 id_f := -1;
 d_end.Value := Server_now(dmIS.qIM);
 d_beg.Value := d_end.Value - 7;
end;

procedure TfmOrder_Center.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 fmOrder_Center := nil;
end;

procedure TfmOrder_Center.ToolButton5Click(Sender: TObject);
begin
 Open_Order;
end;

procedure TfmOrder_Center.ed_findKeyPress(Sender: TObject; var Key: Char);
begin
 FindGridValue(dbgOrders, ed_find, 13, 'id_order');
end;

procedure TfmOrder_Center.dbgOrdersGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if qOrdersID_DOC.AsInteger > 0 then AFont.Style := [fsItalic];

 if qOrdersSTATUS.AsInteger = 7 then AFont.Style := [fsUnderline];

 if qOrdersSTATUS.AsInteger >= 10 then AFont.Style := [fsBold];

 if qOrdersIS_RESERVE.AsInteger = 1 then AFont.Color := clRed;

 if qOrdersSTATUS.AsInteger >= 20 then
 begin
  Background := clSkyBlue;
  AFont.Style := [fsBold];
 end;

 if (not qOrdersD_REJECT.IsNull) then AFont.Style := [fsStrikeOut];

 if (not qOrdersD_CLOSE.IsNull) then Background := clMoneyGreen;
end;

procedure TfmOrder_Center.dbgOrdersDblClick(Sender: TObject);
begin
 if not qOrders.IsEmpty then
 begin
  // �������������� �����
  if id_f = 8 then if Assigned(f_KOrder[fmMain.NF_KOrder]) then
   if MsgQuestion(SysVars.FReg + ', �� �������, ��� ������ ����� ����� �������� ��������?','��������') = id_yes then
  f_KOrder[fmMain.NF_KOrder].l_op.Caption := qOrdersID_ORDER.AsString;
 end;
 close;
end;

end.
