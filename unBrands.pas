unit unBrands;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, ExtCtrls,
  DBCtrls, DB, DBGridEh;

type
  TfmBrands = class(TForm)
    tlb1: TToolBar;
    ToolButton5: TToolButton;
    Label9: TLabel;
    ed1: TEdit;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    C_BR: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBrands: TfmBrands;

implementation
uses unMain, unIS;

const
  id_Form = 4;

{$R *.dfm}

procedure TfmBrands.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmBrands.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.qBrands.State in [dsInsert, dsEdit] then
    dmIS.qBrands.Post;
  dmIS.qBrands.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmBrands.FormActivate(Sender: TObject);
begin
  dmIS.qBrands.Close;
  if fmMain.UF18 then
    dmIS.qBrands.UpdateObject := dmIS.upBrands
  else
    dmIS.qBrands.UpdateObject := nil;
  dmIS.qBrands.Open;
end;

procedure TfmBrands.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_BRAND');
end;

end.
