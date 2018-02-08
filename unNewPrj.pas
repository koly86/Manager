unit unNewPrj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ComCtrls, DBTrees, StdCtrls, ToolWin, ExtCtrls, Buttons,
  ImgList, Grids, DBGrids, DBCtrls, DB, Mask, DBCtrlsEh, IBCustomDataSet,
  unMainForm, IBQuery, DBGridEh;

type
  TfmNewPrj = class(TMainForm)
    p1: TPanel;
    dbt1: TDB_TreeView;
    p2: TPanel;
    Splitter1: TSplitter;
    p4: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    iml1: TImageList;
    Panel1: TPanel;
    dbn1: TDBNavigator;
    tlb1: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton1: TToolButton;
    tb4: TToolButton;
    ToolButton4: TToolButton;
    Label9: TLabel;
    ed1: TEdit;
    p3: TPanel;
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
    lcb1: TDBLookupComboBox;
    lcb2: TDBLookupComboBox;
    ed3: TEdit;
    lcb3: TDBLookupComboBox;
    Label1: TLabel;
    dtp2: TDBDateTimeEditEh;
    Label2: TLabel;
    Label3: TLabel;
    lcb4: TDBLookupComboBox;
    ed4: TEdit;
    dbg1: TDBGridEh;
    Label4: TLabel;
    ed5: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure dbt1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sb1Click(Sender: TObject);
    procedure sb2Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure dbt1Edited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure dbt1Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
  private
    procedure OpenNewPrj;
    { Private declarations }
  public
    C_CLI: integer;
    procedure FindInTree(ItemID: integer);
    { Public declarations }
  end;

var
  fmNewPrj: TfmNewPrj;

implementation
uses unMain, unIS, unProj, unBrands, unManager, unCAgent;

const
  id_Form = 11;

{$R *.dfm}

procedure TfmNewPrj.OpenNewPrj;
begin
  with dmIS.qCliPrj, dmIS.qCliPrj.SQL do
  begin
    if Active then
      C_CLI := dmIS.qCliPrjID.AsInteger;
    Close;
    AfterScroll := nil;
    Clear;
    Add('select B.ID, I.NAME, I.ID_C CP');
    Add('from BR_ITEMS(13,0) B join ITEMS I on I.ID_ITEM = B.ID');
    Add('and I.STATUS <> 3');
    Add(OrdBy(dbg1));
    try
      Open;
      Locate('ID', C_CLI, []);
      AfterScroll := dmIS.qCliPrjAfterScroll;
    except;
    end;
  end;
end;

procedure TfmNewPrj.FindInTree(ItemID: integer);
var
  i: integer;
begin
  dbt1.Items.BeginUpdate;
  for i := 0 to dbt1.Items.Count - 1 do
    if Integer(dbt1.Items[i].Data) = ItemId then
    begin
      dbt1.Selected := dbt1.Items[i];
      break;
    end;
  dbt1.Items.EndUpdate;
end;

procedure TfmNewPrj.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    //   Read(p2,iniRect);
  finally
    Free;
  end;
end;

procedure TfmNewPrj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.dbIS.Connected then
    dmIS.qCliPrj.Close;
  if dmIS.dbIS.Connected then
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
      //   Write(p2,iniRect);
    finally
      Free;
    end;
end;

procedure TfmNewPrj.FormActivate(Sender: TObject);
begin
  tb1.Enabled := false; //fmMain.UF16;
  tb2.Enabled := fmMain.UF16;
  tb4.Enabled := fmMain.UF16;
  dbt1.ReadOnly := not fmMain.UF16;
  dbt1.BuildTree;
  dbt1.Items[0].Expand(False);
  fmNewPrj.FindInTree(C_Cli);
  ed1.Clear;
  ed2.Clear;
  ed3.Clear;
  ed4.Clear;
  ed5.Clear;
  lcb1.KeyValue := SysVars.RegTN;
  lcb2.KeyValue := NULL;
  lcb3.KeyValue := dmIS.qPr_TypID_PROJ_TYPE.AsInteger;
  dmIS.qCURR.Locate('MARK', '*', []);
  lcb4.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
  dtp1.Text := DateToStr(date);
  dtp2.Clear;
  fmNewPrj.OpenNewPrj;
end;

procedure TfmNewPrj.bb2Click(Sender: TObject);
begin
  fmNewPrj.Close;
end;

procedure TfmNewPrj.bb1Click(Sender: TObject);
begin
  if lcb3.KeyValue = NULL then
  begin
    MsgInformation('Не задан тип проекта', 'Проверка данных');
    exit;
  end;
  if lcb1.KeyValue = NULL then
  begin
    MsgInformation('Не выбран менеджер проета', 'Проверка данных');
    exit;
  end;
  if ed2.Text = '' then
  begin
    MsgInformation('Не задано наименование проекта', 'Проверка данных');
    exit;
  end;
  if ed4.Text = '' then
  begin
    MsgInformation('Не задан предполагаемый бюджет проекта', 'Проверка данных');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_PRJ FROM WRITE_PROJECT( NULL, :br, :man, :ag, :bnd, :nm,');
    Add(' :dc, :pt, :ide, :de, :sm, :exp, :idcur, :am)');
    ParamByName('br').AsString := ed3.Text;
    if lcb1.KeyValue = NULL then
      ParamByName('man').Clear
    else
      ParamByName('man').AsInteger := lcb1.KeyValue;
    ParamByName('ag').AsInteger := dmIS.qCliPrjID.AsInteger;
    if lcb2.KeyValue = NULL then
      ParamByName('bnd').Clear
    else
      ParamByName('bnd').AsInteger := lcb2.KeyValue;
    ParamByName('nm').AsString := ed2.Text;
    try
      ParamByName('dc').AsDate := StrToDate(dtp1.Text);
    except
      MsgInformation('Не задана дата начала проекта', 'Проверка данных');
      exit;
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
    ParamByName('idcur').AsInteger := lcb4.KeyValue;
    ParamByName('sm').AsString := ed4.Text;
    if ed5.Text = '' then
      ParamByName('am').Clear
    else
      ParamByName('am').AsString := ed5.Text;
    try
      Open;
      fmProj.C_PR := FieldByName('ID_PRJ').AsInteger;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
      MsgError('Ошибка при записи нового проекта', 'Ошибка записи');
      exit;
    end;
  end;
  fmProj.C_Cli := dmIS.qCliPrjID.AsInteger;
  fmNewPrj.Close;
end;

procedure TfmNewPrj.dbt1GetImageIndex(Sender: TObject; Node: TTreeNode);
begin
  if node.AbsoluteIndex = 0 then
    Node.ImageIndex := 38
  else
  begin
    if Node.Level = 1 then
      Node.ImageIndex := 14
    else
      Node.ImageIndex := 43;
  end
end;

procedure TfmNewPrj.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  afscr: TDataSetNotifyEvent;
begin

  afscr := dmIs.qCliPrj.AfterScroll;
  dmIs.qCliPrj.AfterScroll := nil;
  FindGridValue(dbg1, ed1, Key, 'ID');
  dmIs.qCliPrj.AfterScroll := afscr;
  fmNewPrj.FindInTree(dmIS.qCliPrjID.AsInteger);
end;

procedure TfmNewPrj.sb1Click(Sender: TObject);
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

procedure TfmNewPrj.sb2Click(Sender: TObject);
begin
  if not Assigned(fmManager) then
    Application.CreateForm(TfmManager, fmManager);
  if not dmIS.C_db.Connected then
  try
    dmIS.C_db.Connected := True;
    fmManager.ShowModal;
  except;
    MsgError('Нет связи с центральной базой данных', 'Ошибка соединения');
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

procedure TfmNewPrj.tb1Click(Sender: TObject);
begin
  {
  with dmIS.qIN, dmIS.qIN.SQL do begin
   Close;
   Clear;
   Add('select ID_ITEM from new_item_tmp(13,1,0,''Новый клиент'',NULL,NULL)');
   try
    Open;
    C_CLI := FieldByName('ID_ITEM').AsInteger;
    If dmIS.mT.Active Then dmIS.mT.CommitRetaining;
    fmNewPrj.OpenNewPrj;
   except
    If dmIS.mT.Active Then dmIS.mT.RollbackRetaining;
   end;
  end;
  dbt1.BuildTree;
  dbt1.FullExpand;
  fmNewPrj.FindInTree(C_CLI);
  dbt1.Selected.EditText;
  }
end;

procedure TfmNewPrj.tb2Click(Sender: TObject);
begin
  if not Assigned(fmCAgent) then
    Application.CreateForm(TfmCAgent, fmCAgent);
  try
    dmIS.C_db.Connected := True;
  except
    ShowMessage('Нет связи с базой данных центра');
    dmIS.C_db.Connected := False;
    exit;
  end;
  fmCAgent.Show;
  //fmNewPrj.OpenNewPrj(False);
end;

procedure TfmNewPrj.tb4Click(Sender: TObject);
begin
  if dbt1.Selected.AbsoluteIndex = 0 then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_ORDER FROM PROJECT_ORDS WHERE ID_AGENT = ' +
      IntToStr(dbt1.GetId));
    Open;
    if not IsEmpty then
    begin
      MsgInformation('Клиент имеет ТЗ. Удаление запрещено',
        'Запрет удаления');
      exit;
    end;
    Close;
    Clear;
    Add('SELECT ID_PROJECT FROM PROJECTS WHERE ID_AGENT = ' +
      IntToStr(dbt1.GetId));
    Open;
    if not IsEmpty then
    begin
      MsgInformation('С клиентом связаны проекты. Удаление запрещено',
        'Запрет удаления');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', Вы действительно хотите удалить - ' +
    dbt1.Selected.Text + ' ?', 'Удаление записи') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM ITEMS WHERE ID_ITEM = ' + IntToStr(dbt1.GetId));
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
      fmNewPrj.OpenNewPrj;
      dbt1.BuildTree;
      dbt1.FullExpand;
    end;
end;

procedure TfmNewPrj.dbt1Edited(Sender: TObject; Node: TTreeNode;
  var S: string);
begin
  if Node.AbsoluteIndex = 0 then
    exit;
  if not fmMain.UF16 then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('UPDATE ITEMS SET NAME = :n1 WHERE ID_ITEM = ' + IntToStr(dbt1.GetId));
    ParamByName('n1').AsString := S;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except;
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
  fmNewPrj.OpenNewPrj;
end;

procedure TfmNewPrj.dbt1Click(Sender: TObject);
begin
  dmIS.qCliPrj.AfterScroll := nil;
  dmIS.qCliPrj.Locate('ID', dbt1.GetId, []);
  dmIS.qCliPrj.AfterScroll := dmIS.qCliPrjAfterScroll;
end;

procedure TfmNewPrj.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenNewPrj;
end;

end.
