unit UnEstCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ComCtrls, ToolWin, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls, StdCtrls, Grids, DBGridEh, ImgList,
  DBSTrees, Buttons, dbsumlst, ShellAPI, IBUpdateSQL;

type
  TfmEstCalc = class(TMainForm)
    p1: TPanel;
    p2: TPanel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    p3: TPanel;
    Splitter2: TSplitter;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    qEst: TIBQuery;
    dsEst: TDataSource;
    qEstID_ESTIMATE: TIntegerField;
    qEstID_VERSION: TIntegerField;
    qEstNAME: TIBStringField;
    qEstD_CREATE: TDateTimeField;
    qEstID_CREATOR: TIntegerField;
    qEstD_CONFIRM: TDateTimeField;
    qEstID_CONFIRM: TIntegerField;
    qEstAMOUNT: TIntegerField;
    qEstPRICE_DATE: TDateField;
    qEstSUM_NDS: TFloatField;
    qEstPRICE_DELIVERY: TFloatField;
    qEstPRICE_TOOLS: TFloatField;
    qEstPROFIT: TFloatField;
    qEstID_DOC: TIntegerField;
    qEstDOP_PRICE: TFloatField;
    qEstID_PTYPE: TIntegerField;
    qEstTOTAL_SUM: TFloatField;
    qEstVNAME: TIBStringField;
    qEstID_ITEM: TIntegerField;
    qEstINAME: TIBStringField;
    qEstOpTyp: TIBQuery;
    qEstOpTypID_OPER_TYPE: TIntegerField;
    qEstOpTypPROC: TFloatField;
    qEstOpTypTOTAL: TFloatField;
    qEstOpTypNAME: TIBStringField;
    dsEstOpTyp: TDataSource;
    dbg1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    qEst_S: TIBQuery;
    qEst_SID_EST_POS: TIntegerField;
    qEst_SID_ESTIMATE: TIntegerField;
    qEst_SID_PROD_OPER: TIntegerField;
    qEst_SAMOUNT: TFloatField;
    qEst_SFULL_AMOUNT: TFloatField;
    qEst_SWASTE: TFloatField;
    qEst_SAMOUNT_TIME: TFloatField;
    qEst_SPRICE: TFloatField;
    qEst_SPRICE0: TFloatField;
    qEst_STOTAL: TFloatField;
    qEst_SID_UNIT: TIntegerField;
    qEst_SID_AREA: TIntegerField;
    qEst_SID_OPERATION: TIntegerField;
    qEst_SNAME: TIBStringField;
    qEst_SCALC_TIME: TMemoField;
    qEst_SUNAME: TIBStringField;
    qEst_SID_OPER_TYPE: TIntegerField;
    qEst_SOTNAME: TIBStringField;
    qEst_SID_CALC: TIntegerField;
    qEst_SWASTE_DEF: TFloatField;
    qEst_STIME_WASTE: TFloatField;
    qEst_SIS_GROUP: TIntegerField;
    qEst_SID_UNION: TIntegerField;
    qEst_SOBJ_NAME: TIBStringField;
    qEst_SLENG: TFloatField;
    qEst_SWIDTH: TFloatField;
    qEst_SHEIGHT: TFloatField;
    qEst_SID_OBJECT: TIntegerField;
    dsEst_S: TDataSource;
    qEst_Mat: TIBQuery;
    qEst_MatID_EST_POS: TIntegerField;
    qEst_MatID_PROD_OPER: TIntegerField;
    qEst_MatID_ITEM: TIntegerField;
    qEst_MatNAME: TIBStringField;
    qEst_MatAMOUNT: TFloatField;
    qEst_MatFULL_AMOUNT: TFloatField;
    qEst_MatWASTE: TFloatField;
    qEst_MatPRICE: TFloatField;
    qEst_MatPRICE0: TFloatField;
    qEst_MatTOTAL: TFloatField;
    qEst_MatID_UNIT: TIntegerField;
    qEst_MatUNAME: TIBStringField;
    qEst_MatIS_BASE: TIntegerField;
    dsEst_Mat: TDataSource;
    qEst_Pp: TIBQuery;
    qEst_PpID_ESTIMATE: TIntegerField;
    qEst_PpID_OBJ: TIntegerField;
    qEst_PpNAME: TIBStringField;
    qEst_PpUNAME: TIBStringField;
    qEst_PpAMOUNT: TFloatField;
    qEst_PpPRICE: TFloatField;
    qEst_PpTOTAL: TFloatField;
    qEst_PpAMOUNT_TIME: TFloatField;
    qEst_PpCOST: TIBBCDField;
    qEst_PpCOST0: TFloatField;
    qEst_PpsTime: TStringField;
    dsEst_Pp: TDataSource;
    qEst_Pm: TIBQuery;
    qEst_PmID_ESTIMATE: TIntegerField;
    qEst_PmID_OBJ: TIntegerField;
    qEst_PmNAME: TIBStringField;
    qEst_PmUNAME: TIBStringField;
    qEst_PmAMOUNT: TFloatField;
    qEst_PmPRICE: TFloatField;
    qEst_PmTOTAL: TFloatField;
    qEst_PmPNAME: TIBStringField;
    qEst_PmFACTOR: TFloatField;
    qEst_PmPAMOUNT: TFloatField;
    qEst_PmPPRICE: TFloatField;
    dsEst_Pm: TDataSource;
    p5: TPanel;
    DBNavigator1: TDBNavigator;
    dbg11: TDBGridEh;
    Splitter4: TSplitter;
    Panel13: TPanel;
    DBNavigator2: TDBNavigator;
    dbg10: TDBGridEh;
    p4: TPanel;
    dbg9: TDBGridEh;
    Splitter5: TSplitter;
    pOper: TPanel;
    dbn5: TDBNavigator;
    dbg5: TDBGridEh;
    il1: TImageList;
    dbt2: TDBS_TreeView;
    Panel3: TPanel;
    lb2: TLabel;
    Label5: TLabel;
    pc2: TPageControl;
    tt1: TTabSheet;
    tt2: TTabSheet;
    tt3: TTabSheet;
    dbt4: TDBS_TreeView;
    dbt3: TDBS_TreeView;
    qGr: TIBQuery;
    dsGr: TDataSource;
    Panel11: TPanel;
    dbg6: TDBGridEh;
    Splitter6: TSplitter;
    Panel5: TPanel;
    lb4: TLabel;
    Label7: TLabel;
    Panel6: TPanel;
    lb3: TLabel;
    Label9: TLabel;
    qGrID_OBJECT: TIntegerField;
    qGrOBJ_NAME: TIBStringField;
    qGrOBJ_KIND: TIntegerField;
    qGrAMOUNT: TIntegerField;
    qEst_SsAmount_Time: TStringField;
    qEst_SsTime_Waste: TStringField;
    Label6: TLabel;
    Label8: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    qEst_STOTAL_RAS: TFloatField;
    qEst_MatTOTAL_RAS: TFloatField;
    qEst_PpTOTAL_RAS: TFloatField;
    qEst_PmTOTAL_RAS: TFloatField;
    Label10: TLabel;
    Label11: TLabel;
    LbCc: TLabel;
    LbRas: TLabel;
    Label14: TLabel;
    LbPr: TLabel;
    Label12: TLabel;
    LbProd: TLabel;
    Label15: TLabel;
    LbPrProd: TLabel;
    Splitter7: TSplitter;
    dbg12: TDBGridEh;
    qEst_MatCOMM_AMOUNT: TFloatField;
    qEst_MatAM: TFloatField;
    qEst_MatTOTAL_ALL: TFloatField;
    qEst_MatTOTAL_ALL_RAS: TFloatField;
    qEstOpTypPROFIT: TFloatField;
    qEstOpTypDOP_PRICE: TFloatField;
    qEstOpTypTOTAL_OPER: TFloatField;
    qEstOpTypTOTAL_MAT: TFloatField;
    qEstOpTypSUM_PROC: TFloatField;
    qEstOpTypSUMRAS_OPER: TFloatField;
    qEstOpTypSUMRAS_TMS: TFloatField;
    TabSheet1: TTabSheet;
    qDoc: TIBQuery;
    qDocID_PROD_DOC: TIntegerField;
    qDocNAME: TIBStringField;
    qDocD_CONFIRM: TDateTimeField;
    qDocID_DOC: TIntegerField;
    qDocD_FIX: TDateTimeField;
    qDocID_OBJECT: TIntegerField;
    qDocOBJ_NAME: TIBStringField;
    qDocFIO: TIBStringField;
    dbg14: TDBGridEh;
    dsDoc: TDataSource;
    dsOpParam: TDataSource;
    qParam: TIBQuery;
    qParamNAME: TIBStringField;
    qParamUNAME: TIBStringField;
    qParamS_AMOUNT: TIBStringField;
    qParamDEFAMOUNT: TFloatField;
    qParamID_PROD_OPER_PARAM: TIntegerField;
    qParamID_OPER_PARAM: TIntegerField;
    qParamP_TYPE: TIntegerField;
    qParamID_MAIN_PARAM: TIntegerField;
    qParamPOSIT: TIntegerField;
    qParamIN_PROD_OPER: TIntegerField;
    qParamIN_CALC: TIntegerField;
    upOpParam: TIBUpdateSQL;
    dsP: TDataSource;
    qP: TIBQuery;
    qPID_MP_SET: TIntegerField;
    qPNAME: TIBStringField;
    qPS_VALUE: TFloatField;
    dbl2: TDBLookupComboBox;
    qINs: TIBQuery;
    Panel7: TPanel;
    m2: TMemo;
    Splitter3: TSplitter;
    Panel8: TPanel;
    sbPaht: TSpeedButton;
    od1: TOpenDialog;
    pParam: TPanel;
    dbg15: TDBGridEh;
    Splitter8: TSplitter;
    qOrdParam: TIBQuery;
    Splitter9: TSplitter;
    dsOrdParam: TDataSource;
    qOrdParamNAME: TIBStringField;
    qOrdParamID_ORDER_PARAM: TIntegerField;
    qOrdParamID_PT_PARAM: TIntegerField;
    qOrdParamS_AMOUNT: TIBStringField;
    qOrdParamAMOUNT: TFloatField;
    qOrdParamID_MP_SET: TIntegerField;
    qOrdParamMPNAME: TIBStringField;
    qOrdParamID_MAIN_PARAM: TIntegerField;
    qOrdParamIN_ORDER: TIntegerField;
    qOrdParamSTRVALUE: TIBStringField;
    qOrdParamP_TYPE: TIntegerField;
    qOrdParam_Det: TIBQuery;
    dsOrdParam_Det: TDataSource;
    qOrdParam_DetNAME: TIBStringField;
    qOrdParam_DetID_ORDER_PARAM: TIntegerField;
    qOrdParam_DetID_PT_PARAM: TIntegerField;
    qOrdParam_DetS_AMOUNT: TIBStringField;
    qOrdParam_DetAMOUNT: TFloatField;
    qOrdParam_DetID_MP_SET: TIntegerField;
    qOrdParam_DetMPNAME: TIBStringField;
    qOrdParam_DetID_MAIN_PARAM: TIntegerField;
    qOrdParam_DetIN_ORDER: TIntegerField;
    qOrdParam_DetSTRVALUE: TIBStringField;
    qOrdParam_DetP_TYPE: TIntegerField;
    qOrdParam_DetID_OBJECT: TIntegerField;
    qOrdParam_DetID_PROD_OPER: TIntegerField;
    qOrdParam_DetOB_NAME: TIBStringField;
    qOrdParam_DetOP_NAME: TIBStringField;
    qEstOpTypNAME_PTYPE: TIBStringField;
    GroupBox1: TGroupBox;
    dbg16: TDBGridEh;
    pnIns: TPanel;
    sbIns_Obj: TSpeedButton;
    sbIns_Oper: TSpeedButton;
    qIN: TIBQuery;
    qEstOpTypID_PTYPE: TIntegerField;
    sbDel: TSpeedButton;
    upOrdParam_det: TIBUpdateSQL;
    dbl3: TDBLookupComboBox;
    Edit1: TEdit;
    Panel4: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    qEstOpTypTOTAL_BEZ_NDS: TFloatField;
    qEstOpTypTOTAL_OPER_BEZ_NDS: TFloatField;
    qEstOpTypTOTAL_MAT_BEZ_NDS: TFloatField;
    qEstOpTypSUM_PROC_BEZ_NDS: TFloatField;
    qEstOpTypSUMRAS_OPER_BEZ_NDS: TFloatField;
    qEstOpTypSUMRAS_TMS_BEZ_NDS: TFloatField;
    qEst_SPRICE_BEZ_NDS: TFloatField;
    qEst_SPRICE0_BEZ_NDS: TFloatField;
    qEst_STOTAL_BEZ_NDS: TFloatField;
    qEst_STOTAL_RAS_BEZ_NDS: TFloatField;
    qEst_MatTOTAL_BEZ_NDS: TFloatField;
    qEst_MatTOTAL_RAS_BEZ_NDS: TFloatField;
    qEst_MatTOTAL_ALL_RAS_BEZ_NDS: TFloatField;
    qEst_MatTOTAL_ALL_BEZ_NDS: TFloatField;
    qEst_PpCOST_BEZ_NDS: TFloatField;
    qEst_PpCOST0_NEZ_NDS: TFloatField;
    qEst_PpPRICE_BEZ_NDS: TFloatField;
    qEst_PpTOTAL_BEZ_NDS: TFloatField;
    qEst_PpTOTAL_RAS_BEZ_NDS: TFloatField;
    qEst_PmPPRICE_BEZ_NDS: TFloatField;
    qEst_PmPRICE_BEZ_NDS: TFloatField;
    qEst_PmTOTAL_BEZ_NDS: TFloatField;
    qEst_PmTOTAL_RAS_BEZ_NDS: TFloatField;
    Label13: TLabel;
    LbCcbezNDS: TLabel;
    Label17: TLabel;
    LbRasbezNDS: TLabel;
    Label19: TLabel;
    LbProdbezNDS: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbt2BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
    procedure dbt2Change(Sender: TObject; Node: TTreeNode);
    procedure dbg5SortMarkingChanged(Sender: TObject);
    procedure dbg5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg9GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qEst_PpCalcFields(DataSet: TDataSet);
    procedure dbt3BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
    procedure dbt4BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
    procedure dbt3Change(Sender: TObject; Node: TTreeNode);
    procedure dbt4Change(Sender: TObject; Node: TTreeNode);
    procedure qEst_SCalcFields(DataSet: TDataSet);
    procedure qDocBeforeOpen(DataSet: TDataSet);
    procedure dbg14DblClick(Sender: TObject);
    procedure dbg12GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg12CellClick(Column: TColumnEh);
    procedure dbg12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure qParamBeforePost(DataSet: TDataSet);
    procedure dbl2Click(Sender: TObject);
    procedure dbl2Exit(Sender: TObject);
    procedure dbg12Columns3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qEst_SAfterScroll(DataSet: TDataSet);
    procedure m2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbIns_ObjClick(Sender: TObject);
    procedure sbIns_OperClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure dbg16MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbl3Exit(Sender: TObject);
    procedure dbl3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    C_EST, C_OBJ: integer;
    procedure OpenEst_S;
    procedure OpenObjTrees;
    procedure OpenGroups;
    procedure Order_Param_Ins_Det(ID_ORDER: INTEGER; ID_PTYPE: INTEGER;
      YSL_IN: INTEGER; ID_OBJ: INTEGER; ID_OP: INTEGER);
    { Private declarations }
  public
    ID_ESTIMATE, ID_ORDER, ID_PTYPE: integer;
    { Public declarations }
  end;

var
  fmEstCalc: TfmEstCalc;

implementation
uses unMain, unIs, unCliOrds, unKOrder, uAll, unOperRoute;

const
  id_Form = 48;

{$R *.dfm}

procedure TfmEstCalc.Order_Param_Ins_Det(ID_ORDER: INTEGER; ID_PTYPE: INTEGER;
  YSL_IN: INTEGER; ID_OBJ: INTEGER; ID_OP: INTEGER);
begin
  with qIN, qIN.SQL do
  begin
    Close;
    Clear;
    Add('select id_object from GET_ORD_PARAMS_INS_DET(:ID_ORDER,:ID_PTYPE,:YSL_IN,:ID_OBJ,:ID_OP)');
    ParamByName('id_order').AsInteger := ID_ORDER;
    ParamByName('id_ptype').AsInteger := ID_PTYPE;
    ParamByName('ysl_in').AsInteger := ysl_in;
    ParamByName('id_obj').AsInteger := id_obj;
    ParamByName('id_op').AsInteger := id_op;
    try
      Open;
      if dmIS.mmt.Active then
        dmIs.mmT.Commit;
    except
      if dmIS.mmt.Active then
        dmIs.mmT.Rollback;
      MsgError('Ошибка при чтении файла', 'Ошибка чтения');
    end;
  end;
  qOrdParam_Det.Close;
  qOrdParam_Det.ParamByName('id_order').AsInteger := ID_ORDER;
  qOrdParam_Det.ParamByName('id_ptype').AsInteger := ID_PTYPE;
  qOrdParam_Det.Open;
  if not qOrdParam_Det.IsEmpty then
    qOrdParam_Det.Locate('id_object', id_obj, []);

end;

procedure TfmEstCalc.OpenObjTrees;
begin
  if qEst.IsEmpty then
    exit;
  Screen.Cursor := crHourGlass;
  // Изделие
  dbt2.ClearTree;
  dbt2.TableName := 'GET_VERSION_OBJ_KIND(' + qEstID_VERSION.AsString + ',0)';
  dbt2.BuildTree;
  dbt2.FullExpand;
  dbt2.Items[0].Text := 'Изделие';
  lb2.Caption := IntToStr(dbt2.GetId);
  // Группа
  dbt3.ClearTree;
  dbt3.TableName := 'GET_VERSION_OBJ_KIND(' + qEstID_VERSION.AsString + ',4)';
  dbt3.BuildTree;
  dbt3.FullExpand;
  dbt3.Items[0].Text := 'Группы';
  lb3.Caption := IntToStr(dbt3.GetId);
  OpenGroups;
  // Оснастка
  dbt4.ClearTree;
  dbt4.TableName := 'GET_VERSION_OBJ_KIND(' + qEstID_VERSION.AsString + ',1)';
  dbt4.BuildTree;
  dbt4.FullExpand;
  dbt4.Items[0].Text := 'Оснастка';
  lb4.Caption := IntToStr(dbt4.GetId);
  {
  // Упаковка
   dbt5.ClearTree;
   dbt5.TableName := 'GET_VERSION_OBJ_KIND(' + qVerID_VERSION.AsString + ',2)';
   dbt5.BuildTree;
   dbt5.FullExpand;
   dbt5.Items[0].Text := 'Упаковка';
   lb5.Caption := IntToStr(dbt5.GetId);
  }
  Screen.Cursor := crDefault;
end;

procedure TfmEstCalc.OpenGroups;
begin
  with qGr do
  begin
    Close;
    ParamByName('id_obj').AsInteger := dbt3.GetId;
    Open;
  end;
end;

procedure TfmEstCalc.OpenEst_S;
begin
  Screen.Cursor := crHourGlass;
  with qEst_S, qEst_S.SQL do
  begin
    if Active then
      C_EST := qEst_SID_EST_POS.AsInteger;
    Close;
    Clear;
    Add('select s.id_est_pos, s.id_estimate, s.id_prod_oper, s.amount,');
    Add('s.full_amount, s.waste, s.amount_time, s.price,');
    Add('(select nds_val from get_nds_sum(s.price,1)) price_bez_nds,');
    Add('s.price0,');
    Add('(select nds_val from get_nds_sum(s.price0,1)) price0_bez_nds,');
    Add('s.total,');
    Add('(select nds_val from get_nds_sum(s.total,1)) total_bez_nds,');
    Add('s.total *(1 + e.profit/100) total_ras,');
    Add('(select nds_val from get_nds_sum((s.total *(1 + e.profit/100)),1)) total_ras_bez_nds,');
    Add('s.id_unit, o.id_area, o.id_operation, o.name, o.calc_time,');
    Add('u.name uname, s.id_oper_type, t.name otname, s.id_calc, s.waste_def,');
    Add('s.time_waste, s.is_group, s.id_union, coalesce(b.obj_name,i.name) obj_name,');
    Add('b.leng, b.width, b.height, b.id_object');
    Add('from est_pos s');
    Add('left join units u on u.id_unit = s.id_unit');
    Add('left join oper_types t on t.id_oper_type = s.id_oper_type ');
    Add('join est_sum_oper_types e on e.id_estimate = s.id_estimate and  e.id_oper_type = s.id_oper_type');
    Add('join product_oper p on p.id_prod_oper = s.id_prod_oper ');
    Add('join operations o on o.id_area = p.id_area and o.id_operation = p.id_operation');
    Add('join product_objects b on b.id_object = p.id_object');
    Add('left join items i on i.id_item = b.id_product');
    Add('where s.id_estimate = :id_estimate and s.id_item is null');
    Add(OrdBy(dbg5));
    Open;
    Locate('ID_EST_POS', C_EST, []);
    qEst_Mat.Close;
    qEst_Mat.Open;
    qParam.Close;
    qParam.Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEstCalc.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p3, iniRect);
    Read(pOper, iniRect);
    Read(p4, iniRect);
    Read(pParam, iniRect);
    Read(p5, iniRect);
    ReadEh(dbg1, id_Form);
    ReadEh(dbg5, id_Form);
    ReadEh(dbg9, id_Form);
    ReadEh(dbg10, id_Form);
    ReadEh(dbg11, id_Form);
    ReadEh(dbg12, id_Form);
    ReadEh(dbg14, id_Form);
    ReadEh(dbg15, id_Form);
    ReadEh(dbg16, id_Form);
  finally
    Free;
  end;
  ID_ESTIMATE := -1;
  ID_ORDER := -1;
  fmMain.Status_Ord := 100000;
  pc1.ActivePage := ts1;
  pc2.ActivePage := tt1;
end;

procedure TfmEstCalc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qOrdParam_Det.State in [dsInsert, dsEdit] then
    qOrdParam_Det.Post;
  if qParam.State in [dsInsert, dsEdit] then
    qParam.Post;
  qGr.Close;
  qEst_Pp.Close;
  qEst_Pm.Close;
  qEst_S.Close;
  qEst_Mat.Close;
  qEstOpTyp.Close;
  qEst.Close;
  qOrdParam_Det.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p3, iniRect);
    Write(pOper, iniRect);
    Write(p4, iniRect);
    Write(pParam, iniRect);
    Write(p5, iniRect);
    Write(dbg1, iniGridEh);
    Write(dbg5, iniGridEh);
    Write(dbg9, iniGridEh);
    Write(dbg10, iniGridEh);
    Write(dbg11, iniGridEh);
    Write(dbg12, iniGridEh);
    Write(dbg14, iniGridEh);
    Write(dbg15, iniGridEh);
    Write(dbg16, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmEstCalc.FormShow(Sender: TObject);
begin
  if fmMain.Status_Ord > 9 then
  begin
    sbIns_Obj.Visible := False;
    sbIns_Oper.Visible := False;
    sbDel.Visible := False;
    pnIns.Visible := False;
    sbPaht.Visible := False;
  end
  else
  begin
    sbIns_Obj.Visible := True;
    sbIns_Oper.Visible := True;
    sbDel.Visible := True;
    pnIns.Visible := True;
    sbPaht.Visible := True;
  end;

  LbCc.Caption := '';
  LbRas.Caption := '';
  LbPr.Caption := '';
  LbProd.Caption := '';
  LbPrProd.Caption := '';

  qOrdParam.Close;
  qOrdParam_Det.Close;

  if ((id_order > 0) and (id_ptype > 0)) then
  begin
    qOrdParam.ParamByName('id_order').AsInteger := ID_ORDER;
    qOrdParam.ParamByName('id_ptype').AsInteger := ID_PTYPE;
    qOrdParam.Open;
    qOrdParam_Det.ParamByName('id_order').AsInteger := ID_ORDER;
    qOrdParam_Det.ParamByName('id_ptype').AsInteger := ID_PTYPE;
    qOrdParam_Det.Open;
  end;

  with qEst do
  begin
    Close;
    ParamByName('id_est').AsInteger := ID_ESTIMATE;
    Open;
  end;
  with qEstOpTyp do
  begin
    Close;
    Open;
  end;
  OpenEst_s;
  with qEst_Pp do
  begin
    Close;
    Open;
  end;
  with qEst_Pm do
  begin
    Close;
    Open;
  end;
  with qDoc do
  begin
    Close;
    Open;
  end;
  try
    lbCc.Caption :=
      FloatToStr(dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
      'TOTAL').SumValue);
    lbCcbezNDS.Caption :=
      FloatToStr(dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
      'TOTAL_BEZ_NDS').SumValue);
    //FieldColumns['TOTAL'].Footer.Column.);
    //lbCc.Caption :=   FloatToStr(dbg1.FieldColumns['TOTAL'].Footer.Column.);
    //floattostr(real(dbg5.sumlist.SumCollection.GetSumByOpAndFName(goSum,'TOTAL').SumValue));

    lbRas.Caption :=
      FloatToStr(dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
      'SUM_PROC').SumValue);
    lbRasbezNDS.Caption :=
      FloatToStr(dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
      'SUM_PROC_BEZ_NDS').SumValue);
    //FloatToStr(dbg1.FieldColumns['SUM_PROC'].Footer.SumValue);

  {lbPr.Caption := FloatToStr(
  (dbg1.FieldColumns['SUM_PROC'].Footer.SumValue - dbg1.FieldColumns['TOTAL'].Footer.SumValue
  )/dbg1.FieldColumns['TOTAL'].Footer.SumValue *100);}
    if dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum, 'TOTAL').SumValue *
      100 > 0 then
      lbPr.Caption := FloatToStr(
        (dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
        'SUM_PROC').SumValue -
        dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum, 'TOTAL').SumValue
        ) / dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
        'TOTAL').SumValue * 100);

    if fmEstCalc.ID_ORDER > 0 then
    begin
      lbProd.Caption := f_CliOrds[fmMain.NF_CliOrds].qOrdersPRICE.AsString;
      if dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
        'SUM_PROC').SumValue * 100 > 0 then
        LbPrProd.Caption := FloatToStr(
          (
          f_CliOrds[fmMain.NF_CliOrds].qOrdersPRICE.asFloat -
          dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum, 'TOTAL').SumValue
          ) / dbg1.SumList.SumCollection.GetSumByOpAndFName(goSum,
          'SUM_PROC').SumValue * 100);

      lbProdbeznds.Caption :=
        f_CliOrds[fmMain.NF_CliOrds].qOrdersPRICE_BEZ_NDS.AsString;

    end;
  except
  end;
  {lbCc.Caption :=   FloatToStr(dbg10.FieldColumns['TOTAL'].Footer.SumValue +
               dbg10.FieldColumns['TOTAL'].Footer.SumValue);

  lbRas.Caption :=   FloatToStr(dbg10.FieldColumns['TOTAL_RAS'].Footer.SumValue +
               dbg11.FieldColumns['TOTAL_RAS'].Footer.SumValue);

  lbPr.Caption := FloatToStr(
  (
  (dbg10.FieldColumns['TOTAL_RAS'].Footer.SumValue +dbg11.FieldColumns['TOTAL_RAS'].Footer.SumValue) -
  (dbg10.FieldColumns['TOTAL'].Footer.SumValue + dbg11.FieldColumns['TOTAL'].Footer.SumValue)
  )/
  (dbg10.FieldColumns['TOTAL'].Footer.SumValue + dbg11.FieldColumns['TOTAL'].Footer.SumValue)*100);
  if fmEstCalc.ID_ORDER > 0 then
  begin
   lbProd.Caption := f_CliOrds[fmMain.NF_CliOrds].qOrdersPRICE.AsString;
   LbPrProd.Caption := FloatToStr(
   (
   f_CliOrds[fmMain.NF_CliOrds].qOrdersPRICE.asFloat -
   (dbg10.FieldColumns['TOTAL'].Footer.SumValue + dbg11.FieldColumns['TOTAL'].Footer.SumValue)
   )/
   (dbg10.FieldColumns['TOTAL'].Footer.SumValue + dbg11.FieldColumns['TOTAL'].Footer.SumValue)*100);
  end; }

  OpenObjTrees;
  if fmMain.UF143 then
  begin
    ToolButton2.Visible := false;
    DBText7.visible := false;
    LbPr.visible := false;
    DBText8.visible := false;
    LbRas.visible := false;
    LbCc.visible := false;
    LbCcbezNDS.visible := false;
    LbProd.visible := false;
    LbProdbezNDS.visible := false;
    LbPrProd.visible := false;
    fmAll.HideGridCOl(dbg1,
      'PROC,TOTAL,TOTAL_BEZ_NDS,SUM_PROC,SUM_PROC_BEZ_NDS,SUMRAS_TMS,SUMRAS_TMS_BEZ_NDS,SUMRAS_OPER,SUMRAS_OPER_BEZ_NDS,TOTAL_OPER,TOTAL_OPER_BEZ_NDS,TOTAL_MAT,TOTAL_MAT_BEZ_NDS,PROFIT,DOP_PRICE',
      false);

    fmAll.HideGridCOl(dbg5, 'price,price_bez_nds,price0,price0_bez_nds,'
      + 'total,total_bez_nds,total_ras,total_ras_bez_nds', false);
    fmAll.HideGridCOl(dbg9, 'total,total_bez_nds,total_ras,total_ras_bez_nds,'
      + 'total_all_ras,total_all_ras_bez_nds,total_all,total_all_bez_nds,price',
      false);
    fmAll.HideGridCOl(dbg10, 'cost,cost_bez_nds,cost0,cost0_nez_nds,price,'
      + 'price_bez_nds,total,total_bez_nds,total_ras,total_ras_bez_nds', false);

    fmAll.HideGridCOl(dbg11, 'pprice,pprice_bez_nds,price,price_bez_nds,total,'
      + 'total_bez_nds,total_ras,total_ras_bez_nds', false);
  end;
end;

procedure TfmEstCalc.dbt2BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

procedure TfmEstCalc.dbt2Change(Sender: TObject; Node: TTreeNode);
begin
  C_OBJ := dbt2.GetId;
  lb2.Caption := IntToStr(C_OBJ);
  qEst_S.Locate('ID_OBJECT', C_OBJ, []);
  with qIns, qIns.SQL do
  begin
    close;
    clear;
    add('select path from product_objects where id_object = :ido');
    parambyname('ido').AsInteger := C_OBJ;
    open;
    m2.Text := fieldbyname('path').AsString;
    close;
  end;
  dbg5.Refresh;
end;

procedure TfmEstCalc.dbg5SortMarkingChanged(Sender: TObject);
begin
  OpenEst_S;
end;

procedure TfmEstCalc.dbg5GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qEst_SID_OBJECT.AsInteger = C_OBJ then
    Background := clMoneyGreen;
  if qEst_SIS_GROUP.AsInteger = 1 then
    AFont.Style := [fsBold];
  if qEst_SID_UNION.AsInteger > 0 then
    AFont.Color := clGreen;
end;

procedure TfmEstCalc.dbg9GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qEst_MatIS_BASE.AsInteger = 1 then
    Background := clMoneyGreen;
end;

procedure TfmEstCalc.qEst_PpCalcFields(DataSet: TDataSet);
begin
  qEst_PpsTime.AsString := HourToTime(qEst_PpAMOUNT_TIME.AsFloat);
end;

procedure TfmEstCalc.dbt3BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

procedure TfmEstCalc.dbt4BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

procedure TfmEstCalc.dbt3Change(Sender: TObject; Node: TTreeNode);
begin
  C_OBJ := dbt3.GetId;
  lb3.Caption := IntTostr(dbt3.GetId);
  qEst_S.Locate('ID_OBJECT', C_OBJ, []);
  dbg5.Refresh;
  OpenGroups;
end;

procedure TfmEstCalc.dbt4Change(Sender: TObject; Node: TTreeNode);
begin
  C_OBJ := dbt4.GetId;
  lb4.Caption := IntToStr(dbt4.GetId);
  qEst_S.Locate('ID_OBJECT', C_OBJ, []);
  dbg5.Refresh;
end;

procedure TfmEstCalc.qEst_SCalcFields(DataSet: TDataSet);
begin
  qEst_SsAmount_Time.AsString := HourToTime(qEst_SAMOUNT_TIME.AsFloat);
  qEst_SsTime_Waste.AsString := HourToTime(qEst_STIME_WASTE.AsFloat);

end;

procedure TfmEstCalc.qDocBeforeOpen(DataSet: TDataSet);
var
  s: string;
begin
  s := 'select distinct p.id_prod_doc, p.name, p.d_confirm,  p.id_doc, p.d_fix, o.id_object, o.obj_name, a.fio'
    +
    ' from product_docs p' +
    ' left join product_objects o on o.id_object = p.id_object' +
    ' left join personnel a on a.id_p = p.id_confirm' +
    ' where ((p.status <> 3) or (p.status is null) ) and   o.id_version = :id_version';

  with qDoc, qDoc.SQL do
  begin
    close;
    clear;
    add(s);
    add(ordby(dbg14));
  end;
  qDoc.ParamByName('id_version').AsInteger := qEstID_VERSION.AsInteger;

end;

procedure TfmEstCalc.dbg14DblClick(Sender: TObject);
begin
  if qDoc.IsEmpty then
    exit;
  Screen.Cursor := crHourGlass;

  { if not dmIS.dbDOC.Connected then
   try
     dmIS.dbDOC.Connected := true;
   except
   end;  }
   //fmMain.StoreDoc(0,qDocID_DOC.AsInteger,'',dmIS.qS_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qDocID_DOC.AsInteger, 0, ''); // переход на новую базу документов
  //fmAll.StoreDoc_r(qDocID_DOC.AsInteger);
  Screen.Cursor := crdefault;
end;

procedure TfmEstCalc.dbg12GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qParamIN_CALC.AsInteger = 0 then
    afont.Color := clMaroon;
end;

procedure TfmEstCalc.dbg12CellClick(Column: TColumnEh);
var
  Rect: TRect;
begin
  if qParamIN_CALC.AsInteger <> 0 then
    exit;
  if (column.FieldName = 'S_AMOUNT'
    //Column.Index = 2
    ) and (qParamP_TYPE.AsInteger = 1)
    and (qParamIN_PROD_OPER.AsInteger = 1) then
  begin
    Rect := column.Grid.CellRect(column.Grid.Col, column.Grid.Row);
    qP.Close;
    qP.ParamByName('id_main_param').AsInteger := qParamID_MAIN_PARAM.AsInteger;
    qP.Open;
    qP.FetchAll;

    with dbl2 do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Left := Rect.Left + dbg9.Width + 2;
      Top := Rect.Top;
      Visible := True;
      {if keyvalue <> nil then
         keyvalue := qPID_MP_SET.AsInteger
      else}
      begin
        with qIns, qIns.SQL do
        begin
          close;
          clear;
          add('select id_mp_set,  name, s_value, status');
          add('from main_params_sets where id_main_param = :id_main_param and status = 1 ');
          ParamByName('id_main_param').AsInteger :=
            qParamID_MAIN_PARAM.AsInteger;
          open;
          if not isEmpty then
            keyvalue := fieldbyname('id_mp_set').AsInteger;
        end
      end;
      SetFocus;
      DropDown;
    end;
  end;
end;

procedure TfmEstCalc.dbg12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Rect: TRect;
begin
  if qParamIN_CALC.AsInteger <> 0 then
    exit;
  if (dbg12.SelectedField.FieldName = 'S_AMOUNT'
    //Column.Index = 2
    ) and (qParamP_TYPE.AsInteger = 1) then
  begin
    Rect :=
      dbg12.Columns.Grid.CellRect(dbg12.Col, dbg12.Row);
    // column.Grid.CellRect(column.Grid.Col, column.Grid.Row);
    qP.Close;
    qP.ParamByName('id_main_param').AsInteger := qParamID_MAIN_PARAM.AsInteger;
    qP.Open;
    qP.FetchAll;

    with dbl2 do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Left := Rect.Left + dbg9.Width + 2;
      Top := Rect.Top;
      Visible := True;
      keyvalue := qPID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;
end;

procedure TfmEstCalc.qParamBeforePost(DataSet: TDataSet);
begin
  qParamS_AMOUNT.AsString := StringReplace(qParamS_AMOUNT.AsString, ',', '.',
    [rfReplaceAll]);
end;

procedure TfmEstCalc.dbl2Click(Sender: TObject);
var
  idp: integer;
begin
  if fmMain.Status_Ord > 9 then
    exit;

  idp := qParamID_PROD_OPER_PARAM.AsInteger;

  with qIns, qIns.SQL do
  begin
    close;
    clear;
    add('update product_oper_params');
    add('set id_mp_set = :id_mp_set');
    add('where (id_prod_oper_param = :id_prod_oper_param)');
    ParamByName('id_mp_set').AsInteger := dbl2.KeyValue;
    ParamByName('id_prod_oper_param').AsInteger :=
      qParamID_PROD_OPER_PARAM.AsInteger;
    ExecSQL;
    Transaction.CommitRetaining;
    qParam.Close;
    qParam.Open;
    qParam.Locate('id_prod_oper_param', idp, []);
  end
end;

procedure TfmEstCalc.dbl2Exit(Sender: TObject);
begin
  dbl2.Visible := false;
end;

procedure TfmEstCalc.dbg12Columns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if qParamIN_CALC.AsInteger <> 0 then
  begin
    showmessage('Нельзя редактировать параметр');
    handled := true;
    exit;
  end;
end;

procedure TfmEstCalc.qEst_SAfterScroll(DataSet: TDataSet);
begin
  if qParam.DataSource.State in [dsInsert, dsEdit] then
  begin
    qParam.Post;
    qParam.Transaction.CommitRetaining;
    {}
  end;
end;

procedure TfmEstCalc.m2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('update product_objects set path = :path where id_object = :ido');
      parambyname('ido').AsInteger := dbt2.GetId;
      parambyname('path').AsString := m2.Text;
      ExecSQL;
      Transaction.CommitRetaining;
    end;
  end;
end;

procedure TfmEstCalc.sbIns_ObjClick(Sender: TObject);
begin
  Order_Param_Ins_Det(ID_ORDER, qEstOpTypID_PTYPE.AsInteger, 2, C_OBJ, 0);
end;

procedure TfmEstCalc.sbIns_OperClick(Sender: TObject);
begin
  Order_Param_Ins_Det(ID_ORDER, qEstOpTypID_PTYPE.AsInteger, 3, C_OBJ,
    qEst_SID_PROD_OPER.AsInteger);
end;

procedure TfmEstCalc.sbDelClick(Sender: TObject);
var
  idobj: integer;
begin
  idobj := qOrdParam_DetID_OBJECT.AsInteger;
  with qIN, qIN.SQL do
  begin
    Close;
    Clear;
    Add(' delete from project_ord_params p where id_order_param = :id_order_param');
    ParamByName('id_order_param').AsInteger :=
      qOrdParam_DetID_ORDER_PARAM.AsInteger;
    try
      ExecSQL;
      if dmIS.mmt.Active then
        dmIs.mmT.Commit;
    except
      if dmIS.mmt.Active then
        dmIs.mmT.Rollback;
      MsgError('Ошибка при чтении файла', 'Ошибка чтения');
    end;
  end;
  qOrdParam_Det.Close;
  qOrdParam_Det.ParamByName('id_order').AsInteger := ID_ORDER;
  qOrdParam_Det.ParamByName('id_ptype').AsInteger := ID_PTYPE;
  qOrdParam_Det.Open;
  qOrdParam_Det.Locate('id_object', idobj, []);
end;

procedure TfmEstCalc.dbg16MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Rect: TRect;
begin
  //if  qParamIN_CALC.AsInteger <> 0 then exit;
  if (dbg16.SelectedField.FieldName = 'S_AMOUNT'
    //Column.Index = 2
    ) and (qOrdParam_DetP_TYPE.AsInteger = 1) then
  begin
    Rect :=
      dbg16.Columns.Grid.CellRect(dbg16.Col, dbg16.Row);
    // column.Grid.CellRect(column.Grid.Col, column.Grid.Row);
    qP.Close;
    qP.ParamByName('id_main_param').AsInteger :=
      qOrdParam_DetID_MAIN_PARAM.AsInteger;
    qP.Open;
    qP.FetchAll;

    with dbl3 do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Left := Rect.Left + 2; //dbg15.Width + 2;
      Top := Rect.Top + 10;
      Visible := True;
      keyvalue := qPID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;

  if (dbg16.SelectedField.FieldName = 'STRVALUE'
    //Column.Index = 2
    ) then
  begin
    Rect :=
      dbg16.Columns.Grid.CellRect(dbg16.Col, dbg16.Row);
    // column.Grid.CellRect(column.Grid.Col, column.Grid.Row);
    with Edit1 do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top;
      Left := Rect.Left + 2; //dbg15.Width + 2;
      Top := Rect.Top + 15;
      Visible := True;
      text := qOrdParam_DetSTRVALUE.AsString;
      SetFocus;
    end;
  end;
end;

procedure TfmEstCalc.dbl3Exit(Sender: TObject);
begin
  dbl3.Visible := false;
end;

procedure TfmEstCalc.dbl3Click(Sender: TObject);
var
  idp: integer;
begin
  if fmMain.Status_Ord > 9 then
    exit;

  idp := qOrdParam_DetID_ORDER_PARAM.AsInteger;
  with qIns, qIns.SQL do
  begin
    close;
    clear;
    add('update project_ord_params');
    add('set id_mp_set = :id_mp_set, id_fix = :id_fix, d_fix = current_timestamp');
    add('where (id_order_param = :id_order_param)');
    ParamByName('id_mp_set').AsInteger := dbl3.KeyValue;
    ParamByName('id_order_param').AsInteger :=
      qOrdParam_DetID_ORDER_PARAM.AsInteger;
    ParamByName('id_fix').AsInteger := SysVars.RegTN;

    ExecSQL;
    Transaction.CommitRetaining;
    qOrdParam_Det.Close;
    qOrdParam_Det.Open;
    qOrdParam_Det.Locate('id_order_param', idp, []);
  end
end;

procedure TfmEstCalc.Edit1Exit(Sender: TObject);
begin
  edit1.Visible := false;
end;

procedure TfmEstCalc.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  idp: integer;
begin

  if key = 13 then
  begin
    if fmMain.Status_Ord > 9 then
      exit;
    idp := qOrdParam_DetID_ORDER_PARAM.AsInteger;

    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('update project_ord_params');
      add('set strvalue = :strvalue, id_fix = :id_fix, d_fix = current_timestamp');
      add('where (id_order_param = :id_order_param)');
      ParamByName('strvalue').AsString := edit1.text;
      ParamByName('id_order_param').AsInteger :=
        qOrdParam_DetID_ORDER_PARAM.AsInteger;
      ParamByName('id_fix').AsInteger := SysVars.RegTN;
      ExecSQL;
      Transaction.CommitRetaining;
      qOrdParam_Det.Close;
      qOrdParam_Det.Open;
      qOrdParam_Det.Locate('id_order_param', idp, []);
    end;
    edit1.Visible := false;
  end;
end;

procedure TfmEstCalc.ToolButton3Click(Sender: TObject);
begin
  if not Assigned(fmOperRoute) then
    Application.CreateForm(TfmOperRoute, fmOperRoute);
  with fmOperRoute do
  begin
    if Showing then
      Close;
    ID_VER := qEstID_VERSION.AsInteger;
    Show;
  end;

end;

procedure TfmEstCalc.ToolButton2Click(Sender: TObject);
var
  FName: string;
begin
  {If od1.Execute Then
  begin
   FName := od1.FileName;
   m2.Lines.add(FName);
   with qIns, qIns.SQL do
   begin
    close;
    clear;
    add('update product_objects set path = :path where id_object = :ido');
    parambyname('ido').AsInteger :=  dbt2.GetId;
    parambyname('path').AsString :=  m2.Text;
    ExecSQL;
    Transaction.CommitRetaining;
   end;
  end;}
  fmAll.Est_Excel(ID_ESTIMATE,1);
end;

procedure TfmEstCalc.ToolButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg1.Focused then
    GridToExcel(dbg1);
  if dbg5.Focused then
    GridToExcel(dbg5);
  if dbg9.Focused then
    GridToExcel(dbg9);
  if dbg10.Focused then
    GridToExcel(dbg10);
  if dbg11.Focused then
    GridToExcel(dbg11);
  if dbg12.Focused then
    GridToExcel(dbg12);
  if dbg14.Focused then
    GridToExcel(dbg14);
  if dbg15.Focused then
    GridToExcel(dbg15);
  if dbg16.Focused then
    GridToExcel(dbg16);
  Screen.Cursor := crDefault;

end;

end.
