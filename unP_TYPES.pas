unit unP_TYPES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, Grids, DBGrids, ExtCtrls, DBCtrls, DB, DBGridEh;

type
  TfmP_TYPES = class(TForm)
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmP_TYPES: TfmP_TYPES;

implementation
uses unMain, unIS;

const
  id_Form = 16;

{$R *.dfm}

procedure TfmP_TYPES.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmP_TYPES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.qP_TYPE.State in [dsInsert, dsEdit] then
    dmIS.qP_TYPE.Post;
  dmIS.qP_TYPE.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmP_TYPES.FormActivate(Sender: TObject);
begin
  with dmIS.qP_TYPE do
  begin
    Close;
    if fmMain.UF29 then
      UpdateObject := dmIS.upP_TYPE
    else
      UpdateObject := nil;
    Open;
  end;
end;

end.
