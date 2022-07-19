unit Translator;

interface
  procedure Proc_Translate (LngID : integer);

var
  NoBioText, VideoLink : string;

implementation
uses
  Main, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls;

const
{elements}
  Const_BtnLst : array [1..6] of string = ('Btn_CaracSave', 'Btn_ScanCaracter',
    'Btn_Quit', 'Btn_RRSave', 'Btn_OpenSave', 'Btn_ScanSave');
  Const_EdtLst : array [1..40] of string = ('Edt_CaracterID', 'Edt_WpnS1',
    'Edt_WpnS10', 'Edt_WpnS2', 'Edt_WpnS3', 'Edt_WpnS4', 'Edt_WpnS5', 'Edt_WpnS6',
    'Edt_WpnS7', 'Edt_WpnS8', 'Edt_WpnS9', 'Edt_RS1', 'Edt_RS10', 'Edt_RS11',
    'Edt_RS12', 'Edt_RS2', 'Edt_RS3', 'Edt_RS4', 'Edt_RS5', 'Edt_RS6', 'Edt_RS7',
    'Edt_RS8', 'Edt_RS9', 'Edt_TechS1', 'Edt_TechS2', 'Edt_TechS3', 'Edt_TechS4',
    'Edt_TechS5', 'Edt_TechS6', 'Edt_TechS7', 'Edt_TechS8', 'Edt_TechS9', 'Edt_AS1',
    'Edt_AS2', 'Edt_AS3', 'Edt_AS4', 'Edt_AS5', 'Edt_AS6', 'Edt_AS7', 'Edt_SelectedCrt');
  Const_GrpLst : array[0..12] of string = ('Grp_CurUnit', 'Grp_WpnSkill',
    'Grp_WpnCurrLvl', 'Grp_WpnAplyLvl', 'Grp_GnSkill', 'Grp_GnCurrLvl',
    'Grp_GnAplyLvl', 'Grp_TechSkill', 'Grp_TechCurrLvl', 'Grp_TechAplyLvl',
    'Grp_CurUnitAtrSkill', 'Grp_AtrCurrLvl', 'Grp_AtrAplyLvl');
  Const_LblLst : array[1..6] of string = ('Lbl_Sex', 'Lbl_Age', 'Lbl_CurrLvl',
    'Lbl_CurrHP', 'Lbl_MaxHP', 'Lbl_FreeSkPnt');
  Const_MItLst : array[1..8] of string = ('MIt_DevInfo', 'MIt_ProjectInfo',
    'MIt_DevContact', 'MIt_Coffee', 'MIt_FollowPatreon', 'MIt_InfoSection',
    'MIt_AboutProject', 'MIt_HowToUse');
  Const_PGLst : array [1..4] of string = ('PG_WeaponSkill', 'PG_GeneralSkill',
    'PG_TechSkill', 'PG_AttributeSkills');

{Translation}
  Const_CmBTr : array[0..1] of string = ('Select unit', '������� ��������');
  Const_BtnTrLst : array[1..6] of array[0..1] of string = (('Save unit', '��������� ��������'),
    ('Scan character','����������� ��������'),('Exit','�����'),
    ('Overwrite SaveGame','������������ Save'),('Select saved game','������� ���������� ����'),
    ('Scan SaveGame','����������� Save'));
  Const_EdtTrLst : array[1..40] of array[0..1] of string = (('Total Units', '����� ������'),
    ('Blunt weapons', '��������'), ('Handgun', '���������'), ('smg', '����.-������'),
    ('Brawling', '����������'), ('Sniper rifle', '�����������'), ('F.Big weapons', '������'),
    ('Bladed weapons', '��������'), ('Rifle', '���������'), ('Energy weapons', '��������������'),
    ('Shotgun', '���������'), ('Calvin Backer skill', '"������ ������"'),
    ('Barter', '������'), ('weapon smith', '���������'), ('Manipulate', '����������'),
    ('Combat shooting', '�������'), ('Outdoorsman', '���������'),
    ('Brute force', '������ ����'), ('Animal Whisperer', '������������'),
    ('Spot lie', '�������'), ('Intimidate', '������'), ('Perception', '������ ����'),
    ('Leadership', '���������'), ('Demolitions', '�������������'), ('Computer tech', '����������'),
    ('Mechanical repair', '��������'), ('Field medic', '������� ���.'),
    ('Toaster repair', '������ ��������'), ('Alarm disarm', '������ ��������.'),
    ('Doctor', '��������'), ('Safe crack', '����� ������'), ('PickLock', '����� ������'),
    ('Coordination', '�����������'), ('Luck', '�����'), ('Awareness', '����������'),
    ('Strength', '����'), ('Speed', '��������'), ('Intelligence', '���������'),
    ('Charisma', '�������'), ('Selected SaveGame', '��������� SaveGame'));
  Const_GrpTrLst : array[0..3] of array[0..1] of string = (('Selected unit', '��������� ����'),
    ('Skill', '�����'), ('Current level', '������� �������'),
    ('Applicable level', '����������� �������'));
  Const_LblTrLst : array[1..6] of array[0..1] of string = (('Sex', '���'),
    ('Age', '�������'), ('Level', '�������'), ('Current HP', 'T������ HP'),
    ('Max HP', '������������ HP'), ('Free Skils', '��������� Skil'+#39+'�'));
  Const_MItTrLst : array[1..8] of array[0..1] of string = (('Developer', '�����������'),
    ('Help', '� ������� (Help)'), ('Contact', '��������'),
    ('Buy coffee for developer', '������ ���� ������������'),
    ('Follow on patreon', '���������� �� Patreon'), ('Info', '����'),
    ('About project', '� �������'), ('How to use', '��� ������������'));
  Const_PGTrLst : array[1..4] of array[0..1] of string = (('Weapons', '���������'),
    ('General', '�����'), ('Technical', '�����������'), ('Attributes', '��������'));


procedure Proc_Translate (LngID : integer);
var
  i : integer;
begin
  case LngID of
    0 : begin
          NoBioText := 'No biography info detected';
          VideoLink := 'https://www.youtube.com/watch?v=LeS7QBcF6zI';
        end;

    1 : begin
          NoBioText := '������ ��������� �� ��������';
          VideoLink := 'https://www.youtube.com/watch?v=EORiIPeyx2Y';
        end;
  end;

  with Main.WL2CED do
    begin
      CmbB_Caracter.Text := Const_CmBTr[LngID];
      (FindComponent(Const_GrpLst[0]) as TGroupBox).caption := Const_GrpTrLst[0][LngID];

      for i := 1 to 6 do  // Buttons
        (FindComponent(Const_BtnLst[i]) as TButton).caption := Const_BtnTrLst[i][LngID];

      for i := 1 to 40 do  // Edit'es
        (FindComponent(Const_EdtLst[i]) as TEdit).Text := Const_EdtTrLst[i][LngID];

      for i := 1 to 12 do  // GroupBox'es
        begin
          if i in [1, 4, 7, 10] then
            (FindComponent(Const_GrpLst[i]) as TGroupBox).caption := Const_GrpTrLst[1][LngID]
          else if i in [2, 5, 8, 11] then
            (FindComponent(Const_GrpLst[i]) as TGroupBox).caption := Const_GrpTrLst[2][LngID]
          else if i in [3, 6, 9, 12] then
            (FindComponent(Const_GrpLst[i]) as TGroupBox).caption := Const_GrpTrLst[3][LngID];
        end;

      for i := 1 to 6 do  // Labels
        (FindComponent(Const_LblLst[i]) as TLabel).caption := Const_LblTrLst[i][LngID];

      for i := 1 to 8 do  // MenuItems
        (FindComponent(Const_MItLst[i]) as TMenuItem).caption := Const_MItTrLst[i][LngID];

      for i := 1 to 4 do  // TabSheets
        (FindComponent(Const_PGLst[i]) as TTabSheet).caption := Const_PGTrLst[i][LngID];
    end;
end;


end.
