unit unPrjDocType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  ToolWin, IBQuery, DB, IBCustomDataSet, Buttons, DBGridEh;

type
  TfmPrjDocType = class(TForm)
    dbn1: TDBNavigator;
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    p3: TPanel;
    Label1: TLabel;
    lcb1: TDBLookupComboBox;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    qFGPOST: TIBQuery;
    dsFFP: TDataSource;
    dsFGP: TDataSource;
    qFFPOST: TIBQuery;
    qFFPOSTIDPOST: TIntegerField;
    qFFPOSTNAME: TIBStringField;
    dbg3: TDBGrid;
    Splitter2: TSplitter;
    pf1: TPanel;
    Panel1: TPanel;
    sb1: TSpeedButton;
    sb2: TSpeedButton;
    dbg4: TDBGrid;
    qFGPOSTIDPOST: TIntegerField;
    qFGPOSTNAME: TIBStringField;
    dbg5: TDBGrid;
    Splitter3: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    sb3: TSpeedButton;
    sb4: TSpeedButton;
    dbg6: TDBGrid;
    tlbf1: TToolBar;
    tbf1: TToolButton;
    tbf2: TToolButton;
    ToolButton1: TToolButton;
    tlbg1: TToolBar;
    tbg1: TToolButton;
    ToolButton3: TToolButton;
    tbg2: TToolButton;
    dbn2: TDBNavigator;
    dbg1: TDBGridEh;
    ToolButton2: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sb1Click(Sender: TObject);
    procedure sb2Click(Sender: TObject);
    procedure lcb1CloseUp(Sender: TObject);
    procedure dbg4DblClick(Sender: TObject);
    procedure dbg4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sb3Click(Sender: TObject);
    procedure sb4Click(Sender: TObject);
    procedure dbg6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg6DblClick(Sender: TObject);
    procedure tbf1Click(Sender: TObject);
    procedure tbg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure OpenFill;
    { Public declarations }
  end;

var
  fmPrjDocType: TfmPrjDocType;

implementation
uses unMain, unIS;

const
  id_Form = 19;

{$R *.dfm}

procedure TfmPrjDocType.OpenFill;
begin
  with dmIS.qD_FILL do
  begin
    Close;
    if fmMain.UF40 then
      UpdateObject := dmIS.upD_FILL
    else
      UpdateObject := nil;
    ParamByName('pt1').AsInteger := lcb1.KeyValue;
    ParamByName('pdt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    Open;
  end;
  with qFFPOST do
  begin
    Close;
    ParamByName('idpt1').AsInteger := lcb1.KeyValue;
    ParamByName('idpdt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    Open;
  end;
  with dmIS.qD_GET do
  begin
    Close;
    ParamByName('pt1').AsInteger := lcb1.KeyValue;
    ParamByName('pdt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    Open;
  end;
  with qFGPOST do
  begin
    Close;
    ParamByName('idpt1').AsInteger := lcb1.KeyValue;
    ParamByName('idpdt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    Open;
  end;
end;

procedure TfmPrjDocType.FormCreate(Sender: TObject);
begin
  pc1.ActivePage := ts1;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmPrjDocType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmIS.qP_TYPE.Close;
  dmIS.qD_FILL.Close;
  dmIS.qD_GET.Close;
  qFGPOST.Close;
  qFFPOST.Close;
  if dmIS.qDOC_TYPE.State in [dsInsert, dsEdit] then
    dmIS.qDOC_TYPE.Post;
  dmIS.qDOC_TYPE.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmPrjDocType.FormActivate(Sender: TObject);
begin
  sb1.Enabled := fmMain.UF40;
  sb2.Enabled := fmMain.UF40;
  tbf1.Enabled := fmMain.UF40;
  tbf2.Enabled := fmMain.UF40;
  tbg1.Enabled := fmMain.UF40;
  tbg2.Enabled := fmMain.UF40;
  with dmIS.qP_TYPE do
  begin
    Close;
    Open;
    Last;
    First;
    lcb1.KeyValue := dmIS.qP_TYPEID_PROJ_TYPE.AsInteger;
  end;
  with dmIS.qDOC_TYPE do
  begin
    Close;
    if fmMain.UF40 then
      UpdateObject := dmIS.upD_TYPE
    else
      UpdateObject := nil;
    AfterScroll := dmIS.qDOC_TYPEAfterScroll;
    Open;
  end;
  OpenFill;
end;

procedure TfmPrjDocType.sb1Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('DELETE FROM PROJ_DOC_TYPES_FILL WHERE ID_PROJ_TYPES = :t1 ');
    Add('AND ID_PROJ_DOC_TYPE = :pt1 AND ID_POST = :p1');
    ParamByName('t1').AsInteger := lcb1.KeyValue;
    ParamByName('pt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    ParamByName('p1').AsInteger := dmIS.qD_FILLID_POST.AsInteger;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      OpenFill;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmPrjDocType.sb2Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('INSERT INTO PROJ_DOC_TYPES_FILL (ID_PROJ_DOC_TYPE, ID_PROJ_TYPES,');
    Add('ID_POST, STATUS) VALUES (:dt1, :t1, :p1, 0) ');
    ParamByName('t1').AsInteger := lcb1.KeyValue;
    ParamByName('dt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    ParamByName('p1').AsInteger := qFFPOSTIDPOST.AsInteger;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      OpenFill;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmPrjDocType.lcb1CloseUp(Sender: TObject);
begin
  OpenFill;
end;

procedure TfmPrjDocType.dbg4DblClick(Sender: TObject);
begin
  if not fmMain.UF40 then
    exit;
  if MsgQuestion('—татус должности - ' + dmIS.qD_FILLNAME.AsString +
    ' будет изменен на противоположный. ' + SysVars.NReg +
    ', »зменить статус?', '√лавна€ должность') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      {Add('UPDATE PROJ_DOC_TYPES_FILL SET STATUS = 0 WHERE ID_PROJ_TYPES = :t1 ');
      Add('AND ID_PROJ_DOC_TYPE = :pt1');
      ParamByName('t1').AsInteger := lcb1.KeyValue;
      ParamByName('pt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;  }
      try
        //ExecSQL;
        Close;
        Clear;
        Add('UPDATE PROJ_DOC_TYPES_FILL SET STATUS = :st1 WHERE ID_PROJ_TYPES = :t1 ');
        Add('AND ID_PROJ_DOC_TYPE = :pt1 AND ID_POST = :p1');
        ParamByName('t1').AsInteger := lcb1.KeyValue;
        ParamByName('pt1').AsInteger :=
          dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
        ParamByName('p1').AsInteger := dmIS.qD_FILLID_POST.AsInteger;
        if dmIS.qD_FILLSTATUS.AsInteger = 1 then
          ParamByName('st1').AsInteger := 0
        else
          ParamByName('st1').AsInteger := 1;
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenFill;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmPrjDocType.dbg4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with dbg4.Canvas do
  begin
    if (dmIS.qD_FILLSTATUS.AsInteger = 1) and (not (gdFocused in State)) then
    begin
      Brush.Color := clMoneyGreen;
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmPrjDocType.sb3Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('DELETE FROM PROJ_DOC_TYPES_GET WHERE ID_PROJ_TYPES = :t1 ');
    Add('AND ID_PROJ_DOC_TYPE = :pt1 AND ID_POST = :p1');
    ParamByName('t1').AsInteger := lcb1.KeyValue;
    ParamByName('pt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    ParamByName('p1').AsInteger := dmIS.qD_GETID_POST.AsInteger;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      OpenFill;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmPrjDocType.sb4Click(Sender: TObject);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('INSERT INTO PROJ_DOC_TYPES_GET (ID_PROJ_DOC_TYPE, ID_PROJ_TYPES,');
    Add('ID_POST) VALUES (:dt1, :t1, :p1) ');
    ParamByName('t1').AsInteger := lcb1.KeyValue;
    ParamByName('dt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
    ParamByName('p1').AsInteger := qFGPOSTIDPOST.AsInteger;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      OpenFill;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
    end;
  end;
end;

procedure TfmPrjDocType.dbg6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with dbg6.Canvas do
  begin
    if (dmIS.qD_GETSTATUS.AsInteger = 1) and (not (gdFocused in State)) then
    begin
      Brush.Color := clMoneyGreen;
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg6.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmPrjDocType.dbg6DblClick(Sender: TObject);
begin
  if not fmMain.UF40 then
    exit;
  if MsgQuestion('—татус должности - ' + dmIS.qD_GETNAME.AsString +
    ' будет изменен на противоположный. ' + SysVars.NReg +
    ', »зменить статус?', '√лавна€ должность') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJ_DOC_TYPES_GET SET STATUS = 0 WHERE ID_PROJ_TYPES = :t1 ');
      Add('AND ID_PROJ_DOC_TYPE = :pt1');
      ParamByName('t1').AsInteger := lcb1.KeyValue;
      ParamByName('pt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
      try
        ExecSQL;
        Close;
        Clear;
        Add('UPDATE PROJ_DOC_TYPES_GET SET STATUS = :st1 WHERE ID_PROJ_TYPES = :t1 ');
        Add('AND ID_PROJ_DOC_TYPE = :pt1 AND ID_POST = :p1');
        ParamByName('t1').AsInteger := lcb1.KeyValue;
        ParamByName('pt1').AsInteger :=
          dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
        ParamByName('p1').AsInteger := dmIS.qD_GETID_POST.AsInteger;
        if dmIS.qD_GETSTATUS.AsInteger = 1 then
          ParamByName('st1').AsInteger := 0
        else
          ParamByName('st1').AsInteger := 1;
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenFill;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmPrjDocType.tbf1Click(Sender: TObject);
begin
  if not fmMain.UF40 then
    exit;
  if MsgQuestion('—татус должности - ' + dmIS.qD_FILLNAME.AsString +
    ' по утверждению только документов личных проектов, будет изменен ' +
    'на противоположный. ' + SysVars.NReg +
    ', »зменить статус?', 'Ћичные проекты') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJ_DOC_TYPES_FILL SET ALL_PROJ = :all1 WHERE ID_PROJ_TYPES = :t1 ');
      Add('AND ID_PROJ_DOC_TYPE = :pt1 AND ID_POST = :p1');
      ParamByName('t1').AsInteger := lcb1.KeyValue;
      ParamByName('pt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
      ParamByName('p1').AsInteger := dmIS.qD_FILLID_POST.AsInteger;
      if dmIS.qD_FILLALL_PROJ.AsInteger = 1 then
        ParamByName('all1').Clear
      else
        ParamByName('all1').AsInteger := 1;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenFill;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmPrjDocType.tbg1Click(Sender: TObject);
begin
  if not fmMain.UF40 then
    exit;
  if MsgQuestion('—татус должности - ' + dmIS.qD_GETNAME.AsString +
    ' по получению только документов личных проектов, будет изменен ' +
    'на противоположный. ' + SysVars.NReg +
    ', »зменить статус?', 'Ћичные проекты') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJ_DOC_TYPES_GET SET ALL_PROJ = :all1 WHERE ID_PROJ_TYPES = :t1 ');
      Add('AND ID_PROJ_DOC_TYPE = :pt1 AND ID_POST = :p1');
      ParamByName('t1').AsInteger := lcb1.KeyValue;
      ParamByName('pt1').AsInteger := dmIS.qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
      ParamByName('p1').AsInteger := dmIS.qD_GETID_POST.AsInteger;
      if dmIS.qD_GETALL_PROJ.AsInteger = 1 then
        ParamByName('all1').Clear
      else
        ParamByName('all1').AsInteger := 1;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenFill;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

end.
