unit unPlanShipp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ExtCtrls, ComCtrls, ToolWin, DBCtrls,
  Grids, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Menus, IBQuery;

type
  TfmPlanShipp = class(TMainForm)
    Panel1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    clb1: TCoolBar;
    tlb1: TToolBar;
    tb1: TToolButton;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    ToolBar1: TToolBar;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    Label2: TLabel;
    dtp2: TDateTimePicker;
    ToolButton4: TToolButton;
    cb1: TCheckBox;
    ToolButton1: TToolButton;
    Label5: TLabel;
    lcb1: TDBLookupComboboxEh;
    ToolButton3: TToolButton;
    Label4: TLabel;
    lcb2: TDBLookupComboboxEh;
    ToolButton2: TToolButton;
    tb2: TToolButton;
    ToolButton7: TToolButton;
    tb3: TToolButton;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    dbg2: TDBGridEh;
    tb8: TToolButton;
    tb9: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Label10: TLabel;
    ed1: TEdit;
    ToolButton8: TToolButton;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbg2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    C_ORD: integer;
    D1, D2: TDateTime;
    V: Variant;
    SSel: string;
    procedure OpenPlanShipp;
    function GetMonth(ID_M: integer): string;
    procedure ReadSelection;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPlanShipp: TfmPlanShipp;

implementation
uses unMain, unIS, unREP, ComObj, uAll, IBCustomDataSet;

const
  id_Form = 29;

{$R *.dfm}

procedure TfmPlanShipp.ReadSelection;
begin
  SSel := '';
  if lcb1.KeyValue <> Null then
    SSel := SSel + '��������: ' + dmIS.qMANFIO.AsString + '.   ';
  if lcb2.KeyValue <> Null then
    SSel := SSel + '������: ' + dmIS.qORD_AGNAME.AsString + '.   ';
end;

function TfmPlanShipp.GetMonth(ID_M: integer): string;
begin
  case ID_M of
    1: Result := '������';
    2: Result := '�������';
    3: Result := '����';
    4: Result := '������';
    5: Result := '���';
    6: Result := '����';
    7: Result := '����';
    8: Result := '������';
    9: Result := '��������';
    10: Result := '�������';
    11: Result := '������';
    12: Result := '�������';
  end;
end;

procedure TfmPlanShipp.OpenPlanShipp;
begin
  try
    Screen.Cursor := crHourGlass;
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
    with dmIS.qPlanSH, dmIS.qPlanSH.SQL do
    begin
      if Active then
        C_ORD := dmIS.qPlanSHID_ORDER.AsInteger;
      Close;
      Clear;
      Add('select * from PLAN_ORD_SHIPP(:d1,:d2)');
      ParamByName('d1').AsDate := dtp1.Date;
      ParamByName('d2').AsDate := dtp2.Date;
      Add('where  1=1');
      if cb1.Checked then
        Add('and price > 0');
      if tb8.Down then
        Add('and in_plan = 1');
      if tb9.Down then
        Add('and in_plan = 0');
      if not fmMain.UF89 then
      begin
        Add('and ID_MANAGER = ' + IntToStr(SysVars.RegTN));
        lcb1.KeyValue := SysVars.RegTN;
      end
      else if lcb1.KeyValue <> NULL then
        Add('and ID_MANAGER = ' + IntToStr(lcb1.KeyValue));
      if lcb2.KeyValue <> NULL then
        Add('and ID_AGENT = ' + IntToStr(lcb2.KeyValue));
      case SysVars.ServType of
        0: Add(OrderBy(dbg1));
        1: Add(OrderByFields(dbg1));
      end;
      Open;
      Locate('ID_ORDER', C_ORD, []);
    end;
    with dmIS.qOrd_PF do
    begin
      Close;
      DataSource := dmIS.dsPlanSH;
      Open;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmPlanShipp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmIS.qOrd_PF.Close;
  dmIS.qPlanSH.Close;
  dmIS.qMAN.Close;
  dmIS.qORD_AG.Close;
  D1 := dtp1.Date;
  D2 := dtp2.Date;
  if dmIS.dbIS.Connected then
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
      Write('D_IN', D1);
      Write('D_OUT', D2);
      Write(p2, iniRect);
      Write(dbg1, iniGridEh);
    finally
      Free;
    end;
end;

procedure TfmPlanShipp.FormShow(Sender: TObject);
begin
  if not Assigned(fmREP) then
    Application.CreateForm(TfmREP, fmREP);
  with dmIS.qMAN do
  begin
    Close;
    Open;
    FetchAll;
    if Locate('ID_P', SysVars.RegTN, []) then
      lcb1.KeyValue := dmIS.qMANID_P.AsInteger;
  end;
  with dmIS.qORD_AG do
  begin
    Close;
    Open;
    FetchAll;
  end;
  // OpenPlanShipp;
end;

procedure TfmPlanShipp.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read('D_IN', D1);
    Read('D_OUT', D2);
    Read(p2, iniRect);
    ReadEh(dbg1, id_Form);
  finally
    Free;
  end;
  dtp1.Date := D1;
  dtp2.Date := D2;
end;

procedure TfmPlanShipp.tb1Click(Sender: TObject);
begin
  OpenPlanShipp;
end;

procedure TfmPlanShipp.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenPlanShipp;
end;

procedure TfmPlanShipp.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_ORDER');
end;

procedure TfmPlanShipp.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  with dbg1.Canvas do
  begin
    if (dmIS.qPlanSHIN_PLAN.AsInteger = 1) and not (gdFocused in State) then
    begin
      Brush.Color := clMoneyGreen;
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmPlanShipp.dbg2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  with dbg2.Canvas do
  begin
    if (dmIS.qOrd_PFC_D.AsDateTime >= Int(dtp1.Date)) and
      (dmIS.qOrd_PFC_D.AsDateTime < Int(dtp2.Date) + 1) and
      not (gdFocused in State) then
    begin
      Brush.Color := clSkyBlue;
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmPlanShipp.N1Click(Sender: TObject);
begin
  if dmIS.qPlanSH.IsEmpty then
    exit;
  Screen.Cursor := crHourGlass;
  GridToExcel(dbg1);
  Screen.Cursor := crDefault;
end;

procedure TfmPlanShipp.N2Click(Sender: TObject);
begin
  if dmIS.qPlanSH.IsEmpty then
    exit;
  ReadSelection;
  with fmREP do
  begin
    rPl_SHIPP.Script.Variables['Din'] := DateToStr(dtp1.Date);
    rPl_SHIPP.Script.Variables['DOut'] := DateToStr(dtp2.Date);
    rPl_SHIPP.Script.Variables['SelMen'] := fmPlanShipp.SSel;
    OpenShipp;
    rPl_SHIPP.ShowReport;
  end;
end;

procedure TfmPlanShipp.N3Click(Sender: TObject);
var
  Sheet, Colum: Variant;
  i, m, y, sm, smp, NL, k, cpr, cptyp: integer;
  y0, m0, d0: word;
  mrep, yrep, spr, sprod: array[1..3] of integer;
begin
  Screen.Cursor := crHourGlass;
  ReadSelection;
  with dmIS.qSumPlan do
  begin
    Close;
    ParamByName('d1').AsDate := Int(dtp1.Date);
    ParamByName('d2').AsDate := Int(dtp2.Date);
    ParamByName('rec1').AsInteger := 1;
    if lcb1.KeyValue = NULL then
      ParamByName('idm').Clear
    else
      ParamByName('idm').AsInteger := dmIS.qMANID_P.AsInteger;
    if lcb2.KeyValue = NULL then
      ParamByName('ida').Clear
    else
      ParamByName('ida').AsInteger := dmIS.qORD_AGID_ITEM.AsInteger;
    Open;
    First;
  end;
  if dmIS.qSumPlan.IsEmpty then
    exit;
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add(-4167);
  V.Workbooks[1].WorkSheets[1].Name := '������� �� �������';
  Colum := V.Workbooks[1].WorkSheets[1].Columns;
  Colum.Columns[2].ColumnWidth := 23; //��� ���������
  Colum.Columns[3].ColumnWidth := 18; //���������
  Colum.Columns[3].NumberFormat := '### ### ##0';
  Colum.Columns[3].HorizontalAlignment := alRight;
  Colum.Columns[4].ColumnWidth := 12; //����
  Colum.Columns[4].NumberFormat := '### ### ##0';
  Colum.Columns[4].HorizontalAlignment := alRight;
  Colum.Columns[5].ColumnWidth := 8; // % ����������
  Colum.Columns[5].NumberFormat := '#0';
  Colum.Columns[5].HorizontalAlignment := alRight;
  Colum.Columns[6].ColumnWidth := 15; // ���. �����
  Colum.Columns[6].NumberFormat := '### ### ##0';
  Colum.Columns[6].HorizontalAlignment := alRight;
  Colum.Columns[7].ColumnWidth := 15; // +1 �����
  Colum.Columns[7].NumberFormat := '### ### ##0';
  Colum.Columns[7].HorizontalAlignment := alRight;
  Colum.Columns[8].ColumnWidth := 15; // +2 ������
  Colum.Columns[8].NumberFormat := '### ### ##0';
  Colum.Columns[8].HorizontalAlignment := alRight;
  Colum := V.Workbooks[1].WorkSheets[1].Rows;
  Colum.Rows[1].Font.Color := clBlue;
  Colum.Rows[1].Font.Bold := True;
  Colum.Rows[3].Font.Bold := True;
  Sheet := V.Workbooks[1].WorkSheets[1];
  Sheet.Cells[1, 8] := '������� �������� (� ���.) ��� �� ������� � ' +
    DateToStr(dtp1.Date);
  Sheet.Cells[2, 1] := DateTimeToStr(now) + '   ' + SSel;
  Sheet.Cells[3, 3] := '����. � ' + DateToStr(dtp1.Date);
  Sheet.Cells[3, 4] := '����';
  Sheet.Cells[3, 5] := '% ���.';
  //���� ��������� � ��������
  NL := 0;
  i := 4;
  sm := 0;
  smp := 0;
  spr[1] := 0;
  spr[2] := 0;
  spr[3] := 0;
  sprod[1] := 0;
  sprod[2] := 0;
  sprod[3] := 0;
  cpr := 0;
  cptyp := 0;
  decodedate(dtp1.Date, y0, m0, d0);
  y := y0;
  m := m0;
  for k := 1 to 3 do
  begin
    Sheet.Cells[3, k + 5] := GetMonth(m) + ' ' + IntToStr(y) + ' �.';
    mrep[k] := m;
    yrep[k] := y;
    if m = 12 then
    begin
      y := y + 1;
      m := 1;
    end
    else
      m := m + 1;
  end;
  while not dmIS.qSumPlan.Eof do
  begin
    if (dmIS.qSumPlanID_PROD.AsInteger <> cpr) then
    begin
      i := i + 1;
      Colum.Rows[i].Font.Color := clBlue;
      Sheet.Cells[i, 1] := dmIS.qSumPlanNPROD.AsString;
      i := i + 1;
      cpr := dmIS.qSumPlanID_PROD.AsInteger;
      cptyp := 0;
    end;
    if (dmIS.qSumPlanID_PTYPE.AsInteger <> cptyp) then
    begin
      Sheet.Cells[i, 2] := dmIS.qSumPlanNPTYPE.AsString;
      Sheet.Cells[i, 3] := dmIS.qSumPlanSHIPP_IN.AsFloat;
      Sheet.Cells[i, 4] := dmIS.qSumPlanPLAN_IN.AsFloat;
      Sheet.Cells[i, 5] := dmIS.qSumPlanPROC_PROD.AsFloat;
      sm := sm + dmIS.qSumPlanSHIPP_IN.AsInteger;
      smp := smp + dmIS.qSumPlanPLAN_IN.AsInteger;
      cptyp := dmIS.qSumPlanID_PTYPE.AsInteger;
      i := i + 1;
      NL := i;
    end;
    for k := 1 to 3 do
      if (dmIS.qSumPlanY_EAR.AsInteger = yrep[k]) and
        (dmIS.qSumPlanM_ONTH.AsInteger = mrep[k]) then
      begin
        Sheet.Cells[i - 1, k + 5] := dmIS.qSumPlanPROGN.AsFloat;
        spr[k] := spr[k] + dmIS.qSumPlanPROGN.AsInteger;
      end;
    dmIS.qSumPlan.Next;
  end;
  Sheet.Cells[NL + 2, 2] := '����� ����';
  Sheet.Cells[NL + 2, 3] := sm;
  Sheet.Cells[NL + 2, 4] := smp;
  Sheet.Cells[NL + 2, 6] := spr[1];
  Sheet.Cells[NL + 2, 7] := spr[2];
  Sheet.Cells[NL + 2, 8] := spr[3];

  Screen.Cursor := crDefault;
  V.Visible := True;
  dmIS.qSumPlan.Close;
end;

procedure TfmPlanShipp.FormActivate(Sender: TObject);
begin
  if fmMain.UF143 then
    fmAll.HideGridCOl(dbg1,
      'PRICE,PRICE_BEZ_NDS,DEF_PRICE,DEF_PRICE_BEZ_NDS,PLAN_SUMMA,PLAN_SUMMA_BEZ_NDS,PRODUSED_SUMMA,PRODUSED_SUMMA_BEZ_NDS',
      false);
end;

end.
