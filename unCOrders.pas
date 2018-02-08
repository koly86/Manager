unit unCOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, StdCtrls, ComCtrls, ToolWin, Grids, DBGrids, DB,
  DBGridEh, Mask, DBCtrlsEh, DBLookupEh, IBQuery;

type
  TfmCOrders = class(TForm)
    tlb1: TToolBar;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    Label2: TLabel;
    dtp2: TDateTimePicker;
    ToolButton1: TToolButton;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton5: TToolButton;
    ud1: TUpDown;
    Label3: TLabel;
    ed1: TEdit;
    dbg1: TDBGrid;
    lcb1: TDBLookupComboboxEh;
    ToolButton2: TToolButton;
    tb0: TToolButton;
    tb3: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtp1CloseUp(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure lcb1CloseUp(Sender: TObject; Accept: Boolean);
    procedure tb0Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
  private
    C_Ord: Integer;
    procedure OpenOrder(NS: Boolean);
    { Private declarations }
  public
    ID_CLI: Integer;
    { Public declarations }
  end;

var
  fmCOrders: TfmCOrders;

implementation
uses unMain, unIS;

const
  id_Form = 9;

{$R *.dfm}

procedure TfmCOrders.OpenOrder(NS: Boolean);
begin
  Screen.Cursor := crHourGlass;
  with dmIS.qCOrders, dmIS.qCOrders.SQL do
  begin
    if Active then
      C_Ord := dmIS.qOrdersID_ORDER.Value;
    Close;
    Clear;
    Add('select * from ORDERS where ID_ORDERTYPE IN (5,6,8)');
    Add('and D_CONFIRM >=:d1 and D_CONFIRM < :d2');
    if tb2.Down then
      Add('and ID_AGENT = ' + IntToStr(ID_CLI));
    if lcb1.KeyValue <> NULL then
      Add('and ID_PTYPE = ' + IntToStr(lcb1.KeyValue));
    if dbg1.SelectedField.FieldKind = fkData then
    begin
      if NS then
        Add('ORDER BY ' + dbg1.SelectedField.FieldName + ' ASC ')
      else
        Add('ORDER BY ' + dbg1.SelectedField.FieldName + ' DESC ');
    end;
    ParamByName('d1').AsDate := dtp1.Date;
    ParamByName('d2').AsDate := dtp2.Date;
    Open;
    Locate('ID_Order', C_Ord, []);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmCOrders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPTYPES.Close;
  dmIS.qCOrders.Close;
  dmIS.C_db.Connected := False;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmCOrders.FormCreate(Sender: TObject);
begin
  dtp2.Date := Date;
  dtp1.Date := dtp2.Date - 7;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmCOrders.FormActivate(Sender: TObject);
begin
  tb2.Hint := 'Заказы клиента - ' + dmIS.qCliPrjNAME.AsString;
  with dmIS.qPTYPES do
  begin
    Close;
    Open;
    Last;
    First;
  end;
  fmCOrders.OpenOrder(True);
end;

procedure TfmCOrders.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btNext then
    fmCOrders.OpenOrder(True);
  if Button = btPrev then
    fmCOrders.OpenOrder(False);
end;

procedure TfmCOrders.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qCOrders.IsEmpty then
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
    C_Ord := dmIS.qCOrdersID_ORDER.Value;
    dmIS.qCOrders.DisableControls;
    repeat
      if dmIS.qCOrders.Eof then
        dmIS.qCOrders.First
      else
        dmIS.qCOrders.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_Ord = dmIS.qCOrdersID_ORDER.Value);
    dmIS.qCOrders.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmCOrders.dtp1CloseUp(Sender: TObject);
begin
  fmCOrders.OpenOrder(True);
end;

procedure TfmCOrders.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with dbg1.Canvas do
  begin
    if (not dmIS.qCOrdersD_REJECT.IsNull) and not (gdFocused in State) then
    begin
      Font.Style := [fsStrikeOut];
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmCOrders.lcb1CloseUp(Sender: TObject; Accept: Boolean);
begin
  fmCOrders.OpenOrder(True);
end;

procedure TfmCOrders.tb0Click(Sender: TObject);
var
  s0: string;
begin
  if dmIS.qP_ORDS.IsEmpty then
    exit;
  if dmIS.qP_ORDSNAME.Value <> dmIS.qCOrdersBRAND.Value then
    if MsgQuestion('Наименование выбранного ТЗ не соответствует наименованию ' +
      'выбранного ТЗ проекта. Вы действительно хотите занести № данного ТЗ?',
      'Несоответствие наименования') = id_no then
      exit;
  s0 := 'ТЗ - ' + dmIS.qP_ORDSNAME.AsString + ' - будет сопоставлен № ТЗ: ' +
    dmIS.qCOrdersNUMBER.AsString + ' центра. Записать № ТЗ?';
  if MsgQuestion(s0, 'Занесение кодов центра') = id_yes then
  begin
    // Коды центра
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECT_ORDS SET N_ORDER = :nor, ID_C = :idc');
      Add('WHERE ID_PROJECT = :cpr AND ID_ORDER = :ord');
      ParamByName('nor').AsString := dmIS.qCOrdersNUMBER.AsString;
      ParamByName('idc').AsInteger := dmIS.qCOrdersID_ORDER.AsInteger;
      ParamByName('cpr').AsInteger := dmIS.qP_ORDSID_PROJECT.AsInteger;
      ParamByName('ord').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
      try
        ExecSQL;
        if dmIS.mt.Active then
          dmIS.mt.CommitRetaining;
      except
        if dmIS.mt.Active then
          dmIS.mt.RollbackRetaining;
        MsgError('Ошибка обновления данных', 'Ошибка записи');
      end;
    end;
    fmCOrders.OpenOrder(True);
  end;
end;

procedure TfmCOrders.tb3Click(Sender: TObject);
begin
  if dmIS.qCOrders.IsEmpty then
    exit;
  if MsgQuestion('Выбранное ТЗ: ' + dmIS.qCOrdersBRAND.AsString +
    ' будет добавлено в проект - ' + dmIS.qPrjNAME.AsString + '. ' +
    SysVars.NReg + ', Провести добавление?', 'Добавление ТЗ') = id_yes then
  begin
    Screen.Cursor := crHourGlass;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO PROJECT_ORDS (ID_ORDER, ID_PROJECT, NAME, AMOUNT, N_ORDER');
      Add(', ID_C, D_OPEN, ID_OPEN, D_FIX, ID_FIX, ID_AGENT) VALUES (GEN_ID(ORDER_ID,1),');
      Add(':pr1, :nm1, :am1, :no1, :idc, :dop, :idop, CURRENT_TIMESTAMP, :idfix, :idag)');
      ParamByName('pr1').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
      ParamByName('nm1').AsString := dmIS.qCOrdersBRAND.AsString;
      ParamByName('am1').AsFloat := dmIS.qCOrdersAMOUNT.AsFloat;
      ParamByName('no1').AsString := dmIS.qCOrdersNUMBER.AsString;
      ParamByName('idc').AsInteger := dmIS.qCOrdersID_ORDER.AsInteger;
      ParamByName('dop').AsDateTime := dmIS.qCOrdersD_ACCEPT.AsDateTime;
      ParamByName('idop').AsInteger := SysVars.RegTN;
      ParamByName('idfix').AsInteger := SysVars.RegTN;
      ParamByName('idag').AsInteger := dmIS.qPrjID_AGENT.AsInteger;
      try
        ExecSQL;
        if dmIS.mt.Active then
          dmIS.mt.CommitRetaining;
      except
        if dmIS.mt.Active then
          dmIS.mt.RollbackRetaining;
        MsgError('Ошибка записи нового ТЗ', 'Ошибка записи');
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

end.
