program L2BoxBar;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  Unit2 in 'Unit2.pas' {ConfigureFrame: TFrame},
  Unit3 in 'Unit3.pas' {ConfigForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'L2BoxBar';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TConfigForm, ConfigForm);
  Application.Run;
end.
