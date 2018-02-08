unit unCAgent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, ToolWin, Grids, DBGrids, DBCtrls,
  ShrFunc, DB, DBGridEh;

type
  TfmCAgent = class(TForm)
    tlb1: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton3: TToolButton;
    ed1: TEdit;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
  private
    C_AG: integer;
    procedure UpdateBase;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCAgent: TfmCAgent;

implementation
uses unMain, unIS;

const
  id_Form = 5;

{$R *.dfm}

procedure TfmCAgent.UpdateBase;
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select distinct i.id_item from items i,  br_items(13,0) b');
    Add('where b.id = i.id_item and i.ID_C = ' + dmIS.qAgentsID_AGENT.AsString);
    try
      Open;
    except;
    end;
    if IsEmpty then
    begin
      Close;
      Clear;
      Add('select ID_ITEM from new_item_tmp(13,1,0,:a_name,NULL,:id_agent)');
      ParamByName('a_name').AsString := dmIS.qAgentsNAME.AsString;
      ParamByName('id_agent').AsInteger := dmIS.qAgentsID_AGENT.AsInteger;
      try
        Open;
        if dmIS.mt.Active then
          dmIS.mt.CommitRetaining;
      except;
        if dmIS.mt.Active then
          dmIS.mt.RollbackRetaining;
      end;
    end;
  end;
end;

procedure TfmCAgent.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_AGENT');
  {If dmIS.qAgents.IsEmpty Then exit;
  If Key = 13 Then
  try
   Screen.Cursor := crHourGlass ;
   If ed1.Text = '' Then  begin
    ShowMessage('Заполните образец поиска ');
    Screen.Cursor := crDefault ;
    exit;
   end;
   C_AG := dmIS.qAgentsID_AGENT.Value ;
   dmIS.qAgents.DisableControls;
   Repeat
    If dmIS.qAgents.Eof Then dmIS.qAgents.First else dmIS.qAgents.Next;
    until (Pos(ansiuppercase(ed1.Text),ansiuppercase(dmIS.qAgentsNAME.AsString)) > 0)
    or (C_AG = dmIS.qAgentsID_AGENT.Value) ;
   dmIS.qAgents.EnableControls;
   Screen.Cursor := crDefault ;
  except
  end; }
end;

procedure TfmCAgent.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p1, iniRect);
  finally
    Free;
  end;
end;

procedure TfmCAgent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qAgents.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p1, iniRect);
  finally
    Free;
  end;
end;

procedure TfmCAgent.FormActivate(Sender: TObject);
begin
  dmIS.qAgents.Close;
  dmIS.qAgents.Open;
end;

procedure TfmCAgent.tb1Click(Sender: TObject);
var
  i, sn: integer;
  s0: string;
begin
  sn := dbg1.SelectedRows.Count;
  if sn > 0 then
    s0 := 'Выбранные записи '
  else
    s0 := 'Данные ';
  s0 := s0 + 'из центральной базы данных будут добавлены в основную базу данных.'
    +
    ' Вы действительно хотите провести добавление данных? ';
  if MsgQuestion(s0, 'Занесение новых данных') = id_yes then
  begin
    Screen.Cursor := crHourGlass;
    with dmIS.qAgents do
    begin
      for i := 0 to sn - 1 do
      begin
        GoToBookmark(pointer(dbg1.SelectedRows.Items[i]));
        fmCAgent.UpdateBase;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCAgent.tb2Click(Sender: TObject);
var
  s0: string;
begin
  if dmIS.qCliPrjID.IsNull then
  begin
    MsgInformation('Нужно выбрать клиента, для которого будет установлен код центра',
      'Не выбран клиент');
    exit;
  end;
  if dmIS.qCliPrjNAME.AsString <> dmIS.qAgentsNAME.AsString then
    if MsgQuestion('Наименование выбранного клиента не соответствует клиенту' +
      ' в картотеке клиентов.' + SysVars.NReg + ', Вы действительно хотите' +
      ' заменить код центра для выбранного клиента?',
      ' Несоответствие наименования клиента') = id_no then
      exit;
  s0 := ' У клиента - ' + dmIS.qCliPrjNAME.AsString +
    ' - будет обновлен код центра. Провести обновление?';
  if MsgQuestion(s0, 'Занесение кода центра') = id_yes then
    // Код центра
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE ITEMS SET ID_C = ' + dmIS.qAgentsID_AGENT.AsString);
      Add('WHERE ID_ITEM = :id_ag');
      ParamByName('id_ag').AsInteger := dmIS.qCliPrjID.AsInteger;
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
end;

end.
