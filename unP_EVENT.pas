unit unP_EVENT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, Grids, DBGrids, ExtCtrls, DBCtrls, DB;

type
  TfmP_EVENT = class(TForm)
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmP_EVENT: TfmP_EVENT;

implementation
uses unMain, unIS;

const
  id_Form = 17;

{$R *.dfm}

procedure TfmP_EVENT.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmP_EVENT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.qP_EVENT.State in [dsInsert, dsEdit] then
    dmIS.qP_EVENT.Post;
  dmIS.qP_EVENT.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmP_EVENT.FormActivate(Sender: TObject);
begin
  with dmIS.qP_EVENT do
  begin
    Close;
    if fmMain.UF30 then
      UpdateObject := dmIS.upP_EVENT
    else
      UpdateObject := nil;
    Open;
  end;
end;

end.
