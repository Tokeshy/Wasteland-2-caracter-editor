program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {WL2CED},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TWL2CED, WL2CED);
  Application.Run;
end.
