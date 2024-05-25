unit WL2.SavegameEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.XPMan, Vcl.ExtCtrls, ShellAPI, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, Vcl.DBCtrls;

type
  TWL2CED = class(TForm)
    Btn_OpenSave: TButton;
    Edt_CaracterID: TEdit;
    Btn_ScanCaracter: TButton;
    XPManifest: TXPManifest;
    MainMenu: TMainMenu;
    SkillBrowsCntr: TPageControl;
    PG_WeaponSkill: TTabSheet;
    PG_GeneralSkill: TTabSheet;
    PG_TechSkill: TTabSheet;
    Grp_WpnSkill: TGroupBox;
    Edt_WpnS1: TEdit;
    Grp_WpnCurrLvl: TGroupBox;
    WSPB1: TProgressBar;
    Grp_WpnAplyLvl: TGroupBox;
    WSTB1: TTrackBar;
    WSL1: TEdit;
    Edt_WpnS2: TEdit;
    Edt_WpnS3: TEdit;
    Edt_WpnS4: TEdit;
    Edt_WpnS5: TEdit;
    Edt_WpnS6: TEdit;
    Edt_WpnS7: TEdit;
    Edt_WpnS8: TEdit;
    Edt_WpnS9: TEdit;
    Edt_WpnS10: TEdit;
    WSPB2: TProgressBar; WSPB3: TProgressBar; WSPB4: TProgressBar; WSPB5: TProgressBar;
    WSPB6: TProgressBar; WSPB7: TProgressBar; WSPB8: TProgressBar; WSPB9: TProgressBar;
    WSPB10: TProgressBar;
    WSI1: TEdit; WSI2: TEdit; WSI3: TEdit; WSI4: TEdit;
    WSI5: TEdit; WSI6: TEdit; WSI7: TEdit; WSI8: TEdit;
    WSI9: TEdit; WSI10: TEdit;
    WSTB2: TTrackBar; WSTB3: TTrackBar; WSTB4: TTrackBar; WSTB5: TTrackBar;
    WSTB6: TTrackBar; WSTB7: TTrackBar; WSTB8: TTrackBar; WSTB9: TTrackBar;
    WSTB10: TTrackBar;
    WSL2: TEdit; WSL3: TEdit; WSL4: TEdit; WSL5: TEdit;
    WSL6: TEdit; WSL7: TEdit; WSL8: TEdit; WSL9: TEdit;
    WSL10: TEdit;
    Grp_GnSkill: TGroupBox;
    Edt_RS1: TEdit;
    Edt_RS2: TEdit;
    Edt_RS3: TEdit;
    Edt_RS4: TEdit;
    Edt_RS5: TEdit;
    Edt_RS6: TEdit;
    Edt_RS7: TEdit;
    Edt_RS8: TEdit;
    Edt_RS9: TEdit;
    Edt_RS10: TEdit;
    Edt_RS11: TEdit;
    Edt_RS12: TEdit;
    Grp_GnCurrLvl: TGroupBox;
    RSPB1: TProgressBar; RSPB2: TProgressBar; RSPB3: TProgressBar; RSPB4: TProgressBar;
    RSPB5: TProgressBar; RSPB6: TProgressBar; RSPB7: TProgressBar; RSPB8: TProgressBar;
    RSPB9: TProgressBar; RSPB10: TProgressBar;
    RSI1: TEdit; RSI2: TEdit; RSI3: TEdit; RSI4: TEdit;
    RSI5: TEdit; RSI6: TEdit; RSI7: TEdit; RSI8: TEdit;
    RSI9: TEdit; RSI10: TEdit;
    RSPB11: TProgressBar; RSPB12: TProgressBar;
    RSI11: TEdit; RSI12: TEdit;
    Grp_GnAplyLvl: TGroupBox;
    RSTB1: TTrackBar;
    RSL1: TEdit;
    RSTB2: TTrackBar; RSTB3: TTrackBar; RSTB4: TTrackBar; RSTB5: TTrackBar;
    RSTB6: TTrackBar; RSTB7: TTrackBar; RSTB8: TTrackBar; RSTB9: TTrackBar;
    RSTB10: TTrackBar;
    RSL2: TEdit; RSL3: TEdit; RSL4: TEdit; RSL5: TEdit;
    RSL6: TEdit; RSL7: TEdit; RSL8: TEdit; RSL9: TEdit;
    RSL10: TEdit;
    RSTB11: TTrackBar; RSTB12: TTrackBar;
    RSL11: TEdit;  RSL12: TEdit;
    Edt_SelectedCrt: TEdit;
    Btn_Quit: TButton;
    PG_AttributeSkills: TTabSheet;
    Grp_TechSkill: TGroupBox;
    Edt_TechS1: TEdit;
    Edt_TechS2: TEdit;
    Edt_TechS3: TEdit;
    Edt_TechS4: TEdit;
    Edt_TechS5: TEdit;
    Edt_TechS6: TEdit;
    Edt_TechS7: TEdit;
    Edt_TechS8: TEdit;
    Edt_TechS9: TEdit;
    Grp_TechCurrLvl: TGroupBox;
    TSPB1: TProgressBar; TSPB2: TProgressBar; TSPB3: TProgressBar; TSPB4: TProgressBar;
    TSPB5: TProgressBar; TSPB6: TProgressBar; TSPB7: TProgressBar; TSPB8: TProgressBar;
    TSPB9: TProgressBar;
    TSI1: TEdit; TSI2: TEdit; TSI3: TEdit; TSI4: TEdit;
    TSI5: TEdit; TSI6: TEdit; TSI7: TEdit; TSI8: TEdit;
    TSI9: TEdit;
    Grp_TechAplyLvl: TGroupBox;
    TSTB1: TTrackBar;
    TSL1: TEdit;
    TSTB2: TTrackBar; TSTB3: TTrackBar; TSTB4: TTrackBar; TSTB5: TTrackBar;
    TSTB6: TTrackBar; TSTB7: TTrackBar; TSTB8: TTrackBar; TSTB9: TTrackBar;
    TSL2: TEdit; TSL3: TEdit; TSL4: TEdit; TSL5: TEdit;
    TSL6: TEdit; TSL7: TEdit; TSL8: TEdit; TSL9: TEdit;
    Btn_ScanSave: TButton;
    MIt_AboutProject: TMenuItem;
    OpenDialog: TOpenDialog;
    CmbB_Caracter: TComboBox;
    Grp_CurUnit: TGroupBox;
    Lbl_Sex: TLabel;
    Lbl_Age: TLabel;
    Lbl_CurrLvl: TLabel;
    Edt_Sex: TEdit;
    Edt_Age: TEdit;
    Edt_CurrLvl: TEdit;
    Lbl_CurrHP: TLabel;
    Lbl_MaxHP: TLabel;
    Lbl_FreeSkPnt: TLabel;
    Edt_CurrHP: TEdit;
    Edt_MaxHP: TEdit;
    Edt_FreeSkPnt: TEdit;
    Mem_CrBio: TMemo;
    Grp_CurUnitAtrSkill: TGroupBox;
    Edt_AS1: TEdit;
    Edt_AS2: TEdit;
    Edt_AS3: TEdit;
    Edt_AS4: TEdit;
    Edt_AS5: TEdit;
    Edt_AS6: TEdit;
    Edt_AS7: TEdit;
    Grp_AtrCurrLvl: TGroupBox;
    ASPB1: TProgressBar;
    ASPB2: TProgressBar;
    ASPB3: TProgressBar;
    ASPB4: TProgressBar;
    ASPB5: TProgressBar;
    ASPB6: TProgressBar;
    ASPB7: TProgressBar;
    ASI1: TEdit;
    ASI2: TEdit;
    ASI3: TEdit;
    ASI4: TEdit;
    ASI5: TEdit;
    ASI6: TEdit;
    ASI7: TEdit;
    Grp_AtrAplyLvl: TGroupBox;
    ASTB1: TTrackBar;
    ASL1: TEdit;
    ASTB2: TTrackBar;
    ASTB3: TTrackBar;
    ASTB4: TTrackBar;
    ASTB5: TTrackBar;
    ASTB6: TTrackBar;
    ASTB7: TTrackBar;
    ASL2: TEdit;
    ASL3: TEdit;
    ASL4: TEdit;
    ASL5: TEdit;
    ASL6: TEdit;
    ASL7: TEdit;
    Btn_CaracSave: TButton;
    Btn_RRSave: TButton;
    MIt_Coffee: TMenuItem;
    MIt_HowToUse: TMenuItem;
    MIt_LangPref: TMenuItem;
    MIt_ToEng: TMenuItem;
    MIt_ToRus: TMenuItem;
    MIt_InfoSection: TMenuItem;
    MIt_FollowPatreon: TMenuItem;
    MIt_DevInfo: TMenuItem;
    MIt_ProjectInfo: TMenuItem;
    MIt_DevContact: TMenuItem;
    procedure WSTB1Change(Sender: TObject);
    procedure Btn_QuitClick(Sender: TObject);
    procedure MIt_AboutProjectClick(Sender: TObject);
    procedure Btn_OpenSaveClick(Sender: TObject);
    procedure Btn_ScanSaveClick(Sender: TObject);
    procedure Btn_ScanCaracterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_CaracSaveClick(Sender: TObject);
    procedure Btn_RRSaveClick(Sender: TObject);
    procedure MIt_CoffeeClick(Sender: TObject);
    procedure MIt_HowToUseClick(Sender: TObject);
    procedure MIt_ToRusClick(Sender: TObject);
    procedure MIt_ToEngClick(Sender: TObject);
    procedure MIt_FollowUsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MIt_FollowPatreonClick(Sender: TObject);
    procedure MIt_DevContactClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  S, sa, FileName, sf : AnsiString;
  WL2CED: TWL2CED;
  i, OFNL, a: longint;
  sf1, OldFileName, NewFileName, sname, cname,cn : string;
  savefile : textFile;

implementation

{$R *.dfm}
uses
  WL2.EditorInterface, WL2.Constants;

{Regular Procedures & Functions}
procedure TerminateOrRename;
begin
  if (WL2CED.Edt_SelectedCrt.text <> 'выбранный SaveGame') and (WL2CED.Edt_SelectedCrt.text <> 'Selected SaveGame') then
    RenameFile(NewFileName, OldFileName);
  application.Terminate;
end;

Function CnClean (cn, Limiter : string) : string;
begin
  delete (cn, 1, (ansipos(Limiter, cn)-1));
  delete (cn, (ansipos('</Value>',cn)), Length(cn));
  delete (cn, 1, (Length(Limiter)));
  Result := cn;
end;

Function UnregClean (cn, Limiter : string; Len : integer) : string;
var
  limSttart, LimEnd : string;
begin
  limSttart := '<' + Limiter;
  LimEnd := '</' + Limiter;
  delete (cn, 1, (ansipos(limSttart,cn)-1));
  delete (cn, (ansipos(LimEnd,cn)), Length(cn));
  delete (cn, 1, Len);
  Result := cn;
end;

Function PosToVal (Pos : integer) : integer;
begin
  case pos of
    10 : result := 44;
    9  : result := 36;
    8  : result := 30;
    7  : result := 24;
    6  : result := 18;
    5  : result := 14;
    4  : result := 10;
    3  : result := 6;
    2  : result := 4;
    1  : result := 2;
    0  : result := 0;
  end;
end;

Function ValToWL2Format (Val : string) : string;
begin
  case strtointdef(val, 0) of
    0  : result := '0';
    2  : result := '1';
    4  : result := '2';
    6  : result := '3';
    10 : result := '4';
    14 : result := '5';
    18 : result := '6';
    24 : result := '7';
    30 : result := '8';
    36 : result := '9';
    44 : result := '10';
  end;
end;

{Buttons \ Link section}
procedure TWL2CED.MIt_FollowPatreonClick(Sender: TObject);
begin
  ShellExecute(0, 'open', PatreonLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.MIt_FollowUsClick(Sender: TObject);
begin
  ShellExecute(0, 'open', ChannelLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.MIt_DevContactClick(Sender: TObject);
begin
 ShellExecute(0, 'open', ContLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.MIt_CoffeeClick(Sender: TObject);
begin
  ShellExecute(0, 'open', CoffeeLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.MIt_HowToUseClick(Sender: TObject);
begin
  ShellExecute(0, 'open', Pchar(VideoLink), '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.MIt_AboutProjectClick(Sender: TObject);
begin
  ShellExecute(0, 'open', ProjLnk, '', '', SW_SHOWNORMAL);
end;

{Buttons \ Actions}
procedure TWL2CED.Btn_QuitClick(Sender: TObject);
begin
  TerminateOrRename;
end;

procedure TWL2CED.MIt_ToRusClick(Sender: TObject);
begin
  Proc_Translate(1);
end;

procedure TWL2CED.MIt_ToEngClick(Sender: TObject);
begin
  Proc_Translate(0);
end;

procedure TWL2CED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TerminateOrRename;
end;

procedure TWL2CED.FormCreate(Sender: TObject);
begin
  WL2CED.Caption := WL2CED.Caption + CurrentVersion;
  Proc_Translate(0);
  Mem_CrBio.Clear;
end;

procedure TWL2CED.Btn_RRSaveClick(Sender: TObject);
var
  lTextFile: textFile;
begin
  AssignFile(lTextFile, NewFileName);
  Rewrite(lTextFile);
  write(lTextFile, sf1);
  CloseFile(lTextFile);
  sf1 := '';
  RenameFile(NewFileName, OldFileName);
end;

procedure TWL2CED.Btn_OpenSaveClick(Sender: TObject);
begin
  openDialog.InitialDir := 'C:\';
  openDialog.Filter := 'Wasteland2 Save Games files|*.xml';
  if OpenDialog.Execute then
    Edt_SelectedCrt.Text := (ExtractFileName(OpenDialog.FileName));
  CmbB_Caracter.Clear;
end;

procedure TWL2CED.Btn_ScanSaveClick(Sender: TObject);
const
  Fn = 'utf8.txt';
var
  lTextFile : File;
  SSrc : UTF8String;
  i, cc : integer;
  S1, cn : string;
begin
  Btn_ScanCaracter.Enabled := true;

{FileType to TXT}
  OldFileName := OpenDialog.FileName;
  OFNL := OldFileName.length;
  NewFileName := OldFileName;
  delete(NewFileName,(OFNL-3), OFNL);
  NewFileName := NewFileName + '.txt';
  RenameFile(OldFileName, NewFileName);
  FileName := NewFileName;
  AssignFile(lTextFile, FileName);
  Reset(lTextFile, 1);
{Loading into SA Var}
  SetLength(SSrc, FileSize(lTextFile));
  BlockRead(lTextFile, Pointer(SSrc)^, Length(SSrc));
  CloseFile(lTextFile);
  S := Utf8ToAnsi(SSrc);
  sa := S;
{Counting Caracters}
  cc := 0;
  s1 := '</name><displayName>&lt;@&gt;';
  for i := 0 to Length(sa) - Length(s1) do
  begin
    if copy(sa,i,Length(s1)) = s1 then
    begin
      cc := cc + 1;
    {Getting Caracters Names}
      cn := copy(sa,i,Length(s1) + 10);
      delete (cn, 1, Length(s1));
      delete (cn, (ansipos('{',cn)), Length(cn));
    {Feeling ComboBox}
      CmbB_Caracter.Items.Add(cn);
    end;
  end;

  Edt_CaracterID.Text := Edt_CaracterID.Text + ' - ' + inttostr(cc);
end;

procedure TWL2CED.Btn_CaracSaveClick(Sender: TObject);
var
  sf2, sfl: string;
  lWeaponSkills: array [1..10] of integer;
  lGeneralSkills: array [1..12] of integer;
  lTechSkills: array [1..9] of integer;
  i : integer;
begin
{Prefix into sf1}
  sf1 := S;
  delete (sf1, (ansipos(sname,sf1)), (length(sf1)));
{Prefix2 into sf2}
  sf2 := cn;
  delete (sf2, (ansipos('<KeyValuePairOfStringInt32><Key>coordination',sf2)), Length(sf2));
{Postfix into sfl}
  sfl := S;
  delete (sfl, 1, (length(sf1)));
  delete (sfl, 1, (ansipos('</availableTraitPoints>',sfl)));

{skils into Wasteland format}
  for i := 1 to 10 do
    lWeaponSkills[i] := PosToVal((FindComponent('WSTB' + inttostr(i)) as TTrackbar).position);

  for i := 1 to 12 do
    lGeneralSkills[i] := PosToVal((FindComponent('RSTB' + inttostr(i)) as TTrackbar).position);

  for i := 1 to 9 do
    lTechSkills[i] := PosToVal((FindComponent('TSTB' + inttostr(i)) as TTrackbar).position);

{compiling outputFile}
  sf1 := sf1 + '<' + sf2 + '<KeyValuePairOfStringInt32><Key>coordination</Key><Value>' + (inttostr(ASTB1.Position));
  delete (sf1, 1, 1 );

  sf1 := sf1 + SkillFullPref + 'luck' + Cnst_SkillPstfix + (inttostr(ASTB2.Position));
  sf1 := sf1 + SkillFullPref + 'awareness' + Cnst_SkillPstfix + (inttostr(ASTB3.Position));
  sf1 := sf1 + SkillFullPref + 'strength' + Cnst_SkillPstfix + (inttostr(ASTB4.Position));
  sf1 := sf1 + SkillFullPref + 'speed' + Cnst_SkillPstfix + (inttostr(ASTB5.Position));
  sf1 := sf1 + SkillFullPref + 'intelligence' + Cnst_SkillPstfix + (inttostr(ASTB6.Position));
  sf1 := sf1 + SkillFullPref + 'charisma' + Cnst_SkillPstfix + (inttostr(ASTB7.Position));

  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32></attributes2><skillXps2><KeyValuePairOfStringInt32><Key>alarmDisarm' + Cnst_SkillPstfix + (inttostr(lTechSkills[6]));

  sf1 := sf1 + SkillFullPref + 'animalWhisperer' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[5]));
  sf1 := sf1 + SkillFullPref + 'atWeapons' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[5]));
  sf1 := sf1 + SkillFullPref + 'barter' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[10]));
  sf1 := sf1 + SkillFullPref + 'bladedWeapons' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[6]));
  sf1 := sf1 + SkillFullPref + 'bluntWeapons' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[1]));
  sf1 := sf1 + SkillFullPref + 'brawling' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[3]));
  sf1 := sf1 + SkillFullPref + 'bruteForce' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[4]));
  sf1 := sf1 + SkillFullPref + 'calvinBackerSkill' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[1]));
  sf1 := sf1 + SkillFullPref + 'combatShooting' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[2]));
  sf1 := sf1 + SkillFullPref + 'computerTech' + Cnst_SkillPstfix + (inttostr(lTechSkills[2]));
  sf1 := sf1 + SkillFullPref + 'demolitions' + Cnst_SkillPstfix + (inttostr(lTechSkills[1]));
  sf1 := sf1 + SkillFullPref + 'doctor' + Cnst_SkillPstfix + (inttostr(lTechSkills[7]));
  sf1 := sf1 + SkillFullPref + 'energyWeapons' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[8]));
  sf1 := sf1 + SkillFullPref + 'fieldMedic' + Cnst_SkillPstfix + (inttostr(lTechSkills[4]));
  sf1 := sf1 + SkillFullPref + 'handgun' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[10]));
  sf1 := sf1 + SkillFullPref + 'intimidate' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[7]));
  sf1 := sf1 + SkillFullPref + 'leadership' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[9]));
  sf1 := sf1 + SkillFullPref + 'manipulate' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[12]));
  sf1 := sf1 + SkillFullPref + 'mechanicalRepair' + Cnst_SkillPstfix + (inttostr(lTechSkills[3]));
  sf1 := sf1 + SkillFullPref + 'outdoorsman' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[3]));
  sf1 := sf1 + SkillFullPref + 'perception' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[8]));
  sf1 := sf1 + SkillFullPref + 'pickLock' + Cnst_SkillPstfix + (inttostr(lTechSkills[9]));
  sf1 := sf1 + SkillFullPref + 'rifle' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[7]));
  sf1 := sf1 + SkillFullPref + 'safecrack' + Cnst_SkillPstfix + (inttostr(lTechSkills[8]));
  sf1 := sf1 + SkillFullPref + 'shotgun' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[9]));
  sf1 := sf1 + SkillFullPref + 'smg' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[2]));
  sf1 := sf1 + SkillFullPref + 'sniperRifle' + Cnst_SkillPstfix + (inttostr(lWeaponSkills[4]));
  sf1 := sf1 + SkillFullPref + 'spotLie' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[6]));
  sf1 := sf1 + SkillFullPref + 'toasterRepair' + Cnst_SkillPstfix + (inttostr(lTechSkills[5]));
  sf1 := sf1 + SkillFullPref + 'weaponSmith' + Cnst_SkillPstfix + (inttostr(lGeneralSkills[11]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32></skillXps2><hasCommittedPoints>false</hasCommittedPoints><availableAttributePoints>0</availableAttributePoints><availableSkillPoints>54</availableSkillPoints><availableTraitPoints>0<';
{The last line of output file}
  sf1 := sf1 + sfl;
end;

procedure TWL2CED.Btn_ScanCaracterClick(Sender: TObject);
var
  cn1 : string;
begin
  Btn_CaracSave.Enabled := true;
  Btn_RRSave.Enabled := true;
{read caracter's name into 'cname'}
  cname := CmbB_Caracter.Items.Strings[CmbB_Caracter.ItemIndex];
  Grp_CurUnit.Caption := Grp_CurUnit.Caption + ' - ' + cname;
{scaning caracter}
  cn := S;
  sname := '</name><displayName>&lt;@&gt;' + cname;
{clearing file (before caracter description)}
  delete (cn, 1, (ansipos(sname,cn)));
{clering postfix (after caracter description)}
  delete (cn, (ansipos('</availableSkillPoints><availableTraitPoints>',cn)), Length(cn));
{now cn include all data about skills and inventory of selected caracter}
{reading values from savegame}

{general info}
  cn1 := cn;
  delete (cn1, 1, (ansipos('{',cn1)-1));
  delete (cn1, (ansipos('}',cn1)), Length(cn1));
  delete (cn1, 1, (Length('{')));
  Edt_Sex.Text := cn1;
  Edt_Age.Text := UnregClean (cn, 'age>', 5);
  Edt_CurrLvl.Text := UnregClean (cn, 'level>', 7);
  Edt_CurrHP.Text := UnregClean (cn, 'curHp>', 7);
  Edt_MaxHP.Text := UnregClean (cn, 'maxHp>', 7);
  Edt_FreeSkPnt.Text := UnregClean (cn, 'availableSkillPoints>', 22);
{Biografy}
  cn1 := cn;
  delete (cn1, 1, (ansipos('<biography>&lt;@&gt;',cn1)-1));
  if ansipos('<biography>&lt;@&gt;',cn1) = 0 {check if biografy exists} then
    Mem_CrBio.Text := NoBioText
  else
    begin
      delete (cn1, (ansipos('</biography>',cn1)), Length(cn1));
      delete (cn1, 1, Length('<biography>&lt;@&gt;'));
      Mem_CrBio.Text := cn1;
    end;

{ Skill's ID MAP:
  ID |       Weapon          |               General               |           Technical                |          Attributes        |
   1 | Crushing / дробящее   | Calvin Backer skill / Знаток запада | Demolitions / взрывотехника        | Coordination / Координация |
   2 | Submachine gun / ПП   | Combat shooting / стрелок           | Computer tech / компьютеры         | Luck / удача               |
   3 | Melee / Рукопашная    | Outdoorsman / выживание             | Mechanical repair / механика       | Awareness / восприятие     |
   4 | Sniper  / Снайперские | Brute force / грубая сила           | Field medic / полевая медицина     | Strength / сила            |
   5 | Heavy / Тяжёлое       | Animal Whisperer / дрессировщик     | Toaster repair / ремонт тостеров   | Speed / скорость           |
   6 | Steel arms / Холодное | Spot lie / жополиз                  | Alarm disarm / снятие сигнализации | Intelligence / интеллект   |
   7 | Assault / Штурмовые   | Intimidate / задира                 | Doctor / хирургия                  | Charisma / харизма         |
   8 | Power /Энергетическое | Perception / Зоркий глаз            | Safe crack / взлом сейфов          | -------------------------- |
   9 | Shotguns / дробовики  | Leadership / лидерство              | PickLock / взлом замков            | -------------------------- |
  10 | Guns / пистолеты      | Barter / меняла                     | ---------------------------------- | -------------------------- |
  11 | --------------------- | Weapon smith / оружейник            | ---------------------------------- | -------------------------- |
  12 | --------------------- | Manipulate / хитрожопый             | ---------------------------------- | -------------------------- |}

{ Block 1 - Weapon skills }
  for i := 1 to 10 do
    begin
      cn1 := CnClean(cn, Cnst_SkillPref + WSPref[i] + Cnst_SkillPstfix);
    {translating to "normal" values}
      cn1 := ValToWL2Format(cn1);   {substitution of values}
      (FindComponent('WSPB' + inttostr(i)) as TProgressbar).position := strtointdef(cn1, 0);
      (FindComponent('WSTB' + inttostr(i)) as TTrackbar).position := strtointdef(cn1, 0);
      (FindComponent('WSL' + inttostr(i)) as TEdit).Text := cn1 + '/10';
      (FindComponent('WSI' + inttostr(i)) as TEdit).Text := cn1 + '/10';
    end;

{ Block 2 - General skills }
  for i := 1 to 12 do
    begin
      cn1 := CnClean(cn, Cnst_SkillPref + GSPref[i] + Cnst_SkillPstfix);
      cn1 := ValToWL2Format(cn1);
      (FindComponent('RSPB' + inttostr(i)) as TProgressbar).position := strtointdef(cn1, 0);
      (FindComponent('RSTB' + inttostr(i)) as TTrackbar).position := strtointdef(cn1, 0);
      (FindComponent('RSL' + inttostr(i)) as TEdit).Text := cn1 + '/10';
      (FindComponent('RSI' + inttostr(i)) as TEdit).Text := cn1 + '/10';
    end;

{ Block 3 - Technical skills }
  for i := 1 to 9 do
    Begin
      cn1 := CnClean(cn, Cnst_SkillPref + TSPref[i] + Cnst_SkillPstfix);
      cn1 := ValToWL2Format(cn1);
      (FindComponent('TSPB' + inttostr(i)) as TProgressbar).position := strtointdef(cn1, 0);
      (FindComponent('TSTB' + inttostr(i)) as TTrackbar).position := strtointdef(cn1, 0);
      (FindComponent('TSL' + inttostr(i)) as TEdit).Text := cn1 + '/10';
      (FindComponent('TSI' + inttostr(i)) as TEdit).Text := cn1 + '/10';
    End;

{ Block 4 - Attributes }
  for i := 1 to 7 do
    Begin
      cn1 := CnClean(cn, Cnst_SkillPref + ASPref[i] + Cnst_SkillPstfix);
      (FindComponent('ASPB' + inttostr(i)) as TProgressbar).position := strtointdef(cn1, 0);
      (FindComponent('ASTB' + inttostr(i)) as TTrackbar).position := strtointdef(cn1, 0);
      (FindComponent('ASL' + inttostr(i)) as TEdit).Text := cn1 + '/10';
      (FindComponent('ASI' + inttostr(i)) as TEdit).Text := cn1 + '/10';
    End;
end;

{TrackBar Works}
procedure TWL2CED.WSTB1Change(Sender: TObject);
var
  i : integer;
begin
  for i := 1 to 10 do {Weapons}
    (FindComponent('WSL' + inttostr(i)) as TEdit).Text := inttostr((FindComponent('WSTB' + inttostr(i)) as TTrackbar).position) + '/10';

  for i := 1 to 12 do {General}
    (FindComponent('RSL' + inttostr(i)) as TEdit).Text := inttostr((FindComponent('RSTB' + inttostr(i)) as TTrackbar).position) + '/10';

  for i := 1 to 9 do {Technical}
    (FindComponent('TSL' + inttostr(i)) as TEdit).Text := inttostr((FindComponent('TSTB' + inttostr(i)) as TTrackbar).position) + '/10';

  for i := 1 to 7 do {Attributes}
    (FindComponent('ASL' + inttostr(i)) as TEdit).Text := inttostr((FindComponent('ASTB' + inttostr(i)) as TTrackbar).position) + '/10';
end;

end.
