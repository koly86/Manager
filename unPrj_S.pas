unit unPrj_S;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, ComCtrls,
  ToolWin, DBGridEh, Mask, DBCtrlsEh, Buttons, IBQuery, DB, frxClass,
  frxDBSet, frxExportPDF, Menus, IBCustomDataSet, unMainForm, StrUtils;

type
  TfmPrj_S = class(TMainForm)
    Splitter1: TSplitter;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    p1: TPanel;
    tlb1: TToolBar;
    tb1: TToolButton;
    dbn1: TDBNavigator;
    p3: TPanel;
    p4: TPanel;
    Label1: TLabel;
    dbt21: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lcb1: TDBLookupComboBox;
    ed2: TEdit;
    dtp1: TDBDateTimeEditEh;
    dtp2: TDBDateTimeEditEh;
    dtp3: TDBDateTimeEditEh;
    dtp4: TDBDateTimeEditEh;
    dtp5: TDBDateTimeEditEh;
    p22: TPanel;
    bb21: TBitBtn;
    bb22: TBitBtn;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label12: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ed1: TEdit;
    tb2: TToolButton;
    ToolButton1: TToolButton;
    tb3: TToolButton;
    tb4: TToolButton;
    tb5: TToolButton;
    ToolButton6: TToolButton;
    tb6: TToolButton;
    tb7: TToolButton;
    ToolButton2: TToolButton;
    tb8: TToolButton;
    od1: TOpenDialog;
    dbn2: TDBNavigator;
    tlb2: TToolBar;
    tbs2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ed3: TEdit;
    Label32: TLabel;
    tb9: TToolButton;
    tb10: TToolButton;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport2: TfrxReport;
    frxReport1: TfrxReport;
    ppm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ToolButton8: TToolButton;
    tbs5: TToolButton;
    p6: TPanel;
    Panel2: TPanel;
    bb3: TBitBtn;
    bb4: TBitBtn;
    p0: TPanel;
    Panel3: TPanel;
    Label36: TLabel;
    DBText26: TDBText;
    DBText27: TDBText;
    Panel4: TPanel;
    Panel5: TPanel;
    Label37: TLabel;
    dbg5: TDBGrid;
    DBMemo1: TDBMemo;
    Splitter3: TSplitter;
    Label38: TLabel;
    Label39: TLabel;
    DBText28: TDBText;
    DBText29: TDBText;
    tb11: TToolButton;
    ToolButton9: TToolButton;
    dbg1: TDBGridEh;
    ToolButton10: TToolButton;
    tbs6: TToolButton;
    dbg2: TDBGridEh;
    p2: TPanel;
    dbg4: TDBGridEh;
    tbs1: TToolButton;
    tbs7: TToolButton;
    ToolButton11: TToolButton;
    tbs8: TToolButton;
    ToolButton12: TToolButton;
    tbs9: TToolButton;
    tb12: TToolButton;
    ToolButton15: TToolButton;
    tb14: TToolButton;
    ToolButton17: TToolButton;
    pc2: TPageControl;
    tss1: TTabSheet;
    tss2: TTabSheet;
    dbn3: TDBNavigator;
    dbg3: TDBGridEh;
    clb2: TCoolBar;
    ToolBar1: TToolBar;
    tbz2: TToolButton;
    ToolButton18: TToolButton;
    tbz3: TToolButton;
    ToolButton20: TToolButton;
    tbz4: TToolButton;
    ToolButton22: TToolButton;
    tbz5: TToolButton;
    ToolButton24: TToolButton;
    tbz6: TToolButton;
    ToolButton26: TToolButton;
    tbz7: TToolButton;
    ToolButton28: TToolButton;
    tbz8: TToolButton;
    tbz9: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    tbs10: TToolButton;
    tsRDoc: TTabSheet;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dsRDoc: TDataSource;
    od2: TOpenDialog;
    qIN: TIBQuery;
    cbDel: TCheckBox;
    SpeedButton3: TSpeedButton;
    qRDoc: TIBQuery;
    qRDocID_REQ_DOC: TIntegerField;
    qRDocID_REQUEST: TIntegerField;
    qRDocD_EDIT: TDateField;
    qRDocNAME: TIBStringField;
    qRDocFIO: TIBStringField;
    qRDocID_DOC: TIntegerField;
    qRDocD_REJECT: TDateField;
    qRDocID_PROJECT: TIntegerField;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    tbRezerv: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bb22Click(Sender: TObject);
    procedure bb21Click(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure tb8Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure tb7Click(Sender: TObject);
    procedure tb6Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure bb41Click(Sender: TObject);
    procedure bb42Click(Sender: TObject);
    procedure tbs2Click(Sender: TObject);
    procedure dbg3DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tb9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ppm1Popup(Sender: TObject);
    procedure bb3Click(Sender: TObject);
    procedure bb4Click(Sender: TObject);
    procedure tbs5Click(Sender: TObject);
    procedure dbg5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tb11Click(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure tbs6Click(Sender: TObject);
    procedure dbg2DblClick(Sender: TObject);
    procedure dbg2SortMarkingChanged(Sender: TObject);
    procedure dbg4SortMarkingChanged(Sender: TObject);
    procedure tbs1Click(Sender: TObject);
    procedure tbs7Click(Sender: TObject);
    procedure tbs8Click(Sender: TObject);
    procedure tbs9Click(Sender: TObject);
    procedure tb12Click(Sender: TObject);
    procedure tb14Click(Sender: TObject);
    procedure pc2Change(Sender: TObject);
    procedure dbg3SortMarkingChanged(Sender: TObject);
    procedure dbg3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure tbz8Click(Sender: TObject);
    procedure tbz2Click(Sender: TObject);
    procedure tbz3Click(Sender: TObject);
    procedure tbz4Click(Sender: TObject);
    procedure tbz5Click(Sender: TObject);
    procedure tbz7Click(Sender: TObject);
    procedure tbz9Click(Sender: TObject);
    procedure tbz6Click(Sender: TObject);
    procedure tbs10Click(Sender: TObject);
    procedure dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qRDocBeforeOpen(DataSet: TDataSet);
    procedure tb10Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure tbRezervClick(Sender: TObject);
  private
    C_DOC, bdoc, C_ORD: integer;
    procedure OpenDOCS;
    procedure OpenDoc_s;
    procedure OpenCliOrders;
    procedure OpenReq;
    procedure GetDocImage(Doc_id: integer; Fr: word);
    { Private declarations }
  public
    C_Prj, C_REQ: integer;
    procedure OpenOrder;
    { Public declarations }
  end;

var
  fmPrj_S: TfmPrj_S;

implementation
uses unMain, unIS, unDOCS, unCOrders, unProduct, unFILL, unEstimate, unKOrd,
  unNewOrd, unKEReq, unEst, unKCH_REQ, unCH_REQ, uAll;

const
  id_Form = 14;

{$R *.dfm}

procedure TfmPrj_s.OpenReq;
begin
  Screen.Cursor := crHourGlass;
  qRDoc.close;
  qRDoc.Open;
  with dmIS.qEstReq, dmIS.qEstReq.SQL do
  begin
    if Active then
      C_REQ := dmIS.qEstReqID_REQUEST.AsInteger;
    Close;
    Clear;
    Add('select r.id_request, r.id_project, r.status, r.description, r.id_doc,');
    Add('r.d_manager, r.id_manager, r.id_estimate, r.id_constr, r.id_estimator,');
    Add('r.d_get, r.d_fix, m.fio manager, c.fio constr, e.fio estimator,');
    Add('r.d_create, r.id_creator, i.fio creator, q.name, q.id_project, r.rem');
    Add('from estimate_requests r');
    Add('left join personnel m on m.id_p = r.id_manager');
    Add('left join personnel c on c.id_p = r.id_constr');
    Add('left join personnel e on e.id_p = r.id_estimator');
    Add('left join personnel i on i.id_p = r.id_creator');
    add('left join projects  q on q.id_project = r.id_project');
    Add('where r.id_project = :id_project');
    ParamByName('id_project').AsInteger := C_PRJ;
    Add(OrdBy(dbg3));
    Open;
    Locate('ID_REQUEST', C_REQ, []);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmPrj_S.OpenOrder;
begin
  if dmIS.mT.Active then
    dmIS.mT.CommitRetaining;
  with dmIS.qP_ORDS, dmIS.qP_ORDS.SQL do
  begin
    if Active then
      C_ORD := dmIS.qP_ORDSID_ORDER.AsInteger;
    Close;
    Clear;
    { Add('select P.*, i.name agent, pt.name nptype, a.name nprod, cu.name ncurr');
     Add('from PROJECT_ORDS P');
     Add('left join items i on i.id_item = p.id_agent');
     Add('left join ptypes pt on pt.id_ptype = p.id_cptype');
     Add('left join prod_areas a on a.id_p_area = p.id_cprod and a.id_patype = 1');
     Add('left join currency cu on cu.id_currency = p.id_currency');
      Add('where P.ID_PROJECT = :pr1');}//������ ������ � ������������ ������

    Add(' select P.*, i.name agent, pt.name nptype, a.name nprod, cu.name ncurr,');
    Add('case when p.status > 9  then ''' + '*' + ''' else ''' + ' ' +
      ''' end fill,');
    Add('case when p.status = 0  then ''' + '�����' + ''' else');
    Add('case when p.status =10  then ''' + '��������� ����������' + ''' else');
    Add('case when p.status =7  then ''' + '�������' + ''' else');
    Add('case when p.status =20  then ''' + '��������� �������������' +
      ''' else');
    Add('case when p.status =30  then ''' + '������� �������������' + '''else');
    Add('case when p.status =40  then ''' + '��������� � ������������' +
      ''' else');
    Add('case when p.status =45  then ''' + '������ �������������' + ''' else');
    Add('case when p.status =50  then ''' + '����������� ����������' +
      ''' else');
    Add('case when p.status =60  then ''' + '���������� ����������' +
      ''' else ');
    Add('case when p.status =70  then ''' + '������ � ������������' +
      ''' else');
    Add('case when p.status =100 then ''' + '������������ ���������' +
      ''' else');
    Add('case when p.status =110 then ''' + '������� ���������' + ''' else');
    Add('case when p.status =120 then ''' + '������� ����������' + ''' else');
    Add('case when p.status =200 then ''' + '��������' + '''');
    Add('end end end end end end end end end end end end end end nSTAT, r.name ndoc,');
    Add('d.dog_number,d.dog_number_, d.dog_date_in, k.name ordkind,');
    Add('(select u.name nm from uragents u join items_uragents i on i.inn = u.inn');
    Add('where i.id_item = p.is_self) name_ur,');
    Add('coalesce((p.price - p.delivery_sum)/(select e.total_sum from estimates e');
    Add(' where e.id_estimate = p.id_estimate),0) NACH');
    Add('from PROJECT_ORDS P left                                  ');
    Add('join items i on i.id_item = p.id_agent                    ');
    Add('left join ptypes pt on pt.id_ptype = p.id_cptype          ');
    Add('left join prod_areas a on a.id_p_area = p.id_cprod and a.id_patype = 1');
    Add('left join currency cu on cu.id_currency = p.id_currency   ');
    Add('left join project_docs r on r.id_project_doc = p.id_doc ');
    Add('left join dogovor d on d.id_dogovor = p.id_dogovor');
    add('left join order_kinds k on k.id_ord_kind = p.ord_kind');
    Add('where P.ID_PROJECT = :pr1 ');

    case SysVars.ServType of
      0: Add(OrderBy(dbg2));
      1: Add(OrderByFields(dbg2));
    end;
    ParamByName('pr1').AsInteger := fmPrj_S.C_Prj;
    //showmessage(text);
    Open;
    Locate('ID_ORDER', C_ORD, []);
  end;
end;

procedure TfmPrj_S.OpenCliOrders;
begin
  with dmIS.qCliOrd, dmIS.qCliOrd.SQL do
  begin
    Close;
    Clear;
    Add('select * from PROJECT_ORDS where ID_AGENT = :ID_AGENT and D_CLOSE IS NULL');
    case SysVars.ServType of
      0: Add(OrderBy(dbg4));
      1: Add(OrderByFields(dbg4));
    end;
    Open;
  end;
end;

procedure TfmPrj_S.OpenDOCS;
begin
  with dmIS.qDOC, dmIS.qDOC.SQL do
  begin
    if Active then
      C_DOC := dmIS.qDOCID_PROJECT_DOC.AsInteger;
    Close;
    if fmMain.UF15 then
      UpdateObject := dmIS.upDOC
    else
      UpdateObject := nil;
    Clear;
    Add('select * from PROJECT_DOCS where ID_PROJECT = :pr1');
    ParamByName('pr1').AsInteger := fmPrj_S.C_Prj;
    case SysVars.ServType of
      0: Add(OrderBy(dbg1));
      1: Add(OrderByFields(dbg1));
    end;
    // ShowMessage(Text);
    Open;
    Locate('ID_PROJECT_DOC', C_DOC, []);
  end;
  OpenOrder;
end;

procedure TfmPrj_S.OpenDoc_s;
begin
  Screen.Cursor := crHourGlass;
  with dmIS.qDOC_S, dmIS.qDOC_S.SQL do
  begin
    Close;
    Clear;
    Add('select  S.ID_ROW, S.NAME, S.PARENT, S.STATUS, S.DATA_TYPE,');
    Add('D.ID_DOC_DATA, D.ROW_SMALVAL, D.ROW_VALUE');
    Add('from  PROJ_DOC_DATA D right join PROJ_DOC_STRUCTURE S');
    Add('on S.ID_ROW = D.ID_ROW and D.ID_PROJ_DOC = :d1 where S.DOC_TYPE = :t1');
    Add('and S.PROJ_TYPE = :pt1');
    if not fmMain.UF17 then
      Add('and S.STATUS IS NULL');
    Add('order by S.ID_ROW');
    ParamByName('t1').AsInteger := dmIS.qDOCDOC_TYPE.AsInteger;
    ParamByName('d1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
    ParamByName('pt1').AsInteger := dmIS.qPrjID_PROJ_TYPE.AsInteger;
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmPrj_S.FormCreate(Sender: TObject);
begin
  BDOC := -1;
  p3.BringToFront;
  p3.Align := alClient;
  p6.SendToBack;
  pc1.ActivePage := ts1;
  pc2.ActivePage := tss1;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p2, iniRect);
    ReadEh(dbg3, id_Form);
  finally
    Free;
  end;
  if not Assigned(fmKEReq) then
    Application.CreateForm(TfmKEReq, fmKEReq);
end;

procedure TfmPrj_S.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.dbIS.Connected then
  begin
    if dmIS.qDOC.State in [dsInsert, dsEdit] then
      dmIS.qDOC.Post;
    if Assigned(fmKOrd){ and fmKOrd.Showing)} then
      fmKOrd.Close;
    dmIS.qPRODS.Close;
    dmIS.qPTPS.Close;
    dmIS.qVER.Close;
    dmIS.qDOC.Close;
    dmIS.qP_ORDS.Close;
    dmIS.qFIO.Close;
    dmIS.qDOC_TYPE.AfterScroll := dmIS.qDOC_TYPEAfterScroll;
    dmIS.qDOC_TYPE.Close;
    dmIS.qFILL_D.Close;
    dmIS.qEstReq.Close;
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
      Write(p2, iniRect);
      Write(dbg3, iniGridEh);
    finally
      Free;
    end;
  end;
  dmIS.C_db.Connected := False;
//  dmIS.dbDOC.Connected := False;
end;

procedure TfmPrj_S.bb22Click(Sender: TObject);
begin
  p4.SendToBack;
  pc1.ActivePage := ts1;
end;

procedure TfmPrj_S.bb21Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_DOC FROM WRITE_PROJECT_DOC( :idoc, :idpr, :dtyp, :num, :dd,');
    Add(':din, :dout, :dprod, :dshipp, :idp, :nm1)');
    ParamByName('idoc').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
    ParamByName('idpr').AsInteger := dmIS.qDOC.ParamByName('pr1').AsInteger;
    ParamByName('num').AsString := ed2.Text;
    ParamByName('nm1').AsString := ed1.Text;
    if lcb1.KeyValue = NULL then
      ParamByName('dtyp').Clear
    else
      ParamByName('dtyp').AsInteger := lcb1.KeyValue;
    try
      ParamByName('dd').AsDate := StrToDate(dtp1.Text);
    except
      ParamByName('dd').Clear;
    end;
    try
      ParamByName('din').AsDate := StrToDate(dtp2.Text);
    except
      ParamByName('din').Clear;
    end;
    try
      ParamByName('dout').AsDate := StrToDate(dtp3.Text);
    except
      ParamByName('dout').Clear;
    end;
    try
      ParamByName('dprod').AsDate := StrToDate(dtp4.Text);
    except
      ParamByName('dprod').Clear;
    end;
    try
      ParamByName('dshipp').AsDate := StrToDate(dtp5.Text);
    except
      ParamByName('dshipp').Clear;
    end;
    ParamByName('idp').AsInteger := SysVars.RegTN;
    try
      Open;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
      MsgError('������ ��� �������������� �������� ���������', '������ ������');
      exit;
    end;
  end;
  fmPrj_S.OpenDOCS;
  p4.SendToBack;
  pc1.ActivePage := ts1;
end;

procedure TfmPrj_S.pc1Change(Sender: TObject);
begin
  if pc1.ActivePage = ts1 then
    p4.SendToBack;
  if pc1.ActivePage = ts2 then
    with dmIS.qFILL_D do
    begin
      Close;
      ParamByName('idd1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
      Open;
    end;
end;

procedure TfmPrj_S.tb1Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if not dmIS.qDOCD_FILL.IsNull then
  begin
    MsgInformation('�������� ���������. �������������� ���������',
      '�������� �������');
    Exit;
  end;
  ed1.Text := dmIS.qDOCNAME.AsString;
  ed2.Text := dmIS.qDOCNUMBER.AsString;
  if dmIS.qDOCDOC_TYPE.IsNull then
    lcb1.KeyValue := NULL
  else
  begin
    dmIS.qDOC_TYPE.Locate('ID_PROJ_DOC_TYPE', dmIS.qDOCDOC_TYPE.Value, []);
    lcb1.KeyValue := dmIS.qDOCDOC_TYPE.Value;
  end;
  dtp1.Text := dmIS.qDOCD_DOC.AsString;
  dtp2.Text := dmIS.qDOCD_IN.AsString;
  dtp3.Text := dmIS.qDOCD_OUT.AsString;
  dtp4.Text := dmIS.qDOCD_PROD.AsString;
  dtp5.Text := dmIS.qDOCD_SHIPP.AsString;
  p4.BringToFront;
  pc1.ActivePage := ts2;
end;

procedure TfmPrj_S.tb2Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if not dmIS.qDOCID_DRAFT.IsNull then
  begin
    MsgInformation('������ �������� �������� ����������. ' +
      '��� �������� ���������.', '�������� ����������� ��������');
    exit;
  end;
  if (not dmIS.qDOCD_FILL.IsNull) and (not fmMain.UF41) then
  begin
    MsgInformation('������ �������� ���������. ' +
      '�� �� ������ ���� �� ��� ��������.', '�������� ����������� ��������');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('Select ID_DOC from PROJECT_ORDS where ID_DOC = :d1');
    ParamByName('d1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
    Open;
    if not IsEmpty then
    begin
      MsgInformation('������ �������� �������� ���������� ������. ' +
        '��� �������� ���������.', '�������� ����������� ��������');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', �� ������������� ������ ������� ' +
    '��������� ��������?', '�������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECT_DOCS');
      Add('WHERE ID_PROJECT_DOC = ' + dmIS.qDOCID_PROJECT_DOC.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('������ ��� �������� ������', '������ ��� ��������');
      end;
      fmPrj_S.OpenDOCS;
    end;
end;

procedure TfmPrj_S.tb8Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if (dmIS.qDOCSTATUS.AsInteger in [3, 4]) or not dmIS.qDOCD_FILL.IsNull then
  begin
    MsgInformation('�������� ��� ��������', '������� ���������');
    exit;
  end;
  if MsgQuestion('����� ������� �������� ����� ������������ ' +
    '� ���� ������ � ���������� ��� ��������������. ' + SysVars.NReg +
    ', �� ������������� ������ ��������� ��������� ��������?',
    '������� ���������') = id_yes then

    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('execute procedure FILL_PROJ_DOC(:idd, :idp, 1, NULL)');
      ParamByName('idd').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
      ParamByName('idp').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        Close;
        Clear;
        Add('update PROJECT_DOCS set D_FILL = CURRENT_TIMESTAMP');
        Add('where ID_PROJECT_DOC = :pd1');
        ParamByName('pd1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        fmPrj_S.OpenDOCS;
      except
        raise;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmPrj_S.tb3Click(Sender: TObject);
var
  isstr: variant;
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if dmIS.qDOC.State in [dsInsert, dsEdit] then
    dmIS.qDOC.Post;
  isstr := dmIS.qDOC_TYPE.Lookup('ID_PROJ_DOC_TYPE',
    dmIS.qDOCDOC_TYPE.AsInteger,
    'IS_STRUCTURED');
  if (isstr = NULL) then
    exit;
  if not Assigned(fmDOCS) then
    Application.CreateForm(TfmDOCS, fmDOCS);
  fmDOCS.qDOC.Close;
  fmDOCS.qDOC.ParamByName('pr1').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
  fmDOCS.qDOC.open;
  fmDocs.qDoc.Locate('id_project_doc', dmIs.qDOCID_PROJECT_DOC.AsInteger, []);

  fmDOCS.qPrj.Close;
  fmDOCS.qPrj.ParamByName('id').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
  fmDOCS.qPrj.open;

  fmDOCS.Caption := '������� ��������� - ' + dmIS.qDOCNAME.AsString;
  fmDOCS.ShowModal;
end;

procedure TfmPrj_S.tb5Click(Sender: TObject);
begin
  if dmIS.qDOCID_DRAFT.IsNull then
    exit;
  //fmMain.StoreDoc(0,dmIS.qDOCID_DRAFT.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(dmIS.qDOCID_DRAFT.AsInteger, 0, ''); // ������� �� ����� ���� ����������
 // fmAll.StoreDoc_r(dmIS.qDOCID_DRAFT.Value);
end;

procedure TfmPrj_S.tb7Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if dmIS.qDOCID_DRAFT.IsNull then
    exit;
  if not dmIS.qDOCD_FILL.IsNull then
  begin
    MsgInformation('�������� ��������. ������ ������� ����������.',
      '�������� ����������� ��������');
    exit;
  end;
  if MsgQuestion(SysVars.NReg + ', �� ������������� ������ ������� ' +
    '���������� � ��������� - ' + dmIS.qDOCID_PROJECT_DOC.AsString + ' - ' +
    dmIS.qDOCNAME.AsString + ' ?', '�������� ����������') = id_yes then
  begin
   { with dmIS.qD_IN, dmIS.qD_IN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM DESIGN_DOC WHERE ID_DOC = :id_doc');
      ParamByName('id_doc').AsInteger := dmIS.qDOCID_DRAFT.AsInteger;
      try
        ExecSQL;
        if dmIS.dT.Active then
          dmIS.dT.CommitRetaining;
      except
        if dmIS.dT.Active then
          dmIS.dT.RollbackRetaining;
        MsgError('������ ��� �������� ����������', '������ ��������');
        exit;
      end;
    end;}
    Old_DocBody(dmIS.qDOCID_DRAFT.Value,3,'');
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECT_DOCS SET ID_DRAFT = NULL');
      Add('WHERE ID_PROJECT_DOC = ' + dmIS.qDOCID_PROJECT_DOC.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('������ ��� �������� ������ �� ����������',
          '������ ��� ��������');
        exit;
      end;
    end;
    fmPrj_S.OpenDOCS;
  end;
end;

procedure TfmPrj_S.tb6Click(Sender: TObject);
var
  FName: string;
  ID_I: integer;
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if dmIS.qDOC.State in [dsInsert, dsEdit] then
    dmIS.qDOC.Post;
  if od1.Execute then
  begin
    if dmIS.qDOCID_DRAFT.IsNull then
    begin
      {  with dmIS.qD_IN, dmIS.qD_IN.SQL do begin
         Close;
         Clear;
         Add('SELECT * FROM NEW_DESIGN_DOC( ' + dmIS.qDOCID_PROJECT_DOC.AsString + ',' +
           IntToStr(SysVars.RegTN) + ')');
         try
          Open;
          ID_I := FieldByName('ID_DOC').Value;
          If dmIS.dT.InTransaction Then dmIS.dT.CommitRetaining;
         except
          If dmIS.dT.InTransaction Then dmIS.dT.RollbackRetaining;
          MsgError('������ ��� ������ ������ ������','������ ������');
          exit;
         end;
        end;      }
      ID_I := DocBody(0, 2, od1.FileName);
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('UPDATE PROJECT_DOCS SET ID_DRAFT = ' + IntToStr(ID_I));
        Add('WHERE ID_PROJECT_DOC = ' + dmIS.qDOCID_PROJECT_DOC.AsString);
        try
          ExecSQL;
          if dmIS.mT.InTransaction then
            dmIS.mT.CommitRetaining;
        except
          if dmIS.mT.InTransaction then
            dmIS.mT.RollbackRetaining;
          MsgError('������ ��� ������ ������ ���������', '������ ������');
          exit;
        end;
      end;
    end
    else
    begin
      ID_I := dmIS.qDOCID_DRAFT.Value; //���� ID_DRAFT is not null
      FName := ExtractFileName(od1.FileName);
      DocBody(ID_I, 2, od1.FileName);
    end;

  end;
  fmPrj_S.OpenDOCS;
end;

procedure TfmPrj_S.tb4Click(Sender: TObject);
var FN : String;
begin
 try
  Screen.Cursor := crHourGlass;
  fmPrj_S.OpenDoc_s;
  if dmIS.qDOC_S.IsEmpty then
    exit;
  if (Pos(ansiuppercase('����'), ansiuppercase(dmIS.qDOCnTYPE.AsString)) > 0)
    then
  begin
    frxReport2.Script.Variables['Brief'] := dmIS.qPrjBRIEF.AsString;
    frxReport2.Script.Variables['Manager'] := dmIS.qPrjmANAGER.AsString;
    {
    If dmIS.qDOCD_IN.IsNull Then frxReport2.Script.Variables['Dbeg'] := ''
     else frxReport2.Script.Variables['Dbeg'] := dmIS.qDOCD_IN.AsString ;
    If dmIS.qDOCD_OUT.IsNull Then frxReport2.Script.Variables['D_OUT'] := ''
     else frxReport2.Script.Variables['D_OUT'] := dmIS.qDOCD_OUT.AsString;
    If dmIS.qDOCD_PROD.IsNull Then frxReport2.Script.Variables['D_PROD'] := ''
     else frxReport2.Script.Variables['D_PROD'] := dmIS.qDOCD_PROD.AsString;
    If dmIS.qDOCD_SHIPP.IsNull Then frxReport2.Script.Variables['D_SHIPP'] := ''
     else frxReport2.Script.Variables['D_SHIPP'] := dmIS.qDOCD_SHIPP.AsString;
   }
    frxReport2.Script.Variables['Cli'] := dmIS.qCliPrjNAME.AsString;
    frxReport2.Script.Variables['Brand'] := dmIS.qPrjBNAME.AsString;
    frxReport2.Script.Variables['Product'] := dmIS.qPrjNAME.AsString;
    frxReport2.Script.Variables['Num'] := dmIS.qDOCID_PROJECT.AsString +
      '/' + dmIS.qDOCID_PROJECT_DOC.AsString;
    if dmIS.qDOCID_DRAFT.IsNull then
    begin
      frxReport2.Pages[1].Clear;
      frxReport2.Pages[1].Visible := False;
    end
    else
   try
    FN := Old_DocBody(dmIS.qDOCID_DRAFT.AsInteger,1, '');
    TfrxPictureView(frxReport2.FindObject('Picture2')).Picture.LoadFromFile(FN);
   except
 //   MsgError('����������������� ����������� ������',
 //   '�������� �����������');
   end;


    //  GetDocImage(dmIS.qDOCID_DRAFT.AsInteger, 4);
    frxReport2.ShowReport;
  end
  else
  begin
    frxReport1.Script.Variables['NameDoc'] := dmIS.qDOCNAME.AsString;
    frxReport1.Script.Variables['Cli'] := dmIS.qCliPrjNAME.AsString;
    frxReport1.Script.Variables['Brand'] := dmIS.qPrjBNAME.AsString;
    frxReport1.Script.Variables['Product'] := dmIS.qPrjNAME.AsString;
    frxReport1.Script.Variables['Num'] := dmIS.qDOCID_PROJECT.AsString +
      '/' + dmIS.qDOCID_PROJECT_DOC.AsString;
    if dmIS.qDOCID_DRAFT.IsNull then
    begin
      frxReport1.Pages[1].Clear;
      frxReport1.Pages[1].Visible := False;
    end
    else
    try
     FN := Old_DocBody(dmIS.qDOCID_DRAFT.AsInteger,1, '');
     TfrxPictureView(frxReport2.FindObject('Picture2')).Picture.LoadFromFile(FN);
    except
   //  MsgError('����������������� ����������� ������',
  //   '�������� �����������');
    end;
   //   fmAll.GetDocImage(dmIS.qDOCID_DRAFT.AsInteger, 3);
    frxReport1.ShowReport;
  end;
  dmIS.qDOC_S.Close;

  {
  fmPrj_S.OpenDoc_s;
  If dmIS.qDOC_S.IsEmpty Then exit ;
  If (Pos(ansiuppercase('����'),ansiuppercase(dmIS.qDOCnTYPE.AsString)) > 0)
  Then begin
   frVariables['FManager'] := dmIS.qPrjmANAGER.AsString;
   frVariables['Cli'] := dmIS.qCliPrjNAME.AsString;
   If dmIS.qDOCID_DRAFT.IsNull Then begin
    If frReport2.Pages.Count > 1 Then frReport2.Pages.Delete(1);
   end else GetDocImage(dmIS.qDOCID_DRAFT.AsInteger,2);
   try
    frReport2.ShowReport;
   except
    If frReport2.Pages.Count > 1 Then frReport2.Pages.Delete(1);
    frReport2.ShowReport;
   end;
  end
  else begin
   frVariables['NameDoc'] := dmIS.qDOCNAME.AsString;
   frVariables['Cli'] := dmIS.qCliPrjNAME.AsString;
   If dmIS.qDOCID_DRAFT.IsNull Then begin
    If frReport1.Pages.Count > 1 Then frReport1.Pages.Delete(1);
   end  else GetDocImage(dmIS.qDOCID_DRAFT.AsInteger,1);
   frReport1.ShowReport;
  end;
  dmIS.qDOC_S.Close;
  }
  finally
   Screen.Cursor := crDefault;
  end;
end;

procedure TfmPrj_S.bb41Click(Sender: TObject);
begin
  fmPrj_S.OpenDOCS;
  p2.SendToBack;
end;

procedure TfmPrj_S.bb42Click(Sender: TObject);
begin
  p2.SendToBack;
end;

procedure TfmPrj_S.tbs2Click(Sender: TObject);
begin
  if dmIS.qP_ORDS.IsEmpty then
    exit;
  if not dmIS.qP_ORDSD_CLOSE.IsNull then
    exit;
  if (not dmIS.qP_ORDSID_C.IsNull) then
  begin
    MsgInformation('����� ��������������� � ����������� ���� ������. ' +
      '��� �������� ���������.', '�������� ����������� ��������');
    exit;
  end;
  if dmIS.qP_ORDSSTATUS.AsInteger >= 10 then
  begin
    MsgInformation('������ ������� ������������ �����.',
      '�������� ����������� ��������');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select distinct id_order from product_objects where id_order = :or1');
    ParamByName('or1').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
    Open;
    if not IsEmpty then
    begin
      MsgInformation('C ������ ������� ������� ������������ �������. ' +
        '��� �������� ���������.', '�������� ����������� ��������');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', �� ������������� ������ ������� ' +
    '����� ' + dmIS.qP_ORDSN_ORDER.AsString + ' - ' + dmIS.qP_ORDSNAME.AsString
      +
    ' ?', '�������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECT_ORDS');
      Add('WHERE ID_ORDER = ' + dmIS.qP_ORDSID_ORDER.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        fmPrj_S.OpenOrder;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('������ ��� �������� ������', '������ ��� ��������');
      end;
    end;
end;

procedure TfmPrj_S.dbg3DblClick(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  fmKEReq.Kop := 0;
  fmKEReq.ShowModal;
end;

procedure TfmPrj_S.FormShow(Sender: TObject);
begin
  p3.BringToFront;
  pc1.ActivePage := ts1;
  with dmIS.qPRODS do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  with dmIS.qPTPS do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  tb1.Enabled := fmMain.UF15;
  tb2.Enabled := fmMain.UF15;
  tb3.Enabled := fmMain.UF15;
  tb6.Enabled := fmMain.UF15;
  tb7.Enabled := fmMain.UF15;
  tb8.Enabled := fmMain.UF41;
  tb12.Enabled := fmMain.UF41;
  tb11.Enabled := fmMain.UF41;
  //tb14.Enabled := SysVars.RegTN = 1;
  tbs1.Enabled := fmMain.UF42;
  tbs5.Enabled := fmMain.UF50;
  tbs6.Enabled := fmMain.UF71;
  tbs7.Enabled := fmMain.UF42;
  tbs8.Enabled := fmMain.UF42;
  tbs2.Enabled := fmMain.UF42;
  tbs10.Enabled := fmMain.UF42;
  with dmIS.qDOC_TYPE do
  begin
    Close;
    UpdateObject := nil;
    AfterScroll := nil;
    Open;
    Last;
    First;
  end;
  with dmIS.qFIO do
  begin
    Close;
    Open;
  end;

  fmPrj_S.OpenDOCS;

end;

procedure TfmPrj_S.ed3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed3, Key, 'ID_PROJECT_DOC');
end;

procedure TfmPrj_S.tb9Click(Sender: TObject);
begin
  if dmIS.qDOCID_DRAFT.IsNull then
    exit;
   Old_DocBody(dmIS.qDOCID_DRAFT.AsInteger, 4, ''); // ������� �� ����� ���� ����������
 //fmMain.StoreDoc(3, dmIS.qDOCID_DRAFT.Value, '', dmIS.qR_BODY);
end;

procedure TfmPrj_S.N1Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if dmIS.qDOCiSSTR.AsInteger > 0 then
  begin
    BDOC := dmIS.qDOCID_PROJECT_DOC.AsInteger;
    N2.Visible := True;
  end;
end;

procedure TfmPrj_S.N3Click(Sender: TObject);
begin
  BDOC := -1;
  N2.Visible := False;
end;

procedure TfmPrj_S.N2Click(Sender: TObject);
begin
  if BDOC <= 0 then
    exit;
  if dmIS.qDOC.IsEmpty then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('EXECUTE PROCEDURE REPLICATE_PROJ_DOC(:s1,:d1)');
    ParamByName('s1').AsInteger := BDOC;
    ParamByName('d1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
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

procedure TfmPrj_S.ppm1Popup(Sender: TObject);
begin
  N1.Visible := dmIS.qDOCID_PROJECT_DOC.AsInteger > 0;
  N2.Visible := BDOC > 0;
  N3.Visible := BDOC > 0;
end;

procedure TfmPrj_S.bb3Click(Sender: TObject);
begin
  if MsgQuestion('��� ������ - ' + dmIS.qCliOrdNAME.AsString +
    ' - � �������� ���������-��������� ����� ���������� ��������: ' +
    dmIS.qDOCNAME.AsString + '. ' + SysVars.NReg + ', ���������� ������? ',
    '������ ������ �� ��������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECT_ORDS SET ID_PROJECT = :pr1 , ID_DOC = :doc1');
      Add('WHERE ID_ORDER = :ord1');
      ParamByName('ord1').AsInteger := dmIS.qCliOrdID_ORDER.AsInteger;
      ParamByName('pr1').AsInteger := dmIS.qDOCID_PROJECT.AsInteger;
      ParamByName('doc1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenDOCS;
      except
        MsgError('������ ������ ������ �� ��������', '������ ������');
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
  dmIS.qCliOrd.Close;
  p6.SendToBack;
end;

procedure TfmPrj_S.bb4Click(Sender: TObject);
begin
  dmIS.qCliOrd.Close;
  p6.SendToBack;
end;

procedure TfmPrj_S.tbs5Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  OpenCliOrders;
  if dmIS.qCliOrd.IsEmpty then
    exit;
  p6.BringToFront;
end;

procedure TfmPrj_S.dbg5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with dbg5.Canvas do
  begin
    if (dmIS.qFILL_DF_TYPE.AsInteger = 0) and not (gdFocused in State) then
    begin
      Font.Style := [fsStrikeOut];
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmPrj_S.tb11Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if (dmIS.qDOCSTATUS.AsInteger in [3, 4]) then
  begin
    MsgInformation('�������� ���������. ������ ��������� ������ ��������.',
      '�������� �������.');
    exit;
  end;
  if not Assigned(fmFILL) then
    Application.CreateForm(TfmFILL, fmFILL);
  fmFILL.F_TP := 3;
  fmFILL.Caption := '���������� ���������: ' + dmIS.qDOCNAME.AsString;
  fmFILL.ShowModal;
  OpenDOCS;
end;

procedure TfmPrj_S.dbg1DblClick(Sender: TObject);
begin
{  if not dmIS.dbDOC.Connected then
  try
    dmIS.dbDOC.Connected := true;
  except
  end;  }
  if dmIS.qDOCID_DRAFT.IsNull then
    exit;
  //fmMain.StoreDoc(0,dmIS.qDOCID_DRAFT.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
 Old_DocBody(dmIS.qDOCID_DRAFT.AsInteger, 0 ,''); // ������� �� ����� ���� ����������
 // fmAll.StoreDoc_r(dmIS.qDOCID_DRAFT.Value);
end;

procedure TfmPrj_S.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  with dbg1.Canvas do
  begin
    if (dmIS.qDOCSTATUS.AsInteger = 4) and not (gdFocused in State) then
    begin
      Font.Style := [fsStrikeOut];
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmPrj_S.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenDOCS;
end;

procedure TfmPrj_S.tbs6Click(Sender: TObject);
begin
  if dmIS.qP_ORDS.IsEmpty then
    exit;
  if not dmIS.qP_ORDSD_CLOSE.IsNull then
    exit;
  if not Assigned(fmEst) then
    Application.CreateForm(TfmEst, fmEst);
  with fmEst do
  begin
    if Showing then
      Close;
    C_ORDER := dmIS.qP_ORDSID_ORDER.AsInteger;
    C_ESTIMATE := dmIS.qP_ORDSID_ESTIMATE.AsInteger;
    C_PRODUCT := dmIS.qP_ORDSID_PRODUCT.AsInteger;
    ed2.Text := dmIS.qP_ORDSID_PRODUCT.AsString;
    ShowModal;
  end;
  OpenDOCS;
end;

procedure TfmPrj_S.dbg2DblClick(Sender: TObject);
begin
  if dmIS.qP_ORDS.IsEmpty then
    exit;
  if not Assigned(fmKOrd) then
    Application.CreateForm(TfmKOrd, fmKOrd);
  fmKOrd.C_ORD := dmIS.qP_ORDSID_ORDER.AsInteger;
  fmKOrd.Show;
end;

procedure TfmPrj_S.dbg2SortMarkingChanged(Sender: TObject);
begin
  OpenOrder;
end;

procedure TfmPrj_S.dbg4SortMarkingChanged(Sender: TObject);
begin
  OpenCliOrders;
end;

procedure TfmPrj_S.tbs1Click(Sender: TObject);
begin
try
 Screen.Cursor := crHourGlass;
  if not Assigned(fmNewOrd) then
    Application.CreateForm(TfmNewOrd, fmNewOrd);
  fmNewOrd.Kop := 1;
  fmNewOrd.lcbUragent.KeyValue := null;
  fmNewOrd.d_open := 0;
  fmNewOrd.Caption := '����� �����';
  fmNewOrd.Show;
 finally
  Screen.Cursor := crDefault;
 end;
end;

procedure TfmPrj_S.tbs7Click(Sender: TObject);
begin
  if dmIS.qP_ORDS.IsEmpty then
    exit;
  if dmIS.qP_ORDSSTATUS.AsInteger > 9 then
  begin
    MsgInformation('����� ���������. �������������� ���������',
      '�������� �����������');
    exit;
  end;
  if not Assigned(fmNewOrd) then
    Application.CreateForm(TfmNewOrd, fmNewOrd);
  fmNewOrd.Kop := 2;
  fmNewOrd.lcbUragent.KeyValue := dmIS.qP_ORDSIS_SELF.AsInteger;
  fmNewOrd.d_open := dmIS.qP_ORDSD_OPEN.AsDateTime;
  fmNewOrd.Caption := '�������������� ������ ������';
  fmNewOrd.Show;
  //OpenOrder;
end;

procedure TfmPrj_S.tbs8Click(Sender: TObject);
begin
  if dmIS.mT.Active then dmIS.mt.CommitRetaining;
  if dmIS.qP_ORDS.IsEmpty then
    exit;
   {*******************************************************************************
                    �������� �� ������� ���������� ����������
                   (�������� ������������ ��������� � �������)
  *******************************************************************************}
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    // �������� �� ��������� ������
    Close;
    Clear;
    Add('select p.d_dismiss from project_ords s');
    Add('join personnel p on p.id_p = s.id_fix');
    Add('where s.id_order = :id_order');
    Add('and s.id_fix = :id_fix and p.is_fact is null');
    ParamByName('id_order').AsInteger := dmiS.qP_ORDSID_ORDER.AsInteger;
    ParamByName('id_fix').AsInteger := SysVars.RegTN;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('�� �� ������ ��������� �����, ��� ���, �������� ����� ������,' +
        '� ���� ������� ������� ������', '��������');
      Exit;
    end;
    // �������� �� ������� ���� ��������� ������
    Close;
    Clear;
    Add('select p.d_dismiss from projects s');
    Add('join personnel p on p.id_p = s.id_manager');
    Add('where s.id_project = :id_project and s.id_manager = ');
    Add('(select id_manager from projects where id_project = :id_project) and p.is_fact is null');
    ParamByName('id_project').AsInteger := dmiS.qP_ORDSID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('�� �� ������ ��������� �����, ��� ���, �������� �������, ' +
        ' � �������� ��������� ��������� �����,' +
        '� ���� ������� ������� ������', '��������');
      Exit;
    end;     

    // �������� �� ����������� ������ ��� ����������� ������
{    Close;
    Clear;
    Add('select id_fix from project_ords s where s.id_order = :id_order');
    ParamByName('id_order').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
    Open;
    if dmIS.qIN.FieldByName('id_fix').IsNull then
    begin

    end;   }
  end;     
  //******************************************************************************
  if dmIS.qP_ORDSID_FIX.IsNull then
  begin
   MsgError('�� �� ������ ��������� �����, ��� ��� �� ������ �������� ������',
   '��������');
   Exit;
  end;

  if dmIS.qP_ORDSSTATUS.AsInteger > 9 then
  begin
    MsgInformation('����� ��� ���������.', '�������� �����������');
    exit;
  end;
  {with dmIS.qIN, dmIS.qIN.SQL do begin
   Close;
   Clear;
   Add('select id_c from items where id_item = :i1');
   ParamByName('i1').AsInteger := dmIS.qP_ORDSID_AGENT.AsInteger;
   Open;
   If IsEmpty or (FieldByName('id_c').AsInteger = 0) Then begin
    MsgInformation('��� ���� ������� � ����������� ����. ����������� ����������',
    '�������� �����������');
    exit;
   end;
  end;  }

  if dmIS.qP_ORDSID_DOGOVOR.IsNull then
  begin
    MsgInformation('� ������ �� �������� �������! ����������� ����������',
      '�������� �����������');
    exit;
  end;

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select status, d_fill from project_docs where id_project_doc = :doc1');
    ParamByName('doc1').AsInteger := dmIS.qP_ORDSID_DOC.AsInteger;
    Open;
    if not ((FieldByName('status').AsInteger = 3) or (not
      FieldByName('d_fill').IsNull)) then
    begin
      MsgInformation('��������-��������� �� ��������. ����������� ����������',
        '�������� �����������');
      exit;
    end;
  end;

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    //�������� �� ���. �����
    close;
    clear;
    add('select is_est from ptypes where id_ptype = :id_ptype');
    parambyname('id_ptype').AsInteger := dmIS.qP_ORDSID_CPTYPE.AsInteger;
    open;
    if fieldbyname('is_est').AsInteger = 1 then
    begin
      if dmIS.qP_ORDSID_ESTIMATE.IsNull then
      begin
        MsgError('� ������ ����������� �����!', '�������� ������');
        exit;
      end;

      close;
      clear;
      add('select id_estimate, price_date from estimates where id_estimate = :id_estimate');
      parambyname('id_estimate').AsInteger := dmIS.qP_ORDSID_ESTIMATE.AsInteger;
      Open;
      if (not IsEmpty) and (FieldByName('id_estimate').AsInteger > 0) then
      begin
        if (fmMain.S35 = 1) and
          (now - Int(fieldbyname('price_date').AsDateTime) > fmMain.S36) then
        begin

          MsgError('������ ��������� �����. ������ ������� ��� ��������� ' +
            inttostr(fmMain.S36) + ' ��.!', '�������� ������');
          exit;
        end;
      end;
    end;
  end;

  if MsgQuestion('����� ����������� ����� ����� ���������� ��� ��������������. '
    +
    SysVars.NReg + ', �� ������������� ������ ��������� �����?',
    '����������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('insert into project_ords_state (ID_ORDER, ID_ORD_EVENT, D_FACT, ID_FACT)');
      Add('values(:rno, 20, current_timestamp, :id_conf)');
      ParamByName('rno').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
      ParamByName('id_conf').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenOrder;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmPrj_S.tbs9Click(Sender: TObject);
begin
  OpenOrder;
end;

procedure TfmPrj_S.tb12Click(Sender: TObject);
begin
  if dmIS.qDOC.IsEmpty then
    exit;
  if (dmIS.qDOCSTATUS.AsInteger in [0, 1]) and dmIS.qDOCD_FILL.IsNull then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select p.id_order from project_ords p');
    Add('where p.status >=10 and p.d_reject is null and p.id_doc = :d1');
    ParamByName('d1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
    Open;
    if not IsEmpty then
    begin
      MsgInformation('�������� �������� ����������-���������� ������������� ������.'
        +
        ' ������ ����������� ��������� ���������.', '��������');
      exit;
    end;
  end;
  if MsgQuestion('� ��������� - ' + dmIS.qDOCNAME.AsString +
    '- ����� ����� �����������. ' + SysVars.NReg + ', ����� �����������?',
    ' ������ �����������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('update PROJECT_DOCS set STATUS = 1, D_FILL = NULL where ID_PROJECT_DOC = :idd1 ');
      ParamByName('idd1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
      try
        ExecSQL;
        Close;
        Clear;
        Add('delete from PROJECT_DOCS_FILL where ID_PROJECT_DOC = :id1');
        ParamByName('id1').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenDOCS;
      except
        MsgError('������ ��� ������ �����������', '������');
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmPrj_S.tb14Click(Sender: TObject);
begin
  if not Assigned(fmKEReq) then
    Application.CreateForm(TfmKEReq, fmKEReq);
  if dmIS.qDOC.IsEmpty then
  begin
    MsgInformation('�� ����� ��������-��������� ��� ������',
      '�������� ���������');
    exit;
  end;
  if dmIS.qDOCID_DRAFT.IsNull then
  begin
    MsgInformation('�������� �� �������� ���������� ', '�������� ����������');
    exit;
  end;
  if dmIS.qDOCfILL.IsNull then
  begin
    MsgInformation('�������� �� ���������', '�������� ������� ���������');
    exit;
  end;
  with fmKEReq do
  begin
    Kop := 1;
    fmKEReq.m1.Text := '';
    C_PROJECT := C_Prj;
    ID_DOC := dmIS.qDOCID_DRAFT.AsInteger;
    ShowModal;
  end;
  OpenReq;
  pc2.ActivePage := tss2;
  dmIS.qEstReq.Locate('ID_REQUEST', fmKEReq.New_Req, []);
end;

procedure TfmPrj_S.pc2Change(Sender: TObject);
begin
  if pc2.ActivePage = tss2 then
    OpenReq;
end;

procedure TfmPrj_S.dbg3SortMarkingChanged(Sender: TObject);
begin
  OpenReq;
end;

procedure TfmPrj_S.dbg3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (dmIS.qEstReqSTATUS.AsInteger > 29) then
    Background := clSkyBlue;
  if not dmIS.qEstReqD_FIX.IsNull then
    Background := clMoneyGreen;
end;

procedure TfmPrj_S.tbz8Click(Sender: TObject);
begin
  if dmIS.qEstReqID_DOC.IsNull then
    exit;
  //fmMain.StoreDoc(0,dmIS.qEstReqID_DOC.Value,'',dmIS.qR_BODY);
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
 Old_DocBody(dmIS.qEstReqID_DOC.AsInteger, 0 ,''); // ������� �� ����� ������ ���� ����������
 // fmAll.StoreDoc_r(dmIS.qEstReqID_DOC.Value);
end;

procedure TfmPrj_S.tbz2Click(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if not dmIS.qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('������ ������������� ������������ ������',
      '�������� �������');
    exit;
  end;
  fmKEReq.Kop := 2;
  fmKEReq.ShowModal;
  OpenReq;
end;

procedure TfmPrj_S.tbz3Click(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if not dmIS.qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('������ ����������. �������� ����������',
      '�������� �������');
    exit;
  end;
  if MsgQuestion('������ � ' + dmIS.qEstReqID_REQUEST.AsString +
    ' ����� �������. ������� ������?', '�������� ������') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM ESTIMATE_REQUESTS WHERE ID_REQUEST = :c_req');
      ParamByName('c_req').AsInteger := dmIS.qEstReqID_REQUEST.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenReq;
      except
        MsgError('������ ��� �������� ������', '������ ������');
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
end;

procedure TfmPrj_S.tbz4Click(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if not dmIS.qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('������ ��� ����������', '�������� �������');
    exit;
  end;
  Screen.Cursor := crHourGlass;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('UPDATE ESTIMATE_REQUESTS SET D_MANAGER = CURRENT_TIMESTAMP');
    Add(', ID_MANAGER = :idp1, STATUS = 10');
    Add('WHERE ID_REQUEST = :c_req');
    ParamByName('idp1').AsInteger := SysVars.RegTN;
    ParamByName('c_req').AsInteger := dmIS.qEstReqID_REQUEST.AsInteger;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      OpenReq;
    except
      MsgError('������ ������ ������', '������ ������');
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmPrj_S.tbz5Click(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if dmIS.qEstReqD_MANAGER.IsNull then
    exit;
  if dmIS.qEstReqSTATUS.AsInteger > 10 then
  begin
    MsgInformation('������ ��� ������� ���. ������ ����������� ���������',
      '�������� �������');
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
    ParamByName('c_req').AsInteger := dmIS.qEstReqID_REQUEST.AsInteger;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      OpenReq;
    except
      MsgError('������ ������ ������', '������ ������');
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmPrj_S.tbz7Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg3);
  Screen.Cursor := crDefault;
end;

procedure TfmPrj_S.tbz9Click(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if not dmIS.qEstReqD_MANAGER.IsNull then
  begin
    MsgInformation('������ ����������. ������ ���������� ����������',
      '�������� ������� ������');
    exit;
  end;
  if dmIS.qDOC.IsEmpty then
  begin
    MsgInformation('�� ����� ��������-��������� ��� ������',
      '�������� ���������');
    exit;
  end;
  if dmIS.qDOCID_DRAFT.IsNull then
  begin
    MsgInformation('�������� �� �������� ���������� ', '�������� ����������');
    exit;
  end;
  if dmIS.qDOCfILL.IsNull then
  begin
    MsgInformation('�������� �� ���������', '�������� ������� ���������');
    exit;
  end;
  if MsgQuestion('� ������ � ' + dmIS.qEstReqID_REQUEST.AsString +
    ' ����� �������� �������� � ' + dmIS.qDOCID_PROJECT_DOC.AsString +
    ' - ' + dmIS.qDOCNAME.AsString + ' ����������?',
    '��������� ����������') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE ESTIMATE_REQUESTS SET ID_DOC = :c_doc');
      Add('WHERE ID_REQUEST = :c_req');
      ParamByName('c_doc').AsInteger := dmIS.qDOCID_DRAFT.AsInteger;
      ParamByName('c_req').AsInteger := dmIS.qEstReqID_REQUEST.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        OpenReq;
      except
        MsgError('������ ������ ���������� � ������', '������ ������');
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
end;

procedure TfmPrj_S.tbz6Click(Sender: TObject);
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if dmIS.qEstReqID_ESTIMATE.IsNull then
    MsgInformation('��� ������ ������ ����� �� ����������', '��������')
  else
  begin
    if not Assigned(fmEst) then
      Application.CreateForm(TfmEst, fmEst);
    if fmEst.Showing then
      fmEst.Close;
    fmEst.C_ESTIMATE := dmIS.qEstReqID_ESTIMATE.AsInteger;
    fmEst.Show;
  end;
end;

procedure TfmPrj_S.tbs10Click(Sender: TObject);
begin
  if dmIS.qP_ORDS.IsEmpty then
    exit;
  {If dmIS.qP_ORDSSHIP.AsFloat > 0 Then begin
   MsgInformation('�� ������ ��������� ��������. ��������� ������ ���������',
   '�������� ������� ��������');
   exit;
  end; }
  if dmIS.qP_ORDSSTATUS.AsInteger < 30 then
  begin
    MsgInformation('����� ��� �� ������ �������������. ��������� ������ ' +
      '�������� ��� ������ ��������������� �����������', '�������� �������');
    exit;
  end;
  if not Assigned(fmKCH_REQ) then
    Application.CreateForm(TfmKCH_REQ, fmKCH_REQ);
  if not Assigned(fmCH_REQ) then
    Application.CreateForm(TfmCH_REQ, fmCH_REQ);
  with fmKCH_REQ do
  begin
    C_ORDER := dmIS.qP_ORDSID_ORDER.AsInteger;
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

procedure TfmPrj_S.dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not dmIS.qP_ORDSD_REJECT.IsNull then
    AFont.Style := [fsStrikeOut];
  if (not dmIS.qP_ORDSD_CLOSE.IsNull) then
    Background := clMoneyGreen;
end;

procedure TfmPrj_S.GetDocImage(Doc_id: integer; Fr: word);
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
        3:
          TfrxPictureView(frxReport1.FindObject('Picture2')).Picture.LoadFromFile(FN);
        4:
          TfrxPictureView(frxReport2.FindObject('Picture2')).Picture.LoadFromFile(FN);
      end;
    except
      MsgError('����������������� ����������� ������', '�������� �����������');
    end;
  finally;
    DeleteFile(FN);
    FN := '';
  end;
end;

procedure TfmPrj_S.SpeedButton1Click(Sender: TObject);
var
  id_i, i: integer;
  FName: string;
begin
  if dmIS.qEstReq.IsEmpty then
    exit;
  if not dmIS.qEstReqD_FIX.IsNull then
  begin
    MsgInformation('������ ��� ���������. ������ �������� ��������.',
      '�������� ����������� ��������������');
    exit;
  end;
  if od2.Execute then
  begin
   { if dmIs.dbDOC.Connected = false then
      dmIs.dbDOC.Connected := true;
                                      }
    for i := 0 to od2.Files.Count - 1 do
    begin
      with dmIS.qD_IN, dmIS.qD_IN.SQL do
      begin
        Close;
        Clear;
        Add('SELECT * FROM NEW_DESIGN_DOC( ' + dmIS.qEstReqID_REQUEST.AsString +
          ',' +
          IntToStr(SysVars.RegTN) + ')');
        try
          Open;
          ID_I := FieldByName('ID_DOC').Value;
          if dmIS.dT.Active then
            dmIS.dT.CommitRetaining;
        except
          if dmIS.dT.Active then
            dmIS.dT.RollbackRetaining;
          MsgError('������ ��� ������ ������ ���������', '������ ������');
          exit;
        end;
      end;

      with qIN, qIN.SQL do
      begin
        Close;
        Clear;
        add('insert into request_docs (id_req_doc, id_req, id_doc, d_edit, id_edit, name)');
        add('values (GEN_ID(product_docs_id, 1), :id_req, :id_doc, current_date, :id_edit, :name)');
        try
          Parambyname('id_req').AsInteger := dmIS.qEstReqID_REQUEST.AsInteger;
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
          MsgError('������ ��� ������ ������ ���������', '������ ������');
          exit;
        end;
      end;

      FName := ExtractFileName(od2.Files.Strings[i]);

      Old_DocBody(id_i, 2,''); // ������� �� ����� ���� ����������
 {     if dmIs.dbDOC.Connected = false then
        dmIs.dbDOC.Connected := true;
      Store_Doc(2, ID_I, FName, dmIS.upBody2, nil)     }

    end;
  end;
  qRDoc.close;
  qRDoc.Open;
end;

procedure TfmPrj_S.SpeedButton2Click(Sender: TObject);
begin
  if not dmIS.qEstReqD_FIX.IsNull then
  begin
    showmessage('������  ����������!!! �������� ����������');
    exit;
  end;
  if MsgQuestion('�� ������������� ������ ������� �������� �� ������?',
    '�������� ���������') = id_yes then
  begin
    with qIN, qIN.SQL do
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

procedure TfmPrj_S.DBGridEh1DblClick(Sender: TObject);
begin
  if dmIS.qEstReqID_DOC.IsNull then
    exit;
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qRDocID_DOC.AsInteger, 0, ''); // ������� �� ����� ���� ����������
 // fmAll.StoreDoc_r(qRDocID_DOC.Value);
 // dmIS.dbDOC.Connected := False;
end;

procedure TfmPrj_S.SpeedButton3Click(Sender: TObject);
begin
  if not dmIS.qEstReqD_FIX.IsNull then
  begin
    showmessage('������  ����������!!! �������������� ��������� ����������');
    exit;
  end;
  if MsgQuestion('�� ������������� ������ �������� ������?',
    '�������������� ���������') = id_yes then
  begin
    with qIN, qIN.SQL do
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

procedure TfmPrj_S.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qRDocID_REQ_DOC.AsInteger = 0 then
    Afont.style := [fsbold];
  if not qRDocD_REJECT.IsNull then
    AFont.Color := clGray;
end;

procedure TfmPrj_S.qRDocBeforeOpen(DataSet: TDataSet);
begin

  with qrDoc, qRDoc.sql do
  begin
    close;
    clear;
    add('select cast (0 as integer) id_req_doc,');
    add('rr.id_request, cast (d.d_fix as date) d_edit,');
    add('d.name, pp.fio, rr.id_doc, null d_reject, null id_reject, d.id_project ');
    add('from project_docs d');
    add('join estimate_requests rr on rr.id_doc = d.id_draft ');
    add('left join personnel pp on pp.id_p = d.id_fix ');
    add('where rr.id_request =:id_request ');
    add('union');
    add('select r.id_req_doc, ');
    add('r.id_req, r.d_edit,');
    add('r.name, p.fio, r.id_doc, r.d_reject, r.id_reject, rr.id_project ');
    add('from request_docs r ');
    add('left join personnel p on p.id_p = r.id_edit');
    add('left join estimate_requests rr on rr.id_request = r.id_req');
    add('where r.id_req = :id_request ');

    if cbDEl.Checked = false then
      add(' and r.d_reject is null  ');
  end;
end;

procedure TfmPrj_S.tb10Click(Sender: TObject);
begin
  GridToExcel(dbg1);
end;

procedure TfmPrj_S.ToolButton13Click(Sender: TObject);
begin
  GridToExcel(dbg2);
end;

procedure TfmPrj_S.tbRezervClick(Sender: TObject);
begin
   if dmIs.qP_ORDS.IsEmpty then
    exit;

  {*******************************************************************************
                    �������� �� ������� ���������� ����������
                   (�������� ������������ ��������� � �������)
  *******************************************************************************}
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    // �������� �� ��������� ������
    Close;
    Clear;
    Add('select p.d_dismiss from project_ords s');
    Add('join personnel p on p.id_p = s.id_fix');
    Add('where s.id_order = :id_order');
    Add('and s.id_fix = :id_fix and p.is_fact is null');
    ParamByName('id_fix').AsInteger   := SysVars.RegTN;
    ParamByName('id_order').AsInteger := dmIs.qP_ORDSID_ORDER.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('�� �� ������ ��������� �����, ��� ���, �������� ����� ������,' +
        '� ���� ������� �������, �������� ���������', '��������');
      Exit;
    end;
    // �������� �� ������� ���� ��������� ������
    Close;
    Clear;
    Add('select p.d_dismiss from projects s');
    Add('join personnel p on p.id_p = s.id_manager');
    Add('where s.id_project = :id_project and s.id_manager = ');
    Add('(select id_manager from projects where id_project = :id_project) and p.is_fact is null');
    ParamByName('id_project').AsInteger := dmIs.qP_ORDSID_PROJECT.AsInteger;
    Open;
    if not dmIS.qIN.FieldByName('d_dismiss').IsNull then
    begin
      MsgError('�� �� ������ ��������� �����, ��� ���, �������� �������, ' +
        ' � �������� ��������� ��������� �����,' +
        '� ���� ������� �������, �������� ���������', '��������');
      Exit;
    end;
    // �������� �� ����������� ������ ��� ����������� ������
    Close;
    Clear;
    Add('select d_fix from projects s where s.id_project = ' +
      dmIs.qP_ORDSID_PROJECT.AsString);
    Open;
    if IsEmpty then
    begin
      MsgError('�� �� ������ ��������� �����, ��� ��� ������ ��� �� ���������',
        '��������');
      Exit;
    end;
  end;
  //******************************************************************************

  if dmIs.qP_ORDSD_FIX.IsNull then
  begin
    MsgInformation('���������� ���������� ���� ������������, �.� ����� ����� ������� "������".', '�������� �����������');
    exit;
  end;

  if dmIs.qP_ORDSSTATUS.AsInteger > 6 then
  begin
    MsgInformation('����� ��� ���������.', '�������� �����������');
    exit;
  end;
  {if dmIs.qP_ORDSSTATUS.AsInteger < 9 then
    if not TestInfoOrder then
      exit;}

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select status, d_fill from project_docs where id_project_doc = :doc1');
    ParamByName('doc1').AsInteger := dmIS.qP_ORDSID_DOC.AsInteger;
    Open;
    if not ((FieldByName('status').AsInteger = 3) or (not
      FieldByName('d_fill').IsNull)) then
    begin
      MsgInformation('��������-��������� �� ��������. ����������� ����������',
        '�������� �����������');
      exit;
    end;
  end;

  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    //�������� �� ���. �����
    close;
    clear;
    add('select is_est from ptypes where id_ptype = :id_ptype');
    parambyname('id_ptype').AsInteger := dmIS.qP_ORDSID_CPTYPE.AsInteger;
    open;
    if fieldbyname('is_est').AsInteger = 1 then
    begin
      if dmIS.qP_ORDSID_ESTIMATE.IsNull then
      begin
        MsgError('� ������ ����������� �����!', '�������� ������');
        exit;
      end;

      close;
      clear;
      add('select id_estimate, price_date from estimates where id_estimate = :id_estimate');
      parambyname('id_estimate').AsInteger := dmIS.qP_ORDSID_ESTIMATE.AsInteger;
      Open;
      if (not IsEmpty) and (FieldByName('id_estimate').AsInteger > 0) then
      begin
        if (fmMain.S35 = 1) and
          (now - Int(fieldbyname('price_date').AsDateTime) > fmMain.S36) then
        begin

          MsgError('������ ��������� �����. ������ ������� ��� ��������� ' +
            inttostr(fmMain.S36) + ' ��.!', '�������� ������');
          exit;
        end;
      end;
    end;
  end;


  if
    MsgQuestion('����� ����������� ����� ����� �������� � ��������� "�������". '
    +
    SysVars.NReg + ', �� ������������� ������ ��������� �����?',
    '����������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('insert into project_ords_state (ID_ORDER, ID_ORD_EVENT, D_FACT, ID_FACT)');
      Add('values(:rno, 15, current_timestamp, :id_conf)');
      ParamByName('rno').AsInteger := dmIs.qP_ORDSID_ORDER.AsInteger;
      ParamByName('id_conf').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
       // OpenOrds;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
  OpenOrder;
end;

end.
