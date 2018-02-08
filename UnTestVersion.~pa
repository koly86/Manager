unit UnTestVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unMainForm, ShrFunc, DB, IBCustomDataSet, IBQuery, Grids,
  DBGridEh, ExtCtrls, DBCtrls, IBUpdateSQL;

type
  TfmTestVersion = class(TMainForm)
    qTestV: TIBQuery;
    dsTestV: TDataSource;
    qTestVSTATUS: TIntegerField;
    qTestVPROBLEM: TIBStringField;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    qStatus: TIBQuery;
    IBUpdateSQL1: TIBUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbg1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    ID_VERSION: integer;
    TESTV: Boolean;
    { Public declarations }
  end;

var
  fmTestVersion: TfmTestVersion;

implementation
uses unMain, unIS;

const
  id_Form = 39;

{$R *.dfm}

procedure TfmTestVersion.FormCreate(Sender: TObject);
begin
  ID_VERSION := 0;
  TESTV := True;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmTestVersion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ID_VERSION := 0;
  TESTV := True;
  qTestV.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmTestVersion.FormShow(Sender: TObject);
begin
  if ID_VERSION > 0 then
    fmTestVersion.Caption := 'Проверка версии № ' + IntToStr(ID_VERSION)
  else
    fmTestVersion.Caption := 'Проверка версии';
  TESTV := True;
  with qStatus do
  begin
    Close;
    ParamByName('id_ver').AsInteger := ID_VERSION;
    Open;
    if FieldByName('sts').AsInteger > 0 then
      TESTV := False;
    Close;
  end;
end;

procedure TfmTestVersion.dbg1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qTestVSTATUS.AsInteger > 0 then
    Background := clSkyBlue;
end;

end.
