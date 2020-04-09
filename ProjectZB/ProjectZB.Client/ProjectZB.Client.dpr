program ProjectZB.Client;

uses
  Vcl.Forms,
  BasicUnit in 'BasicUnit.pas' {Form1},
  BasicService in 'BasicService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
