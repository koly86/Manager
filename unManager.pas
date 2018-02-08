unit unManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ExtCtrls, Grids, DBGrids, DBCtrls, StdCtrls, Buttons;

type
  TfmManager = class(TForm)
    p1: TPanel;
    p3: TPanel;
    sb1: TSpeedButton;
    Panel1: TPanel;
    Label2: TLabel;
    lb1: TLabel;
    ed1: TEdit;
    p5: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    p2: TPanel;
    Splitter1: TSplitter;
    dbn2: TDBNavigator;
    dbg2: TDBGrid;
    p4: TPanel;
    Label1: TLabel;
    ed2: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sb1Click(Sender: TObject);
  private
    C_FP, C_BP: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManager: TfmManager;

implementation
uses unMain, unIS, IBQuery, DB;

const
  id_Form = 6;

{$R *.dfm}

procedure TfmManager.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p2, iniRect);
  finally
    Free;
  end;
end;

procedure TfmManager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qManager.Close;
  dmIS.qFreeMan.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p2, iniRect);
  finally
    Free;
  end;
end;

procedure TfmManager.FormActivate(Sender: TObject);
begin
  sb1.Enabled := fmMain.UF20;
  dmIS.qManager.Close;
  dmIS.qManager.Open;
  dmIS.qFreeMan.Close;
  dmIS.qFreeMan.Open;
end;

procedure TfmManager.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qFreeMan.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed1.Text = '' then
    begin
      ShowMessage('Заполните образец поиска');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_FP := dmIS.qFreeManID_SE_EMPLOYEE.Value;
    dmIS.qFreeMan.DisableControls;
    repeat
      if dmIS.qFreeMan.Eof then
        dmIS.qFreeMan.First
      else
        dmIS.qFreeMan.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_FP = dmIS.qFreeManID_SE_EMPLOYEE.Value);
    dmIS.qFreeMan.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmManager.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qManager.IsEmpty then
    exit;
  if Key = 13 then
  try
    Screen.Cursor := crHourGlass;
    if ed2.Text = '' then
    begin
      ShowMessage('Заполните образец поиска');
      Screen.Cursor := crDefault;
      exit;
    end;
    C_BP := dmIS.qManagerID_P.Value;
    dmIS.qManager.DisableControls;
    repeat
      if dmIS.qManager.Eof then
        dmIS.qManager.First
      else
        dmIS.qManager.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_BP = dmIS.qManagerID_P.Value);
    dmIS.qManager.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmManager.sb1Click(Sender: TObject);
var
  i: integer;
begin
  if dmIS.qFreeMan.IsEmpty then
    exit;
  if dbg1.SelectedRows.Count < 1 then
  begin
    MsgInformation('Нужно выбрать менеджеров для добавления в справочник',
      'Выбор менеджеров');
    exit;
  end;
  if MsgQuestion('Все выбранные менеджеры будут добавлены в справочник. ' +
    SysVars.NReg + ', Выполнить добавление?', 'Изменение данных') = id_yes then
  begin
    for i := 0 to dbg1.SelectedRows.Count - 1 do
    begin
      dmIS.qFreeMan.GotoBookmark(pointer(dbg1.SelectedRows.Items[i]));
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select ID_P from PERSONNEL where ID_C = ' +
          dmIS.qFreeManID_SE_EMPLOYEE.AsString);
        Open;
      end;
      if dmIS.qIN.IsEmpty then
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('INSERT INTO PERSONNEL (ID_P, FIO, ID_C, ID_C_MAN) ');
          Add('VALUES (GEN_ID(U_TN,1), :f1, :idc, :idm)');
          ParamByName('f1').AsString := dmIS.qFreeManFIO.AsString;
          ParamByName('idc').AsInteger := dmIS.qFreeManID_SE_EMPLOYEE.AsInteger;
          ParamByName('idm').AsInteger := dmIS.qFreeManID_MANAGER.AsInteger;
          try
            ExecSQL;
          except
            MsgError('Ошибка при добавлении менеджера - ' +
              dmIS.qFreeManFIO.Value, 'Ошибка записи');
          end;
        end;
    end;
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
    dmIS.qManager.Close;
    dmIS.qManager.Open;
  end;
end;

end.
