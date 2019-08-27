program WDemo;

uses
  Vcl.Forms,
  WasatchDemo in 'WasatchDemo.pas' {MainWin},
  SWasatchHW in 'SWasatchHW.pas',
  mscorlib_TLB in '\\Mac\Home\Documents\Embarcadero\Studio\19.0\Imports\mscorlib_TLB.pas',
  System_Windows_Forms_TLB in '\\Mac\Home\Documents\Embarcadero\Studio\19.0\Imports\System_Windows_Forms_TLB.pas',
  WasatchNET_TLB in '\\Mac\Home\Documents\Embarcadero\Studio\20.0\Imports\WasatchNET_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainWin, MainWin);
  Application.Run;
end.
