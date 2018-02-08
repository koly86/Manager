unit unProj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh,
  ComCtrls, ToolWin, ExtCtrls, DBCtrls, Grids, DBGrids, DB, IBQuery,
  Buttons, IBCustomDataSet, unMainForm;

type
  TfmProj = class(TMainForm)
    tlb1: TToolBar;
    tb1: TToolButton;
    Label1: TLabel;
    lcb1: TDBLookupComboboxEh;
    ToolButton1: TToolButton;
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    dbn1: TDBNavigator;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbn2: TDBNavigator;
    ToolButton2: TToolButton;
    Label3: TLabel;
    ed1: TEdit;
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
    tlb2: TToolBar;
    tbs1: TToolButton;
    tbs2: TToolButton;
    tbs3: TToolButton;
    ToolButton3: TToolButton;
    tbs4: TToolButton;
    ToolButton4: TToolButton;
    tb2: TToolButton;
    p3: TPanel;
    p4: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    sb1: TSpeedButton;
    sb2: TSpeedButton;
    Label21: TLabel;
    ed2: TEdit;
    dtp1: TDBDateTimeEditEh;
    lcb4: TDBLookupComboBox;
    lcb2: TDBLookupComboBox;
    ed3: TEdit;
    lcb3: TDBLookupComboBox;
    Label11: TLabel;
    Panel1: TPanel;
    Label17: TLabel;
    tb3: TToolButton;
    tb4: TToolButton;
    ToolButton7: TToolButton;
    Label19: TLabel;
    DBText9: TDBText;
    ToolButton5: TToolButton;
    tbs5: TToolButton;
    ToolButton6: TToolButton;
    tbs6: TToolButton;
    Label20: TLabel;
    dtp2: TDBDateTimeEditEh;
    Label22: TLabel;
    Bevel1: TBevel;
    ed4: TEdit;
    Label23: TLabel;
    lcb6: TDBLookupComboboxEh;
    Label24: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label25: TLabel;
    Bevel2: TBevel;
    Label26: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    Label18: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    tb5: TToolButton;
    ToolButton8: TToolButton;
    tbs7: TToolButton;
    dbg1: TDBGridEh;
    dbg2: TDBGridEh;
    Label27: TLabel;
    ed5: TEdit;
    Label28: TLabel;
    DBText17: TDBText;
    qUrAgent: TIBQuery;
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
    Splitter2: TSplitter;
    Panel2: TPanel;
    dbg3: TDBGridEh;
    dsUrAgent: TDataSource;
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
    Splitter3: TSplitter;
    DBGridEh1: TDBGridEh;
    ToolButton9: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure lcb1CloseUp(Sender: TObject; Accept: Boolean);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb1Click(Sender: TObject);
    procedure tbs1Click(Sender: TObject);
    procedure tbs4Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure tbs2Click(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure tbs3Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tbs5Click(Sender: TObject);
    procedure sb2Click(Sender: TObject);
    procedure sb1Click(Sender: TObject);
    procedure tbs6Click(Sender: TObject);
    procedure tbs7Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure dbg2DblClick(Sender: TObject);
    procedure dbg2SortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qDogovorCalcFields(DataSet: TDataSet);
    procedure ToolButton9Click(Sender: TObject);
  private
    procedure OpenPrj;
    procedure OpenPrj_S;
    { Private declarations }
  public
    C_PR, C_Cli: integer;
    { Public declarations }
  end;

var
  fmProj: TfmProj;

implementation
uses unMain, unIS, unNewPrj, unProjPlan, unPrj_S, unFind, unManager,
  unBrands, unNewDiz, unClients;

const
  id_Form = 10;

{$R *.dfm}

procedure TfmProj.OpenPrj;
var
  i: integer;
begin
  with dmIS.qCliPrj, dmIS.qCliPrj.SQL do
  begin
    if Active then
      C_Cli := dmIS.qCliPrjID.AsInteger;
    if dmIS.qPrj.Active then
      C_PR := dmIS.qPrjID_PROJECT.AsInteger;
    dmIS.qPrj.Close;
    Close;
    AfterScroll := nil;
    Clear;
    Add('select B.ID, I.NAME, count(P.ID_PROJECT) as CP');
    Add('from (BR_ITEMS(13,0) B join PROJECTS P');
    Add('on P.ID_AGENT = B.ID and P.D_CLOSE IS NULL');
    if tb3.Down then
    begin
      Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
      ParamByName('sp1').AsInteger := SysVars.RegTN;
    end;
    if tb5.Down then
      Add('and P.D_DACCEPT IS NULL');
    if lcb1.KeyValue <> NULL then
    begin
      Add('and P.ID_PROJ_TYPE = :pt1');
      ParamByName('pt1').AsInteger := lcb1.KeyValue;
    end;
    Add(') join ITEMS I on I.ID_ITEM = B.ID');
    Add('group by B.ID, I.NAME');
    case SysVars.ServType of
      0: Add(OrderBy(dbg1));
      1: Add(OrderByFields(dbg1));
    end;
    { For i := 0 to dbg1.Columns.Count-1 do begin
       If dbg1.Columns[i].Title.SortMarker = smDownEh Then Add('ORDER BY ' +
        IntToStr(i+1));
       If dbg1.Columns[i].Title.SortMarker = smUpEh Then Add('ORDER BY ' +
        IntToStr(i+1) + ' DESC');
      end;                        }
    // ShowMessage(Text);
    try
      Open;
      Locate('ID', C_Cli, []);
      qUrAgent.Close;
      qUrAgent.Open;
      qDogovor.Close;
      qDogovor.Open;
    except;
    end;
  end;
  OpenPrj_S;
end;

procedure TfmProj.OpenPrj_S;
begin
  with dmIS.qPrj, dmIS.qPrj.SQL do
  begin
    if Active then
      C_PR := dmIS.qPrjID_PROJECT.AsInteger;
    Close;
    Clear;
    Add('select p.* , b.name bname, r.fio manager, n.fio designer, c.name ncurr');
    Add('from projects p left join brands b');
    Add('on b.id_brand = p.id_brand');
    Add('left join personnel r on r.id_p = p.id_manager');
    Add('left join personnel n on n.id_p = p.id_designer');
    Add('left join currency c on c.id_currency = p.currency');
    Add('where P.id_agent = :ID and P.d_close is null');
    if tb3.Down then
    begin
      Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
      ParamByName('sp1').AsInteger := SysVars.RegTN;
    end;
    if tb5.Down then
      Add('and P.D_DACCEPT IS NULL');
    case SysVars.ServType of
      0: Add(OrderBy(dbg2));
      1: Add(OrderByFields(dbg2));
    end;
    Open;
    Locate('ID_PROJECT', C_PR, []);
  end;
end;

procedure TfmProj.FormCreate(Sender: TObject);
begin
  pc1.ActivePage := ts1;
  p3.Hide;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p2, iniRect);
  finally
    Free;
  end;

end;

procedure TfmProj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.dbIS.Connected then
  begin
    dmIS.qPrj.Close;
    dmIS.qCliPrj.Close;
    dmIS.qPr_Typ.Close;
    dmIS.qManager.Close;
    dmIS.qBrands.Close;
    dmIS.qUSERS.Close;
    dmIS.qCURR.Close;
    if Assigned(fmFind) and fmFind.Showing then
      fmFind.Close;
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
      Write(p2, iniRect);
    finally
      Free;
    end;
  end;
  // dmIS.dbDOC.Connected := False;
end;

procedure TfmProj.FormActivate(Sender: TObject);
begin
  tb1.Enabled := fmMain.UF19;
  tb2.Enabled := fmMain.UF19;
  tbs2.Enabled := fmMain.UF15;
  tbs3.Enabled := fmMain.UF15;
  tbs7.Enabled := fmMain.UF54;
end;

procedure TfmProj.lcb1CloseUp(Sender: TObject; Accept: Boolean);
begin
  fmProj.OpenPrj;
end;

procedure TfmProj.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID');
end;

procedure TfmProj.tb1Click(Sender: TObject);
begin
  if not Assigned(fmNewPrj) then
    Application.CreateForm(TfmNewPrj, fmNewPrj);
  fmNewPrj.Caption := '����� ������';
  fmNewPrj.C_CLI := dmIS.qCliPrjID.AsInteger;
  C_Cli := dmIS.qCliPrjID.AsInteger;
  C_PR := dmIS.qPrjID_PROJECT.AsInteger;
  fmNewPrj.ShowModal;
  fmProj.OpenPrj;
end;

procedure TfmProj.tbs1Click(Sender: TObject);
begin
  if not Assigned(fmProjPlan) then
    Application.CreateForm(TfmProjPlan, fmProjPlan);
  Screen.Cursor := crHourGlass;
  with dmIS.qRESP do
  begin
    Close;
    Open;
  end;
  with dmIS.qPrjPlan do
  begin
    Close;
    if fmMain.UF38 then
      UpdateObject := dmIS.upPrjPlan
    else
      UpdateObject := nil;
    Open;
  end;
  if dmIS.qPrjPlan.IsEmpty then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO PROJECT_PLAN (ID_PROJ_PLAN, ID_PROJECT, ID_PROJ_TRAFF)');
      Add('SELECT GEN_ID(OBJ_ID,1), :pr1, ID_PROJ_TRAFF');
      Add('FROM PROJECT_TRAFF WHERE PROJ_TYPE = :tp1');
      ParamByName('pr1').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
      ParamByName('tp1').AsInteger := dmIS.qPrjID_PROJ_TYPE.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
    with dmIS.qPrjPlan do
    begin
      Close;
      if fmMain.UF38 then
        UpdateObject := dmIS.upPrjPlan
      else
        UpdateObject := nil;
      Open;
    end;
  end;
  Screen.Cursor := crDefault;
  fmProjPlan.tlb1.Show;
  fmProjPlan.Caption := '��������� ������� - ' + dmIS.qPrjNAME.AsString;
  fmProjPlan.ShowModal;
end;

procedure TfmProj.tbs4Click(Sender: TObject);
begin
  if dmIS.qPrj.IsEmpty then
    exit;
  Screen.Cursor := crHourGlass;
  if not Assigned(fmPrj_S) then
    Application.CreateForm(TfmPrj_S, fmPrj_S);
  fmPrj_S.Caption := '��������� � �� ������� - ' + dmIS.qPrjID_PROJECT.AsString
    +
    ' - ' + dmIS.qPrjNAME.AsString;
  fmPrj_S.C_Prj := dmIS.qPrjID_PROJECT.AsInteger;
  { if not dmIS.dbDOC.Connected then
     dmIS.dbDOC.Connected := True;  }
  Screen.Cursor := crDefault;
  fmPrj_S.Show;
end;

procedure TfmProj.bb2Click(Sender: TObject);
begin
  p3.Hide;
  pc1.ActivePage := ts1;
end;

procedure TfmProj.bb1Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_PRJ FROM WRITE_PROJECT( :idp, :br, :man, :ag, :bnd, :nm,');
    Add(' :dc, :pt, :ide, :de, :sm, :exp, :idcur, :am)');
    ParamByName('idp').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
    ParamByName('br').AsString := ed3.Text;
    if lcb4.KeyValue = NULL then
      ParamByName('man').Clear
    else
      ParamByName('man').AsInteger := lcb4.KeyValue;
    ParamByName('ag').AsInteger := dmIS.qCliPrjID.AsInteger;
    if lcb2.KeyValue = NULL then
      ParamByName('bnd').Clear
    else
      ParamByName('bnd').AsInteger := lcb2.KeyValue;
    ParamByName('nm').AsString := ed2.Text;
    if ed5.Text = '' then
      ParamByName('am').Clear
    else
      ParamByName('am').AsString := ed5.Text;
    try
      ParamByName('dc').AsDate := StrToDate(dtp1.Text);
    except
      ParamByName('dc').AsDate := Date;
    end;
    try
      ParamByName('de').AsDate := StrToDate(dtp2.Text);
    except
      ParamByName('de').Clear;
    end;
    if lcb3.KeyValue = NULL then
      ParamByName('pt').Clear
    else
      ParamByName('pt').AsInteger := lcb3.KeyValue;
    ParamByName('ide').AsInteger := SysVars.RegTN;
    ParamByName('sm').AsString := ed4.Text;
    ParamByName('exp').Clear; // ��������
    if lcb6.KeyValue = NULL then
      ParamByName('idcur').Clear
    else
      ParamByName('idcur').AsInteger := lcb6.KeyValue;
    try
      Open;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
      MsgError('������ ��� �������������� �������', '������ ������');
      exit;
    end;
  end;
  p3.Hide;
  pc1.ActivePage := ts1;
  fmProj.OpenPrj;
end;

procedure TfmProj.tbs2Click(Sender: TObject);
begin
  if dmIS.qPrj.IsEmpty then
    exit;
  if not dmIS.qPrjD_FIX.IsNull then
  begin
    MsgInformation('������ ���������. �������������� ���������',
      '�������� �����������');
    exit;
  end;
  p3.Show;
  ed2.Text := dmIS.qPrjNAME.AsString;
  ed3.Text := dmIS.qPrjBRIEF.AsString;
  ed4.Text := dmIS.qPrjSUMMA.AsString;
  ed5.Text := dmIS.qPrjAMOUNT.AsString;
  if dmIS.qPrjID_MANAGER.IsNull then
    lcb4.KeyValue := NULL
  else
  begin
    dmIS.qManager.Locate('ID_P', dmIS.qPrjID_MANAGER.Value, []);
    lcb4.KeyValue := dmIS.qManagerID_P.Value;
  end;
  if dmIS.qPrjID_BRAND.IsNull then
    lcb2.KeyValue := NULL
  else
  begin
    dmIS.qBrands.Locate('ID_BRAND', dmIS.qPrjID_BRAND.Value, []);
    lcb2.KeyValue := dmIS.qBrandsID_BRAND.Value;
  end;
  if dmIS.qPrjID_PROJ_TYPE.IsNull then
    lcb3.KeyValue := NULL
  else
  begin
    dmIS.qPr_Typ.Locate('ID_PROJ_TYPE', dmIS.qPrjID_PROJ_TYPE.Value, []);
    lcb3.KeyValue := dmIS.qPr_TypID_PROJ_TYPE.Value;
  end;
  if dmIS.qPrjCURRENCY.IsNull then
    lcb6.KeyValue := NULL
  else
  begin
    dmIS.qCURR.Locate('ID_CURRENCY', dmIS.qPrjCURRENCY.Value, []);
    lcb6.KeyValue := dmIS.qCURRID_CURRENCY.Value;
  end;
  dtp1.Text := dmIS.qPrjDATA.AsString;

  dtp2.Text := dmIS.qPrjDATAEND.AsString;
  pc1.ActivePage := ts2;
end;

procedure TfmProj.pc1Change(Sender: TObject);
begin
  if pc1.ActivePage = ts1 then
    p3.Hide;
end;

procedure TfmProj.tbs3Click(Sender: TObject);
begin
  if dmIS.qPrj.IsEmpty then
    exit;
  if not dmIS.qPrjD_FIX.IsNull then
  begin
    MsgInformation('������ ���������. �������� ���������',
      '�������� �����������');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT DISTINCT ID_PROJECT FROM PROJECT_DOCS WHERE ID_PROJECT = ' +
      dmIS.qPrjID_PROJECT.AsString);
    Open;
    if not IsEmpty then
    begin
      MsgInformation('� �������� ������� ���������. �������� ���������',
        '������ ��������');
      exit;
    end;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT DISTINCT ID_PROJECT FROM PROJECT_ORDS WHERE ID_PROJECT = ' +
      dmIS.qPrjID_PROJECT.AsString);
    Open;
    if not IsEmpty then
    begin
      MsgInformation('� �������� ������� ��. �������� ���������',
        '������ ��������');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', �� ������������� ������ ������� ������ - ' +
    dmIS.qPrjNAME.AsString + ' ?', '�������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECTS WHERE ID_PROJECT = ' +
        dmIS.qPrjID_PROJECT.AsString);
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
      fmProj.OpenPrj;
    end;
end;

procedure TfmProj.tb2Click(Sender: TObject);
begin
  if dmIS.qPrj.IsEmpty then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_ORDER FROM PROJECT_ORDS WHERE D_CLOSE IS NULL');
    Add('AND D_REJECT IS NULL AND ID_PROJECT = ' +
      dmIS.qPrjID_PROJECT.AsString);
    Open;
    if not IsEmpty then
    begin
      MsgInformation('������ �������� �������� ������. �������� ���������',
        '������ �������� �������');
      exit;
    end;
  end;
  if MsgQuestion('����� �������� ������� ��������� � ������ ����� ����������. '
    +
    SysVars.NReg + ', �� ������������� ������ ������� ������ - ' +
    dmIS.qPrjNAME.AsString + ' ?', '�������� �������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECTS SET D_CLOSE = CURRENT_TIMESTAMP, ID_CLOSE = :p1');
      Add('WHERE ID_PROJECT = ' + dmIS.qPrjID_PROJECT.AsString);
      ParamByName('p1').AsInteger := SysVars.RegTN;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
      fmProj.OpenPrj;
    end;
end;

procedure TfmProj.tb3Click(Sender: TObject);
begin
  fmProj.OpenPrj;
end;

procedure TfmProj.tbs5Click(Sender: TObject);
begin
  if not Assigned(fmFind) then
    Application.CreateForm(TfmFind, fmFind);
  fmFind.kf := 1;
  fmFind.Show;
end;

procedure TfmProj.sb2Click(Sender: TObject);
begin
  if not Assigned(fmManager) then
    Application.CreateForm(TfmManager, fmManager);
  if not dmIS.C_db.Connected then
  try
    dmIS.C_db.Connected := True;
    fmManager.ShowModal;
  except;
    MsgError('��� ����� � ����������� ����� ������', '������ ����������');
  end;
  dmIS.C_db.Connected := False;
  with dmIS.qManager do
  begin
    Close;
    Open;
    Last;
    First;
  end;
end;

procedure TfmProj.sb1Click(Sender: TObject);
begin
  if not Assigned(fmBrands) then
    Application.CreateForm(TfmBrands, fmBrands);
  fmBrands.ShowModal;
  with dmIS.qBrands do
  begin
    Close;
    UpdateObject := nil;
    Open;
    Last;
    First;
  end;
end;

procedure TfmProj.tbs6Click(Sender: TObject);
begin
  if dmIS.qPrj.IsEmpty then
    exit;
  if not dmIS.qPrjD_FIX.IsNull then
  begin
    MsgInformation('������ ��� ���������', '����������� �������');
    exit;
  end;
  if (not fmMain.UF53) or (dmIS.qPrjID_EDIT.AsInteger <> SysVars.RegTN) then
    exit;
  if MsgQuestion('����� ����������� ������ ����� ������������ ' +
    '� ���� ������ � ���������� ��� ��������������. ' + SysVars.NReg +
    ', �� ������������� ������ ��������� ��������� ������?',
    '����������� �������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECTS SET D_FIX = CURRENT_TIMESTAMP, ID_FIX = :idp');
      Add('WHERE ID_PROJECT = :idpd ');
      ParamByName('idp').AsInteger := SysVars.RegTN;
      ParamByName('idpd').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        fmProj.OpenPrj;
      except
        MsgError('������ ��� ����������� ���������', '������ ������');
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmProj.tbs7Click(Sender: TObject);
begin
  if dmIS.qPrj.IsEmpty then
    exit;
  if not fmMain.UF54 then
    exit;
  if not Assigned(fmNewDiz) then
    Application.CreateForm(TfmNewDiz, fmNewDiz);
  fmNewDiz.Caption := '������ - ' + dmIS.qPrjNAME.AsString;
  fmNewDiz.ShowModal;
  fmProj.OpenPrj;
end;

procedure TfmProj.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenPrj;
end;

procedure TfmProj.dbg2DblClick(Sender: TObject);
begin
  tbs1.Click;
end;

procedure TfmProj.dbg2SortMarkingChanged(Sender: TObject);
begin
  OpenPrj_S;
end;

procedure TfmProj.FormShow(Sender: TObject);
begin
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
  fmProj.OpenPrj;
end;

procedure TfmProj.qDogovorCalcFields(DataSet: TDataSet);
begin
  if qDogovorVID.AsInteger = 0 then
    qDogovornVID.AsString := '�/��';
  if qDogovorVID.AsInteger = 1 then
    qDogovornVID.AsString := '���/��';

end;

procedure TfmProj.ToolButton9Click(Sender: TObject);
begin
  if not Assigned(fmClients) then
    Application.CreateForm(TfmClients, fmClients);
  fmClients.Show;
end;

end.

