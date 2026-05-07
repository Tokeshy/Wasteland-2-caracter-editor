unit WL2.EditorInterface;

interface

uses
  WL2.Classes;

  procedure Translate (const aLangId: integer);
  procedure SyncInterfaceAndCaracterData(const aCaracterData: TCaracterData);
  procedure FillBarsAndEdits(const aCaracterData: TCaracterData);
  procedure RefreshValuesByTrackBar();

const
  BarsAndEditPrefixSet: array[1..4] of array[1..5] of string = (('WSPB', 'WSTB', 'WSL', 'WSI', '10'), ('RSPB', 'RSTB', 'RSL', 'RSI', '12'), ('TSPB', 'TSTB', 'TSL', 'TSI', '9'), ('ASPB', 'ASTB', 'ASL', 'ASI', '7'));
  CmbbCaracterTextsHint: array [0 .. 1] of string = ('Select unit', '������� ��������');
  CmbbCaracterHint: array [0 .. 1] of array [0 .. 1] of string =  (('Founded ', ' caracters'), ('������� ', ' ������'));
  ButtonsNamesList: array [1 .. 6] of string = ('Btn_CaracSave', 'Btn_ScanCaracter', 'Btn_Quit', 'Btn_RRSave', 'Btn_OpenSave', 'Btn_ScanSave');
  EditsNamesList: array [1 .. 40] of string = ('edCaracterCounter', 'Edt_WpnS1', 'Edt_WpnS10', 'Edt_WpnS2', 'Edt_WpnS3', 'Edt_WpnS4', 'Edt_WpnS5', 'Edt_WpnS6', 'Edt_WpnS7', 'Edt_WpnS8', 'Edt_WpnS9', 'Edt_RS1',
    'Edt_RS10', 'Edt_RS11', 'Edt_RS12', 'Edt_RS2', 'Edt_RS3', 'Edt_RS4', 'Edt_RS5', 'Edt_RS6', 'Edt_RS7', 'Edt_RS8', 'Edt_RS9', 'Edt_TechS1', 'Edt_TechS2', 'Edt_TechS3', 'Edt_TechS4', 'Edt_TechS5', 'Edt_TechS6',
    'Edt_TechS7', 'Edt_TechS8', 'Edt_TechS9', 'Edt_AS1', 'Edt_AS2', 'Edt_AS3', 'Edt_AS4', 'Edt_AS5', 'Edt_AS6', 'Edt_AS7', 'Edt_SelectedCrt');
  GroupNames: array [0 .. 12] of string = ('Grp_CurUnit', 'Grp_WpnSkill', 'Grp_WpnCurrLvl', 'Grp_WpnAplyLvl', 'Grp_GnSkill', 'Grp_GnCurrLvl', 'Grp_GnAplyLvl', 'Grp_TechSkill', 'Grp_TechCurrLvl', 'Grp_TechAplyLvl',
    'Grp_CurUnitAtrSkill', 'Grp_AtrCurrLvl', 'Grp_AtrAplyLvl');
  LabelsNamesList: array [1 .. 6] of string = ('Lbl_Sex', 'Lbl_Age', 'Lbl_CurrLvl', 'Lbl_CurrHP', 'Lbl_MaxHP', 'Lbl_FreeSkPnt');
  MenuItemsNames: array [1 .. 8] of string = ('MIt_DevInfo', 'MIt_ProjectInfo', 'MIt_Coffee', 'MIt_FollowPatreon', 'MIt_InfoSection', 'MIt_AboutProject', 'MIt_HowToUse', 'MEContactDev');
  MenuItemsCaptions: array [1 .. 8] of array [0 .. 1] of string = (('Support project', '���������� ������'), ('Help', '� ������� (Help)'), ('Buy coffee for developer',
    '������ ���� ������������'), ('Follow on patreon', '���������� �� Patreon'), ('Info', '����'), ('About project', '� �������'), ('How to use', '��� ������������'), ('Contact developer', '������� � �������������'));

  ProgressBarsGroups: array [1 .. 4] of string = ('PG_WeaponSkill', 'PG_GeneralSkill', 'PG_TechSkill', 'PG_AttributeSkills');
  ButtonsCaptions: array [1 .. 6] of array [0 .. 1] of string = (('Save unit', '��������� ��������'), ('Scan character', '����������� ��������'), ('Exit', '�����'),
    ('Update SaveGame', '��������� ��������� � Save'), ('Select saved game', '������� ����������� ����'), ('Scan SaveGame', '����������� Save'));
  UnitDataCaptions: array [1 .. 40] of array [0 .. 1] of string = (('Total Units', '����� ������'), ('Blunt weapons', '��������'), ('Handgun', '���������'), ('smg', '����.-������'),
    ('Brawling', '����������'), ('Sniper rifle', '�����������'), ('F.Big weapons', '������'), ('Bladed weapons', '��������'), ('Rifle', '���������'), ('Energy weapons', '��������������'),
    ('Shotgun', '���������'), ('Calvin Backer skill', '"������ ������"'), ('Barter', '������'), ('weapon smith', '���������'), ('Manipulate', '����������'), ('Combat shooting', '�������'),
    ('Outdoorsman', '���������'), ('Brute force', '������ ����'), ('Animal Whisperer', '������������'), ('Spot lie', '�������'), ('Intimidate', '������'), ('Perception', '������ ����'),
    ('Leadership', '���������'), ('Demolitions', '�������������'), ('Computer tech', '����������'), ('Mechanical repair', '��������'), ('Field medic', '������� ���.'),
    ('Toaster repair', '������ ��������'), ('Alarm disarm', '������ ��������.'), ('Doctor', '��������'), ('Safe crack', '����� ������'), ('PickLock', '����� ������'),
    ('Coordination', '�����������'), ('Luck', '�����'), ('Awareness', '����������'), ('Strength', '����'), ('Speed', '��������'), ('Intelligence', '���������'), ('Charisma', '�������'),
    ('Selected SaveGame', '��������� SaveGame'));
  GeneralInfoAdditionalLabels: array [0 .. 3] of array [0 .. 1] of string =  (('Selected unit', '��������� ����'), ('Skill', '�����'), ('Current level', '������� �������'), ('Applicable level', '����������� �������'));
  GeneralInfoLabels: array [1 .. 6] of array [0 .. 1] of string = (('Sex', '���'), ('Age', '�������'), ('Level', '�������'), ('Current HP', 'T������ HP'), ('Max HP', '������������ HP'),
    ('Free Skils', '��������� Skil' + #39 + '�'));
  SkillsGroupsCaptions: array [1 .. 4] of array [0 .. 1] of string =  (('Weapons', '���������'), ('General', '�����'), ('Technical', '�����������'), ('Attributes', '��������'));

  VideoInstructionLink: array [0..1] of string = ('https://www.youtube.com/watch?v=LeS7QBcF6zI', 'https://www.youtube.com/watch?v=EORiIPeyx2Y');
  NoBiographyText: array [0..1] of string = ('No biography info detected', '������ ��������� �� ��������');
  SaveRequestText: array [0..1] of String = ('Do you want to save changes in current SaveGame?', '��������� ��������� � ������� SaveGame?');
  SavingMessage: array [0..1] of array [0..1] of String = (('Saving of current file Failed.', '��������� ������� ���� �� �������.'), ('Saving of current file was sucsesfull.', '���������� ������ �������.'));
var
  NoBioText, VideoLink : string;

implementation
uses
  Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls, WL2.SavegameEditor, System.SysUtils, Wl2.Utilities;

procedure Translate(const aLangId: integer);
var
  i : integer;
begin
  VideoLink := VideoInstructionLink[aLangId];
  NoBioText := NoBiographyText[aLangId];
  with WL2.SavegameEditor.frmWL2Main do
    begin
      CmbbCaracters.TextHint := CmbbCaracterTextsHint[aLangId];
      CmbbCaracters.Hint := CmbbCaracterHint[aLangId][0] + inttostr(CmbbCaracters.Items.Count) + CmbbCaracterHint[aLangId][1];
      (FindComponent(GroupNames[0]) as TGroupBox).caption := GeneralInfoAdditionalLabels[0][aLangId];

      for i := 1 to 6 do  // Buttons
        (FindComponent(ButtonsNamesList[i]) as TButton).caption := ButtonsCaptions[i][aLangId];

      for i := 1 to 40 do  // Edit'es
        (FindComponent(EditsNamesList[i]) as TEdit).Text := UnitDataCaptions[i][aLangId];

      for i := 1 to 12 do  // GroupBox'es
        begin
          if i in [1, 4, 7, 10] then
            (FindComponent(GroupNames[i]) as TGroupBox).caption := GeneralInfoAdditionalLabels[1][aLangId]
          else
            if i in [2, 5, 8, 11] then
              (FindComponent(GroupNames[i]) as TGroupBox).caption := GeneralInfoAdditionalLabels[2][aLangId]
          else
            if i in [3, 6, 9, 12] then
              (FindComponent(GroupNames[i]) as TGroupBox).caption := GeneralInfoAdditionalLabels[3][aLangId];
        end;

      for i := 1 to 6 do  // Labels
        (FindComponent(LabelsNamesList[i]) as TLabel).caption := GeneralInfoLabels[i][aLangId];

      for i := 1 to 8 do  // MenuItems
        (FindComponent(MenuItemsNames[i]) as TMenuItem).caption := MenuItemsCaptions[i][aLangId];

      for i := 1 to 4 do  // TabSheets
        (FindComponent(ProgressBarsGroups[i]) as TTabSheet).caption := SkillsGroupsCaptions[i][aLangId];
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
      for var j: integer := 1 to strtoint(BarsAndEditPrefixSet[i][5]) do
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

