unit unMain;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,{ Registry,} Syncobjs, DdeMan, StrUtils, Menus, ImgList,
  ToolWin, ExtCtrls, shrFunc, ShellApi, IBQuery, unMainForm, unCliOrds, DB,
  IBCustomDataSet, xlcClasses, xlEngine, xlReport, uxml_parser, StdCtrls;
type
  TfmMain = class(TMainForm)
    stb1: TStatusBar;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    N5: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    il1: TImageList;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    tb1: TToolButton;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    sd1: TSaveDialog;
    N6: TMenuItem;
    N17: TMenuItem;
    tb2: TToolButton;
    ToolButton1: TToolButton;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    ToolButton2: TToolButton;
    tb3: TToolButton;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    pb: TProgressBar;
    qIns: TIBQuery;
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
    DataSource1: TDataSource;
    N37: TMenuItem;
    NSellOrd: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N26Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure NSellOrdClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    procedure DoRestore(Sender: TObject);
    { Private declarations }
  public
    NF_CliOrds: Integer; //������ ��������
    NF_KOrder: Integer;  //�������� ������
    MAIN_UNIT,

    S19 :Integer;
    S35 :Integer;
    S36 :Integer;
    S59 :Integer;
    S51: integer;

    Status_Ord :Integer;

    UF11  :Boolean; // ����������� �� (������������)
    UF14  :Boolean; // �������������� �������� ���������� �� ��������
    UF15  :Boolean; // �������������� ���������� �� ��������
    UF16  :Boolean; // �������������� ����������� ��������
    UF17  :Boolean; // �������������� �������� ������������� �������
    UF18  :Boolean; // �������������� ����������� �������� �����
    UF19  :Boolean; // �������������� ��������
    UF20  :Boolean; // �������������� ����������� ����������
    UF29  :Boolean; // �������������� ����������� ����� ��������
    UF30  :Boolean; // �������������� ����������� ������� �� ��������
    UF32  :Boolean; // ������ � ������������� ����������
    UF37  :Boolean; // �������������� ����������� ������ ����������� �������
    UF38  :Boolean; // �������������� ������ ����������� �������
    UF40  :Boolean; // �������������� ����������� ����� ���������� �� ��������
    UF41  :Boolean; // ����������� ���������� �� ��������
    UF42  :Boolean; // ��������, �������������� � �������� ������
    UF50  :Boolean; // ��������� ���������-��������� ������
    UF53  :Boolean; // ����������� �������
    UF54  :Boolean; // ����� ������� � ������-��������������
    UF64  :Boolean; // �������� ���� �� �������
    UF71  :Boolean; // �������� ����� � ������
    UF78  :Boolean; // �������������� ����������� "�������"
    UF79  :Boolean; // ������������� ���������� �� ��������
    UF80  :Boolean; // �������������� ����������� "����������� ���������"
    UF89  :Boolean; // ������ � ���������� �� ���� ����������
    UF102 :Boolean; // ������������ ���������
    UF103 :Boolean; // ���
    UF104 :Boolean; // ���������� ��������
    UF105 :Boolean; // ��������
    UF118 :Boolean; // ��������� ������� � ������
    uf119 :Boolean; // ���������� ������ �� ���������
    UF0   :Boolean; // �������������
    UF101 :Boolean; // ������ ����
    UF123 :Boolean; // ����������� �����
    UF124 :Boolean; // �������������� �����
    UF143 :Boolean; // ����������� �� �������� ���
    UF138 :Boolean; // �������� ����������� ������ �� ������
    UF130 :Boolean; // �������������� �������
    UF131 :Boolean; // �������� ���� ����� �� ��������
    UF134 :Boolean; // �������������� ����������� ���������� �������� �� ����� ��������
    UF147 :Boolean; // ��������������, ��������, �������� ��������

    Analiz :Boolean; //

    SINPATH: string;

    //    SOUTPATH : string;

    DTReg: TDateTime;

    FN: string;

    procedure StoreDoc(Kop: integer; DOC_ID: integer; FName: string;
      qBODY: TIBQuery);
    procedure StoreDoc1(Kop: integer; DOC_ID: integer; FName: string; pr:
      integer);
    procedure Est_Excel(id: integer);
    procedure OpenReq(ind_form: integer; id_agent: integer; id_proj: integer;
      id_doc: integer);
    { Public declarations }
  end;

var
  fmMain: TfmMain;
  f_CliOrds: array[1..10] of TfmCliOrds;

implementation
uses unIS, unBrands, unTempl, unManager, unProj, unClosedPrj,
  unP_TYPES, unP_EVENT, unProjTraff, unPrjDocType, unINDOCS, unEstimate,
  unRegions, unREG_MAN, unOrders, unEst, unPlanShipp, unClients, unPrDocs,
  unOrdProd, unEstReq, unCH_REQ, unOper, unregParamCH, uGPStore;

const
  id_Form = 1;

{$R *.dfm}

procedure TfmMain.OpenReq(ind_form: integer; id_agent: integer; id_proj:
  integer; id_doc: integer);
begin //������� �� ����� � ��������
  f_CliOrds[ind_form].pcAll.ActivePage  := f_CliOrds[ind_form].tsAgent;
  f_CliOrds[ind_form].pcProj.ActivePage := f_CliOrds[ind_form].tsProj3;
  f_CliOrds[ind_form].qClients.Locate('id_item', inttostr(id_agent), []);
  f_CliOrds[ind_form].qPrj.Locate('id_project', inttostr(id_proj), []);
  f_CliOrds[ind_form].OpenEst_Req;
  f_CliOrds[ind_form].qEstReq.Locate('id_doc', id_doc, []);
end;

procedure TfmMain.DoRestore(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TfmMain.Est_Excel(id: integer);
begin

  qEst_pm.Close;
  qEst_pm.ParamByName('id_estimate').AsInteger := id;
  qEst_pm.Open;

  qEst_pp.Close;
  qEst_pp.ParamByName('id_estimate').AsInteger := id;
  qEst_pp.Open;

{  if not dmIS.dbDoc.Connected then
  dmIS.dbDoc.Connected := True;}

  dmIs.qD_IN.Close;
  dmIs.qD_IN.sql.Clear;
  dmIs.qD_IN.SQL.Add('select w.id_doc from workdocs w where w.id_owner = :id_owner');
  dmIs.qD_IN.ParamByName('id_owner').Value := 17; //��� *** ������ ��� �� ������
  dmIs.qD_IN.Open;
  if dmIs.qD_IN.IsEmpty then
  begin
   ShowMessage('��� �������....');
   Exit;
  end
  else
  begin
    Screen.Cursor := crHourGlass;
    Old_DocBody(dmIs.qD_IN.FieldByName('ID_DOC').AsInteger, 0,'.\Tmp\newest.xls'); // ������� �� ����� ���� ����������
  //  fmMain.StoreDoc1(0, dmIs.qD_IN.FieldByName('ID_DOC').Value,
  //    '.\Tmp\newest.xls', 1);

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
      parambyname('id_estimate').AsInteger := id;
      Open;

      xlReport3.XLSTemplate := fmMain.FN;
      xlReport3.ParamByName['DATE_ESTIMATE'].AsString :=
        fieldbyname('D_CREATE').AsString;
      xlReport3.ParamByName['NUMB_ESTIMATE'].AsString :=
        fieldbyname('ID_ESTIMATE').AsString;
      xlReport3.ParamByName['IZD'].AsString := fieldbyname('izdname').AsString;
      xlReport3.ParamByName['PRICE'].AsString :=
        fieldbyname('PRICE_DATE').AsString;
      ;
      xlReport3.ParamByName['DEV'].AsString := fieldbyname('FIOCR').AsString;
      xlReport3.ParamByName['IDIZD'].AsString :=
        fieldbyname('id_item').AsString;
      xlReport3.ParamByName['IDVERS'].AsString :=
        fieldbyname('id_Version').AsString;

      if fieldbyname('AMOUNT').IsNull then
        xlReport3.ParamByName['TIR'].AsString := '0'
      else
        xlReport3.ParamByName['TIR'].AsString := fieldbyname('AMOUNT').AsString;

      if fieldbyname('PRICE_TOOLS').isNull then
        xlReport3.ParamByName['EQUIP'].AsString := '0'
      else
        xlReport3.ParamByName['EQUIP'].AsString :=
          fieldbyname('PRICE_TOOLS').AsString;

      if fieldbyname('DOP_PRICE').IsNull then
        xlReport3.ParamByName['DOPPRICE'].AsString := '0%'
      else
        xlReport3.ParamByName['DOPPRICE'].AsString :=
          fieldbyname('DOP_PRICE').AsString + '%';

      if fieldbyname('PROFIT').IsNull then
        xlReport3.ParamByName['PROFIT'].AsString := '0%'
      else
        xlReport3.ParamByName['PROFIT'].AsString :=
          fieldbyname('PROFIT').AsString + '%';

      if fieldbyname('SUM_NDS').IsNull then
        xlReport3.ParamByName['NDS'].AsString := '0%'
      else
        xlReport3.ParamByName['NDS'].AsString := fieldbyname('SUM_NDS').AsString
          + '%';

      if fieldbyname('PRICE_DELIVERY').IsNull then
        xlReport3.ParamByName['DELIVE'].AsString := '0'
      else
        xlReport3.ParamByName['DELIVE'].AsString :=
          fieldbyname('PRICE_DELIVERY').AsString;
      xlReport3.Report;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfmMain.StoreDoc1(Kop: integer; DOC_ID: integer; FName: string; pr:
  integer);
begin
  case Kop of
    //Kop = 0 - ������
    0:
      begin
        with dmIs.qW_BODY do
        try
          Close;
          ParamByName('d1').Value := DOC_ID;
          Open;
          if IsEmpty then
          begin
            MsgInformation('�������� �����������', '������ ���������');
            exit;
          end;
          FN := SysVars.IsDir + '\Tmp\' + dmIs.qW_BODYFILENAME.Value;
          ReadBlob(dmIs.qW_BODYBODY, FN);
          if pr = 0 then
            ShellExecute(Application.MainForm.Handle, nil, PChar(FN), '', '',
              SW_MAXIMIZE);
        except;
          MsgError('������ ��� ������ �����', '������ ������');
        end;
      end;
    //Kop = 2 - ��������������
    2:
      begin

      end;
  end; //����� ���������  StoreDoc1

end;

procedure TfmMain.StoreDoc(Kop: integer; DOC_ID: integer; FName: string;
  qBODY: TIBQuery);
//var FN : string;
begin
 if not dmIS.dbDOC.Connected then
    exit;
  case Kop of
    //Kop = 0 - ������ � �������� �� ����������
    0:
      begin
        with qBODY do
        try
          Close;
          ParamByName('d1').AsInteger := DOC_ID;
          Open;
          if IsEmpty then
          begin
            MsgInformation('�������� �����������', '������ ���������');
            exit;
          end;
          FN := SysVars.IsDir + '\Tmp\' +
            qBODY.FieldByName('FILENAME').AsString;
          ReadBlob(qBODY.FieldByName('BODY'), FN);
          ShellExecute(Application.MainForm.Handle, nil, PChar(FN), '', '',
            SW_MAXIMIZE);
        except;
          MsgError('������ ��� ������ �����', '������ ������');
        end;
      end;
    //Kop = 2 - ��������������
    2:
      begin
        if FName = '' then
          exit;
        with dmIS.upBODY do
        try
          ParamByName('d1').Value := DOC_ID;
          ParamByName('f1').Value := ExtractFileName(FName);
          ParamByName('tn').AsInteger := SysVars.RegTN;
          if not WriteBlob(ParamByname('b1'), FName) then
            exit;
          ExecSQL;
          if dmIS.dT.Active then
            dmIS.dT.CommitRetaining;
        except;
          if dmIS.dT.Active then
            dmIS.dT.RollbackRetaining;
          MsgError('������ ��� ������ �����', '������ ������');
        end;
      end;
    3:
      begin //���������� � ����
        with qBODY do
        try
          Close;
          ParamByName('d1').AsInteger := DOC_ID;
          Open;
          if IsEmpty then
          begin
            MsgInformation('�������� �����������', '������ ���������');
            exit;
          end;
          sd1.FileName := qBODY.FieldByName('FILENAME').AsString;
          if sd1.Execute then
            ReadBlob(qBODY.FieldByName('BODY'), sd1.FileName);
        except;
          MsgError('������ ��� ������ �����', '������ ������');
        end;
      end;
    //Kop = 4 - ������ � ����
    4:
      begin
        with qBODY do
        try
          Close;
          ParamByName('d1').AsInteger := DOC_ID;
          Open;
          if IsEmpty then
          begin
            MsgInformation('�������� �����������', '������ ���������');
            exit;
          end;
          FN := SysVars.IsDir + '\Tmp\' +
            qBODY.FieldByName('FILENAME').AsString;
          ReadBlob(qBODY.FieldByName('BODY'), FN);
        except;
          MsgError('������ ��� ������ �����', '������ ������');
        end;
      end;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);

begin
  try
    RegLogin;
  except
    Application.Terminate;
  end;
  Application.CreateForm(TdmIS, dmIS);
  fmMain.Caption := SysVars.ApName;
  DTReg := Now;
  MAIN_UNIT := 5;
  stb1.Panels[1].Text := DateTimeToStr(DTReg);
  stb1.Panels[2].Text := '������: ' + FormatFloat('#0.00', SysVars.RegVer) +
    '; � ������� - ' + FormatFloat('#0.00', SysVars.NVer);
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
  NF_CliOrds := 0;
  NF_KOrder := 0;
end;

procedure TfmMain.N7Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmBrands) then
      Application.CreateForm(TfmBrands, fmBrands);
    fmBrands.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N8Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmTEMPL) then
      Application.CreateForm(TfmTEMPL, fmTEMPL);
    fmTEMPL.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N11Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmProj) then
      Application.CreateForm(TfmProj, fmProj);
    fmProj.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N12Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmClosedPrj) then
      Application.CreateForm(TfmClosedPrj, fmClosedPrj);
    fmClosedPrj.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N14Click(Sender: TObject);
begin
  if not Assigned(fmP_TYPES) then
    Application.CreateForm(TfmP_TYPES, fmP_TYPES);
  fmP_TYPES.ShowModal;
end;

procedure TfmMain.N15Click(Sender: TObject);
begin
  if not Assigned(fmP_EVENT) then
    Application.CreateForm(TfmP_EVENT, fmP_EVENT);
  fmP_EVENT.ShowModal;
end;

procedure TfmMain.N16Click(Sender: TObject);
begin
  if not Assigned(fmProjTraff) then
    Application.CreateForm(TfmProjTraff, fmProjTraff);
  fmProjTraff.ShowModal;
end;

procedure TfmMain.N2Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmPrjDocType) then
      Application.CreateForm(TfmPrjDocType, fmPrjDocType);
    fmPrjDocType.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N17Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmINDOCS) then
      Application.CreateForm(TfmINDOCS, fmINDOCS);
    fmINDOCS.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N19Click(Sender: TObject);
begin
  if not Assigned(fmEstimate) then
    Application.CreateForm(TfmEstimate, fmEstimate);
  fmEstimate.Show;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  Application.OnRestore := DoRestore;
  ShowWindow(Application.Handle, SW_HIDE);
  N11.Enabled := S19 <> 1;
  N28.Enabled := S19 <> 1;
end;

procedure TfmMain.N20Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmRegions) then
      Application.CreateForm(TfmRegions, fmRegions);
    fmRegions.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N21Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmREG_MAN) then
      Application.CreateForm(TfmREG_MAN, fmREG_MAN);
    fmREG_MAN.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N23Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmOrders) then
      Application.CreateForm(TfmOrders, fmOrders);
    fmOrders.WindowState := wsMaximized;
    fmOrders.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N24Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmPlanShipp) then
      Application.CreateForm(TfmPlanShipp, fmPlanShipp);
    fmPlanShipp.WindowState := wsMaximized;
    fmPlanShipp.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
    finally
      Free;
    end;
  except
  end;
end;

procedure TfmMain.N26Click(Sender: TObject);
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

procedure TfmMain.N28Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmPrDocs) then
      Application.CreateForm(TfmPrDocs, fmPrDocs);
    fmPrDocs.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N31Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmOrdProd) then
      Application.CreateForm(TfmOrdProd, fmOrdProd);
    fmOrdProd.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N32Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmEstReq) then
      Application.CreateForm(TfmEstReq, fmEstReq);
    fmEstReq.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N33Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmEst) then
      Application.CreateForm(TfmEst, fmEst);
    fmEst.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N35Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmCH_REQ) then
      Application.CreateForm(TfmCH_REQ, fmCH_REQ);
    fmCH_REQ.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N36Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    Analiz := False;
    NF_CliOrds := NF_CliOrds + 1;
    if not Assigned(f_CliOrds[NF_CliOrds]) then    //fmCliOrds
      Application.CreateForm(TfmCliOrds, f_CliOrds[NF_CliOrds]);
     f_CliOrds[NF_CliOrds].Caption := '������ ��������_' + IntToStr(NF_CliOrds);
    f_CliOrds[NF_CliOrds].ind_form := NF_CliOrds;
    f_CliOrds[NF_CliOrds].Show;
  finally
    Screen.Cursor := crDefault;          
  end;
end;

procedure TfmMain.N37Click(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmRegParam) then
      Application.CreateForm(TfmRegParam, fmRegParam);
    fmRegParam.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.NSellOrdClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    if not Assigned(fmGPStore) then
      Application.CreateForm(TfmGpStore, fmGPStore);
      fmGpStore.Show;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.N4Click(Sender: TObject);
var
  ModDir, FN: string;
begin
  ModDir := SysVars.ModulName;
  Screen.Cursor := crHourGlass;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select HELP_EXE, HELP_EXT');
    Add('from IS$MOD where DIR_NAME = :md and HELP_EXE is not null');
    ParamByName('md').AsString := ModDir;
    try
      Open;
      if not IsEmpty then
      begin
        FN := 'H_' + ModDir + dmIS.qIN.FieldByName('HELP_EXT').AsString;
        ReadBlob(dmIS.qIN.FieldByName('HELP_EXE'), FN);
        Screen.Cursor := crDefault;
        ShellExecute(Application.MainForm.Handle, nil, PChar(FN), '', '',
          SW_MAXIMIZE);
      end;
    except
    end;
  end;
  Screen.Cursor := crDefault;
end;

end.

