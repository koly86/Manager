program Manager;

uses
  Forms,
  unMain in 'unMain.pas' {fmMain},
  unIS in 'unIS.pas' {dmIS: TDataModule},
  bcPort in '..\SharedFunction\bcport.pas',
  unBrands in 'unBrands.pas' {fmBrands},
  unTempl in 'unTempl.pas' {fmTEMPL},
  unCAgent in 'unCAgent.pas' {fmCAgent},
  unManager in 'unManager.pas' {fmManager},
  unDOCS in 'unDOCS.pas' {fmDOCS},
  unCOrders in 'unCOrders.pas' {fmCOrders},
  unProj in 'unProj.pas' {fmProj},
  unNewPrj in 'unNewPrj.pas' {fmNewPrj},
  unProjPlan in 'unProjPlan.pas' {fmProjPlan},
  unPrj_S in 'unPrj_S.pas' {fmPrj_S},
  unClosedPrj in 'unClosedPrj.pas' {fmClosedPrj},
  unP_TYPES in 'unP_TYPES.pas' {fmP_TYPES},
  unP_EVENT in 'unP_EVENT.pas' {fmP_EVENT},
  unProjTraff in 'unProjTraff.pas' {fmProjTraff},
  unPrjDocType in 'unPrjDocType.pas' {fmPrjDocType},
  unProduct in 'unProduct.pas' {fmProduct},
  unFind in 'unFind.pas' {fmFind},
  unINDOCS in 'unINDOCS.pas' {fmINDOCS},
  unNewDiz in 'unNewDiz.pas' {fmNewDiz},
  unFILL in 'unFILL.pas' {fmFILL},
  unREP in 'unREP.pas' {fmRep},
  unEstimate in 'unEstimate.pas' {fmEstimate},
  unMainForm in 'unMainForm.pas',
  unNewOrd in 'unNewOrd.pas' {fmNewOrd},
  unKOrd in 'unKOrd.pas' {fmKOrd},
  unRegions in 'unRegions.pas' {fmRegions},
  unREG_MAN in 'unREG_MAN.pas' {fmREG_MAN},
  unOrders in 'unOrders.pas' {fmOrders},
  unEst in 'unEst.pas' {fmEst},
  unPlanShipp in 'unPlanShipp.pas' {fmPlanShipp},
  unClients in 'unClients.pas' {fmClients},
  unACli in 'unACli.pas' {fmACli},
  unPrDocs in 'unPrDocs.pas' {fmPrDocs},
  unOrdProd in 'unOrdProd.pas' {fmOrdProd},
  unEstReq in 'unEstReq.pas' {fmEstReq},
  unKEReq in 'unKEReq.pas' {fmKEReq},
  unCH_REQ in 'unCH_REQ.pas' {fmCH_REQ},
  unKCH_REQ in 'unKCH_REQ.pas' {fmKCH_REQ},
  unKOrder in 'unKOrder.pas' {fmKOrder},
  unCliOrds in 'unCliOrds.pas' {fmCliOrds},
  Un_Find in 'Un_Find.pas' {fm_Find},
  UnEstCalc in 'UnEstCalc.pas' {fmEstCalc},
  UnTestVersion in 'UnTestVersion.pas' {fmTestVersion},
  uAll in '..\All\uAll.pas' {fmAll},
  unOperRoute in '..\DISPPROD\unOperRoute.pas' {fmOperRoute},
  ufmDetail in '..\ConstrEcon\ufmDetail.pas' {fmDetail},
  unDEliv in 'unDEliv.pas' {fmDeliv},
  unTr in 'unTr.pas' {fmTr},
  unParamCH in 'unParamCH.pas' {fmParamCH},
  unRegParamCH in 'unRegParamCH.pas' {fmRegParam},
  shrFunc in '..\SharedFunction\shrFunc.pas',
  unMes in '..\ConstrEcon\unMes.pas' {fmMes},
  uExpl in '..\All\uExpl.pas' {fmExplore},
  unSel_Order in 'unSel_Order.pas' {fmOrder_Center},
  uXML_Parser in '..\Integration\XML_Parser\uXML_Parser.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmFind, fmFind);
  Application.CreateForm(Tfm_Find, fm_Find);
  Application.CreateForm(TfmAll, fmAll);
  Application.CreateForm(TfmDeliv, fmDeliv);
  Application.CreateForm(TfmParamCH, fmParamCH);
  Application.CreateForm(TfmRegParam, fmRegParam);
  Application.CreateForm(TfmOrder_Center, fmOrder_Center);
  // Application.CreateForm(TfmMes, fmMes);
  Application.Run;
end.

