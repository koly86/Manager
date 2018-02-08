unit unMainForm;

interface

uses
  Forms, Controls, Windows;

type
  TMainForm = class(TForm)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

implementation

procedure TMainForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

end.
