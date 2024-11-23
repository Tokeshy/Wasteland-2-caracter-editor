program WL2Ed;

uses
  Vcl.Forms,
  WL2.SavegameEditor in 'WL2.SavegameEditor.pas' {WL2CED},
  Vcl.Themes,
  Vcl.Styles,
  WL2.EditorInterface in 'WL2.EditorInterface.pas',
  Wl2.Services in 'Wl2.Services.pas',
  WL2.Constants in 'WL2.Constants.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TWL2CED, WL2CED);
  Application.Run;
end.
