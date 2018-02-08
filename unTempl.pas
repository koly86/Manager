unit unTempl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, DBCtrls, StdCtrls, ExtCtrls, ComCtrls, DBTrees, ToolWin,
  DBSTrees, DB, IBCustomDataSet, IBQuery, Buttons;

type
  TfmTEMPL = class(TForm)
    p1: TPanel;
    Label1: TLabel;
    lcb1: TDBLookupComboBox;
    p2: TPanel;
    tlb1: TToolBar;
    cb1: TComboBox;
    ToolButton2: TToolButton;
    Label2: TLabel;
    tb1: TToolButton;
    ToolButton1: TToolButton;
    tb2: TToolButton;
    cb2: TCheckBox;
    ToolButton3: TToolButton;
    Label3: TLabel;
    lcb2: TDBLookupComboBox;
    dbt1: TDBS_TreeView;
    Panel1: TPanel;
    Splitter1: TSplitter;
    qDEF_V: TIBQuery;
    qDEF_VID_ROW: TIntegerField;
    qDEF_VDEF_VALUE: TMemoField;
    m1: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    bb1: TBitBtn;
    tb3: TToolButton;
    tb4: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure lcb1Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure cb2Click(Sender: TObject);
    procedure dbt1Change(Sender: TObject; Node: TTreeNode);
    procedure dbt1Edited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure bb1Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
  private
    procedure UpdateStruc;
    procedure OpenStruc(D_TYPE: integer; P_TYPE: integer);
    function GetDataType: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTEMPL: TfmTEMPL;

implementation
uses unMain, unIS;

const
  id_Form = 3;

{$R *.dfm}

procedure TfmTEMPL.UpdateStruc;
begin
  if (dbt1.Selected = nil) or (dbt1.Selected.AbsoluteIndex = 0) then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('UPDATE PROJ_DOC_STRUCTURE SET DATA_TYPE = :dt1, DEF_VALUE = :dv1');
    if cb2.Checked then
      Add(', STATUS = 1')
    else
      Add(', STATUS = NULL');
    Add('WHERE ID_ROW = ' + IntToStr(dbt1.GetId));
    ParamByName('dt1').AsInteger := fmTEMPL.GetDataType;
    if m1.Text = '' then
      ParamByName('dv1').Clear
    else
      ParamByName('dv1').AsString := m1.Text;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except;
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmTempl.OpenStruc(D_TYPE: integer; P_TYPE: integer);
begin
  if dmIS.mT.Active then
    dmIS.mT.CommitRetaining;
  dbt1.TableName := 'PROJ_DOC_TREE(' + IntToStr(D_TYPE) + ',' +
    IntToStr(P_TYPE) + ')';
  try
    dbt1.BuildTree;
    dbt1.FullExpand;
  except
  end;
end;

function TfmTEMPL.GetDataType: integer;
var
  dt: integer;
begin
  dt := 5;
  if cb1.Text = 'Дата' then
    dt := 3;
  if cb1.Text = 'Текст' then
    dt := 5;
  if cb1.Text = 'Документ (из базы данных)' then
    dt := 6;
  GetDataType := dt;
end;

procedure TfmTEMPL.FormCreate(Sender: TObject);
begin
  dbt1.ReadOnly := not fmMain.UF14;
  tb1.Enabled := fmMain.UF14;
  tb2.Enabled := fmMain.UF14;
  cb1.Enabled := fmMain.UF14;
  cb2.Enabled := fmMain.UF14;
  m1.ReadOnly := not fmMain.UF14;
  m1.Clear;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmTEMPL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qDOC_TYPE.Close;
  dmIS.qP_TYPE.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmTEMPL.FormActivate(Sender: TObject);
begin
  with dmIS.qP_TYPE do
  begin
    Close;
    Open;
    Last;
    First;
    lcb2.KeyValue := dmIS.qP_TYPEID_PROJ_TYPE.AsInteger;
  end;
  with dmIS.qDOC_TYPE do
  begin
    Close;
    Open;
    Last;
    First;
    lcb1.KeyValue := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.Value;
  end;
  fmTEMPL.OpenStruc(lcb1.KeyValue, lcb2.KeyValue);
end;

procedure TfmTEMPL.lcb1Click(Sender: TObject);
begin
  if not ((lcb1.KeyValue = NULL) or (lcb2.KeyValue = NULL)) then
    fmTEMPL.OpenStruc(lcb1.KeyValue, lcb2.KeyValue);
end;

procedure TfmTEMPL.tb1Click(Sender: TObject);
var
  CPST, CVER: integer;
begin
  CPST := 0;
  //****************
  CVER := 1; //Потом заменить!!!!
  //****************
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT MAX(POSIT) FROM PROJ_DOC_STRUCTURE WHERE DOC_TYPE = :dt2');
    Add('AND PROJ_TYPE = :prt2 AND PARENT = :pr2');
    ParamByName('dt2').AsInteger := lcb1.KeyValue;
    ParamByName('prt2').AsInteger := lcb2.KeyValue;
    ParamByName('pr2').AsInteger := dbt1.GetId;
    Open;
    if not IsEmpty then
      CPST := FieldByName('MAX').AsInteger;

    Close;
    Clear;
    Add('INSERT INTO PROJ_DOC_STRUCTURE (ID_ROW, DOC_TYPE, PROJ_TYPE');
    Add(', PARENT, NAME, DATA_TYPE, POSIT, STATUS, VER)');
    Add('VALUES (GEN_ID(OBJ_ID,1),:dt1, :pt1, :p1,:n1, :dtt1, :prw1, :cv1');
    if cb2.Checked then
      Add(',1)')
    else
      Add(',NULL)');
    ParamByName('dt1').AsInteger := lcb1.KeyValue;
    ParamByName('pt1').AsInteger := lcb2.KeyValue;
    ParamByName('p1').AsInteger := dbt1.GetId;
    ParamByName('n1').AsString := 'Новый раздел';
    ParamByName('dtt1').AsInteger := fmTEMPL.GetDataType;
    ParamByName('prw1').AsInteger := CPST + 1;
    ParamByName('cv1').AsInteger := CVER;
    try
      //  ShowMessage(Text);
      ExecSQL;
      fmTEMPL.OpenStruc(lcb1.KeyValue, lcb2.KeyValue);
    except;
      MsgError('Ошибка создания раздела', 'Ошибка записи');
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmTEMPL.tb2Click(Sender: TObject);
begin
  if dbt1.Selected.AbsoluteIndex = 0 then
    exit;
  if dbt1.Selected.HasChildren then
  begin
    MsgInformation('Раздел имеет подразделы. Удаление запрещено',
      'Запрет удаления');
    exit;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT ID_ROW FROM PROJ_DOC_DATA WHERE ID_ROW = ' +
      IntToStr(dbt1.GetId));
    Open;
    if not IsEmpty then
    begin
      MsgInformation('Раздел содержится в документах. Удаление запрещено',
        'Запрет удаления');
      exit;
    end;
  end;
  if MsgQuestion(SysVars.NReg + ', Вы действительно хотите удалить раздел - ' +
    dbt1.Selected.Text + ' ?', 'Удаление раздела') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJ_DOC_STRUCTURE WHERE ID_ROW = ' +
        IntToStr(dbt1.GetId));
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        dbt1.BuildTree;
        dbt1.FullExpand;
      except;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmTEMPL.cb1Change(Sender: TObject);
begin
  fmTEMPL.UpdateStruc;
end;

procedure TfmTEMPL.cb2Click(Sender: TObject);
begin
  fmTEMPL.UpdateStruc;
end;

procedure TfmTEMPL.dbt1Change(Sender: TObject; Node: TTreeNode);
var
  DT: integer;
begin
  if Node.AbsoluteIndex = 0 then
  begin
    cb1.Text := '';
    exit;
  end;
  DT := -1;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('SELECT DATA_TYPE, STATUS FROM PROJ_DOC_STRUCTURE WHERE ID_ROW = ' +
      IntToStr(dbt1.GetId));
    // ShowMessage(Text);
    Open;
    if not IsEmpty then
    begin
      DT := FieldByName('DATA_TYPE').AsInteger;
      case DT of
        3: cb1.Text := 'Дата';
        5: cb1.Text := 'Текст';
        6: cb1.Text := 'Документ (из базы данных)';
      end;
      cb2.OnClick := nil;
      if FieldByName('STATUS').IsNull then
        cb2.Checked := False
      else if (FieldByName('STATUS').AsInteger = 1) then
        cb2.Checked := True;
      cb2.OnClick := fmTEMPL.cb2Click;
    end;
  end;
  with qDEF_V do
  begin
    Close;
    ParamByName('rw1').AsInteger := dbt1.GetId;
    Open;
    if qDEF_VDEF_VALUE.IsNull then
      m1.Clear
    else
      m1.Text := qDEF_VDEF_VALUE.AsString;
  end;
end;

procedure TfmTEMPL.dbt1Edited(Sender: TObject; Node: TTreeNode;
  var S: string);
begin
  if Node.AbsoluteIndex = 0 then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('UPDATE PROJ_DOC_STRUCTURE SET NAME = :n1, DATA_TYPE = :dt1');
    if cb2.Checked then
      Add(', STATUS = 1')
    else
      Add(', STATUS = NULL');
    Add('WHERE ID_ROW = ' + IntToStr(dbt1.GetId));
    ParamByName('n1').AsString := S;
    ParamByName('dt1').AsInteger := fmTEMPL.GetDataType;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
    except;
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmTEMPL.bb1Click(Sender: TObject);
begin
  UpdateStruc;
  with qDEF_V do
  begin
    Close;
    ParamByName('rw1').AsInteger := dbt1.GetId;
    Open;
    if qDEF_VDEF_VALUE.IsNull then
      m1.Clear
    else
      m1.Text := qDEF_VDEF_VALUE.AsString;
  end;
end;

procedure TfmTEMPL.tb3Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('execute procedure MOVE_PROJ_DOC_TREE(:idr, 0)');
    ParamByName('idr').AsInteger := dbt1.GetId;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      dbt1.BuildTree;
      dbt1.FullExpand;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmTEMPL.tb4Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('execute procedure MOVE_PROJ_DOC_TREE(:idr, 1)');
    ParamByName('idr').AsInteger := dbt1.GetId;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      dbt1.BuildTree;
      dbt1.FullExpand;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

end.
