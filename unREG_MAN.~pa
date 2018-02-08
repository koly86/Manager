unit unREG_MAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ExtCtrls, StdCtrls, Grids, DBGrids, DBCtrls,
  DBGridEh, Mask, DBCtrlsEh, DBLookupEh, DB, IBCustomDataSet, IBQuery,
  Buttons;

type
  TfmREG_MAN = class(TMainForm)
    p1: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    p5: TPanel;
    dbn1: TDBNavigator;
    lcb1: TDBLookupComboboxEh;
    dbg1: TDBGridEh;
    p2: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    lcb2: TDBLookupComboboxEh;
    qFreeMan: TIBQuery;
    dsFreeMan: TDataSource;
    qFreeManID_P: TIntegerField;
    qFreeManFIO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
  private
    procedure OpenFreeMan;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmREG_MAN: TfmREG_MAN;

implementation
uses unMain, unIS;

const
  id_Form = 26;

{$R *.dfm}

procedure TfmREG_MAN.OpenFreeMan;
begin
  with dmIS.qREG_MAN do
  begin
    Close;
    Open;
  end;
  with qFreeMan do
  begin
    Close;
    Open;
    Last;
    First;
    lcb2.KeyValue := qFreeManID_P.AsInteger;
  end;
end;

procedure TfmREG_MAN.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmREG_MAN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qFreeMan.Close;
  dmIS.qREG_MAN.Close;
  dmIS.qREG.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmREG_MAN.FormShow(Sender: TObject);
begin
  with dmIS.qREG do
  begin
    Close;
    Open;
    Last;
    First;
    lcb1.KeyValue := dmIS.qREGID_REGION.AsInteger;
  end;
  OpenFreeMan;
end;

procedure TfmREG_MAN.FormActivate(Sender: TObject);
begin
  p2.Visible := fmMain.UF79;
end;

procedure TfmREG_MAN.bb1Click(Sender: TObject);
begin
  if dmIS.qREG_MAN.IsEmpty then
    exit;
  if not fmMain.UF79 then
    exit;
  if MsgQuestion('Менеджер ' + dmIS.qREG_MANFIO.AsString +
    ' будет удален из региона ' + dmIS.qREGNAME.AsString + '. ' +
    SysVars.NReg + ', удалить менеджера?',
    'Удаление менеджера') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('update PERSONNEL set ID_REGION = NULL where ID_P = :p1');
      ParamByName('p1').AsInteger := dmIS.qREG_MANID_P.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenFreeMan;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmREG_MAN.bb2Click(Sender: TObject);
begin
  if not fmMain.UF79 then
    exit;
  if MsgQuestion('Менеджер ' + qFreeManFIO.AsString +
    ' будет добавлен в регион ' + dmIS.qREGNAME.AsString + '. ' +
    SysVars.NReg + ', добавить менеджера?',
    'Добавление менеджера') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('update PERSONNEL set ID_REGION = :r1 where ID_P = :p1');
      ParamByName('r1').AsInteger := dmIS.qREGID_REGION.AsInteger;
      ParamByName('p1').AsInteger := qFreeManID_P.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        OpenFreeMan;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

end.
