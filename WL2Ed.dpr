program WL2Ed;

uses
  Vcl.Forms,
  Main in 'Main.pas' {WL2CED},
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
