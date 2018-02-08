unit unProjTraff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ComCtrls, DBCtrls, StdCtrls, ToolWin, Grids, DBGrids,
  ExtCtrls, DB;

type
  TfmProjTraff = class(TForm)
    tlb1: TToolBar;
    Label1: TLabel;
    lcb1: TDBLookupComboBox;
    ToolButton1: TToolButton;
    tb1: TToolButton;
    tb2: TToolButton;
    tb3: TToolButton;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
  private
    procedure Stepping;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProjTraff: TfmProjTraff;

implementation
uses unMain, unIS;

const
  id_Form = 18;

{$R *.dfm}

procedure TfmProjTraff.Stepping;
var
  i: integer;
begin
  if dmIS.qProjTraff.IsEmpty then
    exit;
  i := 1;
  with dmIS.qProjTraff do
  begin
    First;
    while not EOF do
    begin
      Edit;
      dmIS.qProjTraffSTEP.AsInteger := i;
      Post;
      i := i + 1;
      Next;
    end;
  end;
end;

procedure TfmProjTraff.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmProjTraff.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dmIS.qProjTraff.State in [dsInsert, dsEdit] then
    dmIS.qProjTraff.Post;
  dmIS.qProjTraff.Close;
  dmIS.qP_EVENT.Close;
  dmIS.qPST.Close;
  dmIS.qP_TYPE.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmProjTraff.FormActivate(Sender: TObject);
begin
  tb1.Enabled := fmMain.UF37;
  tb2.Enabled := fmMain.UF37;
  tb3.Enabled := fmMain.UF37;
  with dmIS.qPST do
  begin
    Close;
    Open;
  end;
  with dmIS.qP_TYPE do
  begin
    Close;
    UpdateObject := nil;
    Open;
    Last;
    First;
    if not IsEmpty then
      lcb1.KeyValue := dmIS.qP_TYPEID_PROJ_TYPE.Value;
  end;
  with dmIS.qP_EVENT do
  begin
    Close;
    UpdateObject := nil;
    Open;
  end;
  with dmIS.qProjTraff do
  begin
    Close;
    if fmMain.UF37 then
      UpdateObject := dmIS.upPrj_Traff
    else
      UpdateObject := nil;
    Open;
  end;
end;

procedure TfmProjTraff.tb3Click(Sender: TObject);
begin
  fmProjTraff.Stepping;
end;

procedure TfmProjTraff.tb1Click(Sender: TObject);
var
  i, k: integer;
begin
  with dmIS.qProjTraff do
  begin
    if IsEmpty then
      exit;
    if EOF then
      exit;
    i := dmIS.qProjTraffSTEP.AsInteger;
    Next;
    k := dmIS.qProjTraffSTEP.AsInteger;
    edit;
    dmIS.qProjTraffSTEP.AsInteger := i;
    Prior;
    Edit;
    dmIS.qProjTraffSTEP.AsInteger := k;
    Post;
    Close;
    Open;
    Locate('STEP', k, []);
  end;
end;

procedure TfmProjTraff.tb2Click(Sender: TObject);
var
  i, k: integer;
begin
  with dmIS.qProjTraff do
  begin
    if IsEmpty then
      exit;
    if BOF then
      exit;
    i := dmIS.qProjTraffSTEP.AsInteger;
    Prior;
    k := dmIS.qProjTraffSTEP.AsInteger;
    edit;
    dmIS.qProjTraffSTEP.AsInteger := i;
    Next;
    Edit;
    dmIS.qProjTraffSTEP.AsInteger := k;
    Post;
    Close;
    Open;
    Locate('STEP', k, []);
  end;
end;

end.
