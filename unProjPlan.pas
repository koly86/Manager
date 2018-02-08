unit unProjPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, DBCtrls, Grids, DBGridEh, ExtCtrls, ComCtrls, ToolWin;

type
  TfmProjPlan = class(TForm)
    p1: TPanel;
    dbg1: TDBGridEh;
    dbn1: TDBNavigator;
    tlb1: TToolBar;
    tb1: TToolButton;
    tb2: TToolButton;
    ToolButton5: TToolButton;
    tb3: TToolButton;
    ToolButton4: TToolButton;
    lcb1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure lcb1CloseUp(Sender: TObject);
  private
    C_PP: integer;
    AD: Boolean;
    procedure OpenPrjPlan;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProjPlan: TfmProjPlan;

implementation
uses unMain, unIS, IBQuery;

const
  id_Form = 12;

{$R *.dfm}

procedure TfmProjPlan.OpenPrjPlan;
begin
  with dmIS.qPrjPlan do
  begin
    if Active then
      C_PP := dmIS.qPrjPlanID_PROJ_PLAN.AsInteger;
    Close;
    if fmMain.UF38 then
      UpdateObject := dmIS.upPrjPlan
    else
      UpdateObject := nil;
    Open;
    Locate('ID_PROJ_PLAN', C_PP, []);
  end;
end;

procedure TfmProjPlan.FormCreate(Sender: TObject);
begin
  AD := False;
  tb1.Enabled := fmMain.UF38;
  tb2.Enabled := fmMain.UF38;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmProjPlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qPrjPlan.Close;
  dmIS.qRESP.Close;
  dmIS.qFreeTraff.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmProjPlan.dbg1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  with dbg1.Canvas do
  begin
    if (not dmIS.qPrjPlanDOUT.IsNull) and (dmIS.qPrjPlanDOUT.AsDateTime < now)
      and not (gdFocused in State) then
    begin
      if dmIS.qPrjPlanD_FACT.IsNull then
      begin
        Brush.Color := clRed;
        Font.Color := clWhite;
      end
      else
      begin
        Brush.Color := clMoneyGreen;
      end;
      FillRect(Rect);
      TextOut(Rect.Left, Rect.Top, Column.Field.Text);
    end
    else
      dbg1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmProjPlan.FormActivate(Sender: TObject);
begin
  lcb1.Hide;
end;

procedure TfmProjPlan.tb3Click(Sender: TObject);
begin
  if dmIS.qPrjPlan.IsEmpty then
    exit;
  if (not dmIS.qPrjPlanD_FACT.IsNull) then
  begin
    MsgInformation('Данный этап уже отмечен, как выполненный',
      'Проверка статуса');
    exit;
  end;
  if not ((SysVars.RegAccess = 0) or (dmIS.qPrjPlanID_P.AsInteger =
    SysVars.RegPost)) then
  begin
    MsgInformation('Вы не имеете прав на фиксацию выполнения данного этапа',
      'Проверка прав');
    exit;
  end;
  if MsgQuestion('Для данного проекта будет зафиксировано выполнение этапа - ' +
    dmIS.qPrjPlanNAME.AsString + '. ' + SysVars.NReg +
    ', зафиксировать выполнение?', 'Выполнение этапа') = id_Yes then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECT_PLAN SET D_FACT = CURRENT_TIMESTAMP, ID_FACT = :p1');
      Add('WHERE ID_PROJ_PLAN = :pp1');
      ParamByName('p1').AsInteger := SysVars.RegTN;
      ParamByName('pp1').AsInteger := dmIS.qPrjPlanID_PROJ_PLAN.AsInteger;
      try
        ExecSQL;
        if not dmIS.qPrjPlanSTATUS.IsNull then
        begin
          Close;
          Clear;
          Add('UPDATE PROJECTS SET STATUS = :st1 WHERE ID_PROJECT = :pr1');
          ParamByName('pr1').AsInteger := dmIS.qPrjPlanID_PROJECT.AsInteger;
          ParamByName('st1').AsInteger := dmIS.qPrjPlanSTATUS.AsInteger;
          ExecSQL;
        end;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
    fmProjPlan.OpenPrjPlan;
  end;
end;

procedure TfmProjPlan.tb1Click(Sender: TObject);
begin
  with dmIS.qFreeTraff do
  begin
    Close;
    Open;
    Last;
    First;
    if not IsEmpty then
    begin
      lcb1.KeyValue := dmIS.qFreeTraffID_PROJ_TRAFF.AsInteger;
      AD := True;
      lcb1.Show;
    end
    else
    begin
      MsgInformation('Все этапы типового маршрута задействованы. Добавление невозможно',
        'Добавление этапов в маршрут');
      exit;
    end;
  end;
end;

procedure TfmProjPlan.tb2Click(Sender: TObject);
begin
  if dmIS.qPrjPlan.IsEmpty then
    exit;
  if MsgQuestion('Этап - ' + dmIS.qPrjPlanNAME.AsString +
    ' - будет исключен из маршрута прохождения данного проекта.  ' + SysVars.NReg
    +
    ', исключить этап?', 'Удаление этапа') = id_Yes then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM PROJECT_PLAN WHERE ID_PROJ_PLAN = :pp1');
      ParamByName('pp1').AsInteger := dmIS.qPrjPlanID_PROJ_PLAN.AsInteger;
      try
        ExecSQL;
      except
      end;
    end;
    fmProjPlan.OpenPrjPlan;
  end;
end;

procedure TfmProjPlan.lcb1CloseUp(Sender: TObject);
begin
  if AD and (MsgQuestion('Этап - ' + dmIS.qFreeTraffNAME.AsString +
    ' - будет добавлен в маршрут прохождения данного проекта.  ' + SysVars.NReg
    +
    ', добавить этап?', 'Добавление этапа') = id_Yes) then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('INSERT INTO PROJECT_PLAN (ID_PROJ_PLAN, ID_PROJECT, ID_PROJ_TRAFF)');
      Add('VALUES (GEN_ID(OBJ_ID,1), :pr1, :pt1)');
      ParamByName('pr1').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
      ParamByName('pt1').AsInteger := dmIS.qFreeTraffID_PROJ_TRAFF.AsInteger;
      try
        ExecSQL;
        AD := False;
        dmIS.qFreeTraff.Close;
        lcb1.KeyValue := NULL;
        lcb1.Hide;
      except
      end;
    end;
    fmProjPlan.OpenPrjPlan;
  end;
end;

end.
