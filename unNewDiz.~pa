unit unNewDiz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, ShrFunc;

type
  TfmNewDiz = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    Label1: TLabel;
    lcb1: TDBLookupComboBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    DBText6: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Label24: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    C_PROJ: integer;
    { Public declarations }
  end;

var
  fmNewDiz: TfmNewDiz;

implementation
uses unMain, unIS, DB, IBQuery;

{$R *.dfm}

procedure TfmNewDiz.FormActivate(Sender: TObject);
begin
  with dmIS.qPrj do
    if not Active then
    begin
      Close;
      ParamByName('ID').AsInteger := dmIS.qIN_GID_AGENT.AsInteger;
      Open;
      fmNewDiz.Caption := 'Проект - ' + dmIS.qIN_GPNAME.AsString;
      Locate('ID_PROJECT', C_PROJ, []);
    end;
  with dmIS.qCFIO do
  begin
    Close;
    Open;
    Last;
    First;
    if dmIS.qPrjID_DESIGNER.IsNull then
      dmIS.qCFIO.Locate('ID_P', SysVars.RegTN, [])
    else
      dmIS.qCFIO.Locate('ID_P', dmIS.qPrjID_DESIGNER.AsInteger, []);
    lcb1.KeyValue := dmIS.qCFIOID_P.AsInteger;
  end;
end;

procedure TfmNewDiz.bb2Click(Sender: TObject);
begin
  fmNewDiz.Close;
end;

procedure TfmNewDiz.bb1Click(Sender: TObject);
begin
  if (MsgQuestion('Проект - ' + dmIS.qPrjNAME.AsString +
    '. Дизайнер проекта: ' + dmIS.qCFIOFIO.AsString +
    '. ' + SysVars.NReg + ', Записать?',
    'Назначение дизайнера проекта') = id_yes) then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('UPDATE PROJECTS SET D_DACCEPT = CURRENT_TIMESTAMP, ID_DACCEPTOR = :dda1,');
      Add('ID_DESIGNER = :dz1 WHERE ID_PROJECT = :pr1');
      ParamByName('dda1').AsInteger := SysVars.RegTN;
      ParamByName('dz1').AsInteger := lcb1.KeyValue;
      ParamByName('pr1').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
        MsgError('Ошибка записи приемки проекта', 'ошибка записи');
      end;
    end;
  fmNewDiz.Close;
end;

procedure TfmNewDiz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.dbIS.Connected then
  begin
    dmIS.qCFIO.Close;
  end;
end;

end.
