unit unKOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShrFunc, unMainForm, StdCtrls, Buttons, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh,
  ToolWin, Grids, IBUpdateSQL, xlcClasses, xlEngine, xlReport, ImgList,
  Menus, DBSTrees, dbsumlst, uXML_Parser;

type
  TfmKOrder = class(TMainForm)
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    p1: TPanel;
    qCli: TIBQuery;
    dsCli: TDataSource;
    qCliID_ITEM: TIntegerField;
    qCliNAME: TIBStringField;
    qMan: TIBQuery;
    qProj: TIBQuery;
    qOrder: TIBQuery;
    dsMan: TDataSource;
    dsProj: TDataSource;
    dsOrder: TDataSource;
    qManID_P: TIntegerField;
    qManFIO: TIBStringField;
    qProd: TIBQuery;
    qPType: TIBQuery;
    dsProd: TDataSource;
    dsPType: TDataSource;
    qProdID_P_AREA: TIntegerField;
    qProdNAME: TIBStringField;
    qPTypeID_PTYPE: TIntegerField;
    qPTypeNAME: TIBStringField;
    qPTypeOPERTYPE: TIBStringField;
    qProjID_PROJECT: TIntegerField;
    qProjNAME: TIBStringField;
    p2: TPanel;
    pc2: TPageControl;
    tc1: TTabSheet;
    tc2: TTabSheet;
    qPr: TIBQuery;
    dsPr: TDataSource;
    qPrID_PTYPE: TIntegerField;
    qPrID_PRICE: TIntegerField;
    qPrID_VERSION: TIntegerField;
    qPrID_ESTIMATE: TIntegerField;
    qPrID_ITEM: TIntegerField;
    qPrENAME: TIBStringField;
    qPrPNAME: TIBStringField;
    qPrVNAME: TIBStringField;
    qPrPROD: TIBStringField;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    qOrdParam: TIBQuery;
    dsOrdParam: TDataSource;
    upOrdParam: TIBUpdateSQL;
    qOrdParamNAME: TIBStringField;
    qOrdParamID_ORDER_PARAM: TIntegerField;
    qOrdParamID_PT_PARAM: TIntegerField;
    qOrdParamS_AMOUNT: TIBStringField;
    qOrdParamAMOUNT: TFloatField;
    qOrdParamID_MP_SET: TIntegerField;
    qOrdParamMPNAME: TIBStringField;
    qOrdParamID_MAIN_PARAM: TIntegerField;
    qOrdParamIN_ORDER: TIntegerField;
    qP: TIBQuery;
    qPID_MP_SET: TIntegerField;
    qPNAME: TIBStringField;
    qPS_VALUE: TFloatField;
    dsP: TDataSource;
    qOrdParamP_TYPE: TIntegerField;
    qIns: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    pcRec: TPageControl;
    TabSheet1: TTabSheet;
    ToolBar2: TToolBar;
    tbDel: TToolButton;
    dbl2: TDBLookupComboBox;
    gb1: TGroupBox;
    Splitter3: TSplitter;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    lb1: TLabel;
    Label4: TLabel;
    lb2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lcb2: TDBLookupComboboxEh;
    ed1: TEdit;
    dtp1: TDBDateTimeEditEh;
    lcb5: TDBLookupComboboxEh;
    Splitter4: TSplitter;
    Panel3: TPanel;
    gb2: TGroupBox;
    Splitter5: TSplitter;
    gb3: TGroupBox;
    dbn2: TDBNavigator;
    dbg2: TDBGridEh;
    dbn1: TDBNavigator;
    dbg3: TDBGridEh;
    Label9: TLabel;
    lb3: TLabel;
    Label12: TLabel;
    dtp2: TDBDateTimeEditEh;
    Label15: TLabel;
    ed4: TEdit;
    Label16: TLabel;
    ed6: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    lb4: TLabel;
    lb5: TLabel;
    Splitter6: TSplitter;
    Label21: TLabel;
    edDog: TEdit;
    Label17: TLabel;
    Label23: TLabel;
    lb6: TLabel;
    Label25: TLabel;
    lb7: TLabel;
    cb1: TCheckBox;
    ed2: TEdit;
    qIns1: TIBQuery;
    qCHIEF: TIBQuery;
    qCHIEFID_CHIEF: TIntegerField;
    qCHIEFFIO: TIBStringField;
    dsCHIFF: TDataSource;
    Label24: TLabel;
    edstrv: TEdit;
    cb3: TCheckBox;
    sbDog: TSpeedButton;
    lbNomDog: TLabel;
    qPrice: TIBQuery;
    qPriceNAME_EST: TIBStringField;
    qPriceID_VERSION: TIntegerField;
    qPriceID_ITEM: TIntegerField;
    qPriceNAMETMC: TIBStringField;
    qPriceVNAME: TIBStringField;
    qPriceID_PRICE: TIntegerField;
    qPriceNAME_PRICE: TIBStringField;
    qPriceD_PRICE: TDateField;
    qPriceID_ESTIMATE: TIntegerField;
    qPriceD_EDIT: TDateTimeField;
    qPriceID_EDIT: TIntegerField;
    qPriceD_CONFIRM: TDateTimeField;
    qPriceID_CONFIRM: TIntegerField;
    qPriceFIO_CONFIRM: TIBStringField;
    qPriceFIO_PRICE: TIBStringField;
    qPriceFIO_EST: TIBStringField;
    qPriceID_PTYPE: TIntegerField;
    qPricePTYPE: TIBStringField;
    dsPrice: TDataSource;
    qPrice_Pos: TIBQuery;
    qPrice_PosID_PRICE_POS: TIntegerField;
    qPrice_PosID_PRICE: TIntegerField;
    qPrice_PosAMOUNT: TFloatField;
    qPrice_PosPRICE: TFloatField;
    qPrice_PosPROFIT: TFloatField;
    qPrice_PosEST_PRICE: TFloatField;
    dsPrice_Pos: TDataSource;
    qPrice_PosTOTAL: TFloatField;
    Label26: TLabel;
    lcb6: TDBLookupComboboxEh;
    bbEstimate: TBitBtn;
    GroupBox1: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    edCast_R: TEdit;
    edSum_R: TEdit;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label22: TLabel;
    ed3: TEdit;
    ed5: TEdit;
    Label30: TLabel;
    edCastMen: TEdit;
    lcb1: TDBLookupComboboxEh;
    lcb3: TDBLookupComboboxEh;
    lcb55: TDBLookupComboboxEh;
    Label20: TLabel;
    ed7: TEdit;
    dbg1: TDBGridEh;
    dbg12: TDBGridEh;
    Splitter1: TSplitter;
    qPrice_Ptype: TIBQuery;
    dsPrice_Ptype: TDataSource;
    qPrice_PtypeID_PRICE: TIntegerField;
    qPrice_PtypeNAME: TIBStringField;
    lbPrice_pos: TLabel;
    Splitter7: TSplitter;
    qEst_TMC: TIBQuery;
    qEst_TMCID_SPOS: TIntegerField;
    qEst_TMCID_ESTIMATE: TIntegerField;
    qEst_TMCID_OBJ: TIntegerField;
    qEst_TMCNAME: TIBStringField;
    qEst_TMCUNAME: TIBStringField;
    qEst_TMCOBJ_KIND: TIntegerField;
    qEst_TMCAMOUNT: TFloatField;
    qEst_TMCPRICE: TFloatField;
    qEst_TMCTOTAL: TFloatField;
    qEst_Work: TIBQuery;
    qEst_WorkID_SPOS: TIntegerField;
    qEst_WorkID_ESTIMATE: TIntegerField;
    qEst_WorkID_OBJ: TIntegerField;
    qEst_WorkNAME: TIBStringField;
    qEst_WorkUNAME: TIBStringField;
    qEst_WorkOBJ_KIND: TIntegerField;
    qEst_WorkAMOUNT: TFloatField;
    qEst_WorkPRICE: TFloatField;
    qEst_WorkTOTAL: TFloatField;
    qEst_WorkAMOUNT_TIME: TFloatField;
    qEst_WorkCOST: TIBBCDField;
    qEst_WorkCOST0: TFloatField;
    dsEst_TMC: TDataSource;
    dsEst_Work: TDataSource;
    qEst_WorknAmount_Time: TStringField;
    gbEst: TGroupBox;
    dbg5: TDBGridEh;
    Splitter8: TSplitter;
    dbg6: TDBGridEh;
    Panel4: TPanel;
    dbg4: TDBGridEh;
    Label29: TLabel;
    Label31: TLabel;
    lbCurs: TLabel;
    dtpDate_Open: TDBDateTimeEditEh;
    Label32: TLabel;
    edDef: TEdit;
    p3: TPanel;
    Panel5: TPanel;
    Label36: TLabel;
    edFind: TEdit;
    dbt1: TDBS_TreeView;
    Panel6: TPanel;
    Label37: TLabel;
    lb: TLabel;
    p4: TPanel;
    Splitter9: TSplitter;
    Panel7: TPanel;
    Panel8: TPanel;
    clb1: TCoolBar;
    tlb1: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton4: TToolButton;
    tb3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton9: TToolButton;
    Label39: TLabel;
    edFind_Est: TEdit;
    dbg7: TDBGridEh;
    DBNavigator2: TDBNavigator;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    il1: TImageList;
    xlReport1: TxlReport;
    qEst: TIBQuery;
    qEstID_ESTIMATE: TIntegerField;
    qEstID_VERSION: TIntegerField;
    qEstNAME: TIBStringField;
    qEstD_CREATE: TDateTimeField;
    qEstD_CONFIRM: TDateTimeField;
    qEstAMOUNT: TIntegerField;
    qEstPRICE_DATE: TDateField;
    qEstSUM_NDS: TFloatField;
    qEstPRICE_DELIVERY: TFloatField;
    qEstPRICE_TOOLS: TFloatField;
    qEstPROFIT: TFloatField;
    qEstID_DOC: TIntegerField;
    qEstDOP_PRICE: TFloatField;
    dsEst: TDataSource;
    qMat: TIBQuery;
    dsMat: TDataSource;
    qOper: TIBQuery;
    dsOper: TDataSource;
    qFIO: TIBQuery;
    qFIOID_P: TIntegerField;
    qFIOFIO: TIBStringField;
    dsFIO: TDataSource;
    qC_ORD: TIBQuery;
    qC_ORDN_ORDER: TIBStringField;
    qC_ORDNAME: TIBStringField;
    qC_ORDID_PRODUCT: TIntegerField;
    qC_ORDID_ESTIMATE: TIntegerField;
    qC_ORDSTATUS: TIntegerField;
    dsC_ORD: TDataSource;
    qMatID_SPOS: TIntegerField;
    qMatID_ESTIMATE: TIntegerField;
    qMatID_OBJ: TIntegerField;
    qMatNAME: TIBStringField;
    qMatUNAME: TIBStringField;
    qMatOBJ_KIND: TIntegerField;
    qMatAMOUNT: TFloatField;
    qMatPRICE: TFloatField;
    qMatTOTAL: TFloatField;
    qOperID_SPOS: TIntegerField;
    qOperID_ESTIMATE: TIntegerField;
    qOperID_OBJ: TIntegerField;
    qOperNAME: TIBStringField;
    qOperUNAME: TIBStringField;
    qOperOBJ_KIND: TIntegerField;
    qOperAMOUNT: TFloatField;
    qOperPRICE: TFloatField;
    qOperTOTAL: TFloatField;
    qOperAMOUNT_TIME: TFloatField;
    qOperCOST: TIBBCDField;
    qOperCOST0: TFloatField;
    qOpernAmount_Time: TStringField;
    lbProd: TLabel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    pnEst: TPanel;
    qVer: TIBQuery;
    dsVer: TDataSource;
    qVerID_VERSION: TIntegerField;
    qVerNAME: TIBStringField;
    qVerDATA: TDateTimeField;
    qVerCREATER: TIntegerField;
    qVerSTATUS: TIntegerField;
    qVerREM: TMemoField;
    qVerID_ITEM: TIntegerField;
    qVerID_PRICE: TIntegerField;
    qPTypeDOP_PRICE: TFloatField;
    qPTypePROFIT: TFloatField;
    qEst_TMC_E: TIBQuery;
    qEst_TMC_EID_EST_POS: TIntegerField;
    qEst_TMC_EID_PROD_OPER: TIntegerField;
    qEst_TMC_EID_ITEM: TIntegerField;
    qEst_TMC_ENAME: TIBStringField;
    qEst_TMC_EAMOUNT: TFloatField;
    qEst_TMC_EFULL_AMOUNT: TFloatField;
    qEst_TMC_EWASTE: TFloatField;
    qEst_TMC_EPRICE: TFloatField;
    qEst_TMC_EPRICE0: TFloatField;
    qEst_TMC_ETOTAL: TFloatField;
    qEst_TMC_EID_UNIT: TIntegerField;
    qEst_TMC_EUNAME: TIBStringField;
    qEst_TMC_EIS_COMM: TIntegerField;
    qEst_TMC_EIS_BASE: TIntegerField;
    qEst_Oper_E: TIBQuery;
    qEst_Oper_EID_EST_POS: TIntegerField;
    qEst_Oper_EID_ESTIMATE: TIntegerField;
    qEst_Oper_EID_PROD_OPER: TIntegerField;
    qEst_Oper_EAMOUNT: TFloatField;
    qEst_Oper_EFULL_AMOUNT: TFloatField;
    qEst_Oper_EWASTE: TFloatField;
    qEst_Oper_EAMOUNT_TIME: TFloatField;
    qEst_Oper_EPRICE: TFloatField;
    qEst_Oper_EPRICE0: TFloatField;
    qEst_Oper_ETOTAL: TFloatField;
    qEst_Oper_EID_UNIT: TIntegerField;
    qEst_Oper_EID_AREA: TIntegerField;
    qEst_Oper_EID_OPERATION: TIntegerField;
    qEst_Oper_ENAME: TIBStringField;
    qEst_Oper_ECALC_TIME: TMemoField;
    qEst_Oper_EUNAME: TIBStringField;
    qEst_Oper_EID_OPER_TYPE: TIntegerField;
    qEst_Oper_EOTNAME: TIBStringField;
    qEst_Oper_EID_CALC: TIntegerField;
    qEst_Oper_EWASTE_DEF: TFloatField;
    qEst_Oper_ETIME_WASTE: TFloatField;
    qEst_Oper_EIS_GROUP: TIntegerField;
    PageControl3: TPageControl;
    dsEst_TMC_E: TDataSource;
    dsEst_Oper_E: TDataSource;
    dbg10: TDBGridEh;
    dbg11: TDBGridEh;
    Splitter11: TSplitter;
    tbOpen: TToolButton;
    SpeedButton1: TSpeedButton;
    qEst_WorknTotal_Def: TFloatField;
    qEst_TMCnTotal_Def: TFloatField;
    dbg9: TDBGridEh;
    Splitter12: TSplitter;
    dbg8: TDBGridEh;
    ToolButton1: TToolButton;
    Panel10: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    Panel11: TPanel;
    pbEst: TProgressBar;
    lbOper: TLabel;
    Label40: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    od1: TOpenDialog;
    qEstTOTAL_SUM: TFloatField;
    qEstSTATUS: TIntegerField;
    Panel9: TPanel;
    m1: TMemo;
    Splitter2: TSplitter;
    Panel12: TPanel;
    Panel13: TPanel;
    SpeedButton2: TSpeedButton;
    m2: TMemo;
    Label44: TLabel;
    SpeedButton3: TSpeedButton;
    pnFull_Name: TPanel;
    m3: TMemo;
    BitBtn4: TBitBtn;
    qParam: TIBQuery;
    qParamID_PROD_OPER_PARAM: TIntegerField;
    qParamID_OPER_PARAM: TIntegerField;
    qParamNAME: TIBStringField;
    qParamID_UNIT: TIntegerField;
    qParamNAMEU: TIBStringField;
    qParamMP: TIBStringField;
    qParamDEF_MP: TIBBCDField;
    qParamID_MP_SET: TIntegerField;
    qParamMPNAME: TIBStringField;
    qParamID_MAIN_PARAM: TIntegerField;
    qParamPOSIT: TIntegerField;
    dsParam: TDataSource;
    Splitter10: TSplitter;
    dbg14: TDBGridEh;
    Label45: TLabel;
    ToolButton3: TToolButton;
    qEst_TMCCOMM_AMOUNT: TFloatField;
    qEst_TMCAM: TFloatField;
    qPL_SH: TIBQuery;
    qPL_SHID_PLAN_SHIPP: TIntegerField;
    qPL_SHID_ORDER: TIntegerField;
    qPL_SHD_PLANING: TDateField;
    qPL_SHAMOUNT: TFloatField;
    qPL_SHSUMMA: TFloatField;
    qPL_SHPLAN_TYPE: TIntegerField;
    qPL_SHD_FIX: TDateTimeField;
    qPL_SHID_FIX: TIntegerField;
    qPL_SHID_C: TIntegerField;
    qPL_SHIN_PLAN: TIntegerField;
    qPL_SHFLAG: TIntegerField;
    qPL_SHADRESS: TMemoField;
    dsPL_SH: TDataSource;
    upPL_SH: TIBUpdateSQL;
    qORD_POS: TIBQuery;
    qORD_POSID_ORDER_POS: TIntegerField;
    qORD_POSID_ORDER: TIntegerField;
    qORD_POSNAME: TIBStringField;
    qORD_POSAMOUNT: TFloatField;
    qORD_POSPRODUCED: TFloatField;
    qORD_POSSHIPPED: TFloatField;
    qORD_POSRECEIVE: TFloatField;
    qORD_POSID_PRODUCT: TIntegerField;
    qORD_POSID_C: TIntegerField;
    qORD_POSD_FIX: TDateTimeField;
    qORD_POSID_FIX: TIntegerField;
    qORD_POSID_DOC: TIntegerField;
    qORD_POSPRICE: TIBBCDField;
    qORD_POSPRICEA: TIBBCDField;
    qORD_POSID_CURRENCY: TIntegerField;
    qORD_POSID_VERSION: TIntegerField;
    qORD_POSID_ESTIMATE: TIntegerField;
    qORD_POSID_UNIT: TIntegerField;
    qORD_POSsUMPRICE: TFloatField;
    qORD_POSnUNIT: TStringField;
    qORD_POSNDS: TFloatField;
    dsORD_POS: TDataSource;
    upORD_POS: TIBUpdateSQL;
    qUNITS: TIBQuery;
    qUNITSID_UNIT: TIntegerField;
    qUNITSNAME: TIBStringField;
    dsUNITS: TDataSource;
    Label46: TLabel;
    lcb7: TDBLookupComboboxEh;
    qOrd_Type: TIBQuery;
    dsOrd_Type: TDataSource;
    qOrd_TypeID_TYPE: TIntegerField;
    qOrd_TypeNAME: TIBStringField;
    qOrd_TypeMARK: TIBStringField;
    lbNom_Name: TLabel;
    qEst_Sum_Oper_Types: TIBQuery;
    Panel14: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    sbEst: TSpeedButton;
    edKol: TEdit;
    lcbVer: TDBLookupComboboxEh;
    edTitle: TEdit;
    edDeliv: TEdit;
    dtpPrice: TDBDateTimeEditEh;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    dbgEst: TDBGridEh;
    dsEst_Sum_Oper_Types: TDataSource;
    qEst_Sum_Oper_TypesID_ESTIMATE: TIntegerField;
    qEst_Sum_Oper_TypesID_OPER_TYPE: TIntegerField;
    qEst_Sum_Oper_TypesFACTOR: TFloatField;
    qEst_Sum_Oper_TypesTOTAL: TFloatField;
    qEst_Sum_Oper_TypesID_PTYPE: TIntegerField;
    qEst_Sum_Oper_TypesPROFIT: TFloatField;
    qEst_Sum_Oper_TypesDOP_PRICE: TFloatField;
    qEst_Sum_Oper_TypesTOTAL_OPER: TFloatField;
    qEst_Sum_Oper_TypesTOTAL_MAT: TFloatField;
    qEst_Sum_Oper_TypesCOMM_AMOUNT: TFloatField;
    qEst_Sum_Oper_TypesNAME_PROD: TIBStringField;
    qEst_Sum_Oper_TypesnID_CTYPE: TStringField;
    qP_TYPE: TIBQuery;
    qP_TYPEID_PTYPE: TIntegerField;
    qP_TYPENAME: TIBStringField;
    qP_TYPEOPERTYPE: TIBStringField;
    qP_TYPEDOP_PRICE: TFloatField;
    qP_TYPEPROFIT: TFloatField;
    dsP_TYPE: TDataSource;
    UpESOT: TIBUpdateSQL;
    qPrSTATUS: TIntegerField;
    qPrNAME: TIBStringField;
    SpeedButton4: TSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    edProf: TEdit;
    edDopPr: TEdit;
    qEstSUM_PROC: TFloatField;
    edType_Prod: TEdit;
    qEst_WorkARCH: TIBStringField;
    qEst_Oper_EARCH: TIBStringField;
    qOperARCH: TIBStringField;
    cbReserv: TCheckBox;
    Label47: TLabel;
    dtpPlan: TDBDateTimeEditEh;
    qPL_SHkol_day: TIntegerField;
    qPL_SHO_D: TDateField;
    qEstFIOCR: TIBStringField;
    qEstFIOCONF: TIBStringField;
    qEstTOTAL_SUM_AL: TFloatField;
    qEstSUM_OPER: TFloatField;
    qEstSUM_MAT: TFloatField;
    qEstSUM_OPER_PROC: TFloatField;
    qEstSUM_MAT_PROC: TFloatField;
    qEstSUM_PROC_ONE: TFloatField;
    qEstnSUM_TOTAL_SALE: TFloatField;
    qEstnSUM_TOTAL_SALE_ONE: TFloatField;
    qORD_POSS: TFloatField;
    pnDok: TPanel;
    Panel15: TPanel;
    GroupBox3: TGroupBox;
    dbgDok: TDBGridEh;
    dsPDoc: TDataSource;
    qPDoc: TIBQuery;
    qPDocID_PROJECT_DOC: TIntegerField;
    qPDocNAME: TIBStringField;
    qPDocDOC_TYPE: TIntegerField;
    qPDocNUMBER: TIBStringField;
    qPDocnTP: TStringField;
    qPDocSTATUS: TIntegerField;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel16: TPanel;
    Label48: TLabel;
    edDok: TEdit;
    SpeedButton7: TSpeedButton;
    qDelivery_types: TIBQuery;
    qDelivery_typesID_DELIVERY_TYPE: TIntegerField;
    qDelivery_typesNAME: TIBStringField;
    qDelivery_typesCALC_DELIVERY: TMemoField;
    qDelivery_typesDEFAULT_OBJ_TYPE: TIntegerField;
    qDelivery_typesDEFAULT_CAR_TYPE: TIntegerField;
    qRegion: TIBQuery;
    qRegionID_REGION: TIntegerField;
    qRegionNAME: TIBStringField;
    qRegionID_TERMINAL: TIntegerField;
    dsRegion: TDataSource;
    dsDelivery_types: TDataSource;
    qCar_types: TIBQuery;
    qCar_typesID_TDCAR_TYPE: TIntegerField;
    qCar_typesNAME: TIBStringField;
    qObj_type: TIBQuery;
    qObj_typeOBJ_TYPE: TIntegerField;
    qObj_typeNAME: TIBStringField;
    dsObj_type: TDataSource;
    dsCar_types: TDataSource;
    qPL_SHID_DELIVERY_TYPE: TIntegerField;
    qPL_SHID_REGION: TIntegerField;
    qPL_SHOBJ_TYPE: TIntegerField;
    qPL_SHID_CAR_TYPE: TIntegerField;
    qPL_SHWEIGHT: TFloatField;
    qPL_SHDELIVERY_AMOUNT: TFloatField;
    qPL_SHDELIVERY_COST: TFloatField;
    qPL_SHnRegion: TStringField;
    qPL_SHnDeliv_type: TStringField;
    qPL_SHOBJ_T: TIBStringField;
    qPL_SHCAR_T: TIBStringField;
    BitBtn5: TBitBtn;
    qPL_SHWEIGHT_ONE: TFloatField;
    Label49: TLabel;
    lbW: TLabel;
    DEL_OBJ_T: TIBQuery;
    DEL_OBJ_TOBJ_TYPE: TIntegerField;
    DEL_OBJ_TNAME: TIBStringField;
    DEL_OBJ_TID_DELIVERY_TYPE: TIntegerField;
    qORD_POSPRODNAME: TIBStringField;
    ts3: TTabSheet;
    GroupBox4: TGroupBox;
    Splitter13: TSplitter;
    Splitter14: TSplitter;
    Panel17: TPanel;
    Label50: TLabel;
    DBText1_p: TDBText;
    DBText2_p: TDBText;
    Label51: TLabel;
    Label52: TLabel;
    lb1_p: TLabel;
    Label54: TLabel;
    lb2_p: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBText8: TDBText;
    Label60: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    lb3_p: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label72: TLabel;
    Label78: TLabel;
    sbDog_p: TSpeedButton;
    lbNomDog_p: TLabel;
    Label81: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    lbCurs_p: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    DBText5_p: TDBText;
    DBText6_p: TDBText;
    Label89: TLabel;
    SpeedButton9: TSpeedButton;
    Label90: TLabel;
    lbNom_Name_p: TLabel;
    edType_Prod_p: TEdit;
    ed1_p: TEdit;
    dtp1_p: TDBDateTimeEditEh;
    lcb5_p: TDBLookupComboboxEh;
    dtp2_p: TDBDateTimeEditEh;
    ed4_p: TEdit;
    edDog_p: TEdit;
    cb1_p: TCheckBox;
    cb3_p: TCheckBox;
    GroupBox5: TGroupBox;
    Label95: TLabel;
    Label96: TLabel;
    edCast_R_p: TEdit;
    edSum_R_p: TEdit;
    GroupBox6: TGroupBox;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    SpeedButton10: TSpeedButton;
    ed3_p: TEdit;
    ed5_p: TEdit;
    edCastMen_p: TEdit;
    lcb1_p: TDBLookupComboboxEh;
    lcb55_p: TDBLookupComboboxEh;
    ed7_p: TEdit;
    dtpDate_Open_p: TDBDateTimeEditEh;
    edDef_p: TEdit;
    lcb7_p: TDBLookupComboboxEh;
    pnFull_Name_p: TPanel;
    m3_p: TMemo;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Panel21: TPanel;
    GroupBox7: TGroupBox;
    dbn2_p: TDBNavigator;
    dbg2_p: TDBGridEh;
    GroupBox8: TGroupBox;
    dbn1_p: TDBNavigator;
    dbg3_p: TDBGridEh;
    Panel22: TPanel;
    Panel23: TPanel;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    p1_p: TPanel;
    lbOper_p: TLabel;
    ProgressBar1: TProgressBar;
    Panel25: TPanel;
    Splitter16: TSplitter;
    m1_p: TMemo;
    Panel26: TPanel;
    Panel27: TPanel;
    SpeedButton13: TSpeedButton;
    Label108: TLabel;
    m2_p: TMemo;
    Panel28: TPanel;
    Label109: TLabel;
    SpeedButton14: TSpeedButton;
    edDok_p: TEdit;
    Splitter17: TSplitter;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Splitter18: TSplitter;
    ToolBar1: TToolBar;
    tbDel_p: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    Panel29: TPanel;
    dbg4_p: TDBGridEh;
    Edit20: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    qC_ORDORD_KIND: TIntegerField;
    qPL_SHID_ORDER_POS: TIntegerField;
    Panel18: TPanel;
    cbNDS_P: TCheckBox;
    edNDS_P: TEdit;
    Label53: TLabel;
    Label55: TLabel;
    qPL_SHPOS_NAME: TIBStringField;
    qPL_SHITEM_NAME: TIBStringField;
    SpeedButton8: TSpeedButton;
    qOrdParamSTRVALUE: TIBStringField;
    Label56: TLabel;
    dsUragent: TDataSource;
    qUragent: TIBQuery;
    qUragentNAME: TIBStringField;
    qUragentID_ITEM: TIntegerField;
    lcbUragent: TDBLookupComboboxEh;
    dbgOrdLinks: TDBGridEh;
    qOrdLinks: TIBQuery;
    dsOrdLinks: TDataSource;
    qOrdLinksID_LINK: TIntegerField;
    qOrdLinksPATH: TIBStringField;
    qOrdLinksID_ORDER: TIntegerField;
    sbRfrLink: TSpeedButton;
    sbConfFile: TSpeedButton;
    Label67: TLabel;
    l_op: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);

    procedure pc1Change(Sender: TObject);
    procedure dbg4CellClick(Column: TColumnEh);
    procedure dbl2Exit(Sender: TObject);
    procedure dbl2Click(Sender: TObject);
    procedure dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1Columns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns3UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure ed6Change(Sender: TObject);
    procedure lcb2Change(Sender: TObject);
    procedure edstrvExit(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure sbDogClick(Sender: TObject);
    procedure edDogKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qEst_WorkCalcFields(DataSet: TDataSet);
    procedure dbg4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lcb5CloseUp(Sender: TObject; Accept: Boolean);
    procedure ed6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qOperCalcFields(DataSet: TDataSet);
    procedure ed6DblClick(Sender: TObject);
    procedure dbt1BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
    procedure dbg7DblClick(Sender: TObject);
    procedure edFind_EstKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcb6CloseUp(Sender: TObject; Accept: Boolean);
    procedure lcb6Change(Sender: TObject);
    procedure edFindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtpDate_OpenCloseUp(Sender: TObject; Accept: Boolean);
    procedure dbt1Change(Sender: TObject; Node: TTreeNode);
    procedure bbEstimateClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lcbVerCloseUp(Sender: TObject; Accept: Boolean);
    procedure tbOpenClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbEstClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edKolChange(Sender: TObject);
    procedure edDelivChange(Sender: TObject);
    procedure dtpPriceCloseUp(Sender: TObject; Accept: Boolean);
    procedure qEst_TMCCalcFields(DataSet: TDataSet);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbg7SortMarkingChanged(Sender: TObject);
    procedure lcb2CloseUp(Sender: TObject; Accept: Boolean);
    procedure pc2Change(Sender: TObject);
    procedure dbg7GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure edstrvKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edstrvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qOrdParamAfterScroll(DataSet: TDataSet);
    procedure ToolButton3Click(Sender: TObject);
    procedure qORD_POSBeforePost(DataSet: TDataSet);
    procedure qORD_POSAfterRefresh(DataSet: TDataSet);
    procedure qORD_POSNewRecord(DataSet: TDataSet);
    procedure qORD_POSCalcFields(DataSet: TDataSet);
    procedure qPL_SHNewRecord(DataSet: TDataSet);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEh1Columns2UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dbg6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg10GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg9GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qPL_SHnDeliv_typeChange(Sender: TField);
    procedure dbg3Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure dbg3Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure qPL_SHAfterEdit(DataSet: TDataSet);
    procedure qPL_SHAMOUNTChange(Sender: TField);
    procedure qPL_SHID_DELIVERY_TYPEChange(Sender: TField);
    procedure qPL_SHAfterPost(DataSet: TDataSet);
    procedure qPL_SHBeforePost(DataSet: TDataSet);
    procedure dbg3CellClick(Column: TColumnEh);
    procedure dbg2Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ed1_pKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbDel_pClick(Sender: TObject);
    procedure dbg3_pGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure lcb5_pCloseUp(Sender: TObject; Accept: Boolean);
    procedure dtpDate_Open_pCloseUp(Sender: TObject; Accept: Boolean);
    procedure ed7_pKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed3_pKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed5_pKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure dbg2_pColumns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure qPL_SHBeforeOpen(DataSet: TDataSet);
    procedure qORD_POSAfterScroll(DataSet: TDataSet);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgOrdLinksDblClick(Sender: TObject);
    procedure sbRfrLinkClick(Sender: TObject);
    procedure sbConfFileClick(Sender: TObject);
    procedure lcb7CloseUp(Sender: TObject; Accept: Boolean);
  private
    FTXT: string;
    procedure InsEdit_Order(kop: integer);
    procedure Est;
    procedure FindTreeItem(Citm: integer);
    procedure OpenC_ORDER;
    procedure OpenEstimate;

    function TestInfo: Boolean;
    procedure CrJpg(id_order : integer); //обновляет статус заказа для отправки хмл в АЕ


    { Private declarations }
  public
    Kop, Kop_Est: word;
    ID_ORDER, ID_AGENT, ID_New, ID_DOC: integer;
    C_EST: integer;
    C_ORD: integer;
    C_PROD: integer;
    C_ORD_KIND: integer;
    ind_CliOrd: integer; //индекс вызывающей формы
    ind_KOrder, ind_form_KOrder: integer; //индекс формы
    id_project :Integer; // код проекта
    d_Open :TDate; // Дата открытия заказа
    { Public declarations }
  end;

var
  fmKOrder: TfmKOrder;

implementation
uses unMain, unIS, unCliOrds, unClients, UnEstCalc, UnTestVersion, uAll,
  unDeliv,
  unTr, uGPStore, DateUtils, unSel_Order;

const
  id_Form = 8;
var
  f_KOrder: array[1..5] of TfmKOrder;
{$R *.dfm}

function TfmKOrder.TestInfo: Boolean;
var
  s: string;
begin
  Result := True;

{*******************************************************************************
                   ПРОВЕРКА НА ПРИЗНАК УВОЛЬНЕНИЯ СОТРУДНИКА
                  (проверка пользователя вошедшего в систему)
*******************************************************************************}
 with dmIS.qIN, dmIS.qIN.SQL do
 begin
  Close;
  Clear;
  Add('select d_dismiss from personnel where id_p = :id_p and is_fact is null');
  ParamByName('id_p').AsInteger := SysVars.RegTN;
  Open;
  if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
  begin
   MsgError('Вы не можете создать заказ, так так, менеджер ' +
   'с этой учетной записью уволен', 'Внимание');
   Result := False;
   Exit;
  end;

  // проверка на утверженный проект - закрытый при утверждении заказа
  Close;
  Clear;
  Add('select d_close from projects s where s.id_project = :id_project');
  ParamByName('id_project').AsInteger := f_CliOrds[ind_CliOrd].qOrdersID_PROJECT.AsInteger;
  Open;
  if not dmIS.qIN.FieldByName('d_close').IsNull then
  begin
   MsgError('Вы не можете утвердить заказ, так как проект закрыт', 'Внимание');
   Result := False;
   Exit;
  end;
 end;
//******************************************************************************
   if length(Trim(lcbUragent.Text)) = 0 then lcbUragent.KeyValue := null;
  // Проверка на организацию
   if (lcbUragent.KeyValue = null) then
    if (d_Open = 0) then
    begin
     if (DateOf(Server_now(dmIS.qIM)) >= StrToDate('01.06.2013')) then
     begin
      MsgError('Не выбрана собственная организация', 'Проверка данных');
      Result := False;
      Exit;
     end else if MsgQuestion('Вы хотите указать собственную организацию?',
    'Внимание') = id_YES then
     begin
      Result := False;
      Exit;
     end;
    end else if (d_Open >= StrToDate('01.06.2013')) then
     begin
      MsgError('Не выбрана собственная организация', 'Проверка данных');
      Result := False;
      Exit;
     end else if MsgQuestion('Вы хотите указать собственную организацию?',
    'Внимание') = id_YES then
     begin
     Result := False;
     Exit;
    end;

   if pc1.ActivePage = ts1 then
   begin

    if (Length(ed1.Text) > 64) then
    begin
      MsgError('Наименование заказа больше 64 символов...', 'Проверка данных');
      result := False;
      exit;
    end;
    if lcb7.KeyValue = NULL then
    begin
      MsgError('Не задан Тип заказа', 'Проверка данных');
      result := False;
      exit;
    end;

    if lcb1.KeyValue = NULL then
    begin
      MsgError('Не задан Менеджер заказа', 'Проверка данных');
      result := False;
      exit;
    end;

    if lcb2.KeyValue = NULL then
    begin
      MsgError('Не задан Тип продукции', 'Проверка данных');
      result := False;
      exit;
    end;

    if (lcb3.KeyValue = NULL) or (lcb3.KeyValue = 0) then
    begin
      MsgError('Не задано Производство', 'Проверка данных');
      result := False;
      exit;
    end;
    {If Length(lbNomDog.Caption)=0 Then begin
     MsgError('Не задан № договора или договор не принадлежит клиенту','Проверка данных');
     result := False;
     exit;
    end;
    }

    if Length(ed1.Text) = 0 then
    begin
      MsgError('Не задано Наименование заказа', 'Проверка данных');
      result := False;
      exit;
    end;

    if Length(edType_Prod.Text) = 0 then
    begin
      MsgError('Не задан Вид продукции', 'Проверка данных');
      result := False;
      exit;
    end;

    with qIns1, qIns1.SQL do
    begin
      Close;
      Clear;
      Add('Select e.amount from estimates e where e.id_estimate = :id_estimate');
      ParamByName('id_estimate').AsString := ed6.Text;
      Open;
      if not IsEmpty then
        if FieldByName('amount').AsFloat <> StrToFloat(ed2.Text) then
        begin
          ShowMessage('Проверьте тираж. Кол-во в смете не соответствует тиражу...');
          result := False;
          exit;
        end;

      {close;
      clear;
      add('select sum(p.amount) sum_am');
      add('from  ORD_PLAN_SHIPP  p');
      add('where p.id_order = :id_order');
      open;
      if fieldbyname('sum_am').AsFloat > strtofloat(ed2.text) then
      begin
         ShowMessage('Сумма кол-ва по отгрузке не должна превышать тираж заказа!');
         result := False;
         exit;
      end; }
    end;
  end;

  if pc1.ActivePage = ts3 then
  begin
    if (Length(ed1_p.Text) > 64) then
    begin
      MsgError('Наименование заказа больше 64 символов...', 'Проверка данных');
      result := False;
      exit;
    end;
    if lcb7_p.KeyValue = NULL then
    begin
      MsgError('Не задан Тип заказа', 'Проверка данных');
      result := False;
      exit;
    end;

    if lcb1_p.KeyValue = NULL then
    begin
      MsgError('Не задан Менеджер заказа', 'Проверка данных');
      result := False;
      exit;
    end;

    {If Length(lbNomDog.Caption)=0 Then begin
     MsgError('Не задан № договора или договор не принадлежит клиенту','Проверка данных');
     result := False;
     exit;
    end;
    }

    if Length(ed1_p.Text) = 0 then
    begin
      MsgError('Не задано Наименование заказа', 'Проверка данных');
      result := False;
      exit;
    end;

    if Length(edType_Prod_p.Text) = 0 then
    begin
      MsgError('Не задан Вид продукции', 'Проверка данных');
      result := False;
      exit;
    end;
  end;
end;

procedure TfmKOrder.InsEdit_Order(kop: integer);
begin
// if not TestInfo then Exit;

 Screen.Cursor := crHourGlass;

 if pc1.ActivePage = ts1 then
 begin
  //********************
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
   Close;
   Clear;
   case Kop of
   1: begin
     {  with dmIS.qIN, dmIS.qIN.SQL do begin
     Close;
     Clear;
               Add('select ID,NUMBER from GET_DOC_NUMBERS(1)');
               Open;
              end;}
            {//создание проекта и проверка Проекта у клиента
              with dmIS.qIN, dmIS.qIN.SQL do begin
               Close;
               Clear;
               Add('select * from PROJECTS where id_agent = :id_agent');
               ParamByName('ID_AGENT').AsInteger := qCliID_ITEM.AsInteger;
               Open;
               if dmIs.qIN.IsEmpty then
               begin
                 with dmIS.qIN, dmIS.qIN.SQL do begin
                  Close;
                  Clear;
                  Add('select gen_id(project_id,1) ID from access_levels');
                  Open;
                 end;
                 id_proj := dmIs.qIN.FieldByName('id').AsInteger;
                 with dmIS.qIN, dmIS.qIN.SQL do begin
                  Close;
                  Clear;
                  Add('INSERT INTO PROJECTS(ID_PROJECT, BRIEF, ID_MANAGER, ID_AGENT,');
                  Add('ID_BRAND, NAME, DATA, ID_PROJ_TYPE, ID_EDIT, STATUS, SUMMA,');
                  Add('EXPENSES, CURRENCY, DATAEND, AMOUNT)');
                  Add('VALUES (:ID_PRJ, null, :ID_MANAGER, :ID_AGENT,');
                  Add('null, :NAME, current_date, :ID_PROJ_TYPE, :ID_EDIT, 1, 0,');
                  Add('0,  :id_currency, null, 0)');
                  ParamByName('ID_PRJ').AsInteger := id_proj;
                  ParamByName('ID_MANAGER').AsInteger := lcb1.KeyValue;
                  ParamByName('ID_AGENT').AsInteger := qCliID_ITEM.AsInteger;
                  ParamByName('NAME').AsString := ed1.Text;;
                  ParamByName('ID_PROJ_TYPE').AsInteger := lcb2.KeyValue;
                  ParamByName('ID_EDIT').AsInteger := SysVars.RegTN;
                  ParamByName('id_currency').AsInteger := lcb5.KeyValue;
                  ExecSQL;
                end;
               end;
              end;}
            Add('insert into PROJECT_ORDS(ID_ORDER, ID_PROJECT, NAME, AMOUNT, ID_PRODUCT,');
            Add('D_READY, N_ORDER, D_OPEN, ID_OPEN, ID_DOC, PRICE, PRICEA, ID_CURRENCY,');
            Add('ID_CPTYPE, ID_CPROD, ID_AGENT, ID_ESTIMATE, ID_CHIEF, REM, IS_CHARGE, ID_FIX,D_FIX,');
            Add('PLAN_COST_PRICE,MANAGER_MARGIN,DELIVERY_SUM,ID_DOGOVOR,IS_COL,id_price_pos,');
            Add('path,full_name,ord_type,BUCH_PROD_NAME,is_reserve, ord_kind,is_self, id_type_order)');
            Add('VALUES (:ID_ORDER, :ID_PROJECT,:NAME,:AMOUNT,:ID_PRODUCT,');
            Add(':D_READY,:N_ORDER,:D_OPEN,:ID_OPEN,:ID_DOC,:PRICE,:PRICEA,:ID_CURRENCY,');
            Add(':ID_CPTYPE,:ID_CPROD,:ID_AGENT,:ID_ESTIMATE,:ID_CHIEF,:REM,:IS_CHARGE,:ID_FIX,:D_FIX,');
            Add(':PLAN_COST_PRICE,:MANAGER_MARGIN,:DELIVERY_SUM,:ID_DOGOVOR,:IS_COL,:id_price_pos,');
            Add(':path,:full_name,:ord_type,cast(:BUCH_PROD_NAME as varchar(32)),:is_reserve, :ord_kind,:is_self, :id_type_order)');
            ParamByName('ID_ORDER').AsInteger := Id_New;
            //dmIS.qIN.FieldByName('ID').AsInteger;
            ParamByName('N_ORDER').AsString := lb2.Caption;
            //dmIS.qIN.FieldByName('NUMBER').AsString;
            ParamByName('ID_OPEN').AsInteger := SysVars.RegTN;
            ParamByName('ID_AGENT').AsInteger := qCliID_ITEM.AsInteger;
            ParamByName('ID_FIX').AsInteger := lcb1.KeyValue;
            parambyname('ord_kind').AsInteger := 0;
          end;
        2:
          begin
            Add('update PROJECT_ORDS set NAME = :NAME, AMOUNT = :AMOUNT, ID_PROJECT = :ID_PROJECT,');
            Add('ID_PRODUCT = :ID_PRODUCT,D_READY = :D_READY,N_ORDER = :N_ORDER,D_OPEN = :D_OPEN');
            Add(', ID_DOC = :ID_DOC,PRICE = :PRICE,PRICEA = :PRICEA,ID_CURRENCY = :ID_CURRENCY');
            Add(', ID_CPTYPE = :ID_CPTYPE,ID_CPROD = :ID_CPROD,ID_ESTIMATE = :ID_ESTIMATE,');
            Add('ID_CHIEF = :ID_CHIEF,REM = :REM,IS_CHARGE = :IS_CHARGE,ID_FIX = :ID_FIX, D_FIX = :D_FIX,');
            Add('PLAN_COST_PRICE = :PLAN_COST_PRICE,MANAGER_MARGIN = :MANAGER_MARGIN,');
            Add('DELIVERY_SUM = :DELIVERY_SUM,ID_DOGOVOR = :ID_DOGOVOR,IS_COL = :IS_COL,');
            Add('id_price_pos = :id_price_pos,path = :path,full_name = :full_name,ord_type = :ord_type,');
            Add('BUCH_PROD_NAME = cast(:BUCH_PROD_NAME as varchar(32)), is_reserve = :is_reserve, is_self = :is_self,');
            add('id_type_order = :id_type_order');
            Add('where ID_ORDER = :ID_ORDER');
            ParamByName('ID_ORDER').AsString := lb1.Caption;
            ParamByName('N_ORDER').AsString := lb2.Caption;
          end;
      end; //case

       if Length(Trim(l_op.Caption)) = 0 then ParamByName('id_type_order').Clear
      else ParamByName('id_type_order').AsInteger := StrToInt(Trim(l_op.Caption));
      
      ParamByName('NAME').AsString := ed1.Text;
      ParamByName('AMOUNT').AsString := ed2.Text;
      ParamByName('D_READY').Value := dtp1.Value;
      ParamByName('D_OPEN').Value := dtpDate_Open.Value;
      ParamByName('ID_FIX').AsInteger := lcb1.KeyValue;
      if lcbUragent.KeyValue <> null then
      ParamByName('is_self').AsInteger := lcbUragent.KeyValue
      else  ParamByName('is_self').Clear;
      if dtpPlan.Value > 0 then
        ParamByName('D_FIX').Value := dtpPlan.Value
      else
        ParamByName('D_FIX').Clear;
      // ParamByName('ID_DOC').AsInteger := lcb4.KeyValue;
      ParamByName('PRICE').AsCurrency := StrToCurr(ed3.Text);
      ParamByName('PRICEA').AsCurrency := 0; //StrToCurr(ed4.Text);
      if edSum_R.Text = '' then
        edSum_R.Text := '0';
      ParamByName('PLAN_COST_PRICE').AsCurrency := StrToCurr(edSum_R.Text);

      // If lcb4.KeyValue = NULL Then ParamByName('ID_PROJECT').Clear
      //  else ParamByName('ID_PROJECT').AsInteger := lcb4.KeyValue;
      ParamByName('ID_PROJECT').AsInteger :=
        f_CliOrds[ind_CliOrd].qPrjID_PROJECT.AsInteger;
      ParamByName('ID_PRODUCT').AsString := lbProd.Caption;
      ParamByName('ID_CURRENCY').AsInteger := lcb5.KeyValue;
      ParamByName('ID_CPTYPE').AsInteger := lcb2.KeyValue;

      ParamByName('ID_CPROD').AsInteger := lcb3.KeyValue;

      ParamByName('REM').AsString := m1.Lines.Text;
      ParamByName('PATH').AsString := m2.Lines.Text;
      ParamByName('FULL_NAME').AsString := m3.Lines.Text;
      if id_doc <> -1 then
        ParamByName('ID_doc').AsInteger := id_doc
      else
        ParamByName('ID_doc').clear;

      if cb1.Checked then
        ParamByName('IS_CHARGE').AsInteger := 1
      else
        ParamByName('IS_CHARGE').Clear;

      if lcb55.KeyValue = NULL then
        ParamByName('ID_CHIEF').Clear
      else
        ParamByName('ID_CHIEF').AsInteger := lcb55.KeyValue;

      if pc1.ActivePage = ts1 then
        ParamByName('ID_ESTIMATE').AsString := ed6.Text
      else
        Parambyname('id_estimate').Clear;
      // If ed6.Text = '' Then ParamByName('ID_PRODUCT').Clear
      // else ParamByName('ID_PRODUCT').AsInteger := FindProduct(StrToInt(ed6.Text)) ;

      ParamByName('MANAGER_MARGIN').AsCurrency := StrToCurr(ed5.Text);
      if ed7.Text = '' then
        ed7.Text := '0';
      ParamByName('DELIVERY_SUM').AsCurrency := StrToCurr(ed7.Text);
      ParamByName('ID_DOGOVOR').AsString := lbNomDog.Caption;
      if cb3.Checked then
        ParamByName('IS_COL').AsInteger := 1
      else
        ParamByName('IS_COL').AsInteger := 0;
      if lbPrice_pos.Caption = null then
        ParamByName('ID_PRICE_POS').Clear
      else
        ParamByName('ID_PRICE_POS').AsString := lbPrice_pos.Caption;
      ParamByName('ord_type').AsInteger := lcb7.KeyValue;
      ParamByName('BUCH_PROD_NAME').AsString := edType_Prod.Text;

      if cbReserv.Checked then
        ParamByName('is_reserve').AsInteger := 1
      else
        ParamByName('is_reserve').AsInteger := 0;

      try
        ExecSQL;
        { if qOrdParam.State in [dsEdit] Then qOrdParam.Post;
         If qPL_SH.State in [dsInsert, dsEdit] Then qPL_SH.Post;
         If qORD_POS.State in [dsInsert, dsEdit] Then qORD_POS.Post;
        }
        if Transaction.Active then
          Transaction.Commit;
        {  qOrdParam.Close;
          qOrdParam.ParamByName('id_order').AsInteger := Id_New; //dmIS.qIN.FieldByName('ID').AsInteger;;
          qOrdParam.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
          qOrdParam.Open;}
      except
        if Transaction.Active then
          Transaction.Rollback;
        Screen.Cursor := crDefault;
        //   exit;
      end; //try
    end; //with
    //**************
  end;

  if pc1.ActivePage = ts3 then
  begin
    //**************
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      case Kop of
        1:
          begin
            {  with dmIS.qIN, dmIS.qIN.SQL do begin
               Close;
               Clear;
               Add('select ID,NUMBER from GET_DOC_NUMBERS(1)');
               Open;
              end;}
            {//создание проекта и проверка Проекта у клиента
              with dmIS.qIN, dmIS.qIN.SQL do begin
               Close;
               Clear;
               Add('select * from PROJECTS where id_agent = :id_agent');
               ParamByName('ID_AGENT').AsInteger := qCliID_ITEM.AsInteger;
               Open;
               if dmIs.qIN.IsEmpty then
               begin
                 with dmIS.qIN, dmIS.qIN.SQL do begin
                  Close;
                  Clear;
                  Add('select gen_id(project_id,1) ID from access_levels');
                  Open;
                 end;
                 id_proj := dmIs.qIN.FieldByName('id').AsInteger;
                 with dmIS.qIN, dmIS.qIN.SQL do begin
                  Close;
                  Clear;
                  Add('INSERT INTO PROJECTS(ID_PROJECT, BRIEF, ID_MANAGER, ID_AGENT,');
                  Add('ID_BRAND, NAME, DATA, ID_PROJ_TYPE, ID_EDIT, STATUS, SUMMA,');
                  Add('EXPENSES, CURRENCY, DATAEND, AMOUNT)');
                  Add('VALUES (:ID_PRJ, null, :ID_MANAGER, :ID_AGENT,');
                  Add('null, :NAME, current_date, :ID_PROJ_TYPE, :ID_EDIT, 1, 0,');
                  Add('0,  :id_currency, null, 0)');
                  ParamByName('ID_PRJ').AsInteger := id_proj;
                  ParamByName('ID_MANAGER').AsInteger := lcb1.KeyValue;
                  ParamByName('ID_AGENT').AsInteger := qCliID_ITEM.AsInteger;
                  ParamByName('NAME').AsString := ed1.Text;;
                  ParamByName('ID_PROJ_TYPE').AsInteger := lcb2.KeyValue;
                  ParamByName('ID_EDIT').AsInteger := SysVars.RegTN;
                  ParamByName('id_currency').AsInteger := lcb5.KeyValue;
                  ExecSQL;
                end;
               end;
              end;}
            Add('insert into PROJECT_ORDS(ID_ORDER, ID_PROJECT, NAME, AMOUNT, ID_PRODUCT,');
            Add('D_READY, N_ORDER, D_OPEN, ID_OPEN, ID_DOC, PRICE, PRICEA, ID_CURRENCY,');
            Add('ID_CPTYPE, ID_CPROD, ID_AGENT, ID_ESTIMATE, ID_CHIEF, REM, IS_CHARGE, ID_FIX,D_FIX,');
            Add('PLAN_COST_PRICE,MANAGER_MARGIN,DELIVERY_SUM,ID_DOGOVOR,IS_COL,id_price_pos,');
            Add('path,full_name,ord_type,BUCH_PROD_NAME,is_reserve, ord_Kind)');
            Add('VALUES (:ID_ORDER, :ID_PROJECT,:NAME,:AMOUNT,:ID_PRODUCT,');
            Add(':D_READY,:N_ORDER,:D_OPEN,:ID_OPEN,:ID_DOC,:PRICE,:PRICEA,:ID_CURRENCY,');
            Add(':ID_CPTYPE,:ID_CPROD,:ID_AGENT,:ID_ESTIMATE,:ID_CHIEF,:REM,:IS_CHARGE,:ID_FIX,:D_FIX,');
            Add(':PLAN_COST_PRICE,:MANAGER_MARGIN,:DELIVERY_SUM,:ID_DOGOVOR,:IS_COL,:id_price_pos,');
            Add(':path,:full_name,:ord_type,:BUCH_PROD_NAME,:is_reserve, :ord_kind)');
            ParamByName('ID_ORDER').AsInteger := Id_New;
            //dmIS.qIN.FieldByName('ID').AsInteger;
            ParamByName('N_ORDER').AsString := lb2_p.Caption;
            //dmIS.qIN.FieldByName('NUMBER').AsString;
            ParamByName('ID_OPEN').AsInteger := SysVars.RegTN;
            ParamByName('ID_AGENT').AsInteger := qCliID_ITEM.AsInteger;
            ParamByName('ID_FIX').AsString := lcb1_p.KeyValue;
            parambyname('ord_kind').AsInteger := 2;
          end;
        2:
          begin
            Add('update PROJECT_ORDS set NAME = :NAME, AMOUNT = :AMOUNT, ID_PROJECT = :ID_PROJECT,');
            Add('ID_PRODUCT = :ID_PRODUCT,D_READY = :D_READY,N_ORDER = :N_ORDER,D_OPEN = :D_OPEN');
            Add(', ID_DOC = :ID_DOC,PRICE = :PRICE,PRICEA = :PRICEA,ID_CURRENCY = :ID_CURRENCY');
            Add(', ID_CPTYPE = :ID_CPTYPE,ID_CPROD = :ID_CPROD,ID_ESTIMATE = :ID_ESTIMATE,');
            Add('ID_CHIEF = :ID_CHIEF,REM = :REM,IS_CHARGE = :IS_CHARGE,ID_FIX = :ID_FIX,D_FIX = :D_FIX,');
            Add('PLAN_COST_PRICE = :PLAN_COST_PRICE,MANAGER_MARGIN = :MANAGER_MARGIN,');
            Add('DELIVERY_SUM = :DELIVERY_SUM,ID_DOGOVOR = :ID_DOGOVOR,IS_COL = :IS_COL,');
            Add('id_price_pos = :id_price_pos,path = :path,full_name = :full_name,ord_type = :ord_type,');
            Add('BUCH_PROD_NAME = :BUCH_PROD_NAME, is_reserve = :is_reserve');
            Add('where ID_ORDER = :ID_ORDER');
            ParamByName('ID_ORDER').AsString := lb1_p.Caption;
            ParamByName('N_ORDER').AsString := lb2_p.Caption;
          end;
      end; //case
      ParamByName('NAME').AsString := ed1_p.Text;

      Parambyname('AMOUNT').Clear;

      ParamByName('D_READY').Value := dtp1_p.Value;
      ParamByName('D_OPEN').Value := dtpDate_Open_p.Value;
      ParamByName('ID_FIX').AsString := lcb1_p.KeyValue;

      {if dtpPlan.Value > 0 then  ParamByName('D_FIX').Value := dtpPlan.Value
      else }ParamByName('D_FIX').Clear;
      // ParamByName('ID_DOC').AsInteger := lcb4.KeyValue;
      ParamByName('PRICE').AsCurrency := StrToCurr(ed3_p.Text);
      ParamByName('PRICEA').AsCurrency := 0; //StrToCurr(ed4.Text);
      if edSum_R_p.Text = '' then
        edSum_R_p.Text := '0';
      ParamByName('PLAN_COST_PRICE').AsCurrency := StrToCurr(edSum_R_p.Text);

      // If lcb4.KeyValue = NULL Then ParamByName('ID_PROJECT').Clear
      //  else ParamByName('ID_PROJECT').AsInteger := lcb4.KeyValue;
      ParamByName('ID_PROJECT').AsInteger :=
        f_CliOrds[ind_CliOrd].qPrjID_PROJECT.AsInteger;
      ParamByName('ID_PRODUCT').clear;
      ParamByName('ID_CURRENCY').AsInteger := lcb5_p.KeyValue;
      ParamByName('ID_CPTYPE').clear;

      {if pc1.ActivePage = ts3 then
        ParamByName('ID_CPROD').AsInteger    := lcb3.KeyValue
      else }ParamByname('id_cPROD').Clear;

      ParamByName('REM').AsString := m1_p.Lines.Text;
      ParamByName('PATH').AsString := m2_p.Lines.Text;
      ParamByName('FULL_NAME').AsString := m3_p.Lines.Text;
      if id_doc <> -1 then
        ParamByName('ID_doc').AsInteger := id_doc
      else
        ParamByName('ID_doc').clear;

      if cb1_p.Checked then
        ParamByName('IS_CHARGE').AsInteger := 1
      else
        ParamByName('IS_CHARGE').Clear;

      if lcb55_p.KeyValue = NULL then
        ParamByName('ID_CHIEF').Clear
      else
        ParamByName('ID_CHIEF').AsInteger := lcb55_p.KeyValue;

      Parambyname('id_estimate').Clear;
      // If ed6.Text = '' Then ParamByName('ID_PRODUCT').Clear
      // else ParamByName('ID_PRODUCT').AsInteger := FindProduct(StrToInt(ed6.Text)) ;

      ParamByName('MANAGER_MARGIN').AsCurrency := StrToCurr(ed5_p.Text);
      ParamByName('DELIVERY_SUM').AsCurrency := StrToCurr(ed7_p.Text);
      ParamByName('ID_DOGOVOR').AsString := lbNomDog_p.Caption;
      if cb3_p.Checked then
        ParamByName('IS_COL').AsInteger := 1
      else
        ParamByName('IS_COL').AsInteger := 0;
      //if lbPrice_pos.Caption = null then
      ParamByName('ID_PRICE_POS').Clear;
      //else ParamByName('ID_PRICE_POS').AsString := lbPrice_pos_p.Caption ;
      ParamByName('ord_type').AsInteger := lcb7_p.KeyValue;
      ParamByName('BUCH_PROD_NAME').AsString := edType_Prod_p.Text;
      ParamByname('is_reserve').AsInteger := 0;

      try
        ExecSQL;
        { if qOrdParam.State in [dsEdit] Then qOrdParam.Post;
         If qPL_SH.State in [dsInsert, dsEdit] Then qPL_SH.Post;
         If qORD_POS.State in [dsInsert, dsEdit] Then qORD_POS.Post;
        }
        if Transaction.Active then
          Transaction.Commit;
        {  qOrdParam.Close;
          qOrdParam.ParamByName('id_order').AsInteger := Id_New; //dmIS.qIN.FieldByName('ID').AsInteger;;
          qOrdParam.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
          qOrdParam.Open;}
      except
        if Transaction.Active then
          Transaction.Rollback;
        Screen.Cursor := crDefault;
        //   exit;
      end; //try
    end; //with
    //**************
  end;

end;

procedure TfmKOrder.Est;
var
  id_ver: integer;
begin
  ed6Change(ed6);

  //пока не решён вопрос расчёта не по прайсу
  if (lcb6.KeyValue = null) and (lcb2.KeyValue <> null) then
  begin
    qIns1.Close;
    qIns1.SQL.Clear;
    qIns1.SQL.Add('select p.id_estimate,p.id_version, p.amount, p.weight,');
    qIns1.SQL.Add('sum(s.total_oper * (s.profit/100 + 1) + (s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1))sum_proc');
    qIns1.SQL.Add('from est_sum_oper_types s');
    qIns1.SQL.Add('join estimates p on p.id_estimate = s.id_estimate');
    qIns1.SQL.Add('where s.id_estimate = :id_estimate');
    qIns1.SQL.Add('group by p.id_estimate,p.id_version,  p.amount,p.weight');
    qIns1.ParamByName('id_estimate').AsInteger := StrToInt(ed6.Text);
    qIns1.Open;

    { по старому qIns1.Close;
      qIns1.SQL.Clear;
      qIns1.SQL.Add('select p.id_estimate,p.id_version, p.id_ptype, p.amount,sum(s.total)');
      qIns1.SQL.Add(',sum(case when s.obj_kind = 1 then s.total else 0 end) sum_ost');
      qIns1.SQL.Add(',sum(case when s.id_item is null then s.total  else 0 end) sum_oper');
      qIns1.SQL.Add(',sum(case when s.id_item is not null then s.total else 0 end) sum_mat');
      qIns1.SQL.Add(',sum(case when s.id_item is null then (s.total * (1+ t.profit/100))  else 0 end) sum_oper_proc');
      qIns1.SQL.Add(',sum(case when s.id_item is not null then (s.total * (1 + t.dop_price/100)) else 0 end) sum_mat_proc');
      qIns1.SQL.Add(',sum(case when s.id_item is null then (s.total *(1 + t.profit/100))  else 0 end)');
    //  qIns1.SQL.Add('+ sum(case when s.id_item is not null then (s.total * (1 + t.dop_price/100)) else 0 end) sum_proc');

      qIns1.SQL.Add('+ sum(case when s.id_item is not null then (s.price * (coalesce(s.full_amount,0) -coalesce(s.comm_amount,0)) * (1 + t.dop_price/100)) else 0 end) sum_proc');
      qIns1.SQL.Add('from estimates p');
      qIns1.SQL.Add('join est_pos s on p.id_estimate = s.id_estimate');
      qIns1.SQL.Add('join ptypes t on t.id_ptype = p.id_ptype');
      qIns1.SQL.Add('where p.id_estimate = :id_estimate ');//and p.id_ptype = :id_ptype');
      qIns1.SQL.Add('group by  p.id_estimate,p.id_version, p.id_ptype  ,p.amount');
      qIns1.ParamByName('id_estimate').AsString := ed6.Text;
    {  if lcb6.KeyValue <> null then qIns1.ParamByName('profit').AsFloat := 1
      else  qIns1.ParamByName('profit').AsFloat := qPTypePROFIT.AsFloat ;
      if lcb6.KeyValue <> null then qIns1.ParamByName('dop_price').AsFloat := 1
      else qIns1.ParamByName('dop_price').AsFloat := qPTypeDOP_PRICE.AsFloat;

    //qIns1.ParamByName('id_ptype').AsString := lcb2.KeyValue;
    //  ShowMessage(qINS1.Text);
      qIns1.Open; }
    if not qIns1.IsEmpty then
    begin
      lbW.caption := '';
      lbW.Caption := qIns1.FieldByName('weight').AsString;
      id_ver := qIns1.FieldByName('id_version').AsInteger;
      lb7.Caption := qIns1.FieldByName('id_version').AsString;
      ed2.Text := qIns1.FieldByName('amount').AsString;
      edSum_R.Text := FloatToStrF(qIns1.FieldByName('sum_proc').AsFloat,
        ffFixed, 15, 2);
      edCast_R.Text :=
        FloatToStrF(qIns1.FieldByName('sum_proc').AsFloat /
        StrToFloat(ed2.Text), ffFixed, 15, 2);
      ed3.Text := edSum_R.Text;
      edCastMen.Text := edCast_R.Text;

      dmIS.qCURR.Locate('MARK', '*', []);
      lcb5.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
      lbCurs.Caption := '1';
      edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
        StrToFloat(lbCurs.Caption),
        ffFixed, 15, 2);

      qIns1.Close;
      qIns1.SQL.Clear;
      qIns1.SQL.Add('select distinct s.id_product from product_objects s');
      qIns1.SQL.Add('where s.id_version = :id_version');
      qIns1.ParamByName('id_version').AsInteger := id_ver;
      qIns1.Open;
      lbProd.Caption := qIns1.FieldByName('id_product').AsString;

    end
    else
    begin
      qIns1.Close;
      qIns1.SQL.Clear;
      qIns1.SQL.Add('select p.id_estimate,p.id_version, p.amount, p.weight');
      qIns1.SQL.Add('from estimates p');
      qIns1.SQL.Add('where p.id_estimate = :id_estimate');
      qIns1.ParamByName('id_estimate').AsString := ed6.Text;
      qIns1.Open;
      if not qIns1.IsEmpty then
      begin
        id_ver := qIns1.FieldByName('id_version').AsInteger;
        lb7.Caption := qIns1.FieldByName('id_version').AsString;
        ed2.Text := qIns1.FieldByName('amount').AsString;
        lbW.caption := '';
        lbW.Caption := qIns1.FieldByName('weight').AsString;
        edSum_R.Text := '0';
        edCast_R.Text := '0';
        ed3.Text := '0';
        edCastMen.Text := '0';
        edDef.Text := '0';

        qIns1.Close;
        qIns1.SQL.Clear;
        qIns1.SQL.Add('select distinct s.id_product from product_objects s');
        qIns1.SQL.Add('where s.id_version = :id_version');
        qIns1.ParamByName('id_version').AsInteger := id_ver;
        qIns1.Open;
        lbProd.Caption := qIns1.FieldByName('id_product').AsString;
      end;
    end;

  end;

end;

procedure TfmKOrder.FindTreeItem(Citm: integer);
var
  i: integer;
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select ID from BR_UP_ITEMS(:ci1,1)');
    ParamByName('ci1').AsInteger := Citm;
    Open;
    Last;
    i := 0;
    while not BOF do
    begin
      Prior;
      dbt1.Items[i].Expand(False);
      for i := i to dbt1.Items.Count - 1 do
      begin
        if Integer(dbt1.Items[i].Data) = FieldByName('ID').AsInteger then
          break;
      end;
      if Integer(dbt1.Items[i].Data) = Citm then
      begin
        dbt1.Selected := dbt1.Items[i];
        exit;
      end;
    end;
  end;
end;

procedure TfmKOrder.OpenC_ORDER;
begin
  with qC_ORD do
  begin
    Close;
    ParamByName('c_ord').AsInteger := C_ORD;
    Open;
    // p5.Visible := not IsEmpty;
    // p1.Visible := not IsEmpty;

  end;
end;

procedure TfmKOrder.OpenEstimate;
begin
  Screen.Cursor := crHourGlass;
  with qEst, qEst.SQL do
  begin
    if Active then
      C_EST := qEstID_ESTIMATE.AsInteger;
    Close;
    Clear;
    {Add('select distinct e.id_estimate, e.id_version, e.name,');
    Add('e.d_create, e.id_creator, e.d_confirm, e.id_confirm, e.amount,');
    Add('e.price_date, e.sum_nds, e.price_delivery, e.price_tools,');
    Add('e.profit, e.id_doc, p.fio, r.fio conf, i.id_item, i.name nprod,');
    Add('e.dop_price,e.total_sum, e.status,');
    Add('sum(s.total_oper * (s.profit/100 + 1) + (s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1))sum_proc');
    Add('from estimates e');
    Add('join product_versions v on v.id_version = e.id_version ');
    Add(' and v.id_item = ' + IntToStr(dbt1.GetId));
    Add('join est_sum_oper_types s  on e.id_estimate = s.id_estimate');
    Add('join items i on i.id_item = v.id_item');
    Add('left join personnel p on p.id_p = e.id_creator');
    Add('left join personnel r on r.id_p = e.id_confirm');
    Add('where 1=1');}
    //If tb2.Down Then Add('and e.d_confirm is not null');
   // If lcb1.KeyValue <> null Then Add('and e.id_creator = ' + IntToStr(lcb1.KeyValue));
    {Add('group by e.id_estimate, e.id_version, e.name,');
    Add('e.d_create, e.id_creator, e.d_confirm, e.id_confirm, e.amount,');
    Add('e.price_date, e.sum_nds, e.price_delivery, e.price_tools,');
    Add('e.profit, e.id_doc, p.fio, r.fio , i.id_item, i.name ,');
    Add('e.dop_price,e.total_sum, e.status'); }

    Add('select distinct e.id_estimate, e.name, e.amount, e.price_date, e.sum_nds, e.price_delivery,');
    Add('e.price_tools, e.profit, e.dop_price,');
    Add('e.d_create, p.fio fiocr,  e.d_confirm, a.fio fioconf,');
    Add('e.id_doc,  e.total_sum, (e.total_sum/coalesce(e.amount,1)) total_sum_al,');
    Add('e.status, e.id_version');
    Add(',sum(ss.total_oper) sum_oper');
    Add(', sum(ss.total_mat-ss.comm_amount) sum_mat');
    Add(',sum(ss.total_oper*(1+ss.profit/100)) sum_oper_proc');
    Add(',sum((ss.total_mat-ss.comm_amount)*(1+ss.dop_price/100)) sum_mat_proc');
    Add(',sum(ss.total_oper * (ss.profit/100 + 1) +');
    Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1)) sum_proc');
    Add(',(sum(ss.total_oper * (ss.profit/100 + 1) +');
    Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1)))/e.amount  sum_proc_one');
    Add('from estimates e');
    Add('left join est_sum_oper_types ss on e.id_estimate = ss.id_estimate');
    Add('left join personnel p on p.id_p = e.id_creator');
    Add('left join personnel a on a.id_p = e.id_confirm');
    Add('join product_versions v on v.id_version = e.id_version');
    Add('join items i on i.id_item = v.id_item');
    Add('where i.id_item = :id_item and coalesce(e.estimate_type,0) <> 1');
    if tb2.Down then
      Add(' and e.d_confirm is not null');
    Add('group by  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
    Add(OrdBy(dbg7));
    parambyname('id_item').AsString := IntToStr(dbt1.GetId);
    Open;
    Locate('ID_ESTIMATE', C_EST, []);
    { qMat.Close;
     qMat.ParamByName('id_estimate').AsInteger := qEstID_ESTIMATE.AsInteger;
     qMat.Open;
     qOper.Close;
     qOper.ParamByName('id_estimate').AsInteger := qEstID_ESTIMATE.AsInteger;
     qOper.Open;
     qEst_Oper_E.Close;
    // qEst_Oper_E.ParamByName('id_estimate').AsInteger := qEstID_ESTIMATE.AsInteger;
     qEst_Oper_E.Open;
     qEst_TMC_E.Close;
    // qEst_TMC_E.ParamByName('id_estimate').AsInteger := qEstID_ESTIMATE.AsInteger;
    // qEst_TMC_E.ParamByName('id_prod_oper').AsInteger := qEst_Oper_EID_PROD_OPER.AsInteger;
     qEst_TMC_E.Open;
     qParam.Close;
     qParam.Open;
     }
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmKOrder.FormCreate(Sender: TObject);
begin
  pnEst.Visible := False;
  pnFull_Name.Visible := False;
  C_EST := 0;
  C_ORD := 0;
  C_PROD := 0;

  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    //   Read(panel3,iniRect);
    Read(gb1, iniRect);
    Read(gb2, iniRect);
    Read(panel1, iniRect);
    Read(panel9, iniRect);
    Read(m1, iniRect);
    Read(panel4, iniRect);
    ReadEh(dbg1, id_Form);
    ReadEh(Dbg2, id_Form);
    ReadEh(dbg3, id_Form);
    ReadEh(dbg4, id_Form);
    ReadEh(dbg5, id_Form);
    ReadEh(dbg6, id_Form);

  finally
    Free;
  end;
  {if C_ORD_KIND = 0 then
  begin
  pc1.ActivePage := ts1;
  ts3.TabVisible := false;
  end;

  if C_ORD_KIND = 1 then
  begin
  pc1.ActivePage := ts3;
  ts1.TabVisible := false;
  end;    }
  pc2.ActivePage := tc1;
  cb1.Checked;

  //tc2.TabVisible := False;
  Kop := 0;
  qMat.Close;
  qMat.Open;



  qOper.Close;
  qOper.Open;
  qEst_Oper_E.Close;
  qEst_Oper_E.Open;
  qEst_TMC_E.Close;
  qEst_TMC_E.Open;
  qParam.Close;
  qParam.Open;
  if fmMain.S19 <> 1 then
    if not fmMain.UF101 then
      bbEstimate.Enabled := false;
      lcb6.keyvalue := null;
  lbW.Caption := '';
end;

procedure TfmKOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if kop <> 0 then
   bb1.Click;
  Kop := 0;
  qPrice.Close;
  qCli.Close;
  qMan.Close;
  qProd.Close;
  qUragent.close;
  
  //qPType.Close;
  qProj.Close;
  //dmIS.qCURR.Close;

  if qOrdParam.State in [dsInsert, dsEdit] then
  begin
    qOrdParam.Post;
    qOrdParam.Transaction.CommitRetaining;
  end;
  lcb2.KeyValue := null;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    //Write(panel3,iniRect);
    Write(gb1, iniRect);
    Write(gb2, iniRect);
    Write(panel1, iniRect);
    Write(panel9, iniRect);
    Write(m1, iniRect);
    Write(panel4, iniRect);
    Write(dbg1, iniGridEh);
    Write(dbg2, iniGridEh);
    Write(dbg3, iniGridEh);
    Write(dbg4, iniGridEh);
    Write(dbg5, iniGridEh);
    Write(dbg6, iniGridEh);

  finally
    Free;
  end;
  try
    fmMain.NF_KOrder := fmMain.NF_KOrder - 1;
  except;
  end;

end;

procedure TfmKOrder.FormShow(Sender: TObject);
var
  New_Number: string;
begin
  qUragent.Close;
  qUragent.Open;
  if kop = 1 then
  begin
  end;
  if kop = 2 then
   if Length(f_CliOrds[ind_CliOrd].qOrdersIS_SELF.AsString) = 0 then lcbUragent.KeyValue := null else
  lcbUragent.KeyValue := f_CliOrds[ind_CliOrd].qOrdersIS_SELF.AsInteger;
  // Менеджер
  qMan.Close;
  qMan.Open;
  //Клиент
  qCli.Close;
  qCli.ParamByName('id_item').AsInteger :=
    f_CliOrds[ind_CliOrd].qClientsID_ITEM.AsInteger;
  qCli.Open;
  // Производство
  qProd.Close;
  qProd.Open;
  // Тип продукции
  qPType.Close;
  qPType.Open;
  //Ед.изм.
  dmIS.qUNITS.Close;
  dmIS.qUNITS.Open;
  //Руководитель
  qCHIEF.Close;
  qCHIEF.Open;
  // Валюта
  dmIS.qCURR.Close;
  dmIS.qCURR.Open;
  //Тип заказа
  qOrd_Type.Close;
  qOrd_Type.Open;

  // 8///***************

  Screen.Cursor := crHourGlass;
  if C_ORD_KIND = 0 then
  begin

    ts3.TabVisible := false;
    pc1.ActivePage := ts1;
    lbOper.Caption := '';
    lbPrice_pos.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString;
    if lbPrice_pos.Caption = '0' then
      lbPrice_pos.Caption := '';
    lbCurs.Caption := '1';
    lb7.Caption := '0';
    lb4.Caption := '';
    lb5.Caption := '';
    lb6.Caption := '';
    dbn2.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbInsert,
      nbDelete, nbEdit, nbPost, nbCancel, nbRefresh];
    dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbInsert,
      nbDelete, nbEdit, nbPost, nbCancel, nbRefresh];
    dbg2.ReadOnly := False;
    dbg3.ReadOnly := False;
    dbg4.ReadOnly := False;
    case Kop of
      0:
        begin // просмотр
          // f_KOrder[ind_KOrder].Caption :=
          Self.Caption := IntToStr(ind_CliOrd) + '_Просмотр' +
            //_' + IntToStr(fmMain.NF_KOrder) +
          ' ,№ ' +
            f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString + '," ' +
            f_CliOrds[ind_CliOrd].qOrdersNAME.AsString + '", ' +
            f_CliOrds[ind_CliOrd].qClientsNAME.AsString + '[' +
            f_CliOrds[ind_CliOrd].qOrdersNAME_PRODUCT.AsString + ']';

          dbn2.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbRefresh];
          dbn1.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbRefresh];
          dbg2.ReadOnly := True;
          dbg3.ReadOnly := True;
          dbg4.ReadOnly := True;

          p1.Hide;
          bbEstimate.Visible := False;
          m1.Text := f_CliOrds[ind_CliOrd].qOrdersREM.AsString;
          m2.Text := f_CliOrds[ind_CliOrd].qOrdersPATH.AsString;
          m3.Text := f_CliOrds[ind_CliOrd].qOrdersFULL_NAME.AsString;

          lb1.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsString;
          Id_New := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
          lb2.Caption := f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString;
          lb3.Caption := f_CliOrds[ind_CliOrd].qOrdersnSTAT.AsString;
          lb4.Caption := f_CliOrds[ind_CliOrd].qOrdersID_VERSION.AsString;
          //в пр-ве
          lb5.Caption := f_CliOrds[ind_CliOrd].qOrdersID_BATCH.AsString;
          lb6.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE_KD.AsString;
          lb7.Caption := f_CliOrds[ind_CliOrd].qOrdersID_VERSION_PEO.AsString;
          //пэо
          lbProd.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRODUCT.AsString;
          edType_Prod.Text :=
            f_CliOrds[ind_CliOrd].qOrdersBUCH_PROD_NAME.AsString;
          lbNomDog.Caption := f_CliOrds[ind_CliOrd].qOrdersID_DOGOVOR.AsString;
          edDog.Text := f_CliOrds[ind_CliOrd].qOrdersDOG_NUMBER_.AsString;
          lbPrice_pos.Caption :=
            f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString;
          if lbPrice_pos.Caption = '0' then
            lbPrice_pos.Caption := '';
          dtpDate_Open.Value := f_CliOrds[ind_CliOrd].qOrdersD_OPEN.Value;
          dtp1.Value := f_CliOrds[ind_CliOrd].qOrdersD_READY.Value;
          if f_CliOrds[ind_CliOrd].qOrdersD_FIX.IsNull then
            dtpPlan.Value := null
          else
            dtpPlan.Value := f_CliOrds[ind_CliOrd].qOrdersD_FIX.Value;
          // Производство
          qProd.Close;
          qProd.Open;
          // Тип продукции
          qPType.Close;
          qPType.Open;

          qOrd_Type.Locate('id_type',
            f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger, []);

          lcb7.KeyValue := f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger;
          //тип заказа
          lcb7.ReadOnly := true;

          qMan.Locate('ID_P', f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger,
            []);
          lcb1.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger;
          //менеджер
          lcb1.ReadOnly := true;

          if not f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.IsNull then
          begin
            qPType.Locate('ID_PTYPE',
              f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.AsInteger, []);
            lcb2.KeyValue := qPTypeID_PTYPE.AsInteger //тип пр-ции
          end
          else
            lcb2.KeyValue := null;
          lcb2.ReadOnly := true;

          lcb3.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger;
          //пр-во
          lcb3.ReadOnly := true;
          lcb55.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CHIEF.AsInteger;
          //рук-ль
          lcb5.ReadOnly := true;

          qProd.Locate('ID_P_AREA',
            f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger, []);

          lbNom_Name.Caption :=
            IntToStr(Length(f_CliOrds[ind_CliOrd].qOrdersNAME.AsString));
          ed1.Text := f_CliOrds[ind_CliOrd].qOrdersNAME.AsString;
          ; //наименование
          ed1.ReadOnly := true;
          ed2.Text := f_CliOrds[ind_CliOrd].qOrdersAMOUNT.AsString; //кол-во
          ed2.ReadOnly := true;
          //Валюта
          with qIns1, qIns1.SQL do
          begin
            Close;
            Clear;
            Add('select new_summa,RATE from CURSUM_TO_DEF(1,:ID_CURRENCY,:ON_DATE)');
            ParamByName('ID_CURRENCY').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger;
            qIns1.ParamByName('ON_DATE').AsDate := dtpDate_Open.Value;
            Open;
          end;
          lbCurs.Caption := qIns1.FieldByName('rate').AsString;

          dmIS.qCURR.Locate('ID_CURRENCY',
            f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger, []);
          lcb5.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
          lcb5.ReadOnly := true;

          ed3.Text := f_CliOrds[ind_CliOrd].qOrdersPRICE.AsString; //стоимость

          ed3.ReadOnly := true;
          edDef.Text := f_CliOrds[ind_CliOrd].qOrdersDEF_SUM.AsString;
          //стоимость деф.валюте
          if ed3.Text = '' then
            ed3.Text := '0';
          if ed2.Text = '' then
            ed2.Text := '1';

          edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) /
            StrToFloat(ed2.Text),
            ffFixed, 15, 2); //продажная цена
          ed4.Text := f_CliOrds[ind_CliOrd].qOrdersPRICEA.AsString; //доп.услуга
          ed4.ReadOnly := true;
          ed5.Text := f_CliOrds[ind_CliOrd].qOrdersMANAGER_MARGIN.AsString;
          //наценка
          ed5.ReadOnly := true;
          edSum_R.Text := f_CliOrds[ind_CliOrd].qOrdersPLAN_COST_PRICE.AsString;
          //плановая стоимость
          ed5.ReadOnly := true;
          if edSum_R.Text = '' then
            edSum_R.Text := '0';

          edCast_R.Text := FloatToStrF(StrToFloat(edSum_R.Text) /
            StrToFloat(ed2.Text),
            ffFixed, 15, 2); //плановая цена

          lbPrice_pos.Caption :=
            f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString; //позиция прайса
          if lbPrice_pos.Caption = '0' then
            lbPrice_pos.Caption := '';
          ed6.Text := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.AsString; //смета
          ed6.ReadOnly := true;
          ed7.Text := f_CliOrds[ind_CliOrd].qOrdersDELIVERY_SUM.AsString;
          //доставка
          ed7.ReadOnly := true;
          if f_CliOrds[ind_CliOrd].qOrdersIS_CHARGE.AsInteger = 1 then
            cb1.Checked := True
          else
            cb1.Checked := False;
          if f_CliOrds[ind_CliOrd].qOrdersIS_COL.AsInteger = 1 then
            cb3.Checked := True
          else
            cb3.Checked := False;
          if f_CliOrds[ind_CliOrd].qOrdersIS_RESERVE.AsInteger = 1 then
            cbReserv.Checked := True
          else
            cbReserv.Checked := False;

          //  cb1.Checked := True;
          //  tc1.TabVisible := lcb6.KeyValue <> null;
          //  tc2.TabVisible := lcb6.KeyValue = null ;

          p1.Hide;
          qregion.close;
          qRegion.open;
          qObj_type.close;
          qObj_type.open;

          qCar_types.close;
          qCar_types.open;

          qDelivery_types.close;
          qDelivery_types.open;

          with qPL_SH do
          begin
            Close;
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            ParamByName('ide').AsString := ed6.text;
            Open;
          end;
          with qORD_POS do
          begin
            Close;
            //  UpdateObject := dmIS.upORD_POS;
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            //  ParamByName('ID_ORDER').AsString := lb1.Caption;
            Open;
          end;

        end; // kop = 0
      1:
        begin // новый заказ
          with dmIS.qIN, dmIS.qIN.SQL do
          begin
            Close;
            Clear;
            Add('select ID,NUMBER,CURRENT_TIMESTAMP dt from GET_DOC_NUMBERS(1)');
            Open;
            Id_New := dmIS.qIN.FieldValues['ID'];
            New_Number := dmIS.qIN.FieldValues['NUMBER'];
            //  fmKOrder.Caption := 'Создание нового заказа № ' + New_Number;

            dtpDate_Open.Value := dmIS.qIN.FieldValues['dt'];
            dtp1.Value := Int(dmIS.qIN.FieldValues['dt']);
            //  lbDate.Caption := FormatDateTime('dd.mm.yyyy',dmIS.qIN.FieldValues['dt']);

          end;
          lb1.Caption := IntToStr(Id_New);
          lb2.Caption := New_Number;
          lb3.Caption := 'Новый';
          Self.Caption := IntToStr(ind_CliOrd) + '_Новый, № ' +
            New_Number + '," Новый", ' +
            f_CliOrds[ind_CliOrd].qClientsNAME.AsString;

          // Клиент
          qCli.Close;
          qCli.ParamByName('ID_ITEM').AsInteger := ID_AGENT;
          qCli.Open;


          //договор
          lbNomDog.Caption := f_CliOrds[ind_CliOrd].qDogovorID_DOGOVOR.AsString;
          edDog.Text := f_CliOrds[ind_CliOrd].qDogovorDOG_NUMBER.AsString;
          lbProd.Caption := '0';
          // Проект
        {  qProj.Close;
          qProj.ParamByName('ID_AGENT').AsInteger := ID_AGENT;
          qProj.Open;
          lcb4.KeyValue := qProjID_PROJECT.AsInteger;
        }
          m1.Clear;
          m2.Clear;
          m3.Clear;
          lcb7.ReadOnly := false;
          lcb7.KeyValue := null;
          lcb1.KeyValue := f_CliOrds[ind_CliOrd].qPrjID_MANAGER.AsInteger;
          //SysVars.RegTN;
          lcb1.ReadOnly := false;
          lcb2.ReadOnly := false;
          lcb2.KeyValue := null;
          lcb3.ReadOnly := false;
          lcb55.ReadOnly := false;
          lcb6.ReadOnly := false;
          lcb6.KeyValue := null;
          edCast_R.Text := '0';
          edSum_R.Text := '0';
          edCastMen.Text := '0';
          edType_Prod.Text := '';

          lbNom_Name.Caption := '';
          ed1.Text := ''; //наименование
          ed1.ReadOnly := false;
          ed2.Text := '1'; //кол-во
          ed2.ReadOnly := false;
          // Валюта
          dmIS.qCURR.Locate('MARK', '*', []);
          lcb5.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
          lcb5.ReadOnly := false;

          edSum_R.Text := '0'; //плановая стоимость
          ed5.ReadOnly := true;
          lbPrice_pos.Caption := ''; //позиция прайса

          ed3.Text := '0'; //стоимость
          ed3.ReadOnly := false;
          edDef.Text := '0'; //стоимость деф.валюте

          ed4.Text := '0'; //доп.услуга
          ed4.ReadOnly := True;
          ed5.Text := '0'; //наценка
          ed5.ReadOnly := false;
          ed6.Text := ''; //смета
          lbW.caption := ''; //вес
          ed6.ReadOnly := false;
          ed7.Text := '0'; //доставка
          ed7.ReadOnly := false;
          cb1.Checked := false;
          cb3.Checked := false;
          cbReserv.Checked := false;
          dtpPlan.Value := null;

          //  tc1.TabVisible := lcb6.KeyValue <> null;
          //  tc2.TabVisible := lcb6.KeyValue = null;
          p1.Show;
          with qPL_SH do
          begin
            Close;
            ParamByName('ID_ORDER').AsInteger := Id_New;
            //dmIS.qIN.FieldValues['ID'];
            ParamByName('ide').AsString := ed6.text;
            Open;
          end;
          with qORD_POS do
          begin
            Close;
            UpdateObject := dmIS.upORD_POS;
            ParamByName('ID_ORDER').AsInteger := Id_New;
            //dmIS.qIN.FieldValues['ID'];
            Open;
          end;

        end; // kop = 1
      2:
        begin // редактирование
          Self.Caption := IntToStr(ind_CliOrd) + '_Редактирование, № ' +
            f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString + '," ' +
            f_CliOrds[ind_CliOrd].qOrdersNAME.AsString + '", ' +
            f_CliOrds[ind_CliOrd].qClientsNAME.AsString;

          m1.Text := f_CliOrds[ind_CliOrd].qOrdersREM.AsString;
          m2.Text := f_CliOrds[ind_CliOrd].qOrdersPATH.AsString;
          m3.Text := f_CliOrds[ind_CliOrd].qOrdersFULL_NAME.AsString;

          lb1.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsString;
          Id_New := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
          lb2.Caption := f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString;
          lb3.Caption := f_CliOrds[ind_CliOrd].qOrdersnSTAT.AsString;
          lb4.Caption := f_CliOrds[ind_CliOrd].qOrdersID_VERSION.AsString;
          //в пр-ве
          lb5.Caption := f_CliOrds[ind_CliOrd].qOrdersID_BATCH.AsString;
          lb6.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE_KD.AsString;
          lb7.Caption := f_CliOrds[ind_CliOrd].qOrdersID_VERSION_PEO.AsString;
          //пэо
          lbProd.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRODUCT.AsString;
          edType_Prod.Text :=
            f_CliOrds[ind_CliOrd].qOrdersBUCH_PROD_NAME.AsString;
          lbNomDog.Caption := f_CliOrds[ind_CliOrd].qOrdersID_DOGOVOR.AsString;
          edDog.Text := f_CliOrds[ind_CliOrd].qOrdersDOG_NUMBER.AsString;
          dtpDate_Open.Value := f_CliOrds[ind_CliOrd].qOrdersD_OPEN.Value;
          dtp1.Value := f_CliOrds[ind_CliOrd].qOrdersD_READY.Value;
          if f_CliOrds[ind_CliOrd].qOrdersD_FIX.IsNull then
            dtpPlan.Value := null
          else
            dtpPlan.Value := f_CliOrds[ind_CliOrd].qOrdersD_FIX.Value;
          // Клиент
          // Производство
          qProd.Close;
          qProd.Open;
          // Тип продукции
          qPType.Close;
          qPType.Open;

          lcb1.ReadOnly := false;
          qMan.Locate('ID_P', f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger,
            []);
          lcb1.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger;
          //менеджер

          lcb7.ReadOnly := false;
          qOrd_Type.Locate('id_type',
            f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger, []);
          lcb7.KeyValue := f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger;
          //тип заказа

          if not f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.IsNull then
          begin
            qPType.Locate('ID_PTYPE',
              f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.AsInteger, []);
            lcb2.KeyValue := qPTypeID_PTYPE.AsInteger; //тип пр-ции
          end
          else
            lcb2.KeyValue := null;
          lcb2.ReadOnly := false;
        //  lcb6.KeyValue := null;
          lcb3.ReadOnly := false;
          qProd.Locate('ID_P_AREA',
            f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger, []);
          lcb3.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger;
          //пр-во

          lcb55.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CHIEF.AsInteger;
          //рук-ль
          lcb5.ReadOnly := false;

          lbNom_Name.Caption :=
            IntToStr(Length(f_CliOrds[ind_CliOrd].qOrdersNAME.AsString));
          ed1.Text := f_CliOrds[ind_CliOrd].qOrdersNAME.AsString; //наименование
          ed1.ReadOnly := false;
          ed2.Text := f_CliOrds[ind_CliOrd].qOrdersAMOUNT.AsString; //кол-во
          if ed2.Text = '' then
            ed2.Text := '0';
          ed2.ReadOnly := false;
          //Валюта
          with qIns1, qIns1.SQL do
          begin
            Close;
            Clear;
            Add('select new_summa,RATE from CURSUM_TO_DEF(1,:ID_CURRENCY,:ON_DATE)');
            ParamByName('ID_CURRENCY').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger;
            qIns1.ParamByName('ON_DATE').AsDate := dtpDate_Open.Value;
            Open;
          end;
          lbCurs.Caption := qIns1.FieldByName('rate').AsString;

          dmIS.qCURR.Locate('ID_CURRENCY',
            f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger, []);
          lcb5.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
          lcb5.ReadOnly := false;

          edSum_R.Text := f_CliOrds[ind_CliOrd].qOrdersPLAN_COST_PRICE.AsString;
          //плановая стоимость
          if edSum_R.Text = '' then
            edSum_R.Text := '0';
          ed5.ReadOnly := true;
          edCast_R.Text := FloatToStrF(StrToFloat(edSum_R.Text) /
            StrToFloat(ed2.Text),
            ffFixed, 15, 2);
          lbPrice_pos.Caption :=
            f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString; //позиция прайса
          if lbPrice_pos.Caption = '0' then
            lbPrice_pos.Caption := '';
          ed3.Text := f_CliOrds[ind_CliOrd].qOrdersPRICE.AsString; //стоимость
          if ed3.Text = '' then
            ed3.Text := '0';
          ed3.ReadOnly := false;
          edDef.Text := f_CliOrds[ind_CliOrd].qOrdersDEF_SUM.AsString;
          //стоимость деф.валюте

          edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) /
            StrToFloat(ed2.Text),

            ffFixed, 15, 2); //плановая цена

          ed4.Text := f_CliOrds[ind_CliOrd].qOrdersPRICEA.AsString; //доп.услуга
          ed4.ReadOnly := True;
          if not f_CliOrds[ind_CliOrd].qOrdersMANAGER_MARGIN.isnull then
            ed5.Text := f_CliOrds[ind_CliOrd].qOrdersMANAGER_MARGIN.AsString;
          //наценка
          ed5.ReadOnly := false;
          ed6.Text := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.AsString; //смета
          ed6.ReadOnly := false;
          with qINs1, qINs1.sql do
          begin
            close;
            clear;
            add('select e1.weight');
            add('from estimates e1 where e1.id_estimate = :ide');
            if not f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.IsNull then
            begin
              parambyname('ide').AsInteger :=
                f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.AsInteger;
              open;
              lbw.Caption := fieldbyname('weight').AsString;
            end;
          end;
          if not f_CliOrds[ind_CliOrd].qOrdersDELIVERY_SUM.isnull then
            ed7.Text := f_CliOrds[ind_CliOrd].qOrdersDELIVERY_SUM.AsString;
          //доставка
          ed7.ReadOnly := false;
          if f_CliOrds[ind_CliOrd].qOrdersIS_CHARGE.AsInteger = 1 then
            cb1.Checked := True
          else
            cb1.Checked := False;
          if f_CliOrds[ind_CliOrd].qOrdersIS_COL.AsInteger = 1 then
            cb3.Checked := True
          else
            cb3.Checked := False;
          if f_CliOrds[ind_CliOrd].qOrdersIS_RESERVE.AsInteger = 1 then
            cbReserv.Checked := True
          else
            cbReserv.Checked := False;

          //  cb1.Checked := True;
          //  tc1.TabVisible := lcb6.KeyValue <> null;
          //  tc2.TabVisible := lcb6.KeyValue = null;

          p1.Show;
          with qPL_SH do
          begin
            Close;
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            ParamByName('ide').AsString := ed6.text;
            Open;
          end;
          with qORD_POS do
          begin
            Close;
            UpdateObject := dmIS.upORD_POS;
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            Open;
          end;

        end; // kop = 2

    end;
    if id_doc <> -1 then
    begin
      with qIns1, qIns1.SQL do
      begin
        close;
        clear;
        add('select id_project_doc, name from project_docs where id_project_doc = :idd');
        parambyname('idd').AsInteger := id_doc;
        open;
        edDok.Text := '[' + fieldbyname('id_project_doc').AsString + '] ' +
          fieldbyname('name').AsString;
      end;
    end;
    edDok.readonly := true;

  end;
  //**********************
  if C_ORD_KIND = 1 then
  begin

    ts1.TabVisible := false;
    pc1.ActivePage := ts3;
    with dmIs.qIM, dmIs.qIM.sql do
    begin
      close;
      clear;
      add('select percent from nds where mark is not null');
      open;
      edNDS_p.Text := fieldbyname('percent').AsString;
    end;
    lbOper_p.Caption := '';
    //lbPrice_pos.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString;
    //if lbPrice_pos.Caption = '0' then lbPrice_pos.Caption := '';
    lbCurs_p.Caption := '1';
    //  lb7.Caption := '0';
    //  lb4.Caption := '';
    //  lb5_p.Caption := '';
      //lb6_p.Caption := '';
    dbn2_p.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbInsert,
      nbDelete, nbEdit, nbPost, nbCancel, nbRefresh];
    dbn1_p.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast, nbInsert,
      nbDelete, nbEdit, nbPost, nbCancel, nbRefresh];
    dbg2_p.ReadOnly := False;
    dbg3_p.ReadOnly := False;
    dbg4_p.ReadOnly := False;
    case Kop of
      0:
        begin // просмотр
          // f_KOrder[ind_KOrder].Caption :=
          Self.Caption := IntToStr(ind_CliOrd) + '_Просмотр' +
            //_' + IntToStr(fmMain.NF_KOrder) +
          ' ,№ ' +
            f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString + '," ' +
            f_CliOrds[ind_CliOrd].qOrdersNAME.AsString + '", ' +
            f_CliOrds[ind_CliOrd].qClientsNAME.AsString + '[' +
            f_CliOrds[ind_CliOrd].qOrdersNAME_PRODUCT.AsString + ']';

          dbn2_p.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast,
            nbRefresh];
          dbn1_p.VisibleButtons := [nbFirst, nbPrior, nbNext, nbLast,
            nbRefresh];
          dbg2_p.ReadOnly := True;
          dbg3_p.ReadOnly := True;
          dbg4_p.ReadOnly := True;

          p1_p.Hide;
          // bbEstimate.Visible := False;
          m1_p.Text := f_CliOrds[ind_CliOrd].qOrdersREM.AsString;
          m2_p.Text := f_CliOrds[ind_CliOrd].qOrdersPATH.AsString;
          m3_p.Text := f_CliOrds[ind_CliOrd].qOrdersFULL_NAME.AsString;

          lb1_p.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsString;
          Id_New := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
          lb2_p.Caption := f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString;
          lb3_p.Caption := f_CliOrds[ind_CliOrd].qOrdersnSTAT.AsString;
          // lb4.Caption    := f_CliOrds[ind_CliOrd].qOrdersID_VERSION.AsString; //в пр-ве
          // lb5_p.Caption    := f_CliOrds[ind_CliOrd].qOrdersID_BATCH.AsString;
           //lb6_p.Caption    := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE_KD.AsString;
          // lb7.Caption    := f_CliOrds[ind_CliOrd].qOrdersID_VERSION_PEO.AsString; //пэо
          // lbProd.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRODUCT.AsString;
          edType_Prod_p.Text :=
            f_CliOrds[ind_CliOrd].qOrdersBUCH_PROD_NAME.AsString;
          lbNomDog_p.Caption :=
            f_CliOrds[ind_CliOrd].qOrdersID_DOGOVOR.AsString;
          edDog_p.Text := f_CliOrds[ind_CliOrd].qOrdersDOG_NUMBER_.AsString;
          // lbPrice_pos.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString;
           //if lbPrice_pos.Caption = '0' then lbPrice_pos.Caption := '';
          dtpDate_Open_p.Value := f_CliOrds[ind_CliOrd].qOrdersD_OPEN.Value;
          dtp1_p.Value := f_CliOrds[ind_CliOrd].qOrdersD_READY.Value;
          // if f_CliOrds[ind_CliOrd].qOrdersD_FIX.IsNull then dtpPlan.Value := null
           //else dtpPlan.Value       := f_CliOrds[ind_CliOrd].qOrdersD_FIX.Value;
           // Производство
          qProd.Close;
          qProd.Open;
          // Тип продукции
          qPType.Close;
          qPType.Open;

          qOrd_Type.Locate('id_type',
            f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger, []);

          lcb7_p.KeyValue := f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger;
          //тип заказа
          lcb7_p.ReadOnly := true;

          qMan.Locate('ID_P', f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger,
            []);
          lcb1_p.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger;
          //менеджер
          lcb1_p.ReadOnly := true;

          { if not f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.IsNull then
           begin
            qPType.Locate('ID_PTYPE',f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.AsInteger,[]);
            lcb2.KeyValue := qPTypeID_PTYPE.AsInteger//тип пр-ции
           end
           else lcb2.KeyValue := null ;
           lcb2.ReadOnly := true;

           lcb3.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger;//пр-во
           lcb3.ReadOnly := true;}
          lcb55_p.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CHIEF.AsInteger;
          //рук-ль
          lcb55_p.ReadOnly := true;

          qProd.Locate('ID_P_AREA',
            f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger, []);

          lbNom_Name_p.Caption :=
            IntToStr(Length(f_CliOrds[ind_CliOrd].qOrdersNAME.AsString));
          ed1_p.Text := f_CliOrds[ind_CliOrd].qOrdersNAME.AsString;
          ; //наименование
          ed1_p.ReadOnly := true;
          {  ed2.Text := f_CliOrds[ind_CliOrd].qOrdersAMOUNT.AsString; //кол-во
            ed2.ReadOnly := true;}
          //Валюта
          with qIns1, qIns1.SQL do
          begin
            Close;
            Clear;
            Add('select new_summa,RATE from CURSUM_TO_DEF(1,:ID_CURRENCY,:ON_DATE)');
            ParamByName('ID_CURRENCY').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger;
            qIns1.ParamByName('ON_DATE').AsDate := dtpDate_Open_p.Value;
            Open;
          end;
          lbCurs_p.Caption := qIns1.FieldByName('rate').AsString;

          dmIS.qCURR.Locate('ID_CURRENCY',
            f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger, []);
          lcb5_p.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
          lcb5_p.ReadOnly := true;

          ed3_p.Text := f_CliOrds[ind_CliOrd].qOrdersPRICE.AsString; //стоимость

          ed3_p.ReadOnly := true;
          edDef.Text := f_CliOrds[ind_CliOrd].qOrdersDEF_SUM.AsString;
          //стоимость деф.валюте
          if ed3_p.Text = '' then
            ed3.Text := '0';
          //  if ed2.Text = '' then ed2.Text := '1';

          edCastMen_p.Text := FloatToStrF(StrToFloat(ed3.Text) /
            StrToFloat(ed2.Text),
            ffFixed, 15, 2); //продажная цена
          ed4_p.Text := f_CliOrds[ind_CliOrd].qOrdersPRICEA.AsString;
          //доп.услуга
          ed4_p.ReadOnly := true;
          ed5_p.Text := f_CliOrds[ind_CliOrd].qOrdersMANAGER_MARGIN.AsString;
          //наценка
          ed5_p.ReadOnly := true;
          edSum_R_p.Text :=
            f_CliOrds[ind_CliOrd].qOrdersPLAN_COST_PRICE.AsString;
          //плановая стоимость
          ed5.ReadOnly := true;
          if edSum_R_p.Text = '' then
            edSum_R.Text := '0';

          edCast_R_p.Text := FloatToStrF(StrToFloat(edSum_R_p.Text) / 1,
            ffFixed, 15, 2); //плановая цена

          //lbPrice_pos.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString;//позиция прайса
          //if lbPrice_pos.Caption = '0' then lbPrice_pos.Caption := '';
        //  ed6.Text            := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.AsString; //смета
         // ed6.ReadOnly := true;
          ed7_p.Text := f_CliOrds[ind_CliOrd].qOrdersDELIVERY_SUM.AsString;
          //доставка
          ed7_p.ReadOnly := true;
          if f_CliOrds[ind_CliOrd].qOrdersIS_CHARGE.AsInteger = 1 then
            cb1_p.Checked := True
          else
            cb1_p.Checked := False;
          if f_CliOrds[ind_CliOrd].qOrdersIS_COL.AsInteger = 1 then
            cb3_p.Checked := True
          else
            cb3_p.Checked := False;
          {if f_CliOrds[ind_CliOrd].qOrdersIS_RESERVE.AsInteger = 1 then cbReserv.Checked := True
          else cbReserv.Checked := False; }

        //  cb1.Checked := True;
        //  tc1.TabVisible := lcb6.KeyValue <> null;
        //  tc2.TabVisible := lcb6.KeyValue = null ;

          p1_p.Hide;
          qregion.close;
          qRegion.open;
          qObj_type.close;
          qObj_type.open;

          qCar_types.close;
          qCar_types.open;

          qDelivery_types.close;
          qDelivery_types.open;

          with qPL_SH, qPL_SH.sql do
          begin //пока не решен вопрос с доставкой
            Close;
            clear;
            add('select p.*,');
            add('(select d.name from delivery_obj_types d where d.obj_type = p.obj_type) obj_t,');
            add('(select t.name from tdcar_types t where t.id_tdcar_type = p.id_car_type) car_t,');
            add('cast(0 as double precision ) weight_one');
            add(' ,pos.name pos_name, i.name item_name');
            add('from ORD_PLAN_SHIPP  p');
            add('left join PROJECT_ORDS_POS pos on pos.id_order_pos = p.id_order_pos');
            add('left join items i on i.id_item = pos.id_product');

            add('where p.ID_ORDER = :ID_ORDER and p.plan_type=21');
            add('order by p.D_PLANING');
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            //  ParamByName('ide').AsString := ed6.text;
            Open;
          end;
          with qORD_POS do
          begin
            Close;
            //  UpdateObject := dmIS.upORD_POS;
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            //  ParamByName('ID_ORDER').AsString := lb1.Caption;
            Open;
          end;

        end; // kop = 0
      1:
        begin // новый заказ
          with dmIS.qIN, dmIS.qIN.SQL do
          begin
            Close;
            Clear;
            Add('select ID,NUMBER,CURRENT_TIMESTAMP dt from GET_DOC_NUMBERS(1)');
            Open;
            Id_New := dmIS.qIN.FieldValues['ID'];
            New_Number := dmIS.qIN.FieldValues['NUMBER'];
            //  fmKOrder.Caption := 'Создание нового заказа № ' + New_Number;

            dtpDate_Open_p.Value := dmIS.qIN.FieldValues['dt'];
            dtp1_p.Value := Int(dmIS.qIN.FieldValues['dt']);
            //  lbDate.Caption := FormatDateTime('dd.mm.yyyy',dmIS.qIN.FieldValues['dt']);

          end;
          lb1_p.Caption := IntToStr(Id_New);
          lb2_p.Caption := New_Number;
          lb3_p.Caption := 'Новый';
          Self.Caption := IntToStr(ind_CliOrd) + '_Новый, № ' +
            New_Number + '," Новый", ' +
            f_CliOrds[ind_CliOrd].qClientsNAME.AsString;

          // Клиент
          qCli.Close;
          qCli.ParamByName('ID_ITEM').AsInteger := ID_AGENT;
          qCli.Open;
          //договор
          lbNomDog_p.Caption :=
            f_CliOrds[ind_CliOrd].qDogovorID_DOGOVOR.AsString;
          edDog_p.Text := f_CliOrds[ind_CliOrd].qDogovorDOG_NUMBER.AsString;
          // lbProd.Caption := '0';
            // Проект
          {  qProj.Close;
            qProj.ParamByName('ID_AGENT').AsInteger := ID_AGENT;
            qProj.Open;
            lcb4.KeyValue := qProjID_PROJECT.AsInteger;
          }
          m1_p.Clear;
          m2_p.Clear;
          m3_p.Clear;
          lcb7_p.ReadOnly := false;
          lcb7_p.KeyValue := null;
          lcb1_p.KeyValue := f_CliOrds[ind_CliOrd].qPrjID_MANAGER.AsInteger;
          //SysVars.RegTN;
          lcb1_p.ReadOnly := false;
          //  lcb2.ReadOnly := false;
            //lcb2.KeyValue := null;
          //  lcb3.ReadOnly := false;
          lcb55_p.ReadOnly := false;
          //  lcb6.ReadOnly := false;
            //lcb6.KeyValue := null;
          edCast_R_p.Text := '0';
          edSum_R_p.Text := '0';
          edCastMen_p.Text := '0';
          edType_Prod_p.Text := '';

          lbNom_Name_p.Caption := '';
          ed1_p.Text := ''; //наименование
          ed1_p.ReadOnly := false;
          //ed2.Text := '1'; //кол-во
          //ed2.ReadOnly := false;
         // Валюта
          dmIS.qCURR.Locate('MARK', '*', []);
          lcb5_p.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
          lcb5_p.ReadOnly := false;

          edSum_R_p.Text := '0'; //плановая стоимость
          ed5_p.ReadOnly := true;
          //  lbPrice_pos.Caption := '';//позиция прайса

          ed3_p.Text := '0'; //стоимость
          ed3_p.ReadOnly := false;
          edDef_p.Text := '0'; //стоимость деф.валюте

          ed4_p.Text := '0'; //доп.услуга
          ed4_p.ReadOnly := True;
          ed5_p.Text := '0'; //наценка
          ed5_p.ReadOnly := false;
          //  ed6.Text := ''; //смета
          //  lbW.caption := ''; //вес
          //  ed6.ReadOnly := false;
          ed7_p.Text := '0'; //доставка
          ed7_p.ReadOnly := false;
          cb1_p.Checked := false;
          cb3_p.Checked := false;
          //  cbReserv.Checked := false;
            //dtpPlan.Value := null;

          //  tc1.TabVisible := lcb6.KeyValue <> null;
          //  tc2.TabVisible := lcb6.KeyValue = null;
          p1_p.Show;
          with qPL_SH, qPL_SH.sql do
          begin //пока не решен вопрос с доставкой
            Close;
            clear;
            add('select p.*,');
            add('(select d.name from delivery_obj_types d where d.obj_type = p.obj_type) obj_t,');
            add('(select t.name from tdcar_types t where t.id_tdcar_type = p.id_car_type) car_t,');
            add('cast(0 as double precision ) weight_one');
            add(' ,pos.name pos_name, i.name item_name');
            add('from ORD_PLAN_SHIPP  p');
            add('left join PROJECT_ORDS_POS pos on pos.id_order_pos = p.id_order_pos');
            add('left join items i on i.id_item = pos.id_product');

            add('where p.ID_ORDER = :ID_ORDER and p.plan_type=21');
            add('order by p.D_PLANING');
            ParamByName('ID_ORDER').AsInteger := Id_New;
            //  ParamByName('ide').AsString := ed6.text;
            Open;
          end;
          with qORD_POS do
          begin
            Close;
            UpdateObject := dmIS.upORD_POS;
            ParamByName('ID_ORDER').AsInteger := Id_New;
            //dmIS.qIN.FieldValues['ID'];
            Open;
          end;

        end; // kop = 1
      2:
        begin // редактирование
          Self.Caption := IntToStr(ind_CliOrd) + '_Редактирование, № ' +
            f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString + '," ' +
            f_CliOrds[ind_CliOrd].qOrdersNAME.AsString + '", ' +
            f_CliOrds[ind_CliOrd].qClientsNAME.AsString;

          m1_p.Text := f_CliOrds[ind_CliOrd].qOrdersREM.AsString;
          m2_p.Text := f_CliOrds[ind_CliOrd].qOrdersPATH.AsString;
          m3_p.Text := f_CliOrds[ind_CliOrd].qOrdersFULL_NAME.AsString;

          lb1_p.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsString;
          Id_New := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
          lb2_p.Caption := f_CliOrds[ind_CliOrd].qOrdersN_ORDER.AsString;
          lb3_p.Caption := f_CliOrds[ind_CliOrd].qOrdersnSTAT.AsString;
          // lb4.Caption := f_CliOrds[ind_CliOrd].qOrdersID_VERSION.AsString; //в пр-ве
           //lb5_p.Caption := f_CliOrds[ind_CliOrd].qOrdersID_BATCH.AsString;
           //lb6_p.Caption := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE_KD.AsString;
          // lb7.Caption := f_CliOrds[ind_CliOrd].qOrdersID_VERSION_PEO.AsString; //пэо
          // lbProd.Caption     := f_CliOrds[ind_CliOrd].qOrdersID_PRODUCT.AsString;
          edType_Prod_p.Text :=
            f_CliOrds[ind_CliOrd].qOrdersBUCH_PROD_NAME.AsString;
          lbNomDog_p.Caption :=
            f_CliOrds[ind_CliOrd].qOrdersID_DOGOVOR.AsString;
          edDog_p.Text := f_CliOrds[ind_CliOrd].qOrdersDOG_NUMBER.AsString;
          dtpDate_Open_p.Value := f_CliOrds[ind_CliOrd].qOrdersD_OPEN.Value;
          dtp1_p.Value := f_CliOrds[ind_CliOrd].qOrdersD_READY.Value;
          { if f_CliOrds[ind_CliOrd].qOrdersD_FIX.IsNull then dtpPlan.Value := null
           else dtpPlan.Value := f_CliOrds[ind_CliOrd].qOrdersD_FIX.Value;}
           // Клиент
           // Производство
          qProd.Close;
          qProd.Open;
          // Тип продукции
          qPType.Close;
          qPType.Open;

          lcb1_p.ReadOnly := false;
          qMan.Locate('ID_P', f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger,
            []);
          lcb1_p.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_FIX.AsInteger;
          //менеджер

          lcb7_p.ReadOnly := false;
          qOrd_Type.Locate('id_type',
            f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger, []);
          lcb7_p.KeyValue := f_CliOrds[ind_CliOrd].qOrdersORD_TYPE.AsInteger;
          //тип заказа

        { if not f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.IsNull then
         begin
          qPType.Locate('ID_PTYPE',f_CliOrds[ind_CliOrd].qOrdersID_CPTYPE.AsInteger,[]);
          lcb2.KeyValue := qPTypeID_PTYPE.AsInteger;//тип пр-ции
         end
         else lcb2.KeyValue := null ;
         lcb2.ReadOnly := false;

         lcb3.ReadOnly := false;
         qProd.Locate('ID_P_AREA',f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger,[]);
         lcb3.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CPROD.AsInteger;//пр-во  }

          lcb55_p.KeyValue := f_CliOrds[ind_CliOrd].qOrdersID_CHIEF.AsInteger;
          //рук-ль
          lcb55_p.ReadOnly := false;

          lbNom_Name_p.Caption :=
            IntToStr(Length(f_CliOrds[ind_CliOrd].qOrdersNAME.AsString));
          ed1_p.Text := f_CliOrds[ind_CliOrd].qOrdersNAME.AsString;
          //наименование
          ed1_p.ReadOnly := false;
          {  ed2.Text := f_CliOrds[ind_CliOrd].qOrdersAMOUNT.AsString; //кол-во
            if ed2.Text = '' then ed2.Text := '0' ;
            ed2.ReadOnly := false; }
            //Валюта
          with qIns1, qIns1.SQL do
          begin
            Close;
            Clear;
            Add('select new_summa,RATE from CURSUM_TO_DEF(1,:ID_CURRENCY,:ON_DATE)');
            ParamByName('ID_CURRENCY').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger;
            qIns1.ParamByName('ON_DATE').AsDate := dtpDate_Open_p.Value;
            Open;
          end;
          lbCurs_p.Caption := qIns1.FieldByName('rate').AsString;

          dmIS.qCURR.Locate('ID_CURRENCY',
            f_CliOrds[ind_CliOrd].qOrdersID_CURRENCY.AsInteger, []);
          lcb5_p.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
          lcb5_p.ReadOnly := false;

          edSum_R_p.Text :=
            f_CliOrds[ind_CliOrd].qOrdersPLAN_COST_PRICE.AsString;
          //плановая стоимость
          if edSum_R_p.Text = '' then
            edSum_R_p.Text := '0';
          ed5_p.ReadOnly := true;
          edCast_R_p.Text := FloatToStrF(StrToFloat(edSum_R_p.Text) / 1,
            ffFixed, 15, 2);
          { lbPrice_pos.Caption := f_CliOrds[ind_CliOrd].qOrdersID_PRICE_POS.AsString;//позиция прайса
            if lbPrice_pos.Caption = '0' then lbPrice_pos.Caption := ''; }
          ed3_p.Text := f_CliOrds[ind_CliOrd].qOrdersPRICE.AsString; //стоимость
          if ed3_p.Text = '' then
            ed3_p.Text := '0';
          ed3_p.ReadOnly := false;
          edDef_p.Text := f_CliOrds[ind_CliOrd].qOrdersDEF_SUM.AsString;
          //стоимость деф.валюте

          edCastMen_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) / 1,

            ffFixed, 15, 2); //плановая цена

          ed4_p.Text := f_CliOrds[ind_CliOrd].qOrdersPRICEA.AsString;
          //доп.услуга
          ed4_p.ReadOnly := True;
          if not f_CliOrds[ind_CliOrd].qOrdersMANAGER_MARGIN.isnull then
            ed5_p.Text := f_CliOrds[ind_CliOrd].qOrdersMANAGER_MARGIN.AsString;
          //наценка
          ed5_p.ReadOnly := false;
          {ed6.Text := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.AsString; //смета
          ed6.ReadOnly := false;}
          {with qINs1, qINs1.sql do
          begin
            close;
            clear;
            add('select e1.weight');
            add('from estimates e1 where e1.id_estimate = :ide');
            if not  f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.IsNull then
            begin
              parambyname('ide').AsInteger := f_CliOrds[ind_CliOrd].qOrdersID_ESTIMATE.AsInteger;
              open;
              lbw.Caption := fieldbyname('weight').AsString;
            end;
          end;}
          if not f_CliOrds[ind_CliOrd].qOrdersDELIVERY_SUM.isnull then
            ed7_p.Text := f_CliOrds[ind_CliOrd].qOrdersDELIVERY_SUM.AsString;
          //доставка
          ed7_p.ReadOnly := false;
          if f_CliOrds[ind_CliOrd].qOrdersIS_CHARGE.AsInteger = 1 then
            cb1_p.Checked := True
          else
            cb1_p.Checked := False;
          if f_CliOrds[ind_CliOrd].qOrdersIS_COL.AsInteger = 1 then
            cb3_p.Checked := True
          else
            cb3_p.Checked := False;
          {  if f_CliOrds[ind_CliOrd].qOrdersIS_RESERVE.AsInteger = 1 then cbReserv.Checked := True
            else cbReserv.Checked := False;}

          //  cb1.Checked := True;
          //  tc1.TabVisible := lcb6.KeyValue <> null;
          //  tc2.TabVisible := lcb6.KeyValue = null;

          p1_p.Show;
          with qPL_SH, qPL_SH.sql do
          begin //пока не решен вопрос с доставкой
            Close;
            clear;
            add('select p.*,');
            add('(select d.name from delivery_obj_types d where d.obj_type = p.obj_type) obj_t,');
            add('(select t.name from tdcar_types t where t.id_tdcar_type = p.id_car_type) car_t,');
            add('cast(0 as double precision ) weight_one');
            add(' ,pos.name pos_name, i.name item_name');
            add('from ORD_PLAN_SHIPP  p');
            add('left join PROJECT_ORDS_POS pos on pos.id_order_pos = p.id_order_pos');
            add('left join items i on i.id_item = pos.id_product');

            add('where p.ID_ORDER = :ID_ORDER and p.plan_type=21');
            add('order by p.D_PLANING');
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            //  ParamByName('ide').AsString := ed6.text;
            Open;
          end;
          with qORD_POS do
          begin
            Close;
            UpdateObject := dmIS.upORD_POS;
            ParamByName('ID_ORDER').AsInteger :=
              f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
            Open;
          end;

        end; // kop = 2

    end;
    if id_doc <> -1 then
    begin
      with qIns1, qIns1.SQL do
      begin
        close;
        clear;
        add('select id_project_doc, name from project_docs where id_project_doc = :idd');
        parambyname('idd').AsInteger := id_doc;
        open;
        edDok_p.Text := '[' + fieldbyname('id_project_doc').AsString + '] ' +
          fieldbyname('name').AsString;
      end;
    end;
    edDok_p.readonly := true;

  end;
 qOrdLinks.Close;
 if c_ord = -1 then
 qOrdLinks.ParamByName('id_order').AsInteger := Id_new
 else qOrdLinks.ParamByName('id_order').AsInteger := C_ord;
 qOrdLinks.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmKOrder.bb2Click(Sender: TObject);
begin
  Kop := 0;
  Self.Close; // fmKOrder.Close;
end;

procedure TfmKOrder.bb1Click(Sender: TObject);
begin
 try
  Screen.Cursor := crHourGlass;

  if not TestInfo then Exit;

  InsEdit_Order(kop);
  kop := 2;

  if qOrdParam.State in [dsEdit] then qOrdParam.Post;
  if qPL_SH.State in [dsInsert, dsEdit] then qPL_SH.Post;
  if qORD_POS.State in [dsInsert, dsEdit] then qORD_POS.Post;

  with f_CliOrds[ind_CliOrd] do
  begin
   qClients.Locate('ID_ITEM', qCliID_ITEM.AsInteger, []);
   OpenOrds;
   qOrders.Locate('ID_ORDER', ID_New, []);
  end;

   id_doc := -1;
   Kop := 0;

   if length(Trim(lcbUragent.Text)) = 0 then lcbUragent.KeyValue := null;

   if (lcbUragent.KeyValue = null) then
   begin
    if (d_Open = 0) then
    begin
     if (DateOf(Server_now(dmIS.qIM)) < StrToDate('01.06.2013')) then
     begin
     qOrdParam.Close;
     dmIS.qIN.Close;
     Self.Close;
     end;
    end else if (d_Open < StrToDate('01.06.2013')) then
     begin
     qOrdParam.Close;
     dmIS.qIN.Close;
     Self.Close;
     end;
    end else
    begin
     qOrdParam.Close;
     dmIS.qIN.Close;
     Self.Close;
    end;





  { if lcbUragent.KeyValue = null then
   begin
    if ((d_Open = 0) then
    if (DateOf(Server_now(dmIS.qIM)) < StrToDate('01.06.2013'))) then
    begin
     qOrdParam.Close;
     dmIS.qIN.Close;
     Self.Close;
    end;
   end else

   else
   begin
    qOrdParam.Close;
    dmIS.qIN.Close;
    Self.Close;
   end;     }

 finally
  Screen.Cursor := crDefault;
 end;
  if (C_ORD = -1) or (C_ORD = 0) then
  Order2XML(dmIS.dbIS,id_new)
   else
 Order2XML(dmIS.dbIS,C_ORD);
end;

procedure TfmKOrder.pc1Change(Sender: TObject);
begin
  {If pc1.ActivePage = ts2 Then begin
   if lcb6.KeyValue <> null Then
    pc2.ActivePage := ts1
   else pc2.ActivePage := ts2;

     with qPrice do begin
     Close;
     ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
     Open;
    end;

  end; }
  if pc1.ActivePage = ts2 then
    pc2Change(Sender);
end;

procedure TfmKOrder.dbg4CellClick(Column: TColumnEh);
var
  Rect: TRect;
begin

  if (column.FieldName = 'S_AMOUNT'
    //Column.Index = 2
    ) and (qOrdParamP_TYPE.AsInteger = 1)
    and (qOrdParamIN_ORDER.AsInteger = 1) then
  begin
    Rect := column.Grid.CellRect(column.Grid.Col, column.Grid.Row);
    qP.Close;
    qP.ParamByName('id_main_param').AsInteger :=
      qOrdParamID_MAIN_PARAM.AsInteger;
    qP.Open;
    qP.FetchAll;

    with dbl2 do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top - 5; //-4;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;

      keyvalue := qPID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;

  if (column.FieldName = 'STRVALUE'
    //Column.Index = 2
    )
    and (qOrdParamIN_ORDER.AsInteger = 1) then
  begin
    Rect := column.Grid.CellRect(column.Grid.Col, column.Grid.Row);
    with edstrv do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top + 1; //-4;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;

      text := qOrdParamSTRVALUE.AsString;
      SetFocus;
    end;
  end;
end;

procedure TfmKOrder.dbl2Exit(Sender: TObject);
begin
  // dbl2.Visible := false;
end;

procedure TfmKOrder.dbl2Click(Sender: TObject);
var
  idp: integer;
begin
  idp := qOrdParamID_ORDER_PARAM.AsInteger;

  with qIns, qIns.SQL do
  begin
    close;
    clear;
    add('update project_ord_params');
    add('set id_mp_set = :id_mp_set');
    add('where (id_order_param = :id_order_param)');
    ParamByName('id_mp_set').AsInteger := dbl2.KeyValue;
    ParamByName('id_order_param').AsInteger :=
      qOrdParamID_ORDER_PARAM.AsInteger;
    try
      ExecSQL;
      Transaction.Commit;
      qOrdParam.Close;
      qOrdParam.Open;
      qOrdParam.Locate('id_order_param', idp, []);
    except
    end;
  end
end;

procedure TfmKOrder.dbg4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  // if qOrdParamP_TYPE.AsInteger <> 1 then Background := clMoneyGreen;

  if qOrdParamIN_ORDER.AsInteger = 0 then
    Afont.Color := clGray;
end;

procedure TfmKOrder.DBGridEh1Columns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if qOrdParamIN_ORDER.AsInteger = 0 then
  begin
    showmessage('Нельзя редактировать неактивный параметр!');
    handled := true;
    exit;
  end;
end;

procedure TfmKOrder.DBGridEh1Columns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if qOrdParamIN_ORDER.AsInteger = 0 then
  begin
    showmessage('Нельзя редактировать неактивный параметр!');
    handled := true;
    exit;
  end;
end;

procedure TfmKOrder.ed6Change(Sender: TObject);
begin
  if ed6.Text = '' then
    ed6.Text := '0';
  qEst_TMC.Close;
  qEst_TMC.ParamByName('id_estimate').AsString := ed6.Text;
  qEst_TMC.Open;
  qEst_Work.Close;
  qEst_Work.ParamByName('id_estimate').AsString := ed6.Text;
  qEst_Work.Open;
  if not fmMAin.UF143 then
    gbEst.Caption := 'Сумма по смете = ' +
      { FloatToStr(dbg6.FieldColumns['TOTAL'].Footer.SumValue +
              dbg5.FieldColumns['TOTAL'].Footer.SumValue);  }
    FloatToStr(dbg6.SumList.SumCollection.GetSumByOpAndFName(goSum,
      'TOTAL').SumValue +
      dbg5.SumList.SumCollection.GetSumByOpAndFName(goSum, 'TOTAL').SumValue);

  {   if dmIS.qStore_TMS_B.RecordCount >1 then
    begin
     edAmount.Text := FloatToStr(dmIs.qLimitOST_AMOUNT.Value -
                     dbg7.FieldColumns['AMOUNT'].Footer.SumValue);
     dmIS.qStore_TMS_B.Next;
    end
    else
    begin
     dmIs.qLimit.Next;
     edAmount.Text := FloatToStr(dmIs.qLimitOST_AMOUNT.Value -
                     dmIs.qLimitR_AMOUNT.Value) ;
    end;
   }
end;

procedure TfmKOrder.lcb2Change(Sender: TObject);
begin
  qOrdParam.Close;
  if lcb2.KeyValue <> null then
  begin
    //удаление нужно сделать
    qOrdParam.Close;
    qOrdParam.ParamByName('id_order').AsString := lb1.Caption;
    //dmIS.qIN.FieldByName('ID').AsInteger;;
    qOrdParam.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
    qOrdParam.ParamByName('ysl_in').AsInteger := 1;
    try
      qOrdParam.Open;
      qOrdParam.Transaction.CommitRetaining;
    except
      qOrdParam.Transaction.RollbackRetaining;
    end;
    //стоимость
    edSum_R.Text := '0';
    edCast_R.Text := '0';
    ed3.Text := '0';
    edCastMen.Text := '0';
    ed7.Text := '0';
    ed5.Text := '0';
    //смета
    ed6.Text := '0';

    //прайс
    {  qPrice_PType.Close;
      qPrice_PType.ParamByName('id_price_pos').AsInteger := lcb2.KeyValue;
      qPrice_PType.Open;
      if not qPr.IsEmpty then lb7.Caption := qPrID_VERSION.AsString;
    }
    qPr.Close;
    qPr.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
    qPr.Open;
    //найти прайс, по которому считали
    if lbPrice_Pos.Caption = '' then
      lbPrice_Pos.Caption := '0';
      lcb6.KeyValue := null;
    qIns1.Close;
    qIns1.SQL.Clear;
    qIns1.SQL.Add('select id_price_pos, id_price, amount, price, profit, est_price');
    qIns1.SQL.Add(' from price_pos   where id_price_pos = :id_price_pos');
    qIns1.ParamByName('id_price_pos').AsString := lbPrice_Pos.Caption;

    if StrToInt(lbPrice_Pos.Caption) > 0 then
    begin
      qIns1.Open;

      qPr.Locate('id_price', qIns1.FieldByName('id_price').AsInteger, []);
      //if not qPrID_PRICE.IsNull then
      lcb6.KeyValue := qPrID_PRICE.AsInteger ;
     // else lcb6.KeyValue := null;
      if qIns1.FieldByName('id_price').IsNull then
        lbPrice_Pos.Caption := '0';
      if qPr.IsEmpty then
      begin
        lbPrice_Pos.Caption := '0';
        lb7.Caption := '0';
        ed6.ReadOnly := false;
      end;
    end;
    //  if not qPr.IsEmpty then lb7.Caption := qPrID_VERSION.AsString;
  end;
end;

procedure TfmKOrder.edstrvExit(Sender: TObject);
begin
  //edstrv.Visible := false;
end;

procedure TfmKOrder.tbDelClick(Sender: TObject);
begin
  qIns1.Close;
  qIns1.SQL.Clear;
  qIns1.SQL.Add('delete from project_ord_params o where o.id_order = :id_order ');
  qIns1.SQL.Add('and o.id_object is null and o.id_prod_oper is null ');
  qIns1.ParamByName('id_order').AsString := lb1.Caption;
  qIns1.ExecSQL;
  lcb2Change(Sender);
end;

procedure TfmKOrder.sbDogClick(Sender: TObject);
begin
  if not Assigned(fmClients) then
    Application.CreateForm(TfmClients, fmClients);
  fmClients.rb1.Checked := True;
  dmIS.qAg.Close;
  fmClients.C_Agent := ID_AGENT; //fmCliOrds.qClientsID_ITEM.AsInteger;
  fmClients.kop := 1;
  if lbNomDog.Caption = '' then
    lbNomDog.Caption := '0';
  fmClients.C_DOG := StrToInt(lbNomDog.Caption);
  //fmClients.OpenAgents;

  fmClients.pc1.ActivePage := fmClients.ts3;
  if kop > 0 then
    fmClients.up_Dog := 1;
  fmClients.Show;

end;

procedure TfmKOrder.edDogKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    try
      qIns1.Close;
      qIns1.sql.Clear;
      qIns1.SQL.Add('select  d.id_dogovor, d.inn, d.dog_number');
      qIns1.SQL.Add(' from DOGOVOR d');
      qIns1.SQL.Add(' where d.id_agent = :id_agent');
      qIns1.SQL.Add(' and upper(d.dog_number) like upper(' + '''%' +
        AnsiUpperCase(edDog.Text) + '%''' + ')');
      qIns1.ParamByName('id_agent').AsInteger :=
        fmCliOrds.qClientsID_ITEM.AsInteger;
      //showMessage(qIns1.Text);
      qIns1.Open;
      qIns1.FetchAll;
      if qIns1.IsEmpty then
      begin
        ShowMessage('Не найден № договора с таким вхождением.. ');
        exit;
      end;
      if qIns1.RecordCount > 1 then
      begin
        ShowMessage('Найдено несколько договоров.. ');
        sbDog.Click;
        fmClients.ed1.Text := edDog.Text;
        fmClients.Show;
        Exit;
      end;
      edDog.Text := qIns1.FieldByName('dog_number').Value;
      lbNomDog.Caption := qIns1.FieldByName('id_dogovor').Value;
    except
    end;

  end;

end;

procedure TfmKOrder.ed3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then //%
  begin
    if (ed6.Text = '0') and (lcb6.KeyValue = null) then
      edSum_R.Text := ed3.Text;

    if edSum_R.Text = '0' then
      edSum_R.Text := ed3.Text;
    edDef.Text := FloatToStrF(StrToFloat(ed3.Text) * StrToFloat(lbCurs.Caption),
      ffFixed, 15, 2);
    try
      {if lcb6.KeyValue = null then //не по прайсу
      begin}
      if ed6.Text = '0' then
        edSum_R.Text := FloatToStrF(StrToFloat(ed3.Text) - StrToFloat(ed7.Text),
          ffFixed, 15, 2);
      edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text),
        ffFixed, 15, 2);
      ed5.Text :=
        FloatToStrF(
        (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text))
        /
        StrToFloat(edSum_R.Text) * 100, ffFixed, 15, 4)
        {end
     else
     begin
      edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text),
                                    ffFixed,15,2);
    {  ed5.Text :=
        FloatToStrF(
         (
           StrToFloat(ed3.Text) - StrToFloat(edSum_R.Text)
          )/
          (StrToFloat(edSum_R.Text)- StrToFloat(ed7.Text))
          *100, ffFixed,15,4);     }
         {  ed5.Text :=
        FloatToStrF(
         (
           StrToFloat(ed3.Text) - StrToFloat(ed7.Text)-StrToFloat(edSum_R.Text)
          )/
          (StrToFloat(edSum_R.Text)- StrToFloat(ed7.Text))
          *100, ffFixed,15,4);
     end  }
    except
    end;
  end;
end;

procedure TfmKOrder.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if (key = 13) and ((lcb6.KeyValue = null) or (lcb6.KeyValue = 0) )then
  if ((key = 13) and ((lcb6.KeyValue = null))) then
  begin
    ed6.Text := '0';
    edCast_R.Text := '0';
    edSum_R.Text := '0';
    ed3.Text := '0';
    ed5.Text := '0';
    ed7.Text := '0';
    edCastMen.Text := '0';
    edDef.Text := '0';
  end;
  if key = 13 then
    lcb6Change(Sender);
end;

procedure TfmKOrder.ed5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    try
      { if lcb6.KeyValue <> null then  //по прайсу
       begin
        ed3.Text :=FloatToStrF(
         (StrToFloat(edSum_R.Text) ) *  //-StrToFloat(ed7.Text) ) *
         (1 + StrToFloat(ed5.Text)/100)//+StrToFloat(ed7.Text)
        ,ffFixed,15,2);
        edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text),
                                     ffFixed,15,2);

       end
       else
       begin  }
      ed3.Text := FloatToStrF(StrToFloat(edSum_R.Text) * (1 +
        StrToFloat(ed5.Text) / 100) +
        StrToFloat(ed7.Text), ffFixed, 15, 2);
      edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text),
        ffFixed, 15, 2);
      // end ;
      edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
        StrToFloat(lbCurs.Caption),
        ffFixed, 15, 2);
    except
    end;

  end;
end;

procedure TfmKOrder.ed7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    try
      ed3.Text := edSum_R.Text;
      ed5.Text := '0';
      { if lcb6.KeyValue = null then
       begin }
      ed3.Text := FloatToStrF(StrToFloat(edSum_R.Text) * (1 +
        StrToFloat(ed5.Text) / 100) +
        StrToFloat(ed7.Text), ffFixed, 15, 2);
      {  ed5.Text := FloatToStrF(
         (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text))/
         StrToFloat(edSum_R.Text) *100,ffFixed,15,4); }

      // end;
      edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
        StrToFloat(lbCurs.Caption),
        ffFixed, 15, 2);

      { if lcb6.KeyValue <> null then  //по прайсу
       ed5.Text := FloatToStrF(
        ((StrToFloat(edSum_R.Text)- StrToFloat(ed7.Text)) * ( 1 + StrToFloat(ed5.Text)/100)),ffFixed,15,2)
      else }
      ed5.Text := FloatToStrF(
        (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text))
        /
        StrToFloat(edSum_R.Text) * 100, ffFixed, 15, 2);
      edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
        StrToFloat(lbCurs.Caption),
        ffFixed, 15, 4);

    except
    end;
  end;
end;

procedure TfmKOrder.qEst_WorkCalcFields(DataSet: TDataSet);
begin
  qEst_WorknAmount_Time.AsString := HourToTime(qEst_WorkAMOUNT_TIME.AsFloat);
  qEst_WorknTotal_Def.AsFloat := qEst_WorkTOTAL.AsFloat /
    StrToFloat(lbCurs.Caption);

end;

procedure TfmKOrder.dbg4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Rect: TRect;
begin

  if (dbg4.SelectedField.FieldName = 'S_AMOUNT'
    //Column.Index = 2
    ) and (qOrdParamP_TYPE.AsInteger = 1)
    and (qOrdParamIN_ORDER.AsInteger = 1) then
  begin
    Rect := dbg4.Columns.Grid.CellRect(dbg4.Col, dbg4.Row);
    qP.Close;
    qP.ParamByName('id_main_param').AsInteger :=
      qOrdParamID_MAIN_PARAM.AsInteger;
    qP.Open;
    qP.FetchAll;

    with dbl2 do
    begin
      Width := Rect.Right - Rect.Left;
      Height := Rect.Bottom - Rect.Top - 5; //-4;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;

      keyvalue := qPID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;

  {   if ( dbg4.SelectedField.FieldName = 'STRVALUE'
    //Column.Index = 2
    )
    and (qOrdParamIN_ORDER.AsInteger = 1)then
    begin
      Rect := dbg4.Columns.Grid.CellRect(dbg4.Col, dbg4.Row);

      with  edstrv do
      begin
            Width   := Rect.Right  - Rect.Left ;
            Height  := Rect.Bottom - Rect.Top+1; //-4;
            Left    := Rect.Left + 1;
            Top     := Rect.Top+30;
            Visible := True;

            text := qOrdParamSTRVALUE.AsString;
            SetFocus;

       end;
    end;}

end;

procedure TfmKOrder.lcb5CloseUp(Sender: TObject; Accept: Boolean);
var
  old_rate, factor: Extended;
begin
  old_rate := StrToFloat(lbCurs.Caption);
  with qIns1, qIns1.SQL do
  begin
    Close;
    Clear;
    Add('select new_summa,RATE from CURSUM_TO_DEF(1,:ID_CURRENCY,:ON_DATE)');
    ParamByName('ID_CURRENCY').AsInteger := lcb5.KeyValue;
    qIns1.ParamByName('ON_DATE').AsDate := dtpDate_Open.Value;
    Open;
  end;
  lbCurs.Caption := qIns1.FieldByName('rate').AsString;
  //   if old_rate = 1 then factor := 1
  //   else factor := old_rate / qIns1.FieldByName('rate').AsFloat;
  factor := old_rate / qIns1.FieldByName('rate').AsFloat;
  edCast_R.Text := FloatToStrF(StrToFloat(edCast_R.Text) * factor, ffFixed, 15,
    2);
  edSum_R.Text := FloatToStrF(StrToFloat(edSum_R.Text) * factor, ffFixed, 15,
    2);
  ed3.Text := FloatToStrF(StrToFloat(ed3.Text) * factor, ffFixed, 15, 2);
  edCastMen.Text := FloatToStrF(StrToFloat(edCastMen.Text) * factor, ffFixed,
    15, 2);
  ed7.Text := FloatToStrF(StrToFloat(ed7.Text) * factor, ffFixed, 15, 2);
  edDef.Text := FloatToStrF(StrToFloat(ed3.Text) * factor, ffFixed, 15, 2);
  ed6Change(Sender);
end;

procedure TfmKOrder.ed6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var s: string;
begin
  if (key = 13) then
  begin
    try
      s := IntToStr(StrToInt(ed6.Text));
    except
      MsgError('Вы должны ввести число в поле кол-во','Проверка');
      exit;
    end;
    with qIns1, qIns1.SQL do
    begin
      if lcb6.KeyValue <> null then
      begin
        close;
        clear;
        add('select * from prices p2');
        add('where p2.id_estimate = :id_estimate and p2.id_price = :id_price');
        parambyname('id_estimate').AsString := ed6.Text;
        parambyname('id_price').AsInteger := lcb6.KeyValue;
        open;
        if IsEmpty then
        begin
          MsgError('Смета не по прайсу, поменяйте тип продукции', 'Проверка данных');
          exit;
        end;
      end;
      close;
      clear;
      add('select * from estimates where id_estimate = :ide');
      parambyname('ide').AsString := ed6.Text;
      open;
      if isEmpty then
      begin
        MsgError('Сметы с таким номером не существует!', 'Ошибка');
        exit;
      end;

      if fieldbyname('d_confirm').IsNull then
      begin
        MsgError('Сметы не утверждена!', 'Ошибка');
        exit;
      end;



      lbW.Caption := fieldbyname('weight').AsString;
      qPL_SH.close;
      qPL_SH.open;
    end;
    Est;
  end;
end;

procedure TfmKOrder.qOperCalcFields(DataSet: TDataSet);
begin
  qOpernAmount_Time.AsString := HourToTime(qOperAMOUNT_TIME.AsFloat);
end;

procedure TfmKOrder.ed6DblClick(Sender: TObject);
begin
  dmIs.mT.CommitRetaining;
  C_ORD := StrToInt(lb1.Caption);
  C_EST := StrToInt(ed6.Text);
  if ed6.Text = '0' then
    C_PROD := 0;
  C_PROD := StrToInt(lbProd.Caption);
  edFind.Text := IntToStr(C_PROD);
  edFind_Est.Text := IntToStr(C_EST);

  cb1.Checked := True;
  pc1.ActivePage := ts2;
  pc2.ActivePage := tc2;
  //tc2.TabVisible := lcb6.KeyValue = null ;
  //дерево
  if pc2.ActivePage = tc2 then
  begin
    qFIO.Close;
    qFIO.Open;
    qEst.Close;
    OpenC_ORDER;
    with dbt1 do
    begin
      ClearTree;
      BuildTree;
      if C_PROD > 0 then
      begin
        p3.Width := 250;
        FindTreeItem(C_PROD);
      end
      else
      begin
        if cb1.Checked then
          p3.Width := 250
        else
          p3.Width := 1;
        Items[0].Expand(False);
        Selected := Items[0];
      end;
    end;

    OpenEstimate;

  end;

end;

procedure TfmKOrder.dbt1BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

procedure TfmKOrder.dbg7DblClick(Sender: TObject);
begin
  if bb1.Visible = True then
  begin
    ed6.Text := qEstID_ESTIMATE.AsString;
    Est;
  end;
end;

procedure TfmKOrder.edFind_EstKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if qEst.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed1.Text = '' then
    begin
      MsgInformation('Заполните образец поиска', 'Образец поиска');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_EST := qEstID_ESTIMATE.AsInteger;
    qEst.DisableControls;
    repeat
      if qEst.Eof then
        qEst.First
      else
        qEst.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_EST = qEstID_ESTIMATE.AsInteger);
    qEst.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;

end;

procedure TfmKOrder.lcb6CloseUp(Sender: TObject; Accept: Boolean);
begin
  qIns1.Close;
  qIns1.SQL.Clear;
  qIns1.SQL.Add('select distinct s.id_product from product_objects s');
  qIns1.SQL.Add('where s.id_version = :id_version');
  qIns1.ParamByName('id_version').AsString := lb7.Caption;
  qIns1.Open;
  if not qIns1.IsEmpty then
    lbProd.Caption := qIns1.FieldByName('id_product').AsString
  else
    lbProd.Caption := '0';
  ;
end;

procedure TfmKOrder.lcb6Change(Sender: TObject);
var
  am: Integer;
begin
  // tc1.TabVisible := lcb6.KeyValue <> null;
  // tc2.TabVisible := lcb6.KeyValue = null ;
  if lcb6.KeyValue <> null then // по прайсу
  begin
    //  bbEstimate.Visible := True ;
    lb7.Caption := qPrID_VERSION.AsString; //по умолчанию

    ed6.ReadOnly := True;
  end
  else
  begin
    //  bbEstimate.Visible := False;
    ed6.ReadOnly := False;
    lbPrice_pos.Caption := '';
  end;

  if (ed2.Text <> '0') and (lcb6.KeyValue <> null) then
  begin
    qPrice.Close;
    qPrice.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
    qPrice.Open;
    qPrice.Locate('id_version', lcb6.KeyValue, []);
    qPrice_Pos.close;
    //  qPrice_Pos.ParamByName('id_price').AsInteger := qPriceID_PRICE.AsInteger;
    qPrice_Pos.Open;
    //  if (ed6.Text <> '') and (ed6.Text <> '0') then qPrice.Locate('id_estimate',ed6.Text,[]) ;
    if not qPrice_Pos.IsEmpty then
    begin
      with qIns1, qIns1.SQL do
      begin
        Close;
        Clear;
        Add('select min(s.amount) am_min, max(s.amount) am_max ');
        Add('from price_pos s where s.id_price = :id_price');
        ParamByName('id_price').AsInteger := qPriceID_PRICE.AsInteger;
        Open;
        if not qIns1.IsEmpty then
        begin
          if StrToInt(ed2.Text) > qIns1.FieldByName('am_max').AsInteger then
            am := qIns1.FieldByName('am_max').AsInteger
          else
            am := StrToInt(ed2.Text);
        end;
        Close;
        Clear;
        Add('select first 1 s.id_price_pos, s.amount');
        Add('from price_pos s');
        Add('where s.id_price = :id_price and s.amount >= :amount  order by s.amount');
        ParamByName('id_price').AsInteger := qPriceID_PRICE.AsInteger;
        ParamByName('amount').AsInteger := am;
        Open;
        qPrice_Pos.Locate('id_price_pos',
          qIns1.FieldByName('id_price_pos').AsInteger, []);
        lbPrice_pos.Caption := qPrice_PosID_PRICE_POS.AsString;
        try
          edCast_R.Text := FloatToStrF(qPrice_PosPRICE.AsFloat, ffFixed, 15, 2);
          edSum_R.Text :=
            FloatToStrF(qPrice_PosPRICE.AsFloat * StrToFloat(ed2.Text), ffFixed,
            15, 2);
          //if lcb6.KeyValue = null then //не по прайсу
          ed3.Text :=
            FloatToStrF(StrToFloat(edSum_R.Text) + StrToFloat(ed7.Text),
            ffFixed, 15, 2);
          //else ed3.Text  :=  edSum_R.Text;
          ed5.Text := '0';
          edCastMen.Text :=
            FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text), ffFixed,
            15, 2);
        except
        end;

        dmIS.qCURR.Locate('MARK', '*', []);
        lcb5.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
        lbCurs.Caption := '1';
        edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
          StrToFloat(lbCurs.Caption),
          ffFixed, 15, 2);
      end;
    end;
  end;

end;

procedure TfmKOrder.edFindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  c_v: integer;
begin
  {If Key = 13 Then
  try
  FTXT := edFind.Text;
  If FTXT[1] = '*' Then begin
   delete(FTXT,1,1);
   C_PROD := StrToInt(FTXT);
  end
  else
  with dmIS.qIN, dmIS.qIN.SQL do begin
   Close;
   Clear;
   Add('select i.id_item from ITEMS i join br_items(4,0) b');
   Add('on b.id = i.id_item where i.status <> 3');
   Add('and upper(i.name) like upper(''' + edFind.Text + '%'')');
   Open;
   If not IsEmpty Then C_PROD := FieldByName('ID_ITEM').AsInteger
    else C_PROD := 0;
  end;
  FindTreeItem(C_PROD);
  except
   MsgInformation('Образец не найден','Поиск по образцу');
  end;
  }
  if Key = 13 then
  try
    FTXT := edFind.Text;
    if FTXT[1] = '*' then
    begin
      delete(FTXT, 1, 1);
      C_PROD := StrToInt(FTXT);
      FindTreeItem(C_PROD);
    end;
    if FTXT[1] = '%' then
    begin
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select i.id_item from ITEMS i join br_items(4,0) b');
        Add('on b.id = i.id_item where i.status <> 3');
        Add('and upper(i.name) like upper(''' + edFind.Text + '%'')');
        Open;
        if not IsEmpty then
          C_PROD := FieldByName('ID_ITEM').AsInteger
        else
          C_PROD := 0;
      end;
      FindTreeItem(C_PROD);
    end;
    {If FTXT[1] = '(' Then begin
     delete(FTXT,1,1);
     with dmIS.qIN, dmIS.qIN.SQL do begin
      Close;
      Clear;
      Add('select v.id_item from product_versions v');
      Add('where v.id_version = ' + FTXT);
      Open;
      If not IsEmpty Then C_PROD := FieldByName('ID_ITEM').AsInteger
      else C_PROD := 0;
     end;
     FindTreeItem(C_PROD);
     qEst.Locate('ID_VERSION', StrToInt(FTXT), []);
    end; }
    if FTXT[1] = '=' then
    begin
      delete(FTXT, 1, 1);
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select v.id_item from estimates s');
        //, v.id_version from estimates s');
        Add('join product_versions v on v.id_version = s.id_version');
        Add('and s.id_estimate = ' + FTXT);
        Open;
        if not IsEmpty then
        begin
          C_PROD := FieldByName('ID_ITEM').AsInteger;
          C_EST := StrToInt(FTXT); //FieldByName('ID_VERSION').AsInteger;
        end
        else
        begin
          C_PROD := 0;
          c_v := 0;
        end;
      end;
      qEst.Close;
      FindTreeItem(C_PROD);
      qEst.Locate('ID_ESTIMATE', C_EST, []);
    end;
  except
    MsgInformation('Образец не найден', 'Поиск по образцу');
  end;

end;

procedure TfmKOrder.dtpDate_OpenCloseUp(Sender: TObject; Accept: Boolean);
begin
  lcb5CloseUp(Sender, False);
end;

procedure TfmKOrder.dbt1Change(Sender: TObject; Node: TTreeNode);
begin
  lb.Caption := IntToStr(dbt1.GetId);
  tbOpen.Click;

end;

procedure TfmKOrder.bbEstimateClick(Sender: TObject);
begin
  //if ed6.Text <> '0' then kop_est := 2 else kop_est := 1;
  lcbUragent.Hide;
  if strtoint(lbProd.Caption) = 0 then
  begin
    showmessage('Не выбрано изделие');
    exit;
  end;

  if strtoint(lb7.Caption) = 0 then
  begin
    showmessage('Не выбрано изделие');
    exit;
  end;

  dbgEst.Align := alClient;
  pnEst.Left := 0;
  pnEst.Top := 72;
  if (lcb6.KeyValue <> null) and (lcb6.KeyValue > 0) then
  begin
    qVer.Close;
    qVer.SQL.Clear;
    qVer.SQL.Add('select id_version, name, data, creater, status, rem, id_item, id_price');
    qVer.SQL.Add('from product_versions where id_price = :id_price and status < 100'); //не закрытая и не удалённая
    qVer.ParamByName('id_price').AsInteger := qPrID_PRICE.AsInteger;
    //lcb6.KeyValue;
    qVer.Open;
  end
  else
  begin
    qVer.Close;
    qVer.SQL.Clear;
    qVer.SQL.Add('select id_version, name, data, creater, status, rem, id_item, id_price');
    qVer.SQL.Add('from product_versions where id_item = :id_item and status < 100');
    qVer.ParamByName('id_item').AsString := lbProd.Caption;

    // qVer.SQL.Add('from product_versions where id_version = :id_version and status < 100');
    // qVer.ParamByName('id_version').AsString := lb7.Caption;
    qVer.Open;
  end;
  try
    lcbVer.KeyValue := StrToInt(lb7.Caption);
    lb7.Caption := IntToStr(lcbVer.KeyValue);
    lbProd.Caption := qVerID_ITEM.asString;
    edTitle.Text := lb2.Caption + ' - ' + lcbVer.Text;
    //  edProf.Text := qPTypePROFIT.AsString;
    //  edDopPr.Text:= qPTypeDOP_PRICE.AsString;
  except
  end;

  edKol.Text := ed2.Text;
  edDeliv.Text := ed7.Text;
  dtpPrice.Value := dtpDate_Open.Value;
  with qEst_Sum_Oper_Types, qEst_Sum_Oper_Types.SQL do
  begin
    Close;
    ParamByName('id_estimate').AsInteger := StrToInt(ed6.Text);
    Open;
    if (qEst_Sum_Oper_Types.IsEmpty) or (StrToInt(ed6.Text) = 0) then
    begin
      qIns1.Close;
      qIns1.SQL.Clear;
      if qIns1.Transaction.Active then
        qIns1.Transaction.CommitRetaining;
      qIns1.SQL.Add('select * from NEW_ESTIMATE_TPP(:ID_VERSION,:ID_P,:NAME,:AMOUNT,:PRICE_DATE)');
      qIns1.ParamByName('ID_VERSION').AsInteger := qVerID_VERSION.AsInteger;
      qIns1.ParamByName('id_p').AsInteger := SysVars.RegTN;
      qIns1.ParamByName('name').AsString := edTitle.Text;
      qIns1.ParamByName('amount').AsFloat := StrToFloat(edKol.Text);
      qIns1.ParamByName('price_date').AsDateTime := dtpPrice.Value;
      qIns1.Open;
      dmIs.mT.CommitRetaining;
      ed6.Text := qIns1.FieldByName('ID_ESTIMATE').AsString;

      Close;
      ParamByName('id_estimate').AsInteger :=
        qIns1.FieldByName('ID_ESTIMATE').AsInteger;
      Open;
      {If qEst_Sum_Oper_Types.RecordCount = 0 then
      begin
       qEst_Sum_Oper_Types.Edit;
       qEst_Sum_Oper_TypesID_PTYPE.AsInteger := qPTypeID_PTYPE.AsInteger;
       qEst_Sum_Oper_TypesPROFIT.AsFloat    := qPTypePROFIT.AsFloat;
       qEst_Sum_Oper_TypesDOP_PRICE.AsFloat := qPTypeDOP_PRICE.AsFloat;
       qEst_Sum_Oper_Types.Post;
   //    qEst_Sum_Oper_Types.Transaction.CommitRetaining;
       dmIs.mT.CommitRetaining;
      end; }
    end;

  end;

  if kop <> 0 then
    pnEst.Visible := True;
end;

procedure TfmKOrder.BitBtn2Click(Sender: TObject);
begin
  pnEst.Visible := False;
  lcbUragent.Show;
end;

procedure TfmKOrder.BitBtn1Click(Sender: TObject);
begin
  //Kop_Est := 1;
  Kop_Est := 2;
  lcbUragent.Show;
  sbEst.Click;
end;

procedure TfmKOrder.lcbVerCloseUp(Sender: TObject; Accept: Boolean);
begin
  try
    lb7.Caption := IntToStr(lcbVer.KeyValue);
    lbProd.Caption := qVerID_ITEM.asString;
    edTitle.Text := lb2.Caption + ' - ' + lcbVer.Text;
    //edProf.Text := qPTypePROFIT.AsString;
    //edDopPr.Text:= qPTypeDOP_PRICE.AsString;
  except
  end;
end;

procedure TfmKOrder.tbOpenClick(Sender: TObject);
begin
  OpenEstimate;
end;

procedure TfmKOrder.SpeedButton1Click(Sender: TObject);
begin
  if kop <> 0 then
  try
    { if lcb6.KeyValue = null then //не по прайсу
     begin}
    edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text),
      ffFixed, 15, 2);

    ed5.Text :=
      FloatToStrF(
      (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text)) /
      StrToFloat(edSum_R.Text) * 100, ffFixed, 15, 4);
    { end
     else
     begin
      edCastMen.Text := FloatToStrF(StrToFloat(ed3.Text) / StrToFloat(ed2.Text),
                                    ffFixed,15,2);
      ed5.Text :=
        FloatToStrF(
         (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text)
                    )/ (StrToFloat(edSum_R.Text)- StrToFloat(ed7.Text)) *100,
                    ffFixed,15,4);
     end;   }
    edDef.Text := FloatToStrF(StrToFloat(ed3.Text) * StrToFloat(lbCurs.Caption),
      ffFixed, 15, 4);

  except
  end;

end;

procedure TfmKOrder.sbEstClick(Sender: TObject);
var
  id_est: Integer;
begin
  case Kop_Est of
    1:
      begin
        if
          MsgQuestion('Для выполнения расчета стоимости будет создана новая смета. '
          +
          SysVars.NReg + ', создать смету?', 'Создание сметы') = id_yes then
        begin
          with dmIS.qIM, dmIS.qIM.SQL do
          begin
            Close;
            Clear;
            Add('select gen_id(estimate_title,1) nom from access_levels a where a.access_key = 0');
            Open;
            id_est := dmIS.qIM.FieldByName('nom').AsInteger;
            ed6.Text := dmIS.qIM.FieldByName('nom').AsString;
            Close;
            Clear;
            Add('insert into estimates (id_estimate, id_version, name, d_create,');
            Add('id_creator, amount, price_date, price_delivery, profit, id_ptype, dop_price)');
            Add('values (:id_estimate, :id_version, :name,');
            Add('current_timestamp, :id_creator, :amount, :price_date,');
            //   Add(':price_delivery,');
            add(':profit, :idpt, :doppr)');
            ParamByName('id_estimate').AsInteger := id_est;
            ParamByName('id_version').AsInteger := qVerID_VERSION.AsInteger;
            ParamByName('name').AsString := edTitle.Text;
            ParamByName('id_creator').AsInteger := SysVars.RegTN;
            ParamByName('amount').AsFloat := StrToFloat(edKol.Text);
            if dtp1.Value = null then
              ParamByName('price_date').Clear
            else
              ParamByName('price_date').AsDateTime := dtpPrice.Value;
            //ParamByName('price_delivery').AsString := edDeliv.Text;
            ParamByName('profit').AsString := edProf.Text;
            ParamByName('doppr').AsString := edDopPr.Text;
            if lcb1.KeyValue = null then
              ParamByName('idpt').Clear
            else
              ParamByName('idpt').AsInteger := lcb2.KeyValue;
          end;
        end;
      end;
    2:
      begin
        if qEst_Sum_Oper_Types.State in [dsEdit, dsInsert] then
          qEst_Sum_Oper_Types.Post;
        with dmIS.qIM, dmIS.qIM.SQL do
        begin
          Close;
          Clear;
          Add('update estimates set id_version = :id_version, name = :name, d_create = current_timestamp,');
          Add('id_creator = :id_creator, amount = :amount, price_date = :price_date,');
          //Add('price_delivery = :price_delivery,');
          add('profit = :profit, id_ptype = :idpt,');
          Add('dop_price = :doppr');
          Add('where (id_estimate = :id_estimate)');
          ParamByName('id_estimate').AsString := ed6.Text;
          ParamByName('id_version').AsInteger := qVerID_VERSION.AsInteger;
          ParamByName('name').AsString := edTitle.Text;
          ParamByName('id_creator').AsInteger := SysVars.RegTN;
          ParamByName('amount').AsFloat := StrToFloat(edKol.Text);
          if dtp1.Value = null then
            ParamByName('price_date').Clear
          else
            ParamByName('price_date').AsDateTime := dtpPrice.Value;
          //  ParamByName('price_delivery').AsString := edDeliv.Text;
          ParamByName('profit').AsString := edProf.Text;
          ParamByName('doppr').AsString := edDopPr.Text;
          if lcb1.KeyValue = null then
            ParamByName('idpt').Clear
          else
            ParamByName('idpt').AsInteger := lcb2.KeyValue;
        end;
      end;
  end;
  try
    id_est := StrToInt(ed6.Text);
    dmIS.qIM.ExecSQL;
    if dmIS.qIM.Transaction.Active then
      dmIS.qIM.Transaction.Commit;
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      {Close;
      Clear;
      Add('execute procedure WRITE_EST_POS (:est1)');
      ParamByName('est1').AsString := ed6.Text; }
      try
        // ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        fmAll.CalcEstimate(id_est, pbest, lbOper, false, fmMain.S19, 1);
        // CalcEst(id_est,pbEst,lbOper,False);

     //запустить запрос по суммам сметы ТМЦ и Операции
        if lcb6.KeyValue <> null then
          ed6Change(Sender)
        else
        begin
          try
            Est;
          except
          end;
        end;
        Kop_Est := 0;
        pnEst.Visible := False;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  except
    if dmIS.qIM.Transaction.Active then
      dmIS.qIM.Transaction.Rollback;
  end;
end;

procedure TfmKOrder.BitBtn3Click(Sender: TObject);
begin
  lcbUragent.Show;
  if qEst_Sum_Oper_Types.State in [dsEdit] then
    qEst_Sum_Oper_Types.Post;
  dmIs.mT.CommitRetaining;
  if kop = 0 then
    exit;
  if lcbVer.Text = '' then
  begin
    ShowMessage('Выберите версию...');
    exit;
  end;
  //проверка статуса ошибки версии
  if not Assigned(fmTestVersion) then
    Application.CreateForm(TfmTestVersion, fmTestVersion);

  fmTestVersion.ID_VERSION := qVerID_VERSION.AsInteger;
  with fmTestVersion.qTestV do
  begin
    Close;
    ParamByName('id_ver').AsInteger := qVerID_VERSION.AsInteger;
    Open;
    if not IsEmpty then
      fmTestVersion.ShowModal;
  end;

  if not fmTestVersion.TESTV then
  begin
    MsgInformation('Версия содержит ошибки. Расчет невозможен', 'Проверка');
    exit;
  end;

  //проверка статуса версии
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    { try
     add('select * from est_sum_oper_types e');
      add('where e.id_estimate = :ide and');
      add('((e.profit is null) or (e.dop_price is null) or (e.id_ptype is null))');
      parambyname('ide').AsString := ed6.text;
      Open;
      if  not IsEmpty then
      begin
       showmessage('Невозможно расчитать смету, в спецификации по видам деятельности не указан тип продукции, либо не заполнены проценты на прибыль или доп. наценку !!!!');
       exit;
      end;
      except;
     end;  }
    Close;
    Clear;
    Add('select id_estimate, d_confirm,status from estimates');
    Add('where id_estimate =:id_estimate');
    ParamByName('id_estimate').AsString := ed6.text;
    Open;
    if dmIs.qIM.FieldByName('d_confirm').IsNull then
    begin
      Kop_Est := 2;
      sbEst.Click;
    end
    else
      ShowMessage('Утверждённую смету пересчитать нельзя!!!');
  end;
end;

procedure TfmKOrder.edKolChange(Sender: TObject);
begin
  ed2.Text := edKol.Text;
end;

procedure TfmKOrder.edDelivChange(Sender: TObject);
begin
  ed7.Text := edDeliv.Text;
end;

procedure TfmKOrder.dtpPriceCloseUp(Sender: TObject; Accept: Boolean);
begin
  dtpDate_Open.Value := dtpPrice.Value;
end;

procedure TfmKOrder.qEst_TMCCalcFields(DataSet: TDataSet);
begin
  qEst_TMCnTotal_Def.AsFloat := qEst_TMCTOTAL.AsFloat /
    StrToFloat(lbCurs.Caption);
end;

procedure TfmKOrder.ToolButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg7.Focused then
    GridToExcel(dbg7);
  if dbg8.Focused then
    GridToExcel(dbg8);
  if dbg9.Focused then
    GridToExcel(dbg9);
  if dbg10.Focused then
    GridToExcel(dbg10);
  if dbg11.Focused then
    GridToExcel(dbg11);
  Screen.Cursor := crDefault;

end;

procedure TfmKOrder.ToolButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg1.Focused then
    GridToExcel(dbg1);
  if dbg2.Focused then
    GridToExcel(dbg2);
  if dbg3.Focused then
    GridToExcel(dbg3);
  if dbg4.Focused then
    GridToExcel(dbg4);
  if dbg5.Focused then
    GridToExcel(dbg5);
  if dbg6.Focused then
    GridToExcel(dbg6);

  if dbg2_p.Focused then
    GridToExcel(dbg2_p);
  if dbg3_p.Focused then
    GridToExcel(dbg3_p);
  if dbg4_p.Focused then
    GridToExcel(dbg4_p);
  Screen.Cursor := crDefault;
end;

procedure TfmKOrder.SpeedButton2Click(Sender: TObject);
var
  FName: string;
  id : integer;
begin
  if (C_ORD = -1) or (C_ORD = 0) then id := id_new else id := c_ord;
  if od1.Execute then
  begin
    FName := od1.FileName;

      WritePathToOrder(dmIs.qIM, id,FName)

  end;
  if dmIs.mT.Active then dmIs.mT.CommitRetaining;
  qOrdLinks.close;
  qOrdLinks.ParamByName('id_order').AsInteger := id;
  qOrdLinks.Open;
end;

procedure TfmKOrder.dbg7SortMarkingChanged(Sender: TObject);
begin
  OpenEstimate;
end;

procedure TfmKOrder.lcb2CloseUp(Sender: TObject; Accept: Boolean);
begin
  tbDelClick(Sender);
end;

procedure TfmKOrder.pc2Change(Sender: TObject);
begin
  if pc2.ActivePage = tc2 then
    ed6DblClick(Sender);
  if pc2.ActivePage = tc1 then
  begin
    if (ed2.Text <> '0') and (lcb6.KeyValue <> null) then
    begin
      qPrice.Close;
      qPrice.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
      qPrice.Open;
      qPrice.Locate('id_price', lcb6.KeyValue, []);
      qPrice_Pos.close;
      qPrice_Pos.Open;
      if not qPrice_Pos.IsEmpty then
        qPrice_Pos.Locate('id_price_pos', lbPrice_pos.Caption, []);
    end;
  end;
end;

procedure TfmKOrder.dbg7GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (qEstSTATUS.AsInteger = 0) and (not qEstSTATUS.IsNull) then
    AFont.Style := [fsBold];
  if not qEstD_CONFIRM.IsNull then
    Background := clMoneyGreen;
  if qEstSTATUS.AsInteger = 10 then
    AFont.Color := clRed;
  //if qEstSTATUS.IsNull Then Background := clWindow;
end;

procedure TfmKOrder.edstrvKeyPress(Sender: TObject; var Key: Char);
var
  idp: integer;
begin
  if (key = #13) then
  begin

    idp := qOrdParamID_ORDER_PARAM.AsInteger;

    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('update project_ord_params');
      add('set strvalue = :strvalue');
      add('where (id_order_param = :id_order_param)');
      ParamByName('strvalue').AsString := edstrv.text;
      ParamByName('id_order_param').AsInteger :=
        qOrdParamID_ORDER_PARAM.AsInteger;
      try
        ExecSQL;
        Transaction.Commit;
        qOrdParam.Close;
        qOrdParam.Open;
        qOrdParam.Locate('id_order_param', idp, []);

      except
      end;
    end
  end;
end;

procedure TfmKOrder.SpeedButton3Click(Sender: TObject);
begin
  pnFull_Name.Left := 83;
  pnFull_Name.Top := 178;

  if m3.Lines.Text = '' then
    m3.Lines.Add(ed1.Text);
  pnFull_Name.Visible := True;
end;

procedure TfmKOrder.BitBtn4Click(Sender: TObject);
begin
  pnFull_Name.Visible := False;
end;

procedure TfmKOrder.edstrvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  idp: integer;
begin
  if key = VK_DOWN then
  begin
    idp := qOrdParamID_ORDER_PARAM.AsInteger;

    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('update project_ord_params');
      add('set strvalue = :strvalue');
      add('where (id_order_param = :id_order_param)');
      ParamByName('strvalue').AsString := edstrv.text;
      ParamByName('id_order_param').AsInteger :=
        qOrdParamID_ORDER_PARAM.AsInteger;
      try
        ExecSQL;
        Transaction.Commit;
        qOrdParam.Close;
        qOrdParam.Open;
        qOrdParam.Locate('id_order_param', idp, []);

      except
      end;
    end;
    qOrdParam.Next;
    dbg4CellClick(dbg4.Columns.Items[dbg4.Col - 1]);
  end;

  if key = VK_UP then
  begin
    idp := qOrdParamID_ORDER_PARAM.AsInteger;

    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('update project_ord_params');
      add('set strvalue = :strvalue');
      add('where (id_order_param = :id_order_param)');
      ParamByName('strvalue').AsString := edstrv.text;
      ParamByName('id_order_param').AsInteger :=
        qOrdParamID_ORDER_PARAM.AsInteger;
      try
        ExecSQL;
        Transaction.Commit;
        qOrdParam.Close;
        qOrdParam.Open;
        qOrdParam.Locate('id_order_param', idp, []);

      except
      end;
    end;
    qOrdParam.Prior;
    dbg4CellClick(dbg4.Columns.Items[dbg4.Col - 1]);
  end;

end;

procedure TfmKOrder.qOrdParamAfterScroll(DataSet: TDataSet);
begin
  edstrv.Visible := false;
  dbl2.Visible := false;
end;

procedure TfmKOrder.ToolButton3Click(Sender: TObject);
begin
  //If fmMain.S19 <> 1 Then exit;
  if ed6.Text = '0' then
    exit;
  if not TestInfo then
    exit;
  if kop = 1 then
    InsEdit_Order(kop);
  //begin ShowMessage('Необходимо записать заказ.'); exit; end;
  //If not Assigned(fmEstCalc) Then
  Application.CreateForm(TfmEstCalc, fmEstCalc);
  fmEstCalc.ID_ESTIMATE := StrToInt(ed6.Text);
  fmEstCalc.ID_ORDER := StrToInt(lb1.Caption);

  if kop = 1 then
    fmMain.Status_Ord := 0;
  if (kop = 2) or (kop = 0) then
    fmMain.Status_Ord := f_CliOrds[ind_CliOrd].qOrdersSTATUS.AsInteger;

  fmEstCalc.Caption := 'Смета № ' + IntToStr(fmEstCalc.ID_ESTIMATE) +
    ', заказа ' + lb2.Caption;
  if lcb2.KeyValue <> null then
  begin
    qOrdParam.ParamByName('id_ptype').AsInteger := lcb2.KeyValue;
    fmEstCalc.ID_PTYPE := lcb2.KeyValue;
  end
  else
  begin
    qOrdParam.ParamByName('id_ptype').AsInteger := 0;
    fmEstCalc.ID_PTYPE := 0;
  end;

  fmEstCalc.Show;

end;

procedure TfmKOrder.qORD_POSBeforePost(DataSet: TDataSet);
begin
  qORD_POSID_FIX.AsInteger := SysVars.RegTN;
end;

procedure TfmKOrder.qORD_POSAfterRefresh(DataSet: TDataSet);
begin
  if dmIs.mt.Active then
    dmIs.mt.CommitRetaining;
end;

procedure TfmKOrder.qORD_POSNewRecord(DataSet: TDataSet);
begin
  try
    {If fmKOrder.Showing Then begin
     qORD_POSID_ORDER.AsInteger := StrToInt(fmKOrder.lb1.Caption);
     qORD_POSID_CURRENCY.AsInteger := dmIS.qCURRID_CURRENCY.AsInteger;
     qORD_POSID_UNIT.AsInteger := fmMain.MAIN_UNIT;
    end; }
    //If f_KOrder[fmMain.NF_KOrder].Showing then
    // qORD_POSID_ORDER.AsInteger := StrToInt(f_KOrder[fmMain.NF_KOrder].lb1.Caption);
    if C_ORD_KIND = 1 then
      qORD_POSID_ORDER.AsInteger := StrToInt(lb1_p.Caption)
    else
      qORD_POSID_ORDER.AsInteger := StrToInt(lb1.Caption);
    qORD_POSID_CURRENCY.AsInteger := dmIS.qCURRID_CURRENCY.AsInteger;
    qORD_POSID_UNIT.AsInteger := fmMain.MAIN_UNIT;
    if pc1.ActivePage = ts3 then
      if cbNDS_p.Checked then
        qORD_POSNDS.AsFloat := strtofloat(edNDS_P.text);

  except
  end;

end;

procedure TfmKOrder.qORD_POSCalcFields(DataSet: TDataSet);
begin
  qORD_POSsUMPRICE.AsFloat := qORD_POSAMOUNT.AsFloat * qORD_POSPRICEA.AsFloat;
  // qORD_POSsUMPRICE.AsFloat := qORD_POSS.AsFloat;
end;

procedure TfmKOrder.qPL_SHNewRecord(DataSet: TDataSet);
var
  fest: byte;
begin
  try
    //If f_KOrder[fmMain.NF_KOrder].Showing then
    //qPL_SHID_ORDER.AsInteger := StrToInt(f_KOrder[fmMain.NF_KOrder].lb1.Caption);

    if (C_ORD_KIND = 2) and (qORD_POS.IsEmpty) then
    begin
      MsgInformation('Не заполнена спецификация заказа!!!', 'Проверка данных');
      DataSet.Cancel;
      exit;

    end;
    qPL_SHID_ORDER_POS.AsInteger := qORD_POSID_ORDER_POS.AsInteger;
    fest := 1;
    if C_ORD_KIND = 1 then
      qPL_SHID_ORDER.AsInteger := StrToInt(lb1_p.Caption)
    else
      qPL_SHID_ORDER.AsInteger := StrToInt(lb1.Caption);
    if (C_ORD_KIND <> 1) then
      with qINs1, qIns1.sql do
      begin
        close;
        clear;
        add('select is_est from ptypes where id_ptype = :id_ptype');
        parambyname('id_ptype').AsInteger := lcb2.KeyValue;
        open;
        if fieldbyname('is_est').AsInteger = 1 then
          fest := 1
        else
          fest := 0;
      end;

    if (fest = 1) and (C_ORD_KIND <> 2) then
    begin
      if (StrToInt(ed6.text) = 0) or (ed6.text = '') then
      begin
        MsgError('Невыбрана смета, невозможно рассчитать вес!',
          'Проверка данных!');
        exit;
      end;
      with qIns1, qIns1.sql do
      begin
        close;
        clear;
        add('select  e.weight');
        add('from estimates e  where e.id_estimate =:id_estimate');
        parambyname('id_estimate').AsInteger := StrToInt(ed6.text);
        open;
        qPL_SHWEIGHT_ONE.Asfloat := fieldbyname('weight').Asfloat;
      end;
    end;
  except
  end;

end;

procedure TfmKOrder.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lbNom_Name.Caption := IntToStr(Length(ed1.text));
end;

procedure TfmKOrder.DBGridEh1Columns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  qEst_Sum_Oper_TypesPROFIT.AsFloat := qP_TYPEPROFIT.AsFloat;
  qEst_Sum_Oper_TypesDOP_PRICE.AsFloat := qP_TYPEDOP_PRICE.AsFloat;
end;

procedure TfmKOrder.SpeedButton4Click(Sender: TObject);
begin
  with qIns1, qIns1.SQL do
  begin
    close;
    clear;
    add('delete from est_sum_oper_types where id_estimate = :ide');
    parambyname('ide').AsInteger := StrToInt(ed6.Text);
    ExecSQL;
    close;
    clear;
    add('insert into est_sum_oper_types (id_estimate, id_oper_type)');
    add('select distinct :id_estimate, o.id_oper_type');
    add('from product_oper p join operations o');
    add('on o.id_area = p.id_area and o.id_operation = p.id_operation');
    add('and o.id_oper_type is not null  ');
    add('where p.id_version = :id_version');
    parambyname('id_estimate').AsInteger := StrToInt(ed6.Text);
    parambyname('id_version').AsInteger := lcbVer.KeyValue;
    ExecSQL;
    Transaction.CommitRetaining;
    qEst_Sum_Oper_Types.Close;
    qEst_Sum_Oper_Types.ParamByName('id_estimate').AsInteger :=
      StrToInt(ed6.Text);
    qEst_Sum_Oper_Types.open;
    if qEst_Sum_Oper_Types.RecordCount = 1 then
    begin
      qEst_Sum_Oper_Types.Edit;
      qEst_Sum_Oper_TypesID_PTYPE.AsInteger := qPTypeID_PTYPE.AsInteger;
      qEst_Sum_Oper_TypesPROFIT.AsFloat := qPTypePROFIT.AsFloat;
      qEst_Sum_Oper_TypesDOP_PRICE.AsFloat := qPTypeDOP_PRICE.AsFloat;
      qEst_Sum_Oper_Types.Post;
      dmIs.mT.CommitRetaining;
    end;
  end;

end;

procedure TfmKOrder.dbg6GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qEst_WorkARCH.IsNull then
    AFont.Color := clRed;
end;

procedure TfmKOrder.dbg10GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qEst_Oper_EARCH.IsNull then
    AFont.Color := clRed;
end;

procedure TfmKOrder.dbg9GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qOperARCH.IsNull then
    AFont.Color := clRed;
end;

procedure TfmKOrder.SpeedButton5Click(Sender: TObject);
begin
  showmessage('В разработке...');
  // pnDok.Visible := false;
end;

procedure TfmKOrder.SpeedButton7Click(Sender: TObject);
begin
  showmessage('В разработке...');
  {qPDoc.Close;
  qPDoc.ParamByName('id_project').AsInteger :=  DBText5.Field.AsInteger;
  qPDoc.Open;
  pnDok.Visible := true; }
end;

procedure TfmKOrder.SpeedButton6Click(Sender: TObject);
begin
  {
      id_doc := qPDocID_PROJECT_DOC.AsInteger;
      Transaction.CommitRetaining;
      edDok.Text := '[' + qPDocID_PROJECT_DOC.AsString + '] '
       + qPDocNAME.AsString;
      pnDok.Visible := false; }
end;

procedure TfmKOrder.qPL_SHnDeliv_typeChange(Sender: TField);
var
  id_car: integer;
  ids: integer;
  flag: byte;
begin
  //if  qPL_SHnDeliv_type.NewValue =  qPL_SHnDeliv_type.OldValue then exit;
  //   if   sender.New =  sender.OldValue then exit;
   //  ids := qPL_SHID_PLAN_SHIPP.AsInteger;
     { with qINs1, qIns1.SQL do
      begin
        close;
        clear;
        add('select * from delivery_obj_types d1 where  d1.id_delivery_type = :id');

        parambyname('id').AsInteger := qDelivery_typesID_DELIVERY_TYPE.AsInteger; //qDelivery_typesID_DELIVERY_TYPE.AsInteger;
        open;
        fetchall;
        if (qIns1.RecordCount < 2)  and (qIns1.RecordCount <> 0) then
        begin}

       { end;
      end; }

  {
  //  if qPL_SH.IsEmpty then exit;

    ids := qPL_SHID_PLAN_SHIPP.AsInteger;
   // if qPL_SH.State in [dsEdit, dsInsert] then qPL_SH.Post;
    with qINs1, qIns1.sql do
    begin
      close;
      clear;
      add('select * from DELIVERY_TYPES where id_delivery_type = :id  ');
      parambyname('id').AsInteger := qDelivery_typesID_DELIVERY_TYPE.AsInteger;
      open;
      id_car := fieldbyname('default_car_type').AsInteger;
      close;
      clear;
      add('update ORD_PLAN_SHIPP set id_car_type = :id');
      add('where id_plan_shipp = :id_plan');
      parambyname('id_plan').AsInteger := qPL_SHID_PLAN_SHIPP.AsInteger;
      parambyname('id').AsInteger := id_car;
      try
        ExecSQL;
        //if qPL_SH.Transaction.Active then qPL_SH.Transaction.CommitRetaining;
      except
            //Showmessage('Запись не удалась!');
          //  Transaction.RollbackRetaining;
      end;
      qPL_SH.close;
      qPL_SH.open;
      qPL_SH.open;
      qPL_SH.Locate('id_plan_shipp', ids, []);

    end;
          }
end;

procedure TfmKOrder.dbg3Columns10EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  ids: integer;
begin
  ids := qPL_SHID_PLAN_SHIPP.AsInteger;
  if qPL_Sh.State in [dsEdit, dsInsert] then
  begin
    qPL_SH.Post;
    qPL_SH.Transaction.CommitRetaining;
    qPL_SH.Locate('id_plan_shipp', ids, []);
  end;
  if dmIs.mmT.Active then
    dmIs.mmT.Commit;
  if not Assigned(fmDeliv) then
    Application.CreateForm(TfmDeliv, fmDeliv);
  fmDeliv.kop := 1;
  fmDeliv.id_plan := qPL_SHID_PLAN_SHIPP.AsInteger;
  fmDeliv.Panel3.Visible := false;
  fmDeliv.Panel2.Visible := true;
  fmDeliv.qCar.Close;
  fmDeliv.qCar.Open;
  if fmDeliv.ShowModal = mrOK then
  begin
    if fmDeliv.kop = 1 then
    begin
      with fmDeliv.qIns, fmDeliv.qINs.sql do
      begin
        close;
        clear;
        add('update ORD_PLAN_SHIPP set id_car_type = :id');
        add('where id_plan_shipp = :id_plan');
        parambyname('id_plan').AsInteger := fmDeliv.id_plan;
        parambyname('id').AsInteger := fmDeliv.qCarID_TDCAR_TYPE.AsInteger;
        try
          ExecSQL;
          Transaction.CommitRetaining;
        except
          Showmessage('Запись не удалась!');
          Transaction.RollbackRetaining;
        end;
      end;
    end;
    if qPL_SH.Transaction.Active then
      qPL_SH.Transaction.CommitRetaining;
    qPL_SH.close;
    qPL_SH.open;
    qPL_SH.open;
    qPL_SH.Locate('id_plan_shipp', ids, []);
  end;
end;

procedure TfmKOrder.dbg3Columns9EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  ids, idt: integer;
begin
  ids := qPL_SHID_PLAN_SHIPP.AsInteger;
  idt := qDelivery_typesID_DELIVERY_TYPE.AsInteger;
  if qPL_Sh.State in [dsEdit, dsInsert] then
  begin
    qPL_SH.Post;
    qPL_SH.Transaction.CommitRetaining;
    qPL_SH.Locate('id_plan_shipp', ids, []);
  end;

  ///if dmIs.mmT.Active then dmIs.mmT.Commit;
  if not Assigned(fmDeliv) then
    Application.CreateForm(TfmDeliv, fmDeliv);
  fmDeliv.kop := 2;
  fmDeliv.id_plan := qPL_SHID_PLAN_SHIPP.AsInteger;
  fmDeliv.Panel3.Visible := true;
  fmDeliv.Panel2.Visible := false;
  fmDeliv.qObjt.close;
  fmDeliv.qObjt.ParamByName('id').AsInteger := qPL_SHID_DELIVERY_TYPE.AsInteger;
  fmDeliv.qObjt.open;
  if fmDeliv.ShowModal = mrOK then
  begin
    if fmDeliv.kop = 2 then
    begin

      with fmDeliv.qIns, fmDeliv.qINs.sql do
      begin
        close;
        clear;
        add('update ORD_PLAN_SHIPP set obj_type = :id');
        add('where id_plan_shipp = :id_plan');
        parambyname('id_plan').AsInteger := fmDeliv.id_plan;
        parambyname('id').AsInteger := fmDeliv.qObjtOBJ_TYPE.AsInteger;

        try
          ExecSQL;
          Transaction.CommitRetaining;
        except
          Showmessage('Запись не удалась!');
          Transaction.RollbackRetaining;
        end;
      end;
    end;
    if qPL_Sh.State in [dsEdit, dsInsert] then
    begin
      qPL_SH.Post;
      qPL_SH.Transaction.CommitRetaining;
      //qPL_SH.Locate('id_plan_shipp', ids, []);
    end;
    if qPL_SH.Transaction.Active then
      qPL_SH.Transaction.CommitRetaining;
    qPL_SH.close;
    qPL_SH.open;
    qPL_SH.Locate('id_plan_shipp', ids, []);
  end;
end;

procedure TfmKOrder.BitBtn5Click(Sender: TObject);

var
  id: integer;
begin
  if C_ORD_KIND = 1 then
  begin
    ShowMessage('В разработке...');
    exit;
  end;
  // s := ssShift;

  if (StrToInt(ed6.text) = 0) or (ed6.text = '') then
  begin
    MsgError('Невыбрана смета, невозможно рассчитать вес!', 'Проверка данных!');
    exit;
  end;
  id := qPL_SHID_PLAN_SHIPP.AsInteger;
  if qPL_SH.State in [dsEdit, dsInsert] then
    qPL_SH.post;
  if qPL_SH.Transaction.Active then
    qPL_SH.Transaction.CommitRetaining;
  {qPL_SH.close;
   qPL_SH.open;
   qPL_SH.Locate('id_plan_shipp', id, []); }
  with qINs1, qINs1.sql do
  begin
    close;
    clear;
    add('select delivery_ord from DELIVERY_COST_CALC (:id_order)');
    parambyname('id_order').AsInteger := StrToInt(lb1.Caption);
    open;
    try
      ed7.text := fieldbyname('DELIVERY_ORD').AsString;
      ed3.Text := edSum_R.Text;
      ed5.Text := '0';
      { if lcb6.KeyValue = null then
       begin }
      ed3.Text := FloatToStrF(StrToFloat(edSum_R.Text) * (1 +
        StrToFloat(ed5.Text) / 100) +
        StrToFloat(ed7.Text), ffFixed, 15, 2);
      {  ed5.Text := FloatToStrF(
         (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text))/
         StrToFloat(edSum_R.Text) *100,ffFixed,15,4); }

      // end;
      edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
        StrToFloat(lbCurs.Caption),
        ffFixed, 15, 2);

      { if lcb6.KeyValue <> null then  //по прайсу
       ed5.Text := FloatToStrF(
        ((StrToFloat(edSum_R.Text)- StrToFloat(ed7.Text)) * ( 1 + StrToFloat(ed5.Text)/100)),ffFixed,15,2)
      else }
      ed5.Text := FloatToStrF(
        (StrToFloat(ed3.Text) - StrToFloat(ed7.Text) - StrToFloat(edSum_R.Text))
        /
        StrToFloat(edSum_R.Text) * 100, ffFixed, 15, 2);
      edDef.Text := FloatToStrF(StrToFloat(ed3.Text) *
        StrToFloat(lbCurs.Caption),
        ffFixed, 15, 4);
    except
    end;
  end;

  if qPL_SH.Transaction.Active then
    qPL_SH.Transaction.CommitRetaining;
  qPL_SH.close;
  qPL_SH.Open;

end;

procedure TfmKOrder.qPL_SHAfterEdit(DataSet: TDataSet);
var
  id_car: integer;
begin
  //qPL_SH.Post;

  qObj_type.close;
  qObj_type.open;
  {if not  (qPL_SH.state  in [dsEDit, dsInsert]) then
  begin

    with qINs1, qIns1.sql do
    begin
      close;
      clear;
      add('select * from DELIVERY_TYPES where id_delivery_type = :id  ');
      parambyname('id').AsInteger := qDelivery_typesID_DELIVERY_TYPE.AsInteger;
      open;
      id_car := fieldbyname('default_car_type').AsInteger;
    end;
    qPL_SH.edit;
    qPL_SHID_CAR_TYPE.AsInteger := id_car;
    qPL_SH.Post;
  end;   }

end;

procedure TfmKOrder.qPL_SHAMOUNTChange(Sender: TField);
var
  id: integer;
begin
  id := qPL_SHID_PLAN_SHIPP.AsInteger;
  if qPL_SH.State in [dsEDit, dsInsert] then
    qPL_SH.Post;
  with qINs1, qINs1.sql do
  begin
    close;
    clear;
    add('select  e.weight');
    add('from estimates e  where e.id_estimate =:id_estimate');
    parambyname('id_estimate').AsInteger := StrToInt(ed6.text);
    open;
  end;
  qPL_SH.Edit;
  qPL_SHWEIGHT.AsFloat
    := qINs1.fieldbyname('WEIGHT').Asfloat * qPL_SHAMOUNT.AsInteger;
  // qPL_SH.Post;
 {  if qPL_SH.Transaction.Active then qPL_SH.Transaction.CommitRetaining;
   qPL_SH.close;
  qPL_SH.open;
  qPL_SH.Locate('id_plan_shipp', id, []);}
end;

procedure TfmKOrder.qPL_SHID_DELIVERY_TYPEChange(Sender: TField);
var
  id: integer;
begin
  with DEL_OBJ_T do
  begin
    close;
    parambyname('id_delivery_type').AsInteger :=
      qPL_SHID_DELIVERY_TYPE.AsInteger;
    open;
    qPL_SH.edit;
    qPL_SHOBJ_T.AsString := DEL_OBJ_T.fieldbyname('name').AsString;
    qPL_SH.Post;
  end;
end;

procedure TfmKOrder.qPL_SHAfterPost(DataSet: TDataSet);
var
  id: integer;
begin

  id := qPL_SHID_PLAN_SHIPP.AsInteger;
  //showmessage(qPL_SH.sql.text);
  if qPL_SH.Transaction.Active then
    qPL_SH.Transaction.CommitRetaining;
  qPL_SH.close;
  qPL_SH.open;
  qPL_SH.Locate('id_plan_shipp', id, []);
end;

procedure TfmKOrder.qPL_SHBeforePost(DataSet: TDataSet);

var
  id: integer;
begin

end;

procedure TfmKOrder.dbg3CellClick(Column: TColumnEh);
var
  id: integer;
begin

  id := qPL_SHID_PLAN_SHIPP.AsInteger;
  if qPL_SH.State in [dsEdit, dsInsert] then
    qPL_SH.post;
  if qPL_SH.Transaction.Active then
    qPL_SH.Transaction.CommitRetaining;
  qPL_SH.close;
  qPL_SH.open;
  qPL_SH.Locate('id_plan_shipp', id, []);
end;

procedure TfmKOrder.dbg2Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if not assigned(fmTr) then
    Application.CreateForm(TfmTr, fmTr);
  if fmTr.ShowModal = mrOK then
  begin
    qOrd_pos.Edit;
    qORD_POSID_PRODUCT.AsInteger := fmTr.dbTr.GetId;
    qOrd_pos.Post;
  end;
end;

procedure TfmKOrder.ed1_pKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lbNom_Name_p.Caption := IntToStr(Length(ed1_p.text));
end;

procedure TfmKOrder.tbDel_pClick(Sender: TObject);
begin
  qIns1.Close;
  qIns1.SQL.Clear;
  qIns1.SQL.Add('delete from project_ord_params o where o.id_order = :id_order ');
  qIns1.SQL.Add('and o.id_object is null and o.id_prod_oper is null ');
  qIns1.ParamByName('id_order').AsString := lb1.Caption;
  qIns1.ExecSQL;
  // lcb2_pChange(Sender);
end;

//end;

procedure TfmKOrder.dbg3_pGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qORD_POSID_ORDER_POS.AsInteger = qPL_SHID_ORDER_POS.AsInteger then
  begin
    Background := clMoneyGreen;
    AFont.Style := [fsBold];
  end;
end;

procedure TfmKOrder.lcb5_pCloseUp(Sender: TObject; Accept: Boolean);
var
  old_rate, factor: Extended;
begin
  old_rate := StrToFloat(lbCurs_p.Caption);
  with qIns1, qIns1.SQL do
  begin
    Close;
    Clear;
    Add('select new_summa,RATE from CURSUM_TO_DEF(1,:ID_CURRENCY,:ON_DATE)');
    ParamByName('ID_CURRENCY').AsInteger := lcb5_p.KeyValue;
    qIns1.ParamByName('ON_DATE').AsDate := dtpDate_Open_p.Value;
    Open;
  end;
  lbCurs_p.Caption := qIns1.FieldByName('rate').AsString;
  //   if old_rate = 1 then factor := 1
  //   else factor := old_rate / qIns1.FieldByName('rate').AsFloat;
  factor := old_rate / qIns1.FieldByName('rate').AsFloat;
  edCast_R_p.Text := FloatToStrF(StrToFloat(edCast_R_p.Text) * factor, ffFixed,
    15, 2);
  edSum_R_p.Text := FloatToStrF(StrToFloat(edSum_R_p.Text) * factor, ffFixed,
    15, 2);
  ed3_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) * factor, ffFixed, 15, 2);
  edCastMen_p.Text := FloatToStrF(StrToFloat(edCastMen_p.Text) * factor,
    ffFixed, 15, 2);
  ed7_p.Text := FloatToStrF(StrToFloat(ed7_p.Text) * factor, ffFixed, 15, 2);
  edDef_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) * factor, ffFixed, 15, 2);
end;

procedure TfmKOrder.dtpDate_Open_pCloseUp(Sender: TObject;
  Accept: Boolean);
begin
  lcb5_pCloseUp(Sender, False);
end;

procedure TfmKOrder.ed7_pKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    try
      ed3_p.Text := edSum_R_p.Text;
      ed5_p.Text := '0';

      ed3_p.Text := FloatToStrF(StrToFloat(edSum_R_p.Text) * (1 +
        StrToFloat(ed5_p.Text) / 100) +
        StrToFloat(ed7_p.Text), ffFixed, 15, 2);

      edDef_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) *
        StrToFloat(lbCurs_p.Caption),
        ffFixed, 15, 2);

      ed5_p.Text := FloatToStrF(
        (StrToFloat(ed3_p.Text) - StrToFloat(ed7_p.Text) -
        StrToFloat(edSum_R_p.Text)) /
        StrToFloat(edSum_R_p.Text) * 100, ffFixed, 15, 2);
      edDef_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) *
        StrToFloat(lbCurs_p.Caption),
        ffFixed, 15, 4);

    except
    end;
  end;
end;

procedure TfmKOrder.ed3_pKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then //%
  begin
    edSum_R_p.Text := ed3_p.Text;
    if edSum_R_p.Text = '0' then
      edSum_R_p.Text := ed3_p.Text;
    edDef_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) *
      StrToFloat(lbCurs_p.Caption),
      ffFixed, 15, 2);
    try
      edSum_R_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) -
        StrToFloat(ed7_p.Text), ffFixed, 15, 2);
      edCastMen_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) / 1,
        ffFixed, 15, 2);
      ed5_p.Text :=
        FloatToStrF(
        (StrToFloat(ed3_p.Text) - StrToFloat(ed7_p.Text) -
        StrToFloat(edSum_R_p.Text)) /
        StrToFloat(edSum_R_p.Text) * 100, ffFixed, 15, 4)

    except
    end;
  end;
end;

procedure TfmKOrder.ed5_pKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    try

      ed3_p.Text := FloatToStrF(StrToFloat(edSum_R_p.Text) * (1 +
        StrToFloat(ed5_p.Text) / 100) +
        StrToFloat(ed7_p.Text), ffFixed, 15, 2);
      edCastMen_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) / 1,
        ffFixed, 15, 2);

      edDef_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) *
        StrToFloat(lbCurs_p.Caption),
        ffFixed, 15, 2);
    except
    end;

  end;
end;

procedure TfmKOrder.SpeedButton10Click(Sender: TObject);
begin
  if kop <> 0 then
  try

    edCastMen_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) / 1,
      ffFixed, 15, 2);
    ed5_p.Text :=
      FloatToStrF(
      (StrToFloat(ed3_p.Text) - StrToFloat(ed7_p.Text) -
      StrToFloat(edSum_R_p.Text)) /
      StrToFloat(edSum_R_p.Text) * 100, ffFixed, 15, 4);

    edDef_p.Text := FloatToStrF(StrToFloat(ed3_p.Text) *
      StrToFloat(lbCurs_p.Caption),
      ffFixed, 15, 4);

  except
  end;
end;

procedure TfmKOrder.SpeedButton13Click(Sender: TObject);
var
  FName: string;
begin
  if od1.Execute then
  begin
    FName := od1.FileName;
    m2_p.Lines.add(FName);
  end;
end;

procedure TfmKOrder.dbg2_pColumns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  s: string;
begin
  if not assigned(fmTr) then
    Application.CreateForm(TfmTr, fmTr);
  if not qORD_POSID_PRODUCT.IsNull then
    fmTr.id_fnd := qORD_POSID_PRODUCT.AsInteger
  else
    fmTr.id_fnd := -1;
  fmTr.id_order := C_ORD;
  with qins1, qins1.sql do
  begin
    if fmTr.ShowModal = mrOK then
    begin
      //  showmessage(qORD_POSNAME.AsString);
      close;
      clear;
      add('select name from items where id_item = :id_item');
      parambyname('id_item').AsInteger := fmTr.dbTr.GetId;
      open;
      s := fieldbyname('name').asstring;

      qOrd_pos.Edit;
      qORD_POSID_PRODUCT.AsInteger := fmTr.dbTr.GetId;
      if qORD_POSNAME.IsNull then
        qORD_POSNAME.asstring := s;
      qORD_POSPRODNAME.AsString := s;
      qOrd_pos.Post;

      //
      close;
      clear;
      add('update PROJECT_ORDS_POS set id_product = :id_product, id_version = :id_version');
      if (qORD_POSNAME.IsNull) or (qORD_POSNAME.AsString = '') then
        add(', name = :name');
      add(', amount = :amount, price = :price');
      add('where ID_ORDER_POS = :ID_ORDER_POS ');
      parambyname('ID_ORDER_POS').AsInteger := qORD_POSID_ORDER_POS.AsInteger;
      parambyname('id_product').AsInteger := fmTr.dbTr.GetId;
      parambyname('id_version').AsInteger := fmTr.qVErID_VERSION.AsInteger;
      parambyname('amount').Asfloat := strtofloat(fmTr.edmedAmount.text);
      parambyname('price').Asfloat := strtofloat(fmTr.edMedPrice.text);
      if qORD_POSNAME.IsNull then
        parambyname('name').AsString := s;
      ExecSQL;
    end;
  end;
end;

procedure TfmKOrder.qPL_SHBeforeOpen(DataSet: TDataSet);
begin
  {if C_ORD_KIND = 1 then
  with qPL_SH, qPL_SH.sql do begin //пока не решен вопрос с доставкой
   Close;
   clear;
   add('select p.*,');
   add('(select d.name from delivery_obj_types d where d.obj_type = p.obj_type) obj_t,');
   add('(select t.name from tdcar_types t where t.id_tdcar_type = p.id_car_type) car_t,');
   add('cast(0 as double precision ) weight_one');
   add('from ORD_PLAN_SHIPP  p');
   add('where p.ID_ORDER = :ID_ORDER and p.plan_type=21');
   add('order by p.D_PLANING');
   //ParamByName('ID_ORDER').AsInteger := f_CliOrds[ind_CliOrd].qOrdersID_ORDER.AsInteger;
   //  ParamByName('ide').AsString := ed6.text;
  // Open;
  end;

  if C_ORD_KIND = 1 then
  with qPL_SH, qPL_SH.sql do begin
    add('select p.*,');
   add('(select d.name from delivery_obj_types d where d.obj_type = p.obj_type) obj_t,');
   add('(select t.name from tdcar_types t where t.id_tdcar_type = p.id_car_type) car_t,');
   add('(select e1.weight from estimates e1 where e1.id_estimate = :ide   ) weight_one');
   add('from ORD_PLAN_SHIPP  p');
   add('where p.ID_ORDER = :ID_ORDER and p.plan_type=21');
   add('order by p.D_PLANING');
  end;   }
end;

procedure TfmKOrder.qORD_POSAfterScroll(DataSet: TDataSet);
begin
  dbg3_p.Refresh;
end;

procedure TfmKOrder.SpeedButton8Click(Sender: TObject);
begin
  if not assigned(fmGPStore) then
    Application.CreateForm(TfmGpStore, fmGPStore);
  fmGpStore.Show;
end;

procedure TfmKOrder.FormActivate(Sender: TObject);
begin
  if fmmain.UF143 then
  begin
    fmAll.HideGridCOl(dbg6, 'PRICE,TOTAL,COST,COST0,nTotal_Def', false);
    fmAll.HideGridCOl(dbg2, 'PRICEA,SUMPRICE', false);
    fmAll.HideGridCOl(dbg5, 'PRICE,TOTAL,nTotal_def', false);
    fmAll.HideGridCOl(dbg7,
      'PRICE_DELIVERY,PRICE_TOOLS,PROFIT,DOP_PRICE,TOTAL_SUM,SUM_PROC,TOTAL_SUM_AL,SUM_OPER,SUM_MAT,SUM_OPER_PROC,SUM_MAT_PROC,SUM_PROC_ONE,nSUM_TOTAL_SALE,nSUM_TOTAL_SALE_ONE',
      false);
    fmAll.HideGridCOl(dbg10, 'PRICE,PRICE0,TOTAL', false);
    fmAll.HideGridCOl(dbg11, 'PRICE,PRICE0,TOTAL', false);
    fmAll.HideGridCOl(dbg12, 'PRICE,TOTAL', false);
    fmAll.HideGridCOl(dbg9, 'PRICE,TOTAL,COST,COST0', false);
    fmAll.HideGridCOl(dbg8, 'PRICE,TOTAL', false);

    // GroupBox1.visible := false;
  end;
end;

procedure TfmKOrder.dbgOrdLinksDblClick(Sender: TObject);
var flag : byte;
begin
if qOrdLinks.IsEmpty then exit;

 flag := 0;
 if fmAll.GetOrdStatus(qOrdLinksID_ORDER.AsInteger) >= 10 then flag := 1;
fmAll.ExploreDir(qOrdLinksPATH.AsString, 1,flag, qOrdLinksID_ORDER.AsInteger,
  dmIS.qIM, 0, 0);

end;

procedure TfmKOrder.sbRfrLinkClick(Sender: TObject);
begin
  qOrdLinks.Close;
  qOrdLinks.open;
end;

procedure TfmKOrder.CrJpg(id_order : integer);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    close;
    clear;

    add('select coalesce( oo.status, 0 ) stat from project_ords oo');
    add('where oo.id_order = :id_order');
    parambyname('id_order').AsInteger := id_order;
    open;
    if FieldByName('stat').AsInteger <> 0 then exit;
    close;
    clear;            

    add('update project_ords oo');
    add('set oo.status = 3');
    add('where oo.id_order = :id_order');
    parambyname('id_order').AsInteger := id_order;

    try
      ExecSQL;
      if Transaction.Active then Transaction.Commit;
      MsgInfo('Запрос на создание JPG отправлен', 'Информация');
    Except
      if Transaction.Active then Transaction.Rollback;
      MsgError('Ошибка записи статуса', 'Ошибка');
    end;
  end;
  Order2XML(dmIS.dbIS, id_order);
end;

procedure TfmKOrder.sbConfFileClick(Sender: TObject);
var id : integer;
begin

  if qOrdLinks.IsEmpty then
  begin
    MsgError('Нет ни одной ссылки','Проверка данных');
    exit;
  end;
  bb1Click(Sender); //сохранить карточку
  if (C_ORD = -1) or (C_ORD = 0) then id := id_new else id := c_ord;
  CrJpg(id);
end;

procedure TfmKOrder.lcb7CloseUp(Sender: TObject; Accept: Boolean);
begin
 if (lcb7.KeyValue = 8) then // Внутренние заказы
 begin
  if not Assigned(fmOrder_Center) then Application.CreateForm(TfmOrder_Center, fmOrder_Center);
  fmOrder_Center.id_f := id_Form;
  fmOrder_Center.Show;
 end else if Assigned(fmOrder_Center) then fmOrder_Center.Close;
end;

end.
