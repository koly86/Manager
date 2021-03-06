unit unRegParamCH;

interface

uses
  Windows, Messages, shrFunc, SysUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL, StdCtrls, Buttons,
  ExtCtrls, unMainForm, DBGridEh, Grids, Mask, DBCtrlsEh, DBLookupEh, DB,
  IBCustomDataSet, IBQuery, ComCtrls, ToolWin, IBUpdateSQL, DBCtrls,
  DBTrees, DBSTrees, Menus, uall;

type
  TfmRegParam = class(TMainForm)
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tb9: TToolButton;
    dsamount: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    Bevel1: TBevel;
    dbgParamObj: TDBGridEh;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    tbNew: TToolButton;
    tbDel: TToolButton;
    ToolButton7: TToolButton;
    dbgParamall: TDBGridEh;
    qParamObj: TIBQuery;
    qParamALL: TIBQuery;
    Bevel2: TBevel;
    dsParamObj: TDataSource;
    dsParamALL: TDataSource;
    qParamObjID_PT_PARAM: TIntegerField;
    qParamObjID_PROJ_TYPE: TIntegerField;
    qParamObjID_UNIT: TIntegerField;
    qParamObjID_MAIN_PARAM: TIntegerField;
    qParamObjPOSIT: TIntegerField;
    qParamObjREM: TMemoField;
    qParamALLID_MAIN_PARAM: TIntegerField;
    qParamALLNAME: TIBStringField;
    qParamALLAMOUNT: TIntegerField;
    qParamALLREM: TMemoField;
    qParamALLUNIT: TIBStringField;
    qParamObjUNIT: TIBStringField;
    qParamObjPARAM: TIBStringField;
    ToolButton14: TToolButton;
    ed_p: TEdit;
    Label2: TLabel;
    qParamALLID_UNIT: TIntegerField;
    upParamObj: TIBUpdateSQL;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    qParamObjIS_NOT_NULL: TIntegerField;
    qParamObjIN_CALC: TIntegerField;
    qParamObjIS_SECOND: TIntegerField;
    p3: TPanel;
    dbtries: TDBS_TreeView;
    gb1: TGroupBox;
    ed_name: TEdit;
    b1: TButton;
    Button2: TButton;
    pNEW: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Splitter2: TSplitter;
    qamount: TIBQuery;
    ed_names: TEdit;
    lcbAmount: TDBLookupComboboxEh;
    qParamObjP_TYPE: TIntegerField;
    qamountNAME: TIBStringField;
    qamountID_MP_SET: TIntegerField;
    qamountID_MAIN_PARAM: TIntegerField;
    qParamObjAMOUNT: TIBStringField;
    pc1: TPageControl;
    tsObj: TTabSheet;
    tsOper: TTabSheet;
    dsOperParam: TDataSource;
    dsOper: TDataSource;
    dbgOper: TDBGridEh;
    dbgOperParam: TDBGridEh;
    Splitter3: TSplitter;
    qOper: TIBQuery;
    qOperParam: TIBQuery;
    qOperNAME: TIBStringField;
    qOperID_OPERATION: TIntegerField;
    qOperID_AREA: TIntegerField;
    qOperParamID_PT_PARAM: TIntegerField;
    qOperParamID_PROJ_TYPE: TIntegerField;
    qOperParamID_UNIT: TIntegerField;
    qOperParamIS_NOT_NULL: TIntegerField;
    qOperParamID_MAIN_PARAM: TIntegerField;
    qOperParamPOSIT: TIntegerField;
    qOperParamREM: TMemoField;
    qOperParamUNIT: TIBStringField;
    qOperParamPARAM: TIBStringField;
    qOperParamIN_CALC: TIntegerField;
    qOperParamIS_SECOND: TIntegerField;
    qOperParamP_TYPE: TIntegerField;
    qOperParamAMOUNT: TIBStringField;
    uoOperParam: TIBUpdateSQL;
    tb10: TToolButton;
    Panel2: TPanel;
    ToolBar3: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton13: TToolButton;
    ToolButton15: TToolButton;
    CoolBar3: TCoolBar;
    ToolBar4: TToolBar;
    tb3: TToolButton;
    ToolButton12: TToolButton;
    tb4: TToolButton;
    ToolButton17: TToolButton;
    CoolBar4: TCoolBar;
    tb5: TToolButton;
    tb7: TToolButton;
    tb8: TToolButton;
    N3: TMenuItem;
    qOperParamIS_WORK: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CoolBar5: TCoolBar;
    ToolBar5: TToolBar;
    qRes: TIBQuery;
    dsRes: TDataSource;
    dbgRes: TDBGridEh;
    upRes: TIBUpdateSQL;
    qResID_REASON: TIntegerField;
    qResNAME: TIBStringField;
    qResID_ALL: TIntegerField;
    ToolButton1: TToolButton;
    tb11: TToolButton;
    ToolButton2: TToolButton;
    tb12: TToolButton;
    upOper: TIBUpdateSQL;
    qOperSHORTNAME: TIBStringField;
    qOperID_EQUIPMENT: TIntegerField;
    qOperCOST: TIBBCDField;
    qOperEX_RATE: TIBBCDField;
    qOperID_CURRENCY: TSmallintField;
    qOperID_UNIT: TIntegerField;
    qOperARCH: TIBStringField;
    qOperN_PLACE: TFloatField;
    qOperREM: TMemoField;
    qOperIS_GROUP: TIntegerField;
    qOperCOST0: TFloatField;
    qOperCALC_TIME: TMemoField;
    qOperID_OPER_TYPE: TIntegerField;
    qOperCALC_TOOLS: TMemoField;
    qOperCALC_TIME_P: TMemoField;
    qOperID_POSIT: TIntegerField;
    qOperNOT_CALC: TIntegerField;
    qOperID_OP_GROUP: TIntegerField;
    qOperID_WCENTER: TIntegerField;
    qOperPOST_AMOUNT: TIntegerField;
    qOperPROJ_TYPE: TIntegerField;
    Panel3: TPanel;
    b2: TButton;
    qOperPARAM_INTEG: TIntegerField;
    qOperPARAM_EXEC: TIntegerField;
    rbOper: TRadioButton;
    rbObj: TRadioButton;
    ToolButton6: TToolButton;
    qOperPARAM_KONTROL: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tb9Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure tbNewClick(Sender: TObject);
    procedure dbgParamallSortMarkingChanged(Sender: TObject);
    procedure dbgParamObjSortMarkingChanged(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
    procedure lcbTypeCloseUp(Sender: TObject; Accept: Boolean);
    procedure lcbTypeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ed_pKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure dbgParamObjGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qParamObjAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure qParamObjAfterInsert(DataSet: TDataSet);
    procedure qParamObjAfterDelete(DataSet: TDataSet);
    procedure dbtriesClick(Sender: TObject);
    procedure dbgParamObjMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lcbAmountCloseUp(Sender: TObject; Accept: Boolean);
    procedure ed_namesExit(Sender: TObject);
    procedure ed_namesKeyPress(Sender: TObject; var Key: Char);
    procedure fff1Click(Sender: TObject);
    procedure dbtriesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbtriesEdited(Sender: TObject; Node: TTreeNode;
      var S: string);
    procedure dbgOperSortMarkingChanged(Sender: TObject);
    procedure dbgOperParamSortMarkingChanged(Sender: TObject);
    procedure qOperAfterScroll(DataSet: TDataSet);
    procedure qOperParamAfterInsert(DataSet: TDataSet);
    procedure qOperParamBeforeDelete(DataSet: TDataSet);
    procedure qOperParamBeforeInsert(DataSet: TDataSet);
    procedure qOperParamAfterDelete(DataSet: TDataSet);
    procedure qOperParamAfterPost(DataSet: TDataSet);
    procedure pc1Change(Sender: TObject);
    procedure dbgOperParamKeyPress(Sender: TObject; var Key: Char);
    procedure tb10Click(Sender: TObject);
    procedure dbgParamObjKeyPress(Sender: TObject; var Key: Char);
    procedure qParamObjBeforeInsert(DataSet: TDataSet);
    procedure qParamObjBeforeDelete(DataSet: TDataSet);
    procedure dbgOperParamColumns3UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgOperParamColumns4UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgOperParamColumns2UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgOperParamColumns1UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure dbgParamObjColumns2UpdateData(Sender: TObject;
      var Text: string; var Value: Variant; var UseText, Handled: Boolean);
    procedure tb5Click(Sender: TObject);
    procedure tb7Click(Sender: TObject);
    procedure tb8Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure dbgParamObjCellClick(Column: TColumnEh);
    procedure N211Click(Sender: TObject);
    procedure dbgResKeyPress(Sender: TObject; var Key: Char);
    procedure qResAfterPost(DataSet: TDataSet);
    procedure qResBeforePost(DataSet: TDataSet);
    procedure qResNewRecord(DataSet: TDataSet);
    procedure qResBeforeDelete(DataSet: TDataSet);
    procedure qResAfterDelete(DataSet: TDataSet);
    procedure tb11Click(Sender: TObject);
    procedure tb12Click(Sender: TObject);
    procedure qOperAfterDelete(DataSet: TDataSet);
    procedure qOperAfterInsert(DataSet: TDataSet);
    procedure qOperBeforeDelete(DataSet: TDataSet);
    procedure qOperBeforeInsert(DataSet: TDataSet);
    procedure dbgOperColumns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure qOperAfterPost(DataSet: TDataSet);
    procedure dbgOperKeyPress(Sender: TObject; var Key: Char);
    procedure dbgOperColumns2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgOperMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure b2Click(Sender: TObject);
    procedure dbgOperColumns3UpdateData(Sender: TObject; var Text: String;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure qOperBeforeEdit(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    S_PAR, S_P, id_parent, code, s_all, id_type: Integer;
    amount: string;
    { Private declarations }
    procedure Open_ParamObj;
    procedure Open_ParamALL;
    procedure Open_Operation;
    procedure Open_Param_Oper;
    procedure SetParam(fname : string; id_param : integer); //���������� �������� ���� � ����
    procedure FindInTree_Det(ItemID: integer; Trees: TDBS_TreeView);
  public

    { Public declarations }
  end;

var
  fmRegParam: TfmRegParam;

implementation
uses unIs, unMain, unCliOrds, Math;
{$R *.dfm}

procedure TfmRegParam.FindInTree_Det(ItemID: integer; Trees: TDBS_TreeView);
var
  i: integer;
begin
  trees.Items.BeginUpdate;
  for i := 0 to trees.Items.Count - 1 do
    if Integer(trees.Items[i].Data) = ItemId then
    begin
      trees.Selected := trees.Items[i];
      break;
    end;
  trees.Items.EndUpdate;
  trees.Selected.MakeVisible;
end;

procedure TfmRegParam.Open_Operation;
var
  ss: string;
  oper: Integer;
  {procedure ReOpen (amount :String);
  var am, s :String;
          i :Integer;}
begin
  with qOper, qOper.SQL do
  begin
    if Active then
      oper := qOperID_OPERATION.AsInteger;
    Close;
    //  Add(OrderBy(dbgOper));
    Open;
    Locate('id_operation', oper, []);
  end;
  {   qOper.First;
     while not qOper.Eof do
     begin
      s := amount;
      while (length(s) > 0) do
      begin
      i := AnsiPos(',',s);
      if i = 0 then am := s else
      am := Copy(s,1,i - 1);
       if strtoint(am) = qOperID_OPERATION.AsInteger then
       begin
        qOper.Edit;
        qOperUSER_OPER.AsInteger := 1;
       end;
       if i = 0 then break;
      s := Copy(s,i + 1, length(s));
     end;
      qOper.Next;
     end;
    end;
   end;

  begin
   dbgOper.DataSource.DataSet.DisableControls;
   oper := qOperID_OPERATION.AsInteger;
   with dmIS.qIN, dmiS.qIN.SQL do
   begin
    Close;
    Clear;
    Add('select BIG_VALUE from IS$MOD_SYS_PARAMS');
    Add('where ID_MS_PARAM = 8271807');
    Open;
    amount := fieldbyname('big_value').AsString;
   end;
   ss := '';
   if not qOper.Active then qOper.Open;
   dbgOper.DataSource.DataSet.DisableControls;
   qOper.First;
   while not qoper.Eof do
   begin
    if qOperUSER_OPER.AsInteger = 1 then
    ss := ss + qOperID_OPERATION.AsString + ',';
    qOper.Next;
   end;
   SetLength(ss, length(ss) - 1);
   if (amount <> '') then
   ReOpen(amount);
    dbgOper.DataSource.DataSet.EnableControls;
    if ss <> '' then Amount := ss;
    if ss = '' then  SetLength(Amount, length(Amount) - 1);
   with dmIS.qIM, dmIS.qIM.SQL do
   begin
    Close;
    Clear;
    Add('update is$mod_sys_params set big_value = :str');
    Add('where id_ms_param = 8271807');
    ParamByName('str').AsString := Amount;
   try
    ExecSQL;
    if Transaction.Active then Transaction.CommitRetaining;
   except
    If Transaction.Active then Transaction.RollbackRetaining;
   end;
  end;
   ReOpen(amount);
     with qRes do
     begin
      Close;
      Open;
     end;
     qOper.Locate('id_operation', oper, []);
     amount := '';
    dbgOper.DataSource.DataSet.EnableControls;}
end;

procedure TfmRegParam.Open_Param_Oper;
begin
  dbgOperParam.DataSource.DataSet.DisableControls;
  qOper.AfterScroll := nil;
  with qOperParam, qOperParam.SQL do
  begin
    Close;
    Clear;
    Add('select s.id_pt_param, s.id_proj_type, s.is_work, s.id_unit,s.is_not_null, s.id_main_param,');
    Add('s.posit, s.rem, q.name unit, m.name param, s.in_calc, s.is_second,');
    Add('m.p_type, coalesce(cast(s.amount as numeric (16,2)),(select q.name from main_params_sets q');
    Add('where q.id_mp_set = s.id_mp_set)) amount from proj_types_params s');
    Add('left join units q on q.id_unit = s.id_unit');
    Add('join main_params m on m.id_main_param = s.id_main_param');
    Add('where s.id_proj_type = :id_proj_type and s.id_operation = :id_operation');
    Add('order by (s.posit)');
    ParamByName('id_operation').AsInteger := qOperID_OPERATION.AsInteger;
    ParamByName('id_proj_type').AsInteger := dbtries.GetId;
    Open;
  end;
  qoper.AfterScroll := qOperAfterScroll;
  dbgOperParam.DataSource.DataSet.EnableControls;
end;

procedure TfmRegParam.Open_ParamALL;
begin
  Screen.Cursor := crHourGlass;
  S_P := qParamALLID_MAIN_PARAM.AsInteger;
  with qParamALL, qParamALL.SQL do
  begin
    Close;
    Clear;
    Add('select m.id_main_param, m.name,  m.amount, m.rem, s.name unit, m.id_unit');
    Add('from main_params m left join units s on s.id_unit = m.id_unit');
    Add(OrderBy(dbgParamall));
    Open;
    Locate('id_main_param', S_P, []);
  end;
  Screen.Cursor := crDefault;
end;





procedure TfmRegParam.Open_ParamObj;
begin
  Screen.Cursor := crHourGlass;
  S_PAR := qParamObjID_PT_PARAM.AsInteger;
  with qParamObj, qParamObj.SQL do
  begin
    Close;
    Clear;
    Add('select s.id_pt_param, s.id_proj_type, s.id_unit,s.is_not_null, s.id_main_param,');
    Add('s.posit, s.rem, q.name unit, m.name param, s.in_calc, s.is_second,');
    Add('m.p_type, coalesce(cast(s.amount as numeric (16,2)),(select q.name from main_params_sets q');
    Add('where q.id_mp_set = s.id_mp_set)) amount from proj_types_params s');
    Add('left join units q on q.id_unit = s.id_unit');
    Add('join main_params m on m.id_main_param = s.id_main_param');
    Add('where s.id_operation is null and s.id_proj_type =' +
      IntToStr(dbtries.GetId));
    Add('Order by (s.posit)');
    Open;
    Locate('ID_PT_PARAM', S_PAR, []);
  end;
  Screen.Cursor := crDefault;
end;







procedure TfmRegParam.FormShow(Sender: TObject);
begin
  if pc1.ActivePage = tsOper then
    Open_Operation;
  gb1.Hide;
  tb9.OnClick(Sender);
end;

procedure TfmRegParam.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  qamount.Close;
  qParamObj.Close;
  qParamALL.Close;
  qOper.Close;
  qOperParam.Close;
end;

procedure TfmRegParam.tb9Click(Sender: TObject);
begin
  with dbtries do
  begin
    ClearTree;
    RootId := 1;
    Items.BeginUpdate;
    BuildTree;
    //   FullExpand;
    Items.EndUpdate;
    Selected := Items[0];
  end;
  if qParamObj.State in [dsEdit, dsInsert] then
    qParamObj.Post;
  Open_ParamObj;
  Open_ParamALL;
  Open_Param_Oper;
end;

procedure TfmRegParam.ToolButton3Click(Sender: TObject);
begin
  if qParamObj.State in [dsEdit, dsInsert] then
    qParamObj.Post;
  Open_ParamALL;
end;

procedure TfmRegParam.tbNewClick(Sender: TObject);
var
  posit: Integer;
begin
  if (pc1.ActivePage = tsObj) then
  begin
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      if s_all = 0 then
        Add('execute procedure copy_objects_params (:id_proj_type, 0, 1, :id_operation, :id_main_param, :id_unit)');
      if s_all = 1 then
        Add('execute procedure copy_objects_params (:id_proj_type, 1, 1, :id_operation, :id_main_param, :id_unit)');
      ParamByName('id_proj_type').AsInteger := id_type;
      ParamByName('id_operation').Clear;
      ParamByName('id_main_param').AsInteger :=
        qParamALLID_MAIN_PARAM.AsInteger;
      ParamByName('id_unit').AsInteger := qParamALLID_UNIT.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_ParamObj;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end;
  if (pc1.ActivePage = tsOper) then
  begin
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      if s_all = 0 then
        Add('execute procedure copy_objects_params (:id_proj_type, 0, 0, :id_operation, :id_main_param, :id_unit)');
      if s_all = 1 then
        Add('execute procedure copy_objects_params (:id_proj_type, 1, 0, :id_operation, :id_main_param, :id_unit)');
      ParamByName('id_proj_type').AsInteger := id_type;
      ParamByName('id_operation').AsInteger := qOperID_OPERATION.AsInteger;
      ParamByName('id_main_param').AsInteger :=
        qParamALLID_MAIN_PARAM.AsInteger;
      ParamByName('id_unit').AsInteger := qParamALLID_UNIT.AsInteger;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Open_Param_Oper;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end;
end;

procedure TfmRegParam.dbgParamallSortMarkingChanged(Sender: TObject);
begin
  Open_ParamALL;
end;

procedure TfmRegParam.dbgParamObjSortMarkingChanged(Sender: TObject);
begin
  Open_ParamObj;
end;

procedure TfmRegParam.tbDelClick(Sender: TObject);
begin
  if pc1.ActivePage = tsObj then
  begin
    if qParamObj.State in [dsEdit, dsInsert] then
      qParamObj.Post;
    if (fmMain.UF134) or (fmMain.UF0) then
    begin
      if (not qParamObj.Active) then
        Exit;
      with dmIs.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select id_pt_param, posit from proj_types_params where posit > :posit');
        Add('and id_proj_type = :id_proj and id_operation is null');
        Add('order by (posit)');
        ParamByName('id_proj').AsInteger := dbtries.GetId;
        ParamByName('posit').AsInteger := qParamObjPOSIT.AsInteger;
        Open;
      end;
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        dmIs.qIN.First;
        while not dmIS.qIN.Eof do
        begin
          Close;
          Clear;
          Add('update proj_types_params set posit = :posit');
          Add('where id_pt_param = :id_pt_param');
          ParamByName('posit').AsInteger :=
            dmIS.qIN.fieldbyname('posit').AsInteger - 1;
          ParamByName('id_pt_param').AsInteger :=
            dmIS.qIN.fieldbyname('id_pt_param').AsInteger;
          ExecSQL;
          dmIS.qIN.Next;
        end;
        Close;
        Clear;
        Add('delete from proj_types_params where (id_pt_param = :id_pt_param)');
        ParamByName('ID_PT_PARAM').AsInteger := qParamObjID_PT_PARAM.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          Open_ParamObj;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
    end;
  end;
  if pc1.ActivePage = tsOper then
  begin
    if qOperParam.State in [dsEdit, dsInsert] then
      qOperParam.Post;
    if (fmMain.UF134 = true) or (fmMain.UF0 = true) then
    begin
      if (not qOperParam.Active) then
        Exit;
      with dmIs.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select id_pt_param, posit from proj_types_params where posit > :posit');
        Add('and id_proj_type = :id_proj and id_operation = :id_oper');
        Add('order by (posit)');
        ParamByName('id_oper').AsInteger := qOperID_OPERATION.AsInteger;
        ParamByName('id_proj').AsInteger := dbtries.GetId;
        ParamByName('posit').AsInteger := qOperParamPOSIT.AsInteger;
        Open;
      end;
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        dmIs.qIN.First;
        while not dmIS.qIN.Eof do
        begin
          Close;
          Clear;
          Add('update proj_types_params set posit = :posit');
          Add('where id_pt_param = :id_pt_param');
          ParamByName('posit').AsInteger :=
            dmIS.qIN.fieldbyname('posit').AsInteger - 1;
          ParamByName('id_pt_param').AsInteger :=
            dmIS.qIN.fieldbyname('id_pt_param').AsInteger;
          ExecSQL;
          dmIS.qIN.Next;
        end;
        Close;
        Clear;
        Add('delete from proj_types_params where (id_pt_param = :id_pt_param)');
        ParamByName('ID_PT_PARAM').AsInteger := qOperParamID_PT_PARAM.AsInteger;
        try
          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          Open_Param_Oper;
        except
          if Transaction.Active then
            Transaction.Rollback;
        end;
      end;
    end;
  end;
end;

procedure TfmRegParam.lcbTypeCloseUp(Sender: TObject; Accept: Boolean);
begin
  Open_ParamObj;
  Open_ParamALL;
end;

procedure TfmRegParam.lcbTypeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Open_ParamObj;
  Open_ParamALL;
end;

procedure TfmRegParam.ed_pKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    FindGridValue(dbgParamall, ed_p, key, 'id_main_param');
end;

procedure TfmRegParam.FormActivate(Sender: TObject);
begin
  s_all := 0;
  tb10.Enabled := fmMain.UF0;
  tbNew.Enabled := fmMain.UF134;
  tbDel.Enabled := fmMain.UF134;
  tb11.Enabled := fmMain.UF130;
end;

procedure TfmRegParam.dbgParamObjGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qParamObjIS_NOT_NULL.AsInteger = 1 then
    Background := clSkyBlue;
end;

procedure TfmRegParam.qParamObjAfterPost(DataSet: TDataSet);
begin
  try
    if dmIs.mT.Active then
      dmIs.mT.CommitRetaining;
  except
    if dmIs.mT.Active then
      dmIs.mT.RollbackRetaining;
  end;
end;



procedure TfmRegParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qParamObj.State in [dsEdit, dsInsert] then
    qParamObj.Post;
end;




// ��������
procedure TfmRegParam.b1Click(Sender: TObject);
var
  id_proj, id_new: Integer;
  ed_name_t, name: string;

begin
 ed_name_t:=ed_name.text;
  if   ed_name_t = '' then
     Begin
       showmessage('������� ������������ ����� �������');
       ed_name.SetFocus;
       exit;
     end else

 { if name = ed_name_t then
      begin
        showmessage('������������� ��� �������');
        exit;
      end else  }


  if code = 1 then   //�������� �������
  begin
    with dmIs.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('select gen_id(chain_traff_id,1) from rdb$database');
      Open;
      id_new := Fieldbyname('gen_id').AsInteger;
      Close;
      Clear;
      Add('insert into proj_chain_types (id_ch_type, id_parent, name, posit,');
      Add('is_active, id_proj_type) values (:id_gen, :id_parent, :name,');
      Add('0, 0, :id_proj_type)');
      ParamByName('id_gen').AsInteger := id_new;
      ParamByName('id_parent').AsInteger := id_parent;
      ParamByName('name').AsString := ed_name.Text;
      ParamByName('id_proj_type').Clear;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Tb9.OnClick(Sender);
        dbtries.FullExpand;
        FindInTree_Det(id_new, dbtries);
        ed_name.Clear;
        gb1.Hide;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
    exit;
  end else



   if   ed_name.Text = '' then
     Begin
       showmessage('������� ������������ �������');
       ed_name.SetFocus;
     exit;
     end else


  if code = 0 then //���������� ��� �������
  begin

    with dmIS.qIN, dmIS.qIN.SQL do

    begin
      Close;
      Clear;
      Add('select id_parent from proj_chain_types where id_ch_type = :id_proj');
      ParamByName('id_proj').AsInteger := dbtries.GetId;
      Open;

      if not dmIs.qIN.IsEmpty then
        id_proj := dmIS.qIN.fieldbyname('id_parent').AsInteger;
    end;

    with dmIs.qIM, dmIS.qIM.SQL do

    begin
      Close;
      Clear;
      Add('select gen_id(chain_traff_id, 1) from rdb$database');
      Open;
      id_new := dmiS.qIM.fieldbyname('gen_id').AsInteger;
      Close;
      Clear;
      Add('insert into proj_chain_types (id_ch_type, id_parent, name, posit,');
      Add('is_active) values (:id_new, :id_parent, :name, 0, 0)');
      ParamByName('id_parent').AsInteger := id_proj;
      ParamByName('id_new').AsInteger := id_new;
      ParamByName('name').AsString := ed_name.Text;




      try
        ExecSQL;

        with dmIS.qIN, dmIS.qIN.SQL do

        begin
          Close;
          Clear;
          Add('select id_main_param, id_unit, posit from proj_types_params where id_proj_type = :id_proj');
          Add('and id_operation is null');
          ParamByName('id_proj').AsInteger := dbtries.GetId;
          Open;
        end;


        dmIS.qIN.First;


        while not dmIS.qIN.Eof do
        begin
          Close;
          Clear;
          Add('insert into proj_types_params (id_pt_param, id_proj_type, id_unit,');
          Add('id_main_param, posit, in_calc) values (gen_id(chain_traff_id,1), :id_proj_type,');
          Add(':id_unit, :id_main_param, :posit, :in_calc)');


          ParamByName('id_proj_type').AsInteger := id_new;

          ParamByName('id_main_param').AsInteger :=
            dmIS.qIN.fieldbyname('id_main_param').AsInteger;

          ParamByName('id_unit').AsInteger :=
            dmIS.qIN.fieldbyname('id_unit').AsInteger;

          ParamByName('posit').AsInteger :=
            dmIS.qIN.fieldbyname('posit').AsInteger;

          ParamByName('in_calc').AsInteger :=
            qParamObjIN_CALC.AsInteger;





          ExecSQL;
          if Transaction.Active then
            Transaction.Commit;
          dmIS.qIN.Next;
        end;
        Close;
        Clear;
        Add('execute procedure copy_objects_params (:id_proj_type, :id, :types,');
        Add(':id_operation, :id_main_param, :id_unit)');
        ParamByName('id_proj_type').AsInteger := id_new;
        ParamByName('id').AsInteger := s_all;
        if rbOper.Checked then ParamByName('types').AsInteger := 0;
        if rbObj.Checked  then ParamByName('types').AsInteger := 1;
        ParamByName('id_operation').AsInteger := qOperID_OPERATION.AsInteger;
        ParamByName('id_main_param').AsInteger := qParamALLID_MAIN_PARAM.AsInteger;
        ParamByName('id_unit ').AsInteger := qParamALLID_UNIT.AsInteger;
        ExecSQL;
        if Transaction.Active then Transaction.Commit;
        Tb9.OnClick(Sender);
        dbtries.FullExpand;
        FindInTree_Det(id_new, dbtries);
        ed_name.Clear;
        gb1.Hide;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end;
end;





procedure TfmRegParam.Button2Click(Sender: TObject);
begin
  ed_name.Clear;
  ed_name.SetFocus;
  gb1.Hide;
end;


procedure TfmRegParam.N1Click(Sender: TObject);
begin
  code := 1; //�������� �������
  id_parent := dbtries.GetId;
  gb1.Show;
  b1.Caption := '��������';
  ed_name.SetFocus;
end;


procedure TfmRegParam.N2Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select first 1 id_proj_type from proj_chains where id_proj_type = :id_proj');
    ParamByName('id_proj').AsInteger := dbtries.GetId;
    Open;
    if not dmIS.qIN.IsEmpty then
    begin
      MsgError('������ ��� ������� ������������', '�������� ����� ���������');
      Exit;
    end;
  end;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('delete from proj_chain_types where id_ch_type = :id_ch_type');
    ParamByName('id_ch_type').AsInteger := dbtries.GetId;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Tb9.OnClick(Sender);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.qParamObjAfterInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfmRegParam.qParamObjAfterDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfmRegParam.dbtriesClick(Sender: TObject);
begin
  id_type := dbtries.GetId;
  if pc1.ActivePage = tsObj then
    Open_ParamObj;
  if pc1.ActivePage = tsOper then
  begin
    Open_Param_Oper;
  end;
end;

procedure TfmRegParam.dbgParamObjMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Rect: TRect;
begin
  if qParamObj.IsEmpty then
    Exit;
  with dmIs.qIN, dmIs.qIN.SQL do
  begin
    if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
      and (qParamObjP_TYPE.AsInteger = 1) then
    begin
      Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col,
        dbgParamObj.Row);
      with qamount do
      begin
        Close;
        DataSource := dsParamObj;
        Open;
        FetchAll;
      end;
      with lcbAmount do
      begin
        Width := Rect.Right - Rect.Left + 2;
        Height := Rect.Bottom - Rect.Top + 2;
        Left := Rect.Left + 1 + dbtries.Width + Splitter2.Width;
        Top := Rect.Top + 14;
        Visible := True;
        KeyValue := qamountID_MP_SET.AsInteger;
        SetFocus;
        DropDown;
      end;
    end;
    if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
      and (qParamObjP_TYPE.IsNull) then
    begin
      Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col,
        dbgParamObj.Row);
      with ed_names do
      begin
        Width := Rect.Right - Rect.Left + 2;
        Height := Rect.Bottom - Rect.Top + 2;
        Left := Rect.Left + 1 + dbtries.Width + Splitter2.Width;
        Top := Rect.Top + 14;
        Text := qParamObjAMOUNT.AsString;
        Visible := True;
        SetFocus;
      end;
    end;
    if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
      and (qParamObjP_TYPE.AsInteger = 2) then
    begin
      Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col,
        dbgParamObj.Row);
      with ed_names do
      begin
        Width := Rect.Right - Rect.Left + 1;
        Height := Rect.Bottom - Rect.Top + 1;
        Left := Rect.Left + 1 + dbtries.Width + Splitter2.Width;
        Top := Rect.Top + 14;
        Text := qParamObjAMOUNT.AsString;
        Visible := True;
        SetFocus;
      end;
    end;
  end;

end;

procedure TfmRegParam.lcbAmountCloseUp(Sender: TObject; Accept: Boolean);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set ID_MP_SET = :ID_MP_SET');
    Add('where (id_pt_param = :id_pt_param)');
    ParamByName('id_pt_param').AsInteger := qParamObjID_PT_PARAM.AsInteger;
    if Length(lcbAmount.Text) = 0 then
    begin
      ParamByName('id_mp_set').Clear;
    end
    else
    begin
      ParamByName('id_mp_set').AsInteger := lcbAmount.KeyValue;
    end;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_ParamObj;
      lcbAmount.Hide;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.ed_namesExit(Sender: TObject);
begin
  ed_names.Hide;
end;

procedure TfmRegParam.ed_namesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if Length(ed_names.Text) = 0 then
    begin
      ed_names.Hide;
      Exit;
    end;
    try
      with dmIS.qIM, dmIS.qIM.SQL do
      begin
        Close;
        Clear;
        Add('update proj_types_params set');
        Add('AMOUNT = :AMOUNT where  (ID_PT_PARAM = :ID_PT_PARAM)');
        ParamByName('id_pt_param').AsInteger := qParamObjID_PT_PARAM.AsInteger;
        if qParamObjP_TYPE.IsNull then
        begin
          if Length(ed_names.Text) = 0 then
          begin
            ParamByName('amount').Clear;
          end
          else
          begin
            ParamByName('amount').AsFloat := StrToFloat(ed_names.Text);
          end;
          try
            ExecSQL;
            if Transaction.Active then
              Transaction.Commit;
            Open_ParamObj;
            ed_names.Hide;
          except
            if Transaction.Active then
              Transaction.Rollback;
          end;
        end;
      end;
    except
    end;
  end;
end;

procedure TfmRegParam.fff1Click(Sender: TObject);
begin
  ShowMessage(IntToStr(dbtries.GetId));
end;

procedure TfmRegParam.dbtriesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Open_ParamObj;
end;
// ��������������
procedure TfmRegParam.dbtriesEdited(Sender: TObject; Node: TTreeNode;
  var S: string);
begin
  try
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('update proj_chain_types set name = :name');
      add('where (id_ch_type = :id_ch_type)');
      ParamByName('name').AsString := s;
      ParamByName('id_ch_type').AsInteger := id_type;
      try
        ExecSQL;
        if Transaction.Active then
          Transaction.Commit;
        Tb9.OnClick(Sender);
        dbtries.FullExpand;
        FindInTree_Det(id_type, dbtries);
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  except
  end;
end;

procedure TfmRegParam.dbgOperSortMarkingChanged(Sender: TObject);
begin
{  Open_Operation;     }
end;

procedure TfmRegParam.dbgOperParamSortMarkingChanged(Sender: TObject);
begin
  Open_Param_Oper;
end;

procedure TfmRegParam.qOperAfterScroll(DataSet: TDataSet);
begin
  Open_Param_Oper;
end;

procedure TfmRegParam.qOperParamAfterInsert(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperParamBeforeDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperParamBeforeInsert(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperParamAfterDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperParamAfterPost(DataSet: TDataSet);
begin
  try
    if dmIs.mT.Active then
      dmIs.mT.CommitRetaining;
  except
    if dmIs.mT.Active then
      dmIs.mT.RollbackRetaining;
  end;
end;

procedure TfmRegParam.pc1Change(Sender: TObject);
begin
  if pc1.ActivePage = tsObj then
    Open_ParamObj;
  if pc1.ActivePage = tsOper then
  begin
    Open_Operation;
    Open_Param_Oper;
  end;
end;

procedure TfmRegParam.dbgOperParamKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qOperParam.State in [dsEdit, dsInsert] then
      qOperParam.Post;
end;

procedure TfmRegParam.tb10Click(Sender: TObject);
begin

  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('execute procedure COPY_OBJECTS_PARAMS (:id_proj_type)');
    ParamByName('id_proj_type').AsInteger := dbtries.GetId;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Param_Oper;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.dbgParamObjKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qParamObj.State in [dsEdit, dsInsert] then
      qParamObj.Post;
end;

procedure TfmRegParam.qParamObjBeforeInsert(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qParamObjBeforeDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.dbgOperParamColumns3UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set is_work = :is_work');
    Add('where id_pt_param = :id_pt_param');
    ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
    if qOperParamIS_WORK.AsInteger = 0 then
      ParamByName('is_work').AsInteger := 1;
    if qOperParamIS_WORK.AsInteger = 1 then
      ParamByName('is_work').AsInteger := 0;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.dbgOperParamColumns4UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set is_not_null = :is_not_null');
    Add('where id_pt_param = :id_pt_param');
    ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
    if qOperParamIS_NOT_NULL.AsInteger = 0 then
      ParamByName('is_not_null').AsInteger := 1;
    if qOperParamIS_NOT_NULL.AsInteger = 1 then
      ParamByName('is_not_null').AsInteger := 0;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.dbgOperParamColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set is_second = :is_second');
    Add('where id_pt_param = :id_pt_param');
    ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
    if qOperParamIS_SECOND.AsInteger = 0 then
      ParamByName('is_second').AsInteger := 1;
    if qOperParamIS_SECOND.AsInteger = 1 then
      ParamByName('is_second').AsInteger := 0;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.dbgOperParamColumns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set posit = :posit');
    Add('where id_pt_param = :id_pt_param');
    ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
    ParamByName('posit').AsInteger := Value;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.tb1Click(Sender: TObject);
var
  d, s, id_pt: Integer;
begin
  if qOperParam.IsEmpty then
    Exit;
  id_pt := qOperParamID_PT_PARAM.AsInteger;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    qOperParam.Next;
    if qOperParam.Eof then
      Exit;
    d := qOperParamID_PT_PARAM.AsInteger;
    s := qOperParamPOSIT.AsInteger;
    qOperParam.Prior;
    try
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := (qOperParamPOSIT.AsInteger + 1);
      ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
      ExecSQL;
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := s - 1;
      ParamByName('id_pt_param').AsInteger := d;
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Param_Oper;
      qOperParam.Locate('id_pt_param', id_pt, []);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.tb2Click(Sender: TObject);
var
  d, s, id_pt: Integer;
begin
  if qOperParam.IsEmpty then
    Exit;
  id_pt := qOperParamID_PT_PARAM.AsInteger;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    if qOperParamPOSIT.AsInteger > 1 then
    begin
      qOperParam.Prior;
      d := qOperParamID_PT_PARAM.AsInteger;
      s := qOperParamPOSIT.AsInteger;
      qOperParam.Next;
    end
    else
      Exit;
    try
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := (qOperParamPOSIT.AsInteger - 1);
      ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
      ExecSQL;
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := s + 1;
      ParamByName('id_pt_param').AsInteger := d;
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Param_Oper;
      qOperParam.Locate('id_pt_param', id_pt, []);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.tb3Click(Sender: TObject);
var
  d, s, id_pt: Integer;
begin
  if qParamObj.IsEmpty then
    Exit;
  id_pt := qParamObjID_PT_PARAM.AsInteger;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    qParamObj.Next;
    if qParamObj.Eof then
      Exit;
    d := qParamObjID_PT_PARAM.AsInteger;
    s := qParamObjPOSIT.AsInteger;
    qParamObj.Prior;
    try
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := (qParamObjPOSIT.AsInteger + 1);
      ParamByName('id_pt_param').AsInteger := qParamObjID_PT_PARAM.AsInteger;
      ExecSQL;
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := s - 1;
      ParamByName('id_pt_param').AsInteger := d;
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_ParamObj;
      qParamObj.Locate('id_pt_param', id_pt, []);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.tb4Click(Sender: TObject);
var
  d, s, id_pt: Integer;
begin
  if qParamObj.IsEmpty then
    Exit;
  id_pt := qParamObjID_PT_PARAM.AsInteger;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    if qParamObjPOSIT.AsInteger > 1 then
    begin
      qParamObj.Prior;
      d := qParamObjID_PT_PARAM.AsInteger;
      s := qParamObjPOSIT.AsInteger;
      qParamObj.Next;
    end
    else
      Exit;
    try
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := (qParamObjPOSIT.AsInteger - 1);
      ParamByName('id_pt_param').AsInteger := qParamObjID_PT_PARAM.AsInteger;
      ExecSQL;
      Close;
      Clear;
      Add('update proj_types_params set posit = :step');
      Add('where (id_pt_param = :id_pt_param)');
      ParamByName('step').AsInteger := s + 1;
      ParamByName('id_pt_param').AsInteger := d;
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_ParamObj;
      qParamObj.Locate('id_pt_param', id_pt, []);
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.dbgParamObjColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set is_not_null = :is_not_null');
    Add('where id_pt_param = :id_pt_param');
    ParamByName('id_pt_param').AsInteger := qParamObjID_PT_PARAM.AsInteger;
    if qParamObjIS_NOT_NULL.AsInteger = 0 then
      ParamByName('is_not_null').AsInteger := 1;
    if qParamObjIS_NOT_NULL.AsInteger = 1 then
      ParamByName('is_not_null').AsInteger := 0;
      
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.tb5Click(Sender: TObject);
begin
  GridToExcel(dbgParamObj);
end;

procedure TfmRegParam.tb7Click(Sender: TObject);
begin
  GridToExcel(dbgOperParam);
end;

procedure TfmRegParam.tb8Click(Sender: TObject);
begin
  if tb8.Down then
  begin
    tb8.ImageIndex := 24;
    tb8.Hint := '�������� ������';
    dbtries.FullExpand;
  end
  else
  begin
    tb8.ImageIndex := 23;
    tb8.Hint := '���������� ������';
    dbtries.BuildTree;
  end;
end;



procedure TfmRegParam.N3Click(Sender: TObject);
begin
  code := 0;   //���������� ��� �������
  gb1.Show;
  b1.Caption := '����������';
  ed_name.SetFocus;
end;



procedure TfmRegParam.dbgParamObjCellClick(Column: TColumnEh);
begin
  if qParamObj.State in [dsInsert, dsEdit] then
    qParamObj.Post;
end;

procedure TfmRegParam.N211Click(Sender: TObject);
begin
  ShowMessage(inttostr(dbtries.GetId));
end;

procedure TfmRegParam.dbgResKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if qRes.State in [dsEdit, dsInsert] then
      qRes.Post;
end;

procedure TfmRegParam.qResAfterPost(DataSet: TDataSet);
begin
  try
    if qRes.Transaction.Active then
      qRes.Transaction.CommitRetaining;
  except
    if qRes.Transaction.Active then
      qRes.Transaction.RollbackRetaining;
  end;
end;

procedure TfmRegParam.qResBeforePost(DataSet: TDataSet);
begin
  try
    if qRes.Transaction.Active then
      qRes.Transaction.CommitRetaining;
  except
    if qRes.Transaction.Active then
      qRes.Transaction.RollbackRetaining;
  end;
end;

procedure TfmRegParam.qResNewRecord(DataSet: TDataSet);
begin
  qResID_ALL.AsInteger := qOperID_OPERATION.AsInteger;
end;

procedure TfmRegParam.qResBeforeDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qResAfterDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.tb11Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select id_chain_state from proj_chain_states where descr = :descr');
    ParamByName('descr').AsString := qResNAME.AsString;
    Open;
    if not dmIS.qIN.IsEmpty then
    begin
      MsgError('�������� ����� ���������',
        '������ ���������� ������������ � ���������');
      Exit;
    end;
  end;
  with dmIs.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('delete from reasons_diff where id_reason =' + qResID_REASON.AsString);
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      qres.Close;
      qres.Open;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmRegParam.tb12Click(Sender: TObject);
begin
  if tb12.Down then
  begin
    tb12.Hint := '�� ��� ���� �������';
    s_all := 1;
  end
  else
  begin
    tb12.Hint := '�� ����������� ���� �������';
    s_all := 0;
  end;
end;




procedure TfmRegParam.qOperAfterDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperAfterInsert(DataSet: TDataSet);
begin
  if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperBeforeDelete(DataSet: TDataSet);
begin
 if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.qOperBeforeInsert(DataSet: TDataSet);
begin
  if  qOper.State in [dsEdit, DsInsert] then Abort;
end;









procedure TfmRegParam.dbgOperColumns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  s: string;
  i: integer;
begin
  s := '';
  if fmMain.UF130 then
    Handled := False
  else
    Handled := true; 

{ with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('update proj_types_params set qOperPARAM_EXEC = :qOperPARAM_EXEC');
    Add('where id_pt_param = :id_pt_param');
    ParamByName('id_pt_param').AsInteger := qOperParamID_PT_PARAM.AsInteger;
    if qOperPARAM_EXEC.AsInteger = 0 then
      ParamByName('qOperPARAM_EXEC').AsInteger := 1;
    if qOperPARAM_EXEC.AsInteger = 1 then
      ParamByName('qOperPARAM_EXEC').AsInteger := 0;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;   }

end;










procedure TfmRegParam.qOperAfterPost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmRegParam.dbgOperKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   if qOper.State in [dsEdit, dsInsert] then qOper.Post;
   dbgOper.OnSortMarkingChanged(Sender); 
end;












procedure TfmRegParam.dbgOperColumns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
// if fmMain.UF130 then Handled := False else Handled := true;
   {    WriteSysStrParam(dmIS.qIM, 10, SelectedID(dbgOper, 'id_operation'));}
end;














procedure TfmRegParam.dbgOperMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  s: string;
  i: integer;
begin
  { s := '';

   with qOper do begin
   dbgOper.DataSource.DataSet.DisableControls;
   repeat
    if qOperPARAM_EXEC.AsInteger = 1 then begin
    if s = '' then s := qOperID_OPERATION.AsString
    else s := qOperID_OPERATION.AsString + ',' + s;
     with dmIS.qIM, dmIS.qIM.SQL do begin
      Close;
      Clear;
      Add('update is$mod_sys_params set str_value = ' + s);
      Add('where id_ms_param = 7');
      try
       ExecSQL;
       if Transaction.Active then Transaction.Commit;
      except
       if Transaction.Active then Transaction.Rollback;
      end;
     end;
     end;
     Next;
     until Eof;
    end;
     dbgOper.DataSource.DataSet.EnableControls; }
end;



// ��������� ��� ������ ���������
procedure TfmRegParam.SetParam(fname : string; id_param : integer);
var
  s: string;
  i: integer;
begin
   with qOper do
  begin
    if Active then
      i := qOperID_OPERATION.AsInteger;
    dbgOper.DataSource.DataSet.DisableControls;
    first;
    repeat
      if qOper.fieldbyname(fname).AsInteger = 1 then
      begin
        if length(trim(s)) = 0 then
          s := qOperID_OPERATION.AsString
        else
          s := qOperID_OPERATION.AsString + ',' + s;
      end;
      Next;
    until Eof;
  end;
  fmALl.WriteSysModStrParam(dmIs.qIM, id_param, 9, s);

end;

//���������
procedure TfmRegParam.b2Click(Sender: TObject);

begin

  SetParam( 'PARAM_EXEC',10);
  SetParam( 'PARAM_INTEG',11);
  SetParam( 'PARAM_KONTROL',55);

end;



procedure TfmRegParam.dbgOperColumns3UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
  

begin


 //dbgOper.Selection.Columns.Select(dbgOper.FieldColumns['Param_kontrol'],false);

{if fmMain.UF130 then Handled := False else Handled := true;
       WriteSysStrParam(dmIS.qIM, 10, SelectedID(dbgOper, 'PARAM_KONTROL'));  }


end;



// ����������
procedure TfmRegParam.N4Click(Sender: TObject);
 
begin
{with dmIS.qIM, dmIS.qIM.SQL do

  begin
      Close;
      Clear;
      Add('insert into PROJ_TYPES_PARAMS (id_pt_param, ID_MAIN_PARAM, IN_CALC,');
      Add('IS_NOT_NULL, IS_SECOND, POSIT, AMOUNT, REM, id_proj_type)');
      Add('values (gen_id(obj_id,1), :ID_MAIN_PARAM, :IN_CALC,');
      Add(':IS_NOT_NULL, :IS_SECOND, :POSIT, :AMOUNT, :REM, :id_proj_type)');

    try
    parambyname('id_proj_type').asinteger := dbtries.getid;
      ExecSQL;
      if Transaction.Active then
         Transaction.Commit;
         Open_ParamObj;


    except
      if Transaction.Active then
         Transaction.Rollback;



    end;
  end;  }
end;




//��������
procedure TfmRegParam.N5Click(Sender: TObject);
begin
 {with dmIs.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('delete from PROJ_TYPES_PARAMS  where (ID_CHAIN_TRAFF,ID_MAIN_PARAM, IN_CALC,');
    Add('IS_NOT_NULL, IS_SECOND, POSIT, PARAM, AMOUNT, UNIT, REM)');
    
    ParamByName('ID_MAIN_PARAM').AsInteger := qParamObjID_MAIN_PARAM.AsInteger;
    try
      ExecSQL;
      Close;
      Clear;
      Add('delete from PROJ_TYPES_PARAMS where (ID_MAIN_PARAM = :ID_MAIN_PARAM)');
      ParamByName('ID_MAIN_PARAM').AsInteger := qParamObjID_MAIN_PARAM.AsInteger;
      ExecSQL;
      if Transaction.Active then
         Transaction.Commit;
         Open_ParamObj;
    except
      if Transaction.Active then
        Transaction.Rollback;
      Exit;
    end;
  end;       }
end;




procedure TfmRegParam.qOperBeforeEdit(DataSet: TDataSet);
begin
if  qOper.State in [dsEdit, DsInsert] then Abort;
end;

procedure TfmRegParam.Button1Click(Sender: TObject);
  var s_param:string;
begin
 
end;

end.
