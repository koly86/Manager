unit unCliOrds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ComCtrls, ExtCtrls, ToolWin, DB,
  IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGridEh, DBCtrls, Menus,
  DBLookupEh, Mask, DBCtrlsEh, Buttons, DBGrids, unKOrder, DateUtils,
  TeEngine, Series, GanttCh, TeeProcs, Chart, DbChart, xlcClasses,
  xlEngine, xlReport, shellapi, TeeShape, IBUpdateSQL, StrUtils, DBSTrees,
  OleCtnrs, IBExtract, unParamCH, frxClass, frxDBSet, uXML_parser,
  ShellCtrls, frxExportPDF, IBSQLMonitor;

type
  TfmCliOrds = class(TMainForm)
    qClients: TIBQuery;
    qOrders: TIBQuery;
    dsClients: TDataSource;
    dsOrders: TDataSource;
    qClientsID_ITEM: TIntegerField;
    qClientsNAME: TIBStringField;
    qClientsID_C: TIntegerField;
    qClientsID_AX: TIBStringField;
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
    qOrdersNPTYPE: TIBStringField;
    qOrdersNOPERTYPE: TIBStringField;
    qOrdersNPROD: TIBStringField;
    qOrdersNCURR: TIBStringField;
    qOrdersNSTATUS: TIBStringField;
    qOrdersNPROJ: TIBStringField;
    qOrdersFIO: TIBStringField;
    qOrdersnStat: TStringField;
    qOrdersID_ESTIMATE: TIntegerField;
    qOrdersID_VERSION: TIntegerField;
    qOrdersID_ESTIMATE_KD: TIntegerField;
    qOrdersID_BATCH: TIntegerField;
    qOrdersID_VERSION_PEO: TIntegerField;
    qOrdersfiLL: TStringField;
    qOrdersIS_CHARGE: TIntegerField;
    qDogovor: TIBQuery;
    qDogovorID_DOGOVOR: TIntegerField;
    qDogovorINN: TIBStringField;
    qDogovorDOG_NUMBER: TIBStringField;
    qDogovorDOG_DATE_IN: TDateField;
    qDogovorDOG_DATE_OUT: TDateField;
    qDogovorID_AGENT: TIntegerField;
    qDogovorID_CURRENCY: TIntegerField;
    qDogovorDOG_NUMBER_: TIBStringField;
    qDogovorVID: TIntegerField;
    qDogovorKOL_DAY: TIntegerField;
    qDogovorID_TYPEOPL: TIntegerField;
    qDogovorPROC: TFloatField;
    qDogovorDOG_OBJ: TMemoField;
    qDogovorREM: TMemoField;
    qDogovorPIOPLE: TMemoField;
    qDogovorEMAIL: TMemoField;
    qDogovorSTATUS: TIBStringField;
    qDogovorID_DOGOVOR_TYPES: TIntegerField;
    qDogovorID_C: TIntegerField;
    qDogovorNAME_TYPEOPL: TIBStringField;
    qDogovorNAME_CUR: TIBStringField;
    qDogovorNAME_DOGTYPE: TIBStringField;
    qDogovornVid: TStringField;
    dsDogovor: TDataSource;
    qUrAgent: TIBQuery;
    dsUrAgent: TDataSource;
    qUrAgentID_AGENT: TIntegerField;
    qUrAgentAGENT: TIBStringField;
    qUrAgentINN: TIBStringField;
    qUrAgentDEF_ACCOUNT: TIntegerField;
    qUrAgentID_ACCOUNTS: TIntegerField;
    qUrAgentRCH: TIBStringField;
    qUrAgentBIK: TIBStringField;
    qUrAgentNAME_BIK: TIBStringField;
    qUrAgentKORCH: TIBStringField;
    qUrAgentFILIAL: TIBStringField;
    qUrAgentAGENT_UR: TIBStringField;
    qUrAgentADRES1: TIBStringField;
    qUrAgentADRES2: TIBStringField;
    qUrAgentFIOFIRM: TIBStringField;
    qUrAgentFIOBYX: TIBStringField;
    qUrAgentTEL: TIBStringField;
    qUrAgentDOLFIRM: TIBStringField;
    qUrAgentDOLBYX: TIBStringField;
    qUrAgentOKOHX: TIBStringField;
    qUrAgentOKPO: TIBStringField;
    qUrAgentKPP: TIBStringField;
    qUrAgentOGRN: TIBStringField;
    qUrAgentOKVED: TIBStringField;
    qUrAgentOKUD: TIBStringField;
    qOrdersIS_COL: TIntegerField;
    qOrdersDOG_NUMBER: TIBStringField;
    qOrdersDOG_NUMBER_: TIBStringField;
    qOrdersDOG_DATE_IN: TDateField;
    qOrdersID_PRICE_POS: TIntegerField;
    qOrder_Op_Type: TIBQuery;
    qEst_Op_Type: TIBQuery;
    qEst_Op_TypeID_ESTIMATE: TIntegerField;
    qEst_Op_TypeID_OPER_TYPE: TIntegerField;
    qEst_Op_TypeNAME: TIBStringField;
    dsEst_Op_Type: TDataSource;
    qEst_Op_Type_Oper: TIBQuery;
    qEst_Op_Type_TMC: TIBQuery;
    dsEst_Op_Type_Oper: TDataSource;
    dsEst_Op_Type_TMC: TDataSource;
    qEst_Op_Type_TMCID_ESTIMATE: TIntegerField;
    qEst_Op_Type_TMCID_OPER_TYPE: TIntegerField;
    qEst_Op_Type_TMCNAME: TIBStringField;
    qEst_Op_Type_TMCID_ITEM: TIntegerField;
    qEst_Op_Type_TMCNAME_TMC: TIBStringField;
    qEst_Op_Type_TMCNAME_UNIT: TIBStringField;
    qEst_Op_Type_TMCAMOUNT: TFloatField;
    qEst_Op_Type_TMCTOTAL: TFloatField;
    qEst_Op_Type_OperID_ESTIMATE: TIntegerField;
    qEst_Op_Type_OperNAME: TIBStringField;
    qEst_Op_Type_OperUNAME: TIBStringField;
    qEst_Op_Type_OperID_OPER_TYPE: TIntegerField;
    qEst_Op_Type_OperOTNAME: TIBStringField;
    qEst_Op_Type_OperFULL_AMOUNT: TFloatField;
    qEst_Op_Type_OperAMOUNT_TIME: TFloatField;
    qEst_Op_Type_OperTOTAL: TFloatField;
    qEst_Op_Type_OpernAmount_Time: TStringField;
    qIns: TIBQuery;
    qOrder_Op_TypeFACTOR: TFloatField;
    qOrder_Op_TypeID_OPER_TYPE: TIntegerField;
    qOrder_Op_TypeNAME: TIBStringField;
    dsOrder_Op_Type: TDataSource;
    qOrder_Op_Type_TMC: TIBQuery;
    qOrder_Op_Type_Oper: TIBQuery;
    dsOrder_Op_Type_TMC: TDataSource;
    dsOrder_Op_Type_Oper: TDataSource;
    qOrder_Op_Type_OperID_ESTIMATE: TIntegerField;
    qOrder_Op_Type_OperNAME: TIBStringField;
    qOrder_Op_Type_OperUNAME: TIBStringField;
    qOrder_Op_Type_OperID_OPER_TYPE: TIntegerField;
    qOrder_Op_Type_OperOTNAME: TIBStringField;
    qOrder_Op_Type_OperFULL_AMOUNT: TFloatField;
    qOrder_Op_Type_OperAMOUNT_TIME: TFloatField;
    qOrder_Op_Type_OperTOTAL: TFloatField;
    qOrder_Op_Type_OpernAmount_Time: TStringField;
    qOrder_Op_Type_TMCID_ESTIMATE: TIntegerField;
    qOrder_Op_Type_TMCID_OPER_TYPE: TIntegerField;
    qOrder_Op_Type_TMCNAME: TIBStringField;
    qOrder_Op_Type_TMCID_ITEM: TIntegerField;
    qOrder_Op_Type_TMCNAME_TMC: TIBStringField;
    qOrder_Op_Type_TMCNAME_UNIT: TIBStringField;
    qOrder_Op_Type_TMCAMOUNT: TFloatField;
    qOrder_Op_Type_TMCTOTAL: TFloatField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qClientsCP: TIntegerField;
    qPrj: TIBQuery;
    qPrjID_PROJECT: TIntegerField;
    qPrjBRIEF: TIBStringField;
    qPrjID_MANAGER: TIntegerField;
    qPrjN_ORDER: TIBStringField;
    qPrjID_AGENT: TIntegerField;
    qPrjID_BRAND: TIntegerField;
    qPrjNAME: TIBStringField;
    qPrjSTATUS: TIntegerField;
    qPrjDATA: TDateField;
    qPrjID_EDIT: TIntegerField;
    qPrjID_PROJ_TYPE: TIntegerField;
    qPrjD_CLOSE: TDateTimeField;
    qPrjID_CLOSE: TIntegerField;
    qPrjID_DESIGNER: TIntegerField;
    qPrjD_EDIT: TDateTimeField;
    qPrjD_FIX: TDateTimeField;
    qPrjID_FIX: TIntegerField;
    qPrjSUMMA: TFloatField;
    qPrjEXPENSES: TFloatField;
    qPrjCURRENCY: TIntegerField;
    qPrjDATAEND: TDateField;
    qPrjD_DACCEPT: TDateTimeField;
    qPrjID_DACCEPTOR: TIntegerField;
    qPrjAMOUNT: TFloatField;
    qPrjDEF_SUM: TFloatField;
    qPrjBNAME: TIBStringField;
    qPrjMANAGER: TIBStringField;
    qPrjDESIGNER: TIBStringField;
    qPrjNCURR: TIBStringField;
    qPrjnType: TStringField;
    qPrjfiLL: TStringField;
    qPrjFIO_FIX: TIBStringField;
    dsPrj: TDataSource;
    qPrjDACCEPTOR: TIBStringField;
    qEstReq: TIBQuery;
    qEstReqID_REQUEST: TIntegerField;
    qEstReqID_PROJECT: TIntegerField;
    qEstReqSTATUS: TIntegerField;
    qEstReqDESCRIPTION: TMemoField;
    qEstReqID_DOC: TIntegerField;
    qEstReqD_MANAGER: TDateTimeField;
    qEstReqID_MANAGER: TIntegerField;
    qEstReqID_ESTIMATE: TIntegerField;
    qEstReqID_CONSTR: TIntegerField;
    qEstReqID_ESTIMATOR: TIntegerField;
    qEstReqD_GET: TDateTimeField;
    qEstReqD_FIX: TDateTimeField;
    qEstReqMANAGER: TIBStringField;
    qEstReqCONSTR: TIBStringField;
    qEstReqESTIMATOR: TIBStringField;
    qEstReqD_CREATE: TDateTimeField;
    qEstReqID_CREATOR: TIntegerField;
    qEstReqCREATOR: TIBStringField;
    qEstReqGraph: TStringField;
    qEstReqFill: TStringField;
    dsEstReq: TDataSource;
    qEstReqID_AGENT: TIntegerField;
    od1: TOpenDialog;
    qOper: TIBQuery;
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
    qMat: TIBQuery;
    qMatID_SPOS: TIntegerField;
    qMatID_ESTIMATE: TIntegerField;
    qMatID_OBJ: TIntegerField;
    qMatNAME: TIBStringField;
    qMatUNAME: TIBStringField;
    qMatOBJ_KIND: TIntegerField;
    qMatAMOUNT: TFloatField;
    qMatPRICE: TFloatField;
    qMatTOTAL: TFloatField;
    dsOper: TDataSource;
    dsMat: TDataSource;
    qOrds: TIBQuery;
    dsOrds: TDataSource;
    qOrdsID_ORDER: TIntegerField;
    qOrdsN_ORDER: TIBStringField;
    qOrdsAMOUNT: TIBBCDField;
    qOrdsNAME: TIBStringField;
    qEstReqREM: TBlobField;
    qAgent: TIBQuery;
    qAgentID_ITEM: TIntegerField;
    qAgentNAME: TIBStringField;
    dsAgent: TDataSource;
    dsProj: TDataSource;
    qProj: TIBQuery;
    qProjID_PROJECT: TIntegerField;
    qProjID_AGENT: TIntegerField;
    qProjNAME: TIBStringField;
    qMen: TIBQuery;
    qMenFIO: TIBStringField;
    qMenID_P: TIntegerField;
    dsMen: TDataSource;
    qBrand: TIBQuery;
    qType_Proj: TIBQuery;
    dsBrand: TDataSource;
    dsType_Proj: TDataSource;
    qBrandID_BRAND: TIntegerField;
    qBrandNAME: TIBStringField;
    qBrandID_C: TIntegerField;
    qType_ProjID_PROJ_TYPE: TIntegerField;
    qType_ProjNAME: TIBStringField;
    qType_ProjID_C: TIntegerField;
    qEst_Limit_Bill: TIBQuery;
    qEst_Limit_BillNAME_OBJ: TIBStringField;
    qEst_Limit_BillID_OBJECT: TIntegerField;
    qEst_Limit_BillAMOUNT_EST: TFloatField;
    qEst_Limit_BillTOTAL_EST: TFloatField;
    qEst_Limit_BillAMOUNT_LIMIT: TFloatField;
    qEst_Limit_BillTOTAL_LIMIT: TFloatField;
    qEst_Limit_BillAMOUNT_BILL: TFloatField;
    qEst_Limit_BillTOTAL_BILL: TFloatField;
    qEst_Limit_BillUNIT: TIBStringField;
    qEst_Limit_BillF_AMOUNT: TFloatField;
    qEst_Limit_BillID_ESTIMATE: TIntegerField;
    qEst_Limit_BillPRICE_EST: TFloatField;
    qEst_Limit_BillPRICE_LIMIT: TFloatField;
    qEst_Limit_BillPRICE_BILL: TFloatField;
    qEst_Limit_BillD_CONF: TDateField;
    qEst_Limit_BillAMOUNT_KD: TFloatField;
    qEst_Limit_BillTOTAL_KD: TFloatField;
    qEst_Limit_BillPRICE_KD: TFloatField;
    qEst_Limit_BillID_ESTIMATE_KD: TIntegerField;
    qEst_Limit_BillID_VERSION: TIntegerField;
    qEst_Limit_BillAMOUNT_TRAF: TFloatField;
    qEst_Limit_BillTOTAL_TRAF: TFloatField;
    qEst_Limit_BillPRICE_TRAF: TFloatField;
    dsEst_Limit_Bill: TDataSource;
    pnOrder: TPanel;
    Label17: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    SpeedButton1: TSpeedButton;
    lbOrder: TLabel;
    lcbAg: TDBLookupComboboxEh;
    lcbProj: TDBLookupComboboxEh;
    lcbMen: TDBLookupComboboxEh;
    gbProj: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    edName: TEdit;
    lcbType_Proj: TDBLookupComboboxEh;
    lcbBrend: TDBLookupComboboxEh;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbOrder: TCheckBox;
    qOrdersID_CHIEF: TIntegerField;
    qOrdersFIO_CHIEF: TIBStringField;
    qExp: TIBQuery;
    dsExp: TDataSource;
    qExpID_EXPOS: TIntegerField;
    qExpID_EXPENCE: TIntegerField;
    qExpAMOUNT: TFloatField;
    qExpTOTAL_SUM: TFloatField;
    qExpPROC_NDS: TFloatField;
    qExpDEF_SUM: TFloatField;
    qExpRATE: TFloatField;
    qExpID_UNIT: TIntegerField;
    qExpID_SERVICE: TIntegerField;
    qExpUNAME: TIBStringField;
    qExpNAME: TIBStringField;
    qExpEXPENCE_DATE: TDateField;
    qExpEXPENCE_NUMBER: TIBStringField;
    qExpID_CURRENCY: TIntegerField;
    qExpNCURR: TIBStringField;
    qExpID_AGENT: TIntegerField;
    qExpN_ID_AGENT: TIBStringField;
    qExpDOC_NUMBER: TIBStringField;
    qExpDESCRIPTION: TBlobField;
    qExpCOMMENT: TBlobField;
    qEstReqNAME_PROJ: TIBStringField;
    qOrdersPATH: TBlobField;
    qOrdersFULL_NAME: TMemoField;
    Label11: TLabel;
    edKolCopy: TEdit;
    N3: TMenuItem;
    Excel1: TMenuItem;
    qInsT: TIBQuery;
    qOrder_Op_Type_TMCCOMM_AMOUNT: TFloatField;
    qOrder_Op_Type_TMCAM: TFloatField;
    qEst_Op_Type_TMCCOMM_AMOUNT: TFloatField;
    qEst_Op_Type_TMCAM: TFloatField;
    qEst_Op_Type_TMCTOTAL_ALL: TFloatField;
    qEst_Op_TypeFACTOR: TFloatField;
    qEst_Op_TypeTOTAL: TFloatField;
    qOrder_Op_TypeID_ESTIMATE: TIntegerField;
    qOrder_Op_TypeTOTAL: TFloatField;
    qOrdersNAME_PRODUCT: TIBStringField;
    qEst_Limit_BillCOMM_AMOUNT_L: TFloatField;
    qEst_Limit_BillCOMM_AMOUNT_BILL: TFloatField;
    qEst_Limit_BillCOMM_AMOUNT_PEO: TFloatField;
    qEst_Limit_BillCOMM_AMOUNT_KD: TFloatField;
    qEst_Limit_BillCOMM_AMOUNT_TRAFF: TFloatField;
    qOrdersNAME_ORDTYPE: TIBStringField;
    qOrdersLID: TIntegerField;
    Label45: TLabel;
    lcbOrd_Type: TDBLookupComboboxEh;
    qOrd_Type: TIBQuery;
    dsOrd_Type: TDataSource;
    qEstReqID_ORDER: TIntegerField;
    qEstReqNAME: TIBStringField;
    qEstReqN_ORDER: TIBStringField;
    qOrd_TypeID_TYPE: TIntegerField;
    qOrd_TypeNAME: TIBStringField;
    qOrd_TypeMARK: TIBStringField;
    qOrdersORD_TYPE: TIntegerField;
    q_Men: TIBQuery;
    ds_Men: TDataSource;
    q_MenFIO: TIBStringField;
    q_MenID_P: TIntegerField;
    pcAll: TPageControl;
    tsAgent: TTabSheet;
    tsOrder: TTabSheet;
    Splitter2: TSplitter;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton8: TToolButton;
    ToolButton2: TToolButton;
    tbMen: TToolButton;
    tbAll: TToolButton;
    Label46: TLabel;
    lcb_Men: TDBLookupComboboxEh;
    Label3: TLabel;
    ed1: TEdit;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    Panel1: TPanel;
    Splitter3: TSplitter;
    GroupBox1: TGroupBox;
    dbg3: TDBGridEh;
    GroupBox2: TGroupBox;
    dbg4: TDBGridEh;
    pc: TPageControl;
    pcProj: TPageControl;
    tsProj1: TTabSheet;
    Panel4: TPanel;
    tsProj2: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText6: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    Label19: TLabel;
    DBText9: TDBText;
    Label24: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label25: TLabel;
    Bevel2: TBevel;
    Label26: TLabel;
    DBText13: TDBText;
    Label18: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    Label28: TLabel;
    DBText17: TDBText;
    DBText14: TDBText;
    lbDiz: TLabel;
    bbDiz: TBitBtn;
    lcbDiz: TDBLookupComboBox;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    sb1: TSpeedButton;
    sb2: TSpeedButton;
    Label21: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    lbNew_Proj: TLabel;
    p4: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    ed2: TEdit;
    dtp1: TDBDateTimeEditEh;
    ed3: TEdit;
    dtp2: TDBDateTimeEditEh;
    ed4: TEdit;
    lcb6: TDBLookupComboboxEh;
    ed5: TEdit;
    lcb3: TDBLookupComboboxEh;
    lcb2: TDBLookupComboboxEh;
    lcb4: TDBLookupComboboxEh;
    tsProj3: TTabSheet;
    Splitter12: TSplitter;
    ToolBar3: TToolBar;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    tbNew_Reg: TToolButton;
    tbz2: TToolButton;
    ToolButton17: TToolButton;
    ToolButton25: TToolButton;
    ToolButton20: TToolButton;
    tbz4: TToolButton;
    ToolButton22: TToolButton;
    tbz5: TToolButton;
    ToolButton24: TToolButton;
    tbz8: TToolButton;
    tbz9: TToolButton;
    ToolButton18: TToolButton;
    tbz3: TToolButton;
    dbg15: TDBGridEh;
    dbg19: TDBGridEh;
    tsProj4: TTabSheet;
    Splitter13: TSplitter;
    GroupBox3: TGroupBox;
    Splitter11: TSplitter;
    dbg16: TDBGridEh;
    dbg17: TDBGridEh;
    gbNewEst: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    lbSmeta: TLabel;
    lb: TLabel;
    Label43: TLabel;
    SpeedButton2: TSpeedButton;
    Label42: TLabel;
    edRas1: TEdit;
    edKol1: TEdit;
    edPr1: TEdit;
    edTotal1: TEdit;
    pb: TProgressBar;
    BitBtn4: TBitBtn;
    edTitle1: TEdit;
    gbEst_ord: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    edRas: TEdit;
    edKol: TEdit;
    edPr: TEdit;
    edTotal: TEdit;
    BitBtn3: TBitBtn;
    tsOrd: TTabSheet;
    p1: TPanel;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    tb0: TToolButton;
    Label1: TLabel;
    dtpIn: TDBDateTimeEditEh;
    Label44: TLabel;
    dtpOut: TDBDateTimeEditEh;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton30: TToolButton;
    ToolButton29: TToolButton;
    ToolButton19: TToolButton;
    ToolButton28: TToolButton;
    ToolButton21: TToolButton;
    ToolButton9: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton23: TToolButton;
    cbPEO: TCheckBox;
    cbKD: TCheckBox;
    ToolButton3: TToolButton;
    tb3: TToolButton;
    Panel5: TPanel;
    dbg2: TDBGridEh;
    tsEvent: TTabSheet;
    Splitter4: TSplitter;
    p3: TPanel;
    dbg6: TDBGridEh;
    dbn3: TDBNavigator;
    Panel2: TPanel;
    dbg5: TDBGridEh;
    tsEst: TTabSheet;
    Splitter7: TSplitter;
    gbEst: TGroupBox;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    dbg7: TDBGridEh;
    dbg8: TDBGridEh;
    dbg9: TDBGridEh;
    gbFact: TGroupBox;
    Splitter8: TSplitter;
    Splitter9: TSplitter;
    dbg10: TDBGridEh;
    dbg11: TDBGridEh;
    dbg12: TDBGridEh;
    tsE_L_B: TTabSheet;
    dbg18: TDBGridEh;
    tsExp: TTabSheet;
    dbg20: TDBGridEh;
    Splitter14: TSplitter;
    qOrder_All: TIBQuery;
    ToolBar4: TToolBar;
    ToolButton16: TToolButton;
    Label47: TLabel;
    lcb_Men1: TDBLookupComboboxEh;
    q_Men1: TIBQuery;
    q_Men1FIO: TIBStringField;
    q_Men1ID_P: TIntegerField;
    ds_Men1: TDataSource;
    dbg22: TDBGridEh;
    dsOrder_All: TDataSource;
    qOrder_AllID_ORDER: TIntegerField;
    qOrder_AllN_ORDER: TIBStringField;
    qOrder_AllNAME: TIBStringField;
    qOrder_AllAMOUNT: TIBBCDField;
    qOrder_AllPRICE: TIBBCDField;
    qOrder_AllPRICEA: TIBBCDField;
    qOrder_AllID_CURRENCY: TIntegerField;
    qOrder_AllDEF_SUM: TFloatField;
    qOrder_AllD_OPEN: TDateTimeField;
    qOrder_AllD_READY: TDateField;
    qOrder_AllD_CLOSE: TDateTimeField;
    qOrder_AllD_REJECT: TDateTimeField;
    qOrder_AllMARGIN: TFloatField;
    qOrder_AllDISCOUNT: TFloatField;
    qOrder_AllMANAGER_MARGIN: TFloatField;
    qOrder_AllDELIVERY_SUM: TFloatField;
    qOrder_AllPLAN_COST_PRICE: TFloatField;
    qOrder_AllID_CPTYPE: TIntegerField;
    qOrder_AllSTATUS: TIntegerField;
    qOrder_AllID_PRODUCT: TIntegerField;
    qOrder_AllID_PROJECT: TIntegerField;
    qOrder_AllID_C: TIntegerField;
    qOrder_AllID_AX: TIBStringField;
    qOrder_AllID_DOGOVOR: TIntegerField;
    qOrder_AllREM: TMemoField;
    qOrder_AllIS_CHARGE: TIntegerField;
    qOrder_AllIS_COL: TIntegerField;
    qOrder_AllID_PRICE_POS: TIntegerField;
    qOrder_AllID_ESTIMATE: TIntegerField;
    qOrder_AllID_VERSION_PEO: TIntegerField;
    qOrder_AllID_VERSION: TIntegerField;
    qOrder_AllID_ESTIMATE_KD: TIntegerField;
    qOrder_AllID_BATCH: TIntegerField;
    qOrder_AllNPTYPE: TIBStringField;
    qOrder_AllNOPERTYPE: TIBStringField;
    qOrder_AllNPROD: TIBStringField;
    qOrder_AllNCURR: TIBStringField;
    qOrder_AllNSTATUS: TIBStringField;
    qOrder_AllNPROJ: TIBStringField;
    qOrder_AllFIO: TIBStringField;
    qOrder_AllDOG_NUMBER: TIBStringField;
    qOrder_AllDOG_NUMBER_: TIBStringField;
    qOrder_AllDOG_DATE_IN: TDateField;
    qOrder_AllID_CHIEF: TIntegerField;
    qOrder_AllFIO_CHIEF: TIBStringField;
    qOrder_AllPATH: TBlobField;
    qOrder_AllFULL_NAME: TMemoField;
    qOrder_AllNAME_PRODUCT: TIBStringField;
    qOrder_AllNAME_ORDTYPE: TIBStringField;
    qOrder_AllLID: TIntegerField;
    qOrder_AllORD_TYPE: TIntegerField;
    ToolButton31: TToolButton;
    qOrder_AllID_CPROD: TIntegerField;
    qOrder_AllID_OPER_TYPE: TIntegerField;
    qOrder_AllD_FIX: TDateTimeField;
    qOrder_AllID_FIX: TIntegerField;
    dtpOut1: TDBDateTimeEditEh;
    dtpIn1: TDBDateTimeEditEh;
    Splitter1: TSplitter;
    Panel7: TPanel;
    dbg23: TDBGridEh;
    qOrd_S: TIBQuery;
    qOrd_SID_ORD_EVENT: TIntegerField;
    qOrd_SNAME_EVENT: TIBStringField;
    qOrd_SD_PLAN: TDateTimeField;
    qOrd_SID_PLAN: TIntegerField;
    qOrd_SFIO_PLAN: TIBStringField;
    qOrd_SD_FACT: TDateTimeField;
    qOrd_SID_FACT: TIntegerField;
    qOrd_SFIO_FACT: TIBStringField;
    dsOrd_S: TDataSource;
    qOrd_PF: TIBQuery;
    qOrd_PFC_D: TDateField;
    qOrd_PFPLAN_SHIPP: TFloatField;
    qOrd_PFPRODUCED: TFloatField;
    qOrd_PFSHIP: TFloatField;
    qOrd_PFRECIEV: TFloatField;
    qOrd_PFPROD_PLAN: TFloatField;
    dsOrd_PF: TDataSource;
    Splitter15: TSplitter;
    dbg24: TDBGridEh;
    Label48: TLabel;
    edFind: TEdit;
    Splitter16: TSplitter;
    GroupBox4: TGroupBox;
    qOrd_Lid: TIBQuery;
    dsOrd_Lid: TDataSource;
    qOrd_LidID_ORDER: TIntegerField;
    qOrd_LidNAME: TIBStringField;
    qOrd_LidAMOUNT: TIBBCDField;
    qOrd_LidN_ORDER: TIBStringField;
    qOrd_LidSTATUS: TIntegerField;
    qOrd_LidD_OPEN: TDateTimeField;
    qOrd_LidD_CLOSE: TDateTimeField;
    qOrd_LidD_REJECT: TDateTimeField;
    qOrd_LidPRODUSED: TFloatField;
    qOrd_LidRECEIVE: TFloatField;
    qOrd_LidSHIP: TFloatField;
    qOrd_LidORD_TYPE: TIntegerField;
    qOrd_LidDEF_SUM: TFloatField;
    qOrd_LidDEF_DELIVERY: TFloatField;
    qOrd_LidMANAGER_MARGIN: TFloatField;
    qOrd_LidPLAN_COST_PRICE: TFloatField;
    qOrd_LidLID: TIntegerField;
    qOrd_LidNAME_ORD: TIBStringField;
    dbg25: TDBGridEh;
    Label49: TLabel;
    lcbOrder: TDBLookupComboboxEh;
    edOrd: TEdit;
    qOrd: TIBQuery;
    qOrdID_ORDER: TIntegerField;
    qOrdNAME: TIBStringField;
    qOrdN_ORDER: TIBStringField;
    qOrdNM: TIBStringField;
    dsOrd: TDataSource;
    qOrd_TypePREFIX: TIBStringField;
    qOrd_TypeIS_ORDER: TIBStringField;
    ts_ord: TTabSheet;
    dbg26: TDBGridEh;
    qOrder_Lid: TIBQuery;
    qOrder_LidID_ORDER: TIntegerField;
    qOrder_LidNAME: TIBStringField;
    qOrder_LidAMOUNT: TIBBCDField;
    qOrder_LidN_ORDER: TIBStringField;
    qOrder_LidSTATUS: TIntegerField;
    qOrder_LidD_OPEN: TDateTimeField;
    qOrder_LidD_CLOSE: TDateTimeField;
    qOrder_LidD_REJECT: TDateTimeField;
    qOrder_LidPRODUSED: TFloatField;
    qOrder_LidRECEIVE: TFloatField;
    qOrder_LidSHIP: TFloatField;
    qOrder_LidORD_TYPE: TIntegerField;
    qOrder_LidDEF_SUM: TFloatField;
    qOrder_LidDEF_DELIVERY: TFloatField;
    qOrder_LidMANAGER_MARGIN: TFloatField;
    qOrder_LidPLAN_COST_PRICE: TFloatField;
    qOrder_LidLID: TIntegerField;
    qOrder_LidNAME_ORD: TIBStringField;
    qOrder_LidTOTAL_SUM_PEO: TFloatField;
    qOrder_LidTOTAL_SUM_KD: TFloatField;
    dsOrder_Lid: TDataSource;
    qOrd_LidTOTAL_SUM_PEO: TFloatField;
    qOrd_LidTOTAL_SUM_KD: TFloatField;
    qOrder_Op_Type_TMCTOTAL_ALL: TFloatField;
    ToolBar5: TToolBar;
    ToolButton32: TToolButton;
    Label50: TLabel;
    edOrd_New: TEdit;
    lcbOrd: TDBLookupComboboxEh;
    qOrd_New: TIBQuery;
    cbOrd: TCheckBox;
    qOrd_NewID_ORDER: TIntegerField;
    qOrd_NewNAME: TIBStringField;
    qOrd_NewN_ORDER: TIBStringField;
    qOrd_NewNM: TIBStringField;
    dsOrd_New: TDataSource;
    qOrd_NewFIO: TIBStringField;
    qOrd_NewDEF_SUM: TFloatField;
    ToolButton33: TToolButton;
    qOrder_LidN_ORDER_LID: TIBStringField;
    qOrd_LidN_ORDER_LID: TIBStringField;
    tsWork: TTabSheet;
    qOrdWork: TIBQuery;
    qOrdWorkID_AREA: TIntegerField;
    qOrdWorkNAREA: TIBStringField;
    qOrdWorkID_OPERATION: TIntegerField;
    qOrdWorkNAME: TIBStringField;
    qOrdWorkUNAME: TIBStringField;
    qOrdWorkESTIMATE_AMOUNT: TFloatField;
    qOrdWorkESTIMATE_SUM: TFloatField;
    qOrdWorkESTIMATE_PRICE: TFloatField;
    qOrdWorkKD_AMOUNT: TFloatField;
    qOrdWorkKD_SUM: TFloatField;
    qOrdWorkKD_PRICE: TFloatField;
    qOrdWorkTRAF_AMOUNT: TFloatField;
    qOrdWorkTRAF_SUM: TFloatField;
    qOrdWorkTRAF_PRICE: TFloatField;
    qOrdWorkFACT_AMOUNT: TFloatField;
    qOrdWorkFACT_SUM: TFloatField;
    qOrdWorkFACT_PRICE: TFloatField;
    dbg27: TDBGridEh;
    dsOrdWork: TDataSource;
    qOrdWorkESTIMATE_AMOUNT_TIME: TFloatField;
    qOrdWorkKD_AMOUNT_TIME: TFloatField;
    qOrdWorkTRAF_AMOUNT_TIME: TFloatField;
    qOrdWorkFACT_AMOUNT_TIME: TFloatField;
    qOrdWorkESTIMATE_AM_TIME: TFloatField;
    qOrdWorkKD_AM_TIME: TFloatField;
    qOrdWorknE_AM: TStringField;
    qOrdWorknKD_Am: TStringField;
    qOrdWorknTR_AM: TStringField;
    qOrdWorknF_AM: TStringField;
    qOrder_Mat: TIBQuery;
    qOrder_MatID_OBJECT: TIntegerField;
    qOrder_MatNAME: TIBStringField;
    qOrder_MatUNAME: TIBStringField;
    qOrder_MatLIMIT_AMOUNT: TFloatField;
    qOrder_MatLIMIT_SUM: TFloatField;
    qOrder_MatLIMIT_PRICE: TFloatField;
    qOrder_MatESTIMATE_AMOUNT: TFloatField;
    qOrder_MatESTIMATE_SUM: TFloatField;
    qOrder_MatESTIMATE_PRICE: TFloatField;
    qOrder_MatKD_AMOUNT: TFloatField;
    qOrder_MatKD_SUM: TFloatField;
    qOrder_MatKD_PRICE: TFloatField;
    qOrder_MatREC_AMOUNT: TFloatField;
    qOrder_MatREC_SUM: TFloatField;
    qOrder_MatREC_PRICE: TFloatField;
    qOrder_MatEXP_AMOUNT: TFloatField;
    qOrder_MatEXP_SUM: TFloatField;
    qOrder_MatDEF_AMOUNT: TFloatField;
    qOrder_MatDEF_SUM: TFloatField;
    qOrder_MatREM: TIBStringField;
    qOrder_MatD_REM: TDateTimeField;
    qOrder_MatID_REM: TIntegerField;
    qOrder_MatD_CONF: TDateField;
    qOrder_MatCOMM_AMOUNT_L: TFloatField;
    qOrder_MatCOMM_AMOUNT_BILL: TFloatField;
    qOrder_MatCOMM_AMOUNT_PEO: TFloatField;
    qOrder_MatCOMM_AMOUNT_KD: TFloatField;
    qOrder_MatCOMM_AMOUNT_TRAFF: TFloatField;
    dbg118: TDBGridEh;
    dsOrder_Mat: TDataSource;
    qOrdersEST_TOTAL_SUM_PEO: TFloatField;
    qOrdersEST_TOTAL_SUM_KD: TFloatField;
    tsBill: TTabSheet;
    qBills: TIBQuery;
    qBillsID_ITEM: TIntegerField;
    qBillsNAME: TIBStringField;
    qBillsAMOUNT: TIBBCDField;
    qBillsUNAME: TIBStringField;
    qBillsSUMMA: TIBBCDField;
    qBillsID_PA_BILL_POS: TIntegerField;
    qBillsID_PA_BILL: TIntegerField;
    qBillsD_FIX: TDateTimeField;
    qBillsN_BILL: TIBStringField;
    qBillsIS_COMM: TIntegerField;
    qBillsD_BILL: TDateField;
    dsBills: TDataSource;
    dbg28: TDBGridEh;
    tsSum: TTabSheet;
    qSUM_Ord_Y: TIBQuery;
    dsSUM_Ord_Y: TDataSource;
    qSUM_Ord_YID_AGENT: TIntegerField;
    qSUM_Ord_YID_CURRENCY: TIntegerField;
    qSUM_Ord_YNAME_CUR: TIBStringField;
    qSUM_Ord_YEXTRACT: TSmallintField;
    qSUM_Ord_YPRICE: TIBBCDField;
    qSUM_Ord_YDELIVERY_SUM: TFloatField;
    dbg31: TDBGridEh;
    Splitter17: TSplitter;
    qSUM_Ord: TIBQuery;
    qSUM_OrdID_AGENT: TIntegerField;
    qSUM_OrdID_CURRENCY: TIntegerField;
    qSUM_OrdNAME_CUR: TIBStringField;
    qSUM_OrdPRICE: TIBBCDField;
    qSUM_OrdDELIVERY_SUM: TFloatField;
    dsSUM_Ord: TDataSource;
    qSUM_Ord_Y_M: TIBQuery;
    qSUM_Ord_Y_MID_AGENT: TIntegerField;
    qSUM_Ord_Y_MID_CURRENCY: TIntegerField;
    qSUM_Ord_Y_MNAME_CUR: TIBStringField;
    qSUM_Ord_Y_MY: TSmallintField;
    qSUM_Ord_Y_MM: TSmallintField;
    qSUM_Ord_Y_MPRICE: TIBBCDField;
    qSUM_Ord_Y_MDELIVERY_SUM: TFloatField;
    dsSUM_Ord_Y_M: TDataSource;
    dbg32: TDBGridEh;
    qSUM_Ord_YKOL: TIntegerField;
    qSUM_OrdKOL: TIntegerField;
    qSUM_Ord_Y_MKOL: TIntegerField;
    Panel8: TPanel;
    dbg30: TDBGridEh;
    qSUM_Ord_Y_MTOTAL_SUM_PEO: TFloatField;
    qSUM_Ord_Y_MRAZ: TFloatField;
    qSUM_Ord_Y_MnProfit: TFloatField;
    TabSheet1: TTabSheet;
    qMen_Ord: TIBQuery;
    qMen_OrdFIO: TIBStringField;
    qMen_OrdID_P: TIntegerField;
    qMen_OrdKOL: TIntegerField;
    qMen_OrdDEF_SUM: TFloatField;
    qMen_OrdDEF_DELIVERY: TFloatField;
    dsMen_Ord: TDataSource;
    Panel9: TPanel;
    Label51: TLabel;
    edYear: TEdit;
    UpDown: TUpDown;
    Panel10: TPanel;
    dbg41: TDBGridEh;
    sb5: TSpeedButton;
    Splitter19: TSplitter;
    DBChart1: TDBChart;
    Series1: TGanttSeries;
    qMen_Ord_Month: TIBQuery;
    dsMen_Ord_Month: TDataSource;
    qMen_Ord_MonthFIO: TIBStringField;
    qMen_Ord_MonthID_P: TIntegerField;
    qMen_Ord_MonthKOL: TIntegerField;
    qMen_Ord_MonthDEF_SUM: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY: TFloatField;
    qMen_Ord_MonthDEF_SUM1: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY1: TFloatField;
    qMen_Ord_MonthDEF_SUM2: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY2: TFloatField;
    qMen_Ord_MonthDEF_SUM3: TFloatField;
    qMen_Ord_MonthDEF_DELIVER3: TFloatField;
    qMen_Ord_MonthDEF_SUM4: TFloatField;
    qMen_Ord_MonthDEF_DELIVER4: TFloatField;
    qMen_Ord_MonthDEF_SUM5: TFloatField;
    qMen_Ord_MonthDEF_DELIVER5: TFloatField;
    qMen_Ord_MonthDEF_SUM6: TFloatField;
    qMen_Ord_MonthDEF_DELIVER6: TFloatField;
    qMen_Ord_MonthDEF_SUM7: TFloatField;
    qMen_Ord_MonthDEF_DELIVER7: TFloatField;
    qMen_Ord_MonthDEF_SUM8: TFloatField;
    qMen_Ord_MonthDEF_DELIVER8: TFloatField;
    qMen_Ord_MonthDEF_SUM9: TFloatField;
    qMen_Ord_MonthDEF_DELIVER9: TFloatField;
    qMen_Ord_MonthDEF_SUM10: TFloatField;
    qMen_Ord_MonthDEF_DELIVER10: TFloatField;
    qMen_Ord_MonthDEF_SUM11: TFloatField;
    qMen_Ord_MonthDEF_DELIVER11: TFloatField;
    qMen_Ord_MonthDEF_SUM12: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY12: TFloatField;
    Panel11: TPanel;
    dbg42: TDBGridEh;
    Splitter20: TSplitter;
    qMen_Ord_MonthnFIO: TStringField;
    DBChart2: TDBChart;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    qMen_Ord_Monthid_nom: TIntegerField;
    Series6: TBarSeries;
    Series7: TBarSeries;
    Series8: TBarSeries;
    Series9: TBarSeries;
    Series10: TBarSeries;
    Series11: TBarSeries;
    Series12: TBarSeries;
    Series13: TBarSeries;
    qMen_Ord_Monthid1: TFloatField;
    qMen_Ord_Monthid2: TFloatField;
    qMen_Ord_Monthid3: TFloatField;
    qMen_Ord_Monthid4: TFloatField;
    qMen_Ord_Monthid5: TFloatField;
    qMen_Ord_Monthid6: TFloatField;
    qMen_Ord_Monthid7: TFloatField;
    qMen_Ord_Monthid8: TFloatField;
    qMen_Ord_Monthid9: TFloatField;
    qMen_Ord_Monthid10: TFloatField;
    qMen_Ord_Monthid11: TFloatField;
    qMen_Ord_Monthid12: TFloatField;
    SpeedButton4: TSpeedButton;
    pc5: TPageControl;
    tsAn_Men: TTabSheet;
    tsAn_Agent: TTabSheet;
    Splitter18: TSplitter;
    lbMen: TLabel;
    Label53: TLabel;
    qAgent_Ord: TIBQuery;
    qAgent_OrdID_AGENT: TIntegerField;
    qAgent_OrdNAME_AGENT: TIBStringField;
    qAgent_OrdKOL: TIntegerField;
    qAgent_OrdDEF_SUM: TFloatField;
    qAgent_OrdDEF_DELIVERY: TFloatField;
    lcb_Men2: TDBLookupComboboxEh;
    q_Men2: TIBQuery;
    ds_Men2: TDataSource;
    q_Men2FIO: TIBStringField;
    q_Men2ID_P: TIntegerField;
    dsAgent_Ord: TDataSource;
    Panel12: TPanel;
    dbg51: TDBGridEh;
    Splitter21: TSplitter;
    DBChart3: TDBChart;
    Series14: TGanttSeries;
    Splitter22: TSplitter;
    qMen_Ord_MonthDEF_SUM0: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY0: TFloatField;
    qMen_Ord_MonthDEF_SUM22: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY22: TFloatField;
    qMen_Ord_MonthDEF_SUM33: TFloatField;
    qMen_Ord_MonthDEF_DELIVER33: TFloatField;
    qMen_Ord_MonthDEF_SUM44: TFloatField;
    qMen_Ord_MonthDEF_DELIVER44: TFloatField;
    qMen_Ord_MonthDEF_SUM55: TFloatField;
    qMen_Ord_MonthDEF_DELIVER55: TFloatField;
    qMen_Ord_MonthDEF_SUM66: TFloatField;
    qMen_Ord_MonthDEF_DELIVER66: TFloatField;
    qMen_Ord_MonthDEF_SUM77: TFloatField;
    qMen_Ord_MonthDEF_DELIVER77: TFloatField;
    qMen_Ord_MonthDEF_SUM88: TFloatField;
    qMen_Ord_MonthDEF_DELIVER88: TFloatField;
    qMen_Ord_MonthDEF_SUM99: TFloatField;
    qMen_Ord_MonthDEF_DELIVER99: TFloatField;
    qMen_Ord_MonthDEF_SUM100: TFloatField;
    qMen_Ord_MonthDEF_DELIVER100: TFloatField;
    qMen_Ord_MonthDEF_SUM111: TFloatField;
    qMen_Ord_MonthDEF_DELIVER111: TFloatField;
    qMen_Ord_MonthDEF_SUM122: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY122: TFloatField;
    qMen_Ord_MonthDEF_SUM_11: TFloatField;
    qMen_Ord_MonthDEF_DELIVERY_11: TFloatField;
    qAgent_OrdDEF_SUM1: TFloatField;
    qAgent_OrdDEF_DELIVERY1: TFloatField;
    qAgent_Ord_Month: TIBQuery;
    qAgent_Ord_MonthID_AGENT: TIntegerField;
    qAgent_Ord_MonthNAME_AGENT: TIBStringField;
    qAgent_Ord_MonthKOL: TIntegerField;
    qAgent_Ord_MonthDEF_SUM0: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY0: TFloatField;
    qAgent_Ord_MonthDEF_SUM_11: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY_11: TFloatField;
    qAgent_Ord_MonthDEF_SUM22: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY22: TFloatField;
    qAgent_Ord_MonthDEF_SUM33: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER33: TFloatField;
    qAgent_Ord_MonthDEF_SUM44: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER44: TFloatField;
    qAgent_Ord_MonthDEF_SUM55: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER55: TFloatField;
    qAgent_Ord_MonthDEF_SUM66: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER66: TFloatField;
    qAgent_Ord_MonthDEF_SUM77: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER77: TFloatField;
    qAgent_Ord_MonthDEF_SUM88: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER88: TFloatField;
    qAgent_Ord_MonthDEF_SUM99: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER99: TFloatField;
    qAgent_Ord_MonthDEF_SUM100: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER100: TFloatField;
    qAgent_Ord_MonthDEF_SUM111: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER111: TFloatField;
    qAgent_Ord_MonthDEF_SUM122: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY122: TFloatField;
    Panel13: TPanel;
    dbg52: TDBGridEh;
    dsAgent_Ord_Month: TDataSource;
    qAgent_Ord_MonthDEF_SUM: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY: TFloatField;
    qAgent_Ord_MonthDEF_SUM1: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY1: TFloatField;
    qAgent_Ord_MonthDEF_SUM2: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY2: TFloatField;
    qAgent_Ord_MonthDEF_SUM3: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER3: TFloatField;
    qAgent_Ord_MonthDEF_SUM4: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER4: TFloatField;
    qAgent_Ord_MonthDEF_SUM5: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER5: TFloatField;
    qAgent_Ord_MonthDEF_SUM6: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER6: TFloatField;
    qAgent_Ord_MonthDEF_SUM7: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER7: TFloatField;
    qAgent_Ord_MonthDEF_SUM8: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER8: TFloatField;
    qAgent_Ord_MonthDEF_SUM9: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER9: TFloatField;
    qAgent_Ord_MonthDEF_SUM10: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER10: TFloatField;
    qAgent_Ord_MonthDEF_SUM11: TFloatField;
    qAgent_Ord_MonthDEF_DELIVER11: TFloatField;
    qAgent_Ord_MonthDEF_SUM12: TFloatField;
    qAgent_Ord_MonthDEF_DELIVERY12: TFloatField;
    qAgent_Ord_Monthid_nom: TIntegerField;
    qAgent_Ord_Monthid1: TFloatField;
    qAgent_Ord_Monthid3: TFloatField;
    qAgent_Ord_Monthid4: TFloatField;
    qAgent_Ord_Monthid5: TFloatField;
    qAgent_Ord_Monthid6: TFloatField;
    qAgent_Ord_Monthid7: TFloatField;
    qAgent_Ord_Monthid8: TFloatField;
    qAgent_Ord_Monthid9: TFloatField;
    qAgent_Ord_Monthid10: TFloatField;
    qAgent_Ord_Monthid11: TFloatField;
    qAgent_Ord_Monthid12: TFloatField;
    qAgent_Ord_Monthid2: TFloatField;
    qAgent_Ord_Menager: TIBQuery;
    qAgent_Ord_MenagerID_AGENT: TIntegerField;
    qAgent_Ord_MenagerNAME_AGENT: TIBStringField;
    qAgent_Ord_MenagerID_MANAGER: TIntegerField;
    qAgent_Ord_MenagerFIO: TIBStringField;
    qAgent_Ord_MenagerKOL: TIntegerField;
    qAgent_Ord_MenagerDEF_SUM: TFloatField;
    qAgent_Ord_MenagerDEF_DELIVERY: TFloatField;
    qAgent_Ord_MenagerDEF_SUM1: TFloatField;
    qAgent_Ord_MenagerDEF_DELIVERY1: TFloatField;
    dsAgent_Ord_Menager: TDataSource;
    Splitter23: TSplitter;
    Panel14: TPanel;
    dbg53: TDBGridEh;
    Splitter24: TSplitter;
    DBChart4: TDBChart;
    Series15: TPieSeries;
    TabSheet2: TTabSheet;
    Panel15: TPanel;
    Label52: TLabel;
    sb6_1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label54: TLabel;
    edY: TEdit;
    UpDown1: TUpDown;
    lcb_Men3: TDBLookupComboboxEh;
    pc6: TPageControl;
    tsAn_Pack_Men: TTabSheet;
    tsAn_Pack_Agent: TTabSheet;
    Panel16: TPanel;
    Splitter25: TSplitter;
    Panel17: TPanel;
    qMen_Pack: TIBQuery;
    qMen_PackNAME: TIBStringField;
    qMen_PackID: TIntegerField;
    qMen_PackPLAN_SHIPP: TFloatField;
    qMen_PackPRODUCED: TFloatField;
    qMen_PackSHIP: TFloatField;
    qMen_PackRECIEV: TFloatField;
    qMen_PackS_PLAN_SHIPP: TFloatField;
    qMen_PackS_PRODUCED: TFloatField;
    qMen_PackS_SHIP: TFloatField;
    qMen_PackS_RECIEV: TFloatField;
    qMen_Packnom: TIntegerField;
    qMen_PacknFIO: TStringField;
    qMen_PacknS_Plan_Shipp: TFloatField;
    qMen_PacknS_Produced: TFloatField;
    qMen_PacknS_Ship: TFloatField;
    qMen_PacknS_Reciev: TFloatField;
    dbg61: TDBGridEh;
    Splitter26: TSplitter;
    dsMen_Pack: TDataSource;
    qMen_PackPROGN: TFloatField;
    qMen_PackS_PROGN: TFloatField;
    qMen_Packn_S_Progn: TFloatField;
    DBChart5: TDBChart;
    Series16: TGanttSeries;
    tsAn_Pack_TProd: TTabSheet;
    Panel18: TPanel;
    qMen_Pack_TProd: TIBQuery;
    dsMen_Pack_TProd: TDataSource;
    qMen_Pack_TProdNAME: TIBStringField;
    qMen_Pack_TProdID: TIntegerField;
    qMen_Pack_TProdPROGN: TFloatField;
    qMen_Pack_TProdPLAN_SHIPP: TFloatField;
    qMen_Pack_TProdPRODUCED: TFloatField;
    qMen_Pack_TProdSHIP: TFloatField;
    qMen_Pack_TProdRECIEV: TFloatField;
    qMen_Pack_TProdS_PROGN: TFloatField;
    qMen_Pack_TProdS_PLAN_SHIPP: TFloatField;
    qMen_Pack_TProdS_PRODUCED: TFloatField;
    qMen_Pack_TProdS_SHIP: TFloatField;
    qMen_Pack_TProdS_RECIEV: TFloatField;
    qMen_Pack_TProdnS_Plan_Shipp: TFloatField;
    qMen_Pack_TProdnS_Produced: TFloatField;
    qMen_Pack_TProdnS_Ship: TFloatField;
    qMen_Pack_TProdnS_Reciev: TFloatField;
    qMen_Pack_TProdn_S_Progn: TFloatField;
    dbg61_2: TDBGridEh;
    Splitter27: TSplitter;
    DBChart6: TDBChart;
    Series17: TGanttSeries;
    Splitter28: TSplitter;
    qMen_Pack_Agent: TIBQuery;
    qMen_Pack_AgentNAME: TIBStringField;
    qMen_Pack_AgentID: TIntegerField;
    qMen_Pack_AgentPROGN: TFloatField;
    qMen_Pack_AgentPLAN_SHIPP: TFloatField;
    qMen_Pack_AgentPRODUCED: TFloatField;
    qMen_Pack_AgentSHIP: TFloatField;
    qMen_Pack_AgentRECIEV: TFloatField;
    qMen_Pack_AgentS_PROGN: TFloatField;
    qMen_Pack_AgentS_PLAN_SHIPP: TFloatField;
    qMen_Pack_AgentS_PRODUCED: TFloatField;
    qMen_Pack_AgentS_SHIP: TFloatField;
    qMen_Pack_AgentS_RECIEV: TFloatField;
    qMen_Pack_Agentnom: TIntegerField;
    qMen_Pack_AgentnS_Plan_Shipp: TFloatField;
    qMen_Pack_AgentnS_Produced: TFloatField;
    qMen_Pack_AgentnS_Ship: TFloatField;
    qMen_Pack_AgentnS_Reciev: TFloatField;
    qMen_Pack_Agentn_S_Progn: TFloatField;
    Panel19: TPanel;
    dbg61_1: TDBGridEh;
    dsMen_Pack_Agent: TDataSource;
    Splitter29: TSplitter;
    DBChart7: TDBChart;
    Series18: TGanttSeries;
    Splitter30: TSplitter;
    qMen_Pack_TProd_Month: TIBQuery;
    qMen_Pack_TProd_MonthNAME: TIBStringField;
    qMen_Pack_TProd_MonthPACK: TFloatField;
    qMen_Pack_TProd_MonthSUM_PACK: TFloatField;
    qMen_Pack_TProd_MonthPACK1: TFloatField;
    qMen_Pack_TProd_MonthS_PACK1: TFloatField;
    qMen_Pack_TProd_MonthPACK2: TFloatField;
    qMen_Pack_TProd_MonthS_PACK2: TFloatField;
    qMen_Pack_TProd_MonthPACK3: TFloatField;
    qMen_Pack_TProd_MonthS_PACK3: TFloatField;
    qMen_Pack_TProd_MonthPACK4: TFloatField;
    qMen_Pack_TProd_MonthS_PACK4: TFloatField;
    qMen_Pack_TProd_MonthPACK5: TFloatField;
    qMen_Pack_TProd_MonthS_PACK5: TFloatField;
    qMen_Pack_TProd_MonthPACK6: TFloatField;
    qMen_Pack_TProd_MonthS_PACK6: TFloatField;
    qMen_Pack_TProd_MonthPACK7: TFloatField;
    qMen_Pack_TProd_MonthS_PACK7: TFloatField;
    qMen_Pack_TProd_MonthPACK8: TFloatField;
    qMen_Pack_TProd_MonthS_PACK8: TFloatField;
    qMen_Pack_TProd_MonthPACK9: TFloatField;
    qMen_Pack_TProd_MonthS_PACK9: TFloatField;
    qMen_Pack_TProd_MonthPACK10: TFloatField;
    qMen_Pack_TProd_MonthS_PACK10: TFloatField;
    qMen_Pack_TProd_MonthPACK11: TFloatField;
    qMen_Pack_TProd_MonthS_PACK11: TFloatField;
    qMen_Pack_TProd_MonthPACK12: TFloatField;
    qMen_Pack_TProd_MonthS_PACK12: TFloatField;
    qMen_Pack_TProd_MonthID: TIntegerField;
    Panel20: TPanel;
    dbg61_21: TDBGridEh;
    dsMen_Pack_TProd_Month: TDataSource;
    rg: TRadioGroup;
    SpeedButton6: TSpeedButton;
    Bevel3: TBevel;
    qMen_Pack_Month: TIBQuery;
    qMen_Pack_MonthID: TIntegerField;
    qMen_Pack_MonthNAME: TIBStringField;
    qMen_Pack_MonthPACK: TFloatField;
    qMen_Pack_MonthSUM_PACK: TFloatField;
    qMen_Pack_MonthPACK1: TFloatField;
    qMen_Pack_MonthS_PACK1: TFloatField;
    qMen_Pack_MonthPACK2: TFloatField;
    qMen_Pack_MonthS_PACK2: TFloatField;
    qMen_Pack_MonthPACK3: TFloatField;
    qMen_Pack_MonthS_PACK3: TFloatField;
    qMen_Pack_MonthPACK4: TFloatField;
    qMen_Pack_MonthS_PACK4: TFloatField;
    qMen_Pack_MonthPACK5: TFloatField;
    qMen_Pack_MonthS_PACK5: TFloatField;
    qMen_Pack_MonthPACK6: TFloatField;
    qMen_Pack_MonthS_PACK6: TFloatField;
    qMen_Pack_MonthPACK7: TFloatField;
    qMen_Pack_MonthS_PACK7: TFloatField;
    qMen_Pack_MonthPACK8: TFloatField;
    qMen_Pack_MonthS_PACK8: TFloatField;
    qMen_Pack_MonthPACK9: TFloatField;
    qMen_Pack_MonthS_PACK9: TFloatField;
    qMen_Pack_MonthPACK10: TFloatField;
    qMen_Pack_MonthS_PACK10: TFloatField;
    qMen_Pack_MonthPACK11: TFloatField;
    qMen_Pack_MonthS_PACK11: TFloatField;
    qMen_Pack_MonthPACK12: TFloatField;
    qMen_Pack_MonthS_PACK12: TFloatField;
    dbg61_01: TDBGridEh;
    Splitter32: TSplitter;
    dsMen_Pack_Month: TDataSource;
    Panel21: TPanel;
    dbg61_111: TDBGridEh;
    qMen_Pack_Agent_Mounth: TIBQuery;
    dsMen_Pack_Agent_Mounth: TDataSource;
    qMen_Pack_Agent_MounthPACK: TFloatField;
    qMen_Pack_Agent_MounthSUM_PACK: TFloatField;
    qMen_Pack_Agent_MounthPACK1: TFloatField;
    qMen_Pack_Agent_MounthS_PACK1: TFloatField;
    qMen_Pack_Agent_MounthPACK2: TFloatField;
    qMen_Pack_Agent_MounthS_PACK2: TFloatField;
    qMen_Pack_Agent_MounthPACK3: TFloatField;
    qMen_Pack_Agent_MounthS_PACK3: TFloatField;
    qMen_Pack_Agent_MounthPACK4: TFloatField;
    qMen_Pack_Agent_MounthS_PACK4: TFloatField;
    qMen_Pack_Agent_MounthPACK5: TFloatField;
    qMen_Pack_Agent_MounthS_PACK5: TFloatField;
    qMen_Pack_Agent_MounthPACK6: TFloatField;
    qMen_Pack_Agent_MounthS_PACK6: TFloatField;
    qMen_Pack_Agent_MounthPACK7: TFloatField;
    qMen_Pack_Agent_MounthS_PACK7: TFloatField;
    qMen_Pack_Agent_MounthPACK8: TFloatField;
    qMen_Pack_Agent_MounthS_PACK8: TFloatField;
    qMen_Pack_Agent_MounthPACK9: TFloatField;
    qMen_Pack_Agent_MounthS_PACK9: TFloatField;
    qMen_Pack_Agent_MounthPACK10: TFloatField;
    qMen_Pack_Agent_MounthS_PACK10: TFloatField;
    qMen_Pack_Agent_MounthPACK11: TFloatField;
    qMen_Pack_Agent_MounthS_PACK11: TFloatField;
    qMen_Pack_Agent_MounthPACK12: TFloatField;
    qMen_Pack_Agent_MounthS_PACK12: TFloatField;
    qMen_Pack_Agent_MounthID: TIntegerField;
    qMen_Pack_Agent_MounthNAME: TIBStringField;
    qPack_Men_Agent_Month: TIBQuery;
    qPack_Men_Agent_MonthID: TIntegerField;
    qPack_Men_Agent_MonthNAME: TIBStringField;
    qPack_Men_Agent_MonthPACK: TFloatField;
    qPack_Men_Agent_MonthSUM_PACK: TFloatField;
    qPack_Men_Agent_MonthPACK1: TFloatField;
    qPack_Men_Agent_MonthS_PACK1: TFloatField;
    qPack_Men_Agent_MonthPACK2: TFloatField;
    qPack_Men_Agent_MonthS_PACK2: TFloatField;
    qPack_Men_Agent_MonthPACK3: TFloatField;
    qPack_Men_Agent_MonthS_PACK3: TFloatField;
    qPack_Men_Agent_MonthPACK4: TFloatField;
    qPack_Men_Agent_MonthS_PACK4: TFloatField;
    qPack_Men_Agent_MonthPACK5: TFloatField;
    qPack_Men_Agent_MonthS_PACK5: TFloatField;
    qPack_Men_Agent_MonthPACK6: TFloatField;
    qPack_Men_Agent_MonthS_PACK6: TFloatField;
    qPack_Men_Agent_MonthPACK7: TFloatField;
    qPack_Men_Agent_MonthS_PACK7: TFloatField;
    qPack_Men_Agent_MonthPACK8: TFloatField;
    qPack_Men_Agent_MonthS_PACK8: TFloatField;
    qPack_Men_Agent_MonthPACK9: TFloatField;
    qPack_Men_Agent_MonthS_PACK9: TFloatField;
    qPack_Men_Agent_MonthPACK10: TFloatField;
    qPack_Men_Agent_MonthS_PACK10: TFloatField;
    qPack_Men_Agent_MonthPACK11: TFloatField;
    qPack_Men_Agent_MonthS_PACK11: TFloatField;
    qPack_Men_Agent_MonthPACK12: TFloatField;
    qPack_Men_Agent_MonthS_PACK12: TFloatField;
    qPack_Men_Agent_MonthID_TAB: TIntegerField;
    dbg61_11: TDBGridEh;
    dsPack_Men_Agent_Month: TDataSource;
    qPack_Men_TProd_Month: TIBQuery;
    qPack_Men_TProd_MonthID: TIntegerField;
    qPack_Men_TProd_MonthNAME: TIBStringField;
    qPack_Men_TProd_MonthPACK: TFloatField;
    qPack_Men_TProd_MonthSUM_PACK: TFloatField;
    qPack_Men_TProd_MonthPACK1: TFloatField;
    qPack_Men_TProd_MonthS_PACK1: TFloatField;
    qPack_Men_TProd_MonthPACK2: TFloatField;
    qPack_Men_TProd_MonthS_PACK2: TFloatField;
    qPack_Men_TProd_MonthPACK3: TFloatField;
    qPack_Men_TProd_MonthS_PACK3: TFloatField;
    qPack_Men_TProd_MonthPACK4: TFloatField;
    qPack_Men_TProd_MonthS_PACK4: TFloatField;
    qPack_Men_TProd_MonthPACK5: TFloatField;
    qPack_Men_TProd_MonthS_PACK5: TFloatField;
    qPack_Men_TProd_MonthPACK6: TFloatField;
    qPack_Men_TProd_MonthS_PACK6: TFloatField;
    qPack_Men_TProd_MonthPACK7: TFloatField;
    qPack_Men_TProd_MonthS_PACK7: TFloatField;
    qPack_Men_TProd_MonthPACK8: TFloatField;
    qPack_Men_TProd_MonthS_PACK8: TFloatField;
    qPack_Men_TProd_MonthPACK9: TFloatField;
    qPack_Men_TProd_MonthS_PACK9: TFloatField;
    qPack_Men_TProd_MonthPACK10: TFloatField;
    qPack_Men_TProd_MonthS_PACK10: TFloatField;
    qPack_Men_TProd_MonthPACK11: TFloatField;
    qPack_Men_TProd_MonthS_PACK11: TFloatField;
    qPack_Men_TProd_MonthPACK12: TFloatField;
    qPack_Men_TProd_MonthS_PACK12: TFloatField;
    dbg61_0: TDBGridEh;
    dsPack_Men_TProd_Month: TDataSource;
    Panel22: TPanel;
    cbTProd: TCheckBox;
    Panel23: TPanel;
    Splitter31: TSplitter;
    cbAgent: TCheckBox;
    qPack_TProd_Agent_Month: TIBQuery;
    qPack_TProd_Agent_MonthID: TIntegerField;
    qPack_TProd_Agent_MonthNAME: TIBStringField;
    qPack_TProd_Agent_MonthPACK: TFloatField;
    qPack_TProd_Agent_MonthSUM_PACK: TFloatField;
    qPack_TProd_Agent_MonthPACK1: TFloatField;
    qPack_TProd_Agent_MonthS_PACK1: TFloatField;
    qPack_TProd_Agent_MonthPACK2: TFloatField;
    qPack_TProd_Agent_MonthS_PACK2: TFloatField;
    qPack_TProd_Agent_MonthPACK3: TFloatField;
    qPack_TProd_Agent_MonthS_PACK3: TFloatField;
    qPack_TProd_Agent_MonthPACK4: TFloatField;
    qPack_TProd_Agent_MonthS_PACK4: TFloatField;
    qPack_TProd_Agent_MonthPACK5: TFloatField;
    qPack_TProd_Agent_MonthS_PACK5: TFloatField;
    qPack_TProd_Agent_MonthPACK6: TFloatField;
    qPack_TProd_Agent_MonthS_PACK6: TFloatField;
    qPack_TProd_Agent_MonthPACK7: TFloatField;
    qPack_TProd_Agent_MonthS_PACK7: TFloatField;
    qPack_TProd_Agent_MonthPACK8: TFloatField;
    qPack_TProd_Agent_MonthS_PACK8: TFloatField;
    qPack_TProd_Agent_MonthPACK9: TFloatField;
    qPack_TProd_Agent_MonthS_PACK9: TFloatField;
    qPack_TProd_Agent_MonthPACK10: TFloatField;
    qPack_TProd_Agent_MonthS_PACK10: TFloatField;
    qPack_TProd_Agent_MonthPACK11: TFloatField;
    qPack_TProd_Agent_MonthS_PACK11: TFloatField;
    qPack_TProd_Agent_MonthPACK12: TFloatField;
    qPack_TProd_Agent_MonthS_PACK12: TFloatField;
    dsPack_TProd_Agent_Month: TDataSource;
    qMen_PackEST_PROGN: TFloatField;
    qMen_PackEST_PLAN: TFloatField;
    qMen_PackEST_PRODUCED: TFloatField;
    qMen_PackEST_SHIP: TFloatField;
    qMen_PackEST_RECIEV: TFloatField;
    qMen_Pack_AgentEST_PROGN: TFloatField;
    qMen_Pack_AgentEST_PLAN: TFloatField;
    qMen_Pack_AgentEST_PRODUCED: TFloatField;
    qMen_Pack_AgentEST_SHIP: TFloatField;
    qMen_Pack_AgentEST_RECIEV: TFloatField;
    qMen_Pack_TProdEST_RECIEV: TFloatField;
    qMen_Pack_TProdEST_SHIP: TFloatField;
    qMen_Pack_TProdEST_PRODUCED: TFloatField;
    qMen_Pack_TProdEST_PLAN: TFloatField;
    qMen_PacknPR_Progn: TFloatField;
    qMen_PacknPR_Plan: TFloatField;
    qMen_PacknPR_1: TFloatField;
    qMen_PacknPR_2: TFloatField;
    qMen_PacknPR_3: TFloatField;
    qMen_Pack_AgentnPR_Progn: TFloatField;
    qMen_Pack_AgentnPR_Plan: TFloatField;
    qMen_Pack_AgentnPR_1: TFloatField;
    qMen_Pack_AgentnPR_2: TFloatField;
    qMen_Pack_AgentnPR_3: TFloatField;
    qMen_Pack_TProdnPR_Progn: TFloatField;
    qMen_Pack_TProdnPR_Plan: TFloatField;
    qMen_Pack_TProdnPR_1: TFloatField;
    qMen_Pack_TProdnPR_2: TFloatField;
    qMen_Pack_TProdnPR_3: TFloatField;
    qMen_Pack_TProdEST_PROGN: TFloatField;
    Splitter33: TSplitter;
    Panel24: TPanel;
    cbMen: TCheckBox;
    N4: TMenuItem;
    qEst_Pp: TIBQuery;
    qEst_PpID_SPOS: TIntegerField;
    qEst_PpID_ESTIMATE: TIntegerField;
    qEst_PpID_OBJ: TIntegerField;
    qEst_PpNAME: TIBStringField;
    qEst_PpUNAME: TIBStringField;
    qEst_PpOBJ_KIND: TIntegerField;
    qEst_PpAMOUNT: TFloatField;
    qEst_PpPRICE: TFloatField;
    qEst_PpTOTAL: TFloatField;
    qEst_PpAMOUNT_TIME: TFloatField;
    qEst_PpCOST: TIBBCDField;
    qEst_PpCOST0: TFloatField;
    qEst_PpsTime: TStringField;
    dsEst_Pp: TDataSource;
    dsEst_Pm: TDataSource;
    qEst_Pm: TIBQuery;
    qEst_PmID_SPOS: TIntegerField;
    qEst_PmID_ESTIMATE: TIntegerField;
    qEst_PmID_OBJ: TIntegerField;
    qEst_PmNAME: TIBStringField;
    qEst_PmUNAME: TIBStringField;
    qEst_PmOBJ_KIND: TIntegerField;
    qEst_PmAMOUNT: TFloatField;
    qEst_PmPRICE: TFloatField;
    qEst_PmTOTAL: TFloatField;
    qEst_PmPNAME: TIBStringField;
    qEst_PmFACTOR: TFloatField;
    qEst_PmPAMOUNT: TFloatField;
    qEst_PmPPRICE: TFloatField;
    qEst_PmCOMM_AMOUNT: TFloatField;
    xlReport3: TxlReport;
    qR_BODY: TIBQuery;
    qR_BODYID_DOC: TIntegerField;
    qR_BODYFILENAME: TIBStringField;
    qR_BODYBODY: TBlobField;
    qEst_Op_TypePROFIT: TFloatField;
    qEst_Op_TypeDOP_PRICE: TFloatField;
    qEst_Op_TypeTOTAL_OPER: TFloatField;
    qEst_Op_TypeTOTAL_MAT: TFloatField;
    qEst_Op_TypeCOMM_AMOUNT: TFloatField;
    qOrder_Op_TypePROFIT: TFloatField;
    qOrder_Op_TypeDOP_PRICE: TFloatField;
    qOrder_Op_TypeTOTAL_OPER: TFloatField;
    qOrder_Op_TypeTOTAL_MAT: TFloatField;
    qOrder_Op_TypeCOMM_AMOUNT: TFloatField;
    qEst_Op_TypeSUM_OPER: TFloatField;
    qEst_Op_TypeSUM_MAT: TFloatField;
    qEst_Op_TypeSUM_PROC: TFloatField;
    qOrder_Op_TypeSUM_OPER: TFloatField;
    qOrder_Op_TypeSUM_MAT: TFloatField;
    qOrder_Op_TypeSUM_PROC: TFloatField;
    qEst_Op_TypeNAME_TP: TIBStringField;
    qOrder_Op_TypeNAME_TP: TIBStringField;
    qPack_Men_Agent_12: TIBQuery;
    qPack_Men_Agent_12ID: TIntegerField;
    qPack_Men_Agent_12ID_TAB: TIntegerField;
    qPack_Men_Agent_12NAME: TIBStringField;
    qPack_Men_Agent_12PACK: TFloatField;
    qPack_Men_Agent_12SUM_PACK: TFloatField;
    qPack_Men_Agent_12PACK1: TFloatField;
    qPack_Men_Agent_12S_PACK1: TFloatField;
    qPack_Men_Agent_12PACK2: TFloatField;
    qPack_Men_Agent_12S_PACK2: TFloatField;
    qPack_Men_Agent_12PACK3: TFloatField;
    qPack_Men_Agent_12S_PACK3: TFloatField;
    qPack_Men_Agent_12PACK4: TFloatField;
    qPack_Men_Agent_12S_PACK4: TFloatField;
    qPack_Men_Agent_12PACK5: TFloatField;
    qPack_Men_Agent_12S_PACK5: TFloatField;
    qPack_Men_Agent_12PACK6: TFloatField;
    qPack_Men_Agent_12S_PACK6: TFloatField;
    qPack_Men_Agent_12PACK7: TFloatField;
    qPack_Men_Agent_12S_PACK7: TFloatField;
    qPack_Men_Agent_12PACK8: TFloatField;
    qPack_Men_Agent_12S_PACK8: TFloatField;
    qPack_Men_Agent_12PACK9: TFloatField;
    qPack_Men_Agent_12S_PACK9: TFloatField;
    qPack_Men_Agent_12PACK10: TFloatField;
    qPack_Men_Agent_12S_PACK10: TFloatField;
    qPack_Men_Agent_12PACK11: TFloatField;
    qPack_Men_Agent_12S_PACK11: TFloatField;
    qPack_Men_Agent_12PACK12: TFloatField;
    qPack_Men_Agent_12S_PACK12: TFloatField;
    qPack_Men_Agent_12NAME_AGENT: TIBStringField;
    Panel25: TPanel;
    Splitter34: TSplitter;
    cbAgent_Men: TCheckBox;
    dbg61_1111: TDBGridEh;
    dsPack_Men_Agent_12: TDataSource;
    Panel26: TPanel;
    cbMen_TProd: TCheckBox;
    qPack_Men_TProd_12: TIBQuery;
    qPack_Men_TProd_12ID: TIntegerField;
    qPack_Men_TProd_12NAME: TIBStringField;
    qPack_Men_TProd_12PACK: TFloatField;
    qPack_Men_TProd_12SUM_PACK: TFloatField;
    qPack_Men_TProd_12PACK1: TFloatField;
    qPack_Men_TProd_12S_PACK1: TFloatField;
    qPack_Men_TProd_12PACK2: TFloatField;
    qPack_Men_TProd_12S_PACK2: TFloatField;
    qPack_Men_TProd_12PACK3: TFloatField;
    qPack_Men_TProd_12S_PACK3: TFloatField;
    qPack_Men_TProd_12PACK4: TFloatField;
    qPack_Men_TProd_12S_PACK4: TFloatField;
    qPack_Men_TProd_12PACK5: TFloatField;
    qPack_Men_TProd_12S_PACK5: TFloatField;
    qPack_Men_TProd_12PACK6: TFloatField;
    qPack_Men_TProd_12S_PACK6: TFloatField;
    qPack_Men_TProd_12PACK7: TFloatField;
    qPack_Men_TProd_12S_PACK7: TFloatField;
    qPack_Men_TProd_12PACK8: TFloatField;
    qPack_Men_TProd_12S_PACK8: TFloatField;
    qPack_Men_TProd_12PACK9: TFloatField;
    qPack_Men_TProd_12S_PACK9: TFloatField;
    qPack_Men_TProd_12PACK10: TFloatField;
    qPack_Men_TProd_12S_PACK10: TFloatField;
    qPack_Men_TProd_12PACK11: TFloatField;
    qPack_Men_TProd_12S_PACK11: TFloatField;
    qPack_Men_TProd_12PACK12: TFloatField;
    qPack_Men_TProd_12S_PACK12: TFloatField;
    qPack_Men_TProd_12ID_MANAGER: TIntegerField;
    qPack_Men_TProd_12FIO: TIBStringField;
    Splitter36: TSplitter;
    dbg61_011: TDBGridEh;
    dsPack_Men_TProd_12: TDataSource;
    Splitter35: TSplitter;
    Panel27: TPanel;
    cbTProd_Agent: TCheckBox;
    qPack_TProd_Agent_12: TIBQuery;
    dsPack_TProd_Agent_12: TDataSource;
    qPack_TProd_Agent_12ID: TIntegerField;
    qPack_TProd_Agent_12NAME: TIBStringField;
    qPack_TProd_Agent_12PACK: TFloatField;
    qPack_TProd_Agent_12SUM_PACK: TFloatField;
    qPack_TProd_Agent_12PACK1: TFloatField;
    qPack_TProd_Agent_12S_PACK1: TFloatField;
    qPack_TProd_Agent_12PACK2: TFloatField;
    qPack_TProd_Agent_12S_PACK2: TFloatField;
    qPack_TProd_Agent_12PACK3: TFloatField;
    qPack_TProd_Agent_12S_PACK3: TFloatField;
    qPack_TProd_Agent_12PACK4: TFloatField;
    qPack_TProd_Agent_12S_PACK4: TFloatField;
    qPack_TProd_Agent_12PACK5: TFloatField;
    qPack_TProd_Agent_12S_PACK5: TFloatField;
    qPack_TProd_Agent_12PACK6: TFloatField;
    qPack_TProd_Agent_12S_PACK6: TFloatField;
    qPack_TProd_Agent_12PACK7: TFloatField;
    qPack_TProd_Agent_12S_PACK7: TFloatField;
    qPack_TProd_Agent_12PACK8: TFloatField;
    qPack_TProd_Agent_12S_PACK8: TFloatField;
    qPack_TProd_Agent_12PACK9: TFloatField;
    qPack_TProd_Agent_12S_PACK9: TFloatField;
    qPack_TProd_Agent_12PACK10: TFloatField;
    qPack_TProd_Agent_12S_PACK10: TFloatField;
    qPack_TProd_Agent_12PACK11: TFloatField;
    qPack_TProd_Agent_12S_PACK11: TFloatField;
    qPack_TProd_Agent_12PACK12: TFloatField;
    qPack_TProd_Agent_12S_PACK12: TFloatField;
    qPack_TProd_Agent_12ID_CPTYPE: TIntegerField;
    qPack_TProd_Agent_12NAME_PROD: TIBStringField;
    dbg61_222: TDBGridEh;
    TabSheet3: TTabSheet;
    Panel28: TPanel;
    rg1: TRadioGroup;
    rg2: TRadioGroup;
    rg3: TRadioGroup;
    GroupBox5: TGroupBox;
    dtp_in_abc: TDBDateTimeEditEh;
    qABC: TIBQuery;
    qABCID: TIntegerField;
    qABCNAME: TIBStringField;
    qABCSUMMA: TFloatField;
    qABCPROC: TFloatField;
    qABCNPROC: TFloatField;
    qABCNAME_ABC: TIBStringField;
    qABCNOM: TIntegerField;
    Panel29: TPanel;
    dsABC: TDataSource;
    dtp_out_abc: TDBDateTimeEditEh;
    rg4: TRadioGroup;
    q_ABC: TIBQuery;
    q_ABCID_ABC: TSmallintField;
    q_ABCNAME: TIBStringField;
    q_ABCPR: TFloatField;
    q_ABCFACTOR: TFloatField;
    qABCKOL: TIntegerField;
    qABCAM: TIntegerField;
    qABCPROC_XYZ: TFloatField;
    qABCNAME_XYZ: TIBStringField;
    qABCREM: TIBStringField;
    cbUses: TCheckBox;
    Panel30: TPanel;
    chABC: TDBChart;
    Series22: TFastLineSeries;
    Splitter37: TSplitter;
    dbg71: TDBGridEh;
    Splitter38: TSplitter;
    Panel31: TPanel;
    Panel32: TPanel;
    cbABC_Vibor: TCheckBox;
    DBGridEh1: TDBGridEh;
    qABC_Vibor: TIBQuery;
    qABC_ViborID: TIntegerField;
    qABC_ViborNAME: TIBStringField;
    qABC_ViborSUMMA: TFloatField;
    qABC_ViborPERIOD: TIBStringField;
    dsABC_Vibor: TDataSource;
    DBChart8: TDBChart;
    Splitter39: TSplitter;
    Series19: TLineSeries;
    qABC_ViborNOM_PERIOD: TIntegerField;
    Label55: TLabel;
    TabSheet4: TTabSheet;
    Panel33: TPanel;
    Panel34: TPanel;
    qEstTitl_back: TIBQuery;
    qEstTitl_backID_ESTIMATE: TIntegerField;
    qEstTitl_backNAME: TIBStringField;
    qEstTitl_backAMOUNT: TIntegerField;
    qEstTitl_backPRICE_DATE: TDateField;
    qEstTitl_backSUM_NDS: TFloatField;
    qEstTitl_backPRICE_DELIVERY: TFloatField;
    qEstTitl_backPRICE_TOOLS: TFloatField;
    qEstTitl_backPROFIT: TFloatField;
    qEstTitl_backDOP_PRICE: TFloatField;
    qEstTitl_backD_CREATE: TDateTimeField;
    qEstTitl_backFIOCR: TIBStringField;
    qEstTitl_backD_CONFIRM: TDateTimeField;
    qEstTitl_backFIOCONF: TIBStringField;
    qEstTitl_backID_DOC: TIntegerField;
    qEstTitl_backTOTAL_SUM: TFloatField;
    qEstTitl_backTOTAL_SUM_AL: TFloatField;
    qEstTitl_backSUM_OPER: TFloatField;
    qEstTitl_backSUM_MAT: TFloatField;
    qEstTitl_backSUM_OPER_PROC: TFloatField;
    qEstTitl_backSUM_MAT_PROC: TFloatField;
    qEstTitl_backSUM_PROC: TFloatField;
    qEstTitl_backSTATUS: TIntegerField;
    qEstTitl_backID_VERSION: TIntegerField;
    dsEstTitl_back: TDataSource;
    dsEstFull_back: TDataSource;
    qEstFull_back: TIBQuery;
    IntegerField24: TIntegerField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    qEstFull_backAMOUNT_TIME: TFloatField;
    qEstFull_backCOST: TFloatField;
    qEstFull_backCOST0: TFloatField;
    qEstFull_backOBJ_AMOUNT_P: TFloatField;
    qEstFull_backPNAME: TIBStringField;
    qEstFull_backnAmount_Time: TStringField;
    qEstFull_backOBJ_TYPE: TIntegerField;
    qEstFull_backPRICEP: TFloatField;
    qEstFull_backDPRICE: TDateField;
    qEstFull_backSUM_RAS: TFloatField;
    qEstFull_backCOMM_AMOUNT: TFloatField;
    qEstFull_backID_SPOS: TIntegerField;
    qEstFull_backBPRICE: TFloatField;
    qEstFull_backBDATE: TDateField;
    qEstFull_backDELTA_PRICE: TFloatField;
    qEstFull_backPLAN_PRICE: TFloatField;
    qEstFull_backCOMM_AMOUNT_RAZ: TFloatField;
    qEstFull_backPRICE_MINUS_COMM: TFloatField;
    dbghEst: TDBGridEh;
    Splitter40: TSplitter;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    qEstFull_backSUM_PROC: TFloatField;
    qEst_Op_Type_OperTOTAL_PROC: TFloatField;
    qOrder_Op_Type_TMCTOTAL_ALL_PROC: TFloatField;
    qEst_Op_Type_TMCTOTAL_ALL_PROC: TFloatField;
    qOrder_Op_Type_OperTOTAL_PROC: TFloatField;
    qEstTitl_backnSUM_TOTAL_SALE: TFloatField;
    Label56: TLabel;
    Label57: TLabel;
    edDeliv: TEdit;
    edTool: TEdit;
    qABCD_IN: TDateField;
    qABCD_OUT: TDateField;
    qABCSUM_PACK_IN: TFloatField;
    qABCSUM_PACK_OUT: TFloatField;
    qABCD_IN_MAX: TDateField;
    UPEst_Title: TIBUpdateSQL;
    ToolButton4: TToolButton;
    ToolButton35: TToolButton;
    qOrdersSHIP: TFloatField;
    qOrdersRECEIVE: TFloatField;
    qOrdersPRODUSED: TFloatField;
    Splitter41: TSplitter;
    pcDoc: TPageControl;
    tsDoc: TTabSheet;
    tsDoc_K: TTabSheet;
    tlb1: TToolBar;
    tb_1: TToolButton;
    tb_2: TToolButton;
    ToolButton39: TToolButton;
    tb_3: TToolButton;
    tb_4: TToolButton;
    tb1_0: TToolButton;
    ToolButton41: TToolButton;
    tb_5: TToolButton;
    tb_6: TToolButton;
    tb_7: TToolButton;
    tb_9: TToolButton;
    ToolButton42: TToolButton;
    tb_8: TToolButton;
    ToolButton43: TToolButton;
    tb_12: TToolButton;
    ToolButton44: TToolButton;
    tb_11: TToolButton;
    ToolButton45: TToolButton;
    tb_14: TToolButton;
    Label40: TLabel;
    Edit1: TEdit;
    dbg140: TDBGridEh;
    p_4: TPanel;
    Label58: TLabel;
    DBText18: TDBText;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    lcb_Doc_Type: TDBLookupComboBox;
    Ed_Id_Doc: TEdit;
    dtp_1: TDBDateTimeEditEh;
    dtp_2: TDBDateTimeEditEh;
    dtp_3: TDBDateTimeEditEh;
    dtp_4: TDBDateTimeEditEh;
    dtp_5: TDBDateTimeEditEh;
    p22: TPanel;
    bb21: TBitBtn;
    bb22: TBitBtn;
    Ed_Cap: TEdit;
    p_3: TPanel;
    Label67: TLabel;
    dbt21: TDBText;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    DBText19: TDBText;
    Label75: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    DBText31: TDBText;
    DBText32: TDBText;
    Panel37: TPanel;
    Splitter42: TSplitter;
    Panel38: TPanel;
    Label79: TLabel;
    Label80: TLabel;
    DBMemo1: TDBMemo;
    pnProj: TPanel;
    tlb2: TToolBar;
    tbs1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton15: TToolButton;
    tbs2: TToolButton;
    tbs3: TToolButton;
    ToolButton11: TToolButton;
    tbs7: TToolButton;
    tbs5: TToolButton;
    ToolButton14: TToolButton;
    tbs6: TToolButton;
    dbg14: TDBGridEh;
    upDOC: TIBUpdateSQL;
    qDOC: TIBQuery;
    qDOCID_PROJECT_DOC: TIntegerField;
    qDOCID_PROJECT: TIntegerField;
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
    qDOCnTYPE: TStringField;
    qDOCID_SDOC: TIntegerField;
    qDOCD_FILL: TDateTimeField;
    qDOCID_FILL: TIntegerField;
    qDOCfILL: TStringField;
    qDOCNAME: TIBStringField;
    qDOCGraph: TStringField;
    qDOCiSSTR: TIntegerField;
    qDOCnSTATUS: TStringField;
    dsDOC: TDataSource;
    DBNavigator1: TDBNavigator;
    qDoc_Type: TIBQuery;
    qDoc_TypeID_PROJ_DOC_TYPE: TIntegerField;
    qDoc_TypeIS_STRUCTURED: TSmallintField;
    qDoc_TypeNAME: TIBStringField;
    qDoc_TypeSYS: TIntegerField;
    dsDoc_Type: TDataSource;
    qDOCID_ORDER: TIntegerField;
    qDOCFFIX: TIBStringField;
    qDOCFFILL: TIBStringField;
    qDOCFFOTO: TIBStringField;
    Splitter10: TSplitter;
    dbg44: TDBGridEh;
    qDogovor_Doc: TIBQuery;
    qDogovor_DocID_DOGOVOR_DOCS: TIntegerField;
    qDogovor_DocID_DOGOVOR: TIntegerField;
    qDogovor_DocNAME: TIBStringField;
    qDogovor_DocFIO: TIBStringField;
    qDogovor_DocD_EDIT: TDateTimeField;
    qDogovor_DocID_DOC: TIntegerField;
    qDogovor_DocID_REJECTOR: TIntegerField;
    qDogovor_DocD_REJECT: TDateField;
    qDogovor_DocFIO_REJ: TIBStringField;
    dsDogovor_Doc: TDataSource;
    dbg33: TDBGridEh;
    qFILL_D: TIBQuery;
    qFILL_DID_PROJECT_DOC: TIntegerField;
    qFILL_DID_POST: TIntegerField;
    qFILL_DID_P: TIntegerField;
    qFILL_DD_FILL: TDateTimeField;
    qFILL_DSTATUS: TIntegerField;
    qFILL_DNAME: TIBStringField;
    qFILL_DFIO: TIBStringField;
    qFILL_DF_TYPE: TIntegerField;
    qFILL_DCOMMENT: TMemoField;
    qFILL_DnFILL: TStringField;
    dsFILL_D: TDataSource;
    qProjID_MANAGER: TIntegerField;
    qProjFIO: TIBStringField;
    qOrdersBUCH_PROD_NAME: TIBStringField;
    ToolButton12: TToolButton;
    tsSh: TTabSheet;
    qInvoice: TIBQuery;
    qInvoiceID_INVOICE: TIntegerField;
    qInvoiceD_INVOICE: TDateField;
    qInvoiceINVOICE_NUMBER: TIBStringField;
    qInvoiceD_CREATE: TDateTimeField;
    qInvoiceD_CONFIRM: TDateTimeField;
    qInvoiceD_FIN: TDateTimeField;
    qInvoiceID_CURRENCY: TIntegerField;
    qInvoiceRATE: TFloatField;
    qInvoiceTOTAL_SUM: TFloatField;
    qInvoiceREM: TMemoField;
    qInvoiceID_DOC: TIntegerField;
    qInvoiceNAME_CUR: TIBStringField;
    dsInvoice: TDataSource;
    dbgSh: TDBGridEh;
    ToolBar6: TToolBar;
    ToolButton13: TToolButton;
    qEstReqREQ_KIND: TIntegerField;
    qEstReqREQ_TYPE: TIntegerField;
    qEstReqNAME_KIND: TIBStringField;
    qEstReqNAME_REGTYPE: TIBStringField;
    edRas2: TEdit;
    edTotal2: TEdit;
    Panel35: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    N5: TMenuItem;
    qOrdWorkARCH: TIBStringField;
    qOrdersIS_RESERVE: TIntegerField;
    ToolButton37: TToolButton;
    cbAll: TCheckBox;
    TabSheet5: TTabSheet;
    Panel36: TPanel;
    rg22: TRadioGroup;
    rg33: TRadioGroup;
    GroupBox6: TGroupBox;
    dtp_in_an: TDBDateTimeEditEh;
    dtp_out_an: TDBDateTimeEditEh;
    rg44: TRadioGroup;
    Panel39: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Splitter43: TSplitter;
    qShipp_A_Plan_Progn: TIBQuery;
    qShipp_A_Plan_PrognNAME: TIBStringField;
    qShipp_A_Plan_PrognID: TIntegerField;
    qShipp_A_Plan_PrognSUMMA: TFloatField;
    qShipp_A_Plan_PrognS1: TFloatField;
    qShipp_A_Plan_PrognS2: TFloatField;
    qShipp_A_Plan_PrognS3: TFloatField;
    qShipp_A_Plan_PrognS4: TFloatField;
    qShipp_A_Plan_PrognS5: TFloatField;
    qShipp_A_Plan_PrognS6: TFloatField;
    qShipp_A_Plan_PrognS7: TFloatField;
    qShipp_A_Plan_PrognS8: TFloatField;
    qShipp_A_Plan_PrognS9: TFloatField;
    qShipp_A_Plan_PrognS10: TFloatField;
    qShipp_A_Plan_PrognS11: TFloatField;
    qShipp_A_Plan_PrognS12: TFloatField;
    qShipp_A_Plan_PrognS13: TFloatField;
    qShipp_A_Plan_PrognS14: TFloatField;
    qShipp_A_Plan_PrognS15: TFloatField;
    qShipp_A_Plan_PrognS16: TFloatField;
    qShipp_A_Plan_PrognS17: TFloatField;
    qShipp_A_Plan_PrognS18: TFloatField;
    qShipp_A_Plan_PrognS19: TFloatField;
    qShipp_A_Plan_PrognS20: TFloatField;
    qShipp_A_Plan_PrognS21: TFloatField;
    qShipp_A_Plan_PrognS22: TFloatField;
    qShipp_A_Plan_PrognS23: TFloatField;
    qShipp_A_Plan_PrognS24: TFloatField;
    qShipp_A_Plan_PrognS25: TFloatField;
    qShipp_A_Plan_PrognS26: TFloatField;
    qShipp_A_Plan_PrognS27: TFloatField;
    qShipp_A_Plan_PrognS28: TFloatField;
    qShipp_A_Plan_PrognS29: TFloatField;
    qShipp_A_Plan_PrognS30: TFloatField;
    qShipp_A_Plan_PrognS31: TFloatField;
    qShipp_A_Plan_PrognS32: TFloatField;
    qShipp_A_Plan_PrognS33: TFloatField;
    qShipp_A_Plan_PrognS34: TFloatField;
    qShipp_A_Plan_PrognS35: TFloatField;
    qShipp_A_Plan_PrognS36: TFloatField;
    qShipp_A_Plan_PrognS37: TFloatField;
    qShipp_A_Plan_PrognS38: TFloatField;
    qShipp_A_Plan_PrognS39: TFloatField;
    qShipp_A_Plan_PrognS40: TFloatField;
    qShipp_A_Plan_PrognS41: TFloatField;
    qShipp_A_Plan_PrognS42: TFloatField;
    qShipp_A_Plan_PrognS43: TFloatField;
    qShipp_A_Plan_PrognS44: TFloatField;
    qShipp_A_Plan_PrognS45: TFloatField;
    qShipp_A_Plan_PrognS46: TFloatField;
    qShipp_A_Plan_PrognS47: TFloatField;
    qShipp_A_Plan_PrognS48: TFloatField;
    qShipp_A_Plan_PrognS49: TFloatField;
    qShipp_A_Plan_PrognS50: TFloatField;
    qShipp_A_Plan_PrognS51: TFloatField;
    qShipp_A_Plan_PrognS52: TFloatField;
    qShipp_A_Plan_PrognS53: TFloatField;
    dbg81: TDBGridEh;
    dsShipp_A_Plan_Progn: TDataSource;
    qShipp_A_Plan_PrognN_ORDER: TIBStringField;
    qShipp_A_Plan_PrognNAME_ORD: TIBStringField;
    qOrdersKOL_DAY: TIntegerField;
    qOrdersVID: TIBStringField;
    ToolButton38: TToolButton;
    qOrdersID_AGENT: TIntegerField;
    qEstTitl_backSUM_PROC_ONE: TFloatField;
    qEstTitl_backnSUM_TOTAL_SALE_ONE: TFloatField;
    Label81: TLabel;
    edFnd: TEdit;
    dbgEstEv: TDBGridEh;
    Splitter44: TSplitter;
    qEstEV: TIBQuery;
    dsEstEv: TDataSource;
    qEstEVF_1: TIBStringField;
    qEstEVID_ESTIMATE: TIntegerField;
    qEstEVNAME: TIBStringField;
    qEstEVAMOUNT: TIntegerField;
    qEstEVPRICE_DATE: TDateField;
    qEstEVSUM_NDS: TFloatField;
    qEstEVPRICE_DELIVERY: TFloatField;
    qEstEVPRICE_TOOLS: TFloatField;
    qEstEVPROFIT: TFloatField;
    qEstEVDOP_PRICE: TFloatField;
    qEstEVD_CREATE: TDateTimeField;
    qEstEVFIOCR: TIBStringField;
    qEstEVD_CONFIRM: TDateTimeField;
    qEstEVFIOCONF: TIBStringField;
    qEstEVID_DOC: TIntegerField;
    qEstEVTOTAL_SUM: TFloatField;
    qEstEVTOTAL_SUM_AL: TFloatField;
    qEstEVSTATUS: TIntegerField;
    qEstEVID_VERSION: TIntegerField;
    qEstEVSUM_OPER: TFloatField;
    qEstEVSUM_MAT: TFloatField;
    qEstEVSUM_OPER_PROC: TFloatField;
    qEstEVSUM_MAT_PROC: TFloatField;
    qEstEVSUM_PROC: TFloatField;
    qEstEVSUM_PROC_ONE: TFloatField;
    qEstEVnSUM_TOTAL_SALE: TFloatField;
    qEstEVnSUM_TOTAL_SALE_ONE: TFloatField;
    cbChng: TComboBox;
    dbgSumO: TDBGridEh;
    Panel40: TPanel;
    Splitter45: TSplitter;
    qSumO: TIBQuery;
    dsSumO: TDataSource;
    qSumOID: TIntegerField;
    qSumONAME: TIBStringField;
    qSumOEXTRACT: TSmallintField;
    qSumOID_CURRENCY: TIntegerField;
    qSumONAME_CUR: TIBStringField;
    qSumOPRICE_SUM: TIBBCDField;
    qSumODELIVERY_SUM: TFloatField;
    qSumOKOL: TIntegerField;
    qSUM_Ord_Y_MID: TIntegerField;
    qSUM_Ord_Y_MNAME: TIBStringField;
    qSUM_Ord_YID: TIntegerField;
    qSUM_Ord_YNAME: TIBStringField;
    qSUM_OrdNAME: TIBStringField;
    Splitter46: TSplitter;
    pc2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel41: TPanel;
    SpeedButton14: TSpeedButton;
    dbg61_22: TDBGridEh;
    tsRDoc: TTabSheet;
    Panel42: TPanel;
    dsRDoc: TDataSource;
    qRDoc: TIBQuery;
    od2: TOpenDialog;
    DBGridEh2: TDBGridEh;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    qRDocID_REQ_DOC: TIntegerField;
    qRDocID_REQUEST: TIntegerField;
    qRDocD_EDIT: TDateField;
    qRDocNAME: TIBStringField;
    qRDocFIO: TIBStringField;
    qRDocID_DOC: TIntegerField;
    qRDocD_REJECT: TDateField;
    cbDEl: TCheckBox;
    ToolButton34: TToolButton;
    SpeedButton18: TSpeedButton;
    GroupBox7: TGroupBox;
    Panel43: TPanel;
    cbDoc: TCheckBox;
    dbgDoc: TDBGridEh;
    qPDoc: TIBQuery;
    dsPDoc: TDataSource;
    qPDocID_PROJECT_DOC: TIntegerField;
    qPDocNAME: TIBStringField;
    qPDocDOC_TYPE: TIntegerField;
    qPDocNUMBER: TIBStringField;
    qPDocnTP: TStringField;
    qPDocSTATUS: TIntegerField;
    Splitter47: TSplitter;
    qOrdersDOCNAME: TIBStringField;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    qOrdersORDKIND: TIBStringField;
    pmOrd: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    qOrdersORD_KIND: TIntegerField;
    pmOrd_TZ: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    lbOrdKind: TLabel;
    pmOrdReq: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    tsProd: TTabSheet;
    Splitter48: TSplitter;
    Panel48: TPanel;
    dbTr: TDBS_TreeView;
    Panel49: TPanel;
    Splitter49: TSplitter;
    Panel50: TPanel;
    dbgSellord: TDBGridEh;
    Panel51: TPanel;
    dbgProdOrd: TDBGridEh;
    Panel52: TPanel;
    qProdOrd: TIBQuery;
    qSellOrd: TIBQuery;
    dsSellord: TDataSource;
    dsProdOrd: TDataSource;
    qSellOrdID_ORDER: TIntegerField;
    qSellOrdN_ORDER: TIBStringField;
    qSellOrdNAME: TIBStringField;
    qSellOrdPRICE: TIBBCDField;
    qSellOrdPRICEA: TIBBCDField;
    qSellOrdDEF_SUM: TFloatField;
    qSellOrdD_OPEN: TDateTimeField;
    qSellOrdD_READY: TDateField;
    qSellOrdD_CLOSE: TDateTimeField;
    qSellOrdD_REJECT: TDateTimeField;
    qSellOrdSTATUS: TIntegerField;
    qSellOrdD_FIX: TDateTimeField;
    qSellOrdNPROJ: TIBStringField;
    qSellOrdFIO_MANAGER: TIBStringField;
    qSellOrdSHIP: TFloatField;
    qSellOrdRECEIVE: TFloatField;
    qProdOrdID_ORDER: TIntegerField;
    qProdOrdN_ORDER: TIBStringField;
    qProdOrdNAME: TIBStringField;
    qProdOrdAMOUNT: TIBBCDField;
    qProdOrdPRICE: TIBBCDField;
    qProdOrdPRICEA: TIBBCDField;
    qProdOrdDEF_SUM: TFloatField;
    qProdOrdD_OPEN: TDateTimeField;
    qProdOrdD_READY: TDateField;
    qProdOrdD_CLOSE: TDateTimeField;
    qProdOrdD_REJECT: TDateTimeField;
    qProdOrdSTATUS: TIntegerField;
    qProdOrdD_FIX: TDateTimeField;
    qProdOrdID_BATCH: TIntegerField;
    qProdOrdNPROJ: TIBStringField;
    qProdOrdFIO_MANAGER: TIBStringField;
    qProdOrdRECEIVE: TFloatField;
    qProdOrdPRODUSED: TFloatField;
    qProdOrdBUCH_PROD_NAME: TIBStringField;
    qProdOrdNPROD: TIBStringField;
    qProdOrdSHIP_AMOUNT: TFloatField;
    qProdOrdSHIP_SUMM: TFloatField;
    qProdOrdSHIP: TFloatField;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    Panel53: TPanel;
    Label82: TLabel;
    edFndProd: TEdit;
    Label83: TLabel;
    Label84: TLabel;
    ppm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    qNewCH: TIBQuery;
    dsNewCH: TDataSource;
    qNewCHID_PROJ_CHAIN: TIntegerField;
    qNewCHID_PROJECT: TIntegerField;
    qNewCHNAME: TIBStringField;
    qNewCHD_EDIT: TDateTimeField;
    qNewCHID_EDIT: TIntegerField;
    qNewCHD_READY: TDateField;
    qNewCHREM: TMemoField;
    upNewCH: TIBUpdateSQL;
    qWorkCH: TIBQuery;
    dsWorkCH: TDataSource;
    qWorkCHID_CHAIN_TRAFF: TIntegerField;
    qWorkCHID_CHAIN: TIntegerField;
    qWorkCHID_AREA: TIntegerField;
    qWorkCHID_OPERATION: TIntegerField;
    qWorkCHSTATUS: TIntegerField;
    qWorkCHAMOUNT: TFloatField;
    qWorkCHWORK_TIME: TFloatField;
    qWorkCHD_FIX: TDateTimeField;
    qWorkCHID_FIX: TIntegerField;
    qWorkCHD_EDIT: TDateTimeField;
    qWorkCHID_EDIT: TIntegerField;
    qWorkCHID_CUSTOMER: TIntegerField;
    qWorkCHID_EXECUTOR: TIntegerField;
    qWorkCHREM: TMemoField;
    qWorkCHMANAGER: TIBStringField;
    qWorkCHEXECUTOR: TIBStringField;
    qWorkCHREDACTOR: TIBStringField;
    qWorkCHD_READY: TDateField;
    qOperCH: TIBQuery;
    dsOperCH: TDataSource;
    qWorkCHOPERATION: TIBStringField;
    upWorkCH: TIBUpdateSQL;
    qOperCHNAME: TIBStringField;
    qOperCHID_OPERATION: TIntegerField;
    qOperCHID_AREA: TIntegerField;
    dsParamCH: TDataSource;
    qParamCH: TIBQuery;
    dsDocCH: TDataSource;
    qDocCH: TIBQuery;
    qDocCHID_CHAIN_TRAFF: TIntegerField;
    qDocCHID_DOC: TIntegerField;
    qDocCHNAME: TIBStringField;
    qDocCHDOC_PATH: TIBStringField;
    qDocCHID_DB: TIntegerField;
    qDocCHREM: TMemoField;
    qDocCHNEVENT: TIBStringField;
    od3: TOpenDialog;
    qNewCHD_CLOSE: TDateTimeField;
    qNewCHID_CLOSE: TIntegerField;
    qNewCHMANAGER: TIBStringField;
    qParamCHNAME: TIBStringField;
    qParamCHPARAM: TIBStringField;
    tschain: TTabSheet;
    gb1: TGroupBox;
    CoolBar3: TCoolBar;
    tbNewCH: TToolBar;
    ToolButton40: TToolButton;
    ToolButton46: TToolButton;
    tbCh: TToolButton;
    ToolButton49: TToolButton;
    ToolButton51: TToolButton;
    ToolButton52: TToolButton;
    tb4: TToolButton;
    ToolButton58: TToolButton;
    dbgNewCH: TDBGridEh;
    Splitter51: TSplitter;
    gb2: TGroupBox;
    CoolBar4: TCoolBar;
    ToolBar7: TToolBar;
    tbSel: TToolButton;
    ToolButton56: TToolButton;
    tbNewO: TToolButton;
    ToolButton63: TToolButton;
    tbDel: TToolButton;
    ToolButton50: TToolButton;
    tbExec: TToolButton;
    ToolButton53: TToolButton;
    tbRed: TToolButton;
    ToolButton60: TToolButton;
    Label85: TLabel;
    lcbOper: TDBLookupComboboxEh;
    dbgOper: TDBGridEh;
    Splitter53: TSplitter;
    pc3: TPageControl;
    tsparamCH: TTabSheet;
    CoolBar7: TCoolBar;
    ToolBar10: TToolBar;
    dbgproj: TDBGridEh;
    tsDocCH: TTabSheet;
    CoolBar8: TCoolBar;
    ToolBar11: TToolBar;
    ToolButton65: TToolButton;
    ToolButton66: TToolButton;
    ToolButton67: TToolButton;
    dbgDocCh: TDBGridEh;
    tsstateCH: TTabSheet;
    CoolBar9: TCoolBar;
    ToolBar12: TToolBar;
    dbgstate: TDBGridEh;
    qNewCHID_OPEN: TIntegerField;
    qNewCHD_OPEN: TDateTimeField;
    qNewCHD_PACK: TDateField;
    dsStateCH: TDataSource;
    qStateCH: TIBQuery;
    qStateCHID_CHAIN_STATE: TIntegerField;
    qStateCHID_CHAIN_TRAFF: TIntegerField;
    qStateCHID_CHAIN_EVENT: TIntegerField;
    qStateCHD_FACT: TDateTimeField;
    qStateCHID_FACT: TIntegerField;
    qStateCHNAME: TIBStringField;
    qStateCHFIO: TIBStringField;
    qStateCHOPER_NAME: TIBStringField;
    p5: TPanel;
    Panel56: TPanel;
    bPost: TBitBtn;
    GroupBox8: TGroupBox;
    Splitter50: TSplitter;
    qParamCHP_TYPE: TIntegerField;
    qParamCHID_MAIN_PARAM: TIntegerField;
    dsChain: TDataSource;
    qChain: TIBQuery;
    qChainID_PROJ_CHAIN: TIntegerField;
    qChainNAME: TIBStringField;
    IBExtract1: TIBExtract;
    Label90: TLabel;
    cb1: TCheckBox;
    qWorkCHN_STATUS: TIBStringField;
    qWorkCHNAME: TIBStringField;
    ToolButton57: TToolButton;
    tb21: TToolButton;
    tb22: TToolButton;
    ToolButton64: TToolButton;
    qNewCHPROJECT: TIBStringField;
    ToolButton61: TToolButton;
    p12: TPanel;
    qTempCH: TIBQuery;
    dsTempCH: TDataSource;
    lcbTempCH: TDBLookupComboboxEh;
    qTempCHID_CHAIN_TMPL: TIntegerField;
    qTempCHNAME: TIBStringField;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    ToolButton62: TToolButton;
    ToolButton70: TToolButton;
    ToolButton71: TToolButton;
    ToolButton72: TToolButton;
    ToolButton73: TToolButton;
    ToolButton74: TToolButton;
    sd1: TSaveDialog;
    qWorkCHCONTROL: TIBStringField;
    qWorkCHDESCR: TMemoField;
    qWorkCHID_LEVEL: TIntegerField;
    putv: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    pwork: TPopupMenu;
    N14: TMenuItem;
    qInsert: TIBQuery;
    ToolButton47: TToolButton;
    tb34: TToolButton;
    ToolButton48: TToolButton;
    cb3: TCheckBox;
    ToolButton55: TToolButton;
    tb59: TToolButton;
    qDocCHSTATUS: TIntegerField;
    docUtv: TPopupMenu;
    N16: TMenuItem;
    N17: TMenuItem;
    ToolButton59: TToolButton;
    Bevel1: TBevel;
    tsParamObj: TTabSheet;
    Bevel4: TBevel;
    CoolBar5: TCoolBar;
    ToolBar8: TToolBar;
    ToolButton68: TToolButton;
    dbgParamObj: TDBGridEh;
    qParamObj: TIBQuery;
    dsParamObj: TDataSource;
    qParamObjNAME: TIBStringField;
    qParamObjPARAM: TIBStringField;
    qParamObjID_MAIN_PARAM: TIntegerField;
    qParamObjP_TYPE: TIntegerField;
    ToolButton75: TToolButton;
    qParamCHD_FIX: TDateTimeField;
    qParamCHEDITOR: TIBStringField;
    qParamObjD_FIX: TDateTimeField;
    qParamObjEDITOR: TIBStringField;
    qDocCHFILE_EXP: TIBStringField;
    tsComplect: TTabSheet;
    CoolBar6: TCoolBar;
    ToolBar9: TToolBar;
    dbgComplect: TDBGridEh;
    ToolButton77: TToolButton;
    qEstReqD_CALC: TDateField;
    dsComplect: TDataSource;
    qComplect: TIBQuery;
    qManager: TIBQuery;
    dsManager: TDataSource;
    qManagerID_P: TIntegerField;
    qManagerMANAGER: TIBStringField;
    qComplectID_COMPL_POS: TIntegerField;
    qComplectID_ITEM: TIntegerField;
    qComplectNAME: TIBStringField;
    qComplectID_UNIT: TIntegerField;
    qComplectID_CH_COMPL: TIntegerField;
    qComplectID_CHAIN: TIntegerField;
    qComplectIN_PRODUCT: TIntegerField;
    qComplectCOMPLECT: TIBStringField;
    qComplectAMOUNT: TFloatField;
    qComplectKLEY: TFloatField;
    qComplectSCOTCH: TFloatField;
    qComplectSUMKLEY: TFloatField;
    qComplectSUMSCOTCH: TFloatField;
    qComplectEDINICA: TIBStringField;
    ToolButton78: TToolButton;
    cbCompl: TCheckBox;
    ToolButton79: TToolButton;
    Label92: TLabel;
    qCompl: TIBQuery;
    dsCompl: TDataSource;
    qComplNAME: TIBStringField;
    qComplID_CH_COMPL: TIntegerField;
    lcbCompl: TDBLookupComboboxEh;
    qSumOTOTAL_SUM_PEO: TFloatField;
    qSumORAZ: TFloatField;
    qSUM_OrdTOTAL_SUM_PEO: TFloatField;
    qSUM_OrdRAZ: TFloatField;
    qSUM_Ord_YTOTAL_SUM_PEO: TFloatField;
    qSUM_Ord_YRAZ: TFloatField;
    qSUM_Ord_YnProfit: TFloatField;
    qSUM_OrdnProfit: TFloatField;
    qSumOnProfit: TFloatField;
    qComplectX_MELT: TFloatField;
    qComplectSUMX_MELT: TFloatField;
    pAll: TPanel;
    ToolButton80: TToolButton;
    tbClient: TToolButton;
    pSelClient: TPanel;
    qCust: TIBQuery;
    dsCust: TDataSource;
    Label87: TLabel;
    lcbCust: TDBLookupComboboxEh;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    qCustNAME: TIBStringField;
    qCustID_ITEM: TIntegerField;
    p7: TPanel;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    dbend: TDBDateTimeEditEh;
    dbbegin: TDBDateTimeEditEh;
    Label88: TLabel;
    Label93: TLabel;
    Label86: TLabel;
    ed_poisk: TEdit;
    lcbChain: TDBLookupComboboxEh;
    Label89: TLabel;
    Label91: TLabel;
    lcbManager: TDBLookupComboboxEh;
    cb4: TCheckBox;
    ToolButton54: TToolButton;
    qNewCHCLIENT: TIBStringField;
    tbFilter: TToolButton;
    ToolButton76: TToolButton;
    qNewCHID_PROJ_TYPE: TIntegerField;
    qNewCHPROJ_TYPE: TIBStringField;
    ToolButton69: TToolButton;
    tdEdit: TToolButton;
    qParamCHID_FIX: TIntegerField;
    qParamObjIS_NOT_NULL: TIntegerField;
    qParamObjID_FIX: TIntegerField;
    qDocCHTRAFF_NAME: TIBStringField;
    qDocCHID_CREATE: TIntegerField;
    qDocCHID_EDIT: TIntegerField;
    qDocCHCREATOR: TIBStringField;
    qDocCHID_CONFIRM: TIntegerField;
    qDocCHOPERATION: TIBStringField;
    qDocCHEDITOR: TIBStringField;
    qDocCHD_CREATE: TDateTimeField;
    qDocCHCONFIRM: TIBStringField;
    qDocCHD_CONFIRM: TDateTimeField;
    qDocCHD_EDIT: TDateTimeField;
    qOrdersPRICE_BEZ_NDS: TFloatField;
    qOperPRICE_BEZ_NDS: TFloatField;
    qOperTOTAL_BEZ_NDS: TFloatField;
    qOperCOST_BEZ_NDS: TFloatField;
    qOperCOST0_BEZ_NDS: TFloatField;
    qMatPRICE_BEZ_NDS: TFloatField;
    qMatTOTAL_BEZ_NDS: TFloatField;
    qEstTitl_backPRICE_DELIVERY_BEZ_NDS: TFloatField;
    qEstTitl_backPRICE_TOOLS_BEZ_NDS: TFloatField;
    qEstTitl_backTOTAL_SUM_BEZ_NDS: TFloatField;
    qEstTitl_backTOTAL_SUM_AL_BEZ_NDS: TFloatField;
    qEstTitl_backSUM_OPER_BEZ_NDS: TFloatField;
    qEstTitl_backSUM_MAT_BEZ_NDS: TFloatField;
    qEstTitl_backSUM_OPER_PROC_BEZ_NDS: TFloatField;
    qEstTitl_backSUM_MAT_PROC_BEZ_NDS: TFloatField;
    qEstTitl_backSUM_PROC_BEZ_NDS: TFloatField;
    qEstTitl_backSUM_PROC_ONE_BEZ_NDS: TFloatField;
    qEstTitl_backnSUM_TOTAL_SALE_BEZ_NDS: TFloatField;
    qEstTitl_backnSUM_TOTAL_SALE_ONE_BEZ_NDS: TFloatField;
    qOrder_Op_Type_OperTOTAL_PROC_BEZ_NDS: TFloatField;
    qOrder_LidPLAN_COST_PRICE_BEZ_NDS: TFloatField;
    qSumOprice_sum_bez_nds: TFloatField;
    qInvoiceTOTAL_SUM_BEZ_NDS: TFloatField;
    qAgent_OrdDEF_SUM_BEZ_NDS: TFloatField;
    qAgent_OrdDEF_DELIVERY_BEZ_NDS: TFloatField;
    qAgent_Ord_MenagerDEF_SUM_BEZ_NDS: TFloatField;
    qAgent_Ord_MenagerDEF_DELIVERY_BEZ_NDS: TFloatField;
    qMen_OrdDEF_SUM_BEZ_NDS: TFloatField;
    qMen_OrdDEF_DELIVERY_BEZ_NDS: TFloatField;
    qMen_OrdnFIO: TStringField;
    qMen_OrdDEF_SUM1: TFloatField;
    qMen_OrdDEF_DELIVERY1: TFloatField;
    qShipp_A_Plan_PrognSUMMA_BEZ_NDS: TFloatField;
    qNewCHCATEGORY: TIBStringField;
    qWorkCHCATEGORY_OPER: TIBStringField;
    qStateCHDESCR: TIBStringField;
    qOrdersPROFIT: TFloatField;
    qMes: TIBQuery;
    dsMessage: TDataSource;
    qMes_IN: TIBQuery;
    Panel54: TPanel;
    Label94: TLabel;
    qParamCHAMOUNT: TIBStringField;
    qParamObjAMOUNT: TIBStringField;
    DBqParamObj: TfrxDBDataset;
    DBqParamOper: TfrxDBDataset;
    DBqAll: TfrxDBDataset;
    qAll_compl: TIBQuery;
    qAll_complMANAGER: TIBStringField;
    qAll_complPROJECT: TIBStringField;
    qAll_complNAME: TIBStringField;
    qAll_complD_READY: TDateField;
    qAll_complOPERATION: TIBStringField;
    qAll_complCLIENT: TIBStringField;
    qAll_complTYPES_PROJECT: TIBStringField;
    qAll_complEXECUTOR: TIBStringField;
    qAll_complOPER_NAME: TIBStringField;
    qAll_complID_PROJ_CHAIN: TIntegerField;
    DBqCS: TfrxDBDataset;
    DBqCNS: TfrxDBDataset;
    qCS: TIBQuery;
    qCSID_COMPL_POS: TIntegerField;
    qCSID_ITEM: TIntegerField;
    qCSNAME: TIBStringField;
    qCSID_UNIT: TIntegerField;
    qCSID_CH_COMPL: TIntegerField;
    qCSID_CHAIN: TIntegerField;
    qCSIN_PRODUCT: TIntegerField;
    qCSCOMPLECT: TIBStringField;
    qCSAMOUNT: TFloatField;
    qCSKLEY: TFloatField;
    qCSSCOTCH: TFloatField;
    qCSSUMKLEY: TFloatField;
    qCSSUMSCOTCH: TFloatField;
    qCSX_MELT: TFloatField;
    qCSSUMX_MELT: TFloatField;
    qCNS: TIBQuery;
    qCNSID_COMPL_POS: TIntegerField;
    qCNSID_ITEM: TIntegerField;
    qCNSNAME: TIBStringField;
    qCNSID_UNIT: TIntegerField;
    qCNSID_CH_COMPL: TIntegerField;
    qCNSID_CHAIN: TIntegerField;
    qCNSIN_PRODUCT: TIntegerField;
    qCNSCOMPLECT: TIBStringField;
    qCNSAMOUNT: TFloatField;
    qCNSKLEY: TFloatField;
    qCNSSCOTCH: TFloatField;
    qCNSSUMKLEY: TFloatField;
    qCNSSUMSCOTCH: TFloatField;
    qCNSX_MELT: TFloatField;
    qCNSSUMX_MELT: TFloatField;
    N15: TMenuItem;
    qParam_Ob_j: TIBQuery;
    qParamC_H: TIBQuery;
    qParam_Ob_jID_MAIN_PARAM: TIntegerField;
    qParam_Ob_jPARAM: TIBStringField;
    qParam_Ob_jNAME: TIBStringField;
    qParam_Ob_jID_FIX: TIntegerField;
    qParam_Ob_jAMOUNT: TIBStringField;
    qParam_Ob_jP_TYPE: TIntegerField;
    qParam_Ob_jD_FIX: TDateTimeField;
    qParam_Ob_jEDITOR: TIBStringField;
    qParam_Ob_jIS_NOT_NULL: TIntegerField;
    qDocCHFILE_SIZE: TFloatField;
    Lcb_Cust: TDBLookupComboboxEh;
    Label95: TLabel;
    qWorkCHD_PLAN: TDateField;
    qNewCHDESCR: TMemoField;
    qParamCHIS_WORK: TIntegerField;
    grezerv: TGroupBox;
    qSmeta: TIBQuery;
    dsSmeta: TDataSource;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    lcbSmeta: TDBLookupComboboxEh;
    qSmetaID_CHAIN_TRAFF: TIntegerField;
    qSmetaID_ESTIMATE: TIntegerField;
    mMes: TRichEdit;
    qNewCHID_AGENT: TIntegerField;
    qEstTitl: TIBQuery;
    qEstTitlID_ESTIMATE: TIntegerField;
    qEstTitlNAME: TIBStringField;
    qEstTitlAMOUNT: TIntegerField;
    qEstTitlPRICE_DATE: TDateField;
    qEstTitlSUM_NDS: TFloatField;
    qEstTitlPRICE_DELIVERY: TFloatField;
    qEstTitlPRICE_TOOLS: TFloatField;
    qEstTitlPROFIT: TFloatField;
    qEstTitlDOP_PRICE: TFloatField;
    qEstTitlD_CREATE: TDateTimeField;
    qEstTitlFIOCR: TIBStringField;
    qEstTitlD_CONFIRM: TDateTimeField;
    qEstTitlFIOCONF: TIBStringField;
    qEstTitlID_DOC: TIntegerField;
    qEstTitlTOTAL_SUM: TFloatField;
    qEstTitlTOTAL_SUM_AL: TFloatField;
    qEstTitlSUM_OPER: TFloatField;
    qEstTitlSUM_MAT: TFloatField;
    qEstTitlSUM_OPER_PROC: TFloatField;
    qEstTitlSUM_MAT_PROC: TFloatField;
    qEstTitlSUM_PROC: TFloatField;
    qEstTitlSTATUS: TIntegerField;
    qEstTitlID_VERSION: TIntegerField;
    qEstTitlSUM_TOTAL_SALE: TFloatField;
    qEstTitlSUM_PROC_ONE: TFloatField;
    qEstTitlTOTAL_OPER: TFloatField;
    qEstTitlTOTAL_MAT: TFloatField;
    qEstTitlTOTAL_COM: TFloatField;
    qEstTitlDELTA: TFloatField;
    qEstTitlWEIGHT: TFloatField;
    qEstTitlECH: TFloatField;
    qEstTitlOUTSOURCE: TFloatField;
    qEstTitlSUM_KD: TFloatField;
    qEstTitlKD_COST: TFloatField;
    qEstTitlH_WORK_KD: TFloatField;
    qEstTitlnH_WORK_KD: TStringField;
    qEstTitlOVERHEADS: TFloatField;
    qEstTitlSEBES: TFloatField;
    qEstTitlUNIQ: TFloatField;
    qEstTitlPROC_REZ: TFloatField;
    qEstTitlREZERV: TFloatField;
    qEstTitlSEBES_NDS: TFloatField;
    qEstTitlSEBES_NDS_SUM: TFloatField;
    qEstTitlFULL_SEBES: TFloatField;
    qEstTitlNDS_FULL_SEBES: TFloatField;
    qEstTitlFULL_SEBES_BEZ_NDS: TFloatField;
    qEstTitlPROD_SEBES: TFloatField;
    qEstTitlNDS_PROD_SEBES: TFloatField;
    qEstTitlPROD_SEBES_BEZ_NDS: TFloatField;
    dsEstTitl: TDataSource;
    tbMes: TToolButton;
    dsEstFull: TDataSource;
    qEstFull: TIBQuery;
    qEstFullID_OBJ: TIntegerField;
    qEstFullNAME: TIBStringField;
    qEstFullUNAME: TIBStringField;
    qEstFullOBJ_AMOUNT: TFloatField;
    qEstFullOBJ_PRICE: TFloatField;
    qEstFullTOTAL: TFloatField;
    qEstFullAMOUNT_TIME: TFloatField;
    qEstFullCOST: TFloatField;
    qEstFullCOST0: TFloatField;
    qEstFullOBJ_AMOUNT_P: TFloatField;
    qEstFullPNAME: TIBStringField;
    qEstFullnAmount_Time: TStringField;
    qEstFullOBJ_TYPE: TIntegerField;
    qEstFullPRICEP: TFloatField;
    qEstFullDPRICE: TDateField;
    qEstFullSUM_RAS: TFloatField;
    qEstFullCOMM_AMOUNT: TFloatField;
    qEstFullBPRICE: TFloatField;
    qEstFullBDATE: TDateField;
    qEstFullDELTA_PRICE: TFloatField;
    qEstFullPLAN_PRICE: TFloatField;
    qEstFullCOMM_AMOUNT_RAZ: TFloatField;
    qEstFullPRICE_MINUS_COMM: TFloatField;
    qEstFullSUM_PROC: TFloatField;
    qEstFullAM_ONE: TFloatField;
    qEstFullAM_ONE_P: TFloatField;
    qEstFullAM_ONE_BEZDS: TFloatField;
    qEstFullnAmountTimeOne: TStringField;
    qEstFullnTOTAL_ONE: TFloatField;
    qEstFullPRICEP_NDS: TFloatField;
    qEstFullPRICEP_NDS_SUM: TFloatField;
    qEstFullOBJ_PRICE_NDS: TFloatField;
    qEstFullOBJ_PRICE_NDS_SUM: TFloatField;
    qEstFullID_EST: TIntegerField;
    dbgEstPosAll: TDBGridEh;
    qAll_complFUCK: TDateTimeField;
    qAll_complOBJ_DESCR: TIBStringField;
    qAll_complDESCR: TIBStringField;
    ToolButton36: TToolButton;
    ToolButton81: TToolButton;
    ToolButton82: TToolButton;
    ToolButton83: TToolButton;
    pb1: TProgressBar;
    PDF1: TMenuItem;
    fPDF: TfrxPDFExport;
    qWorkCHCUST: TIBStringField;
    qDocCHID_INT_STAT: TIntegerField;
    Label96: TLabel;
    lcbMan: TDBLookupComboboxEh;
    qMAn: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    dsMan: TDataSource;
    rOtchet: TfrxReport;
    qAll_complDESCR_EXEC: TMemoField;
    qAll_complDATETIME: TDateTimeField;
    tbOpen: TToolButton;
    ToolButton86: TToolButton;
    tbClose: TToolButton;
    tbRead: TToolButton;
    pSel_Proj_Man: TPanel;
    Label97: TLabel;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    lcb_Proj_Man: TDBLookupComboboxEh;
    q_Proj_Man: TIBQuery;
    ds_Proj_Man: TDataSource;
    q_Proj_ManID_P: TIntegerField;
    q_Proj_ManFIO: TIBStringField;
    ToolButton85: TToolButton;
    ToolButton87: TToolButton;
    edEst: TDBEdit;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    TabSheet8: TTabSheet;
    IBSQLMonitor1: TIBSQLMonitor;
    Memo1: TMemo;
    qOrdersIS_SELF: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbg2SortMarkingChanged(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure tb0Click(Sender: TObject);
    procedure dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure tb2Click(Sender: TObject);
    procedure qOrdersCalcFields(DataSet: TDataSet);
    procedure qDogovorCalcFields(DataSet: TDataSet);
    procedure ToolButton6Click(Sender: TObject);
    procedure dbg2DblClick(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure qEst_Op_Type_OperCalcFields(DataSet: TDataSet);
    procedure qOrder_Op_Type_OperCalcFields(DataSet: TDataSet);
    procedure ToolButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure tbs2Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure qPrjCalcFields(DataSet: TDataSet);
    procedure bb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure pcProjChange(Sender: TObject);
    procedure tbs3Click(Sender: TObject);
    procedure tbs7Click(Sender: TObject);
    procedure bbDizClick(Sender: TObject);
    procedure tbs5Click(Sender: TObject);
    procedure tbs6Click(Sender: TObject);
    procedure tbz2Click(Sender: TObject);
    procedure tbNew_RegClick(Sender: TObject);
    procedure tbz9Click(Sender: TObject);
    procedure tbz3Click(Sender: TObject);
    procedure tbz4Click(Sender: TObject);
    procedure tbz5Click(Sender: TObject);
    procedure tbz8Click(Sender: TObject);
    procedure dbg15DblClick(Sender: TObject);
    procedure qOperCalcFields(DataSet: TDataSet);
    procedure ToolButton19Click(Sender: TObject);
    procedure dbg15GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure lcbAgCloseUp(Sender: TObject; Accept: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbg14SortMarkingChanged(Sender: TObject);
    procedure tbMenClick(Sender: TObject);
    procedure tbAllClick(Sender: TObject);
    procedure dbg15SortMarkingChanged(Sender: TObject);
    procedure qEst_Limit_BillBeforeOpen(DataSet: TDataSet);
    procedure dbg18SortMarkingChanged(Sender: TObject);
    procedure edPrKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTotalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edPr1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTotal1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure cbPEOClick(Sender: TObject);
    procedure cbKDClick(Sender: TObject);
    procedure qOrdersAfterScroll(DataSet: TDataSet);
    procedure tbs1Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure ToolButton28Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure dbg22SortMarkingChanged(Sender: TObject);
    procedure dbg22GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure edFindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcbOrderChange(Sender: TObject);
    procedure cbOrdClick(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure lcbOrdCloseUp(Sender: TObject; Accept: Boolean);
    procedure qOrdWorkCalcFields(DataSet: TDataSet);
    procedure qOrder_MatBeforeOpen(DataSet: TDataSet);
    procedure dbg118SortMarkingChanged(Sender: TObject);
    procedure dbg28GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qSUM_Ord_Y_MCalcFields(DataSet: TDataSet);
    procedure qMen_OrdBeforeOpen(DataSet: TDataSet);
    procedure dbg41SortMarkingChanged(Sender: TObject);
    procedure sb5Click(Sender: TObject);
    procedure qMen_OrdAfterOpen(DataSet: TDataSet);
    procedure qMen_OrdCalcFields(DataSet: TDataSet);
    procedure dbg42SortMarkingChanged(Sender: TObject);
    procedure qMen_Ord_MonthBeforeOpen(DataSet: TDataSet);
    procedure qMen_Ord_MonthCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dbg51SortMarkingChanged(Sender: TObject);
    procedure qAgent_OrdBeforeOpen(DataSet: TDataSet);
    procedure pc5Change(Sender: TObject);
    procedure qAgent_Ord_MonthCalcFields(DataSet: TDataSet);
    procedure dbg52SortMarkingChanged(Sender: TObject);
    procedure qAgent_Ord_MonthBeforeOpen(DataSet: TDataSet);
    procedure qAgent_OrdAfterScroll(DataSet: TDataSet);
    procedure qAgent_Ord_MonthAfterScroll(DataSet: TDataSet);
    procedure sb6_1Click(Sender: TObject);
    procedure qMen_PackCalcFields(DataSet: TDataSet);
    procedure qMen_PackBeforeOpen(DataSet: TDataSet);
    procedure dbg61SortMarkingChanged(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure qMen_Pack_TProdCalcFields(DataSet: TDataSet);
    procedure qMen_Pack_TProdBeforeOpen(DataSet: TDataSet);
    procedure dbg61_2SortMarkingChanged(Sender: TObject);
    procedure qMen_Pack_AgentCalcFields(DataSet: TDataSet);
    procedure qMen_Pack_AgentBeforeOpen(DataSet: TDataSet);
    procedure dbg61_1SortMarkingChanged(Sender: TObject);
    procedure dbg61_21SortMarkingChanged(Sender: TObject);
    procedure qMen_Pack_TProd_MonthBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton6Click(Sender: TObject);
    procedure qMen_Pack_MonthBeforeOpen(DataSet: TDataSet);
    procedure qMen_Pack_Agent_MounthBeforeOpen(DataSet: TDataSet);
    procedure dbg61_11SortMarkingChanged(Sender: TObject);
    procedure qMen_Pack_AgentAfterScroll(DataSet: TDataSet);
    procedure qMen_PackAfterScroll(DataSet: TDataSet);
    procedure dbg61_0SortMarkingChanged(Sender: TObject);
    procedure qMen_Pack_TProdAfterScroll(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure cbMenClick(Sender: TObject);
    procedure cbAgent_MenClick(Sender: TObject);
    procedure cbTProdClick(Sender: TObject);
    procedure cbMen_TProdClick(Sender: TObject);
    procedure cbAgentClick(Sender: TObject);
    procedure cbTProd_AgentClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure qABCBeforeOpen(DataSet: TDataSet);
    procedure dbg71GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qABCAfterScroll(DataSet: TDataSet);
    procedure cbABC_ViborClick(Sender: TObject);
    procedure qEstReqAfterScroll(DataSet: TDataSet);
    procedure qEstTitl_backBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton8Click(Sender: TObject);
    procedure dbghEstGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qEstFull_backCalcFields(DataSet: TDataSet);
    procedure dbghEstSortMarkingChanged(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure qEstTitl_backCalcFields(DataSet: TDataSet);
    procedure dbghEstColumnsSUM_NDSUpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qEstTitl_backPRICE_DELIVERYChange(Sender: TField);
    procedure ToolButton4Click(Sender: TObject);
    procedure tb_1Click(Sender: TObject);
    procedure qDOCCalcFields(DataSet: TDataSet);
    procedure qDOCNewRecord(DataSet: TDataSet);
    procedure qDOCBeforePost(DataSet: TDataSet);
    procedure dbg4DblClick(Sender: TObject);
    procedure dbg44GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg44DblClick(Sender: TObject);
    procedure qFILL_DCalcFields(DataSet: TDataSet);
    procedure pcDocChange(Sender: TObject);
    procedure tb_2Click(Sender: TObject);
    procedure tb_5Click(Sender: TObject);
    procedure tb_6Click(Sender: TObject);
    procedure tb_7Click(Sender: TObject);
    procedure tb_9Click(Sender: TObject);
    procedure tb_8Click(Sender: TObject);
    procedure tb_12Click(Sender: TObject);
    procedure tb_11Click(Sender: TObject);
    procedure dbg140DblClick(Sender: TObject);
    procedure lcbProjCloseUp(Sender: TObject; Accept: Boolean);
    procedure tb_14Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure dbg27GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ToolButton37Click(Sender: TObject);
    procedure qShipp_A_Plan_PrognBeforeOpen(DataSet: TDataSet);
    procedure dbg81SortMarkingChanged(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure ToolButton38Click(Sender: TObject);
    procedure edFndKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qEstEVCalcFields(DataSet: TDataSet);
    procedure cbChngChange(Sender: TObject);
    procedure pc2Change(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qRDocBeforeOpen(DataSet: TDataSet);
    procedure ToolButton34Click(Sender: TObject);
    procedure tb_3Click(Sender: TObject);
    procedure tb_4Click(Sender: TObject);
    procedure qPDocCalcFields(DataSet: TDataSet);
    procedure dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qProjAfterScroll(DataSet: TDataSet);
    procedure qOperBeforeOpen(DataSet: TDataSet);
    procedure cbUsesClick(Sender: TObject);
    procedure cbAllClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure pcAllChange(Sender: TObject);
    procedure dbTrChange(Sender: TObject; Node: TTreeNode);
    procedure SpeedButton20Click(Sender: TObject);
    procedure edFndProdKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ToolButton40Click(Sender: TObject);
    procedure qNewCHBeforeInsert(DataSet: TDataSet);
    procedure tbChClick(Sender: TObject);
    procedure tbSelClick(Sender: TObject);
    procedure tbNewOClick(Sender: TObject);
    procedure dbgOperGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgNewCHSortMarkingChanged(Sender: TObject);
    procedure dbgOperSortMarkingChanged(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure ToolButton51Click(Sender: TObject);
    procedure tbd1Click(Sender: TObject);
    procedure ToolButton67Click(Sender: TObject);
    procedure dbgDocCHDblClick(Sender: TObject);
    procedure dbgDocCHSortMarkingChanged(Sender: TObject);
    procedure dbgNewCHKeyPress(Sender: TObject; var Key: Char);
    procedure bPostClick(Sender: TObject);
    procedure dbgprojSortMarkingChanged(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure dbgNewCHGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgstateSortMarkingChanged(Sender: TObject);
    procedure lcbChainCloseUp(Sender: TObject; Accept: Boolean);
    procedure lcbChainKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgOperColumns7UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgOperColumns3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure pc3Change(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure tb22Click(Sender: TObject);
    procedure qNewCHBeforeDelete(DataSet: TDataSet);
    procedure qWorkCHBeforeDelete(DataSet: TDataSet);
    procedure tb21Click(Sender: TObject);
    procedure ToolButton70Click(Sender: TObject);
    procedure dbgNewCHColumns2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgNewCHColumns9UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgNewCHColumns8UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgNewCHColumns7UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgOperColumns5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qWorkCHBeforeInsert(DataSet: TDataSet);
    procedure ToolButton72Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure tb34Click(Sender: TObject);
    procedure cb3Click(Sender: TObject);
    procedure tb59Click(Sender: TObject);
    procedure dbgDocChGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure docUtvChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure ToolButton68Click(Sender: TObject);
    procedure ToolButton75Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgParamObjDblClick(Sender: TObject);
    procedure dbgprojDblClick(Sender: TObject);
    procedure dbgParamObjSortMarkingChanged(Sender: TObject);
    procedure ed_poiskKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lcbManagerCloseUp(Sender: TObject; Accept: Boolean);
    procedure lcbManagerExit(Sender: TObject);
    procedure ToolButton77Click(Sender: TObject);
    procedure dbgComplectSortMarkingChanged(Sender: TObject);
    procedure dbgComplectGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure lcbComplCloseUp(Sender: TObject; Accept: Boolean);
    procedure lcbComplKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qSUM_OrdCalcFields(DataSet: TDataSet);
    procedure qSUM_Ord_YCalcFields(DataSet: TDataSet);
    procedure qSumOCalcFields(DataSet: TDataSet);
    procedure qWorkCHD_READYChange(Sender: TField);
    procedure qWorkCHNAMEChange(Sender: TField);
    procedure qNewCHAfterPost(DataSet: TDataSet);
    procedure qWorkCHAfterPost(DataSet: TDataSet);
    procedure qDocCHAfterPost(DataSet: TDataSet);
    procedure dbgOperContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure dbgDocChContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure mNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton24Click(Sender: TObject);
    procedure tbClientClick(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure cb4Click(Sender: TObject);
    procedure tbFilterClick(Sender: TObject);
    procedure dbgOperKeyPress(Sender: TObject; var Key: Char);
    procedure tdEditClick(Sender: TObject);
    procedure cbComplClick(Sender: TObject);
    procedure dbbeginCloseUp(Sender: TObject; Accept: Boolean);
    procedure dbbeginKeyPress(Sender: TObject; var Key: Char);
    procedure N15Click(Sender: TObject);
    procedure dbgOperDblClick(Sender: TObject);
    procedure Lcb_CustCloseUp(Sender: TObject; Accept: Boolean);
    procedure Lcb_CustExit(Sender: TObject);
    procedure ToolButton74Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure qEstTitlBeforeOpen(DataSet: TDataSet);
    procedure tbMesClick(Sender: TObject);
    procedure qEstFullBeforeOpen(DataSet: TDataSet);
    procedure dbg16SortMarkingChanged(Sender: TObject);
    procedure qWorkCHAfterScroll(DataSet: TDataSet);
    procedure ToolButton83Click(Sender: TObject);
    procedure ToolButton81Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure tbOpenClick(Sender: TObject);
    procedure tbCloseClick(Sender: TObject);
    procedure tbReadClick(Sender: TObject);
    procedure pSel_Proj_ManMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pSelClientMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure dbg14GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure IBSQLMonitor1SQL(EventText: String; EventTime: TDateTime);
  private
    C_CLI, kop_proj, ins_ord, Ysl, read_mes: Integer;
    Total: Extended;
    flag: byte;
    procedure OpenDOCS;
    procedure OpenProject_S;
    procedure Sum_Ords;
    procedure Vib(Ysl: Integer);
    function TestInfoOrder: Boolean;
    procedure NewOrdReq(ord_kind: byte);
    procedure NewOrd(ORD_KIND: byte; id_doc_tz: integer);
    procedure FindInTree_Det(ItemID: integer);

    procedure Open_Oper;
    procedure Open_State;

    procedure Open_DocCH;
    procedure Open_StateCH;
    function ReadFormula(s, func: string): real;
    procedure WMDropFiles(var Msg: TMessage);
    procedure Bez_NDS(Query: TIBQuery; y: Integer; ind: Integer; DBG:
      TDBGridEh);
    { Private declarations }
  public
    C_ORD, C_ORD1, Edit_Ord, C_PR, C_Req, id_men, ind_form, ID_EST,
      ID_ORDER, C_DOC, BDOC, S_CHAIN, s_chvar, id_traff, ID_Project: integer;
    edit_obj, mes: Byte;
    Men, param_oper, param_obj: string;
    q_Men_Ord_Month_Text: TStrings;

    procedure Open_Analiz_v;
    procedure OpenOrds;
    procedure OpenOrds_All;
    procedure Open_Param;
    procedure Open_ParamObj;
    procedure Open_Complect;
    procedure Open_CH;
    procedure OpenCli;
    procedure Open_Mes(Id_traff: Integer);
    procedure OpenEst_Req;
    { Public declarations }
  end;

var
  fmCliOrds: TfmCliOrds;
  f_KOrder: array[1..7] of TfmKOrder;
  fmParamCH: TfmParamCH;
const
  ORD_KIND_IND = 0;
  ORD_KIND_PROD = 1;
implementation
uses unMain, unIS, unKOrd, unREP, unNewPrj, unNewDiz, Un_Find,
  unKEReq, UnEstCalc, unCH_REQ, unKCH_REQ, unFILL, uAll, unClients,
  UnTestVersion, unDOCS, unMes, uExpl;

const
  id_Form = 38;

// Открытие отчета анализа по выручке
procedure TfmCliOrds.Open_Analiz_v;
var afsr :TDataSetNotifyEvent;
begin
 try
  Screen.Cursor := crHourGlass;

  if length(edY.Text) = 0 then
  begin
   ShowMessage('Введите год...');
   Exit;
  end;

  afsr := nil;

  // По менеджерам
  if pc6.ActivePage = tsAn_Pack_Men then
  begin

    afsr := qMen_Pack.AfterScroll;
    qMen_Pack.AfterScroll := nil;

    with qMen_Pack do
    begin
     Close;
     Open;
    end;
  // Application.ProcessMessages;
    with qMen_Pack_Month do
    begin
     Close;
     Open;
     if dbg61.Focused then Locate('id', qMen_PackID.AsInteger, []);
    end;
  // Application.ProcessMessages;
    if cbTProd.Checked then 
    with qPack_Men_TProd_Month do
    begin
     Close;
     ParamByName('id').AsInteger := qMen_PackID.AsInteger;
     ParamByName('y').AsInteger := StrToInt(edY.Text);
     ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
     Open;
    end;
    qMen_Pack.AfterScroll := afsr;
   end;

  // По клиентам
  if pc6.ActivePage = tsAn_Pack_Agent then
  begin
   afsr := qMen_Pack_Agent.AfterScroll;
   qMen_Pack_Agent.AfterScroll := nil;

   with qMen_Pack_Agent do
   begin
    Close;
    Open;
   end;

  // Application.ProcessMessages;

   with qMen_Pack_Agent_Mounth do
   begin
    Close;
    Open;
   end;

 //  Application.ProcessMessages;
   if cbMen.Checked then
   with qPack_Men_Agent_Month do
   begin
    Close;
    ParamByName('id').AsInteger := qMen_Pack_AgentID.AsInteger;
    ParamByName('y').AsInteger := StrToInt(edY.Text);
    ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
    Open;
    if dbg61_1.Focused then
     Locate('id', qMen_Pack_AgentID.AsInteger, []);
   end;

   qMen_Pack_Agent.AfterScroll := afsr;

  end;

  // По типам продукции
  if pc6.ActivePage = tsAn_Pack_TProd then
  begin

   afsr := qMen_Pack_TProd.AfterScroll;
   qMen_Pack_TProd.AfterScroll := nil;

   with qMen_Pack_TProd do
   begin
    Close;
    Open;
   end;

  // Application.ProcessMessages;
   
   with qMen_Pack_TProd_Month do
   begin
    Close;
    Open;
   end;
   
 //   Application.ProcessMessages;
  if cbAgent.Checked then
  with qPack_TProd_Agent_Month do
   begin
    Close;
    ParamByName('id').AsInteger := qMen_Pack_TProdID.AsInteger;
    ParamByName('y').AsInteger := StrToInt(edY.Text);
    ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
    Open;
    if dbg61_2.Focused then
      Locate('id', qMen_Pack_TProdID.AsInteger, []);
   end;
   qMen_Pack_TProd.AfterScroll := afsr;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.Bez_NDS(Query: TIBQuery; y: Integer; ind: Integer; DBG:
  TDBGridEh);
begin
  with Query, Query.SQL do
  begin
    Close;
    Clear;
    Add('select pt.id_ptype id, pt.name,');
    Add('sum(case when ((extract(year from p.d_pack) = :y)) then pp.shipped end) pack,');
    Add('sum(case when ((extract(year from p.d_pack) = :y)) then pp.shipped*');
    Add('((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) sum_pack,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(year from p.d_pack) = :y))');
    Add('then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) sum_pack_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 1) and');
    Add(' (extract(year from p.d_pack) =  :y)) then pp.shipped end) pack1,');
    Add('sum(case when ((extract(month from p.d_pack) = 1) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack1,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 1)');
    Add(' and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + ');
    Add('coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) s_pack1_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 2) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack2, sum(case when ((extract(month from p.d_pack) = 2)');
    Add('and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + ');
    Add('coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack2,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 2)');
    Add(' and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + ');
    Add('coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) s_pack2_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 3) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack3, sum(case when ((extract(month from p.d_pack) = 3)');
    Add(' and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add(' * r1.rate)/o.amount end) s_pack3,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 3)');
    Add(' and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add(' * r1.rate)/o.amount end),1)) s_pack3_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 4) and (extract(year from p.d_pack) =  :y))');
    Add(' then pp.shipped end) pack4,');
    Add('sum(case when ((extract(month from p.d_pack) = 4) and (extract(year from p.d_pack) =  :y))');
    Add(' then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack4,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 4) and ');
    Add('(extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add(' * r1.rate)/o.amount end),1)) s_pack4_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 5) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack5, sum(case when ((extract(month from p.d_pack) = 5) ');
    Add('and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add(' * r1.rate)/o.amount end) s_pack5, (select nds_val from get_nds_sum(sum(case when');
    Add('((extract(month from p.d_pack) = 5) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) s_pack5_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 6) and');
    Add('(extract(year from p.d_pack) =  :y)) then pp.shipped end) pack6,');
    Add('sum(case when ((extract(month from p.d_pack) = 6) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack6,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 6)');
    Add('and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add('* r1.rate)/o.amount end),1)) s_pack6_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 7) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack7, sum(case when ((extract(month from p.d_pack) = 7) and');
    Add('(extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0)) ');
    Add('* r1.rate)/o.amount end) s_pack7, (select nds_val from get_nds_sum(sum(case when');
    Add('((extract(month from p.d_pack) = 7) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) s_pack7_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 8) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack8, sum(case when ((extract(month from p.d_pack) = 8) ');
    Add('and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add('* r1.rate)/o.amount end) s_pack8,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 8)');
    Add('and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add('* r1.rate)/o.amount end),1)) s_pack8_bez_nds, sum(case when ((extract(month from p.d_pack) = 9)');
    Add('and (extract(year from p.d_pack) =  :y)) then pp.shipped end) pack9,');
    Add('sum(case when ((extract(month from p.d_pack) = 9) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack9,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 9)');
    Add(' and (extract(year from p.d_pack) =  :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add(' * r1.rate)/o.amount end),1)) s_pack9_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 10) and (extract(year from p.d_pack) =  :y))');
    Add(' then pp.shipped end) pack10, sum(case when ((extract(month from p.d_pack) = 10) ');
    Add('and (extract(year from p.d_pack) = :y)) then pp.shipped*((o.price + coalesce(o.pricea,0))');
    Add(' * r1.rate)/o.amount end) s_pack10, (select nds_val from get_nds_sum(sum(case when');
    Add('((extract(month from p.d_pack) = 10) and (extract(year from p.d_pack) = :y)) then');
    Add('pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) s_pack10_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 11) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack11,');
    Add('sum(case when ((extract(month from p.d_pack) = 11) and (extract(year from p.d_pack) = :y))');
    Add(' then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack11,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 11) and');
    Add('(extract(year from p.d_pack) = :y)) then pp.shipped*((o.price + coalesce(o.pricea,0)) ');
    Add('* r1.rate)/o.amount end),1)) s_pack11_bez_nds,');
    Add('sum(case when ((extract(month from p.d_pack) = 12) and (extract(year from p.d_pack) =  :y))');
    Add('then pp.shipped end) pack12,');
    Add('sum(case when ((extract(month from p.d_pack) = 12) and (extract(year from p.d_pack) = :y))');
    Add(' then pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount end) s_pack12,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from p.d_pack) = 12)');
    Add(' and (extract(year from p.d_pack) = :y)) then pp.shipped*((o.price + ');
    Add('coalesce(o.pricea,0)) * r1.rate)/o.amount end),1)) s_pack12_bez_nds');
    Add('from packing p join packpos pp on pp.id_packing = p.id_packing');
    Add('join project_ords o on o.id_order = pp.id_order and o.d_reject is null and o.amount > 0 and o.status > 19');
    Add(' join projects p1 on p1.id_project = o.id_project');
    Add(' join items i on i.id_item = o.id_agent');
    Add(' join personnel r on r.id_p = p1.id_manager');
    Add(' join ptypes pt on pt.id_ptype = o.id_cptype');
    Add(' join oper_types t on t.id_oper_type = pt.id_oper_type');
    Add('join rates r1 on r1.id_currency = o.id_currency and r1.on_date = ');
    Add('(select max(on_date) from rates where id_currency = o.id_currency and on_date <= p.d_pack)');
    Add('where p.d_accept is not null and p.pack_type = :pack_type and extract(year from p.d_pack) = :y');
    Add('group by pt.id_ptype, pt.name');
    Add('having sum(case when ((extract(year from p.d_pack) = :y)) then pp.shipped end) > 0');
    Add(OrdBy(DBG));
    ParamByName('y').AsInteger := y;
    ParamByName('pack_type').AsInteger := ind + 1;
  end;
end;

{$R *.dfm}

procedure TfmCliOrds.WMDropFiles(var Msg: TMessage);
var
  Obj: TWinControl;
  ListFiles: TStringList;
  i: Integer;
begin
  ListFiles := TStringList.Create;
  try
    // прием файлов от проводника Windows
    Obj := DropFiles(Msg, ListFiles);
    // Если список документов
    if (Obj = dbgDocCh) then
    begin
      // получить список файлов
      for i := 0 to ListFiles.Count - 1 do
      begin
        //tbd1Click(Self);
        //здесь должна быть процедура на запись документа
      end;

      // обновить
      //здесь должно быть обновление
    end;
  finally
    ListFiles.Free;
  end;
end;

procedure TfmCliOrds.Open_Mes(Id_traff: Integer);
var
  date_old, date_next, Date_S: TDate;
  afsr: TDataSetNotifyEvent;
begin
//******************************************************************************
//                   ОТРИСОВКА СООБЩЕНИЙ ВО ВКЛАДКЕ ОБЪЕКТЫ
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  afsr := qWorkCH.AfterScroll;
  qWorkCH.AfterScroll := nil;
  with qMes, qMes.SQL do
  begin
    Close;
    Clear;
    Add('select m.message_body, m.d_fix, p.fio creator, m.id_fix,');
    Add('(select n.id_me_message from me_pers n where');
    Add('n.id_me_message = m.id_message and n.id_p = m.id_fix) read_mes from');
    Add('proj_chain_traff_messages m join personnel p on p.id_p = m.id_fix');
    Add('where m.id_chain_traff = :id_chain_traff');
    Add('order by (m.d_fix)');
    ParamByName('id_chain_traff').AsInteger := ID_TRAFF;
    Open;
    FetchAll;
  end;
  qMes.First;
  with mMes do
  begin
    Lines.Clear;
    Lines.BeginUpdate;
    while (not qMes.Eof) do
    begin
      if qMes.FieldByName('read_mes').IsNull then
        date_next := DateOf(qMes.FieldByName('d_fix').AsDateTime);
      if (Date_s <> DateOf(qMes.FieldByName('d_fix').AsDateTime)) then
        Lines.Add('---------------------------------------------------------' +
          '----------------------------------------------');
      if (SysVars.RegTN <> qMes.FieldByName('id_fix').AsInteger) then
        SelAttributes.Color := clBlue
      else
        SelAttributes.Color := clRed;
      Lines.Add(' (' + qMes.FieldByName('creator').AsString + ') ');
      SelAttributes.Color := clGreen;
      Lines.Add(' |' + qMes.FieldByName('d_fix').AsString + '| ' + #13);
      SelAttributes.Color := clBlack;
      Lines.Add(' ' + qMes.FieldByName('message_body').AsString);
      Date_s := DateOf(qMes.FieldByName('d_fix').AsDateTime);
      qMes.Next;
    end;
    Lines.EndUpdate;
  end;
 finally
  qWorkCH.AfterScroll := afsr;
  Screen.Cursor := crDefault;
 end;
end;

function TfmCliOrds.ReadFormula(s, func: string): Real;  // ТРЕБУЕТ ОПТИМИЗАЦИИ КОДА
var
  i, k: integer;
  sf, ss, sv: string;
  wso: Boolean;
  so: real;
begin
//******************************************************************************
//           СЧИТЫВАНИЕ И РАЗБОР ФОРМУЛЫ ДЛЯ РАСЧЕТА ВРЕМЕНИ ОПЕРАЦИИ
//******************************************************************************
  sv := '';
  so := 0; // Выходная строка
  wso := True;
  // Начало переменной
  for i := 1 to Length(s) do
  begin
    if s[i] = '[' then
    begin
      sf := '';
      wso := False;
    end;
    // Окончание функции
    if wso and (s[i] = ']') then
      ;
    // Окончание переменной
    if not wso and ((s[i] = ']') or (s[i] = '(')) then
    begin
      wso := True;

      if sf[1] = 'R' then
      begin // Реквизит
        delete(sf, 1, 1);
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select m.name from oper_params p join main_params m');
          Add('on m.id_main_param = p.id_main_param');
          Add('where p.id_oper_param = :idp');
          ParamByName('idp').AsString := sf;
          Open;
        end;
      end; // Реквизит

      if sf[1] = 'K' then
      begin // Коэфф. по типу продукции
        delete(sf, 1, 1);
      end; //  Коэфф. по типу продукции

      if sf[1] = 'T' then
      begin // Коэфф. по типу продукции, тираж
        delete(sf, 1, 1);
      end; //  Коэфф. по типу продукции, тираж

      if sf[1] = 'P' then
      begin // Параметр
        delete(sf, 1, 1);
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select s.name from proj_chain_params m');
          Add('left join main_params_sets s on s.id_mp_set = m.id_mp_set');
          Add('where m.id_main_param = 32 and m.id_chain = :func');
          ParamByName('func').AsString := func;
          Open;
          if not dmIS.qIn.IsEmpty then
            so := strtofloat(dmIS.qIN.FieldByName('NAME').Asstring)
          else
            so := 0;
        end;
      end; // Параметр

      if (sf[1] = 'W') or (sf[1] = 'Z') then
      begin // Нормы техотхода
        if (sf[1] = 'W') then
          sv := '<техотход: ';
        if (sf[1] = 'Z') then
          sv := '<доп. техотход: ';
        delete(sf, 1, 1);
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select distinct i.name from oper_mats m join items i');
          Add('on i.id_item = m.id_item');
          Add('where m.id_oper_mats = :idp');
          ParamByName('idp').AsString := sf;
          Open;
         end;
      end; // Нормы техотхода

      if sf[1] = 'N' then
      begin // Нормы на приладку
        delete(sf, 1, 1);
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select distinct i.name from oper_mats m join items i');
          Add('on i.id_item = m.id_item');
          Add('where m.id_oper_mats = :idp');
          ParamByName('idp').AsString := sf;
          Open;
        end;
      end; // Нормы на приладку

      if sf[1] = 'M' then
      begin // Реквизит материала
        delete(sf, 1, 1);
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select distinct m.name, i.name iname from oper_mats_params p');
          Add('join main_params m on m.id_main_param = p.id_main_param');
          Add('join oper_mats o on o.id_oper_mats = p.id_oper_mats');
          Add('join items i on i.id_item = o.id_item');
          Add('where p.id_om_param = :idp');
          ParamByName('idp').AsString := sf;
          Open;
        end;
      end; // Реквизит материала

      if sf[1] = 'F' then
      begin // Функция
        delete(sf, 1, 1);
        ss := '';
        // Наименование функции
        for k := 1 to Length(sf) do
          if (sf[k] <> '(') then
            ss := ss + sf[k]
          else
          begin
            delete(sf, 1, k);
            Break;
          end;
        sv := sf;
      end; // Функция
    end;
    if wso and (s[i] <> ']') and (s[i] <> 'H') and (s[i] <> 'S') then
      ; // so := so + s[i];
    if not wso and (s[i] <> '[') then
      sf := sf + s[i];
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select s.f_value from calc_funcs s join calc_func_titles d on');
    Add('d.id_calc_func = s.id_calc_func where s.x_value = :cf2 and ');
    Add('d.id_main_param = 32 and d.id_calc_func = :cf1');
    ParamByName('cf1').AsString := sv;
    ParamByName('cf2').AsFloat := so;
    Open;
    if not IsEmpty then
      so := FieldByName('f_value').AsFloat;
  end;
  Result := so;
end;

procedure TfmCliOrds.Open_Complect;
var
  compl: Integer;
begin
//******************************************************************************
//                   ПЕРЕОТКРЫТИЕ КОПМЛЕКТУЮЩИХ ДЛЯ ОПЕРАЦИИ
//******************************************************************************
  with qComplect, qComplect.SQL do
  begin
    if Active then
      Compl := qComplectID_COMPL_POS.AsInteger;
    Close;
    Clear;
    Add('select c.id_compl_pos, l.id_ch_compl, c.id_unit, c.id_item, l.id_chain,');
    Add('c.name, c.in_product, coalesce(i.name,c.name) complect, u.name edinica,');
    Add('c.amount, ps.amount kley, w.amount scotch,');
    Add('(ps.amount * c.amount) sumkley, (w.amount * c.amount) sumscotch,');
    Add('a.amount x_melt, (c.amount * a.amount) sumx_melt from proj_chain_compl_pos c');
    Add('join proj_chain_compl l on l.id_ch_compl = c.id_ch_compl');
    Add('join proj_chain_traff f on f.id_chain = l.id_chain');
    Add('join proj_chain_traff_params s on s.id_chain_traff = f.id_chain_traff');
    Add('left join units u on u.id_unit = c.id_unit');
    Add('left join items i on i.id_item = c.id_item');
    Add('left join proj_chain_compl_pos_params ps on');
    Add('ps.id_compl_pos = c.id_compl_pos and ps.id_pch_param = 1');
    Add('left join proj_chain_compl_pos_params w on');
    Add('w.id_compl_pos = c.id_compl_pos and w.id_pch_param = 2');
    Add('left join proj_chain_compl_pos_params a on');
    Add('a.id_compl_pos = c.id_compl_pos and a.id_pch_param = 3');
    Add('where s.id_main_param = 31 and f.id_chain_traff = :id_chain_traff');
    if (Length(lcbCompl.Text) > 0) then
      Add('and l.id_ch_compl = :id_ch_compl')
    else
      Exit;
    if not cbCompl.Checked then
      Add('and c.in_product = 0');
    Add('order by (c.id_compl_pos)');
    ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    Open;
    Locate('id_compl_pos', Compl, []);
  end;
end;

procedure TfmCliOrds.Open_ParamObj;
var
  S_P: Integer;
begin
//******************************************************************************
//                      ПЕРЕОТКРЫТИЕ ПАРАМЕТРОВ ОБЪЕКТА
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  if qParamCH.Active then
    qParamCH.Close;
  if qDocCH.Active then
    qDocCH.Close;
  if qStateCH.Active then
    qStateCH.Close;
  if qComplect.Active then
    qComplect.Close;
  with qParamObj, qParamObj.SQL do
  begin
    if qparamObj.Active then
      S_P := qParamObjID_MAIN_PARAM.AsInteger;
    Close;
    Clear;
    Add(param_obj);
    Open;
    Locate('ID_MAIN_PARAM', S_P, []);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.Open_StateCH;
begin
//******************************************************************************
//                     ПЕРЕОТКРЫТИЕ ЗАПРОСА С ОБЪЕКТАМИ
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  with qNewCH, qNewCH.SQL do
  begin
    Close;
    Clear;
    Add('select p.id_chain_state, p.id_chain_traff, p.id_chain_event,');
    Add('p.d_fact, p.id_fact, e.name, a.fio, o.name oper_name');
    Add('from proj_chain_states p');
    Add('join proj_chain_events e on e.id_chain_event = p.id_chain_event');
    Add('join proj_chain_traff q on q.id_chain_traff = p.id_chain_traff');
    Add('join operations o on o.id_area = q.id_area');
    Add('and o.id_operation = q.id_operation');
    Add('left join personnel a on a.id_p = p.id_fact');
    Add('where p.id_chain_traff = :id_chain_traff');
    Add('order by p.d_fact');
    Add(OrderBy(dbgstate));
    Open;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.Open_DocCH;
var
  s_doc: Integer;
begin
//******************************************************************************
//                     ПЕРЕОТКРЫТИЕ ДОКУМЕНТОВ ОПЕРАЦИИ
//******************************************************************************
 try
  // запись операций -----------------------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  //----------------------------------------------------------------------------
  Screen.Cursor := crHourGlass;
  s_doc := qDocCHID_DOC.AsInteger;
  with f_CliOrds[fmMain.NF_CliOrds].qDocCH,
    f_CliOrds[fmMain.NF_CliOrds].qDocCH.SQL do
  begin
    Close;
    Clear;
    Add('select distinct p.id_doc, f.name traff_name, d.file_exp,');
    Add('coalesce(p.d_create,d.d_create) d_create, a.fio confirm,');
    Add('coalesce(p.id_create, d.id_creator) id_create, p.id_edit, d.file_size,');
    Add('coalesce(z.fio, r.fio) creator, p.status, p.d_confirm, p.id_confirm,');
    Add('p.d_edit, coalesce(p.id_int_stat,0) id_int_stat,');
    Add('(select o.name  from operations o where o.id_area = f.id_area');
    Add('and o.id_operation = f.id_operation) operation,');
    Add('d.name, d.doc_path, d.id_db, d.rem, q.fio editor, v.name nevent,');
    Add('p.id_chain_traff from proj_chain_docs p');
    Add('join docs d on d.id_doc = p.id_doc');
    Add('join proj_chain_traff f on f.id_chain_traff = p.id_chain_traff');
    Add('left join personnel z on z.id_p = d.id_creator');
    Add('left join personnel r on r.id_p = p.id_create');
    Add('left join personnel q on q.id_p = p.id_edit');
    Add('left join personnel a on a.id_p = p.id_confirm');
    Add('left join proj_chain_states s on s.id_chain_state = p.id_chain_state');
    Add('left join proj_chain_events v on v.id_chain_event = s.id_chain_event');
    if cb3.Checked then
      Add('where f.id_chain = :id_chain and not p.status = 3')
    else
      Add('where f.id_chain_traff = :id_chain_traff and not p.status = 3');
    Add(OrderBy(dbgDocCh));
    Open;
    locate('id_doc', s_doc, []);
  end;
 finally
  Screen.Cursor := crDefault;
 end; 
end;

procedure TfmCliOrds.Open_Param;
var
  S_PH: Integer;
begin
//******************************************************************************
//                     ПЕРЕОТКРЫТИЕ ПАРАМЕТРОВ ОПЕРАЦИИ
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  with f_CliOrds[fmMain.NF_CliOrds].qParamCH,
    f_CliOrds[fmMain.NF_CliOrds].qParamCH.SQL do
  begin
    if active then
      S_PH := qParamCHID_MAIN_PARAM.AsInteger;
    Close;
    Clear;
    Add(param_oper);
    Open;
    Locate('id_main_param', S_PH, []);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.Open_State;
var
  id_state: Integer;
begin
//******************************************************************************
//                       ПЕРЕОТКРЫТИЕ СОБЫТИЙ ОПЕРАЦИИ
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  with f_CliOrds[fmMain.NF_CliOrds].qStateCH,
    f_CliOrds[fmMain.NF_CliOrds].qStateCH.SQL do
  begin
    if active then
      id_state := f_CliOrds[fmMain.NF_CliOrds].qStateCHID_CHAIN_STATE.AsInteger;
    Close;
    Clear;
    Add('select p.id_chain_state, p.id_chain_traff, p.id_chain_event,');
    Add('p.d_fact, p.id_fact, e.name, a.fio, o.name oper_name, p.descr');
    Add('from proj_chain_states p');
    Add('join proj_chain_events e on e.id_chain_event = p.id_chain_event');
    Add('join proj_chain_traff q on q.id_chain_traff = p.id_chain_traff');
    Add('join operations o on o.id_area = q.id_area');
    Add('and o.id_operation = q.id_operation');
    Add('left join personnel a on a.id_p = p.id_fact');
    Add('where p.id_chain_traff = :id_chain_traff');
    Add(OrderBy(dbgstate));
    Open;
    locate('id_chain_state', id_state, []);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.Open_Oper;
var
  s: integer;
  afsr: TDataSetNotifyEvent;
begin
//******************************************************************************
//                          ПЕРЕОТКРЫТИЕ ОПЕРАЦИЙ
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  afsr := qWorkCH.AfterScroll;
  qWorkCH.AfterScroll := nil;
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;

  with f_CliOrds[fmMain.NF_CliOrds].qWorkCH,
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.SQL do
  begin
    if Active then s := qWorkCHID_CHAIN_TRAFF.AsInteger;
    Close;
    Clear;
    Add('select p.id_chain_traff, a.fio cust, p.id_chain, p.id_area, p.id_operation,');
    Add('p.d_ready, p.status, p.amount, p.work_time, p.d_fix, p.id_fix,');
    Add('p.d_edit, p.id_edit, p.id_customer, p.id_executor, p.rem, p.descr,');
    Add('o.name operation,i.fio manager, f.fio executor, r.fio redactor,');
    Add('s.fio control,p.id_level, q.name n_status, p.name, p.d_plan,');
    Add('(select first 1 m.name from proj_chain_traff_params a');
    Add('left join main_params_sets m on m.id_mp_set = a.id_mp_set');
    Add('where a.id_main_param = 33 and a.id_chain_traff = p.id_chain_traff)');
    Add(' category_oper from proj_chain_traff p');
    Add('join operations o on o.id_operation = p.id_operation');
    Add('and o.id_area = p.id_area');
    Add('join personnel i on i.id_p = p.id_fix ');
    Add('left join personnel f on f.id_p = p.id_executor');
    Add('left join personnel s on s.id_p = p.id_controller');
    Add('left join personnel r on r.id_p = p.id_edit');
    aDD('left join personnel a on a.id_p = p.id_customer');
    Add('left join proj_chain_events q on');
    Add('q.status = p.status');
    Add('where p.id_chain = :id_proj_chain and ((p.status is null) or ');
    Add('(p.status < 100 and not p.status = 11))');
    Add(Orderby(dbgOper));
    Open;
    Locate('id_chain_traff', s, []);
    if pc3.ActivePage = tsDocCH then
      Open_DocCH;
    if pc3.ActivePage = tsstateCH then
      Open_State;
    if pc3.ActivePage = tsparamCH then
      Open_Param;
    if pc3.ActivePage = tsParamObj then
      Open_ParamObj;
    if pc3.ActivePage = tsComplect then
      Open_Complect;
    with qCompl do
    begin
      Close;
      Open;
    end;
  end;
  Open_Mes(qWorkCHID_CHAIN_TRAFF.AsInteger);
 finally
  qWorkCH.AfterScroll := afsr;
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.Open_CH;
var
  S_CH: Integer;
begin
//******************************************************************************
//                ПЕРЕОТКРЫТИЕ ОПЕРАЦИЙ ОТ ОДНОЙ ОПЕРАЦИИ
//******************************************************************************
 try
  Screen.Cursor := crHourGlass;
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  with f_CliOrds[fmMain.NF_CliOrds].qNewCH,
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.SQL do
  begin
    if Active then
      S_CH := f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
    Close;
    Clear;
    Add('select p.id_proj_chain, p.id_project, p.name, p.d_edit, p.id_edit, p.d_ready,');
    Add('p.rem, p.d_close, p.id_close, p.id_open, p.d_open, p.descr, p.d_pack, e.fio manager,');
    Add('po.name project, p.id_proj_type,t.name proj_type, po.id_agent,');
    Add('i.name client, (select first 1 m.name from proj_chain_params s left ');
    Add('join main_params_sets m on m.id_mp_set = s.id_mp_set');
    Add('where s.id_main_param = 32 and s.id_chain = p.id_proj_chain) category ');
    Add('from proj_chains p join personnel e on e.id_p = p.id_open');
    Add('join projects po on po.id_project = p.id_project');
    Add('join items i on i.id_item = po.id_agent');
    add('left join proj_chain_types t on t.id_ch_type = p.id_proj_type');
    Add('where (1=1)');
    if cb4.Checked and cb1.Checked then
      Add('and p.id_open = ' + IntToStr(SysVars.RegTN));
    if not cb4.Checked and not cb1.Checked then
    begin
      Add('and p.id_project = :id_project');
      ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
    end;
    if cb1.Checked and not cb4.Checked then
      ;
    if not cb1.Checked and cb4.Checked then
    begin
      Add('and p.id_open = :id_open and p.id_project = :id_project');
      ParamByName('id_open').AsInteger := SysVars.RegTN;
      ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
    end;
    if (lcbManager.KeyValue <> null) then
      Add('and p.id_open = ' + IntToStr(lcbManager.KeyValue));
    if (Lcb_Cust.KeyValue <> null) then
      Add('and po.id_agent = ' + IntToStr(Lcb_Cust.KeyValue));
    if (lcbChain.KeyValue <> null) then
      Add('and p.id_proj_chain = ' + IntToStr(lcbChain.KeyValue));
    if not VarIsNull(dbbegin.Value) then
    begin
      Add('and p.d_open >= :d_b');
      ParamByName('d_b').AsDate := dbbegin.Value;
    end;
    if not VarIsNull(dbend.Value) then
    begin
      Add('and p.d_open <= :d_e + 1');
      ParamByName('d_e').AsDate := dbend.Value;
    end;
    Add(OrderBy(dbgNewCH));
    Open;
    FetchAll;
    Locate('id_proj_chain', S_CH, []);
    Open_Oper;
    Label94.Caption := 'Количество: ' + IntToStr(RecordCount);
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.NewOrd(ORD_KIND: byte; id_doc_tz: integer);
begin
//******************************************************************************
{                           ФОРМИРОВАНИЕ формы заказы
  входные парметры
   ORD_KIND  -
   id_doc_tz - код документа (ТЗ)
                                                                                }
//******************************************************************************
  if qClients.IsEmpty then Exit;

  if not fmMain.UF42 then Exit;

  if qPrj.IsEmpty then
  begin
   MsgError('Нет проекта. Создать заказ невозможно....','Внимание');
   Exit;
  end;

  if (id_doc_tz <> -1) then
  begin
    if qDoc.IsEmpty then
    begin
     MsgError('Список документов пуст. Создать заказ невозможно....','Внимание');
     Exit;
    end;

    if qDOCfILL.IsNull then
    begin
     MsgInformation('Документ не утвержден', 'Проверка статуса документа');
     Exit;
    end;

  end;
 try
  Screen.Cursor := crHourGlass;

  fmMain.NF_KOrder := fmMain.NF_KOrder + 1;

  if (fmMain.NF_KOrder > 7) then
  begin
    MsgInfo('Вы открыли больше 7 форм в рамках Формы "Заказы"....','Внимание');
    fmMain.NF_KOrder := fmMain.NF_KOrder - 1;
    Exit;
  end;

  if not assigned(f_KOrder[fmMain.NF_KOrder]) then
  Application.CreateForm(TfmKOrder, f_KOrder[fmMain.NF_KOrder]);
  f_KOrder[fmMain.NF_KOrder].ind_KOrder := fmMain.NF_KOrder;

  f_KOrder[fmMain.NF_KOrder].id_project := qPrjID_PROJECT.AsInteger;
  f_KOrder[fmMain.NF_KOrder].DBText5.Caption := qPrjID_PROJECT.AsString;
  f_KOrder[fmMain.NF_KOrder].DBText6.Caption := qPrjNAME.AsString;
  f_KOrder[fmMain.NF_KOrder].d_Open := 0; // дата открытия заказа
  with f_KOrder[fmMain.NF_KOrder] do
  begin
    Kop := 1;
    Edit_Ord := 1; //расчёт курса
    ID_ORDER := -1;
    lcbUragent.KeyValue := null;
    ID_AGENT := qClientsID_ITEM.AsInteger;
    ID_DOC := id_doc_tz;
    C_ORD_KIND := ORD_KIND;
    qOrdParam.Close;
    bbEstimate.Visible := True;
    ind_CliOrd := ind_form;
    if (ind_form_KOrder > 5) then
    begin
      MsgInfo('Вы открыли больше 5 форм в рамках Формы "Заказы"....','Внимание');
      ind_form_KOrder := ind_form_KOrder - 1;
    end;
    Show;
  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

function TfmCliOrds.TestInfoOrder: Boolean;
var
  f, b: double;
begin
  Result := True;
  if ((qOrdersIS_RESERVE.AsInteger = 1) and (qOrdersD_FIX.IsNull)) then
  begin
    MsgError('Необходимо установить дату планирования, т.к заказ имеет признак "Резерв".', 'Проверка данных');
    result := False;
    Exit;
  end;
  if not qOrdersID_DOGOVOR.IsNull then
  begin
    with qIns, qIns.sql do
    begin
      close;
      clear;
      add('select id_agent, DOG_DATE_OUT from dogovor where id_dogovor = :idd');
      parambyname('idd').AsInteger := qOrdersID_DOGOVOR.AsInteger;
      open;
      if (qOrdersID_AGENT.AsInteger <> fieldbyname('id_agent').AsInteger)
        and (qOrdersIS_COL.AsInteger <> 1) then
      begin
        MsgError('К заказу привязан договор чужого клиента!',
          'Проверка данных');
        result := false;
        exit;
      end;

      if (Server_now(dmIs.qIM) > fieldbyname('DOG_DATE_OUT').AsDateTime)
        and (not fieldbyname('DOG_DATE_OUT').isnull) then
      begin
        MsgError('К заказу привязан закрытый договор!', 'Проверка данных');
        result := false;
        exit;
      end;
    end;
  end;
  with qIns, qIns.sql do
  begin
    close;
    clear;
    add('select * from projects p');
    add('where p.id_agent = :id_agent and p.id_project = :id_project');
    parambyname('id_agent').AsInteger := qOrdersID_AGENT.AsInteger;
    parambyname('id_project').AsInteger := qOrdersID_PROJECT.AsInteger;
    open;
    if IsEmpty then
    begin
      MsgError('К заказу привязан проект чужого клиента!', 'Проверка данных');
      result := False;
      exit;
    end;
  end;

  with qINs, qIns.SQL do
  begin
    //проверка на утв. сметы
    close;
    clear;
    add('select is_est from ptypes where id_ptype = :id_ptype');
    parambyname('id_ptype').AsInteger := qOrdersID_CPTYPE.AsInteger;
    open;
    if (fieldbyname('is_est').AsInteger = 1) and (qOrdersORD_KIND.AsInteger <> 2)
      then
    begin
      close;
      clear;
      add('select id_estimate, price_date, current_date   from estimates where id_estimate = :id_estimate');
      parambyname('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
      Open;
      if (not IsEmpty) and (FieldByName('id_estimate').AsInteger > 0) then
      begin
        if (fmMain.S35 = 1) and
          (Int(fieldbyname('current_date').AsDateTime) -
          Int(fieldbyname('price_date').AsDateTime) > fmMain.S36) then
        begin
          result := False;
          MsgError('Нельзя утвердить заказ. Период расчета цен превышает ' +
            inttostr(fmMain.S36) + ' дн.!', 'Проверка данных');
          exit;
        end;
      end;
    end;
  end;

  with qINs, qIns.SQL do
  begin
    //проверка плана отгрузок
    close;
    clear;

    add('select sum(z.amount) sm from ORD_PLAN_SHIPP z');
    add('where z.ID_ORDER = :ID_ORDER and z.plan_type=21');

    parambyname('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    open;
    if (qIns.fieldbyname('sm').AsFloat = 0) or (qIns.fieldbyname('sm').AsFloat
      <> qOrdersAMOUNT.AsInteger) then
    begin
      Result := False;
      MsgError('Нельзя утвердить заказ. Не заполнен план отгрузок, либо не совпадает кол-во с тиражом', 'Проверка данных');
      Result := False;
      Exit;
    end;

    Close;
    Clear;
    Add('select p.* from ord_plan_shipp p ');
    Add('where p.id_order = :id_order and p.plan_type = 21');
    Add('and ((p.id_delivery_type is null) or ((p.obj_type is null)');
    Add('and (p.id_delivery_type <> 1)) or ((p.id_region is null)');
    Add('and (p.id_delivery_type <> 1)) or ((p.delivery_amount is null)');
    Add('and (p.id_delivery_type in (3,4))))');
    ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    if not qIns.IsEmpty then
    begin
      MsgError('Нельзя утвердить заказ. В плане отгрузок не заполенны поля для расчета доставки!', 'Проверка данных');
      result := False;
      exit;
    end;
    Close;
    Clear;
    Add('select p.* from ord_plan_shipp p ');
    Add('where p.id_order = :id_order and p.plan_type = 21');
    Add('and p.delivery_cost is null');
    ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    if not qIns.IsEmpty then
    begin
      MsgError('Нельзя утвердить заказ. В плане отгрузок не расчитаны стоимость доставки некоторых позиций!', 'Проверка данных');
      Result := False;
      Exit;
    end;
  end;
  if fmMain.S19 = 0 then
  begin
    with qINs, qINs.SQL do
    begin
      Close;
      Clear;
      Add('select status, d_fill from project_docs where id_project_doc = :doc1');
      ParamByName('doc1').AsInteger := qOrdersID_DOC.AsInteger;
      Open;
      if not ((FieldByName('status').AsInteger = 3) or (not
        FieldByName('d_fill').IsNull)) then
      begin
        MsgInformation('Документ-основание не подписан. Утверждение невозможно',
          'Проверка утверждения');
        result := False;
        exit;
      end;
    end;
  end;
  with qIns, qIns.sql do
  begin
    close;
    clear;
    add('select p.price, p.delivery_sum, p.plan_cost_price, p.manager_margin,');
    add('p.id_price_pos  from project_ords p');
    add('where p.id_order = :ido');
    parambyname('ido').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    b := fieldbyname('plan_cost_price').asFloat;
    if b = 0 then
      b := 1;
    //if fieldbyname('id_price_pos').IsNull then //не по прайсу

    f := (fieldbyname('price').asFloat - fieldbyname('delivery_sum').asFloat -
      fieldbyname('plan_cost_price').asFloat) / b * 100;
    // fieldbyname('plan_cost_price').asFloat * 100;
 { else //по прайсу
  begin
    f :=  (fieldbyname('price').asFloat - fieldbyname('delivery_sum').asFloat - fieldbyname('plan_cost_price').asFloat)
   / (b - fieldbyname('delivery_sum').asFloat) * 100;
    //     / (fieldbyname('plan_cost_price').asFloat - fieldbyname('delivery_sum').asFloat) * 100;
  end;}
    if abs(f - fieldbyname('manager_margin').AsFloat) > 0.001 then
    begin
      MsgError('Неправильная наценка, требуется пересчитать заказ!',
        'Проверка данных');
      result := False;
      exit;
    end;
  end;

  if qOrdersID_FIX.IsNull then
  begin
    MsgError('Не задан менеджер заказа.', 'Проверка данных');
    result := False;
    exit;
  end;
  if (qOrdersORD_KIND.AsInteger <> 2) then
  begin
    if qOrdersID_CPTYPE.IsNull then
    begin
      MsgError('Не задан тип продукции.', 'Проверка данных');
      result := False;
      exit;
    end;
    if qOrdersID_CPROD.IsNull then
    begin
      MsgError('Не задано производство.', 'Проверка данных');
      result := False;
      exit;
    end;
  end;
  {If Length(lbNomDog.Caption)=0 Then begin
   MsgError('Не задан № договора или договор не принадлежит клиенту','Проверка данных');
   result := False;
   exit;
  end;
  }
  if qOrdersNAME.IsNull then
  begin
    MsgError('Не задано наименование заказа.', 'Проверка данных');
    result := False;
    exit;
  end;
  if (qOrdersFULL_NAME.IsNull) or (qOrdersFULL_NAME.AsString = '') then

    with qIns, qIns.SQL do
    begin
      Close;
      Clear;
      Add('update project_ords set full_name = :name where id_order = :id_order');
      ParamByName('name').AsString := qOrdersNAME.AsString;
      ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
      ExecSQL;
    end;

  {With qIns, qIns.SQL do  //пока что убрать, выйдет Аня из отпуска - обсудить
   begin
    Close;
    Clear;
    Add('select * from est_sum_oper_types e');
    add('where e.id_estimate = :ide and e.id_ptype = :idp');
    ParamByName('ide').AsInteger := qOrdersID_ESTIMATE.AsInteger;
    ParamByName('idp').AsInteger := qOrdersID_CPTYPE.AsInteger;
    Open;

    if IsEmpty then
    begin
      MsgError('Несоответсвие типов продукции заказа и сметы!','Проверка данных');
      result := False;
      exit;
    end;
   end;}

  with qIns, qIns.SQL do
  begin
    close;
    clear;
    add('select is_est from ptypes where id_ptype = :id_ptype');
    parambyname('id_ptype').AsInteger := qOrdersID_CPTYPE.AsInteger;
    open;
    if (fieldbyname('is_est').AsInteger = 1) and (qOrdersORD_KIND.AsInteger <> 2)
      then
    begin
      if qOrdersID_ESTIMATE.IsNull then
      begin
        MsgError('Не задана смета.', 'Проверка данных');
        result := False;
        exit;
      end;
      Close;
      Clear;
      Add('Select e.amount, e.id_ptype from estimates e where e.id_estimate = :id_estimate');
      ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
      Open;

      { if not IsEmpty then
       If FieldByName('id_ptype').AsInteger <> qOrdersID_CPTYPE.AsInteger then
        begin
         MsgError('Проверьте тип продукции. Тип продукции сметы не соответствует заказу.','Проверка данных');
         result := False;
         exit;
        end; }
      if not IsEmpty then
        if FieldByName('amount').AsFloat <> qOrdersAMOUNT.AsFloat then
        begin
          MsgError('Проверьте тираж. Кол-во сметы не соответствует тиражу.',
            'Проверка данных');
          result := False;
          exit;
        end;

      Close;
      Clear;
      Add('select distinct o.id_area, o.id_operation, o.name, t.name nm ,o.arch');
      Add('from estimates e ');
      Add('join est_sumpos s  on s.id_estimate = e.id_estimate and s.obj_type = 2');
      Add('join product_oper op on op.id_operation = s.id_obj ');
      Add('join operations o on o.id_area = op.id_area and o.id_operation = op.id_operation');
      Add('join oper_types t on t.id_oper_type = o.id_oper_type');
      Add('where e.id_estimate = :id_estimate and o.arch is not null');
      ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
      Open;
      if not IsEmpty then
      begin
        MsgError('Проверьте смету. В смете используется закрытая операция.',
          'Проверка данных');
        result := False;
        exit;
      end;

      //проверка на утв. сметы
      close;
      clear;
      add('select id_estimate, status, amount from estimates where id_estimate = :id_estimate');
      parambyname('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
      Open;
      if (IsEmpty) then
        //проверка расчёта сметы
      begin
        ShowMessage('Смета не найдена!!! Утверждение не возможно.');
        result := False;
        exit;
      end;
      if FieldByName('status').IsNull then
        //проверка расчёта сметы
      begin
        ShowMessage('Смета не расчитана!!!. Утверждение не возможно.');
        result := False;
        exit;
      end;

      if FieldByName('status').AsInteger = 10 then
        //проверка расчёта сметы
      begin
        ShowMessage('Смета расчитана с ошибкой!!! Утверждение не возможно.');
        result := False;
        exit;
      end;
      if FieldByName('amount').AsFloat <> qOrdersAMOUNT.AsFloat then
        //проверка кол-во заказа и сметы
      begin
        ShowMessage('Проверьте тираж. Кол-во в смете не соответствует тиражу...!!! Утверждение не возможно.');
        result := False;
        exit;
      end;
    end;
  end;

end;

procedure TfmCliOrds.OpenDOCS;
begin
  with qDOC, qDOC.SQL do
  begin
    if Active then
      C_DOC := qDOCID_PROJECT_DOC.AsInteger;
    Close;
    if fmMain.UF15 then
      UpdateObject := upDOC
    else
      UpdateObject := nil;
    Clear;
    Add('select d.id_project_doc, d.id_project, d.name, d.doc_type, d.number, d.d_doc,');
    Add(' d.d_in, d.d_out, d.d_prod, d.d_shipp, d.d_fix, d.id_fix, d.status, d.id_draft,');
    Add(' d.id_foto, d.id_sdoc, d.d_fill, d.id_fill, d.id_order,');
    Add(' p.fio fFIX, p1.fio fFill, p2.fio fFoto ');
    Add('from PROJECT_DOCS d ');
    Add('left join personnel p on p.id_p = d.id_fix  ');
    Add('left join personnel p1 on p1.id_p = d.id_fill ');
    Add('left join personnel p2 on p2.id_p = d.id_foto  ');
    Add('where d.ID_PROJECT = :id_project');
    case SysVars.ServType of
      0: Add(OrderBy(dbg140));
      1: Add(OrderByFields(dbg140));
    end;
    Open;
    Locate('ID_PROJECT_DOC', C_DOC, []);
  end;
end;

procedure TfmCliOrds.Vib(Ysl: Integer);
var
  s: string;
begin
  s := Copy(qOrdersN_ORDER.AsString, 1, 3);
  {if s <> 'S25' then
  begin
   ShowMessage('Нельзя копировать заказ созданный не в ИС...');
   exit;
  end; }
  Screen.Cursor := crHourGlass;
  with qOrd_Type, qOrd_Type.SQL do
  begin
    Close;
    Clear;
    if Ysl = 0 then
      Add('select * from ORD_TYPES where mark is not null order by NAME');
     if Ysl = 1 then
      Add('select * from ORD_TYPES order by NAME');
    Open;
    FetchAll;
  end;
  if Ysl = 0 then
    lcbOrd_Type.KeyValue := qOrd_TypeID_TYPE.AsInteger;
  ins_ord := 2;
  lbOrder.Caption := 'Создание заказа на основании заказа № ' +
    qOrdersID_ORDER.AsString;
  lcbOrder.KeyValue := null;
  edOrd.Clear;
  qOrd.close;

  if not qAgent.Active then
    qAgent.Open;
  if not qProj.Active then
    qProj.Open;
  if not qMen.Active then
    qMen.Open;
  if not qPDoc.Active then
    qpDoc.Open;
  lcbAg.KeyValue := qClientsID_ITEM.AsInteger;
  lcbProj.KeyValue := qOrdersID_PROJECT.AsInteger;
  lcbMen.KeyValue := qOrdersID_FIX.AsInteger;
  qOrd.Open;
  if ysl = 1 then
    lcbOrder.KeyValue := qOrdersID_ORDER.AsInteger;
  //cbDoc.Enabled := false;
  pnOrder.Show;
  gbProj.Hide;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.OpenEst_Req;
begin
  try
    Screen.Cursor := crHourGlass;

    qRDoc.Close;
    qRDoc.Open;

    with qEstReq, qEstReq.SQL do
    begin
      if Active then
        C_REQ := qEstReqID_REQUEST.AsInteger;
      Close;
      Clear;
      Add('select r.id_request, r.id_project, r.status, r.description, r.id_doc,');
      Add('r.d_manager, r.id_manager, r.id_estimate, r.id_constr, r.id_estimator,');
      Add('r.d_get, r.d_fix, m.fio manager, c.fio constr, e.fio estimator,');
      Add('r.d_create, r.id_creator, i.fio creator,p.id_agent,r.rem,p.name name_proj,');
      Add('r.id_order, o.name,o.n_order,r.REQ_KIND, r.REQ_TYPE, k.name name_kind,');
      Add('t.name name_regtype, r.d_calc from estimate_requests r');
      Add('join projects p on p.id_project = r.id_project');
      Add('left join personnel m on m.id_p = r.id_manager');
      Add('left join personnel c on c.id_p = r.id_constr');
      Add('left join personnel e on e.id_p = r.id_estimator');
      Add('join personnel i on i.id_p = r.id_creator');
      Add('left join project_ords o on o.id_order = r.id_order');
      Add('left join requests_kinds k on k.req_kind = r.req_kind');
      Add('left join requests_types t on t.req_type = r.req_type');
      Add('where r.id_project = :id_project');
      if tbMen.Down then
      begin
        Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
        ParamByName('sp1').AsInteger := SysVars.RegTN;
      end;
      if lcb_Men.KeyValue <> null then
      begin
        Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
        ParamByName('sp1').AsInteger := lcb_Men.KeyValue;
      end;
      case SysVars.ServType of
        0: Add(OrderBy(dbg15));
        1: Add(OrderByFields(dbg15));
      end;
      Open;
      Locate('ID_request', C_REQ, []);
    end;
    qOrds.Close;
    qOrds.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.OpenProject_S;
var
  afscr, afscr_prj: TDataSetNotifyEvent;
  Proj: Integer;
begin
  try
    Screen.Cursor := crHourGlass;

    afscr := qOrders.AfterScroll;
    afscr_prj := qPrj.AfterScroll;

    qOrders.AfterScroll := nil;
    qPrj.AfterScroll := nil;

    with qPrj, qPrj.SQL do
    begin
      if Active then
        Proj := qPrjID_PROJECT.AsInteger; //C_PR
      Close;
      Clear;
      Add('select p.* , b.name bname, r.fio manager, n.fio designer, c.name ncurr,');
      Add('nn.fio fio_fix,nnn.fio dACCEPTOR');
      Add('from projects p left join brands b');
      Add('on b.id_brand = p.id_brand');
      Add('left join personnel r on r.id_p = p.id_manager');
      Add('left join personnel n on n.id_p = p.id_designer');
      Add('left join personnel nn on nn.id_p = p.id_fix');
      Add('left join personnel nnn on nnn.id_p = p.ID_DACCEPTOR');
      Add('left join currency c on c.id_currency = p.currency');
      Add('where P.id_agent = :ID_ITEM');
      if tbMen.Down then
      begin
        Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
        ParamByName('sp1').AsInteger := SysVars.RegTN;
      end;
      if lcb_Men.KeyValue <> null then
      begin
        Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
        ParamByName('sp1').AsInteger := lcb_Men.KeyValue;
      end;
      case SysVars.ServType of
        0: Add(OrderBy(dbg14));
        1: Add(OrderByFields(dbg14));
      end;
      Open;
      Locate('ID_PROJECT', Proj, []);
      OpenDOCS;
      qOrders.AfterScroll := afscr;
      qPrj.AfterScroll := afscr_prj;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.OpenCli;
var
  i: integer;
var
  afscr, afscr_prj: TDataSetNotifyEvent;
begin
  try
    Screen.Cursor := crHourGlass;

    afscr := qOrders.AfterScroll;
    afscr_prj := qPrj.AfterScroll;

    qOrders.AfterScroll := nil;
    qPrj.AfterScroll := nil;

    if Length(lcb_Men.Text) = 0 then
      lcb_Men.KeyValue := Null;

    with qClients, qClients.SQL do
    begin
      if Active then
        C_CLI := qClientsID_ITEM.AsInteger;
      Close;
      Clear;
      Add('select B.ID id_item, I.NAME, i.id_c, i.id_ax, count(P.ID_PROJECT) as CP');
      Add('from (BR_ITEMS(13,0) B');
      Add('left join PROJECTS P on P.ID_AGENT = B.ID)');
      Add('join ITEMS I on I.ID_ITEM = B.ID');
      Add('where 1=1');
      if tbMen.Down then
      begin
        Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1)');
        ParamByName('sp1').AsInteger := SysVars.RegTN;
      end;
      if (lcb_Men.KeyValue <> Null) then
      begin
        Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1)');
        ParamByName('sp1').AsInteger := lcb_Men.KeyValue;
      end;
      Add('group by B.ID, I.NAME, i.id_c, i.id_ax');
      Add(OrdBy(dbg1));
      Open;
      Locate('ID_ITEM', C_CLI, []);

      qOrders.AfterScroll := afscr;
      qPrj.AfterScroll := afscr_prj;

      qUrAgent.Close;
      qUrAgent.Open;
      qDogovor.Close;
      qDogovor.Open;
      qDogovor_Doc.Close;
      qDogovor_Doc.Open;

      OpenProject_s;
      OpenOrds;
      Sum_Ords;
      pcChange(pc);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.Sum_Ords;
var
  s_so, s1, s_y, s_y_m, s_o: string;
begin
  Screen.Cursor := crHourGlass;
  s1 := '';

  s_so := ' extract(year from p.d_open) y, '
    + ' p.id_currency, c.name name_cur,'
    + ' sum(p.price + coalesce(p.pricea,0)) price_sum,'
    + ' (select nds_val from get_nds_sum(sum(p.price + coalesce(p.pricea,0)),1)) price_sum_bez_nds,'
    + ' sum(p.delivery_sum) delivery_sum,'
    + ' (select nds_val from get_nds_sum(sum(p.delivery_sum),1)) delivery_sum_bez_nds,'
    + ' count(p.id_order) kol,'
    + ' sum(e.total_sum) total_sum_peo,'
    + ' (select nds_val from get_nds_sum(sum(e.total_sum),1)) total_sum_peo_bez_nds,'
    + ' case when p.id_currency = 1 then  sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum) else null end raz,'
    + ' (select nds_val from get_nds_sum((case when p.id_currency = 1 then'
    + ' sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum) else null end),1)) raz_bez_nds'
    + ' from project_ords p'
    + ' join projects p1 on p1.id_project = p.id_project'
    + ' join ptypes pt on pt.id_ptype = p.id_cptype'
    + ' join currency c on c.id_currency = p.id_currency'
    + ' join personnel r1 on r1.id_p = p1.id_manager'
    + ' join ord_types oo on oo.id_type = p.ord_type'
    + ' join prod_areas a on a.id_p_area = p.id_cprod'
    + ' left join estimates e on e.id_estimate = p.id_estimate'
    + ' where p.id_agent = :id_item and p.d_reject is  null and p.amount > 0 and p.status > 19'
    + ' group by 1,2,3,4,5'
    + 'order by y desc';

  s_o := ' p.id_agent, p.id_currency, c.name name_cur,'
    + ' sum(p.price) price,'
    + ' (select nds_val from get_nds_sum(sum(p.price),1)) price_bez_nds,'
    + ' sum(p.delivery_sum) delivery_sum,'
    + ' (select nds_val from get_nds_sum(sum(p.delivery_sum),1)) delivery_sum_bez_nds,'
    + ' count(id_order) kol,'
    + ' sum(e.total_sum) total_sum_peo,'
    + ' (select nds_val from get_nds_sum(sum(e.total_sum),1)) total_sum_peo_bez_nds,'
    + ' case when p.id_currency = 1 then  sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum)'
    + ' else null end raz,'

  + ' (select nds_val from get_nds_sum(case when p.id_currency = 1 then'
    + ' sum(p.price) - sum(e.total_sum) - sum(p.delivery_sum)'
    + ' else null end,1)) raz_bez_nds'

  + ' from project_ords p'
    + ' left join currency c on c.id_currency = p.id_currency '
    + ' join projects p1 on p1.id_project = p.id_project'
    + ' join ptypes pt on pt.id_ptype = p.id_cptype '
    + ' join personnel r1 on r1.id_p = p1.id_manager'
    + ' join ord_types oo on oo.id_type = p.ord_type'
    + ' join prod_areas a on a.id_p_area = p.id_cprod'
    + ' left join estimates e on e.id_estimate = p.id_estimate'
    + ' where p.id_agent = :id_item and p.status > 19 and p.d_reject is null'
    + ' group by 1,2,3,4,5';

  s_y := ' p.id_agent,extract(year from p.d_open) y,'
    + ' p.id_currency, c.name name_cur,'
    + ' sum(p.price) price,'
    + ' (select nds_val from get_nds_sum(sum(p.price),1)) price_bez_nds,'
    + ' sum(p.delivery_sum) delivery_sum,'
    + ' (select nds_val from get_nds_sum(sum(p.delivery_sum),1)) delivery_sum_bez_nds,'
    + ' count(p.id_order) kol,'
    + ' sum(e.total_sum) total_sum_peo,'
    + ' (select nds_val from get_nds_sum(sum(e.total_sum),1)) total_sum_peo_bez_nds,'
    + ' case when p.id_currency = 1 then  sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum) else null end raz,'
    + ' (select nds_val from get_nds_sum(case when p.id_currency = 1 then  sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum) else null end,1)) raz_bez_nds'
    + ' from project_ords p'
    + ' join projects p1 on p1.id_project = p.id_project'
    + ' join ptypes pt on pt.id_ptype = p.id_cptype'
    + ' join currency c on c.id_currency = p.id_currency'
    + ' join personnel r1 on r1.id_p = p1.id_manager'
    + ' left join estimates e on e.id_estimate = p.id_estimate'
    + ' join ord_types oo on oo.id_type = p.ord_type'
    + ' join prod_areas a on a.id_p_area = p.id_cprod'
    + ' where p.id_agent = :id_item and p.status > 19 and p.d_reject is null'
    + ' group by 1,2,3,4,5,6'
    + 'order by y desc';

  //(select nds_val from get_nds_sum(
  s_y_m := ' p.id_agent, extract(year from p.d_open) y,'
    + ' extract(month from p.d_open) m,'
    + ' p.id_currency, c.name name_cur,'
    + ' sum(p.price) price,'
    + ' (select nds_val from get_nds_sum(sum(p.price),1)) price_bez_nds,'
    + ' sum(p.delivery_sum) delivery_sum,'
    + ' (select nds_val from get_nds_sum(sum(p.delivery_sum),1)) delivery_sum_bez_nds,'
    + ' sum(e.total_sum) total_sum_peo,'
    + ' (select nds_val from get_nds_sum(sum(e.total_sum),1)) total_sum_peo_bez_nds,'
    + ' count(id_order) kol,'
    + ' case when p.id_currency = 1 then  sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum) else null end raz,'
    + ' (select nds_val from get_nds_sum( case when p.id_currency = 1 then'
    + ' sum(p.price) - sum(e.total_sum)'
    + ' - sum(p.delivery_sum) else null end,1)) raz_bez_nds'
    + ' from project_ords p'
    + ' left join currency c on c.id_currency = p.id_currency'
    + ' left join estimates e on e.id_estimate = p.id_estimate'
    + ' join projects p1 on p1.id_project = p.id_project'
    + ' join ptypes pt on pt.id_ptype = p.id_cptype'
    + ' join personnel r1 on r1.id_p = p1.id_manager'
    + ' join ord_types oo on oo.id_type = p.ord_type'
    + ' join prod_areas a on a.id_p_area = p.id_cprod'
    + ' where p.id_agent = :id_item and p.status > 19 and p.d_reject is null'
    + ' group by 1,2,3,4,5,6,7'
    + 'order by y desc, m desc';

  case cbChng.ItemIndex of
    0: s1 := 'select 1 id ,' + ''' ''' + 'name, ';
    1: s1 := 'select p1.id_project id,p1.name name, ';
    2: s1 := 'select pt.id_ptype id,pt.name name, ';
    3: s1 := 'select p1.id_manager id, r1.fio name, ';
    4: s1 := 'select oo.id_type id, oo.name name, ';
  end;

  qSUM_Ord.Close;
  qSum_ord.SQL.Text := s1 + s_o;
  // qSUM_Ord.ParamByName('id_item').AsInteger := qClientsID_ITEM.AsInteger;
  qSUM_Ord.Open;

  qSumO.Close;
  qSumO.SQL.Text := s1 + s_so;
  qSumO.Open;

  qSUM_Ord_Y.Close;
  // qSUM_Ord_Y.ParamByName('id_item').AsInteger := qClientsID_ITEM.AsInteger;
  qSum_ord_Y.SQL.Text := s1 + s_y;
  qSUM_Ord_Y.Open;
  qSUM_Ord_Y_M.Close;
  qSum_Ord_Y_M.SQL.Text := s1 + s_y_m;
  // qSUM_Ord_Y_M.ParamByName('id_item').AsInteger := qClientsID_ITEM.AsInteger;
  qSUM_Ord_Y_M.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.OpenOrds;
var
  afscr, afscr_prj: TDataSetNotifyEvent;
begin
  try
    Screen.Cursor := crHourGlass;
    with qOrders, qOrders.SQL do
    begin
      afscr := qOrders.AfterScroll;
      afscr_prj := qPrj.AfterScroll;

      qOrders.AfterScroll := nil;
      qPrj.AfterScroll := nil;

      if Active then
        C_ORD := qOrdersID_ORDER.AsInteger;
      Close;
      Clear;
      Add('select p.id_order, p.n_order, p.name, p.amount, p.is_self,');
      Add('p.price, (select nds_val from get_nds_sum(p.price,1)) price_bez_nds,');
      add('p.pricea,');
      Add('(select nds_val from get_nds_sum(p.pricea,1)) pricea_bez_nds,');
      Add(' p.id_currency,');
      Add(' p.def_sum,');
      Add('  (select nds_val from get_nds_sum(p.def_sum,1)) def_sum_bez_nds,');
      Add('p.d_open, p.d_ready, p.d_close, p.d_reject,');
      Add('p.margin, p.discount, p.manager_margin,');
      Add('p.delivery_sum,');
      Add('(select nds_val from get_nds_sum(p.delivery_sum,1)) delivery_sum_bez_nds,');
      Add(' p.plan_cost_price,');
      Add('  (select nds_val from get_nds_sum(p.plan_cost_price,1)) plan_cost_price_bez_nds,');
      Add(' p.id_cptype,');
      Add('p.id_cprod, pt.id_oper_type, p.status, p.d_fix,');
      Add('p.id_fix, p.id_product, p.id_project, p.id_c, p.id_ax,');
      Add('p.id_doc, p.id_dogovor, p.rem,p.IS_CHARGE,p.IS_COL,p.id_price_pos,');
      Add('p.id_estimate,ee.id_version id_version_peo,');
      Add('p.id_version, p.id_estimate_kd, p.id_batch,');
      Add('pt.name nptype, ot.name nopertype, a.name nprod,');
      Add('c.name ncurr, e.name nstatus, prj.name nproj, r.fio,');
      Add('d.dog_number,d.dog_number_, d.dog_date_in,');
      Add('coalesce(d.kol_day,0) kol_day,');
      Add('case when d.vid = 0 then ''' + 'б/н' + ''' else ''' + 'кал/дн' +
        ''' end vid,');
      Add('p.id_chief, rr.fio fio_chief,');
      Add('p.path,p.full_name, i.name name_product, oo.name name_ordtype,p.lid,p.ord_type,');
      Add('ee.total_sum est_total_sum_peo,');
      Add('  (select nds_val from get_nds_sum(ee.total_sum,1)) est_total_sum_peo_bez_nds,');
      Add('e1.total_sum est_total_sum_kd,');
      Add('  (select nds_val from get_nds_sum(e1.total_sum,1)) est_total_sum_kd_bez_nds, ');
      Add('p.ship, p.receive,p.prodused, p.BUCH_PROD_NAME, p.is_reserve, p.id_agent,');
      add('dd.name docname, kk.name ordkind, p.ord_kind,');
      add('case when ee.total_sum <> 0 then (p.price/(ee.total_sum+p.delivery_sum)-1)*100');
      add('when (ee.total_sum = 0) or (ee.total_sum is null) then -100 end profit');
      Add('from project_ords p left join ptypes pt on p.id_cptype = pt.id_ptype');
      Add('left join oper_types ot on ot.id_oper_type = pt.id_oper_type');
      Add('left join estimates ee on ee.id_estimate = p.id_estimate');
      Add('left join estimates e1 on e1.id_estimate = p.id_estimate_kd');
      Add('left join prod_areas a on a.id_p_area = p.id_cprod');
      Add('left join currency c on c.id_currency = p.id_currency');
      Add('left join ord_events e on e.status = p.status');
      Add('left join projects prj on prj.id_project = p.id_project');
      Add('left join personnel r on r.id_p = p.id_fix');
      Add('left join personnel rr on rr.id_p = p.id_chief');
      Add('left join dogovor d on d.id_dogovor = p.id_dogovor');
      Add('left join items i on i.id_item = p.id_product');
      Add('left join ord_types oo on oo.id_type = p.ord_type');
      add('left join project_docs dd on dd.id_project_doc = p.id_doc');
      add('left join order_kinds kk on kk.id_ord_kind = p.ord_kind');
      Add('where p.id_agent = :id_item');
      if not VarIsNull(dtpIn.Value) then
        Add('and p.d_open >= ''' + FormatDateTime('dd.mm.yyyy',
          TDateTime(dtpIn.Value)) + '''');
      if not VarIsNull(dtpOut.Value) then
        Add('and p.d_open < ''' + FormatDateTime('dd.mm.yyyy',
          IncDay(TDateTime(dtpOut.Value), 1)) + '''');
      if (cbUses.Checked) and (lcb_Men.Text <> '') then
        Add(' and prj.id_manager = ' + IntToStr(lcb_Men.KeyValue));
      if (not cball.Checked) and (qPrjID_PROJECT.Value > 0) then
        Add('and p.id_project = ' + qPrjID_PROJECT.AsString);
      if not fmMain.UF89 then
        add('and p.id_fix = ' + inttostr(SysVars.RegTN));
      Add(OrderBy(dbg2));  //OrdBy()
      Open;
      Locate('ID_ORDER', C_ORD, []);
      qOrders.AfterScroll := afscr;
      qPrj.Locate('ID_PROJECT', qOrdersID_PROJECT.AsInteger, []);
      qPrj.AfterScroll := afscr_prj;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.OpenOrds_All;
begin
 try
  Screen.Cursor := crHourGlass;
  with qOrder_All, qOrder_All.SQL do
  begin
    if Active then
      C_ORD1 := qOrder_AllID_ORDER.AsInteger;
    Close;
    Clear;
    Add('select p.id_order, p.n_order, p.name, p.amount,');
    Add('p.price,');
    Add('(select nds_val from get_nds_sum(p.price,1)) price_bez_nds,');
    Add('p.pricea,');
    Add('(select nds_val from get_nds_sum(p.pricea,1)) pricea_bez_nds,');
    Add('p.id_currency,');
    Add('p.def_sum,');
    Add('(select nds_val from get_nds_sum(p.def_sum,1)) def_sum_bez_nds,');
    Add('p.d_open, p.d_ready, p.d_close, p.d_reject,');
    Add('p.margin, p.discount, p.manager_margin,');
    Add('p.delivery_sum,');
    Add('(select nds_val from get_nds_sum(p.delivery_sum,1)) delivery_sum_bez_nds,');
    Add('p.plan_cost_price,');
    Add('(select nds_val from get_nds_sum(p.plan_cost_price,1)) plan_cost_price_bez_nds,');
    Add('p.id_cptype,');
    Add('p.id_cprod, pt.id_oper_type, p.status, p.d_fix,');
    Add('p.id_fix, p.id_product, p.id_project, p.id_c, p.id_ax,');
    Add('p.id_doc, p.id_dogovor, p.rem,p.IS_CHARGE,p.IS_COL,p.id_price_pos,');
    Add('p.id_estimate,ee.id_version id_version_peo,');
    Add('p.id_version, p.id_estimate_kd, p.id_batch,');
    Add('pt.name nptype, ot.name nopertype, a.name nprod,');
    Add('c.name ncurr, e.name nstatus, prj.name nproj, r.fio,');
    Add('d.dog_number,d.dog_number_, d.dog_date_in,p.id_chief, rr.fio fio_chief,');
    Add('p.path,p.full_name, i.name name_product, oo.name name_ordtype,p.lid,p.ord_type');
    Add('from project_ords p join ptypes pt on p.id_cptype = pt.id_ptype');
    Add('join projects prj on prj.id_project = p.id_project');
    Add('join personnel r on r.id_p = p.id_fix');
    Add('left join oper_types ot on ot.id_oper_type = pt.id_oper_type');
    Add('left join estimates ee on ee.id_estimate = p.id_estimate');
    Add('left join prod_areas a on a.id_p_area = p.id_cprod');
    Add('left join currency c on c.id_currency = p.id_currency');
    Add('left join ord_events e on e.status = p.status');
    Add('left join personnel rr on rr.id_p = p.id_chief');
    Add('left join dogovor d on d.id_dogovor = p.id_dogovor');
    Add('left join items i on i.id_item = p.id_product');
    Add('left join ord_types oo on oo.id_type = p.ord_type');
    Add('where (1=1)');

    if not VarIsNull(dtpIn1.Value) then
      Add('and p.d_open >= ''' + FormatDateTime('dd.mm.yyyy',
        TDateTime(dtpIn1.Value)) + '''');
    if not VarIsNull(dtpOut1.Value) then
      Add('and p.d_open < ''' + FormatDateTime('dd.mm.yyyy',
        IncDay(TDateTime(dtpOut1.Value), 1)) + '''');
    if (lcb_Men1.KeyValue <> null) and (fmMain.UF89) then
    begin
      Add('and prj.id_manager = :id_manager');
      ParamByName('id_manager').AsInteger := lcb_Men1.KeyValue;
    end;
    if not fmMain.UF89 then
      add('and p.id_fix = ' + inttostr(SysVars.RegTN));

    { if not VarIsNull (dtp_in1.Value) then
   begin
    if rgTypeYtv_Item16.ItemIndex = 1 then
     s := s +' and p.d_fix >=''' + FormatDateTime ('dd.mm.yyyy',TDateTime (dtp_in1.Value)) + '''';
    if rgTypeYtv_Item16.ItemIndex = 0 then
     s := s + ' and (p.d_fix >=''' + FormatDateTime ('dd.mm.yyyy',TDateTime (dtp_in1.Value)) + ''''+' or p.d_fix is null)'
   end;
   if not VarIsNull (dtp_out1.Value) then
   begin
    if rgTypeYtv_Item16.ItemIndex = 1 then
     s := s + ' and p.d_fix < ''' + FormatDateTime ('dd.mm.yyyy',IncDay (TDateTime (dtp_out1.Value),1)) + '''';
      if rgTypeYtv_Item16.ItemIndex = 0 then
     s := s + ' and (p.d_fix < ''' + FormatDateTime ('dd.mm.yyyy',IncDay (TDateTime (dtp_out1.Value),1)) + ''''+' or p.d_fix is null)'
   end;
   }

    Add(OrdBy(dbg22));
    Open;
    if c_ORD1 > 0 then  Locate('ID_ORDER', C_ORD1, []);

    if pc2.ActivePage = TabSheet7 then
    begin
      qOrd_Lid.close;
     if not qOrder_All.IsEmpty then begin
      qOrd_Lid.ParamByName('lid').AsInteger := qOrder_AllLID.AsInteger;
      qOrd_Lid.open;
     end;
    end;

  end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.FormCreate(Sender: TObject);
var
  y, m, d: Word;
begin
  if not fmmain.UF0 then tabsheet8.TabVisible := false;
  flag := 0;
  pc.ActivePage := tsOrd;

  pSel_Proj_Man.Hide;

  if pcAll.ActivePage = tschain then
    with qChain do
    begin
      Close;
      Open;
    end;

  fmMain.pb.StepBy(5);
  DecodeDate(now, y, m, d);
  UpDown.Position := y;
  UpDown1.Position := y;

  //разрешить прием файлов из проводника
  DragAcceptFiles(Handle, true);

  BDOC := -1;
  p_3.BringToFront;
  p_3.Align := alClient;
  pcDoc.ActivePage := tsDoc;

  pcAll.ActivePage := tsAgent;
  pc5.ActivePage := tsAn_Men;

  pc2.ActivePage := TabSheet6;

  pcProj.ActivePage := tsProj1;
  panel3.Align := alClient;
  lbDiz.Visible := False;
  lcbDiz.Visible := False;
  bbDiz.Visible := False;
  pnOrder.Hide;
  pnOrder.Top := 320;
  pnOrder.Left := 210;
  pnOrder.Height := 321;
  gbNewEst.Hide;
  gbNewEst.Top := 45;
  gbNewEst.Left := 120;
  dtpIn.Value := Int(now - 30);
  dtpOut.Value := Int(now);
  dtp_in_abc.Value := Server_now(dmIS.qIM) - 30;
  dtp_out_abc.Value := Server_now(dmIS.qIM);

  //***********док-ты***********
  tb_1.Enabled := fmMain.UF15;
  tb_2.Enabled := fmMain.UF15;
  tb_3.Enabled := fmMain.UF15;
  tb_6.Enabled := fmMain.UF15;
  tb_7.Enabled := fmMain.UF15;
  tb_8.Enabled := fmMain.UF41;
  tb_12.Enabled := fmMain.UF41;
  tb_11.Enabled := fmMain.UF41;

  with qDOC_TYPE do
  begin
    Close;
    UpdateObject := nil;
    AfterScroll := nil;
    Open;
    Last;
    First;
  end;
  //**********************

  if fmMain.Analiz = True then
    Exit;
  with q_Men do
  begin
    Close;
    Open;
    FetchAll;
    q_Men.Locate('id_p', SysVars.RegTN, []);
    lcb_Men.KeyValue := q_MenID_P.AsInteger;
  end;
  fmMain.pb.StepBy(5);
  with q_Men1 do
  begin
    Close;
    Open;
    FetchAll;
    lcb_Men1.KeyValue := q_Men1ID_P.AsInteger;
  end;
  fmMain.pb.StepBy(5);
  with q_Men2 do
  begin
    Close;
    Open;
    FetchAll;
    lcb_Men2.KeyValue := q_Men2ID_P.AsInteger;
  end;
  fmMain.pb.StepBy(5);

  with qOrd_PF do
  begin
    Close;
    Open;
  end;
  fmMain.pb.StepBy(5);
  with qOrd_S do
  begin
    Close;
    Open;
  end;
  fmMain.pb.StepBy(5);
  with qOrd_Lid do
  begin
    Close;
    Open;
  end;
  fmMain.pb.StepBy(5);
  with qOrd do
  begin
    Close;
    Open;
  end;

  fmMain.pb.StepBy(5);
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    fmMain.pb.StepBy(5);
    Read(p3, iniRect);
    fmMain.pb.StepBy(5);
    Read(gbEst, iniRect);
    fmMain.pb.StepBy(5);
    Read(gbEst_Ord, iniRect);
    fmMain.pb.StepBy(5);
    Read(pnProj, iniRect);
    fmMain.pb.StepBy(5);

    readeh(dbg1, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg2, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg3, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg4, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg5, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg6, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg7, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg8, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg9, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg10, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg11, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg12, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg14, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg15, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg16, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg17, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg18, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg19, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg25, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg26, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbghEst, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbgEstpOSaLL, id_form);
    fmMain.pb.StepBy(5);
    readeh(dbg140, id_form);
    fmMain.pb.StepBy(5);
    Readeh(dbgOper, id_form);
    Readeh(dbgDocCh, id_form);
    Readeh(dbgNewCH, id_form);
    Readeh(dbgNewCH, id_form);
    Readeh(dbgproj, id_form);
    Readeh(dbgParamObj, id_form);
    Readeh(dbgComplect, id_form);
    {Read(dbg1,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg2,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg3,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg4,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg5,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg6,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg7,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg8,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg9,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg10,iniGridEh); fmMain.pb.StepBy(5);
     Read(dbg11,iniGridEh); fmMain.pb.StepBy(5);
     Read(dbg12,iniGridEh); fmMain.pb.StepBy(5);
     Read(dbg14,iniGridEh); fmMain.pb.StepBy(5);
     Read(dbg15,iniGridEh); fmMain.pb.StepBy(5);
     Read(dbg16,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg17,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg18,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg19,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg25,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg26,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbghEst,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbghEst_Pos,iniGridEh);  fmMain.pb.StepBy(5);
     Read(dbg140,iniGridEh); fmMain.pb.StepBy(5);
      Read(dbgOper,iniGridEh);
     Read(dbgDocCh,iniGridEh);
     Read(dbgNewCH,iniGridEh);
     Read(dbgNewCH,iniGridEh);
      Read(dbgproj,iniGridEh);
     Read(dbgParamObj,iniGridEh);}

    // вкладка объект

    Read(p5, iniRect);
    Read(gb1, iniRect);
    Read(gb2, iniRect);
  finally
    Free;
  end;
  flag := 1;
  if (fmMain.UF89 = true or fmMain.UF0 = true) then
    cb1.Enabled := true;
  if fmMain.UF143 then
  begin
    ToolButton7.visible := not fmMain.UF143;
    fmAll.HideGridCOl(dbgSumO, 'PRICE_SUM,price_sum_bez_nds,DELIVERY_SUM,'
      + 'DELIVERY_SUM_bez_nds,TOTAL_SUM_PEO,TOTAL_SUM_PEO_bez_nds,RAZ,RAZ_bez_nds,nProfit',
      false);

    fmAll.HideGridCOl(dbg2,
      'DELIVERY_SUM,DELIVERY_SUM_bez_nds,EST_TOTAL_SUM_PEO,'
      + 'EST_TOTAL_SUM_PEO_bez_nds,EST_TOTAL_SUM_KD,EST_TOTAL_SUM_KD_bez_nds',
      false);
    fmAll.HideGridCOl(dbg30,
      'PRICE,PRICE_BEZ_NDS,DELIVERY_SUM,DELIVERY_SUM_BEZ_NDS,'
      + 'TOTAL_SUM_PEO,TOTAL_SUM_PEO_BEZ_NDS,RAZ,RAZ_BEZ_NDS,nProfit', false);
    fmAll.HideGridCOl(dbg32,
      'PRICE,PRICE_bez_nds,DELIVERY_SUM,DELIVERY_SUM_bez_nds,'
      + 'TOTAL_SUM_PEO,TOTAL_SUM_PEO_bez_nds,RAZ,RAZ_bez_nds,nProfit', false);
    fmAll.HideGridCOl(dbg31, 'PRICE,DELIVERY_SUM,TOTAL_SUM_PEO,RAZ,nprofit',
      false);
    fmAll.HideGridCOl(dbgSh, 'TOTAL_SUM,TOTAL_SUM_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg16, 'price,price_bez_nds,total,total_bez_nds,cost,'
      + 'cost_bez_nds,cost0,cost0_bez_nds', false);
    fmAll.HideGridCOl(dbg17, 'price,price_bez_nds,total,total_bez_nds', false);

    fmAll.HideGridCOl(dbgEstPosAll, 'OBJ_PRICE,TOTAL,COST,COST0,PRICEP,SUM_RAS,'
      + 'SUM_PROC,BPRICE,DELTA_PRICE,PLAN_PRICE,PRICE_MINUS_COMM,PRICEP_NDS_SUM,'
      + 'OBJ_PRICE_NDS_SUM,OBJ_PRICE_NDS,PRICEP_NDS,nTOTAL_ONE', false);

    fmAll.HideGridCOl(dbghEst,
      'dop_price,profit,price_delivery,price_delivery_bez_nds,'
      + 'price_tools,price_tools_bez_nds,total_sum,total_sum_bez_nds,'
      + 'total_sum_al,total_sum_al_bez_nds,sum_oper,sum_oper_bez_nds,sum_mat,'
      + 'sum_mat_bez_nds,sum_oper_proc,sum_oper_proc_bez_nds,sum_mat_proc,'
      + 'sum_mat_proc_bez_nds,sum_proc,sum_proc_bez_nds,TOTAL_OPER,TOTAL_MAT,TOTAL_COM,DELTA',
      false);
    fmAll.HideGridCOl(dbg7,
      'PROFIT,DOP_PRICE,TOTAL,TOTAL_BEZ_NDS,TOTAL_MAT,TOTAL_MAT_BEZ_NDS,'
      + 'TOTAL_OPER,TOTAL_OPER_BEZ_NDS,SUM_MAT,SUM_MAT_BEZ_NDS,SUM_OPER,'
      + 'SUM_OPER_BEZ_NDS,SUM_PROC,SUM_PROC_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg11,
      'TOTAL,TOTAL_BEZ_NDS,TOTAL_PROC,TOTAL_PROC_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg9, 'TOTAL,TOTAL_BEZ_NDS,TOTAL_PROC,TOTAL_PROC_BEZ_NDS',
      false);
    fmAll.HideGridCOl(dbg10,
      'PROFIT,DOP_PRICE,TOTAL,TOTAL_BEZ_NDS,TOTAL_MAT,TOTAL_MAT_BEZ_NDS,'
      + 'TOTAL_OPER,TOTAL_OPER_BEZ_NDS,SUM_MAT,SUM_MAT_BEZ_NDS,SUM_OPER,'
      + 'SUM_OPER_BEZ_NDS,SUM_PROC,SUM_PROC_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg8, 'TOTAL_ALL,TOTAL_ALL_BEZ_NDS,TOTAL_ALL_PROC,'
      + 'TOTAL_ALL_PROC_BEZ_NDS,TOTAL,TOTAL_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg12, 'TOTAL_ALL,TOTAL_ALL_BEZ_NDS,TOTAL_ALL_PROC,'
      + 'TOTAL_ALL_PROC_BEZ_NDS,TOTAL,TOTAL_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg118, 'LIMIT_SUM,LIMIT_SUM_BEZ_NDS,LIMIT_PRICE,'
      + 'LIMIT_PRICE_BEZ_NDS,LIMIT_PRICE_OZC,LIMIT_PRICE_OZC_BEZ_NDS,'
      + 'LIMIT_SUM_OZC,LIMIT_SUM_OZC_BEZ_NDS,ESTIMATE_SUM,ESTIMATE_SUM_BEZ_NDS,'
      + 'ESTIMATE_PRICE,ESTIMATE_PRICE_BEZ_NDS,KD_SUM,KD_SUM_BEZ_NDS,'
      + 'KD_PRICE,KD_PRICE_BEZ_NDS,REC_SUM,REC_SUM_BEZ_NDS,REC_PRICE,'
      + 'REC_PRICE_BEZ_NDS,EXP_SUM,EXP_SUM_BEZ_NDS,DEF_SUM,DEF_SUM_BEZ_NDS',
      false);
    fmAll.HideGridCOl(dbg27, 'ESTIMATE_SUM,ESTIMATE_SUM_BEZ_NDS,ESTIMATE_PRICE,'
      + 'ESTIMATE_PRICE_BEZ_NDS,KD_AMOUNT,KD_SUM,KD_SUM_BEZ_NDS,KD_PRICE,'
      + 'KD_PRICE_BEZ_NDS,TRAF_AMOUNT,TRAF_SUM,TRAF_SUM_BEZ_NDS,TRAF_PRICE,'
      + 'TRAF_PRICE_BEZ_NDS,FACT_AMOUNT,FACT_SUM,FACT_SUM_BEZ_NDS,FACT_PRICE,'
      + 'FACT_PRICE_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg20,
      'TOTAL_SUM,TOTAL_SUM_BEZ_NDS,DEF_SUM,DEF_SUM_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg26, 'DEF_SUM,DEF_SUM_BEZ_NDS,DEF_DELIVERY,'
      + 'DEF_DELIVERY_BEZ_NDS,PLAN_COST_PRICE,PLAN_COST_PRICE_BEZ_NDS,'
      + 'TOTAL_SUM_PEO,TOTAL_SUM_PEO_BEZ_NDS,TOTAL_SUM_KD,TOTAL_SUM_KD_BEZ_NDS',
      false);
    fmAll.HideGridCOl(dbg28, 'SUMMA,SUMMA_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg22, 'PRICE,PRICE_BEZ_NDS,DEF_SUM,DEF_SUM_BEZ_NDS,'
      + 'DELIVERY_SUM,DELIVERY_SUM_BEZ_NDS,PLAN_COST_PRICE,PLAN_COST_PRICE_BEZ_NDS'
      , false);
    fmAll.HideGridCOl(dbg51, 'DEF_SUM,DEF_SUM_BEZ_NDS,'
      + 'DEF_DELIVERY_BEZ_NDS,DEF_DELIVERY', false);
    fmAll.HideGridCOl(dbg53, 'DEF_SUM,DEF_SUM_BEZ_NDS,'
      + 'DEF_DELIVERY_BEZ_NDS,DEF_DELIVERY', false);
    fmAll.HideGridCOl(dbg52, 'DEF_SUM0,DEF_DELIVERY0,DEF_SUM_11,'
      + 'DEF_DELIVERY_11,DEF_SUM22,DEF_DELIVERY22,DEF_SUM33,DEF_DELIVER33,'
      + 'DEF_SUM44,DEF_DELIVER44,DEF_SUM55,DEF_DELIVER55,DEF_SUM66,'
      + 'DEF_DELIVER66,DEF_SUM77,DEF_DELIVER77,DEF_SUM88,DEF_DELIVER88,'
      + 'DEF_SUM99,DEF_DELIVER99,DEF_SUM100,DEF_DELIVER100,DEF_SUM111,'
      + 'DEF_DELIVER111,DEF_SUM122,DEF_DELIVERY122,DEF_SUM0_BEZ_NDS,'
      + 'DEF_DELIVERY0_BEZ_NDS,DEF_SUM_11_BEZ_NDS,DEF_DELIVERY_11_BEZ_NDS,'
      + 'DEF_SUM22_BEZ_NDS,DEF_DELIVERY22_BEZ_NDS,DEF_SUM33_BEZ_NDS,'
      + 'DEF_DELIVER33_BEZ_NDS,DEF_SUM44_BEZ_NDS,DEF_DELIVER44_BEZ_NDS,'
      + 'DEF_SUM55_BEZ_NDS,DEF_DELIVER55_BEZ_NDS,DEF_SUM66_BEZ_NDS,'
      + 'DEF_DELIVER66_BEZ_NDS,DEF_SUM77_BEZ_NDS,DEF_DELIVER77_BEZ_NDS,'
      + 'DEF_SUM88_BEZ_NDS,DEF_DELIVER88_BEZ_NDS,DEF_SUM99_BEZ_NDS,'
      + 'DEF_DELIVER99_BEZ_NDS,DEF_SUM100_BEZ_NDS,DEF_DELIVER100_BEZ_NDS,'
      + 'DEF_SUM111_BEZ_NDS,DEF_DELIVER111_BEZ_NDS,DEF_SUM122_BEZ_NDS,'
      + 'DEF_DELIVERY122_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg41, 'DEF_SUM,DEF_SUM_BEZ_NDS,'
      + 'DEF_DELIVERY_BEZ_NDS,DEF_DELIVERY', false);
    fmAll.HideGridCOl(dbg42, 'DEF_SUM0,DEF_DELIVERY0,DEF_SUM_11,'
      + 'DEF_DELIVERY_11,DEF_SUM22,DEF_DELIVERY22,DEF_SUM33,DEF_DELIVER33,'
      + 'DEF_SUM44,DEF_DELIVER44,DEF_SUM55,DEF_DELIVER55,DEF_SUM66,'
      + 'DEF_DELIVER66,DEF_SUM77,DEF_DELIVER77,DEF_SUM88,DEF_DELIVER88,'
      + 'DEF_SUM99,DEF_DELIVER99,DEF_SUM100,DEF_DELIVER100,DEF_SUM111,'
      + 'DEF_DELIVER111,DEF_SUM122,DEF_DELIVERY122,DEF_SUM0_BEZ_NDS,'
      + 'DEF_DELIVERY0_BEZ_NDS,DEF_SUM_11_BEZ_NDS,DEF_DELIVERY_11_BEZ_NDS,'
      + 'DEF_SUM22_BEZ_NDS,DEF_DELIVERY22_BEZ_NDS,DEF_SUM33_BEZ_NDS,'
      + 'DEF_DELIVER33_BEZ_NDS,DEF_SUM44_BEZ_NDS,DEF_DELIVER44_BEZ_NDS,'
      + 'DEF_SUM55_BEZ_NDS,DEF_DELIVER55_BEZ_NDS,DEF_SUM66_BEZ_NDS,'
      + 'DEF_DELIVER66_BEZ_NDS,DEF_SUM77_BEZ_NDS,DEF_DELIVER77_BEZ_NDS,'
      + 'DEF_SUM88_BEZ_NDS,DEF_DELIVER88_BEZ_NDS,DEF_SUM99_BEZ_NDS,'
      + 'DEF_DELIVER99_BEZ_NDS,DEF_SUM100_BEZ_NDS,DEF_DELIVER100_BEZ_NDS,'
      + 'DEF_SUM111_BEZ_NDS,DEF_DELIVER111_BEZ_NDS,DEF_SUM122_BEZ_NDS,'
      + 'DEF_DELIVERY122_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61, 'EST_PROGN,S_PROGN,EST_PLAN,S_PLAN_SHIPP,'
      + 'EST_PRODUCED,S_PRODUCED,EST_SHIP,S_SHIP,EST_RECIEV,S_RECIEV,'
      + 'EST_PROGN_BEZ_NDS,S_PROGN_BEZ_NDS,EST_PLAN_BEZ_NDS,'
      + 'S_PLAN_SHIPP_BEZ_NDS,EST_PRODUCED_BEZ_NDS,S_PRODUCED_BEZ_NDS,'
      + 'EST_SHIP_BEZ_NDS,S_SHIP_BEZ_NDS,EST_RECIEV_BEZ_NDS,'
      + 'S_RECIEV_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_1, 'EST_PROGN,S_PROGN,EST_PLAN,S_PLAN_SHIPP,'
      + 'EST_PRODUCED,S_PRODUCED,EST_SHIP,S_SHIP,EST_RECIEV,S_RECIEV,'
      + 'EST_PROGN_BEZ_NDS,S_PROGN_BEZ_NDS,EST_PLAN_BEZ_NDS,'
      + 'S_PLAN_SHIPP_BEZ_NDS,EST_PRODUCED_BEZ_NDS,S_PRODUCED_BEZ_NDS,'
      + 'EST_SHIP_BEZ_NDS,S_SHIP_BEZ_NDS,EST_RECIEV_BEZ_NDS,'
      + 'S_RECIEV_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_2, 'EST_PROGN,S_PROGN,EST_PLAN,S_PLAN_SHIPP,'
      + 'EST_PRODUCED,S_PRODUCED,EST_SHIP,S_SHIP,EST_RECIEV,S_RECIEV,'
      + 'EST_PROGN_BEZ_NDS,S_PROGN_BEZ_NDS,EST_PLAN_BEZ_NDS,'
      + 'S_PLAN_SHIPP_BEZ_NDS,EST_PRODUCED_BEZ_NDS,S_PRODUCED_BEZ_NDS,'
      + 'EST_SHIP_BEZ_NDS,S_SHIP_BEZ_NDS,EST_RECIEV_BEZ_NDS,'
      + 'S_RECIEV_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_0, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_01, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_011, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_11, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_111, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_1111, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_21, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_22, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);

    fmAll.HideGridCOl(dbg61_222, 'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
      + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
      + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
      + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
      + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
      + 'S_PACK12_BEZ_NDS', false);
    fmAll.HideGridCOl(dbg71, 'SUMMA,SUMMA_BEZ_NDS,SUM_PACK_IN,'
      + 'SUM_PACK_IN_BEZ_NDS,SUM_PACK_OUT,SUM_PACK_OUT_BEZ_NDS', false);
    fmAll.HideGridCOl(DBGridEh1, 'SUMMA,SUMMA_BEZ_NDS', false);
  end;
end;

procedure TfmCliOrds.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if fmMain.Analiz = True then
    exit;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(Self, iniForm);
    Write(p3, iniRect);
    Write(gbEst, iniRect);
    Write(gbEst_Ord, iniRect);
    Write(pnProj, iniRect);
    Write(dbg1, iniGridEh);
    Write(dbg2, iniGridEh);
    Write(dbg3, iniGridEh);
    Write(dbg4, iniGridEh);
    Write(dbg5, iniGridEh);
    Write(dbg6, iniGridEh);
    Write(dbg7, iniGridEh);
    Write(dbg8, iniGridEh);
    Write(dbg9, iniGridEh);
    Write(dbg10, iniGridEh);
    Write(dbg11, iniGridEh);
    Write(dbg12, iniGridEh);
    Write(dbg14, iniGridEh);
    Write(dbg15, iniGridEh);
    Write(dbg16, iniGridEh);
    Write(dbg17, iniGridEh);
    Write(dbg18, iniGridEh);
    Write(dbg19, iniGridEh);
    Write(dbg25, iniGridEh);
    Write(dbg26, iniGridEh);
    Write(dbghEst, iniGridEh);
    Write(dbgEstpOSaLL, iniGridEh);
    Write(dbg140, iniGridEh);
    // Вкладка объект

    Write(p5, iniRect);
    Write(gb1, iniRect);
    Write(gb2, iniRect);
    Write(dbgproj, iniGridEh);
    Write(dbgDocCh, iniGridEh);
    Write(dbgOper, iniGridEh);
    Write(dbgNewCH, iniGridEh);
    Write(dbgParamObj, iniGridEh);
    Write(dbgComplect, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmCliOrds.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenCli;
end;

procedure TfmCliOrds.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_ITEM');
end;

procedure TfmCliOrds.FormShow(Sender: TObject);
var
  afscr: TDataSetNotifyEvent;
begin
  // fmMes.Hide;
  param_oper := '';
  //-- сохранение запроса на переоткрытие реквизитов операции -------------------
  param_oper := 'select distinct t.id_main_param, m.name param, u.name, ' +
    'cast( case when m.p_type = 2 then substring(t.strvalue from 1 for 128) ' +
    'when m.p_type = 1 then (select q.name from main_params_sets q ' +
    'where q.id_mp_set = t.id_mp_set) else cast(t.amount as numeric (16,2)) ' +
    'end as varchar(128)) amount, t.d_fix, p.fio editor, m.p_type, t.id_fix, ' +
    'r.is_not_null, (select first 1 d.is_work from proj_types_params d where' +
    ' d.id_proj_type = c.id_proj_type and d.id_operation = f.id_operation and d.id_main_param = t.id_main_param)' +
    'is_work from proj_chain_traff_params t ' +
    'join main_params m on m.id_main_param = t.id_main_param ' +
    'left join main_params_sets s on s.id_main_param = t.id_main_param ' +
    'left join units u on u.id_unit = m.id_unit ' +
    'left join personnel p on p.id_p = t.id_fix ' +
    'join proj_chain_traff f on f.id_chain_traff = t.id_chain_traff ' +
    'join proj_chains c on c.id_proj_chain = f.id_chain ' +
    'left join proj_types_params r on r.id_main_param = t.id_main_param and ' +
    'r.id_proj_type = c.id_proj_type and r.id_operation = f.id_operation ' +
    'where t.id_chain_traff = :id_chain_traff order by (r.posit) ';
  //------------------------------------------------------------------------------
  param_obj := '';
  //-- записываем запрос на переоткрытие реквизитов объекта ----------------------
  param_obj := 'select distinct s.id_main_param, m.name param, u.name, s.id_fix, '
    +
    'cast(case when m.p_type = 2 then substring(s.strvalue from 1 for 128)  ' +
    'when m.p_type = 1 then (select q.name from main_params_sets q ' +
    'where q.id_mp_set = s.id_mp_set) else cast(cast(s.amount as numeric (16,2)) as varchar (64))' +
    'end as varchar(128)) amount, m.p_type, s.d_fix, p.fio editor, t.is_not_null ' +
    'from proj_chain_params s join proj_chains cs on cs.id_proj_chain = s.id_chain ' +
    'left join proj_types_params t on t.id_main_param = s.id_main_param ' +
    'and t.id_proj_type = cs.id_proj_type and t.id_operation is null ' +
    'join main_params m on m.id_main_param = s.id_main_param ' +
    'left join main_params_sets ms on ms.id_main_param = s.id_main_param ' +
    'left join units u on u.id_unit = m.id_unit ' +
    'left join personnel p on p.id_p = s.id_fix ' +
    'where s.id_chain = :id_proj_chain order by (t.posit)';
  //------------------------------------------------------------------------------
  p7.Hide;
  pSelClient.Hide;
  dbend.Value := Now;

  if (not qOperCH.Active) then
    qOperCH.Open;
  with qChain do
  begin
    Close;
    Open;
  end;
  with qManager do
  begin
    Close;
    Open;
  end;
  afscr := qPrj.AfterScroll;
  qPrj.AfterScroll := nil;
  if fmMain.Analiz = True then
    Exit;
  lbNew_Proj.Caption := '';
  with dmIS.qBrands do
  begin
    Close;
    UpdateObject := nil;
    Open;
    Last;
    First;
  end;

  with dmIS.qManager do
  begin
    Close;
    Open;
    Last;
    First;
  end;

  with dmIS.qPr_Typ do
  begin
    Close;
    Open;
    Last;
    First;
  end;

  with dmIS.qUSERS do
  begin
    Close;
    Open;
    Last;
    First;
  end;

  with dmIS.qCURR do
  begin
    Close;
    Open;
    Last;
    First;
  end;

  fmMain.pb.StepBy(5);

  OpenCli;
  OpenOrds;
  qPrj.AfterScroll := afscr;
  fmMain.pb.StepBy(5);
  fmMain.pb.Position := 0;
  Screen.Cursor := crDefault;
  flag := 1;
end;

procedure TfmCliOrds.dbg2SortMarkingChanged(Sender: TObject);
begin
  OpenOrds;
end;

procedure TfmCliOrds.ToolButton1Click(Sender: TObject);
begin
  OpenCli;
  //flag := 1;
end;

procedure TfmCliOrds.tb0Click(Sender: TObject);
begin
  OpenOrds;
end;

procedure TfmCliOrds.dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qOrdersID_DOC.AsInteger > 0 then
    AFont.Style := [fsItalic];
  if qOrdersSTATUS.AsInteger = 7 then
    AFont.Style := [fsUnderline];

  if qOrdersSTATUS.AsInteger >= 10 then
    AFont.Style := [fsBold];
  if qOrdersIS_RESERVE.AsInteger = 1 then
  begin
    // AFont.Style := [fsItalic];
    AFont.Color := clRed;
  end;
  
  if qOrdersSTATUS.AsInteger >= 20 then
  begin
    Background := clSkyBlue;
    AFont.Style := [fsBold];
  end;

  if not qOrdersD_REJECT.IsNull then
    AFont.Style := [fsStrikeOut];
  if (not qOrdersD_CLOSE.IsNull) then
    Background := clMoneyGreen;
  {if qOrdersSTATUS.AsInteger >= 5 Then Background := clFuchsia; //расчётчик
  if qOrdersSTATUS.AsInteger >= 10 Then Background := clSkyBlue;
  if qOrdersSTATUS.AsInteger >= 20 Then
  begin
   Background := clSkyBlue;
   AFont.Style := [fsBold];
  end;
  if qOrdersSTATUS.AsInteger >= 20 Then
  begin
   Background := clSkyBlue;
   AFont.Style := [fsBold];
  end;
  //if qOrdersSTATUS.AsInteger >= 85 Then Background := clSilver; //констр
  }
end;

procedure TfmCliOrds.tb2Click(Sender: TObject);
begin
  if qOrders.IsEmpty then
    exit;
  qPrj.Locate('ID_PROJECT', qOrdersID_PROJECT.AsInteger, []);
  if qOrdersSTATUS.AsInteger > 9 then
  begin
    MsgInformation('Заказ утвержден. Редактирование запрещено',
      'Проверка утверждения');
    exit;
  end;
  Screen.Cursor := crHourGlass;
  fmMain.NF_KOrder := fmMain.NF_KOrder + 1;
  if fmMain.NF_KOrder > 7 then
  begin
    ShowMessage('Вы открыли больше 7 форм в рамках Формы "Заказы"....');
    fmMain.NF_KOrder := fmMain.NF_KOrder - 1;
    exit;
  end;

  Application.CreateForm(TfmKOrder, f_KOrder[fmMain.NF_KOrder]);
  f_KOrder[fmMain.NF_KOrder].ind_KOrder := fmMain.NF_KOrder;

  f_KOrder[fmMain.NF_KOrder].id_project := qPrjID_PROJECT.AsInteger;
  f_KOrder[fmMain.NF_KOrder].DBText5.Caption := qPrjID_PROJECT.AsString;
  f_KOrder[fmMain.NF_KOrder].DBText6.Caption := qPrjNAME.AsString;
  f_KOrder[fmMain.NF_KOrder].d_Open := DateOf(qOrdersD_OPEN.AsDateTime); // дата открытия заказа
  //If not Assigned(fmKOrder) Then Application.CreateForm(TfmKOrder,fmKOrder);
  with f_KOrder[fmMain.NF_KOrder] do
  begin
    Kop := 2;
    Edit_Ord := 1;
    // Caption := IntToStr(ind_form)+ ', Редактирование данных заказа';
    qOrdParam.Close;
    C_ORD := qOrdersID_ORDER.AsInteger;
    c_ORD_KIND := qOrdersORD_KIND.AsInteger;
    ID_AGENT := qClientsID_ITEM.AsInteger;
    if (qOrdersID_DOC.IsNull) or (qOrdersID_DOC.AsInteger = 0) then
      id_doc := -1
    else
      id_doc := qOrdersID_DOC.AsInteger;
    fmMain.Status_Ord := qOrdersSTATUS.AsInteger;
    bbEstimate.Visible := True;
    ind_CliOrd := ind_form;
    if ind_form_KOrder > 5 then
    begin
      ShowMessage('Вы открыли больше 5 форм в рамках Формы "Заказы"....');
      ind_form_KOrder := ind_form_KOrder - 1;
    end;
    Screen.Cursor := crDefault;
    Show; //ShowModal;
    //OpenOrder;
  end;

end;

procedure TfmCliOrds.qOrdersCalcFields(DataSet: TDataSet);
begin
  case qOrdersSTATUS.AsInteger of
    0: qOrdersnSTAT.AsString := 'Новый';
    10: qOrdersnSTAT.AsString := 'Утвержден менеджером';
    20: qOrdersnSTAT.AsString := 'Утвержден руководителем';
    30: qOrdersnSTAT.AsString := 'Получен производством';
    40: qOrdersnSTAT.AsString := 'Утвержден в производство';
    45: qOrdersnSTAT.AsString := 'Принят конструктором';
    50: qOrdersnSTAT.AsString := 'Разработана технология';
    60: qOrdersnSTAT.AsString := 'Технология утверждена';
    70: qOrdersnSTAT.AsString := 'Принят в изготовление';
    100: qOrdersnSTAT.AsString := 'Изготовление завершено';
    110: qOrdersnSTAT.AsString := 'Вывезен полностью';
    120: qOrdersnSTAT.AsString := 'Получен заказчиком';
    200: qOrdersnSTAT.AsString := 'Отклонен';
  end;
  if qOrdersSTATUS.AsInteger > 9 then
    qOrdersfILL.AsString := '*'
  else
    qOrdersfILL.AsString := '';

end;

procedure TfmCliOrds.qDogovorCalcFields(DataSet: TDataSet);
begin
  if qDogovorVID.AsInteger = 0 then
    qDogovornVID.AsString := 'б/дн';
  if qDogovorVID.AsInteger = 1 then
    qDogovornVID.AsString := 'кал/дн';

end;

procedure TfmCliOrds.ToolButton6Click(Sender: TObject);
var
  flag: byte;
begin
  flag := 0;
  if qOrders.IsEmpty then
    exit;

  {*******************************************************************************
                    ПРОВЕРКА НА ПРИЗНАК УВОЛЬНЕНИЯ СОТРУДНИКА
                   (проверка пользователя вошедшего в систему)
  *******************************************************************************}
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    // проверка по менеджеру заказа
    Close;
    Clear;
    Add('select p.d_dismiss from project_ords s');
    Add('join personnel p on p.id_p = s.id_fix');
    Add('where s.id_order = :id_order');
    Add('and s.id_fix = :id_fix and p.is_fact is null');
    ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    ParamByName('id_fix').AsInteger := SysVars.RegTN;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('Вы не можете утвердить заказ, так как, менеджер этого заказа,' +
        'с этой учетной записью уволен', 'Внимание');
      Exit;
    end;
    // проверка по проекту если сотрудник уволен
    Close;
    Clear;
    Add('select p.d_dismiss from projects s');
    Add('join personnel p on p.id_p = s.id_manager');
    Add('where s.id_project = :id_project and s.id_manager = ');
    Add('(select id_manager from projects where id_project = :id_project) and p.is_fact is null');
    ParamByName('id_project').AsInteger := qOrdersID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('Вы не можете утвердить заказ, так как, менеджер проекта, ' +
        ' к которому относится выбранный заказ,' +
        'с этой учетной записью уволен', 'Внимание');
      Exit;
    end;

    // проверка на утверженный проект при утверждении заказа
    Close;
    Clear;
    Add('select id_fix from project_ords s where s.id_order = :id_order');
    ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    if dmIS.qIN.FieldByName('id_fix').IsNull then
    begin
      MsgError('Вы не можете утвердить заказ, так как не указан менеждер заказа',
        'Внимание');
      Exit;
    end;
  end;
  //******************************************************************************

  if qOrdersD_READY.IsNull then
  begin
    MsgError('Дата выполнения заказа не заполнена', 'Внимание');
    Exit;
  end;
  {If (qOrdersSTATUS.AsInteger = 7) and (qOrdersIS_RESERVE.AsInteger = 1) Then begin
   MsgInformation('Нельзя!!! заказ с признаком "Резерв" перевести в состояние "Утверждено менеджером...".','Проверка утверждения');
   exit;
  end;  }

  if qOrdersSTATUS.AsInteger > 9 then
  begin
    MsgInformation('Заказ уже утвержден.', 'Проверка утверждения');
    exit;
  end;
  if not TestInfoOrder then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select is_col,id_dogovor from project_ords where id_order = :i1');
    ParamByName('i1').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    if (FieldByName('is_col').AsInteger = 0) and
      (FieldByName('id_dogovor').IsNull) then
    begin
      MsgInformation('Необходимо указать № договора. Утверждение невозможно',
        'Проверка утверждения');
      exit;
    end;
  end;

  {with dmIS.qIN, dmIS.qIN.SQL do begin
   Close;
   Clear;
   Add('select status, d_fill from project_docs where id_project_doc = :doc1');
   ParamByName('doc1').AsInteger := qOrdersID_DOC.AsInteger;
   Open;
   If not ((FieldByName('status').AsInteger = 3) or (not FieldByName('d_fill').IsNull))
   Then begin
    MsgInformation('Документ-основание не подписан. Утверждение невозможно',
    'Проверка утверждения');
    exit;
   end;
  end;}
  {
  with dmIS.qIN, dmIS.qIN.SQL do begin
  //проверка на утв. сметы
    close;
    clear;
    add('select id_estimate, status, amount from estimates where id_estimate = :id_estimate');
    parambyname('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
    Open;
    if (IsEmpty) then
  //проверка расчёта сметы
    begin
     ShowMessage('Смета не найдена!!! Утверждение не возможно.');
     exit;
    end;
    if FieldByName('status').IsNull then
  //проверка расчёта сметы
    begin
     ShowMessage('Смета не расчитана!!!. Утверждение не возможно.');
     exit;
    end;

    if FieldByName('status').AsInteger = 10 then
  //проверка расчёта сметы
    begin
     ShowMessage('Смета расчитана с ошибкой!!! Утверждение не возможно.');
     exit;
    end;
    if FieldByName('amount').AsFloat <> qOrdersAMOUNT.AsFloat then
  //проверка кол-во заказа и сметы
    begin
     ShowMessage('Проверьте тираж. Кол-во в смете не соответствует тиражу...!!! Утверждение не возможно.');
     exit;
    end;

  end;
  }

  if MsgQuestion('После утверждения заказ будет недоступен для редактирования. '
    +
    SysVars.NReg + ', Вы действительно хотите утвердить заказ?',
    'Утверждение заказа') = id_yes then

    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      close;
      clear;
      add('select is_est from ptypes where id_ptype = :id_ptype');
      parambyname('id_ptype').AsInteger := qORDersID_CPTYPE.AsInteger;
      open;

      if (fieldbyname('is_est').AsInteger = 1) and (qOrdersORD_KIND.AsInteger <>
        2) then
      begin

        //проверка на утв. сметы
        close;
        clear;
        add('select id_estimate, d_confirm, status from estimates where id_estimate = :id_estimate');
        parambyname('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
        Open;
        if (fmMain.S19 = 0) and (fmMain.UF123 = false) then
        begin
          if fieldbyname('d_confirm').IsNull then
          begin
            MsgError('Нельзя утвердить заказ с неутвержденной сметой!',
              'Ошибка утверждения');
            exit;
          end;
        end;

        if (not IsEmpty) and (FieldByName('id_estimate').AsInteger > 0) then
          //утверждение сметы
        begin
          if (fieldbyname('status').IsNull) or (fieldbyname('status').AsInteger
            = 10) then
          begin
            MsgError('Нельзя утвердить заказ с нерасчитанной или посчитанной с ошибкой сметой!', 'Ошибка утверждения');
            exit;
          end;
          close;
          clear;
          add('update estimates set id_confirm = :id_confirm, d_confirm = current_date');
          add('where id_estimate = :id_estimate and id_confirm is null');
          parambyname('id_confirm').AsInteger := SysVars.RegTN;
          parambyname('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
          ExecSQL;
        end
        else
        begin
          ShowMessage('Не возможно утвердить заказ. Нет такой сметы...');
          exit;
        end;
      end;

      Close;
      Clear;
      Add('insert into project_ords_state (ID_ORDER, ID_ORD_EVENT, D_FACT, ID_FACT)');
      Add('values(:rno, 20, current_timestamp, :id_conf)');
      ParamByName('rno').AsInteger := qOrdersID_ORDER.AsInteger;
      ParamByName('id_conf').AsInteger := SysVars.RegTN;
      try
        ExecSQL;

        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;

        close;
        clear;
        add(' select p.* from ord_plan_shipp p');
        add('where p.id_order = :id_order and p.plan_type = 21');
        add('and p.id_delivery_type <> 1');
        parambyname('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
        open;
        if IsEmpty then
          flag := 1
        else
          flag := 0;
        //утверждение руководителем, если наценка > 0
        if ((qOrdersMANAGER_MARGIN.AsFloat >= 0) and (qOrdersDELIVERY_SUM.AsFloat
          > 0))

        or (
          (qOrdersMANAGER_MARGIN.AsFloat >= 0) and (flag = 1)
          and ((qOrdersDELIVERY_SUM.AsFloat = 0) or (qOrdersDELIVERY_SUM.isNull))
          ) or (fmMain.UF11) then
          with dmIS.qIN, dmIS.qIN.SQL do
          begin
            Close;
            Clear;
            Add('insert into project_ords_state (ID_ORDER, ID_ORD_EVENT, D_FACT, ID_FACT)');
            Add('values(:rno, 50, current_timestamp, :id_conf)');
            ParamByName('rno').AsInteger := qOrdersID_ORDER.AsInteger;
            ParamByName('id_conf').AsInteger := SysVars.RegTN;
            try
              ExecSQL;
              if dmIS.mT.Active then
                dmIS.mT.CommitRetaining;
            except
              if dmIS.mT.Active then
                dmIS.mT.RollbackRetaining;
            end;
          end;

        OpenOrds;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
    Order2XML(dmIS.dbIS,qOrdersID_ORDER.AsInteger);
end;

procedure TfmCliOrds.dbg2DblClick(Sender: TObject);
var
  s: string;
begin
  if qOrders.IsEmpty then
    exit;
  Screen.Cursor := crHourGlass;
  //If not Assigned(fmKOrder) Then Application.CreateForm(TfmKOrder,fmKOrder);
  fmMain.NF_KOrder := fmMain.NF_KOrder + 1;
  if fmMain.NF_KOrder > 5 then
  begin
    ShowMessage('Вы открыли больше 5 форм в рамках Формы "Заказы"....');
    fmMain.NF_KOrder := fmMain.NF_KOrder - 1;
    exit;
  end;

  Application.CreateForm(TfmKOrder, f_KOrder[fmMain.NF_KOrder]);
  //f_KOrder[fmMain.NF_KOrder].ind_KOrder := fmMain.NF_KOrder;

  with f_KOrder[fmMain.NF_KOrder] do
  begin
    ind_KOrder := fmMain.NF_KOrder;
    Kop := 0; //fmKOrder.Kop := 0;
    Edit_Ord := 1;
    qOrdParam.Close;
    C_ORD := qOrdersID_ORDER.AsInteger;
    C_ORD_KIND := qOrdersORD_KIND.AsInteger;
    ind_CliOrd := ind_form;
    Screen.Cursor := crDefault;
    f_KOrder[fmMain.NF_KOrder].DBText5.Caption := qOrdersID_PROJECT.AsString;
    f_KOrder[fmMain.NF_KOrder].DBText6.Caption := qOrdersNPROJ.AsString;
    Show;
  end;
end;

procedure TfmCliOrds.tb3Click(Sender: TObject);
begin
  if qOrders.IsEmpty then
    exit;
  if not qOrdersD_CLOSE.IsNull then
    exit;
  if (not qOrdersID_C.IsNull) then
  begin
    MsgInformation('Заказ зарегистрирован в центральной базе данных. ' +
      'Его удаление запрещено.', 'Проверка возможности удаления');
    exit;
  end;
  if qOrdersSTATUS.AsInteger >= 10 then
  begin
    MsgInformation('Нельзя удалить утвержденный заказ.',
      'Проверка возможности удаления');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select distinct id_order from product_objects where id_order = :or1');
    ParamByName('or1').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    if not IsEmpty then
    begin
      MsgInformation('C данным заказом связаны конструктивы изделий. ' +
        'Его удаление запрещено.', 'Проверка возможности удаления');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', Вы действительно хотите удалить ' +
    'заказ ' + qOrdersN_ORDER.AsString + ' - ' + qOrdersNAME.AsString +
    ' ?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECT_ORDS');
      Add('WHERE ID_ORDER = ' + qOrdersID_ORDER.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenOrds;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('Ошибка при удалении записи', 'Ошибка при удалении');
      end;
    end;

end;

procedure TfmCliOrds.pcChange(Sender: TObject);
var
  s: string;
begin
  try
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
    if pc.ActivePage = tsSh then
    begin
      qInvoice.Close;
      qInvoice.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
      qInvoice.Open;
    end;

    if pc.ActivePage = ts_ord then
    begin
      if qOrders.IsEmpty then
        Exit;
      qOrder_Lid.Close;
      qOrder_Lid.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
      if qOrdersLID.AsInteger = 0 then
        qOrder_Lid.ParamByName('lid').Clear
      else
        qOrder_Lid.ParamByName('lid').AsInteger := qOrdersLID.AsInteger;
      qOrder_Lid.Open;
      cbOrdClick(Sender);
    end;

    if pc.ActivePage = tsBill then
      with qBills, qBills.SQL do
      begin
        Close;
        Clear;
        Add('select i.id_item, i.name, s.amount, u.name uname,');
        Add('case when r.is_comm = 1 then -1 * s.summa else s.summa end summa,');
        add('(select nds_val from get_nds_sum(case when r.is_comm = 1 then -1 *'
          + ' s.summa else s.summa end,1)) summa_bez_nds,');
        Add('s.id_pa_bill_pos, b.id_pa_bill, b.d_fix, b.number n_bill, r.is_comm,b.d_bill');
        Add('from pa_bill_pos s join p_area_bills b on b.id_pa_bill = s.id_pa_bill');
        Add('and b.pa_bill_type = 106 and b.d_fix is not null');
        Add('join batch_price r on r.id_batch = s.id_batch');
        Add('join items i on i.id_item = s.id_object');
        Add('join params_value p on p.id_item = s.id_object');
        Add('and p.id_param = 1 and p.data = ''1.01.1900''');
        Add('join units u on u.id_unit = p.smlval');
        Add('where s.id_order = :id_order');
        Add('union');
        Add('select i.id_item, i.name, s.amount, u.name uname,');
        Add('case when r.is_comm = 0 then -1 * s.summa else s.summa end summa,');
        add('(select nds_val from get_nds_sum(case when r.is_comm = 1 then -1 *'
          + ' s.summa else s.summa end,1)) summa_bez_nds,');
        Add('s.id_pa_bill_pos, b.id_pa_bill, b.d_fix, b.number n_bill, r.is_comm,b.d_bill');
        Add('from pa_bill_pos s join p_area_bills b on b.id_pa_bill = s.id_pa_bill');
        Add('and b.pa_bill_type = 4 and b.d_fix is not null');
        Add('join batch_price r on r.id_batch = s.id_batch');
        Add('join items i on i.id_item = s.id_object');
        Add('join params_value p on p.id_item = s.id_object');
        Add('and p.id_param = 1 and p.data = ''1.01.1900''');
        Add('join units u on u.id_unit = p.smlval');
        Add('where s.id_order = :id_order');
        Add(OrdBy(dbg28));
        ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
        Open;
      end;

    if pc.ActivePage = tsExp then
    begin
      qExp.Close;
      qExp.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
      qExp.Open;
    end;
    if pc.ActivePage = tsWork then
    begin
      qOrdWork.Close;
      qOrdWork.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
      qOrdWork.Open;
      dbg27.FieldColumns['ESTIMATE_AMOUNT'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Кол-во';
      dbg27.FieldColumns['nE_AM'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Время';
      dbg27.FieldColumns['ESTIMATE_SUM'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Сумма';
      dbg27.FieldColumns['ESTIMATE_SUM_BEZ_NDS'].Title.Caption := 'Смета ПЭО ['
        +
        qOrdersID_ESTIMATE.AsString + ']|Сумма без НДС';
      dbg27.FieldColumns['ESTIMATE_PRICE'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Цена';
      dbg27.FieldColumns['ESTIMATE_PRICE_BEZ_NDS'].Title.Caption := 'Смета ПЭО ['
        +
        qOrdersID_ESTIMATE.AsString + ']|Цена без НДС';
      dbg27.FieldColumns['KD_AMOUNT'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Кол-во';
      dbg27.FieldColumns['nKD_AM'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Время';
      dbg27.FieldColumns['KD_SUM'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Сумма';
      dbg27.FieldColumns['KD_SUM_BEZ_NDS'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Сумма без НДС';
      dbg27.FieldColumns['KD_PRICE'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Цена';
      dbg27.FieldColumns['KD_PRICE_BEZ_NDS'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Цена без НДС';
    end;

    if pc.ActivePage = tsE_L_B then
    begin
      dbg118SortMarkingChanged(Sender);
      dbg118.FieldColumns['ESTIMATE_AMOUNT'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Кол-во';
      dbg118.FieldColumns['ESTIMATE_SUM'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Сумма';
      dbg118.FieldColumns['ESTIMATE_SUM_BEZ_NDS'].Title.Caption := 'Смета ПЭО ['
        +
        qOrdersID_ESTIMATE.AsString + ']|Сумма без НДС';
      dbg118.FieldColumns['ESTIMATE_PRICE'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Ср.Цена';
      dbg118.FieldColumns['ESTIMATE_PRICE_BEZ_NDS'].Title.Caption :=
        'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Ср.Цена без НДС';
      dbg118.FieldColumns['COMM_AMOUNT_PEO'].Title.Caption := 'Смета ПЭО [' +
        qOrdersID_ESTIMATE.AsString + ']|Кол-во ДС';
      dbg118.FieldColumns['KD_AMOUNT'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Кол-во';
      dbg118.FieldColumns['KD_SUM'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Сумма';
      dbg118.FieldColumns['KD_SUM_BEZ_NDS'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Сумма без НДС';
      dbg118.FieldColumns['KD_PRICE'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Ср.Цена';
      dbg118.FieldColumns['KD_PRICE_BEZ_NDS'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Ср.Цена без НДС';
      dbg118.FieldColumns['COMM_AMOUNT_KD'].Title.Caption := 'Смета КД [' +
        qOrdersID_ESTIMATE_KD.AsString + ']|Кол-во ДС';
      dbg118.FieldColumns['LIMIT_AMOUNT'].Title.Caption := 'Лимит на ' +
        FormatDateTime('dd.mm.yyyy', qOrder_MatD_CONF.AsDateTime) + '|Кол-во';
      dbg118.FieldColumns['LIMIT_SUM'].Title.Caption := 'Лимит на ' +
        FormatDateTime('dd.mm.yyyy', qOrder_MatD_CONF.AsDateTime) + '|Сумма';
      dbg118.FieldColumns['LIMIT_SUM_BEZ_NDS'].Title.Caption := 'Лимит на ' +
        FormatDateTime('dd.mm.yyyy', qOrder_MatD_CONF.AsDateTime) +
        '|Сумма без НДС';
      dbg118.FieldColumns['LIMIT_PRICE'].Title.Caption := 'Лимит на ' +
        FormatDateTime('dd.mm.yyyy', qOrder_MatD_CONF.AsDateTime) + '|Ср.Цена';
      dbg118.FieldColumns['LIMIT_PRICE_BEZ_NDS'].Title.Caption := 'Лимит на ' +
        FormatDateTime('dd.mm.yyyy', qOrder_MatD_CONF.AsDateTime) +
        '|Ср.Цена без НДС';
      dbg118.FieldColumns['COMM_AMOUNT_L'].Title.Caption := 'Лимит на ' +
        FormatDateTime('dd.mm.yyyy', qOrder_MatD_CONF.AsDateTime) +
        '|Кол-во ДС';
    end;

    if pc.ActivePage = tsEvent then
    begin
      qEstEV.Close;
      qEstEv.ParamByName('id_Est_peo').AsInteger :=
        qOrdersID_ESTIMATE.AsInteger;
      qEstEv.ParamByName('id_est_kd').AsInteger :=
        qOrdersID_ESTIMATE_KD.AsInteger;
      qEstEv.Open;
      with dmIS.qOrd_PF do
      begin
        Close;
        DataSource := dsOrders;
        Open;
      end;
      with dmIS.qOrd_S do
      begin
        Close;
        DataSource := dsOrders;
        Open;
      end;
    end;   
    if pc.ActivePage = tsEst then
    begin
      gbEst.Caption := 'Распределение по смете ПЭО № ' +
        qOrdersID_ESTIMATE.AsString;
      gbFact.Caption := 'Распределение по смете КД № ' +
        qOrdersID_ESTIMATE_KD.AsString +
        ' по заказу № ' + qOrdersN_ORDER.AsString;
      //по смете
      with qEst_Op_Type do
      begin
        Close;
        ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
        Open;
      end;
      with qEst_Op_Type_Oper do
      begin
        Close;
        ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
        Open;
      end;
      with qEst_Op_Type_TMC do
      begin
        Close;
        ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
        Open;
      end;
      //по заказу
      with qOrder_Op_Type do
      begin
        Close;
        ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE_KD.AsInteger;
        Open;
      end;

      //по смете КД
      with qOrder_Op_Type_Oper do
      begin
        Close;
        ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE_KD.AsInteger;
        Open;
      end;

      with qOrder_Op_Type_TMC do
      begin
        Close;
        ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE_KD.AsInteger;
        Open;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.qEst_Op_Type_OperCalcFields(DataSet: TDataSet);
begin
  if (qEst_Op_Type_OperAMOUNT_TIME.AsFloat <> 0) then
    qEst_Op_Type_OpernAmount_Time.AsString :=
      HourToTime(qEst_Op_Type_OperAMOUNT_TIME.AsFloat);
  if (qEst_Op_Type_OperAMOUNT_TIME.AsFloat = 0) and
    (qEst_Op_Type_OperFULL_AMOUNT.AsFloat > 0) then
    qEst_Op_Type_OpernAmount_Time.AsString :=
      qEst_Op_Type_OperFULL_AMOUNT.AsString;
end;

procedure TfmCliOrds.qOrder_Op_Type_OperCalcFields(DataSet: TDataSet);
begin
  if (qOrder_Op_Type_OperAMOUNT_TIME.AsFloat <> 0) then
    qOrder_Op_Type_OpernAmount_Time.AsString :=
      HourToTime(qOrder_Op_Type_OperAMOUNT_TIME.AsFloat);
  if (qOrder_Op_Type_OperAMOUNT_TIME.AsFloat = 0) and
    (qOrder_Op_Type_OperFULL_AMOUNT.AsFloat > 0) then
    qOrder_Op_Type_OpernAmount_Time.AsString :=
      qOrder_Op_Type_OperFULL_AMOUNT.AsString;

end;

procedure TfmCliOrds.ToolButton8Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if dbg1.Focused then
      GridToExcel(dbg1);
    if dbg2.Focused then
      GridToExcel(dbg2);
    if dbg3.Focused then
      GridToExcel(dbg3);
    if dbg44.Focused then
      GridToExcel(dbg4);
    if dbg4.Focused then
      GridToExcel(dbg44);
    if dbg5.Focused then
      GridToExcel(dbg5);
    if dbg6.Focused then
      GridToExcel(dbg6);
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
    if dbg12.Focused then
      GridToExcel(dbg12);
    if dbg14.Focused then
      GridToExcel(dbg14);
    if dbg15.Focused then
      GridToExcel(dbg15);
    if dbg16.Focused then
      GridToExcel(dbg16);
    if dbg17.Focused then
      GridToExcel(dbg17);
    if dbg118.Focused then
      GridToExcel(dbg118);
    if dbg19.Focused then
      GridToExcel(dbg19);
    if dbg20.Focused then
      GridToExcel(dbg20);
    if dbg26.Focused then
      GridToExcel(dbg26);
    if dbg27.Focused then
      GridToExcel(dbg27);
    if dbg30.Focused then
      GridToExcel(dbg30);
    if dbg31.Focused then
      GridToExcel(dbg31);
    if dbg32.Focused then
      GridToExcel(dbg32);
    if dbg33.Focused then
      GridToExcel(dbg32);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.N1Click(Sender: TObject);
begin
  if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  fmRep.qOrd_Lid.Close;
  fmRep.qOrd_Lid.ParamByName('id_order').AsInteger := qOrdersLID.AsInteger;
  if (qOrdersLID.AsInteger > 0) and (not qOrdersLID.IsNull) then
    fmRep.qOrd_Lid.Open;

  fmRep.qOrder.Close;
  fmRep.qOrder.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qOrder.Open;
  fmRep.qOrder_S.Close;
  fmRep.qOrder_S.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_S.Open;
  fmRep.qPlan_SH.Close;
  fmRep.qPlan_SH.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qPlan_SH.Open;
  fmRep.qOrder_Param.Close;
  fmRep.qOrder_Param.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_Param.ParamByName('id_ptype').AsInteger :=
    qOrdersID_CPTYPE.AsInteger;
  fmRep.qOrder_Param.Open;
  fmRep.qOrd_Param_Obj.Close;
  fmRep.qOrd_Param_Obj.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;
  fmRep.qOrd_Param_Obj.ParamByName('id_ptype').AsInteger :=
    qOrdersID_CPTYPE.AsInteger;
  fmRep.qOrd_Param_Obj.Open;
  fmRep.qEst_Oper.Close;
  fmRep.qEst_Oper.ParamByName('id_estimate').AsInteger :=
    qOrdersID_ESTIMATE.AsInteger;
  fmRep.qEst_Oper.Open;
  fmRep.qEst_MTC.Close;
  fmRep.qEst_MTC.ParamByName('id_estimate').AsInteger :=
    qOrdersID_ESTIMATE.AsInteger;
  fmRep.qEst_MTC.Open;
  fmRep.frxRepTeh_Order.ShowReport;

end;

procedure TfmCliOrds.ToolButton9Click(Sender: TObject);
begin
  if qOrders.IsEmpty then
    exit;
  if qOrdersSTATUS.AsInteger > 5 then
  begin
    MsgInformation('Заказ уже утвержден.', 'Проверка утверждения');
    Exit;
  end;

  if MsgQuestion('После утверждения заказ будет расчитан в расчётном отделе. ' +
    SysVars.NReg + ', Вы действительно хотите утвердить заказ?',
    'Утверждение заказа') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('insert into project_ords_state (ID_ORDER, ID_ORD_EVENT, D_FACT, ID_FACT)');
      Add('values(:rno, 10, current_timestamp, :id_conf)');
      ParamByName('rno').AsInteger := qOrdersID_ORDER.AsInteger;
      ParamByName('id_conf').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenOrds;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmCliOrds.N2Click(Sender: TObject);
begin
  if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  fmRep.qOrder.Close;
  fmRep.qOrder.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qOrder.Open;
  fmRep.qOrder_S.Close;
  fmRep.qOrder_S.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_S.Open;
  fmRep.qPlan_SH.Close;
  fmRep.qPlan_SH.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qPlan_SH.Open;
  fmRep.qOrder_Param.Close;
  fmRep.qOrder_Param.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_Param.ParamByName('id_ptype').AsInteger :=
    qOrdersID_CPTYPE.AsInteger;
  fmRep.qOrder_Param.Open;
  fmRep.qMat_Base.Close;
  fmRep.qMat_Base.ParamByName('id_estimate').AsInteger :=
    qOrdersID_ESTIMATE.AsInteger;
  fmRep.qMat_Base.Open;
  fmRep.qOrder_Pos.Close;
  fmRep.qOrder_Pos.ParamByName('id_ptype').AsInteger :=
    qOrdersID_CPTYPE.AsInteger;
  fmRep.qOrder_Pos.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_Pos.Open;
  fmRep.frxRepT_Order.ShowReport;

end;

procedure TfmCliOrds.tbs2Click(Sender: TObject);
begin
  if qPrj.IsEmpty then
    exit;
  if not qPrjD_FIX.IsNull then
  begin
    MsgInformation('Проект утвержден. Редактирование запрещено',
      'Проверка утверждения');
    exit;
  end;
  lbNew_Proj.Caption := 'Редактирование проекта';
  kop_proj := 0;
  panel3.Show;
  ed2.Text := qPrjNAME.AsString;
  ed3.Text := qPrjBRIEF.AsString;
  ed4.Text := qPrjSUMMA.AsString;
  ed5.Text := qPrjAMOUNT.AsString;
  if qPrjID_MANAGER.IsNull then
    lcb4.KeyValue := NULL
  else
  begin
    dmIS.qManager.Locate('ID_P', qPrjID_MANAGER.Value, []);
    lcb4.KeyValue := dmIS.qManagerID_P.Value;
  end;
  if qPrjID_BRAND.IsNull then
    lcb2.KeyValue := NULL
  else
  begin
    dmIS.qBrands.Locate('ID_BRAND', qPrjID_BRAND.Value, []);
    lcb2.KeyValue := dmIS.qBrandsID_BRAND.Value;
  end;
  if qPrjID_PROJ_TYPE.IsNull then
    lcb3.KeyValue := NULL
  else
  begin
    dmIS.qPr_Typ.Locate('ID_PROJ_TYPE', qPrjID_PROJ_TYPE.Value, []);
    lcb3.KeyValue := dmIS.qPr_TypID_PROJ_TYPE.Value;
  end;
  if qPrjCURRENCY.IsNull then
    lcb6.KeyValue := NULL
  else
  begin
    dmIS.qCURR.Locate('ID_CURRENCY', qPrjCURRENCY.Value, []);
    lcb6.KeyValue := dmIS.qCURRID_CURRENCY.Value;
  end;
  dtp1.Text := qPrjDATA.AsString;

  dtp2.Text := qPrjDATAEND.AsString;
  pcProj.ActivePage := tsProj2;

end;

procedure TfmCliOrds.ToolButton15Click(Sender: TObject);
begin
  kop_proj := 1;
  lbNew_Proj.Caption := 'Новый проект';
  C_CLI := qClientsID_ITEM.AsInteger;
  C_PR := qPrjID_PROJECT.AsInteger;

  lcb2.KeyValue := null;
  lcb3.KeyValue := null;
  lcb4.KeyValue := null;

  lcb6.KeyValue := null;
  ed2.Text := '';
  ed3.Text := '';
  ed4.Text := '';
  ed5.Text := '';
  dtp1.Value := date;
  dtp2.Clear;
  pcProj.ActivePage := tsProj2;
  panel3.Show;
  lcb4.KeyValue := SysVars.RegTN;
end;

procedure TfmCliOrds.qPrjCalcFields(DataSet: TDataSet);
begin
  if qPrjD_FIX.IsNull then
    qPrjfILL.Clear
  else
    qPrjfILL.AsString := '*';

end;

procedure TfmCliOrds.bb1Click(Sender: TObject);
var
  id_proj: Integer;
begin
  C_PR := qPrjID_PROJECT.AsInteger;
  if lcb3.KeyValue = NULL then
  begin
    MsgInformation('Не задан тип проекта', 'Проверка данных');
    exit;
  end;

  if fmMain.S51 = 1 then
  begin
    if lcb2.KeyValue = NULL then
    begin
      MsgInformation('Не задан бренд', 'Проверка данных');
      exit;
    end;
  end;

  if lcb4.KeyValue = NULL then
  begin
    MsgInformation('Не выбран менеджер проекта', 'Проверка данных');
    exit;
  end;

  if ed2.Text = '' then
  begin
    MsgInformation('Не задано наименование проекта', 'Проверка данных');
    exit;
  end;

  if ed5.Text = '' then
  begin
    MsgInformation('Не задан предполагаемый тираж проекта', 'Проверка данных');
    exit;
  end;

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_PRJ FROM WRITE_PROJECT( :idp, :br, :man, :ag, :bnd, :nm,');
    Add(' :dc, :pt, :ide, :de, :sm, :exp, :idcur, :am)');
    if kop_proj = 1 then
      ParamByName('idp').Clear
    else
      ParamByName('idp').AsInteger := qPrjID_PROJECT.AsInteger;
    ParamByName('br').AsString := ed3.Text;
    if lcb4.KeyValue = NULL then
      ParamByName('man').Clear
    else
      ParamByName('man').AsInteger := lcb4.KeyValue;
    ParamByName('ag').AsInteger := qClientsID_ITEM.AsInteger;
    if lcb2.KeyValue = NULL then
      ParamByName('bnd').Clear
    else
      ParamByName('bnd').AsInteger := lcb2.KeyValue;
    ParamByName('nm').AsString := ed2.Text;
    if ed5.Text = '' then
      ParamByName('am').Clear
    else
      ParamByName('am').AsString := ed5.Text;
    { try
      ParamByName('dc').AsDate := StrToDate(dtp1.Text);
     except
      ParamByName('dc').AsDate := Date;
     end;
     try
      ParamByName('de').AsDate := StrToDate(dtp2.Text);
     except
      ParamByName('de').Clear;
     end;
    }
    ParamByName('dc').Value := dtp1.Value;
    ParamByName('de').Value := dtp2.Value;

    if lcb3.KeyValue = NULL then
      ParamByName('pt').Clear
    else
      ParamByName('pt').AsInteger := lcb3.KeyValue;
    ParamByName('ide').AsInteger := SysVars.RegTN;
    ParamByName('sm').AsString := ed4.Text;
    ParamByName('exp').Clear; // Добавить
    if lcb6.KeyValue = NULL then
      ParamByName('idcur').Clear
    else
      ParamByName('idcur').AsInteger := lcb6.KeyValue;
    // try
    Open;
    C_PR := dmIS.qIN.FieldByName('ID_PRJ').AsInteger;
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
    lbNew_Proj.Caption := '';
    panel3.Hide;
    pcProj.ActivePage := tsProj1;
    qPrj.Close;
    OpenProject_S;
    { except
      If dmIS.mT.Active Then dmIS.mT.RollbackRetaining;
      MsgError('Ошибка при редактировании проекта','Ошибка записи');
      exit;
     end;}
  end;

end;

procedure TfmCliOrds.bb2Click(Sender: TObject);
begin
  panel3.Hide;
  pcProj.ActivePage := tsProj1;

end;

procedure TfmCliOrds.pcProjChange(Sender: TObject);
begin
  if pcProj.ActivePage = tsProj2 then
    panel3.Hide;
  if pcProj.ActivePage = tsProj3 then
    OpenEst_Req;
  if pcProj.ActivePage = tsProj4 then
  begin
    qOper.Close;
    qOper.ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
    qOper.Open;
    qMat.Close;
    qMat.ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
    qMat.Open;
    {  qIns.Close;
      qIns.SQL.Clear;
      qIns.SQL.Add('select p.id_estimate,p.id_version, p.id_ptype, p.amount,sum(s.total)');
      qIns.SQL.Add(',sum(case when s.obj_kind = 1 then s.total else 0 end) sum_ost');
      qIns.SQL.Add(',sum(case when s.id_item is null then s.total  else 0 end) sum_oper');
      qIns.SQL.Add(',sum(case when s.id_item is not null then s.total else 0 end) sum_mat');
      qIns.SQL.Add(',sum(case when s.id_item is null then (s.total * (1+ t.profit/100))  else 0 end) sum_oper_proc');
      qIns.SQL.Add(',sum(case when s.id_item is not null then (s.total * (1 + t.dop_price/100)) else 0 end) sum_mat_proc');
      qIns.SQL.Add(',sum(case when s.id_item is null then (s.total *(1 + t.profit/100))  else 0 end)');
      qIns.SQL.Add('+ sum(case when s.id_item is not null then (s.total * (1 + t.dop_price/100)) else 0 end) sum_proc');
      qIns.SQL.Add('from estimates p');
      qIns.SQL.Add('join est_pos s on p.id_estimate = s.id_estimate');
      qIns.SQL.Add('join ptypes t on t.id_ptype = p.id_ptype');
      qIns.SQL.Add('where p.id_estimate = :id_estimate ');//and p.id_ptype = :id_ptype');
      qIns.SQL.Add('group by  p.id_estimate,p.id_version, p.id_ptype  ,p.amount');
      qIns.ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
      qIns.Open;  }
    qIns.Close;
    qIns.SQL.Clear;
    qIns.SQL.Add('select p.id_estimate,p.id_version, p.amount,');
    qIns.SQL.Add('sum(s.total_oper * (s.profit/100 + 1) +(s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1)) sum_proc');
    qIns.SQL.Add('from est_sum_oper_types s');
    qIns.SQL.Add('join estimates p on p.id_estimate = s.id_estimate');
    qIns.SQL.Add('where s.id_estimate = :id_estimate');
    qIns.SQL.Add('group by p.id_estimate,p.id_version,  p.amount');
    qIns.ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
    qIns.Open;
    if not qIns.IsEmpty then
      edRas.Text := FloatToStrF(qIns.FieldByName('sum_proc').AsCurrency,
        ffFixed, 15, 2);
    edKol.Text := qIns.FieldByName('amount').AsString;
    edPr.Text := '';
    edTotal.Text := '';
  end;
end;

procedure TfmCliOrds.tbs3Click(Sender: TObject);
begin
  if qPrj.IsEmpty then
    exit;
  if not qPrjD_FIX.IsNull then
  begin
    MsgInformation('Проект утвержден. Удаление запрещено',
      'Проверка утверждения');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT DISTINCT ID_PROJECT FROM PROJ_CHAINS WHERE ID_PROJECT = ' +
      qPrjID_PROJECT.AsString);
    Open;
    if not IsEmpty then
    begin
      MsgInformation('С проектом связаны объекты. Удаление запрещено',
        'Запрет удаления');
      Exit;
    end;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT DISTINCT ID_PROJECT FROM PROJECT_DOCS WHERE ID_PROJECT = ' +
      qPrjID_PROJECT.AsString);
    Open;
    if not IsEmpty then
    begin
      MsgInformation('С проектом связаны документы. Удаление запрещено',
        'Запрет удаления');
      exit;
    end;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT DISTINCT ID_PROJECT FROM PROJECT_ORDS WHERE ID_PROJECT = ' +
      qPrjID_PROJECT.AsString);
    Open;
    if not IsEmpty then
    begin
      MsgInformation('С проектом связаны ТЗ. Удаление запрещено',
        'Запрет удаления');
      exit;
    end;
    Close;
    Clear;
    Add('select r.id_request from estimate_requests r');
    add(' where r.id_project = ' + qPrjID_PROJECT.AsString +
      '  and r.status = 40 ');
    open;
    if not IsEmpty then
    begin
      MsgInformation('С проектом связаны выполненные зявки. Удаление запрещено',
        'Запрет удаления');
      exit;
    end;

  end;
  if MsgQuestion(SysVars.NReg + ', Вы действительно хотите удалить проект - ' +
    qPrjNAME.AsString + ' ?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECTS WHERE ID_PROJECT = ' +
        qPrjID_PROJECT.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
      OpenProject_S;
    end;

end;

procedure TfmCliOrds.tbs7Click(Sender: TObject);
begin
  if qPrj.IsEmpty then
    exit;
  if not fmMain.UF54 then
    exit;
  panel3.Hide;
  pcProj.ActivePage := tsProj2;
  with dmIS.qCFIO do
  begin
    Close;
    Open;
    Last;
    First;
    if qPrjID_DESIGNER.IsNull then
      dmIS.qCFIO.Locate('ID_P', SysVars.RegTN, [])
    else
      dmIS.qCFIO.Locate('ID_P', qPrjID_DESIGNER.AsInteger, []);
    lcbDiz.KeyValue := dmIS.qCFIOID_P.AsInteger;
  end;

  lbDiz.Visible := True;
  lcbDiz.Visible := True;

  bbDiz.Visible := True;

end;

procedure TfmCliOrds.bbDizClick(Sender: TObject);
begin
  C_PR := qPrjID_PROJECT.AsInteger;

  if (MsgQuestion('Проект - ' + qPrjNAME.AsString +
    '. Дизайнер проекта: ' + dmIS.qCFIOFIO.AsString +
    '. ' + SysVars.NReg + ', Записать?',
    'Назначение дизайнера проекта') = id_yes) then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECTS SET D_DACCEPT = CURRENT_TIMESTAMP, ID_DACCEPTOR = :dda1,');
      Add('ID_DESIGNER = :dz1 WHERE ID_PROJECT = :pr1');
      ParamByName('dda1').AsInteger := SysVars.RegTN;
      ParamByName('dz1').AsInteger := lcbDiz.KeyValue;
      ParamByName('pr1').AsInteger := qPrjID_PROJECT.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        lbDiz.Visible := False;
        lcbDiz.Visible := False;
        bbDiz.Visible := False;
        panel3.Hide;
        pcProj.ActivePage := tsProj1;
        OpenProject_S;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('Ошибка записи приемки проекта', 'ошибка записи');
      end;
    end;
end;

procedure TfmCliOrds.tbs5Click(Sender: TObject);
begin
  if not Assigned(fm_Find) then
    Application.CreateForm(Tfm_Find, fm_Find);
  fm_Find.kf := 1;
  fm_Find.Show;
end;

procedure TfmCliOrds.tbs6Click(Sender: TObject);
begin
application.ProcessMessages;
  if f_CliOrds[fmMain.NF_CliOrds].qPrj.IsEmpty then
    exit;
  if not f_CliOrds[fmMain.NF_CliOrds].qPrjD_FIX.IsNull then
  begin
    MsgInformation('Проект уже утвержден', 'Утверждение проекта');
    exit;
  end;
  C_PR := f_CliOrds[fmMain.NF_CliOrds].qPrjID_PROJECT.AsInteger;

  if not fmMain.UF53 then if (f_CliOrds[fmMain.NF_CliOrds].qPrjID_EDIT.AsInteger <> SysVars.RegTN) then exit;
  
  if MsgQuestion('После утверждения проект будет зафиксирован ' +
    'в базе данных и недоступен для редактирования. ' + SysVars.NReg +
    ', Вы действительно хотите утвердить выбранный проект?',
    'Утверждение проекта') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECTS SET D_FIX = CURRENT_TIMESTAMP, ID_FIX = :idp');
      Add('WHERE ID_PROJECT = :idpd ');
      ParamByName('idp').AsInteger := SysVars.RegTN;
      ParamByName('idpd').AsInteger := f_CliOrds[fmMain.NF_CliOrds].qPrjID_PROJECT.AsInteger;
      try
       ExecSQL;
       if dmIS.mT.Active then dmIS.mT.CommitRetaining;
       OpenProject_s;
      except
       MsgError('Ошибка при утверждении документа','Ошибка записи');
       if dmIS.mT.Active then dmIS.mT.RollbackRetaining;
      end;
    end;

end;

procedure TfmCliOrds.tbz2Click(Sender: TObject);
begin
  if qEstReq.IsEmpty then
    exit;
  if not qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('Нельзя редактировать утвержденную заявку',
      'Проверка статуса');
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmKEReq) then
      Application.CreateForm(TfmKEReq, fmKEReq);
    fmKEReq.lcbReq_Kind.KeyValue := qEstReqREQ_KIND.AsInteger;
    fmKEReq.lcbReq_Type.KeyValue := qEstReqREQ_TYPE.AsInteger;
    fmKEReq.m1.Lines.Text := qEstReqREM.AsString;
    fmKEReq.Kop := 2;
    fmKEReq.ShowModal;
    OpenEst_Req;
  finally
    Screen.Cursor := crHourGlass;
  end;
end;

procedure TfmCliOrds.tbNew_RegClick(Sender: TObject);
begin
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qProjID_PROJECT.AsInteger;
    Open;
    if not dmis.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Вы не можете утвердить заявку, так так проект закрыт',
        'Внимание');
      Exit;
    end;
  end;
  //********************************
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmKEReq) then
      Application.CreateForm(TfmKEReq, fmKEReq);
    with fmKEReq do
    begin
      Kop := 1;
      C_PROJECT := qPrjID_PROJECT.AsInteger;
      fmKEReq.nomOrder.Caption := '';
      fmKEReq.n_Order.Caption := '';
      fmKEReq.m1.Clear;
      ShowModal;
    end;
    OpenEst_Req;
    qEstReq.Locate('ID_REQUEST', fmKEReq.New_Req, []);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.tbz9Click(Sender: TObject);
var
  FName: string;
  ID_I, id: integer;
begin
  if qEstReqSTATUS.AsInteger > 10 then
  begin
    MsgInformation('Заявка взята в работу ПЭО. Изменение невозможно',
      'Проверка статуса');
    exit;
  end;
  //создать запись в таблице PROJECT_DOC
  {with dmIS.qIN, dmIS.qIN.SQL do begin
   Close;
   Clear;
   Add('SELECT ID_DOC FROM WRITE_PROJECT_DOC(null, :idpr, null, null, current_date,');
   Add('current_date, null,null,null, :idp, :nm1)');
  // ParamByName('idoc').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
   ParamByName('idpr').AsInteger := qPrjID_PROJECT.AsInteger;
   ParamByName('nm1').AsString := 'Создание заявки на расчёт сметы';
   ParamByName('idp').AsInteger := SysVars.RegTN;
   try
    Open;
    id := dmIS.qIN.FieldByName('ID_DOC').AsInteger;
    If dmIS.mT.Active Then dmIS.mT.CommitRetaining;
   except
    If dmIS.mT.Active Then dmIS.mT.RollbackRetaining;
  //  MsgError('Ошибка при редактировании карточки документа','Ошибка записи');
    exit;
   end;
  end;
  }
  if od1.Execute then
  begin
    // If dmIS.qDOCID_DRAFT.IsNull Then begin
 {   with dmIS.qD_IN, dmIS.qD_IN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT * FROM NEW_DESIGN_DOC( ' + IntToStr(id) + ',' +
        IntToStr(SysVars.RegTN) + ')');
      try
        Open;
        ID_I := FieldByName('ID_DOC').Value;
        if dmIS.dT.Active then
          dmIS.dT.CommitRetaining;
      except
        if dmIS.dT.Active then
          dmIS.dT.RollbackRetaining;
        MsgError('Ошибка при записи нового эскиза', 'Ошибка записи');
        exit;
      end;
    end;           }
    {  with dmIS.qIN, dmIS.qIN.SQL do begin
       Close;
       Clear;
       Add('UPDATE PROJECT_DOCS SET ID_DRAFT = ' + IntToStr(ID_I) );
       Add('WHERE ID_PROJECT_DOC = ' + IntToStr(id));
       try
        ExecSQL;
        If dmIS.mT.Active Then dmIS.mT.CommitRetaining;
       except
        If dmIS.mT.Active Then dmIS.mT.RollbackRetaining;
        MsgError('Ошибка при записи нового документа','Ошибка записи');
        exit;
       end;
      end;}
    ID_I := DocBody(0, 2, od1.FileName);
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE ESTIMATE_REQUESTS SET ID_DOC = ' + IntToStr(ID_I));
      Add('WHERE ID_REQUEST = ' + qEstReqID_REQUEST.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenEst_Req;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('Ошибка при записи нового документа', 'Ошибка записи');
        exit;
      end;
    end;

  end;

  FName := ExtractFileName(od1.FileName);
 // DocBody(ID_I, 2, od1.FileName); // переход на новую базу документов
 // fmMain.StoreDoc(2, ID_I, FName, dmIS.qR_BODY);
end;

procedure TfmCliOrds.tbz3Click(Sender: TObject);
begin
  if qEstReq.IsEmpty then
    exit;
  if qEstReqSTATUS.AsInteger >= 20 then
  begin
    MsgInformation('Заявка взята в работу ПЭО. Удаление невозможно',
      'Проверка статуса');
    exit;
  end;
  if not qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('Заявка утверждена. Удаление невозможно',
      'Проверка статуса');
    exit;
  end;
  if MsgQuestion('Заявка № ' + qEstReqID_REQUEST.AsString +
    ' будет удалена. Удалить заявку?', 'Удаление заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM ESTIMATE_REQUESTS WHERE ID_REQUEST = :c_req');
      ParamByName('c_req').AsInteger := qEstReqID_REQUEST.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenEst_Req;
      except
        MsgError('Ошибка при удалении заявки', 'Ошибка записи');
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;

end;

procedure TfmCliOrds.tbz4Click(Sender: TObject);
begin
  if qEstReq.IsEmpty then
    Exit;
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qProjID_PROJECT.AsInteger;
    Open;
    if not dmis.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Вы не можете утвердить заявку, так так проект закрыт',
        'Внимание');
      Exit;
    end;
  end;
  //********************************
  if not qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('Заявка уже утверждена', 'Проверка статуса');
    exit;
  end;
  if qEstReqREQ_KIND.IsNull then
  begin
    MsgError('Не задан вид заказа.', 'Проверка данных');
    exit;
  end;
  if qEstReqREQ_TYPE.IsNull then
  begin
    MsgError('Не задан тип заказа.', 'Проверка данных');
    exit;
  end;
  try
   Screen.Cursor := crHourGlass;
   with dmIS.qIM, dmIS.qIM.SQL do
   begin
    Close;
    Clear;
    Add('UPDATE ESTIMATE_REQUESTS SET D_MANAGER = CURRENT_TIMESTAMP');
    Add(', ID_MANAGER = :idp1, STATUS = 10');
    Add('WHERE ID_REQUEST = :c_req');
    ParamByName('idp1').AsInteger := SysVars.RegTN;
    ParamByName('c_req').AsInteger := qEstReqID_REQUEST.AsInteger;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      OpenEst_Req;
     except
      MsgError('Ошибка записи заявки', 'Ошибка записи');
      if Transaction.Active then
        Transaction.Rollback;
     end;
   end;
  finally
   Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.tbz5Click(Sender: TObject);
var
  id: integer;
begin
  if qEstReq.IsEmpty then
    exit;
  if qEstReqD_MANAGER.IsNull then
    exit;
  id := qEstReqID_REQUEST.AsInteger;
  if qEstReq.Transaction.Active then
    qEstReq.Transaction.CommitRetaining;
  if dmIS.qIM.Transaction.Active then
    dmIS.qIM.Transaction.Commit;
  qEstReq.Close;
  qEstReq.Open;
  qEstReq.Locate('id_request', id, []);

  // провера  на статус операции
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_get from estimate_requests where id_request = :id_req');
    ParamByName('id_req').AsInteger := qEstReqID_REQUEST.AsInteger;
    Open;
    if (not FieldByName('d_get').IsNull) then
    begin
      MsgError('Операция была принята в работу. Нельзя разутвердить заявку',
        'Внимание');
      Exit;
    end;
  end;

  if (qEstReqSTATUS.AsInteger > 10) and (qEstReqSTATUS.AsInteger < 50) then
  begin
    MsgInformation('Заявка уже принята ПЭО. Снятие утверждения запрещено',
      'Проверка статуса');
    exit;
  end;
  Screen.Cursor := crHourGlass;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('UPDATE ESTIMATE_REQUESTS SET D_MANAGER = NULL');
    Add(', ID_MANAGER = NULL, STATUS = NULL');
    Add('WHERE ID_REQUEST = :c_req');
    ParamByName('c_req').AsInteger := qEstReqID_REQUEST.AsInteger;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      OpenEst_Req;
    except
      MsgError('Ошибка записи заявки', 'Ошибка записи');
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.tbz8Click(Sender: TObject);
begin
  if qEstReqID_DOC.IsNull then
    exit;
  dbg15DblClick(Sender);
end;

procedure TfmCliOrds.dbg15DblClick(Sender: TObject);
begin
 { if not dmIS.dbDOC.Connected then
  try
    dmIS.dbDOC.Connected := true;
  except
  end;   }

  //fmMain.StoreDoc(0,qEstReqID_DOC.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);

 Old_DocBody(qEstReqID_DOC.AsInteger, 0, ''); // переход на новую базу документов
 // fmAll.StoreDoc_r(qEstReqID_DOC.Value);

end;

procedure TfmCliOrds.qOperCalcFields(DataSet: TDataSet);
begin
  qOpernAmount_Time.AsString := HourToTime(qOperAMOUNT_TIME.AsFloat);
end;

procedure TfmCliOrds.NewOrdReq(ord_kind: byte);
begin
  if qEstReqSTATUS.AsInteger < 40 then
  begin
    ShowMessage('Заявка не выполнена....');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  ID_EST := qEstReqID_ESTIMATE.AsInteger;
  ins_ord := 1;
  lcbOrder.KeyValue := null;
  cbDoc.Enabled := true;
  edOrd.Clear;
  qOrd.Close;
  lbOrder.Caption := 'Создание заказа на основании заявки № ' +
    qEstReqID_REQUEST.AsString;
  if not qAgent.Active then
    qAgent.Open;
  if not qPDoc.Active then
    qPDoc.Open;
  if not qProj.Active then
    qProj.Open;
  if not qMen.Active then
    qMen.Open;
  lcbAg.KeyValue := qClientsID_ITEM.AsInteger;
  qOrd.Open;
  lcbOrder.KeyValue := qEstReqID_ORDER.AsInteger;
  lcbProj.KeyValue := qPrjID_PROJECT.AsInteger;
  lcbMen.KeyValue := qPrjID_MANAGER.AsInteger;
  with qOrd_Type, qOrd_Type.SQL do
  begin
    Close;
    Clear;
    Add('select * from ORD_TYPES order by NAME');
    Open;
    FetchAll;
  end;

  pnOrder.Show;
  lbOrdKind.Caption := inttostr(ord_kind);
  gbProj.Hide;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.ToolButton19Click(Sender: TObject);
var
  s: string;
begin
  Ysl := 0;
  Vib(Ysl);
end;

procedure TfmCliOrds.dbg15GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qEstReqSTATUS.AsInteger = 50 then
    AFont.Style := [fsStrikeOut];
  if (qEstReqSTATUS.AsInteger >= 40) and (qEstReqSTATUS.AsInteger < 50) then
  begin
    Background := clMoneyGreen;
    AFont.Style := [fsBold];
  end;
  {If  (not qEstReqD_CALC.IsNull) and
  (qEstReqD_CALC.AsDateTime < qEstReqD_FIX.AsDateTime) then
   Afont.Color := clRed;  }

end;

procedure TfmCliOrds.BitBtn1Click(Sender: TObject);
var
  Id_New, id_Item, id_vers, id_ptype, id_val, id_proj, i: Integer;
  am, deliv, sum_r: Extended;
  dt: TDate;
  nom, s: string;
begin
  if lcbOrd_Type.KeyValue = null then
  begin
    showmessage('Укажите тип заказа...');
    exit;
  end;
  if (not qOrd_TypeIS_ORDER.IsNull) and (lcbOrder.Text = '') then
  begin
    ShowMessage('Требуется ссылка на заказ...');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  //создать новый проект
  if (lcbProj.Text = '') and (gbProj.Visible = False) then
  begin
    ShowMessage('Выберите проект');
    Exit;
  end;
  id_proj := lcbProj.KeyValue;
  if gbProj.Visible then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select gen_id(project_id,1) ID from access_levels');
      Open;
    end;
    id_proj := dmIs.qIN.FieldByName('id').AsInteger;
    with dMIS.qIM, dMIs.qIM.SQL do
    begin
      Close;
      Clear;

    end;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO PROJECTS(ID_PROJECT, BRIEF, ID_MANAGER, ID_AGENT,');
      Add('ID_BRAND, NAME, DATA, ID_PROJ_TYPE, ID_EDIT, STATUS, SUMMA,');
      Add('EXPENSES, CURRENCY, DATAEND, AMOUNT)');
      Add('VALUES (:ID_PRJ, null, :ID_MANAGER, :ID_AGENT,');
      Add('null, :NAME, current_date, :ID_PROJ_TYPE, :ID_EDIT, 1, 0,');
      Add('0,  :id_currency, null, 0)');
      ParamByName('ID_PRJ').AsInteger := id_proj;
      ParamByName('ID_MANAGER').AsInteger := lcbMen.KeyValue;
      ParamByName('ID_AGENT').AsInteger := lcbAg.KeyValue;
      ParamByName('NAME').AsString := edName.Text;
      ParamByName('ID_PROJ_TYPE').AsInteger := lcbType_Proj.KeyValue;
      ParamByName('ID_EDIT').AsInteger := SysVars.RegTN;
      ParamByName('id_currency').AsInteger := id_val;
      ExecSQL;
    end;
  end;

  if ins_ord = 2 then //через заказ
  begin
    for i := 1 to StrToInT(edKolCopy.Text) do
    begin
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('select id_order_new ,n_order from Copy_Order(:id_order,:amount,:id_agent, :id_project, :id_ord_type, :lid, :id_doc, :id_fix)');
        ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
        ParamByName('amount').AsString := qOrdersAMOUNT.AsString;
        ParamByName('id_agent').AsInteger := lcbAg.KeyValue;
        ParamByName('id_project').AsInteger := id_proj;
        ParamByName('id_fix').AsInteger := lcbMen.KeyValue;
        ParamByName('id_ord_type').AsInteger := lcbOrd_Type.KeyValue;
        if (cbDoc.Checked) and (not qPDoc.IsEmpty) then
          ParamByName('id_doc').AsInteger := qPDocID_PROJECT_DOC.AsInteger
        else
          ParamByName('id_doc').Clear;
        //  if Ysl = 0 then ParamByName('lid').Clear
        if lcbOrder.Text = '' then
          ParamByName('lid').Clear
        else
          ParamByName('lid').AsInteger := lcbOrder.KeyValue;
        //qOrdersID_ORDER.AsInteger;
        try
          Open;
          C_ORD := dmIs.qIM.FieldByName('id_order_new').AsInteger;
          nom := dmIs.qIM.FieldByName('n_order').AsString;
          if Transaction.Active then
            Transaction.Commit;
          //   if edAmount.Text <> qOrdersAMOUNT.AsString then  CalcEst(id_est,pbEst,lbOper,False);
          ShowMessage('Создан заказа № ' + nom);
          if i = StrToInT(edKolCopy.Text) then
            tb0Click(Sender);
        except
          on E: Exception do
          begin
            showmessage(E.Message);
            if Transaction.Active then
              Transaction.Rollback;
          end;
        end;
        Order2XML(dmIS.dbIS, C_ord);
      end;
    end;
  end;

  if ins_ord = 4 then //заказа на продажу из заказа в производство
  begin
    if fmMain.S19 <> 1 then
      if cbDoc.Checked = false then
      begin
        showmessage('Вы не выбрали документ-основание для заказа!');
        exit;
      end;
    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('select * from create_ord_sell(:id_agent, :id_project, :ord_type, :lid,'
        +
        ':id_doc, :name, :id_open, :id_product, :order_prod_str )');
      ParamByName('ord_type').AsInteger := lcbOrd_Type.KeyValue;
      if cbDoc.Checked then
        ParamByName('ID_DOC').AsInteger := qPDocID_PROJECT_DOC.AsInteger;
      ParamByName('ID_AGENT').AsInteger := lcbAg.KeyValue;
      ParamByName('ID_PROJECT').AsInteger := id_proj;
      ParamByName('ID_PRODUCT').AsInteger := dbTr.GetId;
      parambyname('order_prod_str').Asstring := SelectedID(dbgProdOrd,
        'id_order');
      open;
      if Transaction.Active then
        Transaction.CommitRetaining;
      qSellOrd.close;
      qSellOrd.Open;
    end;
  end;

  if ins_ord = 1 then //через заявку
  begin
    if fmMain.S19 <> 1 then
      if cbDoc.Checked = false then
      begin
        showmessage('Вы не выбрали документ-основание для заказа!');
        exit;
      end;
    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('select c.id_currency,  current_date dt from currency  c where c.mark = :mark');
      ParamByName('mark').AsString := '*';
      open;
      id_val := fieldbyname('id_currency').AsInteger;
      dt := Int(fieldbyname('dt').AsDateTime);
    end;

    //создать новую смету
    with qIns, qIns.SQL do
    begin
      close;
      clear;
      add('select e.id_version, e.amount,coalesce(e.PRICE_DELIVERY,0) PRICE_DELIVERY,');
      add('v.name vname,v.id_price, i.name iname, i.id_item');
      add('from estimates  e');
      add('left join product_versions v on v.id_version = e.id_version');
      add('left join items i on v.id_item = i.id_item');
      add('where e.id_estimate = :ide');
      parambyname('ide').AsInteger := ID_EST; //qEstReqID_ESTIMATE.AsInteger;
      open;
      id_item := fieldbyname('id_item').AsInteger;
      id_vers := qIns.fieldbyname('id_version').AsInteger;

      am := fieldbyname('amount').AsFloat;
      if am = 0 then
        am := 1;
      deliv := fieldbyname('PRICE_DELIVERY').AsFloat;
      close;
      clear;
      {add('select id_ptype,max(factor)');
      add('from est_sum_oper_types where id_estimate = :id_estimate');
      add('group by id_ptype');  }
      add('select z.id_ptype , z.factor');
      add(' from est_sum_oper_types z where z.id_estimate = :id_estimate');
      add(' and z.factor =');
      add(' (select max (y.factor) from est_sum_oper_types y');
      add(' where y.id_estimate = z.id_estimate)');

      parambyname('id_estimate').AsInteger := ID_EST;
      //qEstReqID_ESTIMATE.AsInteger;
      open;
      id_ptype := fieldbyname('id_ptype').AsInteger;
    end;
    {  qIns.Close;
      qIns.SQL.Clear;
      qIns.SQL.Add('select p.id_estimate,p.id_version, p.amount');
      qIns.SQL.Add(',sum(case when s.id_item is null then (s.total *(1 + t.profit/100))  else 0 end)');
      qIns.SQL.Add('+ sum(case when s.id_item is not null then (s.price * (coalesce(s.full_amount,0) -coalesce(s.comm_amount,0)) * (1 + t.dop_price/100)) else 0 end) sum_proc');
      qIns.SQL.Add('from estimates p');
      qIns.SQL.Add('join est_pos s on p.id_estimate = s.id_estimate');
      qIns.SQL.Add('where p.id_estimate = :id_estimate ');//and p.id_ptype = :id_ptype');
      qIns.SQL.Add('group by  p.id_estimate,p.id_version, p.amount');
      qIns.ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
    //  ShowMessage(qINS1.Text);
      qIns.Open;
    }
    qIns.Close;
    qIns.SQL.Clear;
    qIns.SQL.Add('select p.id_estimate,p.id_version, p.amount,');
    qIns.SQL.Add('sum(s.total_oper * (s.profit/100 + 1) +(s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1)) sum_proc');
    qIns.SQL.Add('from est_sum_oper_types s');
    qIns.SQL.Add('join estimates p on p.id_estimate = s.id_estimate');
    qIns.SQL.Add('where s.id_estimate = :id_estimate');
    qIns.SQL.Add('group by p.id_estimate,p.id_version,  p.amount');
    qIns.ParamByName('id_estimate').AsInteger := ID_EST;
    //qEstReqID_ESTIMATE.AsInteger;
    qIns.Open;
    sum_r := qIns.fieldbyname('sum_proc').AsFloat;

    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select ID,NUMBER from GET_DOC_NUMBERS(1)');
        Open;
        C_ORD := FieldByName('id').AsInteger;
        nom := FieldByName('NUMBER').AsString;
      end;
      Add('insert into PROJECT_ORDS(ID_ORDER, ID_PROJECT, NAME, AMOUNT, ID_PRODUCT,');
      Add('D_READY, N_ORDER, D_OPEN, ID_OPEN, ID_DOC, PRICE, PRICEA, ID_CURRENCY,');
      Add('ID_CPTYPE, ID_CPROD, ID_AGENT, ID_ESTIMATE, ID_CHIEF, REM, IS_CHARGE, ID_FIX,');
      Add('PLAN_COST_PRICE,MANAGER_MARGIN,DELIVERY_SUM,ID_DOGOVOR,IS_COL,id_price_pos,');
      add('ord_type,lid, ord_kind)');
      Add('VALUES (:ID_ORDER, :ID_PROJECT, :NAME, :AMOUNT, :ID_PRODUCT,');
      Add(':D_READY,:N_ORDER,:D_OPEN, :ID_OPEN, :ID_DOC, :PRICE, :PRICEA, :ID_CURRENCY,');
      Add(':ID_CPTYPE, NULL, :ID_AGENT, :ID_ESTIMATE, :ID_CHIEF, :REM, :IS_CHARGE, :ID_FIX,');
      Add(':PLAN_COST_PRICE,:MANAGER_MARGIN,:DELIVERY_SUM,:ID_DOGOVOR,:IS_COL,');
      add(':id_price_pos,:ord_type,:lid,:ord_kind)');
      ParamByName('ID_ORDER').AsInteger := C_ORD;
      ParamByName('N_ORDER').AsString := nom;
      ParamByName('ID_OPEN').AsInteger := SysVars.RegTN;
      ParamByName('ID_AGENT').AsInteger := lcbAg.KeyValue;
      //qClientsID_ITEM.AsInteger;
      ParamByName('ID_FIX').AsInteger := lcbMen.KeyValue;
      //qPrjID_MANAGER.AsInteger ;
      ParamByName('ID_PROJECT').AsInteger := id_proj;
      //lcbProj.KeyValue; //qPrjID_PROJECT.AsInteger;
      ParamByName('NAME').AsString := 'Новый заказ';
      if cbDoc.Checked then
        ParamByName('ID_DOC').AsInteger := qPDocID_PROJECT_DOC.AsInteger;
      ParamByName('AMOUNT').AsFloat := am;
      ParamByName('D_READY').AsDate := dt;
      ParamByName('D_OPEN').AsDate := dt;
      ParamByName('PRICE').AsCurrency := sum_r + deliv;
      ParamByName('PRICEA').AsCurrency := 0;
      ParamByName('PLAN_COST_PRICE').AsCurrency := sum_r;
      parambyname('ord_kind').AsString := lbOrdKind.Caption;
      ParamByName('ID_PRODUCT').AsInteger := id_item;
      ParamByName('ID_CURRENCY').AsInteger := id_val;
      ParamByName('ID_CPTYPE').AsInteger := id_ptype;
      //ParamByName('ID_CPROD').Clear;
      ParamByName('REM').AsString := 'Создано на основании заявки № ' +
        qEstReqID_REQUEST.asString;
      ;
      ParamByName('IS_CHARGE').Clear;
      ParamByName('ID_CHIEF').Clear;
      ParamByName('ID_ESTIMATE').AsInteger := ID_EST;
      //qEstReqID_ESTIMATE.AsInteger;
      ParamByName('MANAGER_MARGIN').AsCurrency := 0;
      ParamByName('DELIVERY_SUM').AsCurrency := deliv;
      ParamByName('ID_DOGOVOR').Clear;
      // ParamByName('ID_DOGOVOR').AsInteger := qDogovorID_DOGOVOR.AsInteger;
      ParamByName('IS_COL').Clear;
      ParamByName('ID_PRICE_POS').Clear;
      ParamByName('ord_type').AsInteger := lcbOrd_Type.KeyValue;
      { if   qEstReqID_ORDER.IsNull then  ParamByName('lid').Clear
       else ParamByName('lid').AsInteger := qEstReqID_ORDER.AsInteger;
       }
      if lcbOrder.Text = '' then
        ParamByName('lid').Clear
      else
        ParamByName('lid').AsInteger := lcbOrder.KeyValue;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        ShowMessage('Создан заказа № ' + nom);
        dmIs.mT.CommitRetaining;
        Order2XML(dmIS.dbIS, C_ord);
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
      
    end;
  end; //if ins_ord = 1

  OpenOrds;
  qOrders.Locate('ID_ORDER', C_ORD, []);
  dmIS.qIM.Close;
  dmIS.qIN.Close;
  qIns.Close;
  pnOrder.Hide;
  if cbOrder.Checked then
  begin
    if not Assigned(fm_Find) then
      Application.CreateForm(Tfm_Find, fm_Find);
    fm_Find.kf := 1;
    fm_Find.ed4.Text := nom;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT O.ID_ORDER, P.ID_PROJECT, P.ID_AGENT');
      Add('FROM PROJECTS P join PROJECT_ORDS O on O.ID_PROJECT = P.ID_PROJECT');
      Add('and UPPER(O.N_ORDER) = UPPER(:ord1) WHERE P.D_CLOSE IS NULL');
      ParamByName('ord1').AsString := fm_Find.ed4.Text;
      Open;
      if not IsEmpty then
      begin
        qClients.Locate('ID_ITEM', FieldByName('ID_AGENT').AsInteger, []);
        qPrj.Locate('ID_PROJECT', FieldByName('ID_PROJECT').AsInteger, []);
         C_PR := dmIS.qPrjID_PROJECT.AsInteger;
              {  if not dmIS.dbDOC.Connected then
          dmIS.dbDOC.Connected := True;  }
        qOrders.Locate('ID_ORDER', FieldByName('ID_ORDER').AsInteger, []);
      end;
    end;
    pc.ActivePage := tsOrd;
  end;

  ins_ord := 0;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.BitBtn2Click(Sender: TObject);
begin
  pnOrder.Hide;
end;

procedure TfmCliOrds.lcbAgCloseUp(Sender: TObject; Accept: Boolean);
begin
  lcbOrder.KeyValue := null;
  edOrd.Clear;

  qProj.Close;
  qProj.Open;
  qOrd.Close;
  qOrd.Open;
end;

procedure TfmCliOrds.SpeedButton1Click(Sender: TObject);
begin
  pnOrder.Height := 409;
  gbProj.Show;

  kop_proj := 1;
  lbNew_Proj.Caption := 'Новый проект';
  with qBrand do
  begin
    Close;
    Open;
    Last;
    First;
  end;

  with qType_Proj do
  begin
    Close;
    Open;
    Last;
    First;
  end;

  C_CLI := lcbAg.KeyValue;
  C_PR := qProjID_PROJECT.AsInteger;

end;

procedure TfmCliOrds.dbg14SortMarkingChanged(Sender: TObject);
begin
  OpenProject_s;
end;

procedure TfmCliOrds.tbMenClick(Sender: TObject);
begin
  // менеджер равен пользователю
  lcb_Men.KeyValue := SysVars.RegTN;
  OpenCli;
  flag := 1;
end;

procedure TfmCliOrds.tbAllClick(Sender: TObject);
begin
  lcb_Men.KeyValue := null;
  OpenCli;
  flag := 1;
end;

procedure TfmCliOrds.dbg15SortMarkingChanged(Sender: TObject);
begin
  OpenEst_Req;
end;

procedure TfmCliOrds.qEst_Limit_BillBeforeOpen(DataSet: TDataSet);
begin
  qEst_Limit_Bill.Close;
  qEst_Limit_Bill.SQL.Clear;
  qEst_Limit_Bill.SQL.Add('select id_version,d_conf,name_obj,id_object,unit,F_AMOUNT,id_estimate,id_estimate_kd,');
  qEst_Limit_Bill.SQL.Add('Sum(amount_est) amount_est,Sum(total_est) total_est,');
  qEst_Limit_Bill.SQL.Add('Sum(amount_kd) amount_kd,Sum(total_kd) total_kd,');
  qEst_Limit_Bill.SQL.Add('Sum(amount_traf) amount_traf,Sum(total_traf) total_traf,');
  qEst_Limit_Bill.SQL.Add('sum(amount_limit) amount_limit,sum(total_limit) total_limit,');
  qEst_Limit_Bill.SQL.Add('sum(amount_bill) amount_bill,sum(total_bill) total_bill,');
  qEst_Limit_Bill.SQL.Add('Sum(comm_amount_l) comm_amount_l,Sum(comm_amount_bill) comm_amount_bill,');
  qEst_Limit_Bill.SQL.Add('Sum(comm_amount_peo) comm_amount_peo,Sum(comm_amount_kd) comm_amount_kd,');
  qEst_Limit_Bill.SQL.Add('Sum(comm_amount_traff) comm_amount_traff,');

  qEst_Limit_Bill.SQL.Add('avg(price_est) price_est ,avg(price_kd) price_kd,avg(price_traf) price_traf ,');
  qEst_Limit_Bill.SQL.Add('avg(price_limit) price_limit,avg(price_bill) price_bill');
  qEst_Limit_Bill.SQL.Add('from GET_ESTIMATE_LIM_BILL(:id_order,:ID_DIVISION,:ID_BPERIOD,:ID_P_AR,:ID_EST_KD)');
  { Case cbNot_Limit.State of
    cbChecked :
     qEst_Limit_Bill.SQL.Add(' where (amount_est is null and amount_kd is null and '+
                             ' amount_limit is null and amount_bill is null and'+
                             ' amount_traf is null)');
    cbUnchecked :
     qEst_Limit_Bill.SQL.Add(' where not (amount_est is null and amount_kd is null and '+
                             ' amount_limit is null and amount_bill is null and' +
                             ' amount_traf is null)');

   end;}
  qEst_Limit_Bill.SQL.Add('group by id_version,d_conf,name_obj,id_object , unit ,F_AMOUNT,id_estimate,id_estimate_kd');

  qEst_Limit_Bill.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;

  qEst_Limit_Bill.ParamByName('ID_DIVISION').Value := null;
  qEst_Limit_Bill.ParamByName('ID_BPERIOD').Value := null;
  qEst_Limit_Bill.ParamByName('ID_P_AR').Value := null;
  qEst_Limit_Bill.ParamByName('ID_EST_KD').AsInteger :=
    qOrdersID_ESTIMATE_KD.AsInteger;
  {Case SysVars.ServType of
  0 : qEst_Limit_Bill.SQL.Add(OrderBy(dbg18));
  1 : qEst_Limit_Bill.SQL.Add(OrderByFields(dbg18));
  end;}
  //ShowMessage(qEst_Limit_Bill.SQL.Text);
end;

procedure TfmCliOrds.dbg18SortMarkingChanged(Sender: TObject);
begin
  qEst_Limit_Bill.Close;
  qEst_Limit_Bill.Open;
end;

procedure TfmCliOrds.edPrKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    edTotal.Text := FloatToStrF(StrToFloat(edRas.Text) * (1 +
      StrToFloat(edPr.Text) / 100), ffFixed, 15, 2);
end;

procedure TfmCliOrds.edTotalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    edPr.Text := FloatToStrF((StrToFloat(edTotal.Text) - StrToFloat(edRas.Text))
      /
      StrToFloat(edRas.Text) * 100, ffFixed, 15, 2);

end;

procedure TfmCliOrds.SpeedButton2Click(Sender: TObject);
var
  id_est, idv: Integer;
  tx, s: string;
  st: boolean;
begin
  if MsgQuestion('Для выполнения расчета стоимости будет создана новая смета. '
    +
    SysVars.NReg + ', создать смету?', 'Создание сметы') = id_yes then
  begin
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      close;
      clear;
      add('select id_version from estimates where id_estimate = :ide');
      parambyname('ide').AsInteger := qEstReqID_ESTIMATE.AsInteger;
      open;
      idv := fieldbyname('id_version').AsInteger;
      //проверка статуса ошибки версии
      if not Assigned(fmTestVersion) then
        Application.CreateForm(TfmTestVersion, fmTestVersion);

      fmTestVersion.ID_VERSION := idv;
      with fmTestVersion.qTestV do
      begin
        fmTestVersion.qTestV.Close;
        fmTestVersion.qTestV.sql.clear;
        fmTestVersion.qTestV.sql.add('select * from TEST_VERSION(:id_ver) where status <> 0');
        fmTestVersion.qTestV.ParamByName('id_ver').AsInteger := idv;
        fmTestVersion.qTestV.Open;
        s := 'Расчет невозможен, версия содержит ошибки:';
        if not fmTestVersion.qTestV.IsEmpty then
        begin //fmTestVersion.ShowModal;
          repeat
            s := s + #13 + fmTestVersion.qTestV.fieldbyname('problem').AsString;
            fmTestVersion.qTestV.next;
          until fmTestVersion.qTestV.eof;
          showmessage(s);
          exit;
        end;
        st := fmTestVersion.TESTV
      end;

      //  If not fmTestVersion.TESTV Then
      {  If st = false Then
        begin
          MsgInformation('Версия содержит ошибки. Расчет невозможен','Проверка');
          exit;
        end;}

      Close;
      Clear;
      //Add('select ID_ESTIMATE,ID_VERSION,AMOUNT,DT,name');
      Add('select ID_ESTIMATE');
      Add(' from NEW_ESTIMATE_TPP(:ID_VER,:ID_P, :NAME, :AMOUNT_NEW,current_date)');
      //   Add(' from COPY_ESTIMATE(:ID_EST,:AMOUNT_NEW,:ID_P,:price_delivery,:price_tools)');
      ParamByName('id_ver').AsInteger := idv;
      ParamByName('name').AsString := edTitle1.Text;
      ParamByName('AMOUNT_NEW').AsInteger := StrToInt(edKol1.Text);
      ParamByName('id_p').AsInteger := SysVars.RegTN;
      {   if edDeliv.Text <> '' then
          ParamByName('price_delivery').AsFloat := StrToFloat(edDeliv.Text)
         else ParamByName('price_delivery').Clear;
         if edTool.Text <> '' then
          ParamByName('price_tools').AsFloat := StrToFloat(edTool.Text)
         else ParamByName('price_tools').Clear ;}

      try
        Open;
        id_est := FieldByName('ID_ESTIMATE').AsInteger;
        // tx     := FieldByName('name').AsString;
        if dmIS.qIM.Transaction.Active then
          dmIS.qIM.Transaction.Commit;
      except
        if dmIS.qIM.Transaction.Active then
          dmIS.qIM.Transaction.Rollback;
      end;
      close;
      clear;
      add('update estimates set price_delivery = :price_delivery,price_tools = :price_tools');
      add('where id_estimate = :ide');
      if edDeliv.Text <> '' then
        ParamByName('price_delivery').AsFloat := StrToFloat(edDeliv.Text)
      else
        ParamByName('price_delivery').Clear;
      if edTool.Text <> '' then
        ParamByName('price_tools').AsFloat := StrToFloat(edTool.Text)
      else
        ParamByName('price_tools').Clear;
      ParamByName('ide').AsInteger := id_est;
      try
        ExecSQL;

        // tx     := FieldByName('name').AsString;
        if dmIS.qIM.Transaction.Active then
          dmIS.qIM.Transaction.Commit;
      except
        if dmIS.qIM.Transaction.Active then
          dmIS.qIM.Transaction.Rollback;
      end;
    end;

    try
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        {Close;
        Clear;
        Add('execute procedure WRITE_EST_POS (:est1)');
        ParamByName('est1').AsInteger := id_est; }
        try
          //ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          //CalcEst(id_est,pb,lb,False);
          fmAll.CalcEstimate(id_est, pb, lb, false, fmMain.S19, 1);
          lbSmeta.Caption := 'Смета № ' + IntToStr(id_est);
          if Transaction.Active then
            Transaction.Commit;
          qIns.Close;
          qIns.SQL.Clear;
          qIns.SQL.Add('select p.id_estimate,p.id_version, p.amount,');
          qIns.SQL.Add('coalesce(p.PRICE_DELIVERY,0) PRICE_DELIVERY,');
          qIns.SQL.Add('coalesce(p.PRICE_TOOLS,0) PRICE_TOOLS,');
          qIns.SQL.Add('sum(s.total_oper * (s.profit/100 + 1) + (s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1))sum_proc');
          qIns.SQL.Add('from est_sum_oper_types s');
          qIns.SQL.Add('join estimates p on p.id_estimate = s.id_estimate');
          qIns.SQL.Add('where s.id_estimate = :id_estimate');
          qIns.SQL.Add('group by p.id_estimate,p.id_version, p.amount,4,5');
          qIns.ParamByName('id_estimate').AsInteger := id_est;
          qIns.Open;
          if not qIns.IsEmpty then
          begin
            edRas1.Text := FloatToStrF(qIns.FieldByName('sum_proc').AsCurrency +
              qIns.FieldByName('PRICE_DELIVERY').AsCurrency +
              qIns.FieldByName('PRICE_TOOLS').AsCurrency
              , ffFixed, 15, 2);
            edRas2.Text := FloatToStrF((qIns.FieldByName('sum_proc').AsCurrency
              +
              qIns.FieldByName('PRICE_DELIVERY').AsCurrency +
              qIns.FieldByName('PRICE_TOOLS').AsCurrency) /
              qIns.FieldByName('AMOUNT').AsFloat, ffFixed, 15, 2);
          end;
          edKol1.Text := qIns.FieldByName('amount').AsString;
          edTitle1.Text := tx;
          edPr1.Text := '';
          edTotal1.Text := '';
          lb.Caption := 'Расчёт готов.';
          close;
          clear;
          add('update estimates set id_confirm = :id_confirm, d_confirm = current_date');
          add('where id_estimate = :id_estimate and id_confirm is null');
          parambyname('id_confirm').AsInteger := SysVars.RegTN;
          parambyname('id_estimate').AsInteger := id_est;
          ExecSQL;
        except
          if dmIS.qIM.Transaction.Active then
            dmIS.qIM.Transaction.Rollback;
        end;
      end;
    except
      if dmIS.qIM.Transaction.Active then
        dmIS.qIM.Transaction.Rollback;
    end;
  end

end;

procedure TfmCliOrds.BitBtn3Click(Sender: TObject);
begin
  edRas1.Text := '';
  edKol1.Text := '';
  edDeliv.Text := '';
  edTool.Text := '';
  edPr1.Text := '';
  edTotal1.Text := '';
  edTitle1.Text := '';
  gbNewEst.left := 328;
  gbNewEst.top := 128;
  gbNewEst.Show;
end;

procedure TfmCliOrds.BitBtn4Click(Sender: TObject);
begin
  gbNewEst.Hide;
end;

procedure TfmCliOrds.edPr1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    edTotal1.Text := FloatToStrF(StrToFloat(edRas1.Text) *
      (1 + StrToFloat(edPr1.Text) / 100), ffFixed, 15, 2);
    edTotal2.Text :=
      FloatToStrF((
      StrToFloat(edRas1.Text) * (1 + StrToFloat(edPr1.Text) / 100)
      ) / StrToFloat(edKol1.Text), ffFixed, 15, 2);
  end;
end;

procedure TfmCliOrds.edTotal1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    edPr1.Text := FloatToStrF((StrToFloat(edTotal1.Text) -
      StrToFloat(edRas1.Text)) /
      StrToFloat(edRas1.Text) * 100, ffFixed, 15, 2);

end;

procedure TfmCliOrds.ToolButton23Click(Sender: TObject);
begin

  if fmMain.S19 <> 1 then
    exit;
  if qOrders.IsEmpty then
    exit;
  if cbPEO.Checked then
    if qOrdersID_ESTIMATE.AsInteger = 0 then
      exit;
  if cbKD.Checked then
    if qOrdersID_ESTIMATE_KD.AsInteger = 0 then
      exit;

  //If not Assigned(fmEstCalc) Then
  Application.CreateForm(TfmEstCalc, fmEstCalc);
  if cbPEO.Checked then
    fmEstCalc.ID_ESTIMATE := qOrdersID_ESTIMATE.AsInteger;
  if cbKD.Checked then
    fmEstCalc.ID_ESTIMATE := qOrdersID_ESTIMATE_KD.AsInteger;

  fmMain.Status_Ord := qOrdersSTATUS.AsInteger;
  fmEstCalc.ID_ORDER := qOrdersID_ORDER.AsInteger;
  fmEstCalc.ID_PTYPE := qOrdersID_CPTYPE.AsInteger;
  fmEstCalc.Caption := 'Смета № ' + IntToStr(fmEstCalc.ID_ESTIMATE) +
    ', заказа ' + qOrdersN_ORDER.AsString;
  fmEstCalc.Show;
end;

procedure TfmCliOrds.ToolButton25Click(Sender: TObject);
begin
  if (fmMain.S19 <> 1) then
    Exit;
  if edEst.Text = '' then
    edEst.Text := '0';
  if (qEstReq.IsEmpty) and (edEst.Text = '0') then
    exit;

  if not Assigned(fmEstCalc) then
    Application.CreateForm(TfmEstCalc, fmEstCalc);

  fmEstCalc.ID_ESTIMATE := StrToInt(edEst.Text);
  fmEstCalc.ID_ORDER := -1;
  fmEstCalc.ID_PTYPE := -1;
  fmMain.Status_Ord := 10000;
  fmEstCalc.Caption := 'Смета № ' + IntToStr(fmEstCalc.ID_ESTIMATE) +
    ', заявки №' + qEstReqID_REQUEST.AsString;
  fmEstCalc.Show;
end;

procedure TfmCliOrds.cbPEOClick(Sender: TObject);
begin
  if cbPEO.Checked then
    cbKD.State := cbUnchecked;
end;

procedure TfmCliOrds.cbKDClick(Sender: TObject);
begin
  if cbKD.Checked then
    cbPEO.State := cbUnchecked;

end;

procedure TfmCliOrds.qOrdersAfterScroll(DataSet: TDataSet);
begin
  qPrj.Locate('ID_PROJECT', qOrdersID_PROJECT.AsInteger, []);
  //C_ORD := qOrdersID_ORDER.AsInteger;
end;

procedure TfmCliOrds.tbs1Click(Sender: TObject);
begin
  OpenProject_s;
end;

procedure TfmCliOrds.ToolButton26Click(Sender: TObject);
begin
  OpenEst_Req;
end;

procedure TfmCliOrds.Excel1Click(Sender: TObject);
var
  s1, s2: string;
begin
try
 Screen.Cursor := crHourGlass;
 { if not dmIS.dbDOC.Connected then
    dmIS.dbDOC.Connected := True;                   }
  {qInsT.Close;
  qInsT.sql.Clear;
  qInsT.SQL.Add('select w.id_doc from workdocs w where w.id_owner = :id_owner');
  qInsT.ParamByName('id_owner').Value := 22;
  qInsT.Open;
  if qInsT.IsEmpty then
  begin
   ShowMessage('Нет шаблона....');
   Exit;
  end
  else
  begin  }
   //fmMain.StoreDoc(0, qInsT.FieldByName('ID_DOC').Value, '.\Tmp\TZ.xls',dmIS.qW_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  if GetTemplate(22, dmIS.qIN, fmRep.xlRepTZ) = False then
  begin
    ShowMessage('Нет шаблона....');
    Exit;
  end;
  {If not Assigned(fmAll) Then
       Application.CreateForm(TfmAll,fmAll);

   fmAll.StoreDoc_r(qInsT.FieldByName('ID_DOC').Value); }

  //fmRep.xlRepTZ.XLSTemplate := fmMain.FN;
  fmRep.qOrder.Close;
  fmRep.qOrder.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qOrder.Open;
  fmRep.qOrder_S.Close;
  fmRep.qOrder_S.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_S.Open;
  fmRep.qPlan_SH.Close;
  fmRep.qPlan_SH.ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
  fmRep.qPlan_SH.Open;
  fmRep.qOrder_Param.Close;
  fmRep.qOrder_Param.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_Param.ParamByName('id_ptype').AsInteger :=
    qOrdersID_CPTYPE.AsInteger;
  fmRep.qOrder_Param.Open;
  fmRep.qMat_Base.Close;
  fmRep.qMat_Base.ParamByName('id_estimate').AsInteger :=
    qOrdersID_ESTIMATE.AsInteger;
  fmRep.qMat_Base.Open;
  fmRep.qOrder_Pos.Close;
  fmRep.qOrder_Pos.ParamByName('id_ptype').AsInteger :=
    qOrdersID_CPTYPE.AsInteger;
  fmRep.qOrder_Pos.ParamByName('id_order').AsInteger :=
    qOrdersID_ORDER.AsInteger;
  fmRep.qOrder_Pos.Open;

  fmRep.xlRepTZ.ParamByName['DT'].AsString :=
    FormatDateTime('dd.mm.yyyy', fmRep.qOrderD_OPEN.AsDateTime);
  fmRep.xlRepTZ.ParamByName['NTZ'].AsString := fmRep.qOrderN_ORDER.AsString;
  fmRep.xlRepTZ.ParamByName['AG'].AsString := fmRep.qOrderNAME_AGENT.AsString;

  fmRep.xlRepTZ.ParamByName['MEN'].AsString := fmRep.qOrderFIO.AsString;
  fmRep.xlRepTZ.ParamByName['NAMETZ'].AsString := fmRep.qOrderNAME.AsString;
  fmRep.xlRepTZ.ParamByName['PR'].AsString := fmRep.qOrderNPROD.AsString;
  fmRep.xlRepTZ.ParamByName['TP'].AsString := fmRep.qOrderNPTYPE.AsString;
  fmRep.xlRepTZ.ParamByName['REM'].AsString := fmRep.qOrderREM.AsString;
  fmRep.xlRepTZ.ParamByName['DTIN'].AsString := fmRep.qOrderD_READY.AsString;
  fmRep.xlRepTZ.ParamByName['DTOUT'].AsString := fmRep.qOrderD_READY.AsString;
  fmRep.xlRepTZ.ParamByName['AGENT'].AsString :=
    fmRep.qOrderNAME_AGENT.AsString;
  fmRep.xlRepTZ.ParamByName['MN'].AsString := fmRep.qOrderFIO.AsString;
  fmRep.xlRepTZ.ParamByName['LOGO'].AsString := sysvars.IsDir + '\logo.jpg';
  fmRep.xlRepTZ.Report;
  //end;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.ToolButton28Click(Sender: TObject);
begin
  Ysl := 1;
  Vib(Ysl);

end;

procedure TfmCliOrds.ToolButton29Click(Sender: TObject);
begin
  if not Assigned(fmKEReq) then
    Application.CreateForm(TfmKEReq, fmKEReq);
  with fmKEReq do
  begin
    Kop := 1;
    C_PROJECT := qPrjID_PROJECT.AsInteger;
    fmKEReq.nomOrder.Caption := qOrdersID_ORDER.AsString;
    fmKEReq.n_Order.Caption := qOrdersN_ORDER.AsString + ' - ' +
      qOrdersNAME.AsString;
    fmKEReq.m1.Lines.Add(fmKEReq.n_Order.Caption);
    fmKEReq.m1.Refresh;
    ShowModal;
  end;

  OpenEst_Req;
  qEstReq.Locate('ID_REQUEST', fmKEReq.New_Req, []);

end;

procedure TfmCliOrds.ToolButton31Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg22.Focused then
    GridToExcel(dbg22);
  if dbg23.Focused then
    GridToExcel(dbg23);
  if dbg24.Focused then
    GridToExcel(dbg24);
  if dbg25.Focused then
    GridToExcel(dbg25);
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.ToolButton16Click(Sender: TObject);
begin
  OpenOrds_All;
end;

procedure TfmCliOrds.dbg22SortMarkingChanged(Sender: TObject);
begin
  OpenOrds_All;
end;

procedure TfmCliOrds.dbg22GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (not qOrder_AllD_REJECT.IsNull) then
    AFont.Style := [fsStrikeOut];
  if qOrder_AllSTATUS.AsInteger >= 20 then
  begin
    Background := clSkyBlue;
    AFont.Style := [fsBold];
  end;
  if (not qOrder_AllD_REJECT.IsNull) then
    AFont.Style := [fsStrikeOut];
  if (not qOrder_AllD_CLOSE.IsNull) then
    Background := clMoneyGreen;

end;

procedure TfmCliOrds.edFindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if qOrder_All.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if edFind.Text = '' then
    begin
      MsgInformation('Заполните образец поиска', 'Образец поиска');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_ORD1 := qOrder_AllID_ORDER.AsInteger;
    qOrder_All.DisableControls;
    repeat
      if qOrder_All.Eof then
        qOrder_All.First
      else
        qOrder_All.Next;
    until (Pos(ansiuppercase(edFind.Text),
      ansiuppercase(dbg22.SelectedField.AsString)) > 0)
      or (C_ORD1 = qOrder_AllID_ORDER.AsInteger);
    qOrder_All.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmCliOrds.lcbOrderChange(Sender: TObject);
begin
  edOrd.Text := qOrdN_ORDER.AsString;
  if lcbOrder.Text = '' then
    edOrd.Clear;
end;

procedure TfmCliOrds.cbOrdClick(Sender: TObject);
begin
  edOrd_New.Clear;
  qOrd_New.Close;
  qOrd_New.SQL.Clear;
  qOrd_New.SQL.Add('select o.id_order, o.name, o.n_order,');
  qOrd_New.SQL.Add('cast(o.name as varchar(64)) ||' + ''' [''' +
    ' || o.n_order ||' + ''']''' + ' nm,');
  qOrd_New.SQL.Add('r.fio, o.def_sum');
  qOrd_New.SQL.Add(' from project_ords o ');
  qOrd_New.SQL.Add(' join projects p on p.id_project = o.id_project');
  qOrd_New.SQL.Add(' left join personnel r on r.id_p = p.id_manager');
  if not cbOrd.Checked then
  begin
    qOrd_New.SQL.Add('where o.id_agent = :id_item');
    qOrd_New.ParamByName('id_item').AsInteger := qClientsID_ITEM.AsInteger;
  end;
  qOrd_New.SQL.Add('order by o.name ');
  qOrd_New.Open;
end;

procedure TfmCliOrds.ToolButton32Click(Sender: TObject);
begin
 if lcbOrd.KeyValue = qOrder_LidID_ORDER.AsInteger then
 begin
  ShowMessage('Вы выбрали № заказа = № заказа, который хотите менять...');
  Exit;
 end;
 with dmIS.qIM, dmIS.qIM.SQL do
 begin
  Close;
  Clear;
  Add('update project_ords set lid = :lid where id_order = :id_order');
  if lcbOrd.KeyValue = null then ParamByName('lid').Clear
  else ParamByName('lid').AsInteger := lcbOrd.KeyValue;
   ParamByName('id_order').AsInteger := qOrder_LidID_ORDER.AsInteger;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      pcChange(Sender);
    except
      if Transaction.Active then
        Transaction.Rollback;
      ShowMessage('Ошибка замены...');
      exit;
    end;
  end;
end;

procedure TfmCliOrds.lcbOrdCloseUp(Sender: TObject; Accept: Boolean);
begin
  if lcbOrd.Text = '' then
    edOrd_New.Clear;
  edOrd_New.Text := qOrd_NewN_ORDER.AsString;
end;

procedure TfmCliOrds.qOrdWorkCalcFields(DataSet: TDataSet);
begin
  if (qOrdWorkESTIMATE_AMOUNT_TIME.AsFloat <> 0) then
    qOrdWorknE_AM.AsString := HourToTime(qOrdWorkESTIMATE_AMOUNT_TIME.AsFloat);
  if (qOrdWorkKD_AMOUNT_TIME.AsFloat <> 0) then
    qOrdWorknKD_Am.AsString := HourToTime(qOrdWorkKD_AMOUNT_TIME.AsFloat);
  if (qOrdWorkTRAF_AMOUNT_TIME.AsFloat <> 0) then
    qOrdWorknTR_AM.AsString := HourToTime(qOrdWorkTRAF_AMOUNT_TIME.AsFloat);
  if (qOrdWorkFACT_AMOUNT_TIME.AsFloat <> 0) then
    qOrdWorknF_AM.AsString := HourToTime(qOrdWorkFACT_AMOUNT_TIME.AsFloat);

end;

procedure TfmCliOrds.qOrder_MatBeforeOpen(DataSet: TDataSet);
begin
  with qOrder_Mat, qOrder_Mat.SQL do
  begin
    Close;
    Clear;
    Add('select * from order_mat(:id_order)');
    ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    Add(OrderBy(dbg118));
  end;
end;

procedure TfmCliOrds.dbg118SortMarkingChanged(Sender: TObject);
begin
  qOrder_Mat.Close;
  qOrder_Mat.Open;
end;

procedure TfmCliOrds.dbg28GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if qBillsIS_COMM.AsInteger = 1 then
    AFont.Color := clMaroon;
end;

procedure TfmCliOrds.qSUM_Ord_Y_MCalcFields(DataSet: TDataSet);
begin
  //if qSUM_Ord_Y_MID_CURRENCY.AsInteger = 1 then
  begin
    if qSUM_Ord_Y_MTOTAL_SUM_PEO.AsFloat <> 0 then

      {qSUM_Ord_Y_MnProfit.AsFloat :=
       (qSUM_Ord_Y_MPRICE.AsFloat - qSUM_Ord_Y_MTOTAL_SUM_PEO.AsFloat
        - qSUM_Ord_Y_MDELIVERY_SUM.AsFloat )/
        qSUM_Ord_Y_MTOTAL_SUM_PEO.AsFloat * 100}
      qSUM_Ord_Y_MnProfit.AsFloat := (qSum_Ord_y_MPRICE.AsFloat /
        (qSUM_Ord_Y_MTOTAL_SUM_PEO.AsFloat
        + qSUM_Ord_Y_MDELIVERY_SUM.AsFloat) - 1) * 100
  end
  //else qSUM_Ord_Y_MnProfit.AsFloat := -100 ;
end;

procedure TfmCliOrds.qMen_OrdBeforeOpen(DataSet: TDataSet);
begin

  with qMen_Ord, qMen_Ord.SQL do
  begin
    Close;
    Clear;
    Add('select r.fio, r.id_p,count(o.id_order) kol,');
    add('sum(o.def_sum) def_sum,');
    add('(select nds_val from get_nds_sum(sum(o.def_sum),1)) def_sum_bez_nds,');
    add('sum(o.def_delivery) def_delivery,');
    add('(select nds_val from get_nds_sum(sum(o.def_delivery),1)) def_delivery_bez_nds,');
    Add('sum(o.def_sum/1000) def_sum1,sum(o.def_delivery/1000) def_delivery1');
    Add('from personnel r');
    Add('join p_f f on f.idpost = r.idpost and f.idf = 42');
    Add('join projects p on p.id_manager = r.id_p');
    Add('join project_ords o on o.id_project = p.id_project');
    Add('where o.status > 10 and o.d_reject is null');
    Add('and extract(year from o.d_open)= :d_in');
    Add('group by r.fio, r.id_p');
    Add(OrdBy(dbg41));
    ParamByName('d_in').AsInteger := StrToInt(edYear.Text);

  end;
end;

procedure TfmCliOrds.dbg41SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Ord.Close;
  qMen_Ord.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.sb5Click(Sender: TObject);
begin
  if edYear.Text = '' then
  begin
    ShowMessage('Введите год...');
    Exit;
  end;
  if pc5.ActivePage = tsAn_Men then
  begin
    dbg41SortMarkingChanged(Sender);
    dbg42SortMarkingChanged(Sender);
  end;
  if pc5.ActivePage = tsAn_Agent then
  begin
    qAgent_Ord.AfterScroll := nil;
    // qAgent_Ord_Menager.AfterScroll := nil;
    dbg51SortMarkingChanged(Sender);
    dbg52SortMarkingChanged(Sender);

    qAgent_Ord_Menager.Close;
    qAgent_Ord_Menager.ParamByName('id_agent').AsInteger :=
      qAgent_OrdID_AGENT.AsInteger;
    qAgent_Ord_Menager.ParamByName('d_in').AsInteger := StrToInt(edYear.Text);
    qAgent_Ord_Menager.Open;
    qAgent_Ord.AfterScroll := qAgent_OrdAfterScroll;
    ;
    // qAgent_Ord_Menager.AfterScroll := qAgent_Ord_MenagerAfterScroll;

  end;

end;

procedure TfmCliOrds.qMen_OrdAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  {i := 0;
  qMen_Ord.First;
  while not qMen_Ord.Eof do
  begin
   qMen_Ordnom.AsInteger := i + 1;
   qMen_OrdnFIO.AsString := ShortFio(qMen_OrdFIO.AsString);
   qMen_Ord.Next;
   i := i + 1;
  end; }

end;

procedure TfmCliOrds.qMen_OrdCalcFields(DataSet: TDataSet);
begin
  qMen_OrdnFIO.AsString := ShortFio(qMen_OrdFIO.AsString);
end;

procedure TfmCliOrds.dbg42SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Ord_Month.Close;
  qMen_Ord_Month.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.qMen_Ord_MonthBeforeOpen(DataSet: TDataSet);
begin
  with qMen_Ord_Month, qMen_Ord_Month.SQL do
  begin
    Close;
    Clear;
    Add('select r.fio, r.id_p,');
    Add('count(o.id_order) kol,');
    Add('sum(o.def_sum) def_sum0,');
    Add('sum(o.def_delivery) def_delivery0,');
    Add('(select nds_val from get_nds_sum(sum(o.def_sum),1)) def_sum0_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(o.def_delivery),1)) def_delivery0_bez_nds,');

    Add('(select nds_val from get_nds_sum(sum(case when ( (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum0_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ( (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery0_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum_11,');
    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery_11,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum_11_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery_11_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum22,');
    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery22, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum22_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery22_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum33,');
    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver33,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum33_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver33_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum44,');
    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver44,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum44_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver44_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum55,');
    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver55, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum55_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver55_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum66,');
    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver66,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum66_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver66_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum77,');
    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver77, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum77_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver77_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum88, ');
    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver88,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum88_bez_nds, ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver88_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum99,');
    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver99,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum99_bez_nds,');
    add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver99_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum100, ');
    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver100, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum100_bez_nds, ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver100_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum111, ');
    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver111,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum111_bez_nds, ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver111_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum122,  ');
    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery122, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum122_bez_nds,  ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery122_bez_nds, ');
    { Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum_11,');
     Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery_11,');
     Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum22,');
     Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery22, ');
     Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum33,');
     Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver33,');
     Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum44,');
     Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver44,');
     Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum55,');
     Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver55, ');
     Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum66,');
     Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver66,');
     Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum77,');
     Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver77, ');
     Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum88, ');
     Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver88,');
     Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum99,');
     Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver99,');
     Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum100, ');
     Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver100, ');
     Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum111, ');
     Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver111,');
     Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum122,  ');
     Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery122, ');
     }
    Add('sum(case when ( (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum,');
    Add('sum(case when ( (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery,');
    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum1,');
    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery1,');
    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum2,');
    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery2,');
    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum3,');
    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver3,');
    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum4,');
    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver4,');
    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum5,');
    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver5,');
    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum6,');
    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver6,');
    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum7,');
    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver7,');
    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum8,');
    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver8,');
    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum9,');
    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver9,');
    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum10,');
    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver10,');
    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum11,');
    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver11,');
    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum12,');
    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery12');
    Add('from personnel r');
    Add('join p_f f on f.idpost = r.idpost and f.idf = 42');
    Add('join projects p on p.id_manager = r.id_p');
    Add('join project_ords o on o.id_project = p.id_project');
    Add('where o.status > 10 and o.d_reject is null');
    Add('and o.d_open > :d_in and o.d_open < :d_end +1');
    Add('group by r.fio, r.id_p');
    Add(OrdBy(dbg42));
    // ShowMessage(SQL.Text);
    ParamByName('y').AsInteger := StrToInt(edYear.Text);
    ParamByName('d_in').AsDate := StrToDate('1.01.' + edYear.Text);
    ParamByName('d_end').AsDate := StrToDate('31.12.' + edYear.Text);

  end;

end;

procedure TfmCliOrds.qMen_Ord_MonthCalcFields(DataSet: TDataSet);
begin
  qMen_Ord_MonthnFIO.AsString := ShortFio(qMen_Ord_MonthFIO.AsString);
  qMen_Ord_Monthid_nom.AsInteger := qMen_Ord_Month.RecNo;
  qMen_Ord_Monthid1.AsFloat := qMen_Ord_Month.RecNo;
  qMen_Ord_Monthid2.AsFloat := qMen_Ord_Month.RecNo + 1 / 12;
  qMen_Ord_Monthid3.AsFloat := qMen_Ord_Month.RecNo + 2 / 12;
  qMen_Ord_Monthid4.AsFloat := qMen_Ord_Month.RecNo + 3 / 12;
  qMen_Ord_Monthid5.AsFloat := qMen_Ord_Month.RecNo + 4 / 12;
  qMen_Ord_Monthid6.AsFloat := qMen_Ord_Month.RecNo + 5 / 12;
  qMen_Ord_Monthid7.AsFloat := qMen_Ord_Month.RecNo + 6 / 12;
  qMen_Ord_Monthid8.AsFloat := qMen_Ord_Month.RecNo + 7 / 12;
  qMen_Ord_Monthid9.AsFloat := qMen_Ord_Month.RecNo + 8 / 12;
  qMen_Ord_Monthid10.AsFloat := qMen_Ord_Month.RecNo + 9 / 12;
  qMen_Ord_Monthid11.AsFloat := qMen_Ord_Month.RecNo + 10 / 12;
  qMen_Ord_Monthid12.AsFloat := qMen_Ord_Month.RecNo + 11 / 12;

end;

procedure TfmCliOrds.SpeedButton4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg41.Focused then
    GridToExcel(dbg41);
  if dbg42.Focused then
    GridToExcel(dbg42);
  if dbg51.Focused then
    GridToExcel(dbg51);
  if dbg52.Focused then
    GridToExcel(dbg52);
  if dbg53.Focused then
    GridToExcel(dbg53);

  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.dbg51SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qAgent_Ord.AfterScroll := nil;
  qAgent_Ord.Close;
  qAgent_Ord.Open;
  qAgent_Ord_Menager.Close;
  qAgent_Ord_Menager.ParamByName('id_agent').AsInteger :=
    qAgent_OrdID_AGENT.AsInteger;
  qAgent_Ord_Menager.ParamByName('d_in').AsInteger := StrToInt(edYear.Text);
  qAgent_Ord_Menager.Open;
  qAgent_Ord.AfterScroll := qAgent_OrdAfterScroll;
  ;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.qAgent_OrdBeforeOpen(DataSet: TDataSet);
begin
  with qAgent_Ord, qAgent_Ord.SQL do
  begin
    Close;
    Clear;
    Add('select o.id_agent, i.name name_agent, count(o.id_order) kol,');
    add('sum(o.def_sum) def_sum,');
    add('(select nds_val from get_nds_sum(sum(o.def_sum),1)) def_sum_bez_nds,');
    add('sum(o.def_delivery) def_delivery,');
    add('(select nds_val from get_nds_sum(sum(o.def_delivery),1)) def_delivery_bez_nds,');
    Add('Sum(o.def_sum/1000) def_sum1,sum(o.def_delivery/1000) def_delivery1');
    Add('from projects p JOIN project_ords o on  o.id_project = p.id_project');
    Add('join personnel r on  r.id_p = p.id_manager');
    Add('join p_f f on f.idpost = r.idpost and f.idf = 42');
    Add('join items i on i.id_item = o.id_agent');
    Add('where o.status > 10 and o.d_reject is null');
    Add('and extract(year from o.d_open)= :d_in');
    if lcb_Men2.KeyValue <> null then
      Add('and p.id_manager = :id_manager');
    Add('group by o.id_agent, i.name');
    Add(OrdBy(dbg51));
    ParamByName('d_in').AsInteger := StrToInt(edYear.Text);
    if lcb_Men2.KeyValue <> null then
      ParamByName('id_manager').AsInteger := lcb_Men2.KeyValue;
  end;

end;

procedure TfmCliOrds.pc5Change(Sender: TObject);
begin
  if pc5.ActivePage = tsAn_Agent then
  begin
    lbMen.Visible := True;
    lcb_Men2.Visible := True;
  end;
  if pc5.ActivePage = tsAn_Men then
  begin
    lbMen.Visible := False;
    lcb_Men2.Visible := False;
  end;
end;

procedure TfmCliOrds.qAgent_Ord_MonthCalcFields(DataSet: TDataSet);
begin
  qAgent_Ord_Monthid_nom.AsInteger := qAgent_Ord_Month.RecNo;
  qAgent_Ord_Monthid1.AsFloat := qAgent_Ord_Month.RecNo;
  qAgent_Ord_Monthid2.AsFloat := qAgent_Ord_Month.RecNo + 1 / 12;
  qAgent_Ord_Monthid3.AsFloat := qAgent_Ord_Month.RecNo + 2 / 12;
  qAgent_Ord_Monthid4.AsFloat := qAgent_Ord_Month.RecNo + 3 / 12;
  qAgent_Ord_Monthid5.AsFloat := qAgent_Ord_Month.RecNo + 4 / 12;
  qAgent_Ord_Monthid6.AsFloat := qAgent_Ord_Month.RecNo + 5 / 12;
  qAgent_Ord_Monthid7.AsFloat := qAgent_Ord_Month.RecNo + 6 / 12;
  qAgent_Ord_Monthid8.AsFloat := qAgent_Ord_Month.RecNo + 7 / 12;
  qAgent_Ord_Monthid9.AsFloat := qAgent_Ord_Month.RecNo + 8 / 12;
  qAgent_Ord_Monthid10.AsFloat := qAgent_Ord_Month.RecNo + 9 / 12;
  qAgent_Ord_Monthid11.AsFloat := qAgent_Ord_Month.RecNo + 10 / 12;
  qAgent_Ord_Monthid12.AsFloat := qAgent_Ord_Month.RecNo + 11 / 12;

end;

procedure TfmCliOrds.dbg52SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qAgent_Ord_Month.Close;
  qAgent_Ord_Month.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.qAgent_Ord_MonthBeforeOpen(DataSet: TDataSet);
begin
  with qAgent_Ord_Month, qAgent_Ord_Month.SQL do
  begin
    Close;
    Clear;
    Add('select o.id_agent, i.name name_agent,');
    Add('count(case when ( (extract(year from o.d_open) = :y)) then o.id_order else 0 end) kol,');
    Add('sum(case when ( (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum0,');
    Add('sum(case when ( (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery0,');

    Add('(select nds_val from get_nds_sum(sum(case when ( (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum0_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ( (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery0_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum_11,');
    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery_11,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum_11_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery_11_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum22,');
    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery22, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum22_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery22_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum33,');
    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver33,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum33_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver33_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum44,');
    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver44,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum44_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver44_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum55,');
    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver55, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum55_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver55_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum66,');
    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver66,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum66_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver66_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum77,');
    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver77, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum77_bez_nds,');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver77_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum88, ');
    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver88,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum88_bez_nds, ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver88_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum99,');
    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver99,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum99_bez_nds,');
    add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver99_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum100, ');
    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver100, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum100_bez_nds, ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver100_bez_nds, ');

    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum111, ');
    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_deliver111,');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum111_bez_nds, ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_deliver111_bez_nds,');

    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end) def_sum122,  ');
    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end) def_delivery122, ');

    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum else 0 end),1)) def_sum122_bez_nds,  ');
    Add('(select nds_val from get_nds_sum(sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery else 0 end),1)) def_delivery122_bez_nds, ');

    Add('sum(case when ( (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum,');
    Add('sum(case when ( (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery,');
    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum1,');
    Add('sum(case when ((extract(month from o.d_open) = 1) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery1,');
    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum2,');
    Add('sum(case when ((extract(month from o.d_open) = 2) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery2,');
    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum3,');
    Add('sum(case when ((extract(month from o.d_open) = 3) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver3,');
    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum4,');
    Add('sum(case when ((extract(month from o.d_open) = 4) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver4,');
    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum5,');
    Add('sum(case when ((extract(month from o.d_open) = 5) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver5,');
    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum6,');
    Add('sum(case when ((extract(month from o.d_open) = 6) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver6,');
    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum7,');
    Add('sum(case when ((extract(month from o.d_open) = 7) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver7,');
    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum8,');
    Add('sum(case when ((extract(month from o.d_open) = 8) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver8,');
    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum9,');
    Add('sum(case when ((extract(month from o.d_open) = 9) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver9,');
    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum10,');
    Add('sum(case when ((extract(month from o.d_open) = 10) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver10,');
    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum11,');
    Add('sum(case when ((extract(month from o.d_open) = 11) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_deliver11,');
    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_sum/1000 else 0 end) def_sum12,');
    Add('sum(case when ((extract(month from o.d_open) = 12) and (extract(year from o.d_open) = :y)) then o.def_delivery/1000 else 0 end) def_delivery12');
    Add('from projects p');
    Add('JOIN project_ords o on  o.id_project = p.id_project');
    Add('join personnel r on  r.id_p = p.id_manager ');
    Add('join p_f f on f.idpost = r.idpost and f.idf = 42 ');
    Add('join items i on i.id_item = o.id_agent ');
    Add('where o.status > 10 and o.d_reject is null ');
    Add('and extract(year from o.d_open)= :y');
    if lcb_Men2.KeyValue <> null then
      Add('and p.id_manager = :id_manager');
    Add('group by o.id_agent, i.name');
    Add(OrdBy(dbg52));
    // ShowMessage(Text);
    ParamByName('y').AsInteger := StrToInt(edYear.Text);
    if lcb_Men2.KeyValue <> null then
      ParamByName('id_manager').AsInteger := lcb_Men2.KeyValue;

  end;

end;

procedure TfmCliOrds.qAgent_OrdAfterScroll(DataSet: TDataSet);
begin
  qAgent_Ord_Menager.Close;
  qAgent_Ord_Menager.ParamByName('id_agent').AsInteger :=
    qAgent_OrdID_AGENT.AsInteger;
  qAgent_Ord_Menager.ParamByName('d_in').AsInteger := StrToInt(edYear.Text);
  qAgent_Ord_Menager.Open;
  if dbg51.Focused then
    qAgent_Ord_Month.Locate('id_agent', qAgent_OrdID_AGENT.AsInteger, []);

end;

procedure TfmCliOrds.qAgent_Ord_MonthAfterScroll(DataSet: TDataSet);
begin
  if dbg52.Focused then
    qAgent_Ord.Locate('id_agent', qAgent_Ord_MonthID_AGENT.AsInteger, []);
end;

procedure TfmCliOrds.sb6_1Click(Sender: TObject);
begin
 Open_Analiz_v;
{  if edY.Text = '' then
  begin
    ShowMessage('Введите год...');
    Exit;
  end;
  if pc6.ActivePage = tsAn_Pack_Men then
  begin
    qMen_Pack.AfterScroll := nil;
    dbg61SortMarkingChanged(Sender);
    dbg61_0SortMarkingChanged(Sender);
    if dbg61.Focused then
      qMen_Pack_Month.Locate('id', qMen_PackID.AsInteger, []);

    qPack_Men_TProd_Month.Close;
    qPack_Men_TProd_Month.ParamByName('id').AsInteger := qMen_PackID.AsInteger;
    qPack_Men_TProd_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
    qPack_Men_TProd_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
      1;

    Screen.Cursor := crHourGlass;
    if cbTProd.Checked then
      qPack_Men_TProd_Month.Open;
    qMen_Pack.AfterScroll := qMen_PackAfterScroll;
    Screen.Cursor := crDefault;
  end;
  if pc6.ActivePage = tsAn_Pack_Agent then
  begin
    qMen_Pack_Agent.AfterScroll := nil;
    dbg61_1SortMarkingChanged(Sender);
    dbg61_11SortMarkingChanged(Sender);
    if dbg61_1.Focused then
      qMen_Pack_Agent_Mounth.Locate('id', qMen_Pack_AgentID.AsInteger, []);

    qPack_Men_Agent_Month.Close;
    qPack_Men_Agent_Month.ParamByName('id').AsInteger :=
      qMen_Pack_AgentID.AsInteger;
    qPack_Men_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
    qPack_Men_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
      1;
    if cbMen.Checked then
      qPack_Men_Agent_Month.Open;
    qMen_Pack_Agent.AfterScroll := qMen_Pack_AgentAfterScroll;
    ;

  end;
  if pc6.ActivePage = tsAn_Pack_TProd then
  begin
    qMen_Pack_TProd.AfterScroll := nil;
    dbg61_2SortMarkingChanged(Sender);
    dbg61_21SortMarkingChanged(Sender);

    qPack_TProd_Agent_Month.Close;
    qPack_TProd_Agent_Month.ParamByName('id').AsInteger :=
      qMen_Pack_TProdID.AsInteger;
    qPack_TProd_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
    qPack_TProd_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
      1;
    Screen.Cursor := crHourGlass;
    if cbAgent.Checked then
      qPack_TProd_Agent_Month.Open;
    if dbg61_2.Focused then
      qMen_Pack_TProd_Month.Locate('id', qMen_Pack_TProdID.AsInteger, []);
    qMen_Pack_TProd.AfterScroll := qMen_Pack_TProdAfterScroll;
    Screen.Cursor := crDefault;
  end;

  {Screen.Cursor := crHourGlass ;
  If dmIS.mT.Active Then dmIS.mT.CommitRetaining;
  // 1 - по типам продукции
  // 2 - по клиентам
  // 3 - по менеджерам
  with dmIS.qS_PS, dmIS.qS_PS.SQL do begin
   Close;
   Clear;
   case S_TYPE of
   1: Add('select o.id_cptype id, pt.name name');
   2: Add('select o.id_agent id, i.name name');
   3: Add('select p.id_manager id, r.fio name');
   end;
   Add(', sum(m.plan_shipp) plan_shipp, sum(m.produced) produced');
   Add(', sum(m.ship) ship, sum(m.reciev) reciev');
   Add(', sum(m.s_plan_shipp) s_plan_shipp, sum(m.s_produced) s_produced');
   Add(', sum(m.s_ship) s_ship, sum(m.s_reciev) s_reciev');
   if (pcAll.ActivePage = ts1) and (pc.ActivePage = tsOrd) then
    Add('from shipp_orders_in_period(:d_begin,:d_end) m');
   if (pcAll.ActivePage = ts2) and (pc2.ActivePage = ts_Ord) then
    Add('from shipp_orders_in_period_def(:d_begin,:d_end) m');

   ParamByName('d_begin').AsDate  := Int(dtp1.Date);
   ParamByName('d_end').AsDate  := Int(dtp2.Date);
   Add('join project_ords o on o.id_order = m.id_order');
   Add('and o.d_reject is null and o.amount > 0 and o.status > 19');
   If lcb1.KeyValue <> NULL Then begin
     Add('and o.id_cptype = :tp1');
     ParamByName('tp1').AsInteger := lcb1.KeyValue;
   end;
   Add('left join projects p on p.id_project = o.id_project');
   Add('left join ptypes pt on pt.id_ptype = o.id_cptype');
   If chb1.Checked Then Add('and pt.rec = 1');
   Add('left join items i on i.id_item = o.id_agent');
   Add('left join personnel r on r.id_p = p.id_manager');
   Add('where 1=1');
   If lcb2.KeyValue <> NULL Then
     Add('and o.id_cprod = ' + IntToStr(lcb2.KeyValue));
   If lcb3.KeyValue <> null Then
    Add('and t.id_oper_type = ' + IntToStr(lcb3.KeyValue));
   If lcb4.KeyValue <> NULL Then
     Add('and o.id_agent = ' + IntToStr(lcb4.KeyValue));
   If lcb5.KeyValue <> NULL Then
     Add('and r.id_p = ' + IntToStr(lcb5.KeyValue));
   Add('group by 1,2 order by 2');
   try
    Open;
    If dmIS.mT.Active Then dmIS.mT.CommitRetaining;
   except
    MsgError('Ошибка выборки данных','Ошибка');
    If dmIS.mT.Active Then dmIS.mT.RollbackRetaining;
   end;
  end;
  Screen.Cursor := crDefault ;
  }
end;

procedure TfmCliOrds.qMen_PackCalcFields(DataSet: TDataSet);
begin
  qMen_PacknFIO.AsString := ShortFio(qMen_PackNAME.AsString);
  qMen_PacknS_Reciev.AsFloat := qMen_PackS_RECIEV.AsFloat / 1000;
  if qMen_PackEST_PROGN.AsFloat > 0 then
    qMen_PacknPR_Progn.AsFloat :=
      (qMen_PackS_PROGN.AsFloat - qMen_PackEST_PROGN.AsFloat) /
      qMen_PackEST_PROGN.AsFloat * 100;
  if qMen_PackEST_PLAN.AsFloat > 0 then
    qMen_PacknPR_Plan.AsFloat :=
      (qMen_PackS_PLAN_SHIPP.AsFloat - qMen_PackEST_PLAN.AsFloat) /
      qMen_PackEST_PLAN.AsFloat * 100;
  if qMen_PackEST_PRODUCED.AsFloat > 0 then
    qMen_PacknPR_1.AsFloat :=
      (qMen_PackS_PRODUCED.AsFloat - qMen_PackEST_PRODUCED.AsFloat) /
      qMen_PackEST_PRODUCED.AsFloat * 100;
  if qMen_PackEST_SHIP.AsFloat > 0 then
    qMen_PacknPR_2.AsFloat :=
      (qMen_PackS_SHIP.AsFloat - qMen_PackEST_SHIP.AsFloat) /
      qMen_PackEST_SHIP.AsFloat * 100;
  if qMen_PackEST_RECIEV.AsFloat > 0 then
    qMen_PacknPR_3.AsFloat :=
      (qMen_PackS_RECIEV.AsFloat - qMen_PackEST_RECIEV.AsFloat) /
      qMen_PackEST_RECIEV.AsFloat * 100;

end;

procedure TfmCliOrds.qMen_PackBeforeOpen(DataSet: TDataSet);
var
  d_in, d_out: TDateTime;
begin
  with qMen_Pack, qMen_Pack.SQL do
  begin
    Close;
    Clear;
    Add('select m.id, m.name ,');
    Add('sum(m.progn) progn,');
    Add('sum(m.plan_shipp) plan_shipp, sum(m.produced) produced ,');
    Add('sum(m.ship) ship, sum(m.reciev) reciev ,');
    Add('sum(m.s_progn) s_progn,');
    Add('(select nds_val from get_nds_sum(sum(m.s_progn),1)) s_progn_bez_nds,');
    Add('sum(m.s_plan_shipp) s_plan_shipp,');
    Add('(select nds_val from get_nds_sum(sum(m.s_plan_shipp),1)) s_plan_shipp_bez_nds,');
    Add('sum(m.s_produced) s_produced ,');
    Add('(select nds_val from get_nds_sum(sum(m.s_produced),1)) s_produced_bez_nds ,');
    Add('sum(m.s_ship) s_ship,');
    Add('(select nds_val from get_nds_sum(sum(m.s_ship),1)) s_ship_bez_nds,');
    Add('sum(m.s_reciev) s_reciev,');
    Add('(select nds_val from get_nds_sum(sum(m.s_reciev),1)) s_reciev_bez_nds,');
    Add('sum(m.est_progn) est_progn,');
    Add('(select nds_val from get_nds_sum(sum(m.est_progn),1)) est_progn_bez_nds,');
    Add('sum(m.est_plan) est_plan,');
    Add('(select nds_val from get_nds_sum(sum(m.est_plan),1)) est_plan_bez_nds,');
    Add('sum(m.est_produced) est_produced,');
    Add('(select nds_val from get_nds_sum(sum(m.est_produced),1)) est_produced_bez_nds,');
    Add('sum(m.est_ship) est_ship,');
    Add('(select nds_val from get_nds_sum(sum(m.est_ship),1)) est_ship_bez_nds,');
    Add('sum(m.est_reciev) est_reciev,');
    Add('(select nds_val from get_nds_sum(sum(m.est_reciev),1)) est_reciev_bez_nds');
    Add('from SHIPP_ANALIZ_DEF(:d_begin,:d_end,:ysl) m');
    Add('group by 1,2');
    Add(OrdBy(dbg61));
    ParamByName('d_begin').AsDate := StrToDate('1.01.' + edY.Text);
    ParamByName('d_end').AsDate := StrToDate('31.12.' + edY.Text);
    ParamByName('ysl').AsInteger := 1;
  end;
end;

procedure TfmCliOrds.dbg61SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
   qMen_Pack.Close;
   qMen_Pack.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.SpeedButton5Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg61.Focused then
    GridToExcel(dbg61);
  if dbg61_0.Focused then
    GridToExcel(dbg61_0);
  if dbg61_01.Focused then
    GridToExcel(dbg61_01);
  if dbg61_011.Focused then
    GridToExcel(dbg61_011);

  if dbg61_1.Focused then
    GridToExcel(dbg61_1);
  if dbg61_11.Focused then
    GridToExcel(dbg61_11);
  if dbg61_111.Focused then
    GridToExcel(dbg61_111);
  if dbg61_1111.Focused then
    GridToExcel(dbg61_1111);

  if dbg61_2.Focused then
    GridToExcel(dbg61_2);
  if dbg61_21.Focused then
    GridToExcel(dbg61_21);
  if dbg61_22.Focused then
    GridToExcel(dbg61_22);
  if dbg61_222.Focused then
    GridToExcel(dbg61_222);
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.qMen_Pack_TProdCalcFields(DataSet: TDataSet);
begin
  qMen_Pack_TProdnS_Reciev.AsFloat := qMen_Pack_TProdS_RECIEV.AsFloat / 1000;
  if qMen_Pack_TProdEST_PROGN.AsFloat > 0 then
    qMen_Pack_TProdnPR_Progn.AsFloat :=
      (qMen_Pack_TProdS_PROGN.AsFloat - qMen_Pack_TProdEST_PROGN.AsFloat) /
      qMen_Pack_TProdEST_PROGN.AsFloat * 100;
  if qMen_Pack_TProdEST_PLAN.AsFloat > 0 then
    qMen_Pack_TProdnPR_Plan.AsFloat :=
      (qMen_Pack_TProdS_PLAN_SHIPP.AsFloat - qMen_Pack_TProdEST_PLAN.AsFloat) /
      qMen_Pack_TProdEST_PLAN.AsFloat * 100;
  if qMen_Pack_TProdEST_PRODUCED.AsFloat > 0 then
    qMen_Pack_TProdnPR_1.AsFloat :=
      (qMen_Pack_TProdS_PRODUCED.AsFloat - qMen_Pack_TProdEST_PRODUCED.AsFloat)
      / qMen_Pack_TProdEST_PRODUCED.AsFloat * 100;
  if qMen_Pack_TProdEST_SHIP.AsFloat > 0 then
    qMen_Pack_TProdnPR_2.AsFloat :=
      (qMen_Pack_TProdS_SHIP.AsFloat - qMen_Pack_TProdEST_SHIP.AsFloat) /
      qMen_Pack_TProdEST_SHIP.AsFloat * 100;
  if qMen_Pack_TProdEST_RECIEV.AsFloat > 0 then
    qMen_Pack_TProdnPR_3.AsFloat :=
      (qMen_Pack_TProdS_RECIEV.AsFloat - qMen_Pack_TProdEST_RECIEV.AsFloat) /
      qMen_Pack_TProdEST_RECIEV.AsFloat * 100;

end;

procedure TfmCliOrds.qMen_Pack_TProdBeforeOpen(DataSet: TDataSet);
begin
  with qMen_Pack_TProd, qMen_Pack_TProd.SQL do
  begin
    Close;
    Clear;
    Add('select m.id, m.name,');
    Add('sum(m.progn) progn,');
    Add('sum(m.plan_shipp) plan_shipp, sum(m.produced) produced ,');
    Add('sum(m.ship) ship, sum(m.reciev) reciev ,');
    Add('sum(m.s_progn) s_progn,');
    Add('(select nds_val from get_nds_sum(sum(m.s_progn),1)) s_progn_bez_nds,');
    Add('sum(m.s_plan_shipp) s_plan_shipp,');
    Add('(select nds_val from get_nds_sum(sum(m.s_plan_shipp),1)) s_plan_shipp_bez_nds,');
    Add('sum(m.s_produced) s_produced ,');
    Add('(select nds_val from get_nds_sum(sum(m.s_produced),1)) s_produced_bez_nds ,');
    Add('sum(m.s_ship) s_ship,');
    Add('(select nds_val from get_nds_sum(sum(m.s_ship),1)) s_ship_bez_nds,');
    Add('sum(m.s_reciev) s_reciev,');
    Add('(select nds_val from get_nds_sum(sum(m.s_reciev),1)) s_reciev_bez_nds,');
    Add('sum(m.est_progn) est_progn,');
    Add('(select nds_val from get_nds_sum(sum(m.est_progn),1)) est_progn_bez_nds,');
    Add('sum(m.est_plan) est_plan,');
    Add('(select nds_val from get_nds_sum(sum(m.est_plan),1)) est_plan_bez_nds,');
    Add('sum(m.est_produced) est_produced,');
    Add('(select nds_val from get_nds_sum(sum(m.est_produced),1)) est_produced_bez_nds,');
    Add('sum(m.est_ship) est_ship,');
    Add('(select nds_val from get_nds_sum(sum(m.est_ship),1)) est_ship_bez_nds,');
    Add('sum(m.est_reciev) est_reciev,');
    Add('(select nds_val from get_nds_sum(sum(m.est_reciev),1)) est_reciev_bez_nds');
    Add('from SHIPP_ANALIZ_DEF(:d_begin,:d_end,:ysl) m');
    Add('group by 1,2');
    Add(OrdBy(dbg61_2));
    ParamByName('d_begin').AsDate := StrToDate('1.01.' + edY.Text);
    ParamByName('d_end').AsDate := StrToDate('31.12.' + edY.Text);
    ParamByName('ysl').AsInteger := 3;

  end;

end;

procedure TfmCliOrds.dbg61_2SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Pack_TProd.Close;
  qMen_Pack_TProd.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.qMen_Pack_AgentCalcFields(DataSet: TDataSet);
begin
  qMen_Pack_AgentnS_Reciev.AsFloat := qMen_Pack_AgentS_RECIEV.AsFloat / 1000;
  if qMen_Pack_AgentEST_PROGN.AsFloat > 0 then
    qMen_Pack_AgentnPR_Progn.AsFloat :=
      (qMen_Pack_AgentS_PROGN.AsFloat - qMen_Pack_AgentEST_PROGN.AsFloat) /
      qMen_Pack_AgentEST_PROGN.AsFloat * 100;
  if qMen_Pack_AgentEST_PLAN.AsFloat > 0 then
    qMen_Pack_AgentnPR_Plan.AsFloat :=
      (qMen_Pack_AgentS_PLAN_SHIPP.AsFloat - qMen_Pack_AgentEST_PLAN.AsFloat) /
      qMen_Pack_AgentEST_PLAN.AsFloat * 100;
  if qMen_Pack_AgentEST_PRODUCED.AsFloat > 0 then
    qMen_Pack_AgentnPR_1.AsFloat :=
      (qMen_Pack_AgentS_PRODUCED.AsFloat - qMen_Pack_AgentEST_PRODUCED.AsFloat)
      / qMen_Pack_AgentEST_PRODUCED.AsFloat * 100;
  if qMen_Pack_AgentEST_SHIP.AsFloat > 0 then
    qMen_Pack_AgentnPR_2.AsFloat :=
      (qMen_Pack_AgentS_SHIP.AsFloat - qMen_Pack_AgentEST_SHIP.AsFloat) /
      qMen_Pack_AgentEST_SHIP.AsFloat * 100;
  if qMen_Pack_AgentEST_RECIEV.AsFloat > 0 then
    qMen_Pack_AgentnPR_3.AsFloat :=
      (qMen_Pack_AgentS_RECIEV.AsFloat - qMen_Pack_AgentEST_RECIEV.AsFloat) /
      qMen_Pack_AgentEST_RECIEV.AsFloat * 100;

end;

procedure TfmCliOrds.qMen_Pack_AgentBeforeOpen(DataSet: TDataSet);
begin
  with qMen_Pack_Agent, qMen_Pack_Agent.SQL do
  begin
    Close;
    Clear;
    Add('select m.id, m.name, ');
    Add('sum(m.progn) progn,');
    Add('sum(m.plan_shipp) plan_shipp, sum(m.produced) produced ,');
    Add('sum(m.ship) ship, sum(m.reciev) reciev ,');
    Add('sum(m.s_progn) s_progn,');
    Add('(select nds_val from get_nds_sum(sum(m.s_progn),1)) s_progn_bez_nds,');
    Add('sum(m.s_plan_shipp) s_plan_shipp,');
    Add('(select nds_val from get_nds_sum(sum(m.s_plan_shipp),1)) s_plan_shipp_bez_nds,');
    Add('sum(m.s_produced) s_produced ,');
    Add('(select nds_val from get_nds_sum(sum(m.s_produced),1)) s_produced_bez_nds ,');
    Add('sum(m.s_ship) s_ship,');
    Add('(select nds_val from get_nds_sum(sum(m.s_ship),1)) s_ship_bez_nds,');
    Add('sum(m.s_reciev) s_reciev,');
    Add('(select nds_val from get_nds_sum(sum(m.s_reciev),1)) s_reciev_bez_nds,');
    Add('sum(m.est_progn) est_progn,');
    Add('(select nds_val from get_nds_sum(sum(m.est_progn),1)) est_progn_bez_nds,');
    Add('sum(m.est_plan) est_plan,');
    Add('(select nds_val from get_nds_sum(sum(m.est_plan),1)) est_plan_bez_nds,');
    Add('sum(m.est_produced) est_produced,');
    Add('(select nds_val from get_nds_sum(sum(m.est_produced),1)) est_produced_bez_nds,');
    Add('sum(m.est_ship) est_ship,');
    Add('(select nds_val from get_nds_sum(sum(m.est_ship),1)) est_ship_bez_nds,');
    Add('sum(m.est_reciev) est_reciev,');
    Add('(select nds_val from get_nds_sum(sum(m.est_reciev),1)) est_reciev_bez_nds');
    Add('from SHIPP_ANALIZ_DEF(:d_begin,:d_end,:ysl) m');
    Add('group by 1,2');
    Add(OrdBy(dbg61_1));
    ParamByName('d_begin').AsDate := StrToDate('1.01.' + edY.Text);
    ParamByName('d_end').AsDate := StrToDate('31.12.' + edY.Text);
    ParamByName('ysl').AsInteger := 2;

  end;

end;

procedure TfmCliOrds.dbg61_1SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Pack_Agent.Close;
  qMen_Pack_Agent.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.dbg61_21SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Pack_TProd_Month.Close;
  qMen_Pack_TProd_Month.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.qMen_Pack_TProd_MonthBeforeOpen(DataSet: TDataSet);
begin
  Bez_NDS(qMen_Pack_TProd_Month, StrToInt(edY.Text), rg.ItemIndex, dbg61_21);
end;

procedure TfmCliOrds.SpeedButton6Click(Sender: TObject);
begin
  if pc6.ActivePage = tsAn_Pack_Men then
  begin
    dbg61_0SortMarkingChanged(Sender);
    qPack_Men_TProd_Month.Close;
    qPack_Men_TProd_Month.ParamByName('id').AsInteger := qMen_PackID.AsInteger;
    qPack_Men_TProd_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
    qPack_Men_TProd_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
      1;
    qPack_Men_TProd_Month.Open;

  end;
  if pc6.ActivePage = tsAn_Pack_Agent then
  begin
    dbg61_11SortMarkingChanged(Sender);
    qPack_Men_Agent_Month.Close;
    qPack_Men_Agent_Month.ParamByName('id').AsInteger :=
      qMen_Pack_AgentID.AsInteger;
    qPack_Men_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
    qPack_Men_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
      1;

  end;
  if pc6.ActivePage = tsAn_Pack_TProd then
    dbg61_21SortMarkingChanged(Sender);
end;

procedure TfmCliOrds.qMen_Pack_MonthBeforeOpen(DataSet: TDataSet);
begin
  Bez_NDS(qMen_Pack_Month, StrToInt(edY.Text), rg.ItemIndex, dbg61_0);
end;

procedure TfmCliOrds.qMen_Pack_Agent_MounthBeforeOpen(DataSet: TDataSet);
begin
  Bez_NDS(qMen_Pack_Agent_Mounth, StrToInt(edY.Text), rg.ItemIndex, dbg61_11);
end;

procedure TfmCliOrds.dbg61_11SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Pack_Agent_Mounth.Close;
  qMen_Pack_Agent_Mounth.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.qMen_Pack_AgentAfterScroll(DataSet: TDataSet);
begin
  Screen.Cursor := crHourGlass;
  qPack_Men_Agent_Month.Close;
  qPack_Men_Agent_Month.ParamByName('id').AsInteger :=
    qMen_Pack_AgentID.AsInteger;
  qPack_Men_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_Men_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbMen.Checked then
    qPack_Men_Agent_Month.Open;
  if dbg61_1.Focused then
    qMen_Pack_Agent_Mounth.Locate('id', qMen_Pack_AgentID.AsInteger, []);
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.qMen_PackAfterScroll(DataSet: TDataSet);
begin
  Screen.Cursor := crHourGlass;
  qPack_Men_TProd_Month.Close;
  qPack_Men_TProd_Month.ParamByName('id').AsInteger := qMen_PackID.AsInteger;
  qPack_Men_TProd_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_Men_TProd_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbTProd.Checked then
    qPack_Men_TProd_Month.Open;
  if dbg61.Focused then
    qMen_Pack_Month.Locate('id', qMen_PackID.AsInteger, []);
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.dbg61_0SortMarkingChanged(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qMen_Pack_Month.Close;
  qMen_Pack_Month.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.qMen_Pack_TProdAfterScroll(DataSet: TDataSet);
begin
  Screen.Cursor := crHourGlass;
  qPack_TProd_Agent_Month.Close;
  qPack_TProd_Agent_Month.ParamByName('id').AsInteger :=
    qMen_Pack_TProdID.AsInteger;
  qPack_TProd_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_TProd_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
    1;
  if cbAgent.Checked then
    qPack_TProd_Agent_Month.Open;
  if dbg61_2.Focused then
    qMen_Pack_TProd_Month.Locate('id', qMen_Pack_TProdID.AsInteger, []);
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.N4Click(Sender: TObject);
//var fn : string;

{procedure StoreDoc1(Kop : integer; DOC_ID : integer; FName : string; pr : integer);
begin
//If not dmMain.dbDOC.Connected Then exit;
case Kop of
//Kop = 0 - чтение
 0:
 begin
   with qR_BODY do
   try
    Close;
    ParamByName('d1').Value := DOC_ID;
    Open;
    If IsEmpty Then begin
     MsgInformation('Документ отсутствует','Чтение документа');
     exit;
    end;
    FN := SysVars.IsDir + '\Tmp\' + qR_BODYFILENAME.Value;
    ReadBlob(qR_BODYBODY,FN);
    if pr = 0 then
     ShellExecute(Application.MainForm.Handle,nil,PChar(FN),'','',SW_MAXIMIZE);
   except;
    MsgError('Ошибка при чтении файла','Ошибка чтения');
   end;
 end;
//Kop = 2 - редактирование
 2:
 begin

 end;
end;
 dmIs.upBODY.Close;
end; //конец процедуры  StoreDoc1
}
begin
  //fmMain.Est_Excel(qOrdersID_ESTIMATE.AsInteger) ;
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  fmAll.Est_Excel(qOrdersID_ESTIMATE.AsInteger, 1);
  {  qEst_pm.Close;
    qEst_pm.ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
    qEst_pm.Open;

    qEst_pp.Close;
    qEst_pp.ParamByName('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
    qEst_pp.Open;

  //  if qEstTitl.IsEmpty then exit;
    If not dmIS.dbDoc.Connected Then dmIS.dbDoc.Connected := True;
    qInsT.Close;
    qInsT.sql.Clear;
    qInsT.SQL.Add('select w.id_doc from workdocs w where w.id_owner = :id_owner');
    qInsT.ParamByName('id_owner').Value := 17; //код *** Список ТМЦ за период
    qInsT.Open;

    if qInsT.IsEmpty then
    begin
      ShowMessage('Нет шаблона....');
      Exit;
    end
    else
    begin
      Screen.Cursor := crHourGlass;
      fmMain.StoreDoc1(0, qInsT.FieldByName('ID_DOC').Value, '.\Tmp\newest.xls',1);

      with qIns, qIns.SQL do
      begin
        close;
        clear;
        add('select e.id_estimate, e.name, e.amount, e.price_date, e.sum_nds, e.price_delivery,');
        add('e.price_tools, e.profit, e.dop_price, e.d_create, p.fio fiocr,  e.d_confirm,');
        add('a.fio fioconf,e.id_doc, e.status, e.id_version, v.id_item, i.name izdname');
        add('from estimates e');
        add('left join personnel p on p.id_p = e.id_creator');
        add('left join personnel a on a.id_p = e.id_confirm');
        add('left join product_versions v on v.id_version = e.id_version');
        add('left join items i on v.id_item = i.id_item');
        add('where e.id_estimate = :id_estimate');
        parambyname('id_estimate').AsInteger := qOrdersID_ESTIMATE.AsInteger;
        Open;
      //end;
      xlReport3.XLSTemplate := fmMain.FN;
      xlReport3.ParamByName['DATE_ESTIMATE'].AsString := fieldbyname('D_CREATE').AsString;
      xlReport3.ParamByName['NUMB_ESTIMATE'].AsString := fieldbyname('ID_ESTIMATE').AsString;
      xlReport3.ParamByName['IZD'].AsString           := fieldbyname('izdname').AsString;
      xlReport3.ParamByName['PRICE'].AsString         := fieldbyname('PRICE_DATE').AsString;;
      xlReport3.ParamByName['DEV'].AsString           := fieldbyname('FIOCR').AsString;
      xlReport3.ParamByName['IDIZD'].AsString         := fieldbyname('id_item').AsString;
      xlReport3.ParamByName['IDVERS'].AsString        := fieldbyname('id_Version').AsString;

      if fieldbyname('AMOUNT').IsNull then
       xlReport3.ParamByName['TIR'].AsString          := '0'
      else
       xlReport3.ParamByName['TIR'].AsString          := fieldbyname('AMOUNT').AsString;

      if fieldbyname('PRICE_TOOLS').isNull then
       xlReport3.ParamByName['EQUIP'].AsString        := '0'
      else
       xlReport3.ParamByName['EQUIP'].AsString        := fieldbyname('PRICE_TOOLS').AsString;

      if  fieldbyname('DOP_PRICE').IsNull then
       xlReport3.ParamByName['DOPPRICE'].AsString     := '0%'
      else
       xlReport3.ParamByName['DOPPRICE'].AsString     := fieldbyname('DOP_PRICE').AsString + '%';

      if fieldbyname('PROFIT').IsNull then
       xlReport3.ParamByName['PROFIT'].AsString       := '0%'
      else
       xlReport3.ParamByName['PROFIT'].AsString       := fieldbyname('PROFIT').AsString + '%';

      if fieldbyname('SUM_NDS').IsNull then
       xlReport3.ParamByName['NDS'].AsString          := '0%'
      else
       xlReport3.ParamByName['NDS'].AsString          := fieldbyname('SUM_NDS').AsString + '%';

      if fieldbyname('PRICE_DELIVERY').IsNull then
       xlReport3.ParamByName['DELIVE'].AsString       := '0'
      else
       xlReport3.ParamByName['DELIVE'].AsString       := fieldbyname('PRICE_DELIVERY').AsString;
  //    xlReport3.IWorkbook.
      xlReport3.Report;
      Screen.Cursor := crDefault;
    end;
    end; }
end;

procedure TfmCliOrds.cbMenClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qPack_Men_Agent_Month.Close;
  qPack_Men_Agent_Month.ParamByName('id').AsInteger :=
    qMen_Pack_AgentID.AsInteger;
  qPack_Men_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_Men_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbMen.Checked then
    qPack_Men_Agent_Month.Open;
  if not cbMen.Checked then
    qPack_Men_Agent_Month.Close;

  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.cbAgent_MenClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qPack_Men_Agent_12.Close;
  qPack_Men_Agent_12.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_Men_Agent_12.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbAgent_Men.Checked then
    qPack_Men_Agent_12.Open
  else
    qPack_Men_Agent_12.Close;

  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.cbTProdClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qPack_Men_TProd_Month.Close;
  qPack_Men_TProd_Month.ParamByName('id').AsInteger := qMen_PackID.AsInteger;
  qPack_Men_TProd_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_Men_TProd_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbTProd.Checked then
    qPack_Men_TProd_Month.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.cbMen_TProdClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qPack_Men_TProd_12.Close;
  qPack_Men_TProd_12.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_Men_TProd_12.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbMen_TProd.Checked then
    qPack_Men_TProd_12.Open
  else
    qPack_Men_TProd_12.Close;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.cbAgentClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qPack_TProd_Agent_Month.Close;
  qPack_TProd_Agent_Month.ParamByName('id').AsInteger :=
    qMen_Pack_TProdID.AsInteger;
  qPack_TProd_Agent_Month.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_TProd_Agent_Month.ParamByName('pack_type').AsInteger := rg.ItemIndex +
    1;
  if cbAgent.Checked then
    qPack_TProd_Agent_Month.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.cbTProd_AgentClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  qPack_TProd_Agent_12.Close;
  qPack_TProd_Agent_12.ParamByName('y').AsInteger := StrToInt(edY.Text);
  qPack_TProd_Agent_12.ParamByName('pack_type').AsInteger := rg.ItemIndex + 1;
  if cbTProd_Agent.Checked then
    qPack_TProd_Agent_12.Open;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.SpeedButton3Click(Sender: TObject);
begin
 try
  Screen.Cursor := crHourGlass;
  qABC_Vibor.Close;
  if rg1.ItemIndex = 0 then
  begin
    qABC.AfterScroll := nil;
    qABC.Close;
    qABC.Open;
    qABC_Vibor.Close;
    qABCAfterScroll(qABC);
    qABC.AfterScroll := qABCAfterScroll;
  end;
  if rg1.ItemIndex = 1 then
  begin
    qABC.AfterScroll := nil;
    qABC.Close;
    qABC.Open;
    // qABC.Open ;
    qABC_Vibor.Close;
    qABCAfterScroll(qABC);
    qABC.AfterScroll := qABCAfterScroll;
  end;
  if rg1.ItemIndex = 2 then
  begin
    qABC.AfterScroll := nil;
    qABC.Close;
    qABC.Open;
    qABC_Vibor.Close;
    qABCAfterScroll(qABC);
    qABC.AfterScroll := qABCAfterScroll;
  end;
 finally
  Screen.Cursor := crDefault;
 end; 
end;

procedure TfmCliOrds.SpeedButton7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg71.Focused then
    GridToExcel(dbg71);
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.qABCBeforeOpen(DataSet: TDataSet);
begin
  if rg1.ItemIndex = 0 then
    with qABC, qABC.SQL do
    begin
      Close;
      Clear;
      Add('select * from SHIPP_ANALIZ_DEF_ABC(:D_BEGIN,:D_END,:YSL,:PACK)');
      ParamByName('d_begin').Value := dtp_in_abc.Value;
      ParamByName('d_end').Value := dtp_out_abc.Value;
      ParamByName('ysl').AsInteger := rg2.ItemIndex + 1;
      ParamByName('pack').AsInteger := rg3.ItemIndex + 1;
    end;
  if rg1.ItemIndex = 1 then
    with qABC, qABC.SQL do
    begin
      Close;
      Clear;
      Add('select * from SHIPP_ANALIZ_DEF_XYZ1(:D_BEGIN,:D_END,:YSL,:PACK,:PERIOD)');
      add('order by NAME_XYZ ,PROC_XYZ');
      ParamByName('d_begin').Value := dtp_in_abc.Value;
      ParamByName('d_end').Value := dtp_out_abc.Value;
      ParamByName('ysl').AsInteger := rg2.ItemIndex + 1;
      ParamByName('pack').AsInteger := rg3.ItemIndex + 1;
      ParamByName('period').AsInteger := rg4.ItemIndex;
    end;

  if rg1.ItemIndex = 2 then
    with qABC, qABC.SQL do
    begin
      Close;
      Clear;
      Add('select a.ID,a.NAME,a.SUMMA,');
      Add('(select nds_val from get_nds_sum(a.SUMMA,1)) SUMMA_BEZ_NDS,');
      add('a.PROC,a.NPROC,a.NAME_ABC,a.NOM,');
      Add('x.kol,x.am, x.PROC_XYZ,x.NAME_XYZ,x.REM,');
      Add('x.D_IN , x.D_IN_MAX,x.D_OUT,');
      add('x.SUM_PACK_IN,');
      add('(select nds_val from get_nds_sum(x.SUM_PACK_IN,1)) SUM_PACK_IN_BEZ_NDS,');
      add('x.SUM_PACK_OUT,');
      add('(select nds_val from get_nds_sum(x.SUM_PACK_OUT,1)) SUM_PACK_OUT_BEZ_NDS');
      Add('from');
      Add('SHIPP_ANALIZ_DEF_ABC(:D_BEGIN,:D_END,:YSL,:PACK) a');
      Add('join SHIPP_ANALIZ_DEF_XYZ1(:D_BEGIN,:D_END,:YSL,:PACK,:PERIOD) x on a.id = x.id');
      Add('order by a.NOM');
      ParamByName('d_begin').Value := dtp_in_abc.Value;
      ParamByName('d_end').Value := dtp_out_abc.Value;
      ParamByName('ysl').AsInteger := rg2.ItemIndex + 1;
      ParamByName('pack').AsInteger := rg3.ItemIndex + 1;
      ParamByName('period').AsInteger := rg4.ItemIndex;
    end;
 end;

procedure TfmCliOrds.dbg71GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (rg1.ItemIndex = 0) or (rg1.ItemIndex = 2) then
  begin
    if (qABCNAME_ABC.AsString = 'A') then
      Background := clCream;
    if (qABCNAME_ABC.AsString = 'B') then
      Background := clMoneyGreen;
    if (qABCNAME_ABC.AsString = 'C') then
      Background := clSkyBlue;
  end;
  if (rg1.ItemIndex = 1) then
  begin
    if (qABCNAME_XYZ.AsString = 'X') then
      Background := clCream;
    if (qABCNAME_XYZ.AsString = 'Y') then
      Background := clMoneyGreen;
    if (qABCNAME_XYZ.AsString = 'Z') then
      Background := clSkyBlue;
  end;

end;

procedure TfmCliOrds.qABCAfterScroll(DataSet: TDataSet);
var
  Year, Month, Day: Word;
begin
  Screen.Cursor := crHourGlass;
  DecodeDate(dtp_in_abc.Value, Year, Month, Day);
  with qABC_Vibor, qABC_Vibor.SQL do
  begin
    Close;
    Clear;
    if rg2.ItemIndex = 0 then
      Add('select p1.id_manager id, r.fio name ,');
    if rg2.ItemIndex = 1 then
      Add('select o.id_agent    id, i.name name ,');
    if rg2.ItemIndex = 2 then
      Add('select o.id_cptype   id,pt.name name ,');
    if rg4.ItemIndex = 0 then //день
    begin
      //   Add('cast(EXTRACT(YEARDay FROM p.d_pack) as integer) nom_period,');
      Add('cast(cast(p.d_pack as date) - cast(''' + DateToStr(dtp_in_abc.Value)
        +
        ''' as date) as integer) nom_period,');
      Add('EXTRACT(Day FROM p.d_pack)||   ''' + '.' + ''' ||');
      Add('EXTRACT(month FROM p.d_pack)|| ''' + '.' + ''' ||');
      Add('EXTRACT(Year FROM p.d_pack)  period,');
    end;

    if rg4.ItemIndex = 1 then //неделя
    begin
      Add('EXTRACT(Year FROM p.d_pack) ||''' + '.' +
        ''' || cast(EXTRACT(YearDay FROM p.d_pack)/7 + 0.501 as integer)  period,');
      Add('cast(cast(EXTRACT(YearDay FROM p.d_pack)/7 + 0.501 as integer) + ');
      Add('cast(365* cast((EXTRACT(year FROM p.d_pack) - ' + IntToStr(year) +
        ') as float)/7 as integer) as integer) nom_period,');
    end;
    if rg4.ItemIndex = 2 then //месяц
    begin
      Add('cast((EXTRACT(Year FROM p.d_pack) - ' + IntToStr(year) +
        ')*12 + EXTRACT(month FROM p.d_pack) as integer) nom_period,');
      Add('EXTRACT(Year FROM p.d_pack)||''' + '.' +
        ''' ||EXTRACT(MONTH FROM p.d_pack) period,');
    end;

    if rg4.ItemIndex = 3 then //квартал
    begin
      Add('cast(cast(EXTRACT(MONTH FROM p.d_pack) as float)/3+0.3+cast(4*(EXTRACT(YEAR FROM p.d_pack)- '
        + IntToStr(year) + ') as float ) as integer) nom_period,');
      Add('EXTRACT(Year FROM p.d_pack)||''' + '.' +
        '''||cast(cast(EXTRACT(MONTH FROM p.d_pack) as float)/3+0.3  as integer) period,');
    end;
    if rg4.ItemIndex = 4 then //полугодие
    begin
      Add('cast(cast(EXTRACT(month FROM p.d_pack) as float)/12+0.5+2*((EXTRACT(YEAR FROM p.d_pack)) - '
        + IntToStr(year) + ') as integer) nom_period,');
      Add('EXTRACT(Year FROM p.d_pack)||''' + '.' +
        ''' ||cast(cast(EXTRACT(month FROM p.d_pack) as float)/12+0.5  as integer) period,');
    end;
    if rg4.ItemIndex = 5 then //год
    begin
      Add('cast(EXTRACT(YEAR FROM p.d_pack) - ' + IntToStr(year) +
        ' as integer) nom_period,');
      Add('EXTRACT(Year FROM p.d_pack)|| ''' + ' ' + ''' period,');
    end;
    Add(' cast(sum(pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount) as float) summa, ');
    Add(' (select nds_val from get_nds_sum(cast(sum(pp.shipped*((o.price + coalesce(o.pricea,0)) * r1.rate)/o.amount) as float),1)) summa_bez_nds ');
    Add(' from packing p join packpos pp on pp.id_packing = p.id_packing');
    Add(' join project_ords o on o.id_order = pp.id_order and o.d_reject is null');
    Add('      and o.amount > 0 and o.status > 19');
    Add(' join projects p1 on p1.id_project = o.id_project');
    if rg2.ItemIndex = 0 then
      Add(' and p1.id_manager = :id');
    if rg2.ItemIndex = 1 then
      Add(' and o.id_agent = :id');
    if rg2.ItemIndex = 2 then
      Add(' and o.id_cptype = :id');
    Add(' join items i on i.id_item = o.id_agent');
    Add(' join personnel r on r.id_p = p1.id_manager');
    Add(' join ptypes pt on pt.id_ptype = o.id_cptype');
    Add(' join oper_types t on t.id_oper_type = pt.id_oper_type');
    Add(' join rates r1 on r1.id_currency = o.id_currency and r1.on_date = (select max(on_date) from rates where id_currency = o.id_currency and on_date <= p.d_pack)');
    Add(' where p.d_accept is not null and p.pack_type = :pack');
    Add(' and p.d_pack between :d_begin and :d_end');
    Add(' group by 1,2,3,4');
    ParamByName('d_begin').Value := dtp_in_abc.Value;
    ParamByName('d_end').Value := dtp_out_abc.Value;
    ParamByName('pack').AsInteger := rg3.ItemIndex + 1;
    //  ParamByName('y').AsInteger  := year ;
    ParamByName('id').AsInteger := qABCID.AsInteger;
    if cbABC_Vibor.Checked then
    begin
      try
        Open;
        if dbg71.Focused then
          qABC_Vibor.Locate('id', qABCID.AsInteger, []);
      except;
      end;
    end;
    Screen.Cursor := crDefault;

  end;

end;

procedure TfmCliOrds.cbABC_ViborClick(Sender: TObject);
begin
  if cbABC_Vibor.Checked then
    qABCAfterScroll(qABC)
  else
    qABC_Vibor.Close;
end;

procedure TfmCliOrds.qEstReqAfterScroll(DataSet: TDataSet);
begin
  // edEst.Text := qEstReqID_ESTIMATE.AsString;
end;

procedure TfmCliOrds.qEstTitl_backBeforeOpen(DataSet: TDataSet);
begin
  with qEstTitl, qEstTitl.SQL do
  begin
    close;
    clear;
    {  Add('select e.id_estimate, e.name, e.amount, e.price_date, e.sum_nds, e.price_delivery,');
      Add('e.price_tools, e.profit, e.dop_price,');
      Add('e.d_create, p.fio fiocr,  e.d_confirm, a.fio fioconf,');
      Add('e.id_doc,  e.total_sum, (e.total_sum/e.amount) total_sum_al,');
      Add('e.status, e.id_version');
      Add(',sum(ss.total_oper) sum_oper');
      Add(', sum(ss.total_mat) sum_mat');
      Add(',sum(ss.total_oper*(1+ss.profit/100)) sum_oper_proc');
      Add(',sum(ss.total_mat*(1+ss.dop_price/100)) sum_mat_proc');
      Add(',sum(ss.total_oper * (ss.profit/100 + 1) +');
      Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1)) sum_proc');
      Add(',(sum(case when s.id_item is null then (s.total *(1 + t.profit/100))  else 0 end)');
      Add('+sum(case when s.id_item is not null then (s.price *');
      Add('(coalesce(s.full_amount,0)-coalesce(s.comm_amount,0)) * (1 + t.dop_price/100)) else 0 end) )/e.amount sum_proc_one');

      Add('from estimates e');
      Add('left join est_pos s on e.id_estimate = s.id_estimate');
      Add('left join ptypes t on t.id_ptype = e.id_ptype');
      Add('left join est_sum_oper_types ss on e.id_estimate = ss.id_estimate');
      Add('left join personnel p on p.id_p = e.id_creator');
      Add('left join personnel a on a.id_p = e.id_confirm');
      Add('where e.id_version = :id_version');
      Add('group by  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
                                                                    }

    Add('select e.id_estimate, e.name, e.amount, e.price_date, e.sum_nds,');
    Add('e.price_delivery,');
    Add('(select nds_val from get_nds_sum((e.price_delivery),1)) price_delivery_bez_nds,');
    Add('e.price_tools,');
    Add('(select nds_val from get_nds_sum((e.price_tools),1)) price_tools_bez_nds,');
    Add(' e.profit, e.dop_price,');
    Add('e.d_create, p.fio fiocr,  e.d_confirm, a.fio fioconf,');
    Add('e.id_doc,');
    Add('e.total_sum,');
    Add('(select nds_val from get_nds_sum((e.total_sum),1)) total_sum_bez_nds,');
    Add('(e.total_sum/coalesce(e.amount,1)) total_sum_al,');
    Add('(select nds_val from get_nds_sum(((e.total_sum/coalesce(e.amount,1))),1)) total_sum_al_bez_nds,');
    Add('e.status, e.id_version');
    Add(',sum(ss.total_oper) sum_oper');
    Add(',(select nds_val from get_nds_sum((sum(ss.total_oper)),1)) sum_oper_bez_nds');
    Add(', sum(ss.total_mat-ss.comm_amount) sum_mat');
    Add(', (select nds_val from get_nds_sum((sum(ss.total_mat-'
      + 'ss.comm_amount)),1)) sum_mat_bez_nds');
    Add(',sum(ss.total_oper*(1+ss.profit/100)) sum_oper_proc');
    Add(' ,(select nds_val from get_nds_sum((sum(ss.total_oper*'
      + '(1+ss.profit/100))),1)) sum_oper_proc_bez_nds');
    Add(',sum((ss.total_mat-ss.comm_amount)*(1+ss.dop_price/100)) sum_mat_proc');
    Add(',(select nds_val from get_nds_sum((sum((ss.total_mat-ss.comm_amount)'
      + '*(1+ss.dop_price/100))),1)) sum_mat_proc_bez_nds');
    Add(',sum(ss.total_oper * (ss.profit/100 + 1) +');
    Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1)) sum_proc');
    Add(',(select nds_val from get_nds_sum((sum(ss.total_oper * (ss.profit/100 + 1) +');
    Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1))),1)) sum_proc_bez_nds');
    Add(',(sum(ss.total_oper * (ss.profit/100 + 1) +');
    Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + '
      + '1)))/e.amount  sum_proc_one');
    Add(',(select nds_val from get_nds_sum(((sum(ss.total_oper ' +
      '* (ss.profit/100 + 1) +');
    Add('(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + ' +
      '1)))/e.amount),1))  sum_proc_one_bez_nds');
    Add('from estimates e');
    Add('left join est_sum_oper_types ss on e.id_estimate = ss.id_estimate');
    Add('left join personnel p on p.id_p = e.id_creator');
    Add('left join personnel a on a.id_p = e.id_confirm');
    Add('where e.id_version = :id_version and coalesce(e.estimate_type,0) <> 1');
    Add('group by  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18 ,19,20,21,22');
    add(OrdBy(dbghEst));
    qEstTitl.ParamByName('id_version').AsInteger :=
      qIns.FieldByName('id_version').AsInteger;
  end;

end;

procedure TfmCliOrds.SpeedButton8Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    with qIns, qIns.SQL do
    begin
      Close;
      Clear;
      Add('select s.id_version from estimates s  where s.id_estimate = :id_estimate');
      ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
      Open;
      if not qIns.IsEmpty then
      begin
        qEstFull.Close;
        qEstFull.Open;
        qEstTitl.Close;
        qEstTitl.Open;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.dbghEstGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not qEstTitlD_CONFIRM.IsNull then
    Background := clMoneyGreen;
  if qEstTitlSTATUS.AsInteger = 10 then
    AFont.Color := clred;
  if (qEstTitlSTATUS.AsInteger = 0) and (not qEstTitlSTATUS.IsNull) then
    AFont.Style := [fsBold];

end;

procedure TfmCliOrds.qEstFull_backCalcFields(DataSet: TDataSet);
begin
  if not qEstFullAMOUNT_TIME.IsNull then
    if qEstFullOBJ_TYPE.AsInteger = 2 then
      qEstFullnAmount_Time.AsString := HourToTime(qEstFullAMOUNT_TIME.AsFloat)
    else
      qEstFullnAmount_Time.AsString := qEstFullAMOUNT_TIME.AsString;

end;

procedure TfmCliOrds.dbghEstSortMarkingChanged(Sender: TObject);
begin
  qEstTitl.Close;
  qEstTitl.Open;
end;

procedure TfmCliOrds.SpeedButton9Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbghEst.Focused then
    GridToExcel(dbghEst);
  if dbgEstpOSaLL.Focused then
    GridToExcel(dbgEstpOSaLL);
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.SpeedButton10Click(Sender: TObject);
begin
  if fmMain.S19 <> 1 then
    exit;
  if not Assigned(fmEstCalc) then
    Application.CreateForm(TfmEstCalc, fmEstCalc);
  fmEstCalc.ID_ESTIMATE := qEstTitlID_ESTIMATE.AsInteger;
  fmEstCalc.ID_ORDER := -1;
  fmEstCalc.ID_PTYPE := -1;
  fmMain.Status_Ord := 10000;
  fmEstCalc.Caption := 'Смета № ' + IntToStr(fmEstCalc.ID_ESTIMATE);
  fmEstCalc.Show;
end;

procedure TfmCliOrds.SpeedButton11Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  ID_EST := qEstTitlID_ESTIMATE.AsInteger;
  ins_ord := 1;
  lcbOrder.KeyValue := null;
  edOrd.Clear;
  qOrd.Close;
  lbOrder.Caption := 'Создание заказа на основании сметы № ' +
    qEstTitlID_ESTIMATE.AsString;
  if not qAgent.Active then
    qAgent.Open;
  if not qProj.Active then
    qProj.Open;
  if not qMen.Active then
    qMen.Open;
  lcbAg.KeyValue := qClientsID_ITEM.AsInteger;
  qOrd.Open;
  lcbOrder.KeyValue := null;
  lcbProj.KeyValue := qPrjID_PROJECT.AsInteger;
  lcbMen.KeyValue := qPrjID_MANAGER.AsInteger;
  lbOrdKind.Caption := '0';
  with qOrd_Type, qOrd_Type.SQL do
  begin
    Close;
    Clear;
    Add('select * from ORD_TYPES order by NAME');
    Open;
    FetchAll;
  end;

  pnOrder.Show;
  gbProj.Hide;
  Screen.Cursor := crDefault;

end;

procedure TfmCliOrds.qEstTitl_backCalcFields(DataSet: TDataSet);
begin
  {qEstTitlnSUM_TOTAL_SALE.AsFloat :=
    qEstTitlPRICE_DELIVERY.AsFloat + qEstTitlPRICE_TOOLS.AsFloat +
    qEstTitlSUM_PROC.AsFloat;
    qEstTitlnSUM_TOTAL_SALE_BEZ_NDS.AsFloat := qEstTitlnSUM_TOTAL_SALE.AsFloat/
     (1 + fmAll.GetNDS/100);
    qEstTitlnSUM_TOTAL_SALE_ONE.AsFloat := qEstTitlnSUM_TOTAL_SALE.AsFloat
    / qEstTitlAMOUNT.AsInteger;
    qEstTitlnSUM_TOTAL_SALE_ONE_BEZ_NDS.AsFloat := qEstTitlnSUM_TOTAL_SALE_ONE.AsFloat
     /(1 + fmAll.GetNDS/100); }
end;

procedure TfmCliOrds.dbghEstColumnsSUM_NDSUpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if not qEstTitlD_CONFIRM.IsNull then
  begin
    showmessage('Нельзя редактировать утвержденную смету');
    handled := true;
    exit;
  end;
end;

procedure TfmCliOrds.qEstTitl_backPRICE_DELIVERYChange(Sender: TField);
begin
  qEstTitlSUM_PROC.AsFloat := qEstTitlSUM_OPER_PROC.AsFloat +
    qEstTitlSUM_MAT_PROC.AsFloat +
    qEstTitlPRICE_DELIVERY.AsFloat +
    qEstTitlPRICE_TOOLS.AsFloat;
end;

procedure TfmCliOrds.ToolButton4Click(Sender: TObject);
begin
  if qOrders.IsEmpty then
    exit;
  {If qOrdersSHIP.AsFloat > 0 Then begin
   MsgInformation('По заказу проведена отгрузка. Изменения данных запрещены',
   'Проверка наличия отгрузок');
   exit;
  end; }
  if (qOrdersSTATUS.AsInteger < 30) then
  begin
    MsgInformation('Заказ еще не принят производством. Изменение данных ' +
      'возможно при снятии соответствующих утверждений', 'Проверка статуса');
    exit;
  end;
  if not Assigned(fmKCH_REQ) then
    Application.CreateForm(TfmKCH_REQ, fmKCH_REQ);
  if not Assigned(fmCH_REQ) then
    Application.CreateForm(TfmCH_REQ, fmCH_REQ);
  with fmKCH_REQ do
  begin
    C_ORDER := qOrdersID_ORDER.AsInteger;
    CH_REQ := 0;
    Kop := 1;
    ShowModal;
    if CH_REQ > 0 then
    begin
      fmCH_REQ.C_REQ := CH_REQ;
      fmCH_REQ.C_MAN := SysVars.RegTN;
    end;
  end;
  fmCH_REQ.Show;

end;

procedure TfmCliOrds.tb_1Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if not qDOCD_FILL.IsNull then
  begin
    MsgInformation('Документ утвержден. Редактирование запрещено',
      'Проверка статуса');
    Exit;
  end;
  ed_Cap.Text := qDOCNAME.AsString;
  ed_Id_Doc.Text := qDOCNUMBER.AsString;
  if qDOCDOC_TYPE.IsNull then
    lcb_Doc_Type.KeyValue := NULL
  else
  begin
    qDOC_TYPE.Locate('ID_PROJ_DOC_TYPE', qDOCDOC_TYPE.Value, []);
    lcb_Doc_Type.KeyValue := qDOCDOC_TYPE.Value;
  end;
  dtp_1.Text := qDOCD_DOC.AsString;
  dtp_2.Text := qDOCD_IN.AsString;
  dtp_3.Text := qDOCD_OUT.AsString;
  dtp_4.Text := qDOCD_PROD.AsString;
  dtp_5.Text := qDOCD_SHIPP.AsString;
  p_4.BringToFront;
  pcDoc.ActivePage := tsDoc_K;
end;

procedure TfmCliOrds.qDOCCalcFields(DataSet: TDataSet);
begin
  if (not qDOCD_FILL.IsNull) or (qDOCSTATUS.AsInteger in [3, 4]) then
    qDOCfILL.AsString := '*'
  else
    qDOCfILL.Clear;
  if qDOCID_DRAFT.IsNull then
    qDOCGraph.Clear
  else
    qDOCGraph.AsString := 'G';
  case qDOCSTATUS.AsInteger of
    0: qDOCnSTATUS.AsString := '';
    1: qDOCnSTATUS.AsString := 'Новый';
    2: qDOCnSTATUS.AsString := 'В утверждении';
    3: qDOCnSTATUS.AsString := 'Утвержден';
    4: qDOCnSTATUS.AsString := 'Отклонен';
  end;
end;

procedure TfmCliOrds.qDOCNewRecord(DataSet: TDataSet);
begin
  // проверка на закрытый проект
  with dmiS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects where id_project = :id_project');
    ParamByName('id_project').AsInteger := qProjID_PROJECT.AsInteger;
    Open;
    if not dmis.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Abort;
    end;
  end;
  qDOCID_PROJECT.AsInteger := qDOC.ParamByName('id_project').AsInteger;
  qDOCSTATUS.AsInteger := 1;
end;

procedure TfmCliOrds.qDOCBeforePost(DataSet: TDataSet);
begin
  if (not qDOCD_FILL.IsNull) or (qDOCSTATUS.AsInteger in [2, 3, 4]) then
  begin
    MsgInformation('Документ в утверждении или утвержден. Редактирование запрещено', 'Проверка статуса');
    qDOC.Cancel;
    Abort;
    exit;
  end;
  if (qDOCNAME.IsNull) or (qDOCNAME.AsString = '') then
  begin
    MsgInformation('Не задано название документа', 'Проверка данных');
    // qDOC.Cancel;
    Abort;
    exit;
  end;
  if (qDOCD_DOC.IsNull) then
  begin
    MsgInformation('Не задана дата документа', 'Проверка данных');
    // qDOC.Cancel;
    Abort;
    exit;
  end;
  qDOCID_FIX.AsInteger := SysVars.RegTN;
end;

procedure TfmCliOrds.dbg4DblClick(Sender: TObject);
begin
{  if not dmIS.dbDOC.Connected then
  try
    dmIS.dbDOC.Connected := true;
  except
  end;   }

  //fmMain.StoreDoc(0,qEstReqID_DOC.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qEstReqID_DOC.AsInteger, 0, ''); // переход на новую базу документов
  // fmAll.StoreDoc_r(qEstReqID_DOC.Value);

end;

procedure TfmCliOrds.dbg44GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qDogovor_DocD_REJECT.IsNull then
    aFont.Style := [fsStrikeOut];
end;

procedure TfmCliOrds.dbg44DblClick(Sender: TObject);
begin
{  if not dmIS.dbDOC.Connected then
  try
    dmIS.dbDOC.Connected := true;
  except
  end;         }

  //fmMain.StoreDoc(0,qDogovor_DocID_DOC.Value,'',dmIS.qW_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);

  Old_DocBody(qDogovor_DocID_DOC.AsInteger, 0, ''); // переход на новую базу документов
  //fmAll.StoreDoc_r(qDogovor_DocID_DOC.Value);

end;

procedure TfmCliOrds.qFILL_DCalcFields(DataSet: TDataSet);
begin
  case qFILL_DF_TYPE.AsInteger of
    0: qFILL_DnFILL.AsString := 'Отклонен';
    1: qFILL_DnFILL.AsString := 'Подписан';
  end;

end;

procedure TfmCliOrds.pcDocChange(Sender: TObject);
begin
  if pcDoc.ActivePage = tsDoc then
    p_4.SendToBack;
  if pcDoc.ActivePage = tsDoc_K then
    with qFILL_D do
    begin
      Close;
      ParamByName('idd1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
      Open;
    end;
end;

procedure TfmCliOrds.tb_2Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if not qDOCID_DRAFT.IsNull then
  begin
    MsgInformation('Данный документ содержит приложение. ' +
      'Его удаление запрещено.', 'Проверка возможности удаления');
    exit;
  end;
  if (not qDOCD_FILL.IsNull) and (not fmMain.UF41) then
  begin
    MsgInformation('Данный документ утвержден. ' +
      'Вы не имеете прав на его удаление.', 'Проверка возможности удаления');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('Select ID_DOC from PROJECT_ORDS where ID_DOC = :d1');
    ParamByName('d1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
    Open;
    if not IsEmpty then
    begin
      MsgInformation('Данный документ является основанием заказа. ' +
        'Его удаление запрещено.', 'Проверка возможности удаления');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', Вы действительно хотите удалить ' +
    'выбранный документ?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECT_DOCS');
      Add('WHERE ID_PROJECT_DOC = ' + qDOCID_PROJECT_DOC.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('Ошибка при удалении записи', 'Ошибка при удалении');
      end;
      OpenDOCS;
    end;
end;

procedure TfmCliOrds.tb_5Click(Sender: TObject);
begin
  if qDOCID_DRAFT.IsNull then
    exit;
  //fmMain.StoreDoc(0,qDOCID_DRAFT.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);

 Old_DocBody(qDOCID_DRAFT.AsInteger, 0, ''); // переход на новую базу документов
 // fmAll.StoreDoc_r(qDOCID_DRAFT.Value);

end;

procedure TfmCliOrds.tb_6Click(Sender: TObject);
var
  FName: string;
  ID_I: integer;
begin
  if qDOC.IsEmpty then
    exit;
  if qDOC.State in [dsInsert, dsEdit] then
    qDOC.Post;
  if not qDOCD_FILL.IsNull then
  begin
    MsgInformation('Документ подписан. Нельзя изменить приложение.',
      'Проверка возможности редактирования');
    exit;
  end;
  if od1.Execute then
  begin
    if qDOCID_DRAFT.IsNull then
    begin
      with dmIS.qD_IN, dmIS.qD_IN.SQL do
      begin
        Close;
        Clear;
        Add('SELECT * FROM NEW_DESIGN_DOC( ' + qDOCID_PROJECT_DOC.AsString + ','
          +
          IntToStr(SysVars.RegTN) + ')');
        try
          Open;
          ID_I := FieldByName('ID_DOC').Value;
          if dmIS.dT.Active then
            dmIS.dT.CommitRetaining;
        except
          if dmIS.dT.Active then
            dmIS.dT.RollbackRetaining;
          MsgError('Ошибка при записи нового эскиза', 'Ошибка записи');
          exit;
        end;
      end;
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('UPDATE PROJECT_DOCS SET ID_DRAFT = ' + IntToStr(ID_I));
        Add('WHERE ID_PROJECT_DOC = ' + qDOCID_PROJECT_DOC.AsString);
        try
          ExecSQL;
          if dmIS.mT.Active then
            dmIS.mT.CommitRetaining;
        except
          if dmIS.mT.Active then
            dmIS.mT.RollbackRetaining;
          MsgError('Ошибка при записи нового документа', 'Ошибка записи');
          exit;
        end;
      end;
    end
    else
      ID_I := qDOCID_DRAFT.Value; //поле ID_DRAFT is not null
    FName := ExtractFileName(od1.FileName);
    Old_DocBody(ID_I, 2, ''); // переход на новую базу документов
   // fmMain.StoreDoc(2, ID_I, FName, dmIS.qR_BODY);
  end;
  OpenDOCS;

end;

procedure TfmCliOrds.tb_7Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if qDOCID_DRAFT.IsNull then
    exit;
  if not qDOCD_FILL.IsNull then
  begin
    MsgInformation('Документ подписан. Нельзя удалить приложение.',
      'Проверка возможности удаления');
    Exit;
  end;
  if MsgQuestion(SysVars.NReg + ', Вы действительно хотите удалить ' +
    'приложение к документу - ' + qDOCID_PROJECT_DOC.AsString + ' - ' +
    qDOCNAME.AsString + ' ?', 'Удаление приложения') = id_yes then
  begin
    with dmIS.qD_IN, dmIS.qD_IN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM DESIGN_DOC WHERE ID_DOC = ' + qDOCID_DRAFT.AsString);
      try
        ExecSQL;
        if dmIS.dT.Active then
          dmIS.dT.CommitRetaining;
      except
        if dmIS.dT.Active then
          dmIS.dT.RollbackRetaining;
        MsgError('Ошибка при удалении приложения', 'Ошибка удаления');
        exit;
      end;
    end;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECT_DOCS SET ID_DRAFT = NULL');
      Add('WHERE ID_PROJECT_DOC = ' + qDOCID_PROJECT_DOC.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('Ошибка при удалении ссылки на приложение',
          'Ошибка при удалении');
        exit;
      end;
    end;
    OpenDOCS;
  end;

end;

procedure TfmCliOrds.tb_9Click(Sender: TObject);
begin
  if qDOCID_DRAFT.IsNull then
    exit;
  Old_DocBody(qDOCID_DRAFT.AsInteger, 1, ''); // переход на новую базу документов
 // fmMain.StoreDoc(3, qDOCID_DRAFT.Value, '', dmIS.qR_BODY);
end;

procedure TfmCliOrds.tb_8Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qProjID_PROJECT.AsInteger;
    Open;
    if not dmis.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Вы не можете подписать документ, так так проект закрыт',
        'Внимание');
      Exit;
    end;
  end;
  //********************************
  if (qDOCSTATUS.AsInteger in [3, 4]) or not qDOCD_FILL.IsNull then
  begin
    MsgInformation('Документ уже подписан', 'Подпись документа');
    exit;
  end;
  if MsgQuestion('После подписи документ будет зафиксирован ' +
    'в базе данных и недоступен для редактирования. ' + SysVars.NReg +
    ', Вы действительно хотите подписать выбранный документ?',
    'Подпись документа') = id_yes then

    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('execute procedure FILL_PROJ_DOC(:idd, :idp, 1, NULL)');
      ParamByName('idd').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
      ParamByName('idp').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        Close;
        Clear;
        Add('update PROJECT_DOCS set D_FILL = CURRENT_TIMESTAMP');
        Add('where ID_PROJECT_DOC = :pd1');
        ParamByName('pd1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenDOCS;
      except
        raise;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;

end;

procedure TfmCliOrds.tb_12Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if (qDOCSTATUS.AsInteger in [0, 1]) and qDOCD_FILL.IsNull then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select p.id_order from project_ords p');
    Add('where p.status >=10 and p.d_reject is null and p.id_doc = :d1');
    ParamByName('d1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
    Open;
    if not IsEmpty then
    begin
      MsgInformation('Документ является документом-основанием утвержденного заказа.'
        +
        ' Снятие утверждения документа запрещено.', 'Проверка');
      exit;
    end;
  end;
  if MsgQuestion('С документа - ' + qDOCNAME.AsString +
    '- будет снято утверждение. ' + SysVars.NReg + ', Снять утверждение?',
    ' Снятие утверждения') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('update PROJECT_DOCS set STATUS = 1, D_FILL = NULL where ID_PROJECT_DOC = :idd1 ');
      ParamByName('idd1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
      try
        ExecSQL;
        Close;
        Clear;
        Add('delete from PROJECT_DOCS_FILL where ID_PROJECT_DOC = :id1');
        ParamByName('id1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenDOCS;
      except
        MsgError('Ошибка при снятии утверждения', 'Ошибка');
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;

end;

procedure TfmCliOrds.tb_11Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if (qDOCSTATUS.AsInteger in [3, 4]) then
  begin
    MsgInformation('Документ утвержден. Нельзя отклонить данный документ.',
      'Проверка статуса.');
    exit;
  end;
  if not Assigned(fmFILL) then
    Application.CreateForm(TfmFILL, fmFILL);
  fmFILL.F_TP := 3;
  fmFILL.Caption := 'Отклонение документа: ' + qDOCNAME.AsString;
  fmFILL.ShowModal;
  OpenDOCS;
end;

procedure TfmCliOrds.dbg140DblClick(Sender: TObject);
begin
{  if not dmIS.dbDOC.Connected then
  try
    dmIS.dbDOC.Connected := true;
  except
  end;      }

  if qDOCID_DRAFT.IsNull then
    exit;
  //fmMain.StoreDoc(0,qDOCID_DRAFT.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qDOCID_DRAFT.AsInteger, 0, ''); // переход на новую базу документов
  // fmAll.StoreDoc_r(qDOCID_DRAFT.Value);
end;

procedure TfmCliOrds.lcbProjCloseUp(Sender: TObject; Accept: Boolean);
begin
  lcbMen.KeyValue := qProjID_MANAGER.AsInteger;
end;

procedure TfmCliOrds.tb_14Click(Sender: TObject);
begin
  if qDOCID_DRAFT.IsNull then
  begin
    MsgInformation('Документ не содержит приложения ', 'Проверка приложения');
    exit;
  end;

  if qDOCfILL.IsNull then
  begin
    MsgInformation('Документ не утвержден', 'Проверка статуса документа');
    exit;
  end;
  if not Assigned(fmKEReq) then
    Application.CreateForm(TfmKEReq, fmKEReq);
  with fmKEReq do
  begin
    Kop := 1;
    C_PROJECT := qPrjID_PROJECT.AsInteger;
    fmKEReq.nomOrder.Caption := '';
    fmKEReq.n_Order.Caption := '';
    fmKEReq.m1.Clear;
    fmKEReq.m1.Lines.Add('Заявка на основании:');
    fmKEReq.m1.Lines.Add('Проекта  "' + qPrjNAME.AsString + '"');
    fmKEReq.m1.Lines.Add('Документа "' + qDOCnTYPE.AsString + '"');
    fmKEReq.m1.Lines.Add('№ документа  "' + qDOCNAME.AsString + '", Код ' +
      qDOCID_DRAFT.AsString);
    ShowModal;
  end;
end;

procedure TfmCliOrds.ToolButton12Click(Sender: TObject);
var
  IDD: integer;
begin

  if fmMain.S19 <> 1 then
  begin
  {  if dmIS.dbDOC.Connected = false then
      dmIS.dbDOC.Connected := true;             }
    if not Assigned(fmRep) then
      Application.CreateForm(TfmRep, fmRep);

    fmRep.PrintMainDoc(qOrdersID_DOC.AsInteger);
    exit;
  end;

  if qOrdersID_DOC.IsNull then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d.ID_DRAFT from PROJECT_DOCS d join PROJECT_ORDS p');
    Add('on p.ID_DOC = d.ID_PROJECT_DOC and p.id_order = :ido1');
    ParamByName('ido1').AsInteger := qOrdersID_ORDER.AsInteger;
    try
      Open;
      if not IsEmpty then
        IDD := FieldByName('ID_DRAFT').AsInteger;
    except;
    end;
  end;

  if IDD <= 0 then
    MsgInformation('Приложение отсутствует', 'Поиск приложения')
  else
  begin
  {  if not dmIS.dbDOC.Connected then
    try
      dmIS.dbDOC.Connected := True;
    except
      MsgError('Нет связи с базой документов', 'Соединение с базой документов');
    end;     }
    //fmMain.StoreDoc(0,IDD,'',dmIS.qR_BODY);
    if not Assigned(fmAll) then
      Application.CreateForm(TfmAll, fmAll);
    Old_DocBody(IDD, 0 , ''); // переход на новую базу документов
   // fmAll.StoreDoc_r(IDD);
   // dmIS.dbDOC.Connected := False;
  end;
end;

procedure TfmCliOrds.ToolButton13Click(Sender: TObject);
begin
  if qInvoice.IsEmpty then
    exit;
  if qInvoiceID_DOC.IsNull then
    exit;
 { if not dmIS.dbDOC.Connected then
  try
    dmIS.dbDOC.Connected := true;
  except
  end;     }

  //fmMain.StoreDoc(0,qInvoiceID_DOC.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qInvoiceID_DOC.AsInteger, 0, ''); // переход на новую базуц документов
 // fmAll.StoreDoc_r(qInvoiceID_DOC.Value);
end;

procedure TfmCliOrds.N5Click(Sender: TObject);
begin
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  fmAll.Est_Excel(qOrdersID_ESTIMATE.AsInteger, 0);
end;

procedure TfmCliOrds.dbg27GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qOrdWorkARCH.IsNull then
    AFont.Color := clRed;
end;

procedure TfmCliOrds.ToolButton37Click(Sender: TObject);
begin
  if qOrders.IsEmpty then
    exit;

  {*******************************************************************************
                    ПРОВЕРКА НА ПРИЗНАК УВОЛЬНЕНИЯ СОТРУДНИКА
                   (проверка пользователя вошедшего в систему)
  *******************************************************************************}
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    // проверка по менеджеру заказа
    Close;
    Clear;
    Add('select p.d_dismiss from project_ords s');
    Add('join personnel p on p.id_p = s.id_fix');
    Add('where s.id_order = :id_order');
    Add('and s.id_fix = :id_fix and p.is_fact is null');
    ParamByName('id_fix').AsInteger   := SysVars.RegTN;
    ParamByName('id_order').AsInteger := qOrdersID_ORDER.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('Вы не можете утвердить заказ, так так, менеджер этого заказа,' +
        'с этой учетной записью, является уволенным', 'Внимание');
      Exit;
    end;
    // проверка по проекту если сотрудник уволен
    Close;
    Clear;
    Add('select p.d_dismiss from projects s');
    Add('join personnel p on p.id_p = s.id_manager');
    Add('where s.id_project = :id_project and s.id_manager = ');
    Add('(select id_manager from projects where id_project = :id_project) and p.is_fact is null');
    ParamByName('id_project').AsInteger := qOrdersID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('Вы не можете утвердить заказ, так так, менеджер проекта, ' +
        ' к которому относится выбранный заказ,' +
        'с этой учетной записью, является уволенным', 'Внимание');
      Exit;
    end;
    // проверка на утверженный проект при утверждении заказа
    Close;
    Clear;
    Add('select d_fix from projects s where s.id_project = ' +
      qOrdersID_PROJECT.AsString);
    Open;
    if IsEmpty then
    begin
      MsgError('Вы не можете утвердить заказ, так так проект еще не утвержден',
        'Внимание');
      Exit;
    end;
  end;
  //******************************************************************************

  if qOrdersD_FIX.IsNull then
  begin
    MsgInformation('Необходимо установить дату планирования, т.к заказ имеет признак "Резерв".', 'Проверка утверждения');
    exit;
  end;

  if qOrdersSTATUS.AsInteger > 6 then
  begin
    MsgInformation('Заказ уже утвержден.', 'Проверка утверждения');
    exit;
  end;
  if qOrdersSTATUS.AsInteger < 9 then
    if not TestInfoOrder then
      exit;
  if
    MsgQuestion('После утверждения заказ будет переведён в состояние "Прогноз". '
    +
    SysVars.NReg + ', Вы действительно хотите утвердить заказ?',
    'Утверждение заказа') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('insert into project_ords_state (ID_ORDER, ID_ORD_EVENT, D_FACT, ID_FACT)');
      Add('values(:rno, 15, current_timestamp, :id_conf)');
      ParamByName('rno').AsInteger := qOrdersID_ORDER.AsInteger;
      ParamByName('id_conf').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenOrds;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;

end;

procedure TfmCliOrds.qShipp_A_Plan_PrognBeforeOpen(DataSet: TDataSet);
begin
  if rg1.ItemIndex = 0 then
    with qShipp_A_Plan_Progn, qShipp_A_Plan_Progn.SQL do
    begin
      Close;
      Clear;
      Add('select name,id,n_order,name_ord,');
      Add('sum(sum_pack) summa,');
      add('(select nds_val from get_nds_sum(sum(sum_pack),1)) summa_bez_nds,');
      Add('sum(sum_pack1) s1 , sum(sum_pack2) s2, sum(sum_pack3)s3 , sum(sum_pack4) s4, sum(sum_pack5) s5,');
      Add('sum(sum_pack6) s6, sum(sum_pack7) s7, sum(sum_pack8) s8, sum(sum_pack9) s9, sum(sum_pack10) s10,');
      Add('sum(sum_pack11) s11,sum(sum_pack12) s12,sum(sum_pack13) s13,sum(sum_pack14) s14,sum(sum_pack15) s15,');
      Add('sum(sum_pack16) s16,sum(sum_pack17) s17,sum(sum_pack17) s18,sum(sum_pack19) s19,sum(sum_pack20) s20,');
      Add('sum(sum_pack21) s21,sum(sum_pack22) s22,sum(sum_pack23) s23,sum(sum_pack24) s24,sum(sum_pack25) s25,');
      Add('sum(sum_pack26) s26,sum(sum_pack27) s27,sum(sum_pack28) s28,sum(sum_pack29) s29,sum(sum_pack30) s30,');
      Add('sum(sum_pack31) s31,sum(sum_pack32) s32,sum(sum_pack33) s33,sum(sum_pack34) s34,sum(sum_pack35) s35,');
      Add('sum(sum_pack36) s36,sum(sum_pack37) s37,sum(sum_pack38) s38,sum(sum_pack39) s39,sum(sum_pack40) s40,');
      Add('sum(sum_pack41) s41,sum(sum_pack42) s42,sum(sum_pack43) s43,sum(sum_pack44) s44,sum(sum_pack45) s45,');
      Add('sum(sum_pack46) s46,sum(sum_pack47) s47,sum(sum_pack48) s48,sum(sum_pack49) s49,sum(sum_pack50) s50,');
      Add('sum(sum_pack51) s51,sum(sum_pack52) s52,sum(sum_pack53) s53');
      if rg22.ItemIndex < 3 then
        Add('from SHIPP_ANALIZ_ORD_PLAN_SHIPP(:D_BEGIN,:D_END,:YSL,:PACK,:PERIOD)');
      if rg22.ItemIndex = 3 then
        Add('from SHIPP_ANALIZ_ORD_PLAN_SHIPP1(:D_BEGIN,:D_END,:YSL,:PACK,:PERIOD)');
      if rg22.ItemIndex < 3 then
        Add('group by 1,2,3,4');
      if rg22.ItemIndex = 3 then
        Add('group by 3,2,4,1');

      ParamByName('d_begin').Value := dtp_in_an.Value;
      ParamByName('d_end').Value := dtp_out_an.Value;
      ParamByName('ysl').AsInteger := rg22.ItemIndex + 1;
      if rg33.ItemIndex = 0 then
        ParamByName('pack').AsInteger := 21;
      if rg33.ItemIndex = 1 then
        ParamByName('pack').AsInteger := 100;
      ParamByName('period').AsInteger := rg44.ItemIndex + 1;
      // ShowMessage(text);
      if rg22.ItemIndex < 3 then
      begin
        dbg81.FieldColumns['NAME'].Width := 200;
        dbg81.FieldColumns['N_ORDER'].Width := 0;
        dbg81.FieldColumns['NAME_ORD'].Width := 0;
      end;
      if rg22.ItemIndex = 3 then
      begin
        dbg81.FieldColumns['NAME'].Width := 0;
        dbg81.FieldColumns['N_ORDER'].Width := 100;
        dbg81.FieldColumns['NAME_ORD'].Width := 215;
      end;

    end;
end;

procedure TfmCliOrds.dbg81SortMarkingChanged(Sender: TObject);
begin
  qShipp_A_Plan_Progn.Close;
  qShipp_A_Plan_Progn.Open;
end;

procedure TfmCliOrds.SpeedButton12Click(Sender: TObject);
begin
 try
  Screen.Cursor := crHourGlass;
  dbg81SortMarkingChanged(Sender);
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.SpeedButton13Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg81.Focused then
    GridToExcel(dbg81);
  Screen.Cursor := crDefault;
end;

procedure TfmCliOrds.ToolButton38Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmClients) then
      Application.CreateForm(TfmClients, fmClients);
    fmClients.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.edFndKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg2, edFnd, key, qOrdersID_ORDER.FieldName);
end;

procedure TfmCliOrds.qEstEVCalcFields(DataSet: TDataSet);
begin
  qEstEVnSUM_TOTAL_SALE.AsFloat :=
    qEstEVPRICE_DELIVERY.AsFloat + qEstEVPRICE_TOOLS.AsFloat +
    qEstEVSUM_PROC.AsFloat;
  qEstEVnSUM_TOTAL_SALE_ONE.AsFloat := qEstEVnSUM_TOTAL_SALE.AsFloat /
    qEstEVAMOUNT.AsInteger;
end;

procedure TfmCliOrds.cbChngChange(Sender: TObject);
begin
  Sum_Ords;
end;

procedure TfmCliOrds.pc2Change(Sender: TObject);
begin
  if pc2.ActivePage = TabSheet7 then
  begin
    qOrd_Lid.close;
    qOrd_Lid.ParamByName('lid').AsInteger := qOrder_AllLID.AsInteger;
    qOrd_Lid.open;
  end;
end;

procedure TfmCliOrds.SpeedButton14Click(Sender: TObject);
begin
 try
 Screen.Cursor := crHourGlass;
  qOrd_Lid.close;
  qOrd_Lid.ParamByName('lid').AsInteger := qOrder_AllLID.AsInteger;
  qOrd_Lid.open;
 finally
  Screen.Cursor := crDefault;
 end; 
end;

procedure TfmCliOrds.SpeedButton15Click(Sender: TObject);
var
  id_i, i: integer;
  FName: string;
begin
  if qEstReq.IsEmpty then
    exit;
  if not qEstReqD_FIX.IsNull then
  begin
    MsgInformation('Заявка уже выполнена. Нельзя записать документ.',
      'Проверка возможности редактирования');
    exit;
  end;
  if od2.Execute then
  begin
   { if dmIs.dbDOC.Connected = false then
      dmIs.dbDOC.Connected := true; }

    for i := 0 to od2.Files.Count - 1 do
    begin
      with dmIS.qD_IN, dmIS.qD_IN.SQL do
      begin
        Close;
        Clear;
        Add('SELECT * FROM NEW_DESIGN_DOC( ' + qEstReqID_REQUEST.AsString + ','
          +
          IntToStr(SysVars.RegTN) + ')');
        try
          Open;
          ID_I := FieldByName('ID_DOC').Value;
          if dmIS.dT.Active then
            dmIS.dT.CommitRetaining;
        except
          if dmIS.dT.Active then
            dmIS.dT.RollbackRetaining;
          MsgError('Ошибка при записи нового документа', 'Ошибка записи');
          exit;
        end;
      end;

      with qINs, qINs.SQL do
      begin
        Close;
        Clear;
        add('insert into request_docs (id_req_doc, id_req, id_doc, d_edit, id_edit, name)');
        add('values (GEN_ID(product_docs_id, 1), :id_req, :id_doc, current_date, :id_edit, :name)');
        try
          Parambyname('id_req').AsInteger := qEstReqID_REQUEST.AsInteger;
          parambyname('id_doc').AsInteger := ID_I;
          parambyname('id_edit').AsInteger := SysVars.RegTN;
          parambyname('name').AsString :=
            LeftStr(ExtractFileName(od2.Files.Strings[i]), 64);
          ExecSQL;
          if dmIS.mT.Active then
            dmIS.mT.CommitRetaining;
        except
          if dmIS.mT.Active then
            dmIS.mT.RollbackRetaining;
          MsgError('Ошибка при записи нового документа', 'Ошибка записи');
          exit;
        end;
      end;

      FName := ExtractFileName(od2.Files.Strings[i]);

      Old_DocBody(id_i, 2, ''); // переход на новую базу документов
   {   if dmIs.dbDOC.Connected = false then
        dmIs.dbDOC.Connected := true;
      Store_Doc(2, ID_I, FName, dmIS.upBody2, nil)     }

    end;
  end;
  qRDoc.close;
  qRDoc.Open;
end;

procedure TfmCliOrds.SpeedButton16Click(Sender: TObject);
begin
  if not qEstReqD_FIX.IsNull then
  begin
    showmessage('Завка  утверждена!!! Удаление невозможно');
    exit;
  end;
  if MsgQuestion('Вы действительно хотите удалить документ из заявки?',
    'Удаление документа') = id_yes then
  begin
    with qINs, qINs.SQL do
    begin
      close;
      clear;
      add('update request_docs set d_reject = current_date, id_reject = :id');
      add('where (id_req_doc = :id_req_doc)');
      parambyname('id_req_doc').AsInteger := qRDocID_REQ_DOC.AsInteger;
      parambyname('id').AsInteger := SysVars.RegTN;
      ExecSQL;
      Transaction.CommitRetaining;
      qRDoc.close;
      qRDoc.Open;
    end;
  end;
end;

procedure TfmCliOrds.DBGridEh2DblClick(Sender: TObject);
begin
  if qEstReqID_DOC.IsNull then
    exit;
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qRDocID_DOC.AsInteger, 0, ''); // переход на новую базу документов
  //fmAll.StoreDoc_r(qRDocID_DOC.Value);
  // dmIS.dbDOC.Connected := False;
end;

procedure TfmCliOrds.SpeedButton17Click(Sender: TObject);
begin
  if not dmIS.qEstReqD_FIX.IsNull then
  begin
    showmessage('Заявка  утверждена!!! Восстановление документа невозможно');
    exit;
  end;
  if MsgQuestion('Вы действительно хотите документ заявки?',
    'Восстановление документа') = id_yes then
  begin
    with qINs, qINs.SQL do
    begin
      close;
      clear;
      add('update request_docs set d_reject = null, id_reject = null');
      add('where (id_req_doc = :id_req_doc)');
      parambyname('id_req_doc').AsInteger := qRDocID_REQ_DOC.AsInteger;

      ExecSQL;
      Transaction.CommitRetaining;
      qRDoc.close;
      qRDoc.Open;
    end;
  end;
end;

procedure TfmCliOrds.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qRDocID_REQ_DOC.AsInteger = 0 then
    Afont.style := [fsbold];
  if not qRDocD_REJECT.IsNull then
    AFont.Color := clGray;
end;

procedure TfmCliOrds.qRDocBeforeOpen(DataSet: TDataSet);

begin

  with qrDoc, qRDoc.sql do
  begin
    close;
    clear;
    add('select cast (0 as integer) id_req_doc,');
    add('rr.id_request, cast (d.d_fix as date) d_edit,');
    add('d.name, pp.fio, rr.id_doc, null d_reject, null id_reject ');
    add('from project_docs d');
    add('join estimate_requests rr on rr.id_doc = d.id_draft ');
    add('left join personnel pp on pp.id_p = d.id_fix ');
    add('where rr.id_request =:id_request ');
    add(' union');
    add('select r.id_req_doc, ');
    add(' r.id_req, r.d_edit,');
    add('r.name, p.fio, r.id_doc, r.d_reject, r.id_reject ');
    add('from request_docs r ');
    add('left join personnel p on p.id_p = r.id_edit ');
    add(' where r.id_req = :id_request ');
    if cbDEl.Checked = false then
      add(' and r.d_reject is null  ');
  end;
end;

procedure TfmCliOrds.ToolButton34Click(Sender: TObject);
begin
  {showmessage('В разработке!');
  exit; }
  {
  If qClients.IsEmpty Then exit;
  if qPrj.IsEmpty Then
  begin
   ShowMessage('Нет проекта. Создать заказ невозможно....');
   exit;
  end;
  if qDoc.IsEmpty then
  begin
   ShowMessage('Список документов пуст. Создать заказ невозможно....');
   exit;
  end;

    If qDOCfILL.IsNull Then begin
   MsgInformation('Документ не утвержден','Проверка статуса документа');
   exit;
  end;

  Screen.Cursor := crHourGlass;
  fmMain.NF_KOrder := fmMain.NF_KOrder + 1;
  if fmMain.NF_KOrder > 7 then
  begin
   ShowMessage('Вы открыли больше 7 форм в рамках Формы "Заказы"....');
   fmMain.NF_KOrder := fmMain.NF_KOrder - 1;
   exit;
  end;

  Application.CreateForm(TfmKOrder,f_KOrder[fmMain.NF_KOrder]);
  f_KOrder[fmMain.NF_KOrder].ind_KOrder := fmMain.NF_KOrder;
  //If not Assigned(fmKOrder) Then  Application.CreateForm(TfmKOrder, fmKOrder);
  with f_KOrder[fmMain.NF_KOrder] do begin
   Kop := 1;
   Edit_Ord := 1;//расчёт курса
   ID_ORDER := -1;
   ID_AGENT := qClientsID_ITEM.AsInteger;
   //ID_DOC   := qDOCID_DRAFT.AsInteger;
   ID_DOC   := qDOCID_PROJECT_DOC.AsInteger;
   qOrdParam.Close;
   bbEstimate.Visible := True;
   ind_CliOrd := ind_form ;
   if ind_form_KOrder > 5 then
   begin
    ShowMessage('Вы открыли больше 5 форм в рамках Формы "Заказы"....');
    ind_form_KOrder := ind_form_KOrder - 1;
   end;
  Screen.Cursor := crDefault;
   Show; //ShowModal;
  end;   }
end;

procedure TfmCliOrds.tb_3Click(Sender: TObject);
var
  isstr: variant;
begin

  if qDOC.IsEmpty then
    exit;
  if qDOC.State in [dsInsert, dsEdit] then
    qDOC.Post;

  isstr := qDOC_TYPE.Lookup('ID_PROJ_DOC_TYPE', qDOCDOC_TYPE.AsInteger,
    'IS_STRUCTURED');
  if (isstr = NULL) then
    exit;
  if not Assigned(fmDOCS) then
    Application.CreateForm(TfmDOCS, fmDOCS);
  fmDOCS.qDOC.Close;
  fmDOCS.qDOC.ParamByName('pr1').AsInteger := qPrjID_PROJECT.AsInteger;
  fmDOCS.qDOC.open;
  fmDocs.qDoc.Locate('id_project_doc', qDOCID_PROJECT_DOC.AsInteger, []);

  fmDOCS.qPrj.Close;
  fmDOCS.qPrj.ParamByName('id').AsInteger := qPrjID_PROJECT.AsInteger;
  fmDOCS.qPrj.open;
  fmDOCS.Caption := 'Разделы документа - ' + qDOCNAME.AsString;
  fmDOCS.ShowModal;
end;

procedure TfmCliOrds.tb_4Click(Sender: TObject);
begin
  if fmMain.S19 <> 1 then
  begin
  {  if dmIS.dbDOC.Connected = false then
      dmIS.dbDOC.Connected := true;    }
    if not Assigned(fmRep) then
      Application.CreateForm(TfmRep, fmRep);

    fmRep.PrintMainDoc(qDOCID_PROJECT_DOC.AsInteger);
    exit;
  end;
end;

procedure TfmCliOrds.qPDocCalcFields(DataSet: TDataSet);
begin
  case qPDOCSTATUS.AsInteger of
    0: qPDOCnTP.AsString := '';
    1: qPDOCnTP.AsString := 'Новый';
    2: qPDOCnTP.AsString := 'В утверждении';
    3: qPDOCnTP.AsString := 'Утвержден';
    4: qPDOCnTP.AsString := 'Отклонен';
  end;
end;

procedure TfmCliOrds.dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Server_now(dmIS.qIM) > qDogovorDOG_DATE_OUT.AsDateTime)
    and (not qDogovorDOG_DATE_OUT.isnull) then
    Background := clMoneyGreen;
end;

procedure TfmCliOrds.qProjAfterScroll(DataSet: TDataSet);
begin
  //OpenOrds;
end;

procedure TfmCliOrds.qOperBeforeOpen(DataSet: TDataSet);
begin
  with qOper, qOper.sql do
  begin
    close;
    clear;
    add('select s.id_spos, s.id_estimate, s.id_obj, o.name,');
    add('u.name uname, s.obj_kind, coalesce(s.amount,0) amount,');
    add('coalesce(s.total,0)/coalesce(s.amount,1) price,');
    add('(select nds_val from get_nds_sum('
      + ' (coalesce(s.total,0)/coalesce(s.amount,1)),1)) price_bez_nds,');
    add('coalesce(s.total,0) total,');
    add('(select nds_val from get_nds_sum(coalesce(s.total,0),1))'
      + ' total_bez_nds,');
    add('coalesce(s.amount_time,0) amount_time,');
    add('o.cost,');
    add('(select nds_val from get_nds_sum(o.cost,1)) cost_bez_nds,');
    add('o.cost0,');
    add('(select nds_val from get_nds_sum(o.cost0,1)) cost0_bez_nds');
    add('from est_sumpos s');
    add('join operations o on o.id_operation = s.id_obj');
    add('join units u on u.id_unit = s.id_unit');
    add('join estimates e on e.id_estimate = s.id_estimate');
    add('where s.id_estimate = :id_estimate and s.obj_type = 2');
    add('and coalesce(s.amount,0) > 0');
    add('and e.d_confirm is not null');
    add('order by o.name');
    { end
     else
     begin
       add('select s.id_spos, s.id_estimate, s.id_obj, o.name,');
       add('u.name uname, s.obj_kind, coalesce(s.amount,0) amount,');
       add('coalesce(s.total,0)/coalesce(s.amount,1) price,');
       add('(select nds_val from get_nds_sum('
       + ' (coalesce(s.total,0)/coalesce(s.amount,1)),1)) price_bez_nds,');
       add('coalesce(s.total,0) total,');
       add('(select nds_val from get_nds_sum(coalesce(s.total,0),1))'
        +' total_bez_nds,');
       add('coalesce(s.amount_time,0) amount_time,');
       add('o.cost,');
       add('(select nds_val from get_nds_sum(o.cost,1)) cost_bez_nds,');
       add('o.cost0');
       add('(select nds_val from get_nds_sum(o.cost0,1)) cost0_bez_nds,');
       add('from est_sumpos s');
       add('join operations o on o.id_operation = s.id_obj');
       add('join units u on u.id_unit = s.id_unit');
       add('join estimates e on e.id_estimate = s.id_estimate');
       add('where s.id_estimate = :id_estimate and s.obj_type = 2');
       add('and coalesce(s.amount,0) > 0');
       add('and e.d_confirm is not null');
       add('order by o.name');
     end};
  end;
end;

procedure TfmCliOrds.cbUsesClick(Sender: TObject);
begin
  OpenOrds;
end;

procedure TfmCliOrds.cbAllClick(Sender: TObject);
begin
  OpenOrds;
end;

procedure TfmCliOrds.N6Click(Sender: TObject);
begin
  NewOrd(ORD_KIND_IND, -1);
end;

procedure TfmCliOrds.N7Click(Sender: TObject);
begin
 NewOrd(ORD_KIND_PROD, -1);
end;

procedure TfmCliOrds.N8Click(Sender: TObject);
begin
  NewOrd(ORD_KIND_IND, qDOCID_PROJECT_DOC.AsInteger);

end;

procedure TfmCliOrds.N9Click(Sender: TObject);
begin
  NewOrd(ORD_KIND_PROD, qDOCID_PROJECT_DOC.AsInteger);
end;

procedure TfmCliOrds.N10Click(Sender: TObject);
begin
  NewOrdReq(ORD_KIND_IND);
end;

procedure TfmCliOrds.N11Click(Sender: TObject);
begin
  NewOrdReq(ORD_KIND_PROD);
end;

procedure TfmCliOrds.pcAllChange(Sender: TObject);
var
  id_proj, id_man: Integer;
begin
  if (pcAll.ActivePage = tschain) then
  begin
    with qMAn do
    begin
      if Active then
        id_man := qManagerID_P.AsInteger;
      Close;
      Open;
      Locate('id_p', id_man, []);
    end;
    // t2.Enabled := true;
    { id_proj := qPrjID_PROJECT.AsInteger;
     OpenCli;
     OpenProject_S;
     qPrj.Locate('id_project', id_proj, []);  }
    Open_CH;
  end;
  if pcAll.ActivePage = tsAgent then
  begin
    qPrj.Locate('id_project', id_proj, []);
  end;
    with qCust do
    begin
     Close;
     Open;
    end;     
  if pcAll.ActivePage = tsProd then
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
end;

procedure TfmCliOrds.dbTrChange(Sender: TObject; Node: TTreeNode);
begin
  qSellOrd.close;
  qSellOrd.ParamByName('id_product').AsInteger := dbTR.GetId;
  qSellOrd.Open;
  qprodOrd.close;
  qProdOrd.ParamByName('id_product').AsInteger := dbTR.GetId;
  qProdOrd.Open;
end;

procedure TfmCliOrds.FindInTree_Det(ItemID: integer);
var
  i: integer;
begin
  dbtr.Items.BeginUpdate;
  for i := 0 to dbtr.Items.Count - 1 do
    if Integer(dbtr.Items[i].Data) = ItemId then
    begin
      dbtr.Selected := dbtr.Items[i];
      break;

    end;
  dbtr.Items.EndUpdate;
  dbtr.Selected.MakeVisible;
end;

procedure TfmCliOrds.SpeedButton20Click(Sender: TObject);
begin
  if not qAgent.Active then
    qAgent.Open;
  if not qProj.Active then
    qProj.Open;
  if not qMen.Active then
    qMen.Open;
  qMen.Locate('id_p', SysVars.RegTN, []);
  lcbMen.KeyValue := SysVars.RegTN;

  if not qPDoc.Active then
    qpDoc.Open;
  if not qOrd_Type.Active then
    qOrd_Type.open;
  //lcbAg.KeyValue   := qClientsID_ITEM.AsInteger;
  //lcbProj.KeyValue := qOrdersID_PROJECT.AsInteger;
  //lcbMen.KeyValue  := qOrdersID_FIX.AsInteger;
  //qOrd.Open;
  //if ysl = 1 then lcbOrder.KeyValue := qOrdersID_ORDER.AsInteger;
  //cbDoc.Enabled := false;
  ins_ord := 4;
  pnOrder.Show;
  gbProj.Hide;

end;

procedure TfmCliOrds.edFndProdKeyPress(Sender: TObject; var Key: Char);
var
  s1, s2, s: string;
begin
  if key = #13 then
  begin
    s1 := edFndProd.Text[1];
    s1 := edFndProd.Text;
    Delete(S2, 1, 1);
    if (s1 <> '!') or (s1 <> '%') or (s1 <> '*') then
    begin
      ShowMessage('Неверный префикс для поиска');
    end;

    if (s1 = '!') or (s1 = '*') then
    begin
      try
        s := IntToStr(StrToInt(s2));
      except
        ShowMessage('Вы должны ввести число после префикса!');
        exit;
      end;
    end;

    if s1 = '!' then //по коду заказа
    begin
      with qIns, qIns.sql do
      begin
        close;
        clear;
        add('select id_product from project_ords where id_order = :id_order');
        add('and ord_kind in (1,2)');
        parambyname('id_order').AsString := s2;
        open;
        if not fieldbyname('id_product').IsNull then
        begin
          FindInTree_Det(fieldbyname('id_product').AsInteger);
        end
        else
        begin
          Showmessage('Ничего не найдено...');
          exit;
        end;
      end;
    end;

    if s1 = '*' then //по коду изделия
    begin
      FindInTree_Det(strtoint(s2));
    end;

    if s1 = '%' then //по наименованию изделия
    begin

    end;
  end;
end;

procedure TfmCliOrds.MenuItem1Click(Sender: TObject);
begin
  if qDOC.IsEmpty then
    exit;
  if qDOCiSSTR.AsInteger > 0 then
  begin
    BDOC := qDOCID_PROJECT_DOC.AsInteger;
    MenuItem2.Visible := True;
  end;
end;

procedure TfmCliOrds.MenuItem2Click(Sender: TObject);
begin
  if BDOC <= 0 then
    exit;
  if qDOC.IsEmpty then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('EXECUTE PROCEDURE REPLICATE_PROJ_DOC(:s1,:d1)');
    ParamByName('s1').AsInteger := BDOC;
    ParamByName('d1').AsInteger := qDOCID_PROJECT_DOC.AsInteger;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmCliOrds.MenuItem3Click(Sender: TObject);
begin
  BDOC := -1;
  MenuItem2.Visible := False;
end;

procedure TfmCliOrds.ToolButton40Click(Sender: TObject);
begin
  Open_CH;
end;

procedure TfmCliOrds.qNewCHBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfmCliOrds.tbChClick(Sender: TObject);
begin
  {*******************************************************************************
                        ПРОВЕРКА НА ЗАКРЫТЫЕ ПРОЕКТЫ
  *******************************************************************************}
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects where id_project = :id_proj');
    ParamByName('id_proj').AsInteger := qPrjID_PROJECT.AsInteger;
    Open;
    FetchAll;
    if not dmIS.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Данный проект является закрытым', 'Внимание');
      Exit;
    end;
  end;
  //******************************************************************************
  if not Assigned(fmParamCH) then
    Application.CreateForm(TfmParamCH, fmParamCH);
  begin
    fmParamCH.tsObject_Info.TabVisible := true;
    fmParamCH.pc1.ActivePage := fmParamCH.tsObject_Info;
    fmParamCH.ed_type.Clear;
    edit_obj := 0; // если нет, то создается объект.
    fmParamCH.bNew.Caption := 'Создать';
    fmParamCH.Showmodal;
  end;
end;

procedure TfmCliOrds.tbSelClick(Sender: TObject);
begin
  Open_Oper;
end;

procedure TfmCliOrds.tbNewOClick(Sender: TObject);
var
  s_traff, id_mp, a: Integer;
  formula: string;
begin
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qNewCHID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Exit;
    end;
  end;
  //********************************
  if qNewCHID_PROJ_TYPE.IsNull then
  begin
    MsgError('Не указан тип изделия', 'Внимание');
    exit;
  end;
  // -- Запись в сетках объектов и операций --------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  //------------------------------------------------------------------------------
  // -- Проверка на наличие в объекте заполненного поля "Тип изделия" ------------
  if qNewCHID_PROJ_TYPE.IsNull then
  begin
    MsgError('Необходимо указать тип изделия у объекта', 'Проверка');
    Exit;
  end;
  //------------------------------------------------------------------------------
  //-- Проверка на выбронную операцию --------------------------------------------
  if (Length(trim(lcbOper.Text)) = 0) then
  begin
    MsgError('Укажите тип операции которую Вы будете создавать', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Запрос на расчет времени для операции по типу операции и участку ---------
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select o.calc_time from operations o where o.id_operation = :id_operation');
    Add('and o.id_area = :id_area');
    ParamByName('id_operation').AsInteger := lcbOper.KeyValue;
    ParamByName('id_area').AsInteger := qOperCHID_AREA.AsInteger;
    Open;
    formula := dmIS.qIN.fieldbyname('calc_time').AsString;
  end;
  //------------------------------------------------------------------------------
  // -- Проверка на заполнение обзательных реквизитов объекта --------------------
  with dmIs.qIN, dmIs.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select s.id_main_param from proj_chain_params s');
    Add('join proj_chains cs on cs.id_proj_chain = s.id_chain');
    Add('join main_params m on m.id_main_param = s.id_main_param');
    Add('left join proj_types_params t on t.id_main_param = s.id_main_param');
    Add('and t.id_proj_type = cs.id_proj_type');
    Add('where s.id_chain = :id_chain and t.is_not_null = 1 and');
    Add('(case when m.p_type = 2 then substring(s.strvalue from 1 for 64)');
    Add('when m.p_type = 1 then (select q.name from main_params_sets q');
    Add('where q.id_mp_set = s.id_mp_set)');
    Add('else cast(s.amount as numeric (16,2)) end) is null');
    ParamByName('id_chain').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
    Open;
  end;
  if (not dmIs.qIN.IsEmpty) then
  begin
    dmIS.qIN.Close;
    MsgError('Не все обязательные реквизиты заполнены', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличии утвержденных операций --------------------------------
  if ((qWorkCHSTATUS.AsInteger < 9) and (not qWorkCH.IsEmpty)) then
  begin
    MsgError('Предыдущая операция не была утверждена', 'Внимание');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  //- Проверка наличия выставленной даты отгрузки заказа и даты завершения объекта
  if ((qNewCHD_PACK.IsNull) or (qNewCHD_READY.IsNull)) then
  begin
    MsgError('Не выставлена дата отгрузки или дата фактического завершения объекта'
      , 'Проверка');
    Exit;
  end;

  // -----------------------------------------------------------------------------
  // -- Запрос на добавление операции без копирования реквизитов -----------------
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select id_mp_sets, id_gen from insert_chain_traff(:id_code, 0, :id_operation,');
    Add(':id_area, :id_creator, :id_project, :name, :d_ready, :d_pack, :descr,');
    Add(':id_obj, 1, :id_proj_type, 0, :work_time)');
    ParamByName('id_code').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
    ParamByName('id_operation').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qOperCHID_OPERATION.AsInteger;
    ParamByName('id_area').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qOperCHID_AREA.AsInteger;
    ParamByName('id_creator').AsInteger := SysVars.RegTN;
    ParamByName('id_proj_type').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_TYPE.AsInteger;
    ParamByName('id_project').Clear;
    ParamByName('name').AsString :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHNAME.AsString;
    ParamByName('d_ready').Clear;
    ParamByName('d_pack').Clear;
    ParamByName('descr').Clear;
    ParamByName('id_obj').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
    ParamByName('work_time').AsFloat := ReadFormula(formula,
      qNewCHID_PROJ_CHAIN.AsString);
    try
      Open;
      s_traff := FieldByName('id_gen').AsInteger;
      if Transaction.Active then
        Transaction.Commit;
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select id_mp_set from proj_types_params where id_operation');
        Add('is null and id_main_param = 32 and id_proj_type = '
          + inttostr(qNewCHID_PROJ_TYPE.AsInteger));
        Open;
        id_mp := Fieldbyname('id_mp_set').AsInteger;
        Close;
        Clear;
        Add('select name from main_params_sets where id_mp_set = ' +
          IntToStr(id_mp));
        Open;
        formula := Fieldbyname('name').AsString;
        close;
        Clear;
        Add('select id_mp_set from main_params_sets where id_main_param = 33');
        Add('and name = :name');
        ParamByName('name').AsString := formula;
        Open;
        id_mp := Fieldbyname('id_mp_set').AsInteger;
      end;
      Close;
      Clear;
      Add('update proj_chain_traff_params set id_mp_set = :id_mp_set');
      Add('where id_main_param = 33 and id_chain_traff = :id_traff');
      ParamByName('id_traff').AsInteger := s_traff;
      ParamByName('id_mp_set').AsInteger := id_mp;
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Oper;
      qWorkCH.locate('id_chain_traff', s_traff, []);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  // -----------------------------------------------------------------------------
  CreateXML2(dmIS.dbIS, '', fmMAin.SINPATH, pb1, byte(1),
    qNewCHID_PROJ_CHAIN.AsInteger);
end;

procedure TfmCliOrds.dbgOperGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if qWorkCHSTATUS.AsInteger = 10 then
    Background := clMoneyGreen; // операция утверждена менеджером
  if qWorkCHSTATUS.AsInteger in [21, 20, 30, 40, 41, 60, 61, 62, 70, 80] then
    Background := cl3DLight; // если все оставшиеся операции
  if qWorkCHSTATUS.AsInteger = 23 then
    Background := clYellow; // если операция отменена диспетчером
  if qWorkCHSTATUS.AsInteger = 79 then
    Background := clSilver; // если операция удалена
  if (qWorkCHSTATUS.AsInteger in [40, 41, 70, 42]) then
    Background := clSkyBlue; // если операция выполнена
end;

procedure TfmCliOrds.dbgNewCHSortMarkingChanged(Sender: TObject);
begin
  Open_CH;
end;

procedure TfmCliOrds.dbgOperSortMarkingChanged(Sender: TObject);
begin
  Open_Oper;
end;

procedure TfmCliOrds.tbDelClick(Sender: TObject);
var
  S_TRAFF: Integer;
begin
  // -- Проверка на наличии операций в списке ------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  if (fmMain.UF0 = false) then
  begin
    // -- Проверка на принадлежность операции пользователю -------------------------
    if (qWorkCHID_FIX.AsInteger <> SysVars.RegTN) then
    begin
      MsgError('Вы не являетесь создателем операции', 'Проверка');
      Exit;
    end;
    // -----------------------------------------------------------------------------
  end;
  // -- Проверка на утверждение операции перед удалением -------------------------
  if (not qWorkCHSTATUS.IsNull) then
  begin
    MsgError('Операция утверждена менеджером. Удаление невозможно.',
      'Проверка перед удалением');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Сообщение перед удаление (операции остаются в базе)-----------------------
  if MsgQuestion('Вы действительно хотите удалить операцию? ',
    'Удаление') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('insert into proj_chain_states (id_chain_state, id_chain_traff,');
      Add(' id_chain_event, d_fact, id_fact) values (gen_id(obj_id,1),');
      Add(':id_chain_traff, 100, current_timestamp, :id_fact)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('id_fact').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_Oper;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end
  else
    Exit;
  // -----------------------------------------------------------------------------
  CreateXML2(dmIS.dbIS, '', fmMAin.SINPATH, pb1, byte(1),
    qNewCHID_PROJ_CHAIN.AsInteger);
end;

procedure TfmCliOrds.ToolButton51Click(Sender: TObject);
begin
  // -- Запись объекта в сетке ---------------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличии операций в списке ------------------------------------
  if qNewCH.IsEmpty then
  begin
    MsgError('Список объектов пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на принадлежность объекта пользователю --------------------------
  if (qNewCHID_OPEN.AsInteger <> SysVars.RegTN) then
  begin
    MsgError('Вы не являетесь создателем объекта', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на завершенность объекта ----------------------------------------
  if (not qNewCHD_CLOSE.IsNull) then
  begin
    MsgError('Объект завершен. Удаление невозможно.', 'Удаление объекта');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на привязанные операции -----------------------------------------
  if (not qWorkCH.IsEmpty) then
  begin
    MsgError('Удалите операции принадлежащие к данному объекту', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Удаление объекта (каскадное удаление триггеры) ---------------------------
  if MsgQuestion(SysVars.NReg +
    ' ,Дальнейшее изменение будет невозможным. Вы действительно '
    + 'хотите удалить объект?',
    'Удаление объекта') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('delete from proj_chains');
      Add('where (id_proj_chain = :id_proj_chain)');
      ParamByName('id_proj_chain').AsInteger := qNewCHID_PROJ_CHAIN.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_CH;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end
  else
    Exit;
  // -----------------------------------------------------------------------------
end;

procedure TfmCliOrds.tbd1Click(Sender: TObject);
var
  idd, i: integer;
begin
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qNewCHID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Exit;
    end;
  end;
  //********************************
 // -- запись операции ----------------------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  //------------------------------------------------------------------------------
  if qWorkCH.IsEmpty then
    Exit;
  //-- проверка на статус --------------------------------------------------------
  if not (qWorkCHSTATUS.AsInteger in [40, 41, 70, 80, 100]) then
  begin //1
    if od3.Execute then
    begin //2
      for i := 0 to od3.Files.Count - 1 do
      begin //3
        {  if TestFile(od3.Files.Strings[i],dmIs.qIM) = 1 then
          begin  //7  }
        idd := DocBody(0, 2, od3.Files.Strings[i]);
        if (idd > 0) then
        begin //6
          with dmIS.qIM, dmIS.qIM.SQL do
          begin //4
            Close;
            Clear;
            Add('insert into proj_chain_docs (id_chain_traff, id_doc, status, id_create,');
            Add('d_create) values (:id_chain_traff, :id_doc, 1, :id_create, current_timestamp)');
            ParamByName('id_create').AsInteger := SysVars.RegTN;
            ParamByName('id_doc').AsInteger := idd;
            ParamByName('id_chain_traff').AsInteger :=
              qWorkCHID_CHAIN_TRAFF.AsInteger;
            try //5
              ExecSQL;
              if Transaction.Active then
                Transaction.Commit;
            except
              raise;
              if Transaction.Active then
                Transaction.Rollback;
            end; //5
          end; //4
        end; //6
        {end else //7
        AddDOc(qWorkCHID_CHAIN_TRAFF.AsInteger,od3.Files.Strings[i],
        dmIS.qIM, SysVars.RegTN,2, 'Комплект документов', qDocCHID_INT_STAT.AsInteger);  }
      end; //3
    end; //2
  end; //1
  Open_DocCH; //MARIN
  //------------------------------------------------------------------------------
end;

procedure TfmCliOrds.ToolButton67Click(Sender: TObject);
var
  i: integer;
begin
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qNewCHID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Exit;
    end;
  end;
  //********************************
 // -- записать операцию --------------------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  //------------------------------------------------------------------------------
  //-- проверка на наличие пустого списка ----------------------------------------
  if (qDocCH.IsEmpty or qWorkCH.IsEmpty) then
    Exit;
  //------------------------------------------------------------------------------
  if (fmMain.UF0 = false) then
  begin
    //--- проверка на принадлежность документа пользователю ------------------------
    if (qWorkCHID_FIX.AsInteger <> SysVars.RegTN) then
    begin
      MsgError('Вы не являетесь создателем операции', 'Проверка');
      Exit;
    end;
    //------------------------------------------------------------------------------
  end;
  //-- проверка на статус --------------------------------------------------------
  if not (qWorkCHSTATUS.AsInteger in [40, 41, 70, 80, 100]) then
  begin
    if od3.Execute then
    begin
      if qDocCHDOC_PATH.IsNull then
      begin
        DocBody(qDocCHID_DOC.AsInteger, 2, od3.FileName);
        with dmIs.qIM, dmIs.qIM.SQL do
        begin
          Close;
          Clear;
          Add('update proj_chain_docs set status = 2, id_edit = :id_edit,');
          Add('d_edit = current_timestamp where (id_chain_traff = :id_chain_traff)');
          Add('and (id_doc = :id_doc)');
          ParamByName('id_edit').AsInteger := SysVars.RegTN;
          ParamByName('id_chain_traff').AsInteger :=
            qWorkCHID_CHAIN_TRAFF.AsInteger;
          ParamByName('id_doc').AsInteger := qDocCHID_DOC.AsInteger;
          try
            ExecSQL;
            if Transaction.Active then
              Transaction.Commit;
            Open_DocCH;
          except
            if Transaction.Active then
              Transaction.Rollback;
          end;
        end;
      end
      else
      begin
        for i := 0 to od3.Files.Count - 1 do
        begin
          CopyFile(pansichar(od3.Files.Strings[i]),
            pansichar(qDocCHDOC_PATH.asstring +
            LeftStr(ExtractFileName(od3.Files.Strings[i]), 64)), true);
        end;
      end;
    end;
  end;

end;

procedure TfmCliOrds.dbgDocCHDblClick(Sender: TObject);
begin
  if qDocCH.IsEmpty then
    Exit;
  if qDocCHDOC_PATH.IsNull then
    Old_DocBody(qDocCHID_DOC.AsInteger, 0, '')
  else
  begin
   // if ((qWorkCHSTATUS.IsNull) or (qWorkCHSTATUS.AsInteger in [23, 60])) then
   if ((qWorkCHSTATUS.IsNull) or (qWorkCHSTATUS.AsInteger = 23) or (qWorkCHSTATUS.AsInteger = 60)) then
   begin
     fmAll.ExploreDir(qDocCHDOC_PATH.AsString, qDocCHID_INT_STAT.AsInteger, 0,
     qWorkCHID_CHAIN.AsInteger, dmIS.qIM, qWorkCHID_CHAIN_TRAFF.AsInteger, ind_form);
   end else
   begin
   // if ((qWorkCHSTATUS.AsInteger = 23) or (qWorkCHSTATUS.AsInteger = 60)) then
      fmAll.ExploreDir(qDocCHDOC_PATH.AsString, qDocCHID_INT_STAT.AsInteger, 1,
      qWorkCHID_CHAIN.AsInteger, dmIS.qIM, qWorkCHID_CHAIN_TRAFF.AsInteger, ind_form);
    end;
    if Assigned(fmExplore) then
    begin
      fmExplore.Form_i := fmCliOrds;
      fmExplore.Page_i := pcAll;
      fmExplore.Tab_i  := tsAgent;
      fmExplore.Page_b := pcProj;
      fmExplore.Tab_b  := tsProj3;
    end;
  end;
end;

procedure TfmCliOrds.dbgDocCHSortMarkingChanged(Sender: TObject);
begin
  Open_DocCH;
end;

procedure TfmCliOrds.dbgNewCHKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qNewCH.State in [dsEdit, dsInsert] then
      qNewCH.Post;
end;

procedure TfmCliOrds.bPostClick(Sender: TObject);
var
  s_time, s_story_w: string;
begin
  // -- Запись в сетке объекта и операции ----------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличии операций в списке ------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на принадлежность операции пользователю -------------------------
  if qWorkCHID_FIX.AsInteger <> SysVars.RegTN then
  begin
    MsgError('Вы не являетесь создателем операции', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -----------------------------------------------------------------------------
  s_time := DateTimeToStr(Server_now(dmIS.qIM));
  s_story_w := qWorkCHREM.AsString;
  // -- Добавление сообщения ва операцию -----------------------------------------
  with dmIs.qIM, dmIs.qIM.SQL do
  begin
    Close;
    Clear;
    {   Add('insert into proj_chain_traff_messages (id_message, id_chain_traff,');
       Add('id_fix, d_fix, message_body) values (gen_id(obj_id, 1),');
       Add(':id_chain_traff, :id_fix, current_timestamp, :message_body)');
       ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
       ParamByName('id_fix').AsInteger := SysVars.RegTN;
       ParamByName('message_body').AsString := mNew.text;       }
     {  Add('update proj_chain_traff f set f.id_edit = :id_edit,');
       Add('f.d_edit = current_timestamp, f.rem = :rem');
       Add('where f.id_chain_traff = :id_chain_traff');
       ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
       ParamByName('id_edit').AsInteger := SysVars.RegTN;
       ParamByName('rem').AsString :=  s_story_w + #13 + mNew.Text + #13
       + '\\ ' + SysVars.FReg + ' \\ ' + s_time + #13;    }
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Oper;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  // -----------------------------------------------------------------------------
end;

procedure TfmCliOrds.dbgprojSortMarkingChanged(Sender: TObject);
begin
  Open_Param;
end;

procedure TfmCliOrds.tb4Click(Sender: TObject);
begin
  // -- Запись объекта в сетке ---------------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличии операций в списке ------------------------------------
  if qNewCH.IsEmpty then
  begin
    MsgError('Список объектов пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на принадлежность объекта пользователю --------------------------
  if qNewCHID_OPEN.AsInteger <> SysVars.RegTN then
  begin
    MsgError('Вы не являетесь создателем объекта', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на завершенность объекта ----------------------------------------
  if (not qNewCHD_CLOSE.IsNull) then
  begin
    MsgError('Объект завершен. Удаление невозможно.', 'Удаление объекта');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличие не завершенных операций ------------------------------
  if (qWorkCHSTATUS.AsVariant < 80) then
  begin
    MsgError('Не все операции выполнены', 'Проверка перед завершением');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Завершить объект ---------------------------------------------------------
  if MsgQuestion(SysVars.NReg +
    ' ,Дальнейшее изменение будет невозможным.Вы действительно хотите завершить '
    + 'объект?', 'Проверка перед завершением') = id_yes then
    with dmIs.qIM, dmIs.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update proj_chains set d_close = current_timestamp,');
      Add('id_close = :id_close, id_edit = :id_edit');
      Add('where id_proj_chain = :id_proj_chain');
      ParamByName('id_close').AsInteger := SysVars.RegTN;
      ParamByName('id_edit').AsInteger := SysVars.RegTN;
      ParamByName('id_proj_chain').AsInteger := qNewCHID_PROJ_CHAIN.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_CH;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end
  else
    Exit;
  // -----------------------------------------------------------------------------
end;

procedure TfmCliOrds.dbgNewCHGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not qNewCHD_CLOSE.IsNull then
    Background := clMoneyGreen; // если объект отправлен в архив
end;

procedure TfmCliOrds.dbgstateSortMarkingChanged(Sender: TObject);
begin
  Open_State;
end;

procedure TfmCliOrds.lcbChainCloseUp(Sender: TObject; Accept: Boolean);
begin
  Open_CH;
end;

procedure TfmCliOrds.lcbChainKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Open_CH;
end;

procedure TfmCliOrds.dbgOperColumns7UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (qWorkCHSTATUS.IsNull or (not qWorkCHSTATUS.AsInteger in [20, 21, 60]))
    then
  begin
    if StrToDate(text) < DateOf(Server_now(dmIS.qIM)) then
    begin
      Handled := false;
      Exit;
    end;
  end
  else if StrToDate(text) < DateOf(Server_now(dmIS.qIM)) then
  begin
    Handled := not Handled;
    Exit;
  end;
end;

procedure TfmCliOrds.dbgOperColumns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (not qWorkCHSTATUS.IsNull) then
  begin
    Handled := true;
    Exit;
  end;
end;

procedure TfmCliOrds.pc3Change(Sender: TObject);
begin
  if pc3.ActivePage = tsDocCH then
    Open_DocCH;
  if pc3.ActivePage = tsstateCH then
    Open_State;
  if pc3.ActivePage = tsparamCH then
    Open_Param;
  if pc3.ActivePage = tsComplect then
    Open_Complect;
  if pc3.ActivePage = tsParamObj then
    Open_ParamObj;
end;

procedure TfmCliOrds.SpeedButton21Click(Sender: TObject);
var
  s_traff: Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    if qWorkCH.State in [dsEdit, dsInsert] then
      qWorkCH.Post;
    if lcbTempCH.KeyValue = null then
    begin
      MsgError('Не выбран шаблон', 'Внимание');
      Exit;
    end;
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('select id_gen from copy_chain_oper (:id_chain_tmpl,');
      Add(':id_chain_traff, :name, 0, :id_fix, 0, :id_proj_chain)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('name').AsString := qWorkCHNAME.AsString;
      ParamByName('id_proj_chain').AsInteger := qWorkCHID_CHAIN.AsInteger;
      ParamByName('id_chain_tmpl').AsInteger := qTempCHID_CHAIN_TMPL.AsInteger;
      ParamByName('id_fix').AsInteger := SysVars.RegTN;
      try
        Open;
        S_Traff := FieldByName('id_gen').AsInteger;
        if Transaction.Active then
          Transaction.Commit;
        Open_Oper;
        qWorkCH.Locate('id_chain_traff', s_traff, []);
        p5.Hide;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
    // интеграция ----------------------------------------
    CreateXML2(dmIS.dbIS, '', fmMAin.SINPATH, pb1, byte(1),
      qWorkCHID_CHAIN.AsInteger);
    //----------------------------------------------------
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.SpeedButton22Click(Sender: TObject);
begin
  qTempCH.Close;
  p12.Hide;
end;

procedure TfmCliOrds.tb22Click(Sender: TObject);
begin
  p12.Show;
  with qTempCH do
  begin
    Close;
    Open;
  end;
end;

procedure TfmCliOrds.qNewCHBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfmCliOrds.qWorkCHBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfmCliOrds.tb21Click(Sender: TObject);
var
  s_traff, i: Integer;
begin
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qNewCHID_PROJECT.AsInteger;
    Open;
    if not dmis.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Exit;
    end;
  end;
  //********************************
 //-- Запись в сетках объекта и операций ----------------------------------------
  if qNewCH.State in [dsEdit, dsInsert] then
    qNewCH.Post;
  if qWorkCH.State in [dsEdit, dsInsert] then
    qWorkCH.Post;
  //------------------------------------------------------------------------------
  //-- Проверка на наличие операций в списке -------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличие утвержденной операции от которой будет создана новая
  if qWorkCHSTATUS.AsInteger < 10 then
  begin
    MsgError('Предыдущая операция не утверждена', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Копирование операции -----------------------------------------------------
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select id_mp_sets, id_gen from insert_chain_traff(:id_code, 0, :id_operation,');
    Add(':id_area, :id_creator, :id_project, :name, :d_ready, :d_pack, :descr,');
    Add(':id_obj, 1, :id_proj_type, 1, :work_time)');
    ParamByName('id_code').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    ParamByName('id_operation').AsInteger := qWorkCHID_OPERATION.AsInteger;
    ParamByName('id_area').AsInteger := qWorkCHID_AREA.AsInteger;
    ParamByName('id_creator').AsInteger := SysVars.RegTN;
    ParamByName('id_proj_type').AsInteger := qNewCHID_PROJ_TYPE.AsInteger;
    ParamByName('id_project').Clear;
    ParamByName('name').AsString := qNewCHNAME.AsString;
    ParamByName('d_ready').Clear;
    ParamByName('d_pack').Clear;
    ParamByName('descr').Clear;
    ParamByName('id_obj').AsInteger := qNewCHID_PROJ_CHAIN.AsInteger;
    ParamByName('work_time').AsFloat := qWorkCHWORK_TIME.AsFloat;
    try
      Open;
      s_traff := fieldbyname('id_gen').AsInteger;
      if Transaction.Active then
        Transaction.Commit;
      Open_Oper;
      qWorkCH.locate('id_chain_traff', s_traff, []);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  // -----------------------------------------------------------------------------
  CreateXML2(dmIS.dbIS, '', fmMAin.SINPATH, pb1, byte(1),
    qNewCHID_PROJ_CHAIN.AsInteger);
end;

procedure TfmCliOrds.ToolButton70Click(Sender: TObject);
var
  i: integer;
begin
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  try
    if dmIs.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIs.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;

  if qDocCH.IsEmpty then
    Exit;
  sd1.FileName := qDocCHNAME.AsString + qDocCHFILE_EXP.AsString;
  if sd1.Execute then
    DocBody(qDocCHID_DOC.AsInteger, 1, sd1.FileName);
end;

procedure TfmCliOrds.dbgNewCHColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if ((not qNewCHD_CLOSE.IsNull) or (not qWorkCH.IsEmpty)) then
  begin
    Handled := true;
    Exit;
  end;
end;

procedure TfmCliOrds.dbgNewCHColumns9UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (not qNewCHD_CLOSE.IsNull) then
  begin
    Handled := true;
    Exit;
  end;
end;

procedure TfmCliOrds.dbgNewCHColumns8UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (not qNewCHD_CLOSE.IsNull) or (not qWorkCH.IsEmpty) then
  begin
    Handled := true;
    Exit;
  end;
end;

procedure TfmCliOrds.dbgNewCHColumns7UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (not qNewCHD_CLOSE.IsNull) then
  begin
    Handled := true;
    Exit;
  end;
end;

procedure TfmCliOrds.dbgOperColumns5UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (not qWorkCHSTATUS.IsNull) then
  begin
    Handled := true;
    Exit;
  end;
end;

procedure TfmCliOrds.qWorkCHBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfmCliOrds.ToolButton72Click(Sender: TObject);
var
  idd, id_doc: integer;
begin
  ID_DOC := -1;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  if ((qWorkCHSTATUS.AsInteger = 40) and (not qWorkCHCONTROL.IsNull)) then
  begin
    MsgError('Контроль по данной операции не произведен', 'Внимание');
    Exit;
  end;
  with dmIs.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select p.id_doc from proj_chain_docs p');
    Add('join docs d on d.id_doc = p.id_doc');
    Add('where p.status = 4 and d.doc_path is null');
    Add('and p.id_chain_traff = :id_chain_traff');
    ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    Open;
    if dmIS.qIN.IsEmpty then
    begin
      MsgError('Отсутствуют утвержденные документы', 'Проверка');
      Exit;
    end;
    Close;
    Clear;
    Add('select p.id_chain_traff from proj_chain_traff p');
    Add('join oper_params o on o.id_operation = p.id_operation');
    Add('left join main_params m on m.id_main_param = o.id_main_param');
    Add('where p.id_chain_traff = :id_traff and m.id_main_param = 30');
    ParamByName('id_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    Open;
  end;
  if dmIs.qIN.IsEmpty then
  begin
    MsgError('От данной операции невозможно создать заявку на расчет сметы'
      , 'Создание заявки');
    Exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select status from estimate_requests where id_chain_traff = ' +
      qWorkCHID_CHAIN_TRAFF.AsString);
    Open;
    if not IsEmpty then
      if ((dmiS.qIN.FieldByName('status').AsInteger < 50) or
        (dmiS.qIN.FieldByName('status').IsNull)) then
      begin
        MsgError('У данной операции есть заявка', 'Внимание');
        Exit;
      end;
  end;
  if not (qWorkCHSTATUS.AsInteger in [40, 41, 70, 42]) then
  begin
    MsgError('Операция еще не выполнена', 'Проверка');
    Exit;
  end;
  if qWorkCHSTATUS.AsInteger = 42 then
  begin
  end;
  if MsgQuestion('Вы действительно хотите создать заявку на расчет сметы? ',
    'Создание заявки') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Screen.Cursor := crHourGlass;
      Close;
      Clear;
      Add('SELECT GEN_ID(OBJ_ID,1) ID FROM ACCESS_LEVELS WHERE ACCESS_KEY = 0');
      Open;
      idd := FieldByName('ID').AsInteger;
      Close;
      Clear;
      Add('INSERT INTO ESTIMATE_REQUESTS (ID_REQUEST, ID_PROJECT, DESCRIPTION,');
      Add('ID_CREATOR, D_CREATE, req_kind, req_type, id_chain_traff) VALUES');
      Add('(:c_req, :proj, :descr, :cr1, CURRENT_TIMESTAMP, 1, 2, :id_chain_traff)');
      ParamByName('c_req').AsInteger := idd;
      ParamByName('proj').AsInteger := qNewCHID_PROJECT.AsInteger;
      ParamByName('descr').AsString := qWorkCHOPERATION.AsString + ' \ '
        + qWorkCHNAME.AsString;
      ParamByName('cr1').AsInteger := SysVars.RegTN;
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        ShowMessage('Заявка на расчет сметы сформирована');
        pcAll.ActivePage := tsAgent;
        pcProj.ActivePage := tsProj3;
        qClients.Locate('name', qNewCHCLIENT.AsString, []);
        qPrj.Locate('id_project', qNewCHID_PROJECT.AsInteger, []);
        OpenEst_Req;
        qEstReq.Locate('id_doc', id_doc, []);
        Screen.Cursor := crDefault;
      except
        if Transaction.Active then
          Transaction.Rollback;
        MsgError('Заявка на расчет сметы не сформирована', 'Ошибка');
        Screen.Cursor := crDefault;
      end;
    end
  else
    Exit;
end;

procedure TfmCliOrds.N12Click(Sender: TObject);
begin
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
    Open;
    if not FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Exit;
    end;
  end;
  //********************************
 // -- Запись сетки объекты и операции ------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличии операций в списке ------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  if (not fmMain.UF0) then
  begin
    // -- Проверка на принадлежность операции пользователю -------------------------
    if (qWorkCHID_FIX.AsInteger <> SysVars.RegTN) then
    begin
      MsgError('Вы не являетесь создателем операции', 'Проверка');
      Exit;
    end;
    // -----------------------------------------------------------------------------
  end;
  // -- Проверка на повторное утверждение ----------------------------------------
  if (qWorkCHSTATUS.AsInteger > 9) then
  begin
    msgError('Операция уже была утверждена', 'Внимание');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на заполнение полей "Дата завершения" и "Наименование операции" -
  if ((qWorkCHD_READY.IsNull) or (qWorkCHNAME.IsNull)) then
  begin
    MsgError('Не указана желаемая дата завершения или наименование операции'
      , 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на заполнение обязательных реквизитов операции ------------------
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select f.id_main_param from proj_chain_traff_params f');
    Add('join proj_chain_traff d on d.id_chain_traff = f.id_chain_traff');
    Add('join proj_chains p on p.id_proj_chain = d.id_chain');
    Add('join main_params m on m.id_main_param = f.id_main_param');
    Add('join proj_types_params t on t.id_proj_type = p.id_proj_type');
    Add('and t.id_main_param = f.id_main_param and t.id_operation = :id_operation');
    Add('where f.id_chain_traff = :id_traff');
    Add('and p.id_proj_type = :proj_type and t.is_not_null = 1 and');
    Add('(case when m.p_type = 2 then substring(f.strvalue from 1 for 64)');
    Add('when m.p_type = 1 then (select q.name from main_params_sets q');
    Add('where q.id_mp_set = f.id_mp_set) else');
    Add('cast(f.amount as numeric (16,2)) end) is null');
    ParamByName('id_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    ParamByName('id_operation').AsInteger := qWorkCHID_OPERATION.AsInteger;
    ParamByName('proj_type').AsInteger := qNewCHID_PROJ_TYPE.AsInteger;
    Open;
    if (not dmIS.qIN.IsEmpty) then
    begin
      MsgError('Не все реквизиты операции заполнены', 'Проверка');
      Exit;
    end;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличие приложенных документов -------------------------------
  // -- в любом случае происходит утверждение ------------------------------------
  if qDocCH.IsEmpty then
  begin
    if MsgQuestion(SysVars.NReg +
      ' ,Вы действительно хотите утвердить операцию без приложенных документов',
      'Утверждение операции') = id_yes then
    begin
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update proj_chain_traff set d_fix = current_timestamp');
        Add('where id_chain_traff = :id_chain_traff');
        ParamByName('id_chain_traff').AsInteger :=
          qWorkCHID_CHAIN_TRAFF.AsInteger;
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Close;
        Clear;
        Add('insert into proj_chain_states (id_chain_state,');
        Add('id_chain_traff, id_chain_event, d_fact, id_fact) values');
        Add('(gen_id(obj_id,1), :id_chain_traff, 10, current_timestamp, :id_fact)');
        ParamByName('id_chain_traff').AsInteger :=
          qWorkCHID_CHAIN_TRAFF.AsInteger;
        ParamByName('id_fact').AsInteger := SysVars.RegTN;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
        Open_Oper;
      end;
    end
    else
      Exit;
  end
  else
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('insert into proj_chain_states (id_chain_state,');
      Add(' id_chain_traff, id_chain_event, d_fact, id_fact) values');
      Add('(gen_id(obj_id,1), :id_chain_traff, 10, current_timestamp, :id_fact)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('id_fact').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
      Open_Oper;
    end;
  // -----------------------------------------------------------------------------
  CreateXML2(dmIS.dbIS, '', fmMain.SINPATH, pb1, byte(1),
    qNewCHID_PROJ_CHAIN.AsInteger);
end;

procedure TfmCliOrds.N13Click(Sender: TObject);
begin
  // -- Запись операций и объектов в сетках --------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличие операций в списке ------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  if (not fmMain.UF0) then
  begin
    // -- Проверка на принадлежность операции пользователю -------------------------
    if (qWorkCHID_FIX.AsInteger <> SysVars.RegTN) then
    begin
      MsgError('Вы не являетесь создателем операции', 'Проверка');
      Exit;
    end;
    // -----------------------------------------------------------------------------
  end;
  // -- Проверка на соотвествующий статус и завершение операции ------------------
  if qWorkCHSTATUS.AsInteger in [40, 41, 70] then
    if MsgQuestion(SysVars.NReg +
      ' , Вы действительно хотите завершить операцию работу?',
      'Проверка') = id_yes then
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('insert into proj_chain_states (id_chain_state, id_chain_traff,');
        Add('id_chain_event, d_fact, id_fact, id_chain)');
        Add('values ( gen_id(chain_traff_id,1), :id_chain_traff, 80,');
        Add('current_timestamp, :id_fact, :id_chain)');
        ParamByName('id_chain_traff').AsInteger :=
          qWorkCHID_CHAIN_TRAFF.AsInteger;
        ParamByName('id_chain').AsInteger := qWorkCHID_CHAIN.AsInteger;
        ParamByName('id_fact').AsInteger := SysVars.RegTN;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          Open_Oper;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
  // -----------------------------------------------------------------------------
end;

procedure TfmCliOrds.N14Click(Sender: TObject);
var
  s_traff: Integer;
begin
 try
  Screen.Cursor := crHourGlass;
  // проверка на закрытый проект ***
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select d_close from projects s where s.id_project = :id_project');
    ParamByName('id_project').AsInteger := qNewCHID_PROJECT.AsInteger;
    Open;
    if not dmis.qIN.FieldByName('d_close').IsNull then
    begin
      MsgError('Проект закрыт', 'Внимание');
      Exit;
    end;
  end;
  //********************************
  s_traff := -1;
  // -- Запись сетки операции и объект -------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличие операций в списке ------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  if ((qWorkCHSTATUS.AsInteger = 40) and (not qWorkCHCONTROL.IsNull)) then
  begin
    MsgError('Контроль по данной операции не произведен', 'Внимание');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select status from estimate_requests where id_chain_traff = ' +
      qWorkCHID_CHAIN_TRAFF.AsString);
    Open;
    if not IsEmpty then
      if ((dmiS.qIN.FieldByName('status').AsInteger < 50) or
        (dmiS.qIN.FieldByName('status').IsNull)) then
      begin
        MsgError('У данной операции есть заявка', 'Внимание');
        Exit;
      end;
  end;
  if (not fmMain.UF0) then
  begin
    // -- Проверка на принадлежность операции пользователю -------------------------
    if (qWorkCHID_FIX.AsInteger <> SysVars.RegTN) then
    begin
      MsgError('Вы не являетесь создателем операции', 'Проверка');
      Exit;
    end;
    // -----------------------------------------------------------------------------
  end;
  // -- Проверка статуса и возвращение операции в работу -------------------------
  if qWorkCHSTATUS.AsInteger = 23 then
    if MsgQuestion(SysVars.NReg +
      ' , Вы действительно хотите вернуть операцию в работу?',
      'Проверка') = id_yes then
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('insert into proj_chain_states (id_chain_state, id_chain_traff,');
        Add('id_chain_event, d_fact, id_fact, id_chain)');
        Add('values ( gen_id(chain_traff_id,1), :id_chain_traff, 24,');
        Add('current_timestamp, :id_fact, :id_chain)');
        ParamByName('id_chain_traff').AsInteger :=
          qWorkCHID_CHAIN_TRAFF.AsInteger;
        ParamByName('id_chain').AsInteger := qWorkCHID_CHAIN.AsInteger;
        ParamByName('id_fact').AsInteger := SysVars.RegTN;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          Open_Oper;
          Exit;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
  // -----------------------------------------------------------------------------
  // -- запрет на отправку в доработку операций расход материалов ПОСМ -----------
  with qINs, qIns.SQL do
  begin
    close;
    clear;
    add('select r.* from estimate_requests  r where r.id_chain_traff = :id_ch');
    parambyname('id_ch').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    open;
  end;
  //if qWorkCHID_CHAIN_TRAFF.AsInteger =
  //if qWorkCHID_OPERATION.AsInteger = 7012150 then
  if not qIns.IsEmpty then
  begin
    MsgError('Данную операцию нельзя отправить в доработку.' +
      'Создайте новую операцию.', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  // -- Проверка на статус и отправка операции в доработку -----------------------
  if qWorkCHSTATUS.AsInteger in [40, 41, 70] then
  begin
    if MsgQuestion(SysVars.NReg +
      ', Вы действительно хотите отправить операцию в доработку?',
      'Проверка') = id_yes then
    begin
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('insert into proj_chain_states (id_chain_state, id_chain_traff,');
        Add('id_chain_event, d_fact, id_fact, id_chain)');
        Add('values ( gen_id(chain_traff_id,1), :id_chain_traff, 60,');
        Add('current_timestamp, :id_fact, :id_chain)');
        ParamByName('id_chain_traff').AsInteger :=
          qWorkCHID_CHAIN_TRAFF.AsInteger;
        ParamByName('id_chain').AsInteger := qWorkCHID_CHAIN.AsInteger;
        ParamByName('id_fact').AsInteger := SysVars.RegTN;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          Open_Oper;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
    end
    else
      Exit;
  end;
  // ---------------------------------------------------------------------------
    CreateXML2(dmIS.dbIS, '', fmMAin.SINPATH, pb1, byte(1),
    qNewCHID_PROJ_CHAIN.AsInteger);
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmCliOrds.tb34Click(Sender: TObject);
begin
  // -- Запись в сетке объекта и операции --------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  // -----------------------------------------------------------------------------
  // -- Проверка на наличии операций в списке ------------------------------------
  if qWorkCH.IsEmpty then
  begin
    MsgError('Список операций пуст', 'Проверка');
    Exit;
  end;
  // -----------------------------------------------------------------------------
  if (fmMain.UF0 = false) then
  begin
    // -- Проверка на принадлежность операции пользователю -------------------------
    if (qWorkCHID_FIX.AsInteger <> SysVars.RegTN) then
    begin
      MsgError('Вы не являетесь создателем операции', 'Проверка');
      Exit;
    end;
    // -----------------------------------------------------------------------------
  end;
  // -- Проверка статуса и отмена операции ---------------------------------------
  if qWorkCHSTATUS.AsInteger = 23 then
    with dmIS.qIm, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('insert into proj_chain_states (id_chain_state, id_chain_traff,');
      Add('id_chain_event, d_fact, id_fact) values (gen_id(obj_id,1),');
      Add(':id_chain_traff, 79, current_timestamp, :id_fact)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('id_fact').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_Oper;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  // -----------------------------------------------------------------------------
  CreateXML2(dmIS.dbIS, '', fmMAin.SINPATH, pb1, byte(1),
    qNewCHID_PROJ_CHAIN.AsInteger);
end;

procedure TfmCliOrds.cb3Click(Sender: TObject);
begin
  Open_DocCH;
end;

procedure TfmCliOrds.tb59Click(Sender: TObject);
begin
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsEdit, dsInsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
  if qDocCH.IsEmpty then
    Exit;
  if qDocCHID_INT_STAT.AsInteger > 0 then
  begin
    MsgInfo('Данную ссылку удалить невозможно', 'Проверка перед удалением');
    Exit;
  end;
  // --- проверка на принадлежность операции
  if qWorkCHID_FIX.AsInteger <> SysVars.RegTN then
  begin
    MsgError('Вы не являетесь создателем операции', 'Проверка');
    Exit;
  end;

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
   Close;
   Clear;
   Add('select id_request from estimate_requests where id_chain_traff = :id_chain_traff');
   Add('and (status <> 50 or status is null)');
   ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
   Open;
   if not IsEmpty then
   begin
    MsgError('На основании этой операции была создана заявка на расчет сметы','Внимание');
    Exit;
   end;
  end;

  if (qWorkCHSTATUS.AsInteger = 23) or (qWorkCHSTATUS.IsNull) then
  begin

    {  if (fmMain.UF0 = False) then
       begin
       with dmIs.qIN, dmIs.qIN.SQL do
        begin
         Close;
         Clear;
         Add('select f.id_chain_traff, f.status from proj_Chain_traff f');
         Add('where f.status > 9 and not f.status in (40,41,70)');
         Add('and f.id_chain_traff  = :traff');
         ParamByName('traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
         Open;
        end;
        If (not dmIs.qIN.IsEmpty) then
        begin
         MsgError('Операция уже утверждена','Проверка');
         Exit;
        end;
        If (qDocCHID_CREATOR.AsInteger <> SysVars.RegTN) then
     begin
      MsgError('Вы не являетесь создателем данного документа','Проверка');
      Exit;
     end;
    end;      }
    with dmIs.qIM, dmIs.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update proj_chain_docs set status = 3');
      Add('where (id_chain_traff = :id_chain_traff) and (id_doc = :id_doc)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('id_doc').AsInteger := qDocCHID_DOC.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_DocCH;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end;
end;

procedure TfmCliOrds.dbgDocChGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (qDocCHSTATUS.AsInteger = 4) then
    Background := clYellow;
  if (qDocCHSTATUS.AsInteger = 3) then
  begin
    Background := clSilver;
    AFont.Style := [fsBold, fsStrikeOut];
  end;

  if qDocCHID_INT_STAT.AsInteger > 0 then
  begin
    Afont.Color := clblue;
    Afont.Style := [fsUnderline];
  end;
end;

procedure TfmCliOrds.docUtvChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  if qDocCH.IsEmpty then
    Exit;
end;

procedure TfmCliOrds.N16Click(Sender: TObject);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  end;
  if qDocCH.IsEmpty then
    Exit;
  if qDocCHID_INT_STAT.AsInteger > 0 then
    Exit;
  with dmIS.qIn, dmIS.qIn.SQL do
  begin
    close;
    clear;
    Add('select status, id_estimate from estimate_requests where');
    Add('id_request = (SELECT S.id_request FROM estimate_requests');
    Add('S WHERE S.id_chain_traff = :IDR)');
    parambyname('idr').AsInteger := qworkchid_chain_traff.AsInteger;
    open;
    if (fieldbyname('STATUS').AsInteger >= 30)
      and (fieldbyname('STATUS').AsInteger < 50)
      and (not fieldbyname('id_estimate').IsNull) then
    begin
      MsgError('Заявка на расчет уже принята в работу', 'Внимание');
      exit;
    end;
  end;
  if (qDocCHSTATUS.AsInteger < 3) or (qDocCHSTATUS.AsInteger = 5) then
  begin
    with dmIs.qIM, dmIs.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update proj_chain_docs set status = 4,');
      Add('id_confirm = :id_confirm, d_confirm = current_timestamp');
      Add('where (id_chain_traff = :id_chain_traff) and (id_doc = :id_doc)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('id_confirm').AsInteger := SysVars.RegTN;
      ParamByName('id_doc').AsInteger := qDocCHID_DOC.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_DocCH;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end
  else
    Exit;
end;

procedure TfmCliOrds.N17Click(Sender: TObject);
begin
  if qDocCH.IsEmpty then
    Exit;
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  end;
  with dmIS.qIn, dmIS.qIn.SQL do
  begin
    close;
    clear;
    Add('select status, id_estimate from estimate_requests where');
    Add('id_request = (SELECT S.id_request FROM estimate_requests');
    Add('S WHERE S.id_chain_traff = :IDR)');
    parambyname('idr').AsInteger := qworkchid_chain_traff.AsInteger;
    open;
    if (fieldbyname('STATUS').AsInteger >= 30)
      and (fieldbyname('STATUS').AsInteger < 50)
      and (not fieldbyname('id_estimate').IsNull) then
    begin
      MsgError('Заявка на расчет уже принята в работу', 'Внимание');
      exit;
    end;
  end;
  if qDocCHSTATUS.AsInteger = 4 then
  begin
    with dmIs.qIM, dmIs.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update proj_chain_docs set status = 1,');
      Add('id_confirm = :id_confirm, d_confirm = current_timestamp');
      Add('where (id_chain_traff = :id_chain_traff) and (id_doc = :id_doc)');
      ParamByName('id_chain_traff').AsInteger :=
        qWorkCHID_CHAIN_TRAFF.AsInteger;
      ParamByName('id_confirm').AsInteger := SysVars.RegTN;
      ParamByName('id_doc').AsInteger := qDocCHID_DOC.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_DocCH;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end
  else
    Exit;
end;

procedure TfmCliOrds.ToolButton68Click(Sender: TObject);
begin
  GridToExcel(dbgParamObj);
end;

procedure TfmCliOrds.ToolButton75Click(Sender: TObject);
begin
  GridToExcel(dbgproj);
end;

procedure TfmCliOrds.FormActivate(Sender: TObject);
begin
  { if (fmMain.UF89 = true or fmMain.UF0 = true) then cb1.Enabled := true;
    if fmMain.UF143 then begin
     ToolButton7.visible := not fmMain.UF143;
     fmAll.HideGridCOl(dbgSumO,'PRICE_SUM,price_sum_bez_nds,DELIVERY_SUM,'
     + 'DELIVERY_SUM_bez_nds,TOTAL_SUM_PEO,TOTAL_SUM_PEO_bez_nds,RAZ,RAZ_bez_nds,nProfit',false);

     fmAll.HideGridCOl(dbg2,'DELIVERY_SUM,DELIVERY_SUM_bez_nds,EST_TOTAL_SUM_PEO,'
     + 'EST_TOTAL_SUM_PEO_bez_nds,EST_TOTAL_SUM_KD,EST_TOTAL_SUM_KD_bez_nds',false);
     fmAll.HideGridCOl(dbg30,'PRICE,PRICE_BEZ_NDS,DELIVERY_SUM,DELIVERY_SUM_BEZ_NDS,'
     + 'TOTAL_SUM_PEO,TOTAL_SUM_PEO_BEZ_NDS,RAZ,RAZ_BEZ_NDS,nProfit',false);
     fmAll.HideGridCOl(dbg32,'PRICE,PRICE_bez_nds,DELIVERY_SUM,DELIVERY_SUM_bez_nds,'
     + 'TOTAL_SUM_PEO,TOTAL_SUM_PEO_bez_nds,RAZ,RAZ_bez_nds,nProfit', false);
     fmAll.HideGridCOl(dbg31,'PRICE,DELIVERY_SUM,TOTAL_SUM_PEO,RAZ,nprofit', false);
     fmAll.HideGridCOl(dbgSh,'TOTAL_SUM,TOTAL_SUM_BEZ_NDS', false);

     fmAll.HideGridCOl(dbg16, 'price,price_bez_nds,total,total_bez_nds,cost,'
      + 'cost_bez_nds,cost0,cost0_bez_nds', false);
     fmAll.HideGridCOl(dbg17, 'price,price_bez_nds,total,total_bez_nds', false);

     fmAll.HideGridCOl(dbgEstPosAll,'OBJ_PRICE,TOTAL,COST,COST0,PRICEP,SUM_RAS,'
     + 'SUM_PROC,BPRICE,DELTA_PRICE,PLAN_PRICE,PRICE_MINUS_COMM,PRICEP_NDS_SUM,'
     + 'OBJ_PRICE_NDS_SUM,OBJ_PRICE_NDS,PRICEP_NDS,nTOTAL_ONE',false);

     fmAll.HideGridCOl(dbghEst,'dop_price,profit,price_delivery,price_delivery_bez_nds,'
      + 'price_tools,price_tools_bez_nds,total_sum,total_sum_bez_nds,'
      + 'total_sum_al,total_sum_al_bez_nds,sum_oper,sum_oper_bez_nds,sum_mat,'
      + 'sum_mat_bez_nds,sum_oper_proc,sum_oper_proc_bez_nds,sum_mat_proc,'
      + 'sum_mat_proc_bez_nds,sum_proc,sum_proc_bez_nds,TOTAL_OPER,TOTAL_MAT,TOTAL_COM,DELTA',false);
      fmAll.HideGridCOl(dbg7,'PROFIT,DOP_PRICE,TOTAL,TOTAL_BEZ_NDS,TOTAL_MAT,TOTAL_MAT_BEZ_NDS,'
       + 'TOTAL_OPER,TOTAL_OPER_BEZ_NDS,SUM_MAT,SUM_MAT_BEZ_NDS,SUM_OPER,'
       + 'SUM_OPER_BEZ_NDS,SUM_PROC,SUM_PROC_BEZ_NDS', false);
      fmAll.HideGridCOl(dbg11, 'TOTAL,TOTAL_BEZ_NDS,TOTAL_PROC,TOTAL_PROC_BEZ_NDS', false);
      fmAll.HideGridCOl(dbg9, 'TOTAL,TOTAL_BEZ_NDS,TOTAL_PROC,TOTAL_PROC_BEZ_NDS', false);
      fmAll.HideGridCOl(dbg10,'PROFIT,DOP_PRICE,TOTAL,TOTAL_BEZ_NDS,TOTAL_MAT,TOTAL_MAT_BEZ_NDS,'
       + 'TOTAL_OPER,TOTAL_OPER_BEZ_NDS,SUM_MAT,SUM_MAT_BEZ_NDS,SUM_OPER,'
       + 'SUM_OPER_BEZ_NDS,SUM_PROC,SUM_PROC_BEZ_NDS', false);
      fmAll.HideGridCOl(dbg8,'TOTAL_ALL,TOTAL_ALL_BEZ_NDS,TOTAL_ALL_PROC,'
        + 'TOTAL_ALL_PROC_BEZ_NDS,TOTAL,TOTAL_BEZ_NDS' ,false);
      fmAll.HideGridCOl(dbg12,'TOTAL_ALL,TOTAL_ALL_BEZ_NDS,TOTAL_ALL_PROC,'
         + 'TOTAL_ALL_PROC_BEZ_NDS,TOTAL,TOTAL_BEZ_NDS' ,false);
      fmAll.HideGridCOl(dbg118,'LIMIT_SUM,LIMIT_SUM_BEZ_NDS,LIMIT_PRICE,'
        + 'LIMIT_PRICE_BEZ_NDS,LIMIT_PRICE_OZC,LIMIT_PRICE_OZC_BEZ_NDS,'
        + 'LIMIT_SUM_OZC,LIMIT_SUM_OZC_BEZ_NDS,ESTIMATE_SUM,ESTIMATE_SUM_BEZ_NDS,'
        + 'ESTIMATE_PRICE,ESTIMATE_PRICE_BEZ_NDS,KD_SUM,KD_SUM_BEZ_NDS,'
        + 'KD_PRICE,KD_PRICE_BEZ_NDS,REC_SUM,REC_SUM_BEZ_NDS,REC_PRICE,'
        + 'REC_PRICE_BEZ_NDS,EXP_SUM,EXP_SUM_BEZ_NDS,DEF_SUM,DEF_SUM_BEZ_NDS',false);
      fmAll.HideGridCOl(dbg27,'ESTIMATE_SUM,ESTIMATE_SUM_BEZ_NDS,ESTIMATE_PRICE,'
       + 'ESTIMATE_PRICE_BEZ_NDS,KD_AMOUNT,KD_SUM,KD_SUM_BEZ_NDS,KD_PRICE,'
       + 'KD_PRICE_BEZ_NDS,TRAF_AMOUNT,TRAF_SUM,TRAF_SUM_BEZ_NDS,TRAF_PRICE,'
       + 'TRAF_PRICE_BEZ_NDS,FACT_AMOUNT,FACT_SUM,FACT_SUM_BEZ_NDS,FACT_PRICE,'
       + 'FACT_PRICE_BEZ_NDS',false);
      fmAll.HideGridCOl(dbg20,'TOTAL_SUM,TOTAL_SUM_BEZ_NDS,DEF_SUM,DEF_SUM_BEZ_NDS',false);
      fmAll.HideGridCOl(dbg26,'DEF_SUM,DEF_SUM_BEZ_NDS,DEF_DELIVERY,'
       + 'DEF_DELIVERY_BEZ_NDS,PLAN_COST_PRICE,PLAN_COST_PRICE_BEZ_NDS,'
       + 'TOTAL_SUM_PEO,TOTAL_SUM_PEO_BEZ_NDS,TOTAL_SUM_KD,TOTAL_SUM_KD_BEZ_NDS',false);
       fmAll.HideGridCOl(dbg28,'SUMMA,SUMMA_BEZ_NDS', false);
      fmAll.HideGridCOl(dbg22,'PRICE,PRICE_BEZ_NDS,DEF_SUM,DEF_SUM_BEZ_NDS,'
       +'DELIVERY_SUM,DELIVERY_SUM_BEZ_NDS,PLAN_COST_PRICE,PLAN_COST_PRICE_BEZ_NDS'
       ,false);
      fmAll.HideGridCOl(dbg51, 'DEF_SUM,DEF_SUM_BEZ_NDS,'
       + 'DEF_DELIVERY_BEZ_NDS,DEF_DELIVERY', false);
      fmAll.HideGridCOl(dbg53, 'DEF_SUM,DEF_SUM_BEZ_NDS,'
       + 'DEF_DELIVERY_BEZ_NDS,DEF_DELIVERY', false);
      fmAll.HideGridCOl(dbg52, 'DEF_SUM0,DEF_DELIVERY0,DEF_SUM_11,'
        + 'DEF_DELIVERY_11,DEF_SUM22,DEF_DELIVERY22,DEF_SUM33,DEF_DELIVER33,'
        + 'DEF_SUM44,DEF_DELIVER44,DEF_SUM55,DEF_DELIVER55,DEF_SUM66,'
        + 'DEF_DELIVER66,DEF_SUM77,DEF_DELIVER77,DEF_SUM88,DEF_DELIVER88,'
        + 'DEF_SUM99,DEF_DELIVER99,DEF_SUM100,DEF_DELIVER100,DEF_SUM111,'
        + 'DEF_DELIVER111,DEF_SUM122,DEF_DELIVERY122,DEF_SUM0_BEZ_NDS,'
        + 'DEF_DELIVERY0_BEZ_NDS,DEF_SUM_11_BEZ_NDS,DEF_DELIVERY_11_BEZ_NDS,'
        + 'DEF_SUM22_BEZ_NDS,DEF_DELIVERY22_BEZ_NDS,DEF_SUM33_BEZ_NDS,'
        + 'DEF_DELIVER33_BEZ_NDS,DEF_SUM44_BEZ_NDS,DEF_DELIVER44_BEZ_NDS,'
        + 'DEF_SUM55_BEZ_NDS,DEF_DELIVER55_BEZ_NDS,DEF_SUM66_BEZ_NDS,'
        + 'DEF_DELIVER66_BEZ_NDS,DEF_SUM77_BEZ_NDS,DEF_DELIVER77_BEZ_NDS,'
        + 'DEF_SUM88_BEZ_NDS,DEF_DELIVER88_BEZ_NDS,DEF_SUM99_BEZ_NDS,'
        + 'DEF_DELIVER99_BEZ_NDS,DEF_SUM100_BEZ_NDS,DEF_DELIVER100_BEZ_NDS,'
        + 'DEF_SUM111_BEZ_NDS,DEF_DELIVER111_BEZ_NDS,DEF_SUM122_BEZ_NDS,'
        + 'DEF_DELIVERY122_BEZ_NDS', false);
      fmAll.HideGridCOl(dbg41, 'DEF_SUM,DEF_SUM_BEZ_NDS,'
       + 'DEF_DELIVERY_BEZ_NDS,DEF_DELIVERY', false);
      fmAll.HideGridCOl(dbg42, 'DEF_SUM0,DEF_DELIVERY0,DEF_SUM_11,'
        + 'DEF_DELIVERY_11,DEF_SUM22,DEF_DELIVERY22,DEF_SUM33,DEF_DELIVER33,'
        + 'DEF_SUM44,DEF_DELIVER44,DEF_SUM55,DEF_DELIVER55,DEF_SUM66,'
        + 'DEF_DELIVER66,DEF_SUM77,DEF_DELIVER77,DEF_SUM88,DEF_DELIVER88,'
        + 'DEF_SUM99,DEF_DELIVER99,DEF_SUM100,DEF_DELIVER100,DEF_SUM111,'
        + 'DEF_DELIVER111,DEF_SUM122,DEF_DELIVERY122,DEF_SUM0_BEZ_NDS,'
        + 'DEF_DELIVERY0_BEZ_NDS,DEF_SUM_11_BEZ_NDS,DEF_DELIVERY_11_BEZ_NDS,'
        + 'DEF_SUM22_BEZ_NDS,DEF_DELIVERY22_BEZ_NDS,DEF_SUM33_BEZ_NDS,'
        + 'DEF_DELIVER33_BEZ_NDS,DEF_SUM44_BEZ_NDS,DEF_DELIVER44_BEZ_NDS,'
        + 'DEF_SUM55_BEZ_NDS,DEF_DELIVER55_BEZ_NDS,DEF_SUM66_BEZ_NDS,'
        + 'DEF_DELIVER66_BEZ_NDS,DEF_SUM77_BEZ_NDS,DEF_DELIVER77_BEZ_NDS,'
        + 'DEF_SUM88_BEZ_NDS,DEF_DELIVER88_BEZ_NDS,DEF_SUM99_BEZ_NDS,'
        + 'DEF_DELIVER99_BEZ_NDS,DEF_SUM100_BEZ_NDS,DEF_DELIVER100_BEZ_NDS,'
        + 'DEF_SUM111_BEZ_NDS,DEF_DELIVER111_BEZ_NDS,DEF_SUM122_BEZ_NDS,'
        + 'DEF_DELIVERY122_BEZ_NDS', false);

      fmAll.HideGridCOl(dbg61,'EST_PROGN,S_PROGN,EST_PLAN,S_PLAN_SHIPP,'
        + 'EST_PRODUCED,S_PRODUCED,EST_SHIP,S_SHIP,EST_RECIEV,S_RECIEV,'
        + 'EST_PROGN_BEZ_NDS,S_PROGN_BEZ_NDS,EST_PLAN_BEZ_NDS,'
        + 'S_PLAN_SHIPP_BEZ_NDS,EST_PRODUCED_BEZ_NDS,S_PRODUCED_BEZ_NDS,'
        + 'EST_SHIP_BEZ_NDS,S_SHIP_BEZ_NDS,EST_RECIEV_BEZ_NDS,'
        + 'S_RECIEV_BEZ_NDS',false);

      fmAll.HideGridCOl(dbg61_1,'EST_PROGN,S_PROGN,EST_PLAN,S_PLAN_SHIPP,'
        + 'EST_PRODUCED,S_PRODUCED,EST_SHIP,S_SHIP,EST_RECIEV,S_RECIEV,'
        + 'EST_PROGN_BEZ_NDS,S_PROGN_BEZ_NDS,EST_PLAN_BEZ_NDS,'
        + 'S_PLAN_SHIPP_BEZ_NDS,EST_PRODUCED_BEZ_NDS,S_PRODUCED_BEZ_NDS,'
        + 'EST_SHIP_BEZ_NDS,S_SHIP_BEZ_NDS,EST_RECIEV_BEZ_NDS,'
        + 'S_RECIEV_BEZ_NDS',false);

      fmAll.HideGridCOl(dbg61_2,'EST_PROGN,S_PROGN,EST_PLAN,S_PLAN_SHIPP,'
        + 'EST_PRODUCED,S_PRODUCED,EST_SHIP,S_SHIP,EST_RECIEV,S_RECIEV,'
        + 'EST_PROGN_BEZ_NDS,S_PROGN_BEZ_NDS,EST_PLAN_BEZ_NDS,'
        + 'S_PLAN_SHIPP_BEZ_NDS,EST_PRODUCED_BEZ_NDS,S_PRODUCED_BEZ_NDS,'
        + 'EST_SHIP_BEZ_NDS,S_SHIP_BEZ_NDS,EST_RECIEV_BEZ_NDS,'
        + 'S_RECIEV_BEZ_NDS',false);

      fmAll.HideGridCOl(dbg61_0,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

     fmAll.HideGridCOl(dbg61_01,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

    fmAll.HideGridCOl(dbg61_011,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

    fmAll.HideGridCOl(dbg61_11,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

    fmAll.HideGridCOl(dbg61_111,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

     fmAll.HideGridCOl(dbg61_1111,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

     fmAll.HideGridCOl(dbg61_21,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

     fmAll.HideGridCOl(dbg61_22,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);

     fmAll.HideGridCOl(dbg61_222,'SUM_PACK,S_PACK1,S_PACK2,S_PACK3,S_PACK4,'
        + 'S_PACK5,S_PACK6,S_PACK7,S_PACK8,S_PACK9,S_PACK10,S_PACK11,S_PACK12,'
        + 'SUM_PACK_BEZ_NDS,S_PACK1_BEZ_NDS,S_PACK2_BEZ_NDS,S_PACK3_BEZ_NDS,'
        + 'S_PACK4_BEZ_NDS,S_PACK5_BEZ_NDS,S_PACK6_BEZ_NDS,S_PACK7_BEZ_NDS,'
        + 'S_PACK8_BEZ_NDS,S_PACK9_BEZ_NDS,S_PACK10_BEZ_NDS,S_PACK11_BEZ_NDS,'
        + 'S_PACK12_BEZ_NDS',false);
     fmAll.HideGridCOl(dbg71,'SUMMA,SUMMA_BEZ_NDS,SUM_PACK_IN,'
      + 'SUM_PACK_IN_BEZ_NDS,SUM_PACK_OUT,SUM_PACK_OUT_BEZ_NDS',false);
     fmAll.HideGridCOl(DBGridEh1,'SUMMA,SUMMA_BEZ_NDS',false);
   end;                                  }
end;

procedure TfmCliOrds.dbgParamObjDblClick(Sender: TObject);
begin
  if not Assigned(fmParamCH) then
    Application.CreateForm(TfmParamCH, fmParamCH);
  begin
    fmParamCH.pc1.ActivePage := fmParamCH.tsParamObj;
    fmParamCH.tsObject_Info.TabVisible := false;
    fmParamCH.Showmodal;
  end;
end;

procedure TfmCliOrds.dbgprojDblClick(Sender: TObject);
begin
  if not Assigned(fmParamCH) then
    Application.CreateForm(TfmParamCH, fmParamCH);
  begin
    fmParamCH.pc1.ActivePage := fmParamCH.tsParamOper;
    fmParamCH.tsObject_Info.TabVisible := false;
    fmParamCH.Showmodal;
  end;
end;

procedure TfmCliOrds.dbgParamObjSortMarkingChanged(Sender: TObject);
begin
  Open_ParamObj;
end;

procedure TfmCliOrds.ed_poiskKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    FindGridValue(dbgNewCH, ed_poisk, Key, 'id_proj_chain');
  end;
end;

procedure TfmCliOrds.cb1Click(Sender: TObject);
begin
  Open_CH;
end;

procedure TfmCliOrds.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  qNewCH.Close;
  qWorkCH.Close;
  qOperCH.Close;
  qParamCH.Close;
  qTempCH.Close;

  qSmeta.Close;
  qCust.Close;
  qManager.Close;
  qCompl.Close;
  qMes.Close;
  qMan.Close;
  if q_Proj_Man.Active then
    q_Proj_Man.Close;
end;

procedure TfmCliOrds.lcbManagerCloseUp(Sender: TObject; Accept: Boolean);
begin
  Open_CH;
end;

procedure TfmCliOrds.lcbManagerExit(Sender: TObject);
begin
  Open_CH;
end;

procedure TfmCliOrds.ToolButton77Click(Sender: TObject);
begin
  GridToExcel(dbgComplect);
end;

procedure TfmCliOrds.dbgComplectSortMarkingChanged(Sender: TObject);
begin
  Open_Complect;
end;

procedure TfmCliOrds.dbgComplectGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not qComplectNAME.IsNull then
    Background := clSkyBlue;
  if qComplectIN_PRODUCT.AsInteger = 1 then
    Background := clYellow;
end;

procedure TfmCliOrds.lcbComplCloseUp(Sender: TObject; Accept: Boolean);
begin
  Open_Complect;
end;

procedure TfmCliOrds.lcbComplKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Open_Complect;
end;

procedure TfmCliOrds.qSUM_OrdCalcFields(DataSet: TDataSet);
begin
  if qSum_OrdID_CURRENCY.AsInteger = 1 then
  begin
    if qSum_OrdTOTAL_SUM_PEO.AsFloat <> 0 then
      //(стоимость/(сс+доставка)-1)*100%
      qSum_OrdnProfit.AsFloat := (qSum_OrdPRICE.AsFloat /
        (qSum_OrdTOTAL_SUM_PEO.AsFloat
        + qSum_OrdDELIVERY_SUM.AsFloat) - 1) * 100
        {  qSum_OrdnProfit.AsFloat :=
     (qSum_OrdPRICE.AsFloat - qSum_OrdTOTAL_SUM_PEO.AsFloat
      - qSum_OrdDELIVERY_SUM.AsFloat )/
      qSum_OrdTOTAL_SUM_PEO.AsFloat * 100}
  end
  else
    qSum_OrdnProfit.AsFloat := -100;
end;

procedure TfmCliOrds.qSUM_Ord_YCalcFields(DataSet: TDataSet);
begin
  //  if qSUM_Ord_YID_CURRENCY.AsInteger = 1 then
  begin
    if qSUM_Ord_YTOTAL_SUM_PEO.AsFloat <> 0 then

      {qSUM_Ord_YnProfit.AsFloat :=
       (qSUM_Ord_YPRICE.AsFloat - qSUM_Ord_YTOTAL_SUM_PEO.AsFloat
        - qSUM_Ord_YDELIVERY_SUM.AsFloat )/
        qSUM_Ord_YTOTAL_SUM_PEO.AsFloat * 100 }
      qSum_Ord_YnProfit.AsFloat := (qSum_Ord_YPRICE.AsFloat /
        (qSUM_Ord_YTOTAL_SUM_PEO.AsFloat
        + qSum_Ord_YDELIVERY_SUM.AsFloat) - 1) * 100
  end
  //else qSUM_Ord_YnProfit.AsFloat := -100 ;
end;

procedure TfmCliOrds.qSumOCalcFields(DataSet: TDataSet);
begin
  // if qSUMOID_CURRENCY.AsInteger = 1 then
  begin
    if qSumOTOTAL_SUM_PEO.AsFloat <> 0 then
      {qSUMOnProfit.AsFloat :=
       (qSumOPRICE_SUM.AsFloat - qSUMOTOTAL_SUM_PEO.AsFloat
        - qSUMODELIVERY_SUM.AsFloat )/
        qSUMOTOTAL_SUM_PEO.AsFloat * 100 }
      qSumOnProfit.AsFloat := (qSumOPRICE_SUM.AsFloat /
        (qSumOTOTAL_SUM_PEO.AsFloat
        + qSumODELIVERY_SUM.AsFloat) - 1) * 100
  end
  //else qSUMOnProfit.AsFloat := -100 ;
end;

procedure TfmCliOrds.qWorkCHD_READYChange(Sender: TField);
begin
  { with dmIS.qIM, dmIS.qIm.SQL do
   begin
    Close;
    Clear;
    Add('update proj_chain_traff set d_ready = :d_ready');
    Add('where (id_chain_traff = :id_chain_traff)');
    ParamByName('d_ready').AsDateTime := qWorkCHD_READY.AsDateTime;
    ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    try
    ExecSQL;
    If Transaction.Active then Transaction.Commit;
    except
    If Transaction.Active then Transaction.Rollback;
    end;
   end;  }
end;

procedure TfmCliOrds.qWorkCHNAMEChange(Sender: TField);
begin
  { with dmIS.qIM, dmIS.qIm.SQL do
   begin
    Close;
    Clear;
    Add('update proj_chain_traff set name = :name');
    Add('where (id_chain_traff = :id_chain_traff)');
    ParamByName('name').AsString := qWorkCHNAME.AsString;
    ParamByName('id_chain_traff').AsInteger := qWorkCHID_CHAIN_TRAFF.AsInteger;
    try
    ExecSQL;
    If Transaction.Active then Transaction.Commit;
    except
    If Transaction.Active then Transaction.Rollback;
    end;
   end;  }
end;

procedure TfmCliOrds.qNewCHAfterPost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmCliOrds.qWorkCHAfterPost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end
end;

procedure TfmCliOrds.qDocCHAfterPost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmCliOrds.dbgOperContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  if qWorkCH.IsEmpty then
    putv.AutoPopup := false
  else
    putv.AutoPopup := true;
end;

procedure TfmCliOrds.dbgDocChContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  if qDocCH.IsEmpty then
    docUtv.AutoPopup := false
  else
    docUtv.AutoPopup := true;
end;

procedure TfmCliOrds.mNewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (GetAsyncKeyState(13) and GetAsyncKeyState(17) <> 0) then
    bPost.OnClick(Sender);
end;

procedure TfmCliOrds.SpeedButton24Click(Sender: TObject);
begin
  pSelClient.Hide;
end;

procedure TfmCliOrds.tbClientClick(Sender: TObject);
begin
  if fmMain.UF0 = false then
  begin
    MsgError('Вы не можете производить данную операцию', 'Проверка');
    Exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select o.n_order from project_ords o where o.status > 20');
    Add('and o.id_project = :id_project');
    ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.IsEmpty then
    begin
      MsgError('У данного проекта есть оформленные заказы', 'Проверка');
      Exit;
    end;
  end;
  with qCust do
  begin
    Close;
    Open;
  end;
  pSelClient.Show;
end;

procedure TfmCliOrds.SpeedButton23Click(Sender: TObject);
var
  id_project: Integer;
begin
  id_project := qPrjID_PROJECT.AsInteger;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update projects set id_agent = :id_agent');
    Add('where (id_project = :id_project)');
    ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
    ParamByName('id_agent').AsInteger := lcbCust.KeyValue;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      qClients.Locate('id_item', lcbCust.KeyValue, []);
      OpenProject_s;
      qPrj.Locate('id_project', id_project, []);
      pSelClient.Hide;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmCliOrds.cb4Click(Sender: TObject);
begin
  Open_CH;
end;

procedure TfmCliOrds.tbFilterClick(Sender: TObject);
begin
  if p7.Visible = false then
    p7.Show
  else
    p7.Hide;
end;

procedure TfmCliOrds.dbgOperKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qWorkCH.State in [dsEdit, dsInsert] then
      qWorkCH.Post;
end;

procedure TfmCliOrds.tdEditClick(Sender: TObject);
begin
  if (not fmMain.UF130) then
    Exit;
  if not Assigned(fmParamCH) then
    Application.CreateForm(TfmParamCH, fmParamCH);
  begin
    fmParamCH.tsObject_Info.TabVisible := true;
    fmParamCH.pc1.ActivePage := fmParamCH.tsObject_Info;
    fmParamCH.ed_type.Clear;
    edit_obj := 1;
    fmParamCH.bNew.Caption := 'Сохранить';
    lcbCust.KeyValue := qNewCHID_AGENT.AsInteger;
    lcbProj.KeyValue := qPrjID_PROJECT.AsInteger;
    fmParamCH.Showmodal;
  end;
end;

procedure TfmCliOrds.cbComplClick(Sender: TObject);
begin
  Open_Complect;
end;

procedure TfmCliOrds.dbbeginCloseUp(Sender: TObject; Accept: Boolean);
begin
  Open_CH;
end;

procedure TfmCliOrds.dbbeginKeyPress(Sender: TObject; var Key: Char);
begin
  Open_CH;
end;

procedure TfmCliOrds.N15Click(Sender: TObject);
begin
  with qParamC_H do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qParam_Ob_j do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qCNS do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qCS do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qAll_compl do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  rOtchet.Script.Variables['reg'] := SysVars.FReg;
  rOtchet.ShowReport;
end;

procedure TfmCliOrds.dbgOperDblClick(Sender: TObject);
begin
  if qWorkCH.IsEmpty then
    Exit;
  if not Assigned(fmMes) then
    Application.CreateForm(TfmMes, fmMes);
  with fmMes do
  begin
   WindowState := wsNormal;
   Form_i := f_CliOrds[fmMain.NF_CliOrds];
   Page_i := pcAll;
   Tab_i := tschain;
   Query_i := qWorkCH;
   Form := f_CliOrds[fmMain.NF_CliOrds];
//   head := CreateItem(qWorkCHID_CHAIN_TRAFF.AsInteger, qWorkCHNAME.AsString, f_CliOrds[fmMain.NF_CliOrds],pcAll,tschain,qWorkCH);
   Init(qWorkCHID_CHAIN_TRAFF.AsInteger, qWorkCHNAME.AsString);
  end;
  //fmMes.CreateItem(qWorkCHID_CHAIN_TRAFF.AsInteger, qWorkCHNAME.AsString, fmCliOrds, pcAll, tschain, qWorkCH);
 end;

procedure TfmCliOrds.Lcb_CustCloseUp(Sender: TObject; Accept: Boolean);
begin
  Open_CH;
end;

procedure TfmCliOrds.Lcb_CustExit(Sender: TObject);
begin
  Open_CH;
end;

procedure TfmCliOrds.ToolButton74Click(Sender: TObject);
begin
  //  NewOrdReq(ORD_KIND_IND);
  { grezerv.show;
   with qSmeta do
   begin
    Close;
    Open;
   end;}
end;

procedure TfmCliOrds.SpeedButton26Click(Sender: TObject);
begin
  grezerv.Hide;
end;

procedure TfmCliOrds.SpeedButton25Click(Sender: TObject);
begin
  { if (lcbSmeta.KeyValue = null) then
   begin
    MsgError('Укажите смету','Внимание');
    Exit;
   end;}
  { Application.CreateForm(TfmKOrder,f_KOrder[fmMain.NF_KOrder]);
   f_KOrder[fmMain.NF_KOrder].ind_KOrder := fmMain.NF_KOrder;
   f_KOrder[fmMain.NF_KOrder].Show;}
end;

procedure TfmCliOrds.qEstTitlBeforeOpen(DataSet: TDataSet);
begin
  if qEstTitl.Transaction.Active then
    qEstTitl.Transaction.CommitRetaining;
  with qEstTitl, qEstTitl.SQL do
  begin
    close;
    clear;

    Add('select id_estimate, name, amount, price_date, sum_nds, price_delivery,');
    Add('price_tools, profit, dop_price, d_create, fiocr, d_confirm, fioconf,');
    Add('id_doc, total_sum, total_sum_al, status, id_version, total_oper,');
    Add('total_mat, total_com, weight, ech, OVERHEADS, H_WORK_KD, SUM_KD,KD_cost, ');
    add('OUTSOURCE,sum_oper, sum_mat, sum_oper_proc,');
    Add('sum_mat_proc, sum_proc, sum_proc_one, delta,');
    add('sebes, uniq, proc_rez, rezerv, sebes_nds, sebes_nds_sum,');
    add('full_sebes, nds_full_sebes, full_sebes_bez_nds, prod_sebes, nds_prod_sebes,');
    add('prod_sebes_bez_nds');
    Add('from GET_EST_VER_TITL(:idv, null, -1, 0, -1)');
    ParamByName('idv').AsInteger := qIns.FieldByName('id_version').AsInteger;
  end;
end;

procedure TfmCliOrds.tbMesClick(Sender: TObject);
begin
  if qWorkCH.IsEmpty then
    Exit;
  if not Assigned(fmMes) then
    Application.CreateForm(TfmMes, fmMes);
 // fmMes.Poisk_Mes;
  fmMes.Form_i := f_CliOrds[fmMain.NF_CliOrds];
  fmMes.Page_i := pcAll;
  fmMes.Tab_i := tschain;
  fmMes.Query_i := qWorkCH;
  fmMes.Init(qWorkCHID_CHAIN_TRAFF.AsInteger, qWorkCHNAME.AsString);
end;

procedure TfmCliOrds.qEstFullBeforeOpen(DataSet: TDataSet);
begin
  with qEstFull, qEstFull.SQL do
  begin
    close;
    clear;
    //Add('select  id_spos, id_obj, obj_name name, uname, obj_amount, obj_price, obj_summa total, AMOUNT_TIME,');
    Add('select  id_obj, obj_name name, uname, obj_amount, obj_price, obj_summa total, AMOUNT_TIME,');
    Add('COST, COST0,OBJ_AMOUNT_P,PNAME, obj_type, pricep, dprice, sum_ras, comm_amount,');
    Add('bprice, bdate, delta_price, plan_price, comm_amount_raz, price_minus_comm, sum_proc,');
    Add('am_one, am_one_p, am_one_bezds, pricep_nds, pricep_nds_sum , obj_price_nds, obj_price_nds_sum, id_est');
    Add('from READ_EST_new_full(:id_estimate)');
    add('where 1=1');
    // parambyname('obj_kind').clear;

    add(orderby(dbgEstPosAll));
    //  parambyname('id_estimate').AsInteger := qEstTitlID_ESTIMATE.AsInteger;
     // Add('order by obj_type, obj_name');
  end;
end;

procedure TfmCliOrds.dbg16SortMarkingChanged(Sender: TObject);
begin
  with qOper, qOper.SQL do
  begin
    Close;
    ParamByName('id_estimate').AsInteger := qEstReqID_ESTIMATE.AsInteger;
    Open;
  end;
end;

procedure TfmCliOrds.qWorkCHAfterScroll(DataSet: TDataSet);
begin
  with qcompl do
  begin
    Close;
    Open;
  end;
  if pc3.ActivePage = tsComplect then
    Open_Complect;
  Open_Mes(qWorkCHID_CHAIN_TRAFF.AsInteger);
end;

procedure TfmCliOrds.ToolButton83Click(Sender: TObject);
begin
  GridToExcel(dbgOper);
end;

procedure TfmCliOrds.ToolButton81Click(Sender: TObject);
begin
  GridToExcel(dbgNewCH);
end;

procedure TfmCliOrds.PDF1Click(Sender: TObject);
begin
  with qParamC_H do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qParam_Ob_j do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qCNS do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qCS do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  with qAll_compl do
  begin
    Close;
    DataSource := dsWorkCH;
    Open;
  end;
  rOtchet.Script.Variables['reg'] := SysVars.FReg;
  rOtchet.PrepareReport;
  fPDF.FileName := 'c:\test\1.pdf';
  rOtchet.Export(fPDF)
end;

procedure TfmCliOrds.tbOpenClick(Sender: TObject);
begin
  if not fmMain.UF147 then
  begin
    MsgError('У Вас нет прав на данное действие', 'Внимание');
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    //******************************************************************************
    //              ПОСТАНОВКА ПРИЗНАКА ЧТО ПРОЕКТ ОТКРЫТ
    //******************************************************************************
    if qPrjD_CLOSE.IsNull then
      Exit;
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update projects set d_close = null, id_close = null');
      Add('where id_project = :id_project');
      ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenProject_s;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
    //******************************************************************************
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.tbCloseClick(Sender: TObject);
begin
  if not fmMain.UF147 then
  begin
    MsgError('У Вас нет прав на данное действие', 'Внимание');
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    //******************************************************************************
    //              ПОСТАНОВКА ПРИЗНАКА ЧТО ПРОЕКТ ЗАКРЫТ
    //******************************************************************************   ]
    if not qPrjD_CLOSE.IsNull then
      Exit;
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update projects set d_close = current_timestamp, id_close = :id_close');
      Add('where id_project = :id_project');
      ParamByName('id_close').AsInteger := SysVars.RegTN;
      ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenProject_s;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
    //******************************************************************************
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCliOrds.tbReadClick(Sender: TObject);
begin
  if not fmMain.UF147 then
  begin
    MsgError('У Вас нет прав на данное действие', 'Внимание');
    Exit;
  end;
  with q_Proj_Man do
  begin
    Close;
    Open;
  end;
  pcdoc.ActivePage := tsDoc_K;
  pSel_Proj_Man.Show;
end;

procedure TfmCliOrds.pSel_Proj_ManMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  ReleaseCapture;
  pSel_Proj_Man.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfmCliOrds.pSelClientMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  ReleaseCapture;
  pSelClient.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfmCliOrds.SpeedButton28Click(Sender: TObject);
begin
  pSel_Proj_Man.Hide;
end;

procedure TfmCliOrds.SpeedButton27Click(Sender: TObject);
begin
//******************************************************************************
//                        ЗАМЕНА МЕНЕДЖЕРА У ПРОЕКТА
//******************************************************************************
  if (lcb_Proj_Man.KeyValue <> null) then
  begin
    try
      Screen.Cursor := crHourGlass;
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update projects set id_manager = :id_manager where id_project = :id_project');
        ParamByName('id_manager').AsInteger := lcb_Proj_Man.KeyValue;
        ParamByName('id_project').AsInteger := qPrjID_PROJECT.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          OpenProject_S;
          pSel_Proj_Man.Hide;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
//******************************************************************************
end;

procedure TfmCliOrds.dbg14GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qPrjD_FIX.IsNull then Background := clMoneyGreen;
  if not qPrjD_CLOSE.IsNull then begin
   AFont.Style := [fsBold];
  end;
end;

procedure TfmCliOrds.IBSQLMonitor1SQL(EventText: String;
  EventTime: TDateTime);
begin
 memo1.Lines.Add(EventText);
end;

end.

