unit unFILL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ShrFunc;

type
  TfmFILL = class(TForm)
    Panel2: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    m1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
  private
    procedure DOC_FILL(gf, tf: word);
    { Private declarations }
  public
    F_TP: word;
    { Public declarations }
  end;

var
  fmFILL: TfmFILL;

implementation
uses unMain, unIS, IBQuery;

{$R *.dfm}

procedure TfmFILL.DOC_FILL(gf, tf: word);
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    case gf of
      1:
        begin
          Add('execute procedure FIX_GET_PROJ_DOC(:idd, :idp, :tf1, :c1)');
          ParamByName('idd').AsInteger := dmIS.qIN_GID_PROJ_DOC.AsInteger;
          ParamByName('tf1').AsWord := tf;
        end;
      2:
        begin
          Add('execute procedure FILL_PROJ_DOC(:idd, :idp, :tf1, :c1)');
          ParamByName('idd').AsInteger := dmIS.qIN_FID_PROJ_DOC.AsInteger;
          ParamByName('tf1').AsWord := tf;
        end;
      3:
        begin
          Add('execute procedure FILL_PROJ_DOC(:idd, :idp, 0, :c1)');
          ParamByName('idd').AsInteger := dmIS.qDOCID_PROJECT_DOC.AsInteger;
        end;
    end;
    ParamByName('idp').AsInteger := SysVars.RegTN;
    ParamByName('c1').AsString := m1.Text;
    ExecSQL;
    if dmIS.mT.Active then
      dmIS.mT.CommitRetaining;
  end;
end;

procedure TfmFILL.FormActivate(Sender: TObject);
begin
  m1.Clear;
end;

procedure TfmFILL.bb1Click(Sender: TObject);
begin
  DOC_FILL(F_TP, 1);
  fmFILL.Close;
end;

procedure TfmFILL.bb2Click(Sender: TObject);
begin
  DOC_FILL(F_TP, 0);
  fmFILL.Close;
end;

end.
