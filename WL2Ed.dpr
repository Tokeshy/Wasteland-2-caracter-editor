program WL2Ed;

uses
  Vcl.Forms,
  WL2.SavegameEditor in 'WL2.SavegameEditor.pas' {frmWL2Main},
  Vcl.Themes,
  Vcl.Styles,
  WL2.EditorInterface in 'WL2.EditorInterface.pas',
  WL2.Classes in 'WL2.Classes.pas',
  Wl2.Utilities in 'Wl2.Utilities.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWL2Main, frmWL2Main);
  Application.Run;
end.
