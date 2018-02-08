unit unDEliv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGridEh, Buttons;

type
  TfmDeliv = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dbgCar: TDBGridEh;
    dbgObj: TDBGridEh;
    qCar: TIBQuery;
    qObjt: TIBQuery;
    dsCar: TDataSource;
    dsObjt: TDataSource;
    qCarID_TDCAR_TYPE: TIntegerField;
    qCarNAME: TIBStringField;
    qIns: TIBQuery;
    qObjtOBJ_TYPE: TIntegerField;
    qObjtNAME: TIBStringField;
    qObjtID_DELIVERY_TYPE: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kop: byte;
    id_plan: integer;
  end;

var
  fmDeliv: TfmDeliv;

implementation
uses unIS;
{$R *.dfm}

procedure TfmDeliv.SpeedButton1Click(Sender: TObject);
begin

  ModalResult := MrOK;
end;

procedure TfmDeliv.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
