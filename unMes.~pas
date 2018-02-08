unit unMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL, StdCtrls, Buttons, unMainForm,
  ExtCtrls, Grids, DBGridEh, DB, IBCustomDataSet, IBQuery, shrFunc, ImgList,
  ComCtrls, ToolWin, DBCtrls, Menus;

 type PMyList = ^MyList;
  MyList = record
  id : integer;
  Group :TGroupBox;
  TabSheet :TTabSheet;
  Query :TIBQuery;
  Rich :TRichEdit;
  pNext : PMyList;
  PPrev : PMyList;
 end;

type
  TfmMes = class(TMainForm)
    StatusBar1: TStatusBar;
    pc1: TPageControl;
    s1: TSplitter;
    mMes: TMemo;
    p1: TPanel;
    sb1: TSpeedButton;
    Mm: TMainMenu;
    Im: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tb1: TToolButton;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pmenu: TPopupMenu;
    N4: TMenuItem;
    p2: TPanel;
    gb1: TGroupBox;
    sb2: TSpeedButton;
    qIns: TIBQuery;
    lOper: TLabel;
    lName: TLabel;
    lManager: TLabel;
    lStatus: TLabel;
    lExec: TLabel;
    lDateClose: TLabel;
    lOtgruz: TLabel;
    LO: TLabel;
    LN: TLabel;
    LM: TLabel;
    LS: TLabel;
    LE: TLabel;
    LDC: TLabel;
    LDZ: TLabel;
    t1: TTimer;
    N5: TMenuItem;
    P_Setting: TPanel;
    pc2: TPageControl;
    tsExec: TTabSheet;
    TabSheet1: TTabSheet;
    LD_now: TLabel;
    ed_date: TEdit;
    Label1: TLabel;
    cbAll: TCheckBox;
    p3: TPanel;
    sb3: TSpeedButton;
    qMes_Repeat: TIBQuery;
    qMes_RepeatID_CHAIN_TRAFF: TIntegerField;
    qMes_RepeatID_MESSAGE: TIntegerField;
    t3: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure pc1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sb1Click(Sender: TObject);
    procedure mMesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sb2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure t1Timer(Sender: TObject);
    procedure mMesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cbAllClick(Sender: TObject);
    procedure sb3Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure t3Timer(Sender: TObject);
  private
   Id_Traff, Day, D_Fixed :Integer;
   Date_s :TDate;
 

   procedure Mes_Read;
   procedure InitList;
   procedure Delete(var Head :PMyList; var Tail :PMyList; OldNode: PMyList);
   function Info_Oper (Query :TIBQuery; type_S :Integer; id :Integer) :String;

  protected
    { Private declarations }
  public
   head, tail, p :PMyList;
             s_r :Boolean;
(* -------------------- Функция переоткрытия запроса -------------------------*)
   function Update_List (List :TRichEdit; Query :TIBQuery; Id :Integer;
   Status :Integer; var s_t :Boolean) :String;
   // Status = 1 c перерисовкой Поля сообщения
   //          0 без перерисовки Поля сообщения
//------------------------------------------------------------------------------
   function Find(Head :PMyList; id :Integer) :PMyList;
   function CreateItem (id :Integer) :PMyList;
   
   procedure AddFirst(var Head :PMyList; var Tail :PMyList; NewNode: PMyList);
   procedure AddAfter (p :PMyList; NewNode :PMyList);
   procedure AddLast(var Head :PMyList; NewNode :PMyList);
   procedure Init(id :Integer);
   procedure Poisk_Mes;
    { Public declarations }
  end;


var

  fmMes: TfmMes;

implementation
uses  unMain, uWork, unIS, DateUtils;
{$R *.dfm}
const id_Form = 15;

procedure TfmMes.Poisk_Mes;
procedure Reopen;
begin
 qMes_Repeat.First;
 while (not qMes_Repeat.Eof) do
 begin
  Caption := '(' + IntToStr(qMes_Repeat.RecordCount) + ') Cообщение(я)';
  if Find(head, qMes_RepeatID_CHAIN_TRAFF.AsInteger) = nil then
  Init(qMes_RepeatID_CHAIN_TRAFF.AsInteger) else
  begin
   if (i_s <> qMes_Repeat.RecordCount)
   and (qMes_RepeatID_CHAIN_TRAFF.AsInteger = StrToInt(fmMes.pc1.ActivePage.Caption)) then
   begin
    Update_List(Find(head, qMes_RepeatID_CHAIN_TRAFF.AsInteger).Rich,
    Find(head, qMes_RepeatID_CHAIN_TRAFF.AsInteger).Query,
    Find(head, qMes_RepeatID_CHAIN_TRAFF.AsInteger).id, 1, s_r);
    Find(head, qMes_RepeatID_CHAIN_TRAFF.AsInteger).Rich.Perform(EM_SCROLLCARET, 0, 0);
    if (qMes_RepeatID_CHAIN_TRAFF.AsInteger = StrToInt(pc1.ActivePage.Caption)) then
    i_s := qMes_Repeat.RecordCount;
   end;
   qMes_Repeat.Next;
  end;
 end;
end;
begin
 with qMes_Repeat do
 begin
  Close;
  ParamByName('id_p').AsInteger := SysVars.RegTN;
  Open;
  FetchAll;
 end;
 if qMes_Repeat.IsEmpty then
 begin
  fmMes.Caption := 'Cообщения';
  Exit;
 end
  else if (fmMes.Showing = false) then
  begin
   fmMes.Show;
   Reopen;
  end else Reopen;

 if (not qMes_Repeat.IsEmpty) then
 t3.Enabled := true else t3.Enabled := false;
end;

function TfmMes.Info_Oper(Query :TIBQuery; type_S :Integer; id :Integer) :String;
begin
 with Query, Query.SQL do
 begin
  Close;
  Clear;
  Add('select f.d_ready, c.d_pack, o.name operation,');
  Add('p.fio manager, e.fio executor,');
  Add('pe.name status, f.name oper_name from proj_chain_traff f');
  Add('join operations o on o.id_area = f.id_area');
  Add('and o.id_operation = f.id_operation');
  Add('join personnel p on p.id_p = f.id_fix');
  Add('join proj_chains c on c.id_proj_chain = f.id_chain');
  Add('left join proj_chain_events pe on pe.id_chain_event = f.status');
  Add('left join personnel e on e.id_p = f.id_executor');
  Add('where f.id_chain_traff = :id_traff');
  ParamByName('id_traff').AsInteger := id;
  Prepare;
  Open;
  LDC.Caption := DateTimeToStr(Query.FieldByName('d_ready').AsDateTime);
  LDZ.Caption := DateTimeToStr(Query.FieldByName('d_pack').AsDateTime);
  LO.Caption  := Query.FieldByName('operation').AsString;
  LM.Caption  := Query.FieldByName('manager').AsString;
  LE.Caption  := Query.FieldByName('executor').AsString;
  LN.Caption  := Query.FieldByName('oper_name').AsString;
  LS.Caption  := Query.FieldByName('status').AsString;
  if (type_S = 1) then p2.Show else
  result := ' ' + Query.FieldByName('operation').AsString + ' ' + #13
          + ' ' + Query.FieldByName('oper_name').AsString + ' ';
 end;
end;

procedure TfmMes.Mes_Read;
begin
 with dmIS.qIN, dmIS.qIN.SQL do
 begin
  Close;
  Clear;
  Add('select m.id_message from proj_chain_traff_messages m');
  Add('where m.id_chain_traff = :id_chain_traff and');
  Add('(select n.id_me_message from me_pers n where n.id_me_message');
  Add('= m.id_message and n.id_p = :id_p)');
  Add(' is null and m.id_fix <> :id_p');
  ParamByName('id_p').AsInteger := SysVars.RegTN;
  ParamByName('id_chain_traff').AsInteger := Id_Traff;
  Open;
 end;
 if dmIS.qIN.IsEmpty then
 begin
  t3.Enabled := False;
  FlashWindow(fmMes.Handle, false);
 end else
 begin
  dmIS.qIN.First;
  while (not dmIS.qIN.Eof) do
  begin
   with dmIS.qIM, dmIS.qIM.SQL do
   begin
    Close;
    Clear;
    Add('insert into me_pers (id_me_message, id_p, d_rec)');
    Add('values (:id_me_message, :id_p, current_timestamp)');
    ParamByName('id_p').AsInteger := SysVars.RegTN;
    ParamByName('id_me_message').AsInteger :=
    dmIS.qIN.FieldByName('id_message').AsInteger;
    try
     ExecSQL;
     if Transaction.Active then Transaction.Commit;
     Find(head, Id_Traff).TabSheet.Highlighted := false;
    except
     if Transaction.Active then Transaction.Rollback;
    end;
   end;
   dmIS.qIN.Next;
  end;
  Find(head, Id_Traff).TabSheet.ImageIndex := 1;
  Find(head, Id_Traff).Rich.Perform(EM_SCROLLCARET, 0, 0);
  t3.Enabled := False;
  FlashWindow(fmMes.Handle, false);
 end;
end;

procedure TfmMes.Init(id :Integer);
begin
 if (Find(head, id) <> nil) then Show
 else
 begin
  p := CreateItem(id);
  AddLast(head, p);
  Show;
  Find(head, id).Rich.Perform(EM_SCROLLCARET, 0, 0);
  Id_Traff := id;
 end;
  pc1.ActivePage := Find(head, id).TabSheet;
  Find(head, id).Group.Caption := Info_Oper(Find(head, id).Query, 0, id);
  if (WindowState <> wsnormal) then WindowState := wsNormal;
end;

procedure TfmMes.InitList;
begin
 head := nil;
 tail := nil;
end;

function TfmMes.Update_List(List :TRichEdit; Query:TIBQuery; Id :Integer;
 Status :Integer; var s_t :Boolean) :String;
 var date_old, date_next :TDate;
begin
 date_next := 1;
 date_old := DateOf(Server_now(dmIS.qIM) - Day);
 Query.DisableControls;
 with Query, Query.SQL do
 begin
  Close;
  Clear;
  Add('select m.message_body, m.d_fix, p.fio creator, m.id_fix,');
  Add('(select n.id_me_message from me_pers n where');
  Add('n.id_me_message = m.id_message and n.id_p = m.id_fix) read_mes from');
  Add('proj_chain_traff_messages m join personnel p on p.id_p = m.id_fix');
  Add('where m.id_chain_traff = :id_chain_traff');
  if (tb1.Down = false) then
  begin
   if (cbAll.Checked = false) then
   begin
    Add('and m.d_fix >= :d_begin');
    ParamByName('d_begin').AsDate := date_old;
   end;
  end;
  Add('order by (m.d_fix)');
  ParamByName('id_chain_traff').AsInteger := id;
  Prepare;
  Open;
  FetchAll;
 end;
 Query.First;
 if (Status = 1) then
 begin
 with List do
 begin
  Lines.Clear;
  Lines.BeginUpdate;
  while (not Query.Eof) do
  begin
   if Query.FieldByName('read_mes').IsNull then
   date_next := DateOf(Query.FieldByName('d_fix').AsDateTime);
   if (Date_s <> DateOf(Query.FieldByName('d_fix').AsDateTime)) then
   Lines.Add('---------------------------------------------------------------' +
   '----------------------------------------------');
   if (SysVars.RegTN <> Query.FieldByName('id_fix').AsInteger) then
   SelAttributes.Color := clBlue
   else list.SelAttributes.Color := clRed;
   Lines.Add(#13 + ' (' + Query.FieldByName('creator').AsString + ') ');
   SelAttributes.Color := clGreen;
   Lines.Add(' |'+ Query.FieldByName('d_fix').AsString + '| ' + #13);
   SelAttributes.Color := clBlack;
   Lines.Add(' ' +  Query.FieldByName('message_body').AsString);
   Date_s := DateOf(Query.FieldByName('d_fix').AsDateTime);
   Query.Next;
  end;
  Lines.EndUpdate;
  result := Text;
 end;
 end else
 begin
  while (not Query.Eof) do
  begin
   result := result + #13 + ' (' + Query.FieldByName('creator').AsString
        + ') |'+ Query.FieldByName('d_fix').AsString + '| ' + #13
        + ' ' +  Query.FieldByName('message_body').AsString;
   Query.Next;
  end;
 end;
   if (Query.FieldByName('read_mes').AsInteger = 0) then
   begin
   if (cbAll.Checked = true) or (date_old > date_next) then
   begin
    if (s_t = false) then
    begin
     tb1.Down := true;
     s_t := true;
     Update_List(List, Query, Id, Status, s_t);
    end;
   end else
   begin
    if (s_t = false) then
    begin
     s_t := true;
     Update_List(List, Query, Id, Status, s_t);
    end;
   end;
  end;
 Query.EnableControls;
end;

function TfmMes.CreateItem (id :Integer) :PMyList;
var NewNode : PMyList;
begin
 new(NewNode);
 // код операции
 NewNode^.id := id;
 // поле вкладок
 NewNode^.TabSheet := TTabSheet.Create(Self);
 with NewNode^.TabSheet do
 begin
  PageControl := pc1;
  Caption := IntToStr(id);
  ImageIndex := 1;
  ShowHint := true;
 end;
 // группа
 NewNode^.Group := TGroupBox.Create(Self);
 with NewNode^.Group do
 begin
  Parent := NewNode^.TabSheet;
  Align  := alClient;
 end;
 // поле запроса
 NewNode^.Query := TIBQuery.Create(Self);
 with NewNode^.Query, NewNode^.Query.SQL do
 begin
  Database := dmIS.dbIS;
  Transaction := dmIS.mT;
 end;
 // поле просмотра
 NewNode^.Rich := TRichEdit.Create(self);
 with NewNode^.Rich do
 begin
  Parent := NewNode^.Group;
  Align := alClient;
  ScrollBars := ssVertical;
  ReadOnly := True;
  PopupMenu := pmenu;
  Font.Size := 9;
  // заполнение поля просмотра
  Update_List(NewNode^.Rich, NewNode^.Query, NewNode^.id, 1, s_r);
 end;
 NewNode^.pNext := nil;
 NewNode^.PPrev := nil;
 result := NewNode;
end;
// поиск в списке
function TfmMes.Find(Head :PMyList; id :Integer) :PMyList;
var q : PMyList;
begin
 q := Head;
 while ((q <> nil) and  (q^.id <> id)) do q := q^.pNext;
 result :=  q;
end;

procedure TfmMes.FormCreate(Sender: TObject);
begin
 InitList;
 with TUserSettings.Create(dmIS.dbIS, id_Form) do
 try
  Read('Day', Day);
  Read('D_fixed', D_Fixed);
 finally
  Free;
 end;
 if (D_Fixed = 1) then cbAll.Checked := true else cbAll.Checked := false;
 if (day = 0) then ed_date.Text := IntToStr(5) else ed_date.Text := IntToStr(Day);
end;

// добавление в список в начало
procedure TfmMes.AddFirst(var Head :PMyList; var Tail :PMyList; NewNode: PMyList);
begin
   NewNode^.pnext := Head;
   NewNode^.pprev := nil;
    if ( Head <> nil ) then Head^.pprev := NewNode;
   Head := NewNode;
   if ( Tail = nil ) then Tail := Head;
end;
// добавление в середину
procedure TfmMes.AddAfter (p :PMyList;  NewNode :PMyList);
begin
   NewNode^.pnext := p^.pnext;
   NewNode^.pprev := p;
   p^.pnext := NewNode;
end;
// добавление в конец
procedure TfmMes.AddLast( var Head :PMyList; NewNode :PMyList);
var q : pMyList;
flag : byte;
begin
 q := Head;  flag := 0;
  if (Head = nil) then
  begin
   AddFirst(Head, Tail, NewNode);
   flag := 1;
   end;
 if (flag <> 1) then
 begin
  while (q^.pnext <> nil) do q := q^.pnext;
  AddAfter(q, NewNode);
 end;
end;
// удаление элемента
procedure TfmMes.Delete(var Head :PMyList; var Tail :PMyList; OldNode :PMyList);
begin
 if (Head = OldNode) then
 begin
  Head := OldNode^.pnext;
  if (Head <> nil) then
   Head^.pprev := nil
   else Tail :=nil;
   end
 else begin
   OldNode^.pprev^.pnext := OldNode^.pnext;
   if ( OldNode^.pnext  <> nil) then
   OldNode^.pnext^.pprev := OldNode^.pprev
   else Tail := nil;
   end;
 dispose(OldNode);
end;
procedure TfmMes.tb3Click(Sender: TObject);
var id :Integer;
begin
 id := fmWork.qNewCHID_CHAIN_TRAFF.AsInteger;
 p := CreateItem(id);
 AddLast(head, p);
end;

procedure TfmMes.ToolButton5Click(Sender: TObject);
begin
p := Head;
while ( p <> nil ) do
begin
 showmessage(inttostr(p^.id));
 p := p^.pnext;
end;
end;

procedure TfmMes.pc1Change(Sender: TObject);
begin
 Id_Traff := StrToInt(pc1.ActivePage.Caption);
 Find(head, Id_Traff)^.TabSheet.Hint := Info_Oper(qIns, 0, Id_Traff);
 Mes_Read;
end;

procedure TfmMes.pc1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if (shift = [ssRight]) then
 begin
  p := Find(head,strtoint(pc1.ActivePage.Caption));
  p.Query.Free;
  p.Rich.Free;
  p.Group.Free;
  p.TabSheet.Free;
  Delete(Head, Tail, p);
 end;
 if (head = nil) then if fmMes.Active then fmMes.Close;
end;

procedure TfmMes.sb1Click(Sender: TObject);
var s_story, s_time :String;
begin
if Length(mMes.Text) = 0 then Exit;
Screen.Cursor := crHourGlass;
 s_time := DateTimeToStr(Server_now(dmIS.qIM));
 with dmIS.qIM, dmIS.qIM.SQL do
 begin
 try 
  Close;
  Clear;
  Add('insert into proj_chain_traff_messages (id_message, id_chain_traff,');
  Add('id_fix, d_fix, message_body) values (gen_id(obj_id,1), :id_chain_traff,');
  Add(':id_fix, current_timestamp, :message_body)');
  ParamByName('id_chain_traff').AsInteger := StrToInt(pc1.ActivePage.Caption);
  ParamByName('id_fix').AsInteger := SysVars.RegTN;
  ParamByName('message_body').AsString := mMes.Text;
  ExecSQL;
  Close;
  Clear;
  If (fmWork.pc1.ActivePage = fmWork.tsnew)   then s_story := fmWork.qNewCHREM.AsString;
  If (fmWork.pc1.ActivePage = fmWork.tswork)  then s_story := fmWork.qWorkCHREM.AsString;
  Add('update proj_chain_traff f set f.rem = :rem, id_edit = :id_edit,');
  Add('d_edit = current_timestamp');
  Add('where f.id_chain_traff = :id_chain_traff');
  ParamByName('rem').AsString := s_story + #13 + mMes.Text + #13 + '\\ '
  + SysVars.FReg + ' \\ ' + s_time + #13;
  ParamByName('id_edit').AsInteger := SysVars.RegTN;
  fmWork.Sel_Code(dmIS.qIM, 'id_chain_traff');
  ExecSQL;
  if Transaction.Active then Transaction.Commit;
  Update_List(Find(head, Id_Traff).Rich, Find(head, Id_Traff).Query, Id_Traff, 1, s_r);
  mMes.Lines.Clear;
   with fmWork.qMessage do
   begin
    Close;
    Open;
   end;
  Find(head, Id_Traff).Rich.Perform(EM_SCROLLCARET, 0, 0);
  fmWork.dbHistory.Perform(EM_SCROLLCARET, 0, 0);
 except
  if Transaction.Active then Transaction.Rollback;
  Screen.Cursor := crDefault;
 end;
end;
Screen.Cursor := crDefault;
end;

procedure TfmMes.mMesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (GetAsyncKeyState(13) and GetAsyncKeyState(17) <> 0) then sb1.OnClick(Sender);
end;

procedure TfmMes.sb2Click(Sender: TObject);
begin
 p2.Hide;
end;

procedure TfmMes.N4Click(Sender: TObject);
begin
 Info_Oper(qIns, 1, Id_Traff);
end;

procedure TfmMes.FormShow(Sender: TObject);
begin
 fmMes.DoubleBuffered := true;
 p2.Hide;
 P_Setting.Hide;
end;

procedure TfmMes.t1Timer(Sender: TObject);
var old : PMyList;
begin
 if (head <> nil) then
 begin
  old := Head;
  while (old <> nil) do
  begin
   with qIns, qIns.SQL do
   begin
    Close;
    Clear;
    Add('select m.id_fix from proj_chain_traff_messages m');
    Add('where m.id_chain_traff = :id_chain_traff and');
    Add('(select n.id_me_message from me_pers n where');
    Add('n.id_me_message = m.id_message');
    Add('and n.id_p = :id_p) is null and m.id_fix <> :id_p');
    ParamByName('id_p').AsInteger := SysVars.RegTN;
    ParamByName('id_chain_traff').AsInteger := old^.id;
    Prepare;
    Open;
     if (not qIns.IsEmpty) then
     begin
      Find(head, old^.id).TabSheet.ImageIndex := 0;
      if Find(head, old^.id).TabSheet.Highlighted = true then
      Find(head, old^.id).TabSheet.Highlighted := false else
      Find(head, old^.id).TabSheet.Highlighted := true;
     end;
    end;
    old := old^.pNext;
   end;
  end; 
end;

procedure TfmMes.mMesMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Mes_Read;
end;

procedure TfmMes.N5Click(Sender: TObject);
begin
 fmMes.FocusControl(fmWork);
 fmWork.qNewCH.Locate('id_chain_traff',fmWork.qNewCHID_CHAIN_TRAFF.AsInteger,[]);
 fmWork.qWorkCH.Locate('id_chain_traff',fmWork.qWorkCHID_CHAIN_TRAFF.AsInteger,[]);
 fmWork.qArhivCH.Locate('id_chain_traff',fmWork.qArhivCHID_CHAIN_TRAFF.AsInteger,[]);
end;

procedure TfmMes.N3Click(Sender: TObject);
begin
 P_Setting.Show;
end;

procedure TfmMes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  Day := StrToInt(ed_date.Text);
  if (cbAll.Checked = true) then D_Fixed := 1 else D_Fixed := 0;
 except
 end;
 with TUserSettings.Create(dmIS.dbIS, id_Form) do
 try
  write('Day', Day);
  write('D_Fixed', D_Fixed);
 finally
  Free;
 end;
end;

procedure TfmMes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if qIns.Active then qIns.Close;
 if qMes_Repeat.Active then qMes_Repeat.Close;
end;

procedure TfmMes.cbAllClick(Sender: TObject);
begin
 with ed_date do
 begin
  if (cbAll.Checked = true) then
  begin
   ReadOnly := true;
   Color := clBtnFace;
  end else
  begin
   ReadOnly := false;
   Color := clWindow;
  end;
 end;
end;

procedure TfmMes.sb3Click(Sender: TObject);
begin
 try
  s_r := false;
  day := StrToInt(ed_date.Text);
  P_Setting.Hide;
  Update_List(Find(head, Id_Traff).Rich, Find(head, Id_Traff).Query, Id_Traff, 1, s_r);
 except
 end;
end;

procedure TfmMes.tb1Click(Sender: TObject);
begin
 Update_List(Find(head, Id_Traff).Rich, Find(head, Id_Traff).Query, Id_Traff, 1, s_r);
end;

procedure TfmMes.t3Timer(Sender: TObject);
begin
 if (fmmes.Active = false) then
 if (WindowState = wsminimized) then
 if FlashWindow(fmMes.Handle, true) then FlashWindow(fmMes.Handle, false)
 else FlashWindow(fmMes.Handle, true);
end;

end.
