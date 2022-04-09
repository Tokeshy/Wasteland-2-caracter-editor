program WL2Ed;

uses
  Vcl.Forms,
  Main in 'Main.pas' {WL2CED},
  Vcl.Themes,
  Vcl.Styles,
  Translator in 'Translator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TWL2CED, WL2CED);
  Application.Run;
end.
