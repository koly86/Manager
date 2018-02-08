unit unPTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, shrfunc, DBSTrees, ToolWin, StdCtrls, unMainForm, ExtCtrls;

type
  TfmPTypes = class(TMainForm)
    gb1: TGroupBox;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    dbTries: TDBS_TreeView;
    StatusBar1: TStatusBar;
    tb1: TToolButton;
    ToolButton1: TToolButton;
    cb1: TCheckBox;
    Panel1: TPanel;
    bt1: TButton;
    procedure tb1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
   Id_Ptype :Integer; // Код типа продукции
   Name_Ptype :String; // Наименование типа продукции
   Id_Form_Active :Integer; // 1 - Заказы клиентов, 2 - Карточка заказа  -- идентификатор формы откуда запущено дерево
    { Public declarations }
  end;

var
  fmPTypes: TfmPTypes;

implementation
uses unMain, unIs, IBQuery, DB, unCliords, unKorder, unNewOrd, unProj;
{$R *.dfm}

procedure TfmPTypes.tb1Click(Sender: TObject);
begin
  with dbTries do
  begin
    ClearTree;
    RootId := 0;
    if cb1.Checked then TableName := 'get_proj_types(1)'
    else TableName := 'get_proj_types(0)';
    Items.BeginUpdate;
    BuildTree;
    //   FullExpand;
    Items.EndUpdate;
    Selected := Items[0];
  end;
end;

procedure TfmPTypes.FormCreate(Sender: TObject);
begin
 Name_Ptype := '';
 Id_Ptype := -1;
 tb1.Click;
end;

procedure TfmPTypes.bt1Click(Sender: TObject);
begin
try
 Screen.Cursor := crHourGlass;

 Id_Ptype := dbTries.GetId;
 with dmIS.qIN, dmIS.qIN.SQL do
 begin
  Close;
  Clear;
  Add('select id_parent from ptypes where id_ptype = (select id_parent from ptypes where id_ptype = :id_ptype)');
  ParamByName('id_ptype').AsInteger := id_ptype;
  Open;
  if IsEmpty then Exit;
  if not FieldByName('id_parent').IsNull then
  begin
   MsgInfo('Этот тип имеет родителя','Внимание');
   Exit;
  end;

  Close;
  Clear;
  Add('select name from ptypes where id_ptype = :id_ptype');
  ParamByName('id_ptype').AsInteger := Id_Ptype;
  Open;
  if Id_Form_Active = 1 then
   f_CliOrds[fmMain.NF_CliOrds].LPtype.Caption := dmIS.qIN.FieldByName('name').AsString;
  if Id_Form_Active = 2 then
  begin
   if Id_Ptype > -1 then f_KOrder[fmMain.NF_KOrder].ed6.Text := '';
   f_KOrder[fmMain.NF_KOrder].lPtypes.Caption := dmIS.qIN.FieldByName('name').AsString;
  end;
  if Id_Form_Active = 3 then fmNewOrd.LPtypes.Caption := dmIS.qIN.FieldByName('name').AsString;
  if Id_Form_Active = 4 then fmProj.LPtypes.Caption   := dmIS.qIN.FieldByName('name').AsString;
 end;
 fmPTypes.Close;
finally
 Screen.Cursor := crDefault;
end;
end;

end.
