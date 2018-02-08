unit unOper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBTL, StdCtrls, Buttons,
  ExtCtrls, ImgList, ComCtrls, ToolWin, DB, IBCustomDataSet, IBQuery,
  Grids, DBGridEh;

type
  TfmOper = class(TForm)
    p1: TPanel;
    GroupBox1: TGroupBox;
    CoolBar1: TCoolBar;
    tb1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    NewTemp: TToolButton;
    ToolButton4: TToolButton;
    DelTemp: TToolButton;
    ToolButton6: TToolButton;
    dsTemp: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    dbgTemp: TDBGridEh;
    qTempCH: TIBQuery;
  private
    { Private declarations }
  public
    tree_up :Boolean;
    tagg : Integer;
    name_tag : String;
    { Public declarations }
  end;

var
  fmOper: TfmOper;

implementation
 uses unIs, unMain;
{$R *.dfm}

begin



end.
