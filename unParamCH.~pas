unit unParamCH;

interface

uses
  Windows, Messages, shrFunc, SysUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, unMainForm, dxDBCtrl, dxDBTL, StdCtrls,
  Buttons,
  ExtCtrls, ComCtrls, ToolWin, DB, IBCustomDataSet, Grids, DBGridEh,
  IBQuery, Mask, DBCtrlsEh, DBLookupEh, DBSTrees, DBCtrls, DBGrids;

type
  TfmParamCH = class(TMainForm)
    p1: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    b1: TBevel;
    bSave: TBitBtn;
    qParamCH: TIBQuery;
    dsParamCH: TDataSource;
    dbgParam: TDBGridEh;
    qParam_pos: TIBQuery;
    qParam_posNAME: TIBStringField;
    qParam_posID_MP_SET: TIntegerField;
    qParam_posID_MAIN_PARAM: TIntegerField;
    dsParam_pos: TDataSource;
    ed_param: TEdit;
    dbl: TDBLookupComboboxEh;
    bExit: TButton;
    qParamCHNAME: TIBStringField;
    qParamCHPARAM: TIBStringField;
    qParamCHID_MAIN_PARAM: TIntegerField;
    qParamCHP_TYPE: TIntegerField;
    qParamObj: TIBQuery;
    dsParamObj: TDataSource;
    qParamObjNAME: TIBStringField;
    qParamObjPARAM: TIBStringField;
    qParamObjID_MAIN_PARAM: TIntegerField;
    qParamObjP_TYPE: TIntegerField;
    pc1: TPageControl;
    tsParamOper: TTabSheet;
    tsParamObj: TTabSheet;
    tsComplect: TTabSheet;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    dbgParamObj: TDBGridEh;
    dbgComplect: TDBGridEh;
    ed_p: TEdit;
    lcbparam: TDBLookupComboboxEh;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    qParamObjD_FIX: TDateTimeField;
    qParamObjEDITOR: TIBStringField;
    qParamCHD_FIX: TDateTimeField;
    qParamCHEDITOR: TIBStringField;
    qParamObjID_FIX: TIntegerField;
    qParamObjIS_NOT_NULL: TIntegerField;
    tsObject_Info: TTabSheet;
    gbTrees: TGroupBox;
    pObject: TPanel;
    dbtrees: TDBS_TreeView;
    ed_name_obj: TEdit;
    LNameObj: TLabel;
    Label1: TLabel;
    lcbCust: TDBLookupComboboxEh;
    lcbProject: TDBLookupComboboxEh;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbOtgruz: TDBDateTimeEditEh;
    dbClose: TDBDateTimeEditEh;
    bNew: TButton;
    bClose: TButton;
    Label5: TLabel;
    mMes: TMemo;
    sp3: TSplitter;
    mRem: TDBMemo;
    GroupBox1: TGroupBox;
    ed_type: TEdit;
    Label6: TLabel;
    qParamCHIS_NOT_NULL: TIntegerField;
    qParamCHID_FIX: TIntegerField;
    qParamObjAMOUNT: TIBStringField;
    qParamCHAMOUNT: TIBStringField;
    dbM5: TDBMemo;
    Splitter1: TSplitter;
    GB2: TGroupBox;
    qParamCHIS_WORK: TIntegerField;
    Splitter2: TSplitter;
    procedure ed_paramExit(Sender: TObject);
    procedure dblCloseUp(Sender: TObject; Accept: Boolean);
    procedure dbgParamSortMarkingChanged(Sender: TObject);
    procedure dblExit(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbgParamMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ed_paramKeyPress(Sender: TObject; var Key: Char);
    procedure bSaveClick(Sender: TObject);
    procedure bExitClick(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure dbgParamObjSortMarkingChanged(Sender: TObject);
    procedure lcbparamCloseUp(Sender: TObject; Accept: Boolean);
    procedure lcbparamExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ed_pExit(Sender: TObject);
    procedure ed_pKeyPress(Sender: TObject; var Key: Char);
    procedure dbgParamObjMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure dbgParamObjGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qParamObjAfterPost(DataSet: TDataSet);
    procedure qParamCHAfterPost(DataSet: TDataSet);
    procedure dbtreesClick(Sender: TObject);
    procedure bNewClick(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
    procedure dbgParamGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ed_paramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgParamCellClick(Column: TColumnEh);
    procedure dbgParamObjCellClick(Column: TColumnEh);
    procedure ed_pKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mRemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbM5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    S_P, id_type: Integer;
    flag: Boolean;
    procedure Open_Param;
    procedure Open_ParamObj;
    procedure Insert_Param_Traff;
    procedure Insert_Obj_Param;

    { Private declarations }

  public
    { Public declarations }
  end;

  {var
    fmParamCH: TfmParamCH;}

implementation
uses unIs, unMain, unCliOrds;
{$R *.dfm}

procedure TfmParamCH.Insert_Obj_Param;
begin
  with f_CliOrds[fmMain.NF_CliOrds].qInsert,
    f_CliOrds[fmMain.NF_CliOrds].qInsert.SQL do
  begin
    Close;
    Clear;
    Add('update proj_chain_params set');
    Add('AMOUNT = :AMOUNT, STRVALUE = :STRVALUE, d_fix = :d_fix,');
    Add('id_fix = :id_fix where  (ID_CHAIN = :ID_CHAIN');
    Add('and id_main_param = :id_main_param) ');
    ParamByName('id_chain').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
    ParamByName('id_main_param').AsInteger := qParamObjID_MAIN_PARAM.AsInteger;
    if qParamObjP_TYPE.AsInteger = 2 then
    begin
      if Length(ed_p.Text) = 0 then
      begin
        ParamByName('strvalue').Clear;
        ParamByName('id_fix').Clear;
        ParamByName('d_fix').Clear;
      end
      else
      begin
        ParamByName('strvalue').AsString := ed_p.Text;
        ParamByName('id_fix').AsInteger := SysVars.RegTN;
        ParamByName('d_fix').AsDateTime := now;
      end;
    end
    else if Length(ed_p.Text) = 0 then
    begin
      ParamByName('amount').Clear;
      ParamByName('id_fix').Clear;
      ParamByName('d_fix').Clear;
    end
    else
    begin
      ParamByName('amount').AsFloat := StrToFloat(ed_p.Text);
      ParamByName('id_fix').AsInteger := SysVars.RegTN;
      ParamByName('d_fix').AsDateTime := now;
    end;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_ParamObj;
      ed_p.Hide;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmParamCH.Insert_Param_Traff;
begin
  with f_CliOrds[fmMain.NF_CliOrds].qInsert,
    f_CliOrds[fmMain.NF_CliOrds].qInsert.SQL do
  begin
    Close;
    Clear;
    Add('update proj_chain_traff_params set');
    Add('AMOUNT = :AMOUNT, STRVALUE = :STRVALUE, d_fix = :d_fix, id_fix = :id_fix where  (ID_CHAIN_TRAFF = :ID_CHAIN_TRAFF');
    Add('and id_main_param = :id_main_param)');
    ParamByName('id_chain_traff').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
    ParamByName('id_main_param').AsInteger := qParamCHID_MAIN_PARAM.AsInteger;
    if qParamCHP_TYPE.AsInteger = 2 then
    begin
      if (Length(ed_param.Text) = 0) then
      begin
        ParamByName('strvalue').Clear;
        ParamByName('id_fix').Clear;
        ParamByName('d_fix').Clear;
      end
      else
      begin
        ParamByName('strvalue').AsString := ed_param.Text;
        ParamByName('id_fix').AsInteger := SysVars.RegTN;
        ParamByName('d_fix').AsDateTime := now;
      end;
    end
    else if Length(ed_param.Text) = 0 then
    begin
      ParamByName('amount').Clear;
      ParamByName('id_fix').Clear;
      ParamByName('d_fix').Clear;
    end
    else
    begin
      ParamByName('amount').AsFloat := StrToFloat(ed_param.Text);
      ParamByName('id_fix').AsInteger := SysVars.RegTN;
      ParamByName('d_fix').AsDateTime := now;
    end;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Param;
      ed_param.Hide;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmParamCH.Open_ParamObj;
begin
  S_P := qParamObjID_MAIN_PARAM.AsInteger;
  with qParamObj, qParamObj.SQL do
  begin
    Close;
    Clear;
    Add(f_CliOrds[fmMain.NF_CliOrds].param_obj);
    ParamByName('id_proj_chain').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
    Open;
    Locate('ID_MAIN_PARAM', S_P, []);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmParamCH.Open_Param;
begin
  S_P := qParamCHID_MAIN_PARAM.AsInteger;
  with qParamCH, qParamCH.SQL do
  begin
    Close;
    Clear;
    Add(f_CliOrds[fmMain.NF_CliOrds].param_oper);
    ParamByName('id_chain_traff').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
    Open;
    Locate('id_main_param', S_P, []);
  end;
end;

procedure TfmParamCH.ed_paramExit(Sender: TObject);
begin
  ed_param.Hide;
end;

procedure TfmParamCH.dblCloseUp(Sender: TObject; Accept: Boolean);
begin
  if ((qParamCHID_FIX.AsInteger <> SysVars.RegTN) and (not qParamCHID_FIX.IsNull)
    and (f_CliOrds[fmMain.NF_CliOrds].qWorkCHSTATUS.AsInteger <> 60)) then
  begin
    with dmIs.qIN, dmIs.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select f.id_chain_traff, f.status from proj_Chain_traff f');
      Add('where f.status > 9 and not f.status = 23 and f.id_chain_traff  = :traff');
      ParamByName('traff').AsInteger :=
        f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
      Open;
      if (not dmIs.qIN.IsEmpty) then
        Exit;
    end;
    MsgError('Вы не имеете права изменять реквезит занесенный не Вами',
      'Проверка');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  with f_CliOrds[fmMain.NF_CliOrds].qInsert,
    f_CliOrds[fmMain.NF_CliOrds].qInsert.SQL do
  begin
    Close;
    Clear;
    Add('update proj_chain_traff_params set ID_MP_SET = :ID_MP_SET, d_fix = :d_fix, id_fix = :id_fix');
    Add('where (ID_CHAIN_TRAFF = :ID_CHAIN_TRAFF and id_main_param = :id_main_param)');
    ParamByName('id_chain_traff').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
    ParamByName('id_main_param').AsInteger := qParamCHID_MAIN_PARAM.AsInteger;
    ParamByName('id_fix').AsInteger := SysVars.RegTN;
    if Length(dbl.Text) = 0 then
    begin
      ParamByName('id_mp_set').Clear;
      ParamByName('id_fix').Clear;
      ParamByName('d_fix').Clear;
    end
    else
    begin
      ParamByName('id_mp_set').AsInteger := dbl.KeyValue;
      ParamByName('id_fix').AsInteger := SysVars.RegTN;
      ParamByName('d_fix').AsDateTime := now;
    end;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_Param;
      dbl.Hide;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmParamCH.dbgParamSortMarkingChanged(Sender: TObject);
begin
  Open_Param;
end;

procedure TfmParamCH.dblExit(Sender: TObject);
begin
  dbl.Hide;
end;

procedure TfmParamCH.ToolButton1Click(Sender: TObject);
begin
  Open_Param;
end;

procedure TfmParamCH.FormShow(Sender: TObject);
var
  id_chain, id_traff: Integer;
begin
  id_chain := f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
  id_traff := f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
  // f_CliOrds[fmMain.NF_CliOrds].tbAll.Down := true;
  // f_CliOrds[fmMain.NF_CliOrds].tbAll.OnClick(Sender);
  f_CliOrds[fmMain.NF_CliOrds].qNewCH.Locate('id_proj_chain', id_chain, []);
  f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Locate('id_chain_traff', id_traff, []);
  // -- настройка окна в режим редактирования ------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].edit_obj = 1 then
  begin
    ed_type.Text := f_CliOrds[fmMain.NF_CliOrds].qNewCHPROJ_TYPE.AsString;
    dbOtgruz.Value := f_CliOrds[fmMain.NF_CliOrds].qNewCHD_PACK.Value;
    ed_name_obj.Text := f_CliOrds[fmMain.NF_CliOrds].qNewCHNAME.AsString;
    dbClose.Value := f_CliOrds[fmMain.NF_CliOrds].qNewCHD_CLOSE.Value;
    mMes.Text := f_CliOrds[fmMain.NF_CliOrds].qNewCHDESCR.AsString;
  end;
  if f_CliOrds[fmMain.NF_CliOrds].edit_obj = 0 then
  begin
    lcbCust.Text := f_CliOrds[fmMain.NF_CliOrds].qClientsNAME.AsString;
    lcbProject.Text := f_CliOrds[fmMain.NF_CliOrds].qPrjNAME.AsString;
    mMes.Lines.Clear;
  end;
  // -----------------------------------------------------------------------------
  if (pc1.ActivePage = tsObject_Info) then
  begin
    bSave.Hide;
    bexit.Hide;
    with dbtrees do
    begin
      ClearTree;
      RootId := 1;
      Items.BeginUpdate;
      BuildTree;
      //  FullExpand;
      Items.EndUpdate;
      Selected := Items[0];
    end;
  end;
  dbOtgruz.Value := Server_now(dmIS.qIM);
  dbClose.Value := Server_now(dmIS.qIM);
  ;
  dbl.Hide;
  lcbParam.Hide;
  ed_p.Hide;
  ed_param.Hide;
  if (pc1.ActivePage = tsParamObj) then
    Open_ParamObj;
  if (pc1.ActivePage = tsParamOper) then
  begin
    Open_Param;
  end;
end;

procedure TfmParamCH.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  qParamCH.Close;
  qParam_pos.Close;
  qParamObj.Close;
end;

procedure TfmParamCH.dbgParamMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Rect: TRect;
begin
  with dmIs.qIN, dMIs.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select id_chain_event from proj_chain_states where');
    Add('id_chain_event in (40,41,70) and id_chain_traff = :id_traff');
    ParamByName('id_traff').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
    Open;
    if not IsEmpty then
    begin
      if qParamCHIS_WORK.AsInteger = 1 then
      begin
        MsgError('Данный реквизит невозможно редактировать в связи с тем, что операция уже была выполнена', 'Внимание');
        Exit;
      end;
    end;
  end;
  if qParamCHID_MAIN_PARAM.AsInteger = 31 then
    Exit;
  if qParamCHID_MAIN_PARAM.AsInteger = 32 then
    Exit;
  if qParamCHID_MAIN_PARAM.AsInteger = 1763 then
    Exit;
  if (qParamCHID_FIX.AsInteger <> SysVars.RegTN) and (not qParamCHID_FIX.IsNull)
    then
    Exit;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCHSTATUS.AsInteger <> 60 then
  begin
    with dmIs.qIN, dmIs.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select f.id_chain_traff, f.status from proj_Chain_traff f');
      Add('where f.status > 9 and not f.status = 23 and f.id_chain_traff  = :traff');
      ParamByName('traff').AsInteger :=
        f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
      Open;
    end;
    if (not dmIs.qIN.IsEmpty) then
      Exit;
  end;
  if (dbgparam.SelectedField.FieldName = 'AMOUNT')
    and (qParamCHP_TYPE.AsInteger = 1) then
  begin
    Rect := dbgparam.Columns.Grid.CellRect(dbgparam.Col, dbgparam.Row);
    with qParam_pos do
    begin
      Close;
      DataSource := dsParamCH;
      Open;
      FetchAll;
    end;
    with dbl do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;
      KeyValue := qParam_posID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;
  if (dbgparam.SelectedField.FieldName = 'AMOUNT')
    and (qParamCHP_TYPE.IsNull) then
  begin
    Rect := dbgparam.Columns.Grid.CellRect(dbgparam.Col, dbgparam.Row);
    with ed_param do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Text := qParamCHAMOUNT.AsString;
      Visible := True;
      SetFocus;
    end;
  end;
  if (dbgparam.SelectedField.FieldName = 'AMOUNT')
    and (qParamCHP_TYPE.AsInteger = 2) then
  begin
    Rect := dbgparam.Columns.Grid.CellRect(dbgparam.Col, dbgparam.Row);
    with ed_param do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Text := qParamCHAMOUNT.AsString;
      Visible := True;
      SetFocus;
    end;
  end;
end;

procedure TfmParamCH.ed_paramKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if key = #13 then
    begin
      with dmIs.qIN, dmIs.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select f.id_chain_traff, f.status from proj_Chain_traff f');
        Add('where f.status > 9 and not f.status = 23 and f.id_chain_traff  = :traff');
        ParamByName('traff').AsInteger :=
          f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
        Open;
      end;
      if (not dmIs.qIN.IsEmpty) then
        Exit;
      if ((qParamCHID_FIX.AsInteger <> SysVars.RegTN) and (not
        qParamCHID_FIX.IsNull)
        and (f_CliOrds[fmMain.NF_CliOrds].qWorkCHSTATUS.AsInteger <> 60)) then
      begin
        MsgError('Вы не имеете права изменять реквезит занесенный не Вами',
          'Проверка');
        Exit;
      end;
      Insert_Param_Traff;
    end;
  except
  end;
end;

procedure TfmParamCH.bSaveClick(Sender: TObject);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
  { with dmIs.qIN, dmIs.qIN.SQL do
   begin
   Close;
   Clear;
   Add('select t.is_not_null, m.name, g.id_proj_type from proj_chain_params s');
   Add('join proj_chains p on p.id_proj_chain = s.id_chain');
   Add('join projects g on g.id_project = p.id_project');
   Add('join main_params m on m.id_main_param = s.id_main_param');
   Add('join proj_types_params t on t.id_main_param = s.id_main_param');
   Add('and t.id_proj_type = g.id_proj_type where  t.is_not_null = 1 and');
   Add('(case when m.p_type = 2 then substring(s.strvalue from 1 for 64)');
   Add('when m.p_type = 1 then (select q.name from main_params_sets q');
   Add('where q.id_mp_set = s.id_mp_set) else cast(s.amount as numeric');
   Add('(16,2)) end) is null and s.id_chain = :id_chain');
   ParamByName('id_chain').AsInteger :=  f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
   Open;
   end;
  If (not dmIs.qIN.IsEmpty) then
   begin
    MsgError('Не все обязательные реквизиты заполнены','Проверка');
    dmIS.qIN.Close;
    Exit;
   end;      }
  f_CliOrds[fmMain.NF_CliOrds].Open_Param;
  f_CliOrds[fmMain.NF_CliOrds].Open_ParamObj;
  fmParamCH.Close;
end;

procedure TfmParamCH.bExitClick(Sender: TObject);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
  f_CliOrds[fmMain.NF_CliOrds].Open_Param;
  f_CliOrds[fmMain.NF_CliOrds].Open_ParamObj;
  fmParamCH.Close;
end;

procedure TfmParamCH.pc1Change(Sender: TObject);
begin
  bSave.Show;
  bexit.Show;
  if pc1.ActivePage = tsParamObj then
    Open_ParamObj;
  if pc1.ActivePage = tsParamOper then
    Open_Param;
  if pc1.ActivePage = tsObject_Info then
  begin
    bSave.hide;
    bexit.hide;
    with dbtrees do
    begin
      ClearTree;
      RootId := 1;
      Items.BeginUpdate;
      BuildTree;
      //  FullExpand;
      Items.EndUpdate;
      Selected := Items[0];
    end;
    ed_name_obj.Text := f_CliOrds[fmMain.NF_CliOrds].qNewCHNAME.AsString;
    mMes.Lines.Text := f_CliOrds[fmMain.NF_CliOrds].qNewCHDESCR.AsString;
  end;
end;

procedure TfmParamCH.ToolButton2Click(Sender: TObject);
begin
  Open_ParamObj;
end;

procedure TfmParamCH.dbgParamObjSortMarkingChanged(Sender: TObject);
begin
  Open_ParamObj;
end;

procedure TfmParamCH.lcbparamCloseUp(Sender: TObject; Accept: Boolean);
begin
  Screen.Cursor := crHourGlass;

  with f_CliOrds[fmMain.NF_CliOrds].qInsert,
    f_CliOrds[fmMain.NF_CliOrds].qInsert.SQL do
  begin
    Close;
    Clear;
    Add('update proj_chain_params set ID_MP_SET = :ID_MP_SET, d_fix = :d_fix,');
    Add('id_fix = :id_fix where (ID_CHAIN = :ID_CHAIN and id_main_param = :id_main_param)');
    ParamByName('id_chain').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
    ParamByName('id_main_param').AsInteger := qParamObjID_MAIN_PARAM.AsInteger;
    if Length(lcbparam.Text) = 0 then
    begin
      ParamByName('id_mp_set').Clear;
      ParamByName('id_fix').Clear;
      ParamByName('d_fix').Clear;
    end
    else
    begin
      ParamByName('id_mp_set').AsInteger := lcbparam.KeyValue;
      ParamByName('id_fix').AsInteger := SysVars.RegTN;
      ParamByName('d_fix').AsDateTime := now;
    end;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
      Open_ParamObj;
      lcbparam.Hide;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmParamCH.lcbparamExit(Sender: TObject);
begin
  lcbparam.Hide;
end;

procedure TfmParamCH.FormActivate(Sender: TObject);
begin
  lcbparam.Hide;
  dbl.Hide;
  ed_param.Hide;
  ed_p.Hide;
end;

procedure TfmParamCH.ed_pExit(Sender: TObject);
begin
  ed_p.Hide;
end;

procedure TfmParamCH.ed_pKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if key = #13 then
    begin
      insert_obj_param;
    end;
  except
    Exit;
  end;
end;

procedure TfmParamCH.dbgParamObjMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Rect: TRect;
begin
  //- проверка на реквизит категория сложности -----------------------------------
  if qParamObjID_MAIN_PARAM.AsInteger = 31 then
    Exit;
  if qParamObjID_MAIN_PARAM.AsInteger = 32 then
    Exit;
  if qParamObjID_MAIN_PARAM.AsInteger = 1763 then
    Exit;
  // -----------------------------------------------------------------------------
  // -- проверка на наличие операций со статусом большим чем "принято в работу" --
  if fmMain.UF0 = false then
  begin
    with dmis.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select id_chain_traff from proj_chain_traff where status > 29 and id_chain = :id_chain');
      ParamByName('id_chain').AsInteger :=
        f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
      Open;
      if (not dmIS.qIN.IsEmpty) then
        Exit;
    end;
    //------------------------------------------------------------------------------
    // -- проверка на принадлежность операции пользователю -------------------------
    if (qParamObjID_FIX.AsInteger <> SysVars.RegTN)
      and (not qParamObjID_FIX.IsNull) then
      Exit;
  end;
  //------------------------------------------------------------------------------
  //- если кликнули в поле значение ----------------------------------------------
  if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
    //- если выпадающий список
  and (qParamObjP_TYPE.AsInteger = 1) then
  begin
    Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col, dbgParamObj.Row);
    with qParam_pos do
    begin
      Close;
      DataSource := dsParamObj;
      Open;
      FetchAll;
    end;
    with lcbparam do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;
      KeyValue := qParam_posID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;
  // - если число
  if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
    and (qParamObjP_TYPE.IsNull) then
  begin
    Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col, dbgParamObj.Row);
    with ed_p do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Text := qParamObjAMOUNT.AsString;
      Visible := True;
      SetFocus;
    end;
  end;
  // - если строковое значение
  if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
    and (qParamObjP_TYPE.AsInteger = 2) then
  begin
    Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col, dbgParamObj.Row);
    with ed_p do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Text := qParamObjAMOUNT.AsString;
      Visible := True;
      SetFocus;
    end;
  end;
  //------------------------------------------------------------------------------
end;

procedure TfmParamCH.ToolButton9Click(Sender: TObject);
begin
  GridToExcel(dbgComplect);
end;

procedure TfmParamCH.ToolButton7Click(Sender: TObject);
begin
  GridToExcel(dbgParam);
end;

procedure TfmParamCH.ToolButton5Click(Sender: TObject);
begin
  GridToExcel(dbgParamObj);
end;

procedure TfmParamCH.dbgParamObjGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qParamObjIS_NOT_NULL.AsInteger = 1 then
    Background := clSkyBlue;
end;

procedure TfmParamCH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmParamCH.qParamObjAfterPost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmParamCH.qParamCHAfterPost(DataSet: TDataSet);
begin
  try
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  except
    if dmIS.mT.Active then
      dmIS.mT.RollbackRetaining;
  end;
end;

procedure TfmParamCH.dbtreesClick(Sender: TObject);
begin
  id_type := dbtrees.GetId;
  with dmIS.qIN, dmIs.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select name from proj_chain_types where id_ch_type = :id_type');
    ParamByName('id_type').AsInteger := dbtrees.GetId;
    Open;
    ed_type.Text := dmIS.qIN.fieldbyname('name').AsString;
  end;
end;

procedure TfmParamCH.bNewClick(Sender: TObject);
var
  s_chain, id_mp_set: Integer;
  name_s: string;
begin
  // -- Проверка на режим ввода данных -------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].edit_obj = 0 then // добавление объекта
  begin
    // проверка на длину наименования объекта
    if length(ed_name_obj.Text) > 64 then
    begin
      MsgError('Сократите название объекта', 'Внимание');
      Exit;
    end;
    // -- Проверка на наличие реквизитов в справочнике объектов --------------------
    with dmIS.qIN, dmiS.qIN.SQL do
    begin
      CLose;
      Clear;
      Add('select * from proj_types_params where id_proj_type = :id_proj_type');
      ParamByName('id_proj_type').AsInteger := id_type;
      Open;
      if dmIS.qIn.IsEmpty then
      begin
        MsgError('В справочнике отсутствуют реквизиты', 'Проверка');
        Exit;
      end;
    end;
    // -----------------------------------------------------------------------------
    // -- Проверка на заполненность полей ------------------------------------------
    if ((lcbCust.KeyValue = null) or (lcbProject.KeyValue = null)
      or (length(ed_name_obj.Text) = 0) or (id_type = null)) then
    begin
      MsgError('Не вся информация указана', 'Проверка');
      Exit;
    end;
    // -----------------------------------------------------------------------------
    // -- Добавление объекта -------------------------------------------------------
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('select id_gen from insert_chain_traff(:id_code, 1, :id_operation,');
      add(':id_area, :id_creator, :id_project, :name, :d_ready, :d_pack, :descr,');
      Add(':id_obj, :man, :id_proj_type, 0, :work_time)');
      ParamByName('id_code').Clear;
      ParamByName('id_operation').Clear;
      ParamByName('id_area').Clear;
      ParamByName('id_creator').AsInteger := SysVars.RegTN;
      ParamByName('id_proj_type').AsInteger := id_type;
      ParamByName('id_project').AsInteger := lcbProject.KeyValue;
      ParamByName('name').AsString := ed_name_obj.Text;
      ParamByName('d_ready').AsDateTime := dbClose.Value;
      ParamByName('d_pack').AsDateTime := dbOtgruz.Value;
      ParamByName('descr').AsString := mMes.Text;
      ParamByName('id_obj').Clear;
      ParamByName('man').Clear;
      ParamByName('work_time').Clear;
      try
        Open;
        s_chain := dmIS.qIM.FieldByName('id_gen').AsInteger;
        if Transaction.Active then
          Transaction.Commit;
        id_type := 0;
        ed_name_obj.Text := '';
        f_CliOrds[fmMain.NF_CliOrds].Open_CH;
        f_CliOrds[fmMain.NF_CliOrds].qNewCH.Locate('id_proj_chain', s_chain,
          []);
        pc1.ActivePage := tsParamObj;
        Open_ParamObj;
        bSave.Show;
        bExit.Show;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end;
  //------------------------------------------------------------------------------
  // -- Режим редактирования объекта ---------------------------------------------
  if f_CliOrds[fmMain.NF_CliOrds].edit_obj = 1 then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select name from proj_chain_types where id_ch_type = :id_ch');
      ParamByName('id_ch').AsInteger := dbtrees.GetId;
      name_s := '';
      Open;
      name_s := dmIs.qIN.FieldByName('name').AsString;
    end;
    with dmIS.qIM, dmIS.qIM.SQL do
    begin
      Close;
      Clear;
      Add('select p.id_mp_set from proj_types_params p where p.id_main_param = 32');
      Add('and p.id_proj_type = :id_proj_type');
      ParamByName('id_proj_type').AsInteger := id_type;
      Open;
      if not dmIs.qIM.IsEmpty then
        id_mp_set := dmIS.qIM.FieldByName('id_mp_set').AsInteger;
      Close;
      Clear;
      Add('update proj_chains set id_proj_type = :id_proj, d_ready = :d_ready,');
      Add('d_pack = :d_pack');
      Add('where id_proj_chain = :id_chain');
      ParamByName('id_proj').AsInteger := dbtrees.GetId;
      ParamByName('id_chain').AsInteger :=
        f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
      ParamByName('d_ready').Value := dbOtgruz.Value;
      ParamByName('d_pack').Value := dbClose.Value;
      try
        ExecSQL;
        Close;
        Clear;
        Add('update proj_chain_params set strvalue = :name,');
        Add('id_fix = :id_fix, d_fix = current_timestamp');
        Add('where id_main_param = 1763 and id_chain = :id_chain');
        ParamByName('id_fix').AsInteger := SysVars.RegTN;
        ParamByName('name').AsString := name_s;
        ParamByName('id_chain').AsInteger :=
          f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
        ExecSQL;
        Close;
        Clear;
        Add('update proj_chain_params set id_mp_set = :id_mp_set,');
        Add('id_fix = :id_fix, d_fix = current_timestamp');
        Add('where id_main_param = 1763 and id_chain = :id_chain');
        ParamByName('id_fix').AsInteger := SysVars.RegTN;
        ParamByName('id_mp_set').Clear;
        ParamByName('id_chain').AsInteger :=
          f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
        ExecSQL;
        //-- Проверка на наличие у созданного объекта реквизита категории сложности ----
        with dmIs.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select id_main_param from proj_chain_params where id_chain = :id_chain');
          Add('and id_main_param = 32');
          ParamByName('id_chain').AsInteger :=
            f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
          Open;
          if dmIS.qIN.IsEmpty then
          begin
            // --- Проверка есть ли реквизит категория сложности в справочнике изделий -----
            Close;
            Clear;
            Add('select id_main_param from proj_types_params where id_main_param = 32');
            Add('and id_proj_type = ' + IntToStr(id_type));
            Open;
            if (not dmIs.qIN.IsEmpty) then
            begin
              with dmIs.qIM, dmIS.qIM.SQL do
              begin
                // -- добавление к объекту реквизита -------------------------------------------
                Close;
                Clear;
                Add('insert into proj_chain_params (id_proj_chain_param, id_chain,');
                Add('id_main_param, id_mp_set, d_fix, id_fix)');
                Add('values (gen_id(obj_id, 1), :id_chain, 32, :id_mp_set,');
                Add('current_timestamp, :id_fix)');
                ParamByName('id_fix').AsInteger := SysVars.RegTN;
                ParamByName('id_mp_set').AsInteger := id_mp_set;
                ParamByName('id_chain').AsInteger :=
                  f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
                ExecSQL;
              end;
            end;
          end
          else
          begin
            with dmIs.qIM, dmIS.qIM.SQL do
            begin
              // --- Обновление значения реквизита -------------------------------------------
              Close;
              Clear;
              Add('update proj_chain_params set id_mp_set = :id_mp_set,');
              Add('id_fix = :id_fix, d_fix = current_timestamp');
              Add('where id_main_param = 32 and id_chain = :id_chain');
              ParamByName('id_fix').AsInteger := SysVars.RegTN;
              ParamByName('id_mp_set').AsInteger := id_mp_set;
              ParamByName('id_chain').AsInteger :=
                f_CliOrds[fmMain.NF_CliOrds].qNewCHID_PROJ_CHAIN.AsInteger;
              ExecSQL;
            end;
          end;
        end;
        if Transaction.Active then
          Transaction.Commit;
        f_CliOrds[fmMain.NF_CliOrds].Open_CH;
        fmParamCH.Close;
      except
        if Transaction.Active then
          Transaction.Rollback;
      end;
    end;
  end;
  // -----------------------------------------------------------------------------
end;

procedure TfmParamCH.bCloseClick(Sender: TObject);
begin
  ed_name_obj.Text := '';
  mMes.Text := '';
  fmParamCH.Close;
end;

procedure TfmParamCH.dbgParamGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qParamCHIS_NOT_NULL.AsInteger = 1 then
    Background := clSkyBlue;
end;

procedure TfmParamCH.ed_paramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) then
  begin
    Insert_Param_Traff;
    flag := true;
    qParamCH.Next;
    dbgParamCellClick(dbgParam.Columns.Items[dbgParam.Col - 1]);
  end;
  if (key = VK_UP) then
  begin
    Insert_Param_Traff;
    flag := true;
    qParamCH.Prior;
    //  ed_param.Text := qParamCHAMOUNT.AsString;
    dbgParamCellClick(dbgParam.Columns.Items[dbgParam.Col - 1]);
  end;
end;

procedure TfmParamCH.dbgParamCellClick(Column: TColumnEh);
var
  Rect: TRect;
  amount: string;
begin
  if not flag then
    Exit;
  if qParamObjID_MAIN_PARAM.AsInteger = 31 then
    Exit;
  if qParamObjID_MAIN_PARAM.AsInteger = 32 then
    Exit;
  if qParamObjID_MAIN_PARAM.AsInteger = 1763 then
    Exit;
  if (qParamCHID_FIX.AsInteger <> SysVars.RegTN) and (not qParamCHID_FIX.IsNull)
    then
    Exit;
  with dmIs.qIN, dmIs.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select f.id_chain_traff, f.status from proj_Chain_traff f');
    Add('where f.status > 9 and not f.status = 23 and f.id_chain_traff  = :traff');
    ParamByName('traff').AsInteger :=
      f_CliOrds[fmMain.NF_CliOrds].qWorkCHID_CHAIN_TRAFF.AsInteger;
    Open;
  end;
  if (not dmIs.qIN.IsEmpty) then
    Exit;
  if (dbgparam.SelectedField.FieldName = 'AMOUNT')
    and (qParamCHP_TYPE.AsInteger = 1) then
  begin
    Rect := dbgparam.Columns.Grid.CellRect(dbgparam.Col, dbgparam.Row);
    with qParam_pos do
    begin
      Close;
      DataSource := dsParamCH;
      Open;
      FetchAll;
    end;
    with dbl do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;
      KeyValue := qParam_posID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;
  if (dbgparam.SelectedField.FieldName = 'AMOUNT')
    and (qParamCHP_TYPE.IsNull) then
  begin
    Rect := dbgparam.Columns.Grid.CellRect(dbgparam.Col, dbgparam.Row);
    with ed_param do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      amount := qParamCHAMOUNT.AsString;
      SetLength(amount, length(amount) - 3);
      Text := amount;
      Visible := True;
      SetFocus;
    end;
  end;
  if (dbgparam.SelectedField.FieldName = 'AMOUNT')
    and (qParamCHP_TYPE.AsInteger = 2) then
  begin
    Rect := dbgparam.Columns.Grid.CellRect(dbgparam.Col, dbgparam.Row);
    with ed_param do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Text := qParamCHAMOUNT.AsString;
      Visible := True;
      SetFocus;
    end;
  end;
  flag := False;
end;

procedure TfmParamCH.dbgParamObjCellClick(Column: TColumnEh);
var
  Rect: TRect;
  amount: string;
begin
  if not flag then
    Exit;
  //- если кликнули в поле значение ----------------------------------------------
  if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
    //- если выпадающий список
  and (qParamObjP_TYPE.AsInteger = 1) then
  begin
    Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col, dbgParamObj.Row);
    with qParam_pos do
    begin
      Close;
      DataSource := dsParamObj;
      Open;
      FetchAll;
    end;
    with lcbparam do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Visible := True;
      KeyValue := qParam_posID_MP_SET.AsInteger;
      SetFocus;
      DropDown;
    end;
  end;
  // - если число
  if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
    and (qParamObjP_TYPE.IsNull) then
  begin
    Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col, dbgParamObj.Row);
    with ed_p do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      amount := qParamCHAMOUNT.AsString;
      SetLength(amount, length(amount) - 3);
      Text := amount;
      Visible := True;
      SetFocus;
    end;
  end;
  // - если строковое значение
  if (dbgParamObj.SelectedField.FieldName = 'AMOUNT')
    and (qParamObjP_TYPE.AsInteger = 2) then
  begin
    Rect := dbgParamObj.Columns.Grid.CellRect(dbgParamObj.Col, dbgParamObj.Row);
    with ed_p do
    begin
      Width := Rect.Right - Rect.Left + 2;
      Height := Rect.Bottom - Rect.Top + 2;
      Left := Rect.Left + 1;
      Top := Rect.Top + 30;
      Text := qParamObjAMOUNT.AsString;
      Visible := True;
      SetFocus;
    end;
  end;
  //------------------------------------------------------------------------------
  flag := false;
end;

procedure TfmParamCH.ed_pKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  amount: string;
begin
  { if (key = VK_DOWN) then
   begin
    Insert_Obj_Param;
    flag := true;
    qParamObj.Next;
    dbgParamObjCellClick(dbgParamObj.Columns.Items[dbgParamObj.Col - 1]);
   end;
   if (key = VK_UP) then
   begin
    Insert_Obj_Param;
    flag := true;
    qParamObj.Prior;
    dbgParamObjCellClick(dbgParamObj.Columns.Items[dbgParamObj.Col - 1]);
   end; }
end;

procedure TfmParamCH.mRemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCHSTATUS.AsInteger > 9 then
  begin
    MsgError('Операция утверждена', 'Внимание');
    Exit;
  end;
  if f_CliOrds[fmMain.NF_CliOrds].qWorkCH.State in [dsedit, dsinsert] then
    f_CliOrds[fmMain.NF_CliOrds].qWorkCH.Post;
end;

procedure TfmParamCH.dbM5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not f_CliOrds[fmMain.NF_CliOrds].qWorkCH.IsEmpty then
  begin
    MsgError('Есть созданные операции', 'Внимание');
    Exit;
  end;
  if f_CliOrds[fmMain.NF_CliOrds].qNewCH.State in [dsedit, dsinsert] then
    f_CliOrds[fmMain.NF_CliOrds].qNewCH.Post;
end;

end.
