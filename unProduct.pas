unit unProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBTrees, ImgList, IBQuery;

type
  TfmProduct = class(TForm)
    p1: TPanel;
    pc1: TPageControl;
    ts22: TTabSheet;
    Splitter2: TSplitter;
    dbg2: TDBGrid;
    dbg3: TDBGrid;
    ts23: TTabSheet;
    dbn1: TDBNavigator;
    dbg1: TDBGrid;
    ts21: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    dbm1: TDBMemo;
    Panel1: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Splitter1: TSplitter;
    dbt1: TDB_TreeView;
    il1: TImageList;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    Label7: TLabel;
    DBText6: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbt1Change(Sender: TObject; Node: TTreeNode);
    procedure FormActivate(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure dbt1BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
  private
    procedure OpenObject;
    { Private declarations }
  public
    C_OBJ: integer;
    { Public declarations }
  end;

var
  fmProduct: TfmProduct;

implementation
uses unMain, unIS, uAll;

const
  id_Form = 20;

{$R *.dfm}

procedure TfmProduct.OpenObject;
begin
  with dmIS.qOBJ do
  begin
    Close;
    ParamByName('obj1').AsInteger := dbt1.GetId;
    Open;
  end;
  with dmIS.qOBJ_DOCS do
  begin
    Close;
    ParamByName('obj1').AsInteger := dbt1.GetId;
    Open;
  end;
  with dmIS.qOBJ_OPER do
  begin
    Close;
    ParamByName('obj1').AsInteger := dbt1.GetId;
    Open;
  end;
  with dmIS.qOPER_MAT do
  begin
    Close;
    Open;
  end;
end;

procedure TfmProduct.FormCreate(Sender: TObject);
begin
  pc1.ActivePage := ts22;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmProduct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qOBJ.Close;
  dmIS.qOBJ_OPER.Close;
  dmIS.qOPER_MAT.Close;
  dmIS.qOBJ_DOCS.Close;
  dmIS.qW_TIME.Close;
  dmIS.qOS_AMOUNT.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
  // dmIS.dbDOC.Connected := False;
end;

procedure TfmProduct.dbt1Change(Sender: TObject; Node: TTreeNode);
begin
  with dmIS.qOS_AMOUNT do
  begin
    Close;
    if (dbt1.Selected.AbsoluteIndex = 0) then
      ParamByName('ob1').AsInteger := C_OBJ
    else
      ParamByName('ob1').AsInteger := dbt1.GetId;
    Open;
  end;
  with dmIS.qW_TIME do
  begin
    Close;
    if (dbt1.Selected.AbsoluteIndex = 0) then
      ParamByName('ob1').AsInteger := C_OBJ
    else
      ParamByName('ob1').AsInteger := dbt1.GetId;
    Open;
  end;
  fmProduct.OpenObject;
end;

procedure TfmProduct.FormActivate(Sender: TObject);
begin
  with dbt1 do
  begin
    ClearTree;
    RootId := C_OBJ;
    BuildTree;
    FullExpand;
    Selected := Items[0];
  end;
  pc1.ActivePage := ts22;
end;

procedure TfmProduct.dbg1DblClick(Sender: TObject);
begin
  if dmIS.qOBJ_DOCS.IsEmpty then
    exit;
  if dmIS.qOBJ_DOCSID_DOC.IsNull then
    exit;
  { if not dmIS.dbDOC.Connected then
   try
     dmIS.dbDOC.Connected := True;
   except
     MsgError('��� ����� � ���������� ����������', '������ �����������');
   end;  }
  try
    //fmMain.StoreDoc(0,dmIS.qOBJ_DOCSID_DOC.Value,'',dmIS.qS_BODY);
    if not Assigned(fmAll) then
      Application.CreateForm(TfmAll, fmAll);

    fmAll.StoreDoc_r(dmIS.qOBJ_DOCSID_DOC.Value);
  except
    MsgError('������ ������ ���������', '������');
  end;
end;

procedure TfmProduct.dbt1BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

end.
