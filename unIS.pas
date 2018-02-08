unit unIS;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, IBDatabase, shrFunc,
  IBUpdateSQL, unCliOrds, unKOrder;

type
  TdmIS = class(TDataModule)
    mT: TIBTransaction;
    dbIS: TIBDatabase;
    qIN: TIBQuery;
    dbDOC: TIBDatabase;
    dT: TIBTransaction;
    qD_IN: TIBQuery;
    qR_BODY: TIBQuery;
    qR_BODYID_DOC: TIntegerField;
    qR_BODYFILENAME: TIBStringField;
    qR_BODYBODY: TBlobField;
    upBODY: TIBQuery;
    cT: TIBTransaction;
    C_db: TIBDatabase;
    qC_IN: TIBQuery;
    qOFFER: TIBQuery;
    dsOFFER: TDataSource;
    qOFFERID_OFFER: TIntegerField;
    qOFFERID_AGENT: TIntegerField;
    qOFFERID_DOC: TIntegerField;
    qOFFERDESIGN_DOC: TIntegerField;
    qOFFERMOV_DOC: TIntegerField;
    qOFFERID_DESIGNER: TIntegerField;
    qOFFERD_FIX: TDateTimeField;
    qOFFERID_FIX: TIntegerField;
    qOFFERD_EDIT: TDateTimeField;
    qOFFERID_EDIT: TIntegerField;
    qFIO: TIBQuery;
    qOFFERfDIS: TStringField;
    qOrders: TIBQuery;
    dsOrders: TDataSource;
    qOrdersID_ORDER: TIntegerField;
    qOrdersNUMBER: TIBStringField;
    qOrdersBRAND: TIBStringField;
    qOFFERID_ORDER: TIntegerField;
    qOFFERID_PRODUCT: TIntegerField;
    qOFFERFTP_DIR: TIBStringField;
    dsFIO: TDataSource;
    qFIOID_P: TIntegerField;
    qFIOFIO: TIBStringField;
    qOFFERCOMMENT: TMemoField;
    qOFFERBRIEF: TIBStringField;
    qOFFERNAME: TIBStringField;
    qOFFERNUMBER: TIBStringField;
    qOFFERD_OUT: TDateField;
    qOFFERID_MENEGER: TIntegerField;
    qBrands: TIBQuery;
    dsBrands: TDataSource;
    qBrandsID_BRAND: TIntegerField;
    qBrandsNAME: TIBStringField;
    qBrandsID_C: TIntegerField;
    upBrands: TIBUpdateSQL;
    qDOC_TYPE: TIBQuery;
    dsDOC_TYPE: TDataSource;
    qProjects: TIBQuery;
    dsProjects: TDataSource;
    qProjectsID_PROJECT: TIntegerField;
    qProjectsBRIEF: TIBStringField;
    qProjectsID_MANAGER: TIntegerField;
    qProjectsN_ORDER: TIBStringField;
    qProjectsID_AGENT: TIntegerField;
    qProjectsID_BRAND: TIntegerField;
    qProjectsNAME: TIBStringField;
    qProjectsSTATUS: TIntegerField;
    qProjectsDATA: TDateField;
    qProjectsnBRAND: TStringField;
    qAgents: TIBQuery;
    qAgentsID_AGENT: TIntegerField;
    qAgentsNAME: TIBStringField;
    qAgentsDESCRIPTION: TIBStringField;
    dsAgents: TDataSource;
    qManager: TIBQuery;
    dsManager: TDataSource;
    qManagerID_P: TIntegerField;
    qManagerFIO: TIBStringField;
    qFreeMan: TIBQuery;
    dsFreeman: TDataSource;
    qFreeManID_SE_EMPLOYEE: TIntegerField;
    qFreeManFIO: TIBStringField;
    qFreeManID_MANAGER: TIntegerField;
    qDOC: TIBQuery;
    dsDOC: TDataSource;
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
    qDOC_S: TIBQuery;
    dsDOC_S: TDataSource;
    qDOCfILL: TStringField;
    qD_DATA: TIBQuery;
    qD_DATAID_ROW: TIntegerField;
    qD_DATAID_DOC_DATA: TIntegerField;
    qD_DATAROW_SMALVAL: TFloatField;
    qD_DATAROW_VALUE: TBlobField;
    qDOC_SID_ROW: TIntegerField;
    qDOC_SNAME: TIBStringField;
    qDOC_SPARENT: TIntegerField;
    qDOC_SSTATUS: TSmallintField;
    qDOC_SID_DOC_DATA: TIntegerField;
    qDOC_SROW_SMALVAL: TFloatField;
    qDOC_SROW_VALUE: TBlobField;
    qDOC_SDATA_TYPE: TSmallintField;
    qCOrders: TIBQuery;
    qOrdersnPTYPE: TStringField;
    dsCOrders: TDataSource;
    qPTYPES: TIBQuery;
    qPTYPESID_PTYPE: TIntegerField;
    qPTYPESNAME: TIBStringField;
    qPTYPESID_ORDERTYPE: TIntegerField;
    qCOrdersID_ORDER: TIntegerField;
    qCOrdersID_TERMINAL: TIntegerField;
    qCOrdersID_ORDERTYPE: TIntegerField;
    qCOrdersID_AGENT: TIntegerField;
    qCOrdersID_MANAGER: TIntegerField;
    qCOrdersD_PERFORM: TDateTimeField;
    qCOrdersNUMBER: TIBStringField;
    qCOrdersTECHNOLOGY: TIBStringField;
    qCOrdersBRAND: TIBStringField;
    qCOrdersAMOUNT: TIntegerField;
    qCOrdersPRICE: TFloatField;
    qCOrdersPRICEA: TFloatField;
    qCOrdersD_CONFIRM: TDateTimeField;
    qCOrdersD_PROJECT: TDateTimeField;
    qCOrdersD_CENTER: TDateTimeField;
    qCOrdersD_PROD: TDateTimeField;
    qCOrdersD_ACCEPT: TDateTimeField;
    qCOrdersD_REJECT: TDateTimeField;
    qCOrdersD_INTREADY: TDateTimeField;
    qCOrdersID_ACCEPTOR: TIntegerField;
    qCOrdersID_REJECTOR: TIntegerField;
    qCOrdersREJECT: TIBStringField;
    qCOrdersSHIPPED: TIntegerField;
    qCOrdersD_TRANSFER: TDateTimeField;
    qCOrdersID_PTYPE: TIntegerField;
    qCOrdersPRINTED: TIntegerField;
    qCOrdersPAYMENT1C: TFloatField;
    qCOrdersDC_CONFIRM: TDateTimeField;
    qCOrdersID_CMANAGER: TIntegerField;
    qCOrdersID_PROD: TIntegerField;
    qCOrdersID_CURRENCY: TIntegerField;
    qCOrdersD_READY: TDateTimeField;
    qCOrdersID_DESIGNER: TIntegerField;
    qCOrdersD_DESIGNER: TDateTimeField;
    qCOrdersRej: TStringField;
    dsPTYPE: TDataSource;
    qProjectsID_PROJ_TYPE: TIntegerField;
    qPr_Typ: TIBQuery;
    qPr_TypID_PROJ_TYPE: TIntegerField;
    qPr_TypNAME: TIBStringField;
    dsPr_Typ: TDataSource;
    qProjectsnTYPE: TStringField;
    qCliPrj: TIBQuery;
    dsCliPrj: TDataSource;
    qCliPrjID: TIntegerField;
    qCliPrjNAME: TIBStringField;
    qPrj: TIBQuery;
    dsPrj: TDataSource;
    qPrjID_PROJECT: TIntegerField;
    qPrjBRIEF: TIBStringField;
    qPrjID_MANAGER: TIntegerField;
    qPrjID_AGENT: TIntegerField;
    qPrjID_BRAND: TIntegerField;
    qPrjNAME: TIBStringField;
    qPrjSTATUS: TIntegerField;
    qPrjDATA: TDateField;
    qPrjID_PROJ_TYPE: TIntegerField;
    qPrjBNAME: TIBStringField;
    qPrjnTYPE: TStringField;
    qPrjPlan: TIBQuery;
    qPrjPlanID_PROJ_PLAN: TIntegerField;
    qPrjPlanID_PROJECT: TIntegerField;
    qPrjPlanID_PROJ_TRAFF: TIntegerField;
    qPrjPlanDIN: TDateTimeField;
    qPrjPlanDOUT: TDateTimeField;
    qPrjPlanID_RESP: TIntegerField;
    qPrjPlanD_PLAN: TDateTimeField;
    qPrjPlanID_PLAN: TIntegerField;
    qPrjPlanD_FACT: TDateTimeField;
    qPrjPlanID_FACT: TIntegerField;
    qPrjPlanNAME: TIBStringField;
    qPrjPlanID_P: TIntegerField;
    qPrjPlanSTEP: TIntegerField;
    qPrjPlannRESP: TStringField;
    dsPrjPlan: TDataSource;
    qRESP: TIBQuery;
    qRESPID_PROJ_TRAFF: TIntegerField;
    qRESPNAME: TIBStringField;
    upPrjPlan: TIBUpdateSQL;
    qFreeTraff: TIBQuery;
    qFreeTraffID_PROJ_TRAFF: TIntegerField;
    qFreeTraffNAME: TIBStringField;
    dsFTraff: TDataSource;
    qProjectsID_EDIT: TIntegerField;
    qProjectsD_CLOSE: TDateTimeField;
    qProjectsID_CLOSE: TIntegerField;
    qPrjID_EDIT: TIntegerField;
    qPrjD_CLOSE: TDateTimeField;
    qPrjID_CLOSE: TIntegerField;
    qCliPrjCP: TIntegerField;
    qP_ORDS: TIBQuery;
    dsP_ORDS: TDataSource;
    qP_ORDSID_ORDER: TIntegerField;
    qP_ORDSID_PROJECT: TIntegerField;
    qP_ORDSNAME: TIBStringField;
    qP_ORDSAMOUNT: TIBBCDField;
    qP_ORDSSHIPPED: TIBBCDField;
    qP_ORDSID_PRODUCT: TIntegerField;
    qP_ORDSD_CONSTR: TDateField;
    qP_ORDSID_CONSTR: TIntegerField;
    qP_ORDSID_PA_OUT: TIntegerField;
    qP_ORDSSD_SUMMA: TIBBCDField;
    qP_ORDSD_READY: TDateField;
    qP_ORDSN_ORDER: TIBStringField;
    qP_ORDSID_C: TIntegerField;
    qP_ORDSSTATUS: TIntegerField;
    qP_ORDSD_OPEN: TDateTimeField;
    qP_ORDSID_OPEN: TIntegerField;
    qP_ORDSD_CLOSE: TDateTimeField;
    qP_ORDSID_CLOSE: TIntegerField;
    qP_ORDSD_FIX: TDateTimeField;
    qP_ORDSID_FIX: TIntegerField;
    qP_TYPE: TIBQuery;
    qP_TYPEID_PROJ_TYPE: TIntegerField;
    qP_TYPENAME: TIBStringField;
    qP_EVENT: TIBQuery;
    qP_EVENTID_PROJ_EVENT: TIntegerField;
    qP_EVENTNAME: TIBStringField;
    upP_TYPE: TIBUpdateSQL;
    upP_EVENT: TIBUpdateSQL;
    dsP_TYPE: TDataSource;
    dsP_EVENT: TDataSource;
    qProjTraff: TIBQuery;
    qProjTraffID_PROJ_TRAFF: TIntegerField;
    qProjTraffID_PROJ_EVENT: TIntegerField;
    qProjTraffSTEP: TIntegerField;
    qProjTraffnEVENT: TStringField;
    qProjTraffID_P: TIntegerField;
    qProjTraffnPOST: TStringField;
    qProjTraffPROJ_TYPE: TIntegerField;
    dsProjTraff: TDataSource;
    upPrj_Traff: TIBUpdateSQL;
    qPST: TIBQuery;
    qPSTIDPOST: TIntegerField;
    qPSTNAME: TIBStringField;
    qDOCNAME: TIBStringField;
    upDOC: TIBUpdateSQL;
    qDOCfFIX: TStringField;
    qDOCfFILL: TStringField;
    qDOC_TYPEID_PROJ_DOC_TYPE: TIntegerField;
    qDOC_TYPEIS_STRUCTURED: TSmallintField;
    qDOC_TYPENAME: TIBStringField;
    upD_TYPE: TIBUpdateSQL;
    qDOC_TYPEsTR: TStringField;
    qProjTraffSTATUS: TIntegerField;
    upP_ORDS: TIBUpdateSQL;
    qVER: TIBQuery;
    dsVER: TDataSource;
    qVERID_VERSION: TIntegerField;
    qVERNAME: TIBStringField;
    qVERDATA: TDateTimeField;
    qVERCREATER: TIntegerField;
    qVERSTATUS: TIntegerField;
    qVERREM: TMemoField;
    qVERfIO: TStringField;
    qVERID_OBJECT: TIntegerField;
    qOBJ_OPER: TIBQuery;
    qOBJ_OPERID_PROD_OPER: TIntegerField;
    qOBJ_OPERID_AREA: TIntegerField;
    qOBJ_OPERID_OPERATION: TIntegerField;
    qOBJ_OPERSTEP: TIntegerField;
    qOBJ_OPERNAME: TIBStringField;
    qOBJ_OPERANAME: TIBStringField;
    qOBJ_OPERREM: TMemoField;
    dsOBJ_OPER: TDataSource;
    qOPER_MAT: TIBQuery;
    qOPER_MATID_PROD_OPER: TIntegerField;
    qOPER_MATID_ITEM: TIntegerField;
    qOPER_MATAMOUNT: TFloatField;
    qOPER_MATWASTE: TIBBCDField;
    qOPER_MATDEFECT: TIBBCDField;
    qOPER_MATLENG: TFloatField;
    qOPER_MATWIDTH: TFloatField;
    qOPER_MATHEIGHT: TFloatField;
    qOPER_MATREM: TBlobField;
    qOPER_MATNAME: TIBStringField;
    dsOPER_MAT: TDataSource;
    qOBJ_DOCS: TIBQuery;
    qOBJ_DOCSID_PROD_DOC: TIntegerField;
    qOBJ_DOCSID_PRODUCT: TIntegerField;
    qOBJ_DOCSID_OBJECT: TIntegerField;
    qOBJ_DOCSDOC_TYPE: TIntegerField;
    qOBJ_DOCSD_CONFIRM: TDateTimeField;
    qOBJ_DOCSID_CONFIRM: TIntegerField;
    qOBJ_DOCSID_DOC: TIntegerField;
    qOBJ_DOCSNAME: TIBStringField;
    dsOBJ_DOCS: TDataSource;
    qOBJ: TIBQuery;
    qOBJID_OBJECT: TIntegerField;
    qOBJNAME: TIBStringField;
    qOBJOBJ_TYPE: TIntegerField;
    qOBJAMOUNT: TIBBCDField;
    qOBJREM: TMemoField;
    dsOBJ: TDataSource;
    qS_BODY: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    BlobField1: TBlobField;
    qW_TIME: TIBQuery;
    qOBJnTYPE: TStringField;
    dsW_TIME: TDataSource;
    qW_TIMEAMOUNT_TIME: TFloatField;
    qOS_AMOUNT: TIBQuery;
    dsOS_AM: TDataSource;
    qOS_AMOUNTAMOUNT: TFloatField;
    qPrjPlanSTATUS: TIntegerField;
    qP_ORDSID_DOC: TIntegerField;
    qPrjID_DESIGNER: TIntegerField;
    qDOCGraph: TStringField;
    qUSERS: TIBQuery;
    dsUSERS: TDataSource;
    qUSERSID_P: TIntegerField;
    qUSERSFIO: TIBStringField;
    qP_ORDSfOPEN: TStringField;
    qP_ORDSfCONSTR: TStringField;
    qP_ORDSPRICE: TIBBCDField;
    qP_ORDSPRICEA: TIBBCDField;
    qP_ORDSID_CURRENCY: TIntegerField;
    qP_ORDSID_CPTYPE: TIntegerField;
    qP_ORDSID_CPROD: TIntegerField;
    qP_ORDSID_AGENT: TIntegerField;
    qDOCiSSTR: TIntegerField;
    qD_FILL: TIBQuery;
    dsD_FILL: TDataSource;
    qD_GET: TIBQuery;
    dsD_GET: TDataSource;
    qD_FILLID_POST: TIntegerField;
    qD_FILLSTATUS: TIntegerField;
    qD_FILLNAME: TIBStringField;
    qD_GETID_POST: TIntegerField;
    qD_GETSTATUS: TIntegerField;
    qD_GETNAME: TIBStringField;
    qCliOrd: TIBQuery;
    dsCliOrd: TDataSource;
    qCliOrdID_ORDER: TIntegerField;
    qCliOrdNAME: TIBStringField;
    qCliOrdAMOUNT: TIBBCDField;
    qCliOrdN_ORDER: TIBStringField;
    qCliOrdID_C: TIntegerField;
    qCliOrdD_OPEN: TDateTimeField;
    qCliOrdD_CLOSE: TDateTimeField;
    qCliOrdID_CLOSE: TIntegerField;
    qCliOrdD_FIX: TDateTimeField;
    qCliOrdID_FIX: TIntegerField;
    qCliOrdID_DOC: TIntegerField;
    qCliOrdD_INPROD: TDateTimeField;
    qCliOrdID_INPROD: TIntegerField;
    qCliOrdD_REJECT: TDateTimeField;
    qCliOrdID_REJECTOR: TIntegerField;
    qCliOrdPRICE: TIBBCDField;
    qCliOrdPRICEA: TIBBCDField;
    qCliOrdID_CURRENCY: TIntegerField;
    qCliOrdID_CPTYPE: TIntegerField;
    qCliOrdID_CPROD: TIntegerField;
    qCliOrdID_AGENT: TIntegerField;
    qCliOrdD_MAT: TDateField;
    qCliOrdfOPEN: TStringField;
    qCliOrdnDOC: TStringField;
    qCliOrdID_OPEN: TIntegerField;
    qPrjD_EDIT: TDateTimeField;
    qPrjD_FIX: TDateTimeField;
    qPrjID_FIX: TIntegerField;
    qAg: TIBQuery;
    dsAg: TDataSource;
    qAgID_ITEM: TIntegerField;
    qAgNAME: TIBStringField;
    qD_FILLALL_PROJ: TIntegerField;
    qD_GETALL_PROJ: TIntegerField;
    qD_GETaLL: TStringField;
    qD_FILLaLL: TStringField;
    qFILL_D: TIBQuery;
    dsFILL_D: TDataSource;
    qFILL_DID_PROJECT_DOC: TIntegerField;
    qFILL_DID_POST: TIntegerField;
    qFILL_DID_P: TIntegerField;
    qFILL_DD_FILL: TDateTimeField;
    qFILL_DSTATUS: TIntegerField;
    qFILL_DNAME: TIBStringField;
    qFILL_DFIO: TIBStringField;
    qCURR: TIBQuery;
    qCURRID_CURRENCY: TSmallintField;
    qCURRNAME: TIBStringField;
    qPrjSUMMA: TFloatField;
    qPrjEXPENSES: TFloatField;
    qPrjCURRENCY: TIntegerField;
    qPrjDATAEND: TDateField;
    dsCURR: TDataSource;
    qPrjfILL: TStringField;
    qPrjfIX: TStringField;
    qCURRMARK: TIBStringField;
    qPrjD_DACCEPT: TDateTimeField;
    qPrjID_DACCEPTOR: TIntegerField;
    qPrjdACCEPTOR: TStringField;
    qFILL_DF_TYPE: TIntegerField;
    qFILL_DCOMMENT: TMemoField;
    qDOCnSTATUS: TStringField;
    qFILL_DnFILL: TStringField;
    qD_FILLPOSIT: TIntegerField;
    upD_FILL: TIBUpdateSQL;
    qIN_G: TIBQuery;
    dsIN_G: TDataSource;
    qIN_GID_PROJ_DOC: TIntegerField;
    qIN_GDNAME: TIBStringField;
    qIN_GDTYPE: TIntegerField;
    qIN_GID_DRAFT: TIntegerField;
    qIN_GD_DOC: TDateField;
    qIN_GDS: TIntegerField;
    qIN_GID_FILL: TIntegerField;
    qIN_GID_PROJECT: TIntegerField;
    qIN_GPNAME: TIBStringField;
    qIN_GPTYPE: TIntegerField;
    qIN_GID_AGENT: TIntegerField;
    qIN_GID_MAN: TIntegerField;
    qIN_GID_DES: TIntegerField;
    qIN_GNDTYPE: TIBStringField;
    qIN_GnAGENT: TStringField;
    qIN_GmANAGER: TStringField;
    qIN_GdESIGNER: TStringField;
    qIN_GFIO: TIBStringField;
    qIN_GgRAPH: TStringField;
    qIN_GfILL: TStringField;
    qIN_F: TIBQuery;
    qIN_FnAGENT: TStringField;
    qIN_FmANAGER: TStringField;
    qIN_FdESIGNER: TStringField;
    qIN_FgRAPH: TStringField;
    qIN_FfILL: TStringField;
    dsIN_F: TDataSource;
    qIN_FID_PROJ_DOC: TIntegerField;
    qIN_FDNAME: TIBStringField;
    qIN_FDTYPE: TIntegerField;
    qIN_FID_DRAFT: TIntegerField;
    qIN_FD_DOC: TDateField;
    qIN_FDS: TIntegerField;
    qIN_FID_FILL: TIntegerField;
    qIN_FID_PROJECT: TIntegerField;
    qIN_FPNAME: TIBStringField;
    qIN_FPTYPE: TIntegerField;
    qIN_FID_AGENT: TIntegerField;
    qIN_FID_MAN: TIntegerField;
    qIN_FID_DES: TIntegerField;
    qIN_FNDTYPE: TIBStringField;
    qIN_FFIO: TIBStringField;
    qCFIO: TIBQuery;
    qCFIOID_P: TIntegerField;
    qCFIOFIO: TIBStringField;
    dsCFIO: TDataSource;
    qHEst: TIBQuery;
    qHEstID_ESTIMATE: TIntegerField;
    qHEstID_PRODUCT: TIntegerField;
    qHEstID_VERSION: TIntegerField;
    qHEstNAME: TIBStringField;
    dsHEst: TDataSource;
    qHEstID_OBJECT: TIntegerField;
    qHEstD_CREATE: TDateTimeField;
    qHEstPRICE_DATA: TDateField;
    qHEstFIO: TIBStringField;
    qCliOrdID_PRODUCT: TIntegerField;
    qCliOrdD_CONSTR: TDateField;
    qCliOrdID_CONSTR: TIntegerField;
    qCliOrdID_VERSION: TIntegerField;
    qP_ORDSID_VERSION: TIntegerField;
    qP_ORDSF_CONSTR: TDateTimeField;
    qP_ORDSID_ESTIMATE: TIntegerField;
    qOrd_PF: TIBQuery;
    qOrd_PFC_D: TDateField;
    qOrd_PFPLAN_SHIPP: TFloatField;
    qOrd_PFPRODUCED: TFloatField;
    qOrd_PFSHIP: TFloatField;
    qOrd_PFRECIEV: TFloatField;
    dsOrd_PF: TDataSource;
    dsOrd_S: TDataSource;
    qOrd_S: TIBQuery;
    qOrd_SID_ORD_EVENT: TIntegerField;
    qOrd_SNAME_EVENT: TIBStringField;
    qOrd_SD_PLAN: TDateTimeField;
    qOrd_SID_PLAN: TIntegerField;
    qOrd_SFIO_PLAN: TIBStringField;
    qOrd_SD_FACT: TDateTimeField;
    qOrd_SID_FACT: TIntegerField;
    qOrd_SFIO_FACT: TIBStringField;
    qP_ORDSAGENT: TIBStringField;
    qP_ORDSNPTYPE: TIBStringField;
    qP_ORDSNPROD: TIBStringField;
    qP_ORDSNCURR: TIBStringField;
    qPRODS: TIBQuery;
    qPRODSID_P_AREA: TIntegerField;
    qPRODSNAME: TIBStringField;
    qPRODSID_C: TIntegerField;
    dsPRODS: TDataSource;
    qPTPS: TIBQuery;
    dsPTPS: TDataSource;
    qPTPSID_PTYPE: TIntegerField;
    qPTPSNAME: TIBStringField;
    qPTPSID_C: TIntegerField;
    qPTPSID_P: TIntegerField;
    qPTPSREC: TIntegerField;
    qBDOC: TIBQuery;
    dsBDOC: TDataSource;
    qBDOCID_PROJECT_DOC: TIntegerField;
    qBDOCNAME: TIBStringField;
    qBDOCTNAME: TIBStringField;
    qPL_SH: TIBQuery;
    dsPL_SH: TDataSource;
    upPL_SH: TIBUpdateSQL;
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
    qP_ORDSD_REJECT: TDateTimeField;
    qP_ORDSID_REJECTOR: TIntegerField;
    qP_ORDSID_CHIEF: TIntegerField;
    qP_ORDSREM: TMemoField;
    qORD_POS: TIBQuery;
    dsORD_POS: TDataSource;
    upORD_POS: TIBUpdateSQL;
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
    qREG: TIBQuery;
    dsREG: TDataSource;
    upREG: TIBUpdateSQL;
    qREGID_REGION: TIntegerField;
    qREGNAME: TIBStringField;
    qREGID_TERMINAL: TIntegerField;
    qREG_MAN: TIBQuery;
    dsREG_MAN: TDataSource;
    qREG_MANID_P: TIntegerField;
    qREG_MANID_C_MAN: TIntegerField;
    qREG_MANFIO: TIBStringField;
    qREG_MANNAME: TIBStringField;
    qORD_POSsUMPRICE: TFloatField;
    qIIN: TIBQuery;
    qHEstDOP_PRICE: TFloatField;
    qPlanSH: TIBQuery;
    qPlanSHID_ORDER: TIntegerField;
    qPlanSHID_C: TIntegerField;
    qPlanSHN_ORDER: TIBStringField;
    qPlanSHNAME: TIBStringField;
    qPlanSHAMOUNT: TFloatField;
    qPlanSHPRICE: TFloatField;
    qPlanSHID_CURRENCY: TIntegerField;
    qPlanSHNCURR: TIBStringField;
    qPlanSHID_AGENT: TIntegerField;
    qPlanSHAGENT: TIBStringField;
    qPlanSHID_MANAGER: TIntegerField;
    qPlanSHMANAGER: TIBStringField;
    qPlanSHID_CPROD: TIntegerField;
    qPlanSHNPROD: TIBStringField;
    qPlanSHID_CPTYPE: TIntegerField;
    qPlanSHNCPTYPE: TIBStringField;
    qPlanSHRATE: TFloatField;
    qPlanSHDEF_PRICE: TFloatField;
    qPlanSHPLAN_AMOUNT: TFloatField;
    qPlanSHPROGN_AMOUNT: TFloatField;
    qPlanSHPLAN_SUMMA: TFloatField;
    qPlanSHPRODUCED_FROM: TFloatField;
    qPlanSHPRODUCED: TFloatField;
    qPlanSHPRODUSED_SUMMA: TFloatField;
    qPlanSHIN_PLAN: TIntegerField;
    qPlanSHPROGN_SUMMA: TFloatField;
    dsPlanSH: TDataSource;
    qMAN: TIBQuery;
    qMANID_P: TIntegerField;
    qMANFIO: TIBStringField;
    qORD_AG: TIBQuery;
    dsMan: TDataSource;
    dsORD_AG: TDataSource;
    qSumPlan: TIBQuery;
    qORD_AGID_ITEM: TIntegerField;
    qORD_AGNAME: TIBStringField;
    qSumPlanID_PROD: TIntegerField;
    qSumPlanNPROD: TIBStringField;
    qSumPlanID_PTYPE: TIntegerField;
    qSumPlanNPTYPE: TIBStringField;
    qSumPlanY_EAR: TIntegerField;
    qSumPlanM_ONTH: TIntegerField;
    qSumPlanSHIPP_IN: TFloatField;
    qSumPlanPLAN_IN: TFloatField;
    qSumPlanPROC_PROD: TSmallintField;
    qSumPlanPROGN: TFloatField;
    qP_ORDSIS_CHARGE: TIntegerField;
    qP_ORDSIS_OS: TIntegerField;
    qW_BODY: TIBQuery;
    qW_BODYID_DOC: TIntegerField;
    qW_BODYFILENAME: TIBStringField;
    qW_BODYBODY: TBlobField;
    qUrAg: TIBQuery;
    dsUrAg: TDataSource;
    qUrAgINN: TIBStringField;
    qUrAgNAME: TIBStringField;
    qUrAgDOG_NUMBER: TIBStringField;
    qUrAgADRES1: TIBStringField;
    qUrAgADRES2: TIBStringField;
    qUrAgFIOFIRM: TIBStringField;
    qUrAgFIOBYX: TIBStringField;
    qUrAgTEL: TIBStringField;
    qUrAgDOLFIRM: TIBStringField;
    qUrAgDOLBYX: TIBStringField;
    qUrAgOKOHX: TIBStringField;
    qUrAgOKPO: TIBStringField;
    qUrAgKPP: TIBStringField;
    qUrAgOGRN: TIBStringField;
    qUrAgOKVED: TIBStringField;
    qUrAgMARK: TSmallintField;
    qUrAgOKUD: TIBStringField;
    qAINN: TIBQuery;
    dsAINN: TDataSource;
    qAINNID_ITEM: TIntegerField;
    qAINNINN: TIBStringField;
    qAINNDEF_ACCOUNT: TIntegerField;
    qAgID_C: TIntegerField;
    qAgID_AX: TIBStringField;
    qAINNID_ACCOUNTS: TIntegerField;
    qAINNRCH: TIBStringField;
    qAINNBIK: TIBStringField;
    qAINNNAME_BIK: TIBStringField;
    qAINNKORCH: TIBStringField;
    qAINNFILIAL: TIBStringField;
    qContr: TIBQuery;
    dsContr: TDataSource;
    qContrID_DOGOVOR: TIntegerField;
    qContrINN: TIBStringField;
    qContrDOG_NUMBER: TIBStringField;
    qContrDOG_DATE_IN: TDateField;
    qContrDOG_DATE_OUT: TDateField;
    qContrID_AGENT: TIntegerField;
    qContrID_CURRENCY: TIntegerField;
    qContrDOG_NUMBER_: TIBStringField;
    qContrVID: TIntegerField;
    qContrKOL_DAY: TIntegerField;
    qContrID_TYPEOPL: TIntegerField;
    qContrPROC: TFloatField;
    qContrDOG_OBJ: TMemoField;
    qContrREM: TMemoField;
    qContrPIOPLE: TMemoField;
    qContrEMAIL: TMemoField;
    qContrSTATUS: TIBStringField;
    qContrID_DOGOVOR_TYPES: TIntegerField;
    qContrNAME: TIBStringField;
    qContrCNAME: TIBStringField;
    qPrDocs: TIBQuery;
    dsPrDocs: TDataSource;
    qPrDocsID_PROJECT_DOC: TIntegerField;
    qPrDocsID_PROJECT: TIntegerField;
    qPrDocsNAME: TIBStringField;
    qPrDocsDOC_TYPE: TIntegerField;
    qPrDocsNUMBER: TIBStringField;
    qPrDocsD_DOC: TDateField;
    qPrDocsD_IN: TDateField;
    qPrDocsD_OUT: TDateField;
    qPrDocsD_PROD: TDateField;
    qPrDocsD_SHIPP: TDateField;
    qPrDocsD_FIX: TDateTimeField;
    qPrDocsID_FIX: TIntegerField;
    qPrDocsSTATUS: TIntegerField;
    qPrDocsID_DRAFT: TIntegerField;
    qPrDocsID_FOTO: TIntegerField;
    qPrDocsID_SDOC: TIntegerField;
    qPrDocsD_FILL: TDateTimeField;
    qPrDocsID_FILL: TIntegerField;
    qPrDocsNTYPE: TIBStringField;
    qPrDocsAGENT: TIBStringField;
    qPrDocsFIO: TIBStringField;
    qPrDocsPNAME: TIBStringField;
    qPrDocsID_AGENT: TIntegerField;
    qDTyp: TIBQuery;
    qDTypID_PROJ_DOC_TYPE: TIntegerField;
    qDTypIS_STRUCTURED: TSmallintField;
    qDTypNAME: TIBStringField;
    qDTypSYS: TIntegerField;
    dsDTyp: TDataSource;
    qID_FIX: TIBQuery;
    dsID_FIX: TDataSource;
    qID_FIXID_P: TIntegerField;
    qID_FIXFIO: TIBStringField;
    qPrDocsFILL: TIBStringField;
    qOrdProd: TIBQuery;
    dsOrdProd: TDataSource;
    qOrdProdID_ORDER: TIntegerField;
    qOrdProdN_ORDER: TIBStringField;
    qOrdProdID_PROJECT: TIntegerField;
    qOrdProdID_MANAGER: TIntegerField;
    qOrdProdMANAGER: TIBStringField;
    qOrdProdPNAME: TIBStringField;
    qOrdProdTPNAME: TIBStringField;
    qOrdProdDESIGNER: TIBStringField;
    qOrdProdID_PROJECT_DOC: TIntegerField;
    qOrdProdID_DRAFT: TIntegerField;
    qOrdProdID_AGENT: TIntegerField;
    qOrdProdAGENT: TIBStringField;
    qOrdProdPRICE: TIBBCDField;
    qOrdProdCURR: TIBStringField;
    qCountDoc: TIBQuery;
    qCountDocDOC_TYPE: TIntegerField;
    qCountDocNAME: TIBStringField;
    qCountDocCOUNT: TIntegerField;
    dsCountDoc: TDataSource;
    qPrjAMOUNT: TFloatField;
    qPrjDEF_SUM: TFloatField;
    qORD_POSID_UNIT: TIntegerField;
    qUNITS: TIBQuery;
    qUNITSID_UNIT: TIntegerField;
    qUNITSNAME: TIBStringField;
    qORD_POSnUNIT: TStringField;
    qEstReq: TIBQuery;
    dsEstReq: TDataSource;
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
    qEstReqGraph: TStringField;
    qEstReqFill: TStringField;
    mmT: TIBTransaction;
    qIM: TIBQuery;
    qEstReqD_CREATE: TDateTimeField;
    qEstReqID_CREATOR: TIntegerField;
    qEstReqCREATOR: TIBStringField;
    qOrd_PFPROD_PLAN: TFloatField;
    qPrjMANAGER: TIBStringField;
    qPrjDESIGNER: TIBStringField;
    qPrjNCURR: TIBStringField;
    qP_ORDSSHIP: TFloatField;
    qPL_SHADRESS: TMemoField;
    qORD_POSNDS: TFloatField;
    qP_ORDSFILL: TIBStringField;
    qP_ORDSNSTAT: TIBStringField;
    qP_ORDSNDOC: TIBStringField;
    qSH_BODY: TIBQuery;
    IntegerField2: TIntegerField;
    IBStringField2: TIBStringField;
    BlobField2: TBlobField;
    qP_ORDSID_DOGOVOR: TIntegerField;
    qP_ORDSDOG_NUMBER: TIBStringField;
    qP_ORDSDOG_NUMBER_: TIBStringField;
    qP_ORDSDOG_DATE_IN: TDateField;
    qOrd_PFO_D: TDateField;
    qOrd_PFO3_D: TDateField;
    qOrd_PFDOG_NUMBER: TIBStringField;
    qOrd_PFKOL_DAY: TIntegerField;
    qOrd_PFVID: TIBStringField;
    qP_ORDSDELIVERY_SUM: TFloatField;
    upBody2: TIBQuery;
    qEstReqNAME: TIBStringField;
    qORD_POSS: TFloatField;
    qPL_SHID_DELIVERY_TYPE: TIntegerField;
    qPL_SHID_REGION: TIntegerField;
    qPL_SHOBJ_TYPE: TIntegerField;
    qPL_SHID_CAR_TYPE: TIntegerField;
    qPL_SHWEIGHT: TFloatField;
    qPL_SHDELIVERY_AMOUNT: TFloatField;
    qPL_SHDELIVERY_COST: TFloatField;
    qEstReqREM: TBlobField;
    qP_ORDSORD_KIND: TIntegerField;
    qP_ORDSORDKIND: TIBStringField;
    qORD_POSPRICE_BEZ_NDS: TFloatField;
    qORD_POSPRICEA_BEZ_NDS: TFloatField;
    qORD_POSsUMPRICE_BEZ_NDS: TFloatField;
    qPlanSHPRICE_BEZ_NDS: TFloatField;
    qPlanSHDEF_PRICE_BEZ_NDS: TFloatField;
    qPlanSHPLAN_SUMMA_BEZ_NDS: TFloatField;
    qPlanSHPRODUSED_SUMMA_BEZ_NDS: TFloatField;
    qOrdProdPRICE_BEZ_NDS: TFloatField;
    qP_ORDSIS_SELF: TIntegerField;
    qP_ORDSNAME_UR: TIBStringField;
    qP_ORDSNACH: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qDOCCalcFields(DataSet: TDataSet);
    procedure qCOrdersCalcFields(DataSet: TDataSet);
    procedure qPrjPlanNewRecord(DataSet: TDataSet);
    procedure qPrjPlanBeforePost(DataSet: TDataSet);
    procedure qCliPrjAfterScroll(DataSet: TDataSet);
    procedure qDOCNewRecord(DataSet: TDataSet);
    procedure qDOC_TYPECalcFields(DataSet: TDataSet);
    procedure qDOCAfterScroll(DataSet: TDataSet);
    procedure qDOCBeforePost(DataSet: TDataSet);
    procedure qOBJCalcFields(DataSet: TDataSet);
    procedure qDOC_TYPEAfterScroll(DataSet: TDataSet);
    procedure qD_FILLCalcFields(DataSet: TDataSet);
    procedure qD_GETCalcFields(DataSet: TDataSet);
    procedure qPrjCalcFields(DataSet: TDataSet);
    procedure qFILL_DCalcFields(DataSet: TDataSet);
    procedure qD_FILLNewRecord(DataSet: TDataSet);
    procedure qD_FILLBeforeDelete(DataSet: TDataSet);
    procedure qDOC_TYPEBeforeDelete(DataSet: TDataSet);
    procedure qIN_GAfterScroll(DataSet: TDataSet);
    procedure qIN_GCalcFields(DataSet: TDataSet);
    procedure qIN_FAfterScroll(DataSet: TDataSet);
    procedure qIN_FCalcFields(DataSet: TDataSet);
    procedure qPL_SHBeforePost(DataSet: TDataSet);
    procedure qPL_SHNewRecord(DataSet: TDataSet);
    procedure qPL_SHAfterPost(DataSet: TDataSet);
    procedure qP_ORDSCalcFields(DataSet: TDataSet);
    procedure qORD_POSAfterPost(DataSet: TDataSet);
    procedure qORD_POSBeforePost(DataSet: TDataSet);
    procedure qORD_POSNewRecord(DataSet: TDataSet);
    procedure qORD_POSCalcFields(DataSet: TDataSet);
    procedure qEstReqCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmIS: TdmIS;

implementation
uses unMain, unNewPrj, unPrj_S, unPrjDocType, unINDOCS, unNewOrd, uAll;

{$R *.dfm}

procedure TdmIS.DataModuleCreate(Sender: TObject);
var
  CPW: string;
begin
 { dmIS.dbDOC.Connected := False;
  if SysVars.DBDoc <> '' then
    dmIS.dbDOC.DatabaseName := SysVars.DBDoc; }

  dmIS.dbIS.Connected := False;
  if SysVars.DBServ <> '' then
    dmIS.dbIS.DatabaseName := SysVars.DBServ;
  dmIS.dbIS.Connected := True;
  dmIS.qIN.Active := False;
  dmIS.qIN.SQL.Clear;
  dmIS.qIN.SQL.Add('SELECT ID_P, FIO, IDPOST, ACCESS_KEY ');
  dmIS.qIN.SQL.Add('FROM PERSONNEL');
  dmIS.qIN.SQL.Add('WHERE ID_P = ' + IntToStr(SysVars.RegTN));
  try
    dmIS.qIN.Active := True;
  except;
    exit;
  end;
//  SysVars.RegPost := dmIS.qIN.FieldByName('IDPOST').AsInteger;
 // SysVars.FReg := qIN.FieldByName('FIO').AsString;
 // SysVars.RegAccess := qIN.FieldByName('ACCESS_KEY').AsInteger;
  fmMain.stb1.Panels[0].Text := SysVars.FReg;
  qIN.Active := False;
  SysVars.NReg := SysVars.FReg;
  Delete(SysVars.NReg, 1, Pos(' ', SysVars.FReg));
  qIN.SQL.Clear;
  qIN.SQL.Add('SELECT * FROM P_F');
  qIN.SQL.Add('WHERE IDPOST = ' + IntToStr(SysVars.RegPost));
  try
    qIN.Active := True;
  except;
  end;
  fmMain.UF0 := dmIS.qIN.Locate('IDF', 0, []) or (SysVars.RegAccess = 0);
  fmMain.UF11 := dmIS.qIN.Locate('IDF', 11, []) or (SysVars.RegAccess = 0);
  fmMain.UF14 := dmIS.qIN.Locate('IDF', 14, []) or (SysVars.RegAccess = 0);
  fmMain.UF15 := dmIS.qIN.Locate('IDF', 15, []) or (SysVars.RegAccess = 0);
  fmMain.UF16 := dmIS.qIN.Locate('IDF', 16, []) or (SysVars.RegAccess = 0);
  fmMain.UF17 := dmIS.qIN.Locate('IDF', 17, []) or (SysVars.RegAccess = 0);
  fmMain.UF18 := dmIS.qIN.Locate('IDF', 18, []) or (SysVars.RegAccess = 0);
  fmMain.UF19 := dmIS.qIN.Locate('IDF', 19, []) or (SysVars.RegAccess = 0);
  fmMain.UF20 := dmIS.qIN.Locate('IDF', 20, []) or (SysVars.RegAccess = 0);
  fmMain.UF29 := dmIS.qIN.Locate('IDF', 29, []) or (SysVars.RegAccess = 0);
  fmMain.UF30 := dmIS.qIN.Locate('IDF', 30, []) or (SysVars.RegAccess = 0);
  fmMain.UF32 := dmIS.qIN.Locate('IDF', 32, []) or (SysVars.RegAccess = 0);
  fmMain.UF37 := dmIS.qIN.Locate('IDF', 37, []) or (SysVars.RegAccess = 0);
  fmMain.UF38 := dmIS.qIN.Locate('IDF', 38, []) or (SysVars.RegAccess = 0);
  fmMain.UF40 := dmIS.qIN.Locate('IDF', 40, []) or (SysVars.RegAccess = 0);
  fmMain.UF41 := dmIS.qIN.Locate('IDF', 41, []) or (SysVars.RegAccess = 0);
  fmMain.UF42 := dmIS.qIN.Locate('IDF', 42, []) or (SysVars.RegAccess = 0);
  fmMain.UF50 := dmIS.qIN.Locate('IDF', 50, []) or (SysVars.RegAccess = 0);
  fmMain.UF53 := dmIS.qIN.Locate('IDF', 53, []) or (SysVars.RegAccess = 0);
  fmMain.UF54 := dmIS.qIN.Locate('IDF', 54, []) or (SysVars.RegAccess = 0);
  fmMain.UF64 := dmIS.qIN.Locate('IDF', 64, []) or (SysVars.RegAccess = 0);
  fmMain.UF71 := dmIS.qIN.Locate('IDF', 71, []) or (SysVars.RegAccess = 0);
  fmMain.UF78 := dmIS.qIN.Locate('IDF', 78, []) or (SysVars.RegAccess = 0);
  fmMain.UF79 := dmIS.qIN.Locate('IDF', 79, []) or (SysVars.RegAccess = 0);
  fmMain.UF80 := dmIS.qIN.Locate('IDF', 80, []) or (SysVars.RegAccess = 0);
  fmMain.UF89 := dmIS.qIN.Locate('IDF', 89, []) or (SysVars.RegAccess = 0);
  fmMain.UF101 := dmIS.qIN.Locate('IDF', 101, []) or (SysVars.RegAccess = 0);
  fmMain.UF102 := dmIS.qIN.Locate('IDF', 102, []) or (SysVars.RegAccess = 0);
  fmMain.UF103 := dmIS.qIN.Locate('IDF', 103, []) or (SysVars.RegAccess = 0);
  fmMain.UF104 := dmIS.qIN.Locate('IDF', 104, []) or (SysVars.RegAccess = 0);
  fmMain.UF105 := dmIS.qIN.Locate('IDF', 105, []) or (SysVars.RegAccess = 0);
  fmMain.UF118 := dmIS.qIN.Locate('IDF', 118, []) or (SysVars.RegAccess = 0);
  fmMain.UF119 := dmIS.qIN.Locate('IDF', 119, []) or (SysVars.RegAccess = 0);
  fmMain.UF123 := dmIS.qIN.Locate('IDF', 123, []) or (SysVars.RegAccess = 0);
  fmMain.UF124 := dmIS.qIN.Locate('IDF', 124, []) or (SysVars.RegAccess = 0);
  fmMain.UF131 := dmIS.qIN.Locate('IDF', 131, []) or (SysVars.RegAccess = 0);
  fmMain.UF130 := dmIS.qIN.Locate('IDF', 130, []) or (SysVars.RegAccess = 0);
  fmMain.UF134 := dmIS.qIN.Locate('IDF', 134, []) or (SysVars.RegAccess = 0);
  fmMain.UF138 := dmIS.qIN.Locate('IDF', 138, []) or (SysVars.RegAccess = 0);
  fmMain.UF147 := dmIS.qIN.Locate('IDF', 147, []) or (SysVars.RegAccess = 0);
  fmMain.UF143 := dmIS.qIN.Locate('IDF', 143, []);
  qIN.Active := False;

  dmIS.C_db.Connected := False;
  CPW := TParamValue(ReadParam(dmIS.qIN, 200, 18)).BigVal;
  dmIS.C_db.Params.Add('password=' + CPW);
  if SysVars.CDBSrv <> '' then

    dmIS.C_db.DatabaseName := SysVars.CDBSrv;


  fmMain.S19 := ReadSysIntParam(dmIS.qIM, 19); //���� ������ �������������
  fmMain.S35 := ReadSysIntParam(dmIS.qIM, 35); //��������� ���� ����� �����
  fmMain.S36 := ReadSysIntParam(dmIS.qIM, 36); //���� ����� �����
  fmMain.S51 := ReadSysIntParam(dmIS.qIM, 51); //����� ����������?
  fmMain.S59 := ReadSysIntParam(dmIS.qIM, 59); //����� ����������?

  fmMAin.SINPATH := ReadSysModStrParam(dmIS.qIM, 1, 18);
end;

procedure TdmIS.qDOCCalcFields(DataSet: TDataSet);
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
    1: qDOCnSTATUS.AsString := '�����';
    2: qDOCnSTATUS.AsString := '� �����������';
    3: qDOCnSTATUS.AsString := '���������';
    4: qDOCnSTATUS.AsString := '��������';
  end;
end;

procedure TdmIS.qCOrdersCalcFields(DataSet: TDataSet);
begin
  if dmIS.qCOrdersREJECT.IsNull then
    dmIS.qCOrdersRej.Value := ''
  else
    dmIS.qCOrdersRej.Value := 'O';
end;

procedure TdmIS.qPrjPlanNewRecord(DataSet: TDataSet);
begin
  qPrjPlan.Cancel;
end;

procedure TdmIS.qPrjPlanBeforePost(DataSet: TDataSet);
begin
  qPrjPlanID_PLAN.AsInteger := SysVars.RegTN;
end;

procedure TdmIS.qCliPrjAfterScroll(DataSet: TDataSet);
begin
  fmNewPrj.FindInTree(dmIS.qCliPrjID.AsInteger);
end;

procedure TdmIS.qDOCNewRecord(DataSet: TDataSet);
begin
  dmIS.qDOCID_PROJECT.AsInteger := dmIS.qDOC.ParamByName('pr1').AsInteger;
  qDOCSTATUS.AsInteger := 1;
end;

procedure TdmIS.qDOC_TYPECalcFields(DataSet: TDataSet);
begin
  if dmIS.qDOC_TYPEIS_STRUCTURED.IsNull then
    dmIS.qDOC_TYPEsTR.AsString := ''
  else
    dmIS.qDOC_TYPEsTR.AsString := '*';
end;

procedure TdmIS.qDOCAfterScroll(DataSet: TDataSet);
begin

  if (fmPrj_S.Showing) then
  begin
    fmPrj_S.tb5.Enabled := not dmIS.qDOCID_DRAFT.IsNull;
    fmPrj_S.tb9.Enabled := not dmIS.qDOCID_DRAFT.IsNull;
    fmPrj_S.tb7.Enabled := (not dmIS.qDOCID_DRAFT.IsNull) and fmMain.UF15;
  end;

end;

procedure TdmIS.qDOCBeforePost(DataSet: TDataSet);
begin
  if (not dmIS.qDOCD_FILL.IsNull) or (dmIS.qDOCSTATUS.AsInteger in [2, 3, 4])
    then
  begin
    MsgInformation('�������� � ����������� ��� ���������. �������������� ���������', '�������� �������');
    qDOC.Cancel;
    Abort;
    exit;
  end;
  if (dmIS.qDOCNAME.IsNull) or (dmIS.qDOCNAME.AsString = '') then
  begin
    MsgInformation('�� ������ �������� ���������', '�������� ������');
    Abort;
    exit;
  end;
  if (dmIS.qDOCD_DOC.IsNull) then
  begin
    MsgInformation('�� ������ ���� ���������', '�������� ������');
    Abort;
    exit;
  end;
  dmIS.qDOCID_FIX.AsInteger := SysVars.RegTN;
end;

procedure TdmIS.qOBJCalcFields(DataSet: TDataSet);
begin
  case dmIS.qOBJOBJ_TYPE.AsInteger of
    0: dmIS.qOBJnTYPE.AsString := '������';
    1: dmIS.qOBJnTYPE.AsString := '�������������';
    2: dmIS.qOBJnTYPE.AsString := '��������';
    3: dmIS.qOBJnTYPE.AsString := '����';
    4: dmIS.qOBJnTYPE.AsString := '�������';
  end;
end;

procedure TdmIS.qDOC_TYPEAfterScroll(DataSet: TDataSet);
begin

  if assigned(fmPrjDocType) then
    if fmPrjDocType.Showing then
      fmPrjDocType.OpenFill;

end;

procedure TdmIS.qD_FILLCalcFields(DataSet: TDataSet);
begin
  if dmIS.qD_FILLALL_PROJ.IsNull then
    dmIS.qD_FILLaLL.Clear
  else
    dmIS.qD_FILLaLL.AsString := '*';
end;

procedure TdmIS.qD_GETCalcFields(DataSet: TDataSet);
begin
  if dmIS.qD_GETALL_PROJ.IsNull then
    dmIS.qD_GETaLL.Clear
  else
    dmIS.qD_GETaLL.AsString := '*';
end;

procedure TdmIS.qPrjCalcFields(DataSet: TDataSet);
begin
  if dmIS.qPrjD_FIX.IsNull then
    dmIS.qPrjfILL.Clear
  else
    dmIS.qPrjfILL.AsString := '*';
end;

procedure TdmIS.qFILL_DCalcFields(DataSet: TDataSet);
begin
  case dmIS.qFILL_DF_TYPE.AsInteger of
    0: dmIS.qFILL_DnFILL.AsString := '��������';
    1: dmIS.qFILL_DnFILL.AsString := '��������';
  end;
end;

procedure TdmIS.qD_FILLNewRecord(DataSet: TDataSet);
begin
  dmIS.qD_FILL.Cancel;
end;

procedure TdmIS.qD_FILLBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TdmIS.qDOC_TYPEBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TdmIS.qIN_GAfterScroll(DataSet: TDataSet);
begin
  if fmINDOCS.Showing then
    fmINDOCS.OpenFills(dmIS.qIN_GID_PROJ_DOC.AsInteger);
end;

procedure TdmIS.qIN_GCalcFields(DataSet: TDataSet);
begin
  if qIN_GDS.asInteger in [3, 4] then
    qIN_GfILL.AsString := '*'
  else
    qIN_GfILL.Clear;
  if qIN_GID_DRAFT.IsNull then
    qIN_GgRAPH.Clear
  else
    qIN_GgRAPH.AsString := 'G';
end;

procedure TdmIS.qIN_FAfterScroll(DataSet: TDataSet);
begin
  if fmINDOCS.Showing then
    fmINDOCS.OpenFills(dmIS.qIN_FID_PROJ_DOC.AsInteger);
end;

procedure TdmIS.qIN_FCalcFields(DataSet: TDataSet);
begin
  if qIN_FDS.asInteger in [3, 4] then
    qIN_FfILL.AsString := '*'
  else
    qIN_FfILL.Clear;
  if qIN_FID_DRAFT.IsNull then
    qIN_FgRAPH.Clear
  else
    qIN_FgRAPH.AsString := 'G';
end;

procedure TdmIS.qPL_SHBeforePost(DataSet: TDataSet);
begin
  qPL_SHID_FIX.AsInteger := SysVars.RegTN;
  if qPL_SHD_PLANING.IsNull then
    Abort;
end;

procedure TdmIS.qPL_SHNewRecord(DataSet: TDataSet);
begin
  try
    if fmNewOrd.Showing then
      qPL_SHID_ORDER.AsInteger := StrToInt(fmNewOrd.lb1.Caption);
  except
  end;

end;

procedure TdmIS.qPL_SHAfterPost(DataSet: TDataSet);
begin
  if mt.Active then
    mt.CommitRetaining;
end;

procedure TdmIS.qP_ORDSCalcFields(DataSet: TDataSet);
begin
  {
  case qP_ORDSSTATUS.AsInteger of
  0: qP_ORDSnSTAT.AsString := '�����';
  10: qP_ORDSnSTAT.AsString := '��������� ����������';
  20: qP_ORDSnSTAT.AsString := '��������� �������������';
  30: qP_ORDSnSTAT.AsString := '������� �������������';
  40: qP_ORDSnSTAT.AsString := '��������� � ������������';
  45: qP_ORDSnSTAT.AsString := '������ �������������';
  50: qP_ORDSnSTAT.AsString := '����������� ����������';
  60: qP_ORDSnSTAT.AsString := '���������� ����������';
  70: qP_ORDSnSTAT.AsString := '������ � ������������';
  100: qP_ORDSnSTAT.AsString := '������������ ���������';
  110: qP_ORDSnSTAT.AsString := '������� ���������';
  120: qP_ORDSnSTAT.AsString := '������� ����������';
  200: qP_ORDSnSTAT.AsString := '��������';
  end;
  If qP_ORDSSTATUS.AsInteger > 9 Then qP_ORDSfILL.AsString := '*'
  else qP_ORDSfILL.AsString := '';  }
end;

procedure TdmIS.qORD_POSAfterPost(DataSet: TDataSet);
begin
  if mt.Active then
    mt.CommitRetaining;
end;

procedure TdmIS.qORD_POSBeforePost(DataSet: TDataSet);
begin
  qORD_POSID_FIX.AsInteger := SysVars.RegTN;
end;

procedure TdmIS.qORD_POSNewRecord(DataSet: TDataSet);
begin
  try
    if fmNewOrd.Showing then
    begin
      qORD_POSID_ORDER.AsInteger := StrToInt(fmNewOrd.lb1.Caption);
      qORD_POSID_CURRENCY.AsInteger := dmIS.qCURRID_CURRENCY.AsInteger;
      qORD_POSID_UNIT.AsInteger := fmMain.MAIN_UNIT;
      qORD_POSNDS.AsFloat := 18;
    end;
  except
  end;

end;

procedure TdmIS.qORD_POSCalcFields(DataSet: TDataSet);
begin
  qORD_POSsUMPRICE.AsFloat := qORD_POSAMOUNT.AsFloat * qORD_POSPRICEA.AsFloat;
  qORD_POSsUMPRICE_BEZ_NDS.AsFloat
    := qORD_POSAMOUNT.AsFloat * qORD_POSPRICEA_BEZ_NDS.AsFloat;
end;

procedure TdmIS.qEstReqCalcFields(DataSet: TDataSet);
begin
  if (not qEstReqD_MANAGER.IsNull) then
    qEstReqFill.AsString := '*'
  else
    qEstReqFill.Clear;
  if qEstReqID_DOC.IsNull then
    qEstReqGraph.Clear
  else
    qEstReqGraph.AsString := 'G';
end;

end.

