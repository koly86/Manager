unit unEstReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ExtCtrls, DBCtrls, Grids, DBGridEh,
  ComCtrls, ToolWin, Menus, StdCtrls, DB, IBCustomDataSet, IBQuery, Mask,
  DBCtrlsEh, DBLookupEh, Buttons, StrUtils;

type
  TfmEstReq = class(TMainForm)
    p1: TPanel;
    dbg1: TDBGridEh;
    dbn1: TDBNavigator;
    clb1: TCoolBar;
    tlb1: TToolBar;
    ToolButton1: TToolButton;
    tb4: TToolButton;
    tb3: TToolButton;
    dbm1: TDBMemo;
    tb5: TToolButton;
    tb10: TToolButton;
    ToolButton3: TToolButton;
    tb11: TToolButton;
    tlb2: TToolBar;
    tb0: TToolButton;
    ToolButton6: TToolButton;
    qEReq: TIBQuery;
    dsEReq: TDataSource;
    qEReqID_REQUEST: TIntegerField;
    qEReqID_PROJECT: TIntegerField;
    qEReqSTATUS: TIntegerField;
    qEReqDESCRIPTION: TMemoField;
    qEReqID_DOC: TIntegerField;
    qEReqD_MANAGER: TDateTimeField;
    qEReqID_MANAGER: TIntegerField;
    qEReqID_ESTIMATE: TIntegerField;
    qEReqID_CONSTR: TIntegerField;
    qEReqID_ESTIMATOR: TIntegerField;
    qEReqD_GET: TDateTimeField;
    qEReqD_FIX: TDateTimeField;
    qEReqMANAGER: TIBStringField;
    qEReqCONSTR: TIBStringField;
    qEReqESTIMATOR: TIBStringField;
    qEReqNAME: TIBStringField;
    qEReqID_AGENT: TIntegerField;
    qEReqAGENT: TIBStringField;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel1: TPanel;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton4: TToolButton;
    tb6: TToolButton;
    tb7: TToolButton;
    Label5: TLabel;
    lcb1: TDBLookupComboboxEh;
    qMan: TIBQuery;
    dsMan: TDataSource;
    qManID_P: TIntegerField;
    qManFIO: TIBStringField;
    qCli: TIBQuery;
    dsCli: TDataSource;
    qCliID_ITEM: TIntegerField;
    qCliNAME: TIBStringField;
    ToolButton11: TToolButton;
    Label1: TLabel;
    lcb2: TDBLookupComboboxEh;
    qEReqD_CREATE: TDateTimeField;
    qEReqID_CREATOR: TIntegerField;
    qEReqCREATOR: TIBStringField;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Bevel1: TBevel;
    Label8: TLabel;
    DBText8: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText9: TDBText;
    Label12: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    Label13: TLabel;
    DBText14: TDBText;
    Label14: TLabel;
    DBText15: TDBText;
    Label32: TLabel;
    ed1: TEdit;
    ToolButton5: TToolButton;
    Label15: TLabel;
    dtp1: TDBDateTimeEditEh;
    Label16: TLabel;
    dtp2: TDBDateTimeEditEh;
    qEReqREM: TBlobField;
    ToolButton9: TToolButton;
    cbPrv: TCheckBox;
    Panel2: TPanel;
    Splitter1: TSplitter;
    qT: TIBQuery;
    qTREQ_TYPE: TIntegerField;
    qTNAME: TIBStringField;
    qVid: TIBQuery;
    qVidREQ_KIND: TIntegerField;
    qVidNAME: TIBStringField;
    dsVid: TDataSource;
    dsT: TDataSource;
    ToolButton2: TToolButton;
    Label20: TLabel;
    lcbVid: TDBLookupComboboxEh;
    Label19: TLabel;
    lcbT: TDBLookupComboboxEh;
    qEReqKIND: TIBStringField;
    qEReqTYPE: TIBStringField;
    qRDoc: TIBQuery;
    qRDocID_REQ_DOC: TIntegerField;
    qRDocID_REQUEST: TIntegerField;
    qRDocD_EDIT: TDateField;
    qRDocNAME: TIBStringField;
    qRDocFIO: TIBStringField;
    qRDocID_DOC: TIntegerField;
    qRDocD_REJECT: TDateField;
    dsRDoc: TDataSource;
    od2: TOpenDialog;
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cbDel: TCheckBox;
    qIns: TIBQuery;
    Label17: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tb5Click(Sender: TObject);
    procedure tb11Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb0Click(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb10Click(Sender: TObject);
    procedure cbPrvClick(Sender: TObject);
    procedure lcbVidChange(Sender: TObject);
    procedure lcbTChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qRDocBeforeOpen(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    C_REQ: integer;
    procedure OpenReq;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEstReq: TfmEstReq;

implementation
uses unMain, unIS, unREP, unKEReq, unEst, uAll;

const
  id_Form = 34;

{$R *.dfm}

procedure TfmEstReq.OpenReq;
begin
  qRDoc.close;
  qRDoc.open;
  Screen.Cursor := crHourGlass;
  with qEReq, qEReq.SQL do
  begin
    if Active then
      C_REQ := dmIS.qEstReqID_REQUEST.AsInteger;
    Close;
    Clear;
    Add('select r.id_request, r.id_project, r.status, r.description, r.id_doc,');
    Add('r.d_manager, r.id_manager, r.id_estimate, r.id_constr, r.id_estimator,');
    Add('r.d_get, r.d_fix, m.fio manager, c.fio constr, e.fio estimator, p.name');
    Add(',p.id_agent, i.name agent, r.d_create, r.id_creator, t.fio creator, r.rem, k.name kind, tp.name type');
    Add('from estimate_requests r join projects p');
    Add('on p.id_project = r.id_project');
    Add('left join items i on i.id_item = p.id_agent');
    Add('left join personnel m on m.id_p = r.id_manager');
    Add('left join personnel c on c.id_p = r.id_constr');
    Add('left join personnel e on e.id_p = r.id_estimator');
    Add('left join personnel t on t.id_p = r.id_creator');
    add('left join REQUESTS_KINDS k on k.REQ_KIND = r.REQ_KIND');
    add('left join REQUESTS_TYPES tp on tp.REQ_TYPE = r.REQ_TYPE');
    Add('where 1=1');
    if not VarIsNull(dtp1.Value) then
    begin
      Add('and r.d_create >= :d1');
      ParamByName('d1').AsDate := Int(TDateTime(dtp1.Value));
    end;
    if not VarIsNull(dtp2.Value) then
    begin
      Add('and ((r.d_create < :d2 + 1) or (r.d_create is null))');
      ParamByName('d2').AsDate := Int(TDateTime(dtp2.Value));
    end;
    if tb2.Down then
      Add('and r.d_manager is not null and r.d_get is null' +
        ' and r.d_fix is null');
    if tb6.Down then
      Add('and r.d_get is not null and f.d_fix is null');
    if tb7.Down then
      Add('and r.d_fix is not null');
    if lcb1.KeyValue <> null then
      Add('and r.id_manager = ' + IntToStr(lcb1.KeyValue));
    if lcb2.KeyValue <> null then
      Add('and p.id_agent = ' + IntToStr(lcb2.KeyValue));
    if lcbT.KeyValue <> null then
      Add('and tp.req_type = ' + IntToStr(lcbT.KeyValue));

    if lcbVid.KeyValue <> null then
      Add('and k.req_kind = ' + IntToStr(lcbVid.KeyValue));
    //******************************
    if cbPrv.Checked then
      add('and r.id_creator =' + inttostr(sysvars.RegTN));
    Add(OrdBy(dbg1));

    Open;
    Locate('ID_REQUEST', C_REQ, []);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmEstReq.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    //  Read(p2,iniRect);
    ReadEh(dbg1, id_Form);
  finally
    Free;
  end;
  pc1.ActivePage := ts1;
end;

procedure TfmEstReq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qEReq.Close;
  qCli.Close;
  qMan.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    //  Write(p2,iniRect);
    Write(dbg1, iniGridEh);
  finally
    Free;
  end;
end;

procedure TfmEstReq.FormShow(Sender: TObject);
begin

  with qMan do
  begin
    Close;
    Open;
    {If Locate('ID_P',SysVars.RegTN,[]) Then
    lcb1.KeyValue := qManID_P.AsInteger;}
  end;
  with qCli do
  begin
    Close;
    Open;
  end;

  with qT do
  begin
    Close;
    Open;
  end;
  with qVid do
  begin
    Close;
    Open;
  end;
  OpenReq;
end;

procedure TfmEstReq.tb5Click(Sender: TObject);
begin
  if qEReq.IsEmpty then
    exit;
  if not qEReqD_MANAGER.IsNull then
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
    ParamByName('c_req').AsInteger := qEReqID_REQUEST.AsInteger;
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
end;

procedure TfmEstReq.tb11Click(Sender: TObject);
begin
  if qEReq.IsEmpty then
    exit;
  if qEReqD_MANAGER.IsNull then
    exit;
  if qEReqSTATUS.AsInteger > 10 then
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
    ParamByName('c_req').AsInteger := qEReqID_REQUEST.AsInteger;
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

procedure TfmEstReq.tb3Click(Sender: TObject);
begin
  if qEReq.IsEmpty then
    exit;
  if not qEReqD_MANAGER.IsNull then
  begin
    MsgInformation('������ ����������. �������� ����������',
      '�������� �������');
    exit;
  end;
  if MsgQuestion('������ � ' + qEReqID_REQUEST.AsString +
    ' ����� �������. ������� ������?', '�������� ������') = id_yes then
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM ESTIMATE_REQUESTS WHERE ID_REQUEST = :c_req');
      ParamByName('c_req').AsInteger := qEReqID_REQUEST.AsInteger;
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

procedure TfmEstReq.tb0Click(Sender: TObject);
begin
  OpenReq;
end;

procedure TfmEstReq.dbg1DblClick(Sender: TObject);
begin
  if qEReqID_DOC.IsNull then
    exit;
  if not dmIS.dbDOC.Connected then
  try
    // dmIS.dbDOC.Connected := True;
     //fmMain.StoreDoc(0,qEReqID_DOC.Value,'',dmIS.qR_BODY);
    if not Assigned(fmAll) then
      Application.CreateForm(TfmAll, fmAll);
    Old_DocBody(qEReqID_DOC.AsInteger, 0, '');
      // ������� �� ����� ���� ����������
    // fmAll.StoreDoc_r(qEReqID_DOC.Value);
  except
    MsgError('��� ����� � ����� ������ ����������',
      '���������� � ����� ������');
  end;
  //  dmIS.dbDOC.Connected := False;
end;

procedure TfmEstReq.tb4Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg1);
  Screen.Cursor := crDefault;
end;

procedure TfmEstReq.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenReq;
end;

procedure TfmEstReq.dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qEReqD_FIX.IsNull then
    Background := clMoneyGreen;
end;

procedure TfmEstReq.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_REQUEST');
end;

procedure TfmEstReq.tb10Click(Sender: TObject);
begin
  if qEReq.IsEmpty then
    exit;
  if qEReqID_ESTIMATE.IsNull then
    MsgInformation('��� ������ ������ ����� �� ����������', '��������')
  else
  begin
    if not Assigned(fmEst) then
      Application.CreateForm(TfmEst, fmEst);
    if fmEst.Showing then
      fmEst.Close;
    fmEst.C_ESTIMATE := qEReqID_ESTIMATE.AsInteger;
    fmEst.Show;
  end;
end;

procedure TfmEstReq.cbPrvClick(Sender: TObject);
begin
  OpenReq;
end;

procedure TfmEstReq.lcbVidChange(Sender: TObject);
begin
  OpenReq;
end;

procedure TfmEstReq.lcbTChange(Sender: TObject);
begin
  OpenReq;
end;

procedure TfmEstReq.SpeedButton1Click(Sender: TObject);
var
  id_i, i: integer;
  FName: string;
begin
  if qEReq.IsEmpty then
    exit;
  if not qEReqD_FIX.IsNull then
  begin
    MsgInformation('������ ��� ���������. ������ �������� ��������.',
      '�������� ����������� ��������������');
    exit;
  end;
  if od2.Execute then
  begin
    {  if dmIs.dbDOC.Connected = false then
        dmIs.dbDOC.Connected := true;        }

    for i := 0 to od2.Files.Count - 1 do
    begin
      with dmIS.qD_IN, dmIS.qD_IN.SQL do
      begin
        Close;
        Clear;
        Add('SELECT * FROM NEW_DESIGN_DOC( ' + qEReqID_REQUEST.AsString + ',' +
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

      with qINs, qINs.SQL do
      begin
        Close;
        Clear;
        add('insert into request_docs (id_req_doc, id_req, id_doc, d_edit, id_edit, name)');
        add('values (GEN_ID(product_docs_id, 1), :id_req, :id_doc, current_date, :id_edit, :name)');
        try
          Parambyname('id_req').AsInteger := qEReqID_REQUEST.AsInteger;
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

      Old_DocBody(id_i, 2, ''); // ������� �� ����� ���� ����������
      {  if dmIs.dbDOC.Connected = false then
          dmIs.dbDOC.Connected := true;
        Store_Doc(2, ID_I, FName, dmIS.upBody2, nil) }

    end;
  end;
  qRDoc.close;
  qRDoc.Open;
end;

procedure TfmEstReq.SpeedButton2Click(Sender: TObject);
begin
  if not qEReqD_FIX.IsNull then
  begin
    showmessage('�����  ����������!!! �������� ����������');
    exit;
  end;
  if MsgQuestion('�� ������������� ������ ������� �������� �� ������?',
    '�������� ���������') = id_yes then
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

procedure TfmEstReq.SpeedButton3Click(Sender: TObject);
begin
  if not qEReqD_FIX.IsNull then
  begin
    showmessage('�����  ����������!!! �������������� ��������� ����������');
    exit;
  end;
  if MsgQuestion('�� ������������� ������ �������� ������?',
    '�������������� ���������') = id_yes then
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

procedure TfmEstReq.qRDocBeforeOpen(DataSet: TDataSet);
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

procedure TfmEstReq.DBGridEh1DblClick(Sender: TObject);
begin
  if qEReqID_DOC.IsNull then
    exit;
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  Old_DocBody(qRDocID_DOC.AsInteger, 0, ''); // ������� �� ����� ���� ����������
  // fmAll.StoreDoc_r(qRDocID_DOC.Value);
   //dmIS.dbDOC.Connected := False;
end;

end.
