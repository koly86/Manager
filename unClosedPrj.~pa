unit unClosedPrj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, DBGridEh, ComCtrls, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, ToolWin, DB, ExtCtrls, Grids, DBGrids, DBCtrls, IBQuery;

type
  TfmClosedPrj = class(TForm)
    tlb1: TToolBar;
    Label1: TLabel;
    lcb1: TDBLookupComboboxEh;
    ToolButton1: TToolButton;
    tb0: TToolButton;
    Label3: TLabel;
    ed1: TEdit;
    ToolButton2: TToolButton;
    Label2: TLabel;
    dtp2: TDateTimePicker;
    Label4: TLabel;
    dtp1: TDateTimePicker;
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    Splitter1: TSplitter;
    p2: TPanel;
    dbn2: TDBNavigator;
    dbg2: TDBGrid;
    tb1: TToolButton;
    ToolButton4: TToolButton;
    tb2: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dtp1CloseUp(Sender: TObject);
    procedure tb0Click(Sender: TObject);
    procedure dbg2DblClick(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lcb1CloseUp(Sender: TObject; Accept: Boolean);
  private
    procedure OpenPrj(NS: Boolean);
    { Private declarations }
  public
    C_PR, C_Cli: integer;
    { Public declarations }
  end;

var
  fmClosedPrj: TfmClosedPrj;

implementation
uses unMain, unIS, unProjPlan;

const
  id_Form = 15;

{$R *.dfm}

procedure TfmClosedPrj.OpenPrj(NS: Boolean);
begin
  with dmIS.qCliPrj, dmIS.qCliPrj.SQL do
  begin
    if Active then
      C_Cli := dmIS.qCliPrjID.AsInteger;
    Close;
    AfterScroll := nil;
    Clear;
    Add('select B.ID, I.NAME, count(P.ID_PROJECT) as CP');
    Add('from (BR_ITEMS(13,0) B join PROJECTS P');
    Add('on P.ID_AGENT = B.ID and P.D_CLOSE IS NOT NULL');
    if tb1.Down then
    begin
      Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
      ParamByName('sp1').AsInteger := SysVars.RegTN;
    end;
    Add('and P.DATA >= :d1 and P.DATA < :d2 + 1');
    ParamByName('d1').AsDate := dtp1.Date;
    ParamByName('d2').AsDate := dtp2.Date;
    if lcb1.KeyValue <> NULL then
    begin
      Add('and P.ID_PROJ_TYPE = :pt1');
      ParamByName('pt1').AsInteger := lcb1.KeyValue;
    end;
    Add(') join ITEMS I on I.ID_ITEM = B.ID');
    Add('group by B.ID, I.NAME');
    if (dbg1.SelectedField.FieldKind = fkData) and NS then
      Add('ORDER BY ' + IntToStr(dbg1.SelectedField.Index + 1) + ' ASC ');
    try
      Open;
      Locate('ID', C_Cli, []);
    except;
    end;
  end;
  with dmIS.qPrj, dmIS.qPrj.SQL do
  begin
    if Active then
      C_PR := dmIS.qPrjID_PROJECT.AsInteger;
    Close;
    Clear;
    Add('select p.* , b.name bname, r.fio manager, n.fio designer, c.name ncurr');
    Add('from projects p left join brands b on b.id_brand = p.id_brand');
    Add('left join personnel r on r.id_p = p.id_manager');
    Add('left join personnel n on n.id_p = p.id_designer');
    Add('left join currency c on c.id_currency = p.currency');
    Add('where P.ID_AGENT = :ID and P.D_CLOSE is not null');
    Add('and P.DATA >= :d1 and P.DATA < :d2 + 1');
    ParamByName('d1').AsDate := Int(dtp1.Date);
    ParamByName('d2').AsDate := Int(dtp2.Date);
    if tb1.Down then
    begin
      Add('and (P.ID_MANAGER = :sp1 or P.ID_DESIGNER = :sp1) ');
      ParamByName('sp1').AsInteger := SysVars.RegTN;
    end;
    Add('order by P.ID_BRAND, P.ID_PROJECT');
    Open;
    Locate('ID_PROJECT', C_PR, []);
  end;
end;

procedure TfmClosedPrj.FormCreate(Sender: TObject);
begin
  dtp2.Date := Date;
  dtp1.Date := dtp2.Date - 30;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmClosedPrj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmIS.qPrj.Close;
  dmIS.qCliPrj.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmClosedPrj.FormActivate(Sender: TObject);
begin
  fmClosedPrj.OpenPrj(False);
end;

procedure TfmClosedPrj.dtp1CloseUp(Sender: TObject);
begin
  fmClosedPrj.OpenPrj(False);
end;

procedure TfmClosedPrj.tb0Click(Sender: TObject);
begin
  fmClosedPrj.OpenPrj(True);
end;

procedure TfmClosedPrj.dbg2DblClick(Sender: TObject);
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
  Screen.Cursor := crDefault;
  fmProjPlan.tlb1.Hide;
  fmProjPlan.Caption := 'Состояние проекта - ' + dmIS.qPrjNAME.AsString;
  fmProjPlan.ShowModal;
end;

procedure TfmClosedPrj.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dmIS.qCliPrj.IsEmpty then
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
    C_Cli := dmIS.qCliPrjID.Value;
    dmIS.qCliPrj.DisableControls;
    repeat
      if dmIS.qCliPrj.Eof then
        dmIS.qCliPrj.First
      else
        dmIS.qCliPrj.Next;
    until (Pos(ansiuppercase(ed1.Text),
      ansiuppercase(dbg1.SelectedField.AsString)) > 0)
      or (C_Cli = dmIS.qCliPrjID.Value);
    dmIS.qCliPrj.EnableControls;
    Screen.Cursor := crDefault;
  except
  end;
end;

procedure TfmClosedPrj.lcb1CloseUp(Sender: TObject; Accept: Boolean);
begin
  fmClosedPrj.OpenPrj(False);
end;

end.
