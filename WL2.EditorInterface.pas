unit WL2.EditorInterface;

interface

uses
  WL2.Classes, WL2.Resources;

  procedure Translate (const aLangId: integer);
  procedure SyncInterfaceAndCaracterData(const aCaracterData: TCaracterData);
  procedure FillBarsAndEdits(const aCaracterData: TCaracterData);
  procedure RefreshValuesByTrackBar();

var
  NoBioText, VideoLink : string;

implementation
uses
  Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls, WL2.SavegameEditor, System.SysUtils, Wl2.Utilities;

procedure Translate(const aLangId: integer);
var
  i : integer;
begin
  VideoLink := WL2.Resources.VideoInstructionLink[aLangId];
  NoBioText := WL2.Resources.NoBiographyText[aLangId];
  with WL2.SavegameEditor.frmWL2Main do
    begin
      CmbbCaracters.TextHint := WL2.Resources.CmbbCaracterTextsHint[aLangId];
      CmbbCaracters.Hint := WL2.Resources.CmbbCaracterHint[aLangId][0] + inttostr(CmbbCaracters.Items.Count) + WL2.Resources.CmbbCaracterHint[aLangId][1];
      (FindComponent(WL2.Resources.GroupNames[0]) as TGroupBox).caption := WL2.Resources.GeneralInfoAdditionalLabels[0][aLangId];

      for i := 1 to 6 do  // Buttons
        (FindComponent(WL2.Resources.ButtonsNamesList[i]) as TButton).caption := WL2.Resources.ButtonsCaptions[i][aLangId];

      for i := 1 to 40 do  // Edit'es
        (FindComponent(WL2.Resources.EditsNamesList[i]) as TEdit).Text := WL2.Resources.UnitDataCaptions[i][aLangId];

      for i := 1 to 12 do  // GroupBox'es
        begin
          if i in [1, 4, 7, 10] then
            (FindComponent(WL2.Resources.GroupNames[i]) as TGroupBox).caption := WL2.Resources.GeneralInfoAdditionalLabels[1][aLangId]
          else
            if i in [2, 5, 8, 11] then
              (FindComponent(WL2.Resources.GroupNames[i]) as TGroupBox).caption := WL2.Resources.GeneralInfoAdditionalLabels[2][aLangId]
          else
            if i in [3, 6, 9, 12] then
              (FindComponent(WL2.Resources.GroupNames[i]) as TGroupBox).caption := WL2.Resources.GeneralInfoAdditionalLabels[3][aLangId];
        end;

      for i := 1 to 6 do  // Labels
        (FindComponent(WL2.Resources.LabelsNamesList[i]) as TLabel).caption := WL2.Resources.GeneralInfoLabels[i][aLangId];

      for i := 1 to 8 do  // MenuItems
        (FindComponent(WL2.Resources.MenuItemsNames[i]) as TMenuItem).caption := WL2.Resources.MenuItemsCaptions[i][aLangId];

      for i := 1 to 4 do  // TabSheets
        (FindComponent(WL2.Resources.ProgressBarsGroups[i]) as TTabSheet).caption := WL2.Resources.SkillsGroupsCaptions[i][aLangId];
    end;
end;

procedure SyncInterfaceAndCaracterData(const aCaracterData: TCaracterData);
begin
  with WL2.SavegameEditor.frmWL2Main do   {this one needs to be tested}
  begin
    Grp_CurUnit.Caption := aCaracterData.UnitName;
    Edt_Sex.Text := aCaracterData.Sex;
    Edt_Age.Text := aCaracterData.Age;
    Edt_CurrLvl.Text := aCaracterData.Level;
    Edt_CurrHP.Text := aCaracterData.CurrentHP;
    Edt_MaxHP.Text := aCaracterData.MaxHP;
    Edt_FreeSkPnt.Text := aCaracterData.FreeSkillPoints;
    Mem_CrBio.Text := aCaracterData.Biography;


    for var i: integer := 1 to 4 do
    begin
      for var j: integer := 1 to strtoint(WL2.Resources.BarsAndEditPrefixSet[i][5]) do
      begin
        var lCurrentSkillValue: Integer := 0;
        case i of
          1: lCurrentSkillValue := RawSkillValueToNormal(strtointdef(aCaracterData.GetWeaponSkill(j), 0));
          2: lCurrentSkillValue := RawSkillValueToNormal(strtointdef(aCaracterData.GetGeneralSkill(j), 0));
          3: lCurrentSkillValue := RawSkillValueToNormal(strtointdef(aCaracterData.GetTechnicalSkill(j), 0));
          4: lCurrentSkillValue := RawAttributeValueToNormal(strtointdef(aCaracterData.GetAttributesSkill(j), 0));
        end;
        case i of
          1: begin
               frmWL2Main.WSPB[j].Position := lCurrentSkillValue;
               frmWL2Main.WSTB[j].Position := lCurrentSkillValue;
               frmWL2Main.WSL[j].Text := inttostr(lCurrentSkillValue) + '/10';
               frmWL2Main.WSI[j].Text := inttostr(lCurrentSkillValue) + '/10';
             end;
          2: begin
               frmWL2Main.RSPB[j].Position := lCurrentSkillValue;
               frmWL2Main.RSTB[j].Position := lCurrentSkillValue;
               frmWL2Main.RSL[j].Text := inttostr(lCurrentSkillValue) + '/10';
               frmWL2Main.RSI[j].Text := inttostr(lCurrentSkillValue) + '/10';
             end;
          3: begin
               frmWL2Main.TSPB[j].Position := lCurrentSkillValue;
               frmWL2Main.TSTB[j].Position := lCurrentSkillValue;
               frmWL2Main.TSL[j].Text := inttostr(lCurrentSkillValue) + '/10';
               frmWL2Main.TSI[j].Text := inttostr(lCurrentSkillValue) + '/10';
             end;
          4: begin
               frmWL2Main.ASPB[j].Position := lCurrentSkillValue;
               frmWL2Main.ASTB[j].Position := lCurrentSkillValue;
               frmWL2Main.ASL[j].Text := inttostr(lCurrentSkillValue) + '/10';
               frmWL2Main.ASI[j].Text := inttostr(lCurrentSkillValue) + '/10';
             end;
        end;
      end;
    end;
  end;
end;

procedure FillBarsAndEdits(const aCaracterData: TCaracterData);
begin

end;

procedure RefreshValuesByTrackBar();
var
  i : integer;
begin
  with WL2.SavegameEditor.frmWL2Main do
  begin
    for i := 1 to 10 do
      WSL[i].Text := inttostr(WSTB[i].Position) + '/10';
    for i := 1 to 12 do
      RSL[i].Text := inttostr(RSTB[i].Position) + '/10';
    for i := 1 to 9 do
      TSL[i].Text := inttostr(TSTB[i].Position) + '/10';
    for i := 1 to 7 do
      ASL[i].Text := inttostr(ASTB[i].Position) + '/10';
  end;
end;

end.

