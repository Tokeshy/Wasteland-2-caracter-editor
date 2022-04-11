unit Translator;

interface
  procedure ToEnglish;
  procedure ToRussian;

var
  NoBioText, VideoLink : string;

implementation
uses
  Main;

procedure ToEnglish;
begin
  with Main.WL2CED do
  begin
    CaracSavBtn.Caption   := 'Save unit';
    CaracterBox.Text      := 'Select unit';
    CaracterID.Text       := 'Total Units';
    CrLbtn.Caption        := 'Scan character';
    CurUnitGroup.Caption  := 'Selected unit';
    SexLbl.Caption        := 'Sex';
    AgeLbl.Caption        := 'Age';
    LvlLbl.Caption        := 'Level';
    CurrHPLbl.Caption     := 'Current HP';
    MaxHPLbl.Caption      := 'Max HP';
    FreeSkPLbl.Caption    := 'Free Skils';
    EndBtn.Caption        := 'Exit';

    DevInfo.Caption            := 'Developer';
    ProjectInfo.Caption        := 'Help';
    DevContactBtn.Caption      := 'Contact';
    CoffeeBtn.Caption          := 'Buy coffee for developer';
    FollowOnPatreonBtn.Caption := 'Follow on patreon';
    InfoSection.Caption        := 'Info';
    AboutProjectBtn.Caption    := 'About project';
    HowToUseBtn.Caption        := 'How to use';

    WeaponSkillSht.Caption := 'Weapons';
    WCurrLvlGrb.Caption    := 'Current level';
    WAplyLvlGrb.Caption    := 'Applicable level';
    WSkillGrb.Caption      := 'Skill';
    WS1.Text  := 'Blunt weapons';
    WS10.Text := 'Handgun';
    WS2.Text  := 'smg';
    WS3.Text  := 'Brawling';
    WS4.Text  := 'Sniper rifle';
    WS5.Text  := 'F.Big weapons';
    WS6.Text  := 'Bladed weapons';
    WS7.Text  := 'Rifle';
    WS8.Text  := 'Energy weapons';
    WS9.Text  := 'Shotgun';

    GeneralSkillSht.Caption := 'General';
    GAplyLvlGrb.Caption     := 'Applicable level';
    GCurrLvlGrb.Caption     := 'Current level';
    GSkillGrb.Caption       := 'Skill';
    RS1.Text  := 'Calvin Backer skill';
    RS10.Text := 'Barter';
    RS11.Text := 'weapon smith';
    RS12.Text := 'Manipulate';
    RS2.Text  := 'Combat shooting';
    RS3.Text  := 'Outdoorsman';
    RS4.Text  := 'Brute force';
    RS5.Text  := 'Animal Whisperer';
    RS6.Text  := 'Spot lie';
    RS7.Text  := 'Intimidate';
    RS8.Text  := 'Perception';
    RS9.Text  := 'Leadership';

    TechSkillSht.Caption := 'Technical';
    TSkillGrb.Caption    := 'Skill';
    TCurrLvlGrb.Caption  := 'Current level';
    TAplyLvlGrb.Caption  := 'Applicable level';
    TS1.Text := 'Demolitions';
    TS2.Text := 'Computer tech';
    TS3.Text := 'Mechanical repair';
    TS4.Text := 'Field medic';
    TS5.Text := 'Toaster repair';
    TS6.Text := 'Alarm disarm';
    TS7.Text := 'Doctor';
    TS8.Text := 'Safe crack';
    TS9.Text := 'PickLock';

    AttributeSkillsSht.Caption := 'Attributes';
    AtrCurrLvlGrb.Caption      := 'Current level';
    AtrSkillGrb.Caption        := 'Skill';
    AtrAplyLvlGrb.Caption      := 'Applicable level';
    as1.Text := 'Coordination';
    as2.Text := 'Luck';
    as3.Text := 'Awareness';
    as4.Text := 'Strength';
    as5.Text := 'Speed';
    as6.Text := 'Intelligence';
    as7.Text := 'Charisma';

    SaveBtn.Caption := 'Overwrite SaveGame';
    SGid.Text       := 'Selected SaveGame';
    SObtn.Caption   := 'Select saved game';
    SSnBtn.Caption  := 'Scan SaveGame';

    NoBioText := 'No biography info detected';
    VideoLink := 'https://www.youtube.com/watch?v=LeS7QBcF6zI';
  end;
end;

procedure ToRussian;
begin
  with Main.WL2CED do
  begin
    CaracSavBtn.Caption   := '��������� ��������';
    CaracterBox.Text      := '������� ��������';
    CaracterID.Text       := '����� ������';
    CrLbtn.Caption        := '����������� ��������';
    CurUnitGroup.Caption  := '��������� ����';
    SexLbl.Caption        := '���';
    AgeLbl.Caption        := '�������';
    LvlLbl.Caption        := '�������';
    CurrHPLbl.Caption     := 'T������ HP';
    MaxHPLbl.Caption      := '������������ HP';
    FreeSkPLbl.Caption    := '��������� Skil'+#39+'�';
    EndBtn.Caption        := '�����';

    DevInfo.Caption            := '�����������';
    ProjectInfo.Caption        := '� ������� (Help)';
    DevContactBtn.Caption      := '��������';
    CoffeeBtn.Caption          := '������ ���� ������������';
    FollowOnPatreonBtn.Caption := '���������� �� Patreon';
    InfoSection.Caption        := '����';
    AboutProjectBtn.Caption    := '� �������';
    HowToUseBtn.Caption        := '��� ������������';

    WeaponSkillSht.Caption := '���������';
    WCurrLvlGrb.Caption    := '������� �������';
    WAplyLvlGrb.Caption    := '����������� �������';
    WSkillGrb.Caption      := '�����';
    WS1.Text  := '��������';
    WS10.Text := '���������';
    WS2.Text  := '����.-������';
    WS3.Text  := '����������';
    WS4.Text  := '�����������';
    WS5.Text  := '������';
    WS6.Text  := '��������';
    WS7.Text  := '���������';
    WS8.Text  := '��������������';
    WS9.Text  := '���������';

    GeneralSkillSht.Caption := '�����';
    GAplyLvlGrb.Caption     := '����������� �������';
    GCurrLvlGrb.Caption     := '������� �������';
    GSkillGrb.Caption       := '�����';
    RS1.Text  := '"������ ������"';
    RS10.Text := '������';
    RS11.Text := '���������';
    RS12.Text := '����������';
    RS2.Text  := '�������';
    RS3.Text  := '���������';
    RS4.Text  := '������ ����';
    RS5.Text  := '������������';
    RS6.Text  := '�������';
    RS7.Text  := '������';
    RS8.Text  := '������ ����';
    RS9.Text  := '���������';

    TechSkillSht.Caption := '�����������';
    TSkillGrb.Caption    := '�����';
    TCurrLvlGrb.Caption  := '������� �������';
    TAplyLvlGrb.Caption  := '����������� �������';
    TS1.Text := '�������������';
    TS2.Text := '����������';
    TS3.Text := '��������';
    TS4.Text := '������� ���.';
    TS5.Text := '������ ��������';
    TS6.Text := '������ ��������.';
    TS7.Text := '��������';
    TS8.Text := '����� ������';
    TS9.Text := '����� ������';

    AttributeSkillsSht.Caption := '��������';
    AtrCurrLvlGrb.Caption      := '������� �������';
    AtrSkillGrb.Caption        := '�����';
    AtrAplyLvlGrb.Caption      := '����������� �������';
    as1.Text := '�����������';
    as2.Text := '�����';
    as3.Text := '����������';
    as4.Text := '����';
    as5.Text := '��������';
    as6.Text := '���������';
    as7.Text := '�������';

    SaveBtn.Caption := '������������ Save';
    SGid.Text       := '��������� SaveGame';
    SObtn.Caption   := '������� ���������� ����';
    SSnBtn.Caption  := '����������� Save';

    NoBioText := '������ ��������� �� ��������';
    VideoLink := 'https://www.youtube.com/watch?v=EORiIPeyx2Y';
  end;

end;

end.
