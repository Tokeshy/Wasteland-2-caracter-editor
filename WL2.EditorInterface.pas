unit WL2.EditorInterface;

interface
  procedure Proc_Translate (LangId : integer);

var
  NoBioText, VideoLink : string;

implementation
uses
  Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls, WL2.Constants, WL2.SavegameEditor;

procedure Proc_Translate (LangId: integer);
var
  i : integer;
begin
  VideoLink := VideoInstructionLink[LangId];
  NoBioText := NoBiographyText[LangId];

  with WL2.SavegameEditor.WL2CED do
    begin
      CmbB_Caracter.Text := Const_CmBTr[LangId];
      (FindComponent(Const_GrpLst[0]) as TGroupBox).caption := Const_GrpTrLst[0][LangId];

      for i := 1 to 6 do  // Buttons
        (FindComponent(Const_BtnLst[i]) as TButton).caption := Const_BtnTrLst[i][LangId];

      for i := 1 to 40 do  // Edit'es
        (FindComponent(Const_EdtLst[i]) as TEdit).Text := Const_EdtTrLst[i][LangId];

      for i := 1 to 12 do  // GroupBox'es
        begin
          if i in [1, 4, 7, 10] then
            (FindComponent(Const_GrpLst[i]) as TGroupBox).caption := Const_GrpTrLst[1][LangId]
          else if i in [2, 5, 8, 11] then
            (FindComponent(Const_GrpLst[i]) as TGroupBox).caption := Const_GrpTrLst[2][LangId]
          else if i in [3, 6, 9, 12] then
            (FindComponent(Const_GrpLst[i]) as TGroupBox).caption := Const_GrpTrLst[3][LangId];
        end;

      for i := 1 to 6 do  // Labels
        (FindComponent(Const_LblLst[i]) as TLabel).caption := Const_LblTrLst[i][LangId];

      for i := 1 to 8 do  // MenuItems
        (FindComponent(Const_MItLst[i]) as TMenuItem).caption := Const_MItTrLst[i][LangId];

      for i := 1 to 4 do  // TabSheets
        (FindComponent(Const_PGLst[i]) as TTabSheet).caption := Const_PGTrLst[i][LangId];
    end;
end;


end.
