unit unREP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, frxClass, frxExportPDF,
  frxDBSet, DB, IBCustomDataSet, IBQuery, ShrFunc, xlcClasses, xlEngine,
  xlReport;

type
  TfmRep = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    fDBR1: TfrxDBDataset;
    fR1: TfrxReport;
    qDOC: TIBQuery;
    qDOCID_PROJECT_DOC: TIntegerField;
    qDOCID_PROJECT: TIntegerField;
    qDOCNAME: TIBStringField;
    qDOCDOC_TYPE: TIntegerField;
    qDOCNUMBER: TIBStringField;
    qDOCD_DOC: TDateField;
    qDOCD_IN: TDateField;
    qDOCD_OUT: TDateField;
    qDOCD_PROD: TDateField;
    qDOCD_SHIPP: TDateField;
    qDOCD_FIX: TDateTimeField;
    qDOCID_FIX: TIntegerField;
    qDOCSTATUS: TIntegerField;
    qDOCID_DRAFT: TIntegerField;
    qDOCID_FOTO: TIntegerField;
    qDOCID_SDOC: TIntegerField;
    qDOCD_FILL: TDateTimeField;
    qDOCID_FILL: TIntegerField;
    qDOCNTYPE: TIBStringField;
    qDOCIS_STRUCTURED: TSmallintField;
    qDOCPNAME: TIBStringField;
    qDOCBNAME: TIBStringField;
    qDOCCLINAME: TIBStringField;
    qDOCID_PROJ_TYPE: TIntegerField;
    DNewOrds: TfrxDBDataset;
    rOrdCard: TfrxReport;
    DBDShipp: TfrxDBDataset;
    DBDTZ_S: TfrxDBDataset;
    qPl_SH: TIBQuery;
    qPl_SHID_ORDER: TIntegerField;
    qPl_SHID_C: TIntegerField;
    qPl_SHN_ORDER: TIBStringField;
    qPl_SHNAME: TIBStringField;
    qPl_SHAMOUNT: TFloatField;
    qPl_SHPRICE: TFloatField;
    qPl_SHID_CURRENCY: TIntegerField;
    qPl_SHNCURR: TIBStringField;
    qPl_SHID_AGENT: TIntegerField;
    qPl_SHAGENT: TIBStringField;
    qPl_SHID_MANAGER: TIntegerField;
    qPl_SHMANAGER: TIBStringField;
    qPl_SHID_CPROD: TIntegerField;
    qPl_SHNPROD: TIBStringField;
    qPl_SHID_CPTYPE: TIntegerField;
    qPl_SHNCPTYPE: TIBStringField;
    qPl_SHRATE: TFloatField;
    qPl_SHDEF_PRICE: TFloatField;
    qPl_SHPLAN_AMOUNT: TFloatField;
    qPl_SHPROGN_AMOUNT: TFloatField;
    qPl_SHPLAN_SUMMA: TFloatField;
    qPl_SHPRODUCED_FROM: TFloatField;
    qPl_SHPRODUCED: TFloatField;
    qPl_SHPRODUSED_SUMMA: TFloatField;
    qPl_SHIN_PLAN: TIntegerField;
    qPl_SHPROGN_SUMMA: TFloatField;
    DPlanSHIPP: TfrxDBDataset;
    rPl_SHIPP: TfrxReport;
    rPlan: TfrxReport;
    qPLAN: TIBQuery;
    qPLANID_ORDER: TIntegerField;
    qPLANID_C: TIntegerField;
    qPLANN_ORDER: TIBStringField;
    qPLANNAME: TIBStringField;
    qPLANAMOUNT: TFloatField;
    qPLANPRICE: TFloatField;
    qPLANID_CURRENCY: TIntegerField;
    qPLANNCURR: TIBStringField;
    qPLANID_AGENT: TIntegerField;
    qPLANAGENT: TIBStringField;
    qPLANID_MANAGER: TIntegerField;
    qPLANMANAGER: TIBStringField;
    qPLANID_CPROD: TIntegerField;
    qPLANNPROD: TIBStringField;
    qPLANID_CPTYPE: TIntegerField;
    qPLANNCPTYPE: TIBStringField;
    qPLANRATE: TFloatField;
    qPLANDEF_PRICE: TFloatField;
    qPLANPLAN_AMOUNT: TFloatField;
    qPLANPROGN_AMOUNT: TFloatField;
    qPLANPLAN_SUMMA: TFloatField;
    qPLANPROGN_SUMMA: TFloatField;
    qPLANPRODUCED_FROM: TFloatField;
    qPLANPRODUCED: TFloatField;
    qPLANPRODUSED_SUMMA: TFloatField;
    qPLANH_TYPE: TIBStringField;
    qPLANF_TYPE: TIBStringField;
    qPLANH_PROD: TIBStringField;
    qPLANF_PROD: TIBStringField;
    qPLANH_PEO: TIBStringField;
    qPLANF_PEO: TIBStringField;
    qPLANH_PDO: TIBStringField;
    qPLANF_PDO: TIBStringField;
    DPlan: TfrxDBDataset;
    rPL: TfrxReport;
    qEstim: TIBQuery;
    qEstimID_ESTIMATE: TIntegerField;
    qEstimID_VERSION: TIntegerField;
    qEstimD_CREATE: TDateTimeField;
    qEstimID_P: TIntegerField;
    qEstimAMOUNT: TIntegerField;
    qEstimNDS: TFloatField;
    qEstimPRICE_EQUIPMENT: TFloatField;
    qEstimPRICE_DELIVERY: TFloatField;
    qEstimPRICE_DATA: TDateField;
    qEstimPROFIT: TFloatField;
    qEstimDOP_PRICE: TFloatField;
    qEstimID_PRODUCT: TIntegerField;
    qEstimID_VERSION1: TIntegerField;
    qEstimOBJ_TYPE: TIntegerField;
    qEstimUNAME: TIBStringField;
    qEstimID_OPERATION: TIntegerField;
    qEstimNAME: TIBStringField;
    qEstimPRODOBJ: TIntegerField;
    qEstimFIO: TIBStringField;
    qEstimINAME: TIBStringField;
    qEstimONAME: TIBStringField;
    qEstimEAMOUNT: TFloatField;
    qEstimEPRICE: TFloatField;
    qEstimESUMMA: TIBBCDField;
    qEstimNPROD: TIBStringField;
    DBDEstim: TfrxDBDataset;
    rEstim: TfrxReport;
    rOrdDate: TfrxReport;
    DBDOrdDate: TfrxDBDataset;
    rProdShip: TfrxReport;
    qR_EST: TIBQuery;
    qR_ESTID_VERSION: TIntegerField;
    qR_ESTNAME: TIBStringField;
    qR_ESTD_CREATE: TDateTimeField;
    qR_ESTCREATOR: TIBStringField;
    qR_ESTD_CONFIRM: TDateTimeField;
    qR_ESTFIO_CONFIRM: TIBStringField;
    qR_ESTON_AMOUNT: TIntegerField;
    qR_ESTPRICE_DATE: TDateField;
    qR_ESTPROC_NDS: TFloatField;
    qR_ESTPRICE_DELIVERY: TFloatField;
    qR_ESTPRICE_TOOLS: TFloatField;
    qR_ESTPROC_PROFIT: TFloatField;
    qR_ESTID_DOC: TIntegerField;
    qR_ESTID_OBJ: TIntegerField;
    qR_ESTOBJ_TYPE: TIntegerField;
    qR_ESTN_PP: TIntegerField;
    qR_ESTOBJ_NAME: TIBStringField;
    qR_ESTUNAME: TIBStringField;
    qR_ESTOBJ_PRICE: TFloatField;
    qR_ESTOBJ_AMOUNT: TFloatField;
    qR_ESTOBJ_SUMMA: TFloatField;
    dbdR_EST: TfrxDBDataset;
    rR_EST: TfrxReport;
    qR_ESTID_EST: TIntegerField;
    qR_ESTID_PRODUCT: TIntegerField;
    qR_ESTNPROD: TIBStringField;
    qR_ESTDOP_PRICE: TFloatField;
    qOrder: TIBQuery;
    qOrderID_ORDER: TIntegerField;
    qOrderN_ORDER: TIBStringField;
    qOrderNAME: TIBStringField;
    qOrderAMOUNT: TIBBCDField;
    qOrderPRICE: TIBBCDField;
    qOrderPRICEA: TIBBCDField;
    qOrderID_CURRENCY: TIntegerField;
    qOrderDEF_SUM: TFloatField;
    qOrderD_OPEN: TDateTimeField;
    qOrderD_READY: TDateField;
    qOrderD_CLOSE: TDateTimeField;
    qOrderD_REJECT: TDateTimeField;
    qOrderMARGIN: TFloatField;
    qOrderDISCOUNT: TFloatField;
    qOrderMANAGER_MARGIN: TFloatField;
    qOrderDELIVERY_SUM: TFloatField;
    qOrderPLAN_COST_PRICE: TFloatField;
    qOrderID_CPTYPE: TIntegerField;
    qOrderID_CPROD: TIntegerField;
    qOrderID_OPER_TYPE: TIntegerField;
    qOrderSTATUS: TIntegerField;
    qOrderD_FIX: TDateTimeField;
    qOrderID_FIX: TIntegerField;
    qOrderID_PRODUCT: TIntegerField;
    qOrderID_PROJECT: TIntegerField;
    qOrderID_C: TIntegerField;
    qOrderID_AX: TIBStringField;
    qOrderID_DOC: TIntegerField;
    qOrderID_DOGOVOR: TIntegerField;
    qOrderREM: TMemoField;
    qOrderIS_CHARGE: TIntegerField;
    qOrderIS_COL: TIntegerField;
    qOrderID_PRICE_POS: TIntegerField;
    qOrderID_ESTIMATE: TIntegerField;
    qOrderID_VERSION_PEO: TIntegerField;
    qOrderID_VERSION: TIntegerField;
    qOrderID_ESTIMATE_KD: TIntegerField;
    qOrderID_BATCH: TIntegerField;
    qOrderNPTYPE: TIBStringField;
    qOrderNOPERTYPE: TIBStringField;
    qOrderNPROD: TIBStringField;
    qOrderNCURR: TIBStringField;
    qOrderNSTATUS: TIBStringField;
    qOrderNPROJ: TIBStringField;
    qOrderFIO: TIBStringField;
    qOrderDOG_NUMBER: TIBStringField;
    qOrderDOG_NUMBER_: TIBStringField;
    qOrderDOG_DATE_IN: TDateField;
    qOrder_S: TIBQuery;
    qOrder_SID_ORD_EVENT: TIntegerField;
    qOrder_SNAME_EVENT: TIBStringField;
    qOrder_SD_PLAN: TDateTimeField;
    qOrder_SID_PLAN: TIntegerField;
    qOrder_SFIO_PLAN: TIBStringField;
    qOrder_SD_FACT: TDateTimeField;
    qOrder_SID_FACT: TIntegerField;
    qOrder_SFIO_FACT: TIBStringField;
    qPlan_SH: TIBQuery;
    qOrder_Param: TIBQuery;
    qOrder_ParamNAME: TIBStringField;
    qOrder_ParamID_ORDER_PARAM: TIntegerField;
    qOrder_ParamID_PT_PARAM: TIntegerField;
    qOrder_ParamS_AMOUNT: TIBStringField;
    qOrder_ParamAMOUNT: TFloatField;
    qOrder_ParamID_MP_SET: TIntegerField;
    qOrder_ParamMPNAME: TIBStringField;
    qOrder_ParamID_MAIN_PARAM: TIntegerField;
    qOrder_ParamIN_ORDER: TIntegerField;
    qOrder_ParamSTRVALUE: TIBStringField;
    qOrder_ParamP_TYPE: TIntegerField;
    qEst_Oper: TIBQuery;
    qEst_MTC: TIBQuery;
    DBDOrder: TfrxDBDataset;
    DBDOrder_S: TfrxDBDataset;
    DBDPlan_SH: TfrxDBDataset;
    DBDOrder_Param: TfrxDBDataset;
    DBDEst_Oper: TfrxDBDataset;
    DBDEst_MTC: TfrxDBDataset;
    qOrderNAME_AGENT: TIBStringField;
    qEst_OperID_SPOS: TIntegerField;
    qEst_OperID_ESTIMATE: TIntegerField;
    qEst_OperID_OBJ: TIntegerField;
    qEst_OperNAME: TIBStringField;
    qEst_OperUNAME: TIBStringField;
    qEst_OperOBJ_KIND: TIntegerField;
    qEst_OperAMOUNT: TFloatField;
    qEst_OperPRICE: TFloatField;
    qEst_OperTOTAL: TFloatField;
    qEst_OperAMOUNT_TIME: TFloatField;
    qEst_OperCOST: TIBBCDField;
    qEst_OperCOST0: TFloatField;
    qEst_OpernAmount_Time: TStringField;
    frxRepTeh_Order: TfrxReport;
    qEst_MTCID_ESTIMATE: TIntegerField;
    qEst_MTCID_OBJ: TIntegerField;
    qEst_MTCNAME: TIBStringField;
    qEst_MTCUNAME: TIBStringField;
    qEst_MTCAMOUNT: TFloatField;
    qEst_MTCSMLVAL: TFloatField;
    qEst_MTCNAME_P: TIBStringField;
    qEst_MTCFACTOR: TFloatField;
    qEst_MTCAMOUNT_P: TFloatField;
    frxRepT_Order1: TfrxReport;
    qOrderPHONE: TIBStringField;
    qMat_Base: TIBQuery;
    qOrder_Pos: TIBQuery;
    qMat_BaseID_ITEM: TIntegerField;
    qMat_BaseIS_BASE: TIntegerField;
    qMat_BaseNAME: TIBStringField;
    DBDMat_Base: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDOrder_Pos: TfrxDBDataset;
    qOrder_PosNAME: TIBStringField;
    qOrder_PosAMOUNT: TFloatField;
    qOrder_PosPRICEA: TIBBCDField;
    qOrder_PosTOTAL: TFloatField;
    qOrder_PosNAME_U: TIBStringField;
    qOrder_PosAM_H: TFloatField;
    qOrder_PosAM_W: TFloatField;
    qOrder_PosAM_ORD: TIBBCDField;
    qOrder_PosPL: TFloatField;
    qOrder_PosNDS: TFloatField;
    qOrder_PosTOTAL_NDS: TFloatField;
    frxRepT_Order: TfrxReport;
    frxReport2: TfrxReport;
    qEst_MTCNAME_CALC: TIBStringField;
    qEst_MTCCALC_AMOUNT: TFloatField;
    qOrderPATH: TBlobField;
    qOrderID_CONSTR: TIntegerField;
    qOrderFIO_CONSTR: TIBStringField;
    qOrder_PosPRICE: TFloatField;
    xlRepTZ: TxlReport;
    daOrder: TDataSource;
    qOrder_ParamnAm: TStringField;
    qOrderNAME_ORDTYPE: TIBStringField;
    qOrderORD_TYPE: TIntegerField;
    qOrderLID: TIBStringField;
    qOrd_Lid: TIBQuery;
    qOrd_LidID_ORDER: TIntegerField;
    qOrd_LidN_ORDER: TIBStringField;
    DBDOrd_Lid: TfrxDBDataset;
    qOrd_Param_Obj: TIBQuery;
    dsOrd_Param_Obj: TDataSource;
    qOrd_Param_ObjNAME: TIBStringField;
    qOrd_Param_ObjS_AMOUNT: TIBStringField;
    qOrd_Param_ObjSTRVALUE: TIBStringField;
    qOrd_Param_ObjOB_NAME: TIBStringField;
    qOrd_Param_ObjOP_NAME: TIBStringField;
    qOrd_Param_ObjnAM: TStringField;
    DBDOrd_Param_Obj: TfrxDBDataset;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qEst_OperCalcFields(DataSet: TDataSet);
    procedure qOrder_ParamCalcFields(DataSet: TDataSet);
    procedure qOrd_Param_ObjCalcFields(DataSet: TDataSet);
  private
    procedure GetDocImage(Doc_id: integer; Fr: word);
    { Private declarations }
  public
    NRep: integer;
    procedure PrintMainDoc(IDM: integer);
    procedure OpenShipp;
    procedure OpenPlan;
    { Public declarations }
  end;

var
  fmRep: TfmRep;

implementation
uses unMain, unIS, unPlanShipp;

{$R *.dfm}

procedure TfmRep.OpenShipp;
begin
  Screen.Cursor := crHourGlass;
  with qPl_SH, qPl_SH.SQL do
  begin
    Close;
    Clear;
    Add('select * from PLAN_ORD_SHIPP(:d1,:d2)');
    ParamByName('d1').AsDate := fmPlanShipp.dtp1.Date;
    ParamByName('d2').AsDate := fmPlanShipp.dtp2.Date;
    Add('where  1=1');
    if fmPlanShipp.cb1.Checked then
      Add('and price > 0');
    if fmPlanShipp.tb8.Down then
      Add('and in_plan = 1');
    if fmPlanShipp.tb9.Down then
      Add('and plan amount = 0');
    if fmPlanShipp.lcb1.KeyValue <> NULL then
      Add('and ID_MANAGER = ' + IntToStr(fmPlanShipp.lcb1.KeyValue));
    if fmPlanShipp.lcb2.KeyValue <> NULL then
      Add('and ID_AGENT = ' + IntToStr(fmPlanShipp.lcb2.KeyValue));
    Add('order by ID_CPROD, ID_CPTYPE, N_ORDER');
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmRep.OpenPlan;
begin
  Screen.Cursor := crHourGlass;
  with qPlan, qPlan.SQL do
  begin
    Close;
    Clear;
    Add('select * from PLAN_PROD(:d1,:d2)');
    ParamByName('d1').AsDate := fmPlanShipp.dtp1.Date;
    ParamByName('d2').AsDate := fmPlanShipp.dtp2.Date;
    Add('where 1 = 1');
    if fmPlanShipp.cb1.Checked then
      Add('and price > 0');
    Add('order by N_ORDER');
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmRep.GetDocImage(Doc_id: integer; Fr: word);
var
  FN: string;
begin
  with dmIS.qR_BODY do
  try
    Close;
    ParamByName('d1').Value := DOC_ID;
    Open;
    if IsEmpty then
      exit;
    FN := SysVars.IsDir + '\Tmp\' + dmIS.qR_BODYFILENAME.Value;
    ReadBlob(dmIS.qR_BODYBODY, FN);
    try
      case Fr of
        //     1:TfrPictureView(frReport1.FindObject('Picture2')).Picture.LoadFromFile(FN);
        //     2:TfrPictureView(frReport2.FindObject('Picture2')).Picture.LoadFromFile(FN);
        3: TfrxPictureView(fR1.FindObject('Picture2')).Picture.LoadFromFile(FN);
        //     4:TfrxPictureView(frxReport2.FindObject('Picture2')).Picture.LoadFromFile(FN);
      end;
    except
      MsgError('����������������� ����������� ������', '�������� �����������');
    end;
  finally;
    DeleteFile(FN);
  end;
end;

procedure TfmRep.PrintMainDoc(IDM: integer);
var FN :String;
begin
  Screen.Cursor := crHourGlass;
  with fmRep.qDOC do
  begin
    Close;
    ParamByName('idd1').AsInteger := IDM;
    Open;
  end;
  if qDOCIS_STRUCTURED.IsNull then
  begin
    Screen.Cursor := crDefault;
    exit;
  end;
  with dmIS.qDOC_S, dmIS.qDOC_S.SQL do
  begin
    Close;
    Clear;
    Add('select distinct S.ID_ROW, S.NAME, S.PARENT, S.STATUS, S.DATA_TYPE,');
    Add('D.ID_DOC_DATA, D.ROW_SMALVAL, D.ROW_VALUE');
    Add('from  PROJ_DOC_DATA D right join PROJ_DOC_STRUCTURE S');
    Add('on S.ID_ROW = D.ID_ROW and D.ID_PROJ_DOC = :d1 where S.DOC_TYPE = :t1');
    Add('and S.PROJ_TYPE = :pt1');
    if not fmMain.UF17 then
      Add('and S.STATUS IS NULL');
    Add('order by S.ID_ROW');
    ParamByName('t1').AsInteger := qDOCDOC_TYPE.AsInteger;
    ParamByName('d1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
    ParamByName('pt1').AsInteger := qDOCID_PROJ_TYPE.AsInteger;
    Open;
  end;
  Screen.Cursor := crDefault;
  if dmIS.qDOC_S.IsEmpty then
    exit;
  if not (Pos(ansiuppercase('����'), ansiuppercase(qDOCNTYPE.AsString)) > 0)
    then
  begin
    fR1.Script.Variables['NameDoc'] := qDOCNAME.AsString;
    fR1.Script.Variables['Cli'] := qDOCCLINAME.AsString;
    fR1.Script.Variables['Brand'] := qDOCBNAME.AsString;
    fR1.Script.Variables['Product'] := qDOCPNAME.AsString;
    fR1.Script.Variables['Num'] := qDOCID_PROJECT.AsString +
      '/' + qDOCID_PROJECT_DOC.AsString;
    if qDOCID_DRAFT.IsNull then
    begin
      fR1.Pages[1].Clear;
      fR1.Pages[1].Visible := False;
    end
    else
     try
      FN := Old_DocBody(qDOCID_DRAFT.AsInteger, 1, '');
      TfrxPictureView(fR1.FindObject('Picture2')).Picture.LoadFromFile(FN);
     except
     end;
     //  GetDocImage(qDOCID_DRAFT.AsInteger, 3);
    fR1.ShowReport;
  end
  else
  begin
    fR1.Script.Variables['NameDoc'] := qDOCNAME.AsString;
    fR1.Script.Variables['Cli'] := qDOCCLINAME.AsString;
    fR1.Script.Variables['Brand'] := qDOCBNAME.AsString;
    fR1.Script.Variables['Product'] := qDOCPNAME.AsString;
    fR1.Script.Variables['Num'] := qDOCID_PROJECT.AsString +
      '/' + qDOCID_PROJECT_DOC.AsString;
    if qDOCID_DRAFT.IsNull then
    begin
      fR1.Pages[1].Clear;
      fR1.Pages[1].Visible := False;
    end
    else
      GetDocImage(qDOCID_DRAFT.AsInteger, 3);
    fR1.ShowReport;
  end;
  dmIS.qDOC_S.Close;
  qDOC.Close;
end;

procedure TfmRep.FormActivate(Sender: TObject);
begin
  { if not dmIS.dbDOC.Connected then
      dmIS.dbDOC.Connected := True;   }
end;

procedure TfmRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // dmIS.dbDOC.Connected := False;
end;

procedure TfmRep.qEst_OperCalcFields(DataSet: TDataSet);
begin
  if (qEst_OperAMOUNT_TIME.AsFloat <> 0) then
    qEst_OpernAmount_Time.AsString := HourToTime(qEst_OperAMOUNT_TIME.AsFloat);
  if (qEst_OperAMOUNT_TIME.AsFloat = 0) and
    (qEst_OperAMOUNT.AsFloat > 0) then
    qEst_OpernAmount_Time.AsString := qEst_OperAMOUNT.AsString;

end;

procedure TfmRep.qOrder_ParamCalcFields(DataSet: TDataSet);
begin
  qOrder_ParamnAm.AsString := qOrder_ParamS_AMOUNT.AsString + ' ' +
    qOrder_ParamSTRVALUE.AsString;
end;

procedure TfmRep.qOrd_Param_ObjCalcFields(DataSet: TDataSet);
begin
  qOrd_Param_ObjnAM.AsString := qOrd_Param_ObjS_AMOUNT.AsString + ' ' +
    qOrd_Param_ObjSTRVALUE.AsString;

end;

end.
