program Project1;

uses
  Vcl.Forms,
  MultipleThread in 'MultipleThread.pas' {Form1},
  uSyncThread in 'uSyncThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
