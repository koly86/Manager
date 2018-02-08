unit unSellOrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, ComCtrls, DBSTrees, DB,
  IBCustomDataSet, IBQuery;

type
  TfmSellOrd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter2: TSplitter;
    dbgSellord: TDBGridEh;
    dbgProdOrd: TDBGridEh;
    dbTr: TDBS_TreeView;
    qProdOrd: TIBQuery;
    qSellOrd: TIBQuery;
    dsSellord: TDataSource;
    dsProdOrd: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSellOrd: TfmSellOrd;

implementation
  uses unIS;
{$R *.dfm}

procedure TfmSellOrd.FormShow(Sender: TObject);
begin
  with dbtr do
 begin
    ClearTree;
    RootId := 4;
    Items.BeginUpdate;
    BuildTree;
    //FullExpand;
    Items.EndUpdate;
    Selected := Items[0];
  end;
end;

end.
