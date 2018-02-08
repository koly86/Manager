unit unRegions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, Grids, DBGridEh, DBCtrls, ExtCtrls;

type
  TfmRegions = class(TMainForm)
    p1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRegions: TfmRegions;

implementation
uses unMain, unIS, IBQuery;

const
  id_Form = 25;

{$R *.dfm}

procedure TfmRegions.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmRegions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qREG.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmRegions.FormShow(Sender: TObject);
begin
  with dmIS.qREG do
  begin
    Close;
    if fmMain.UF78 then
      UpdateObject := dmIS.upREG;
    Open;
  end;
end;

end.
