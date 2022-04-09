unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.XPMan, Vcl.ExtCtrls, ShellAPI, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, Vcl.DBCtrls, Translator;

type
  TWL2CED = class(TForm)
    SObtn: TButton;
    CaracterID: TEdit;
    CrLbtn: TButton;
    XPManifest: TXPManifest;
    MainMenu: TMainMenu;
    SkillBrowsCntr: TPageControl;
    WeaponSkillSht: TTabSheet;
    GeneralSkillSht: TTabSheet;
    TechSkillSht: TTabSheet;
    WSkillGrb: TGroupBox;
    WS1: TEdit;
    WCurrLvlGrb: TGroupBox;
    WSPB1: TProgressBar;
    WAplyLvlGrb: TGroupBox;
    WSTB1: TTrackBar;
    WSL1: TEdit; WS2: TEdit; WS3: TEdit; WS4: TEdit;
    WS5: TEdit; WS6: TEdit; WS7: TEdit; WS8: TEdit;
    WS9: TEdit; WS10: TEdit;
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
    GSkillGrb: TGroupBox;
    RS1: TEdit; RS2: TEdit; RS3: TEdit; RS4: TEdit;
    RS5: TEdit; RS6: TEdit; RS7: TEdit; RS8: TEdit;
    RS9: TEdit; RS10: TEdit; RS11: TEdit; RS12: TEdit;
    GCurrLvlGrb: TGroupBox;
    RSPB1: TProgressBar; RSPB2: TProgressBar; RSPB3: TProgressBar; RSPB4: TProgressBar;
    RSPB5: TProgressBar; RSPB6: TProgressBar; RSPB7: TProgressBar; RSPB8: TProgressBar;
    RSPB9: TProgressBar; RSPB10: TProgressBar;
    RSI1: TEdit; RSI2: TEdit; RSI3: TEdit; RSI4: TEdit;
    RSI5: TEdit; RSI6: TEdit; RSI7: TEdit; RSI8: TEdit;
    RSI9: TEdit; RSI10: TEdit;
    RSPB11: TProgressBar; RSPB12: TProgressBar;
    RSI11: TEdit; RSI12: TEdit;
    GAplyLvlGrb: TGroupBox;
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
    SGid: TEdit;
    EndBtn: TButton;
    AttributeSkillsSht: TTabSheet;
    TSkillGrb: TGroupBox;
    TS1: TEdit; TS2: TEdit; TS3: TEdit; TS4: TEdit;
    TS5: TEdit; TS6: TEdit; TS7: TEdit; TS8: TEdit;
    TS9: TEdit;
    TCurrLvlGrb: TGroupBox;
    TSPB1: TProgressBar; TSPB2: TProgressBar; TSPB3: TProgressBar; TSPB4: TProgressBar;
    TSPB5: TProgressBar; TSPB6: TProgressBar; TSPB7: TProgressBar; TSPB8: TProgressBar;
    TSPB9: TProgressBar;
    TSI1: TEdit; TSI2: TEdit; TSI3: TEdit; TSI4: TEdit;
    TSI5: TEdit; TSI6: TEdit; TSI7: TEdit; TSI8: TEdit;
    TSI9: TEdit;
    TAplyLvlGrb: TGroupBox;
    TSTB1: TTrackBar;
    TSL1: TEdit;
    TSTB2: TTrackBar; TSTB3: TTrackBar; TSTB4: TTrackBar; TSTB5: TTrackBar;
    TSTB6: TTrackBar; TSTB7: TTrackBar; TSTB8: TTrackBar; TSTB9: TTrackBar;
    TSL2: TEdit; TSL3: TEdit; TSL4: TEdit; TSL5: TEdit;
    TSL6: TEdit; TSL7: TEdit; TSL8: TEdit; TSL9: TEdit;
    SSnBtn: TButton;
    Aboutproject1: TMenuItem;
    Suppo1: TMenuItem;
    OpenDialog: TOpenDialog;
    XMLDocument: TXMLDocument;
    CaracterBox: TComboBox;
    CurUnitGroup: TGroupBox;
    SexLbl: TLabel;
    AgeLbl: TLabel;
    LvlLbl: TLabel;
    SexEdt: TEdit;
    AgeEdt: TEdit;
    LvlEdt: TEdit;
    CurrHPLbl: TLabel;
    MaxHPLbl: TLabel;
    FreeSkPLbl: TLabel;
    CurrHPEdt: TEdit;
    MaxHPEdt: TEdit;
    FreeSkPEdt: TEdit;
    BioMem: TMemo;
    AtrSkillGrb: TGroupBox;
    as1: TEdit; as2: TEdit; as3: TEdit; as4: TEdit;
    as5: TEdit; as6: TEdit; as7: TEdit;
    AtrCurrLvlGrb: TGroupBox;
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
    AtrAplyLvlGrb: TGroupBox;
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
    CaracSavBtn: TButton;
    SaveBtn: TButton;
    N1: TMenuItem;
    N2: TMenuItem;
    language1: TMenuItem;
    English1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Followus1: TMenuItem;
    Followonpatreon1: TMenuItem;
    DevInfo: TMenuItem;
    ProjectInfo: TMenuItem;
    MailtoDev: TMenuItem;
    procedure WSTB1Change(Sender: TObject);
    procedure EndBtnClick(Sender: TObject);
    procedure Aboutproject1Click(Sender: TObject);
    procedure SObtnClick(Sender: TObject);
    procedure SSnBtnClick(Sender: TObject);
    procedure CrLbtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CaracSavBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure Suppo1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Followus1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Followonpatreon1Click(Sender: TObject);
    procedure MailtoDevClick(Sender: TObject);

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

const
{General}
  VideoRu    = 'https://www.youtube.com/watch?v=EORiIPeyx2Y';
  VideoEng   = 'https://www.youtube.com/watch?v=LeS7QBcF6zI';
  ChannelLnk = '';
  PatreonLnk = 'https://www.patreon.com/Tokeshy';
  ThanksLnk  = 'https://sites.google.com/view/little-beggar/%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F'; {перепроверь}
  CoffeeLnk  = ''; {сделать}
  ProjLnk    = 'https://sonkjeferson.wixsite.com/wastelandschared2'; {перепроверь контакты и сапорт}
  ContLnk    = 'https://www.linkedin.com/in/vitaliherasimenia/';
  CurrentVersion = '2.1.0';

{Services}
  SkillPrefix  = 'KeyValuePairOfStringInt32><Key>';
  SkillPostfix = '</Key><Value>';
  WSPref : array[1..10] of string = ('bluntWeapons', 'smg', 'brawling',
    'sniperRifle', 'atWeapons', 'bladedWeapons','rifle','energyWeapons',
    'shotgun','handgun');
  GSPref : array[1..12] of string = ('calvinBackerSkill','combatShooting',
    'outdoorsman','bruteForce','animalWhisperer','spotLie','intimidate',
    'perception','leadership','barter','weaponSmith','manipulate');
  TSPref : array[1..9] of string = ('demolitions','computerTech',
    'mechanicalRepair','fieldMedic','toasterRepair','alarmDisarm','doctor',
    'safecrack','pickLock');
  ASPref : array[1..7] of string = ('coordination','luck','awareness','strength',
    'speed','intelligence','charisma');

implementation

{$R *.dfm}

{Regular Procedures & Functions}
procedure TerminateOrRename;
begin
  if (WL2CED.SGid.text <> 'выбранный SaveGame') and (WL2CED.SGid.text <> 'Selected SaveGame')
    then RenameFile(NewFileName, OldFileName);
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
procedure TWL2CED.Followonpatreon1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PatreonLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.Followus1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', ChannelLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.MailtoDevClick(Sender: TObject);
begin
 ShellExecute(0, 'open', ContLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.N1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', CoffeeLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.N2Click(Sender: TObject);
begin
  if EndBtn.caption='Выход'
    then ShellExecute(0, 'open', VideoRu, '', '', SW_SHOWNORMAL);
  if EndBtn.caption='Exit'
    then ShellExecute(0, 'open', VideoEng, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.Suppo1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', ThanksLnk, '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.Aboutproject1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', ProjLnk, '', '', SW_SHOWNORMAL);
end;

{Buttons \ Actions}
procedure TWL2CED.EndBtnClick(Sender: TObject);
begin
  TerminateOrRename;
end;

procedure TWL2CED.N4Click(Sender: TObject);
begin
  ToRussian;
end;

procedure TWL2CED.English1Click(Sender: TObject);
begin
  ToEnglish;
end;

procedure TWL2CED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TerminateOrRename;
end;

procedure TWL2CED.FormCreate(Sender: TObject);
begin
  BioMem.Clear;
end;

procedure TWL2CED.SaveBtnClick(Sender: TObject);
var
  f : textFile;
begin
  AssignFile(f, NewFileName);
  Rewrite(f);
  write(f, sf1);
  CloseFile(f);
  sf1 := '';
  RenameFile(NewFileName, OldFileName);
end;

procedure TWL2CED.SObtnClick(Sender: TObject);
begin
  openDialog.InitialDir := 'C:\';
  openDialog.Filter := 'Wasteland2 Save Games files|*.xml';
  if OpenDialog.Execute
    then SGid.Text := (ExtractFileName(OpenDialog.FileName));
  CaracterBox.Clear;
end;

procedure TWL2CED.SSnBtnClick(Sender: TObject);
const
  Fn = 'utf8.txt';
var
  F : File;
  SSrc,wsf, posf, w : UTF8String;
  a1, a2, fcd :longint;
  i, cc, j: integer;
  S1, cn : string;
begin
  CrLbtn.Enabled := true;
  if EndBtn.caption = 'Выход'
    then CaracterBox.Text := 'Выбрать персонаж';
  if EndBtn.caption = 'Exit'
    then CaracterBox.Text := 'Select unit';
{FileType to TXT}
  OldFileName := OpenDialog.FileName;
  OFNL := OldFileName.length;
  NewFileName := OldFileName;
  delete(NewFileName,(OFNL-3), OFNL);
  NewFileName := NewFileName + '.txt';
  RenameFile(OldFileName, NewFileName);
  FileName := NewFileName;
  AssignFile(F, FileName);
  Reset(F, 1);
{Loading into SA Var}
  SetLength(SSrc, FileSize(F));
  BlockRead(F, Pointer(SSrc)^, Length(SSrc));
  CloseFile(F);
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
      CaracterBox.Items.Add(cn);
    end;
  end;

  if EndBtn.caption = 'Выход'
    then CaracterID.Text := 'Найдено юнитов - ' +  inttostr(cc);
  if EndBtn.caption = 'Exit'
    then CaracterID.Text := 'Units found - ' +  inttostr(cc);
end;

procedure TWL2CED.CaracSavBtnClick(Sender: TObject);
var
  sf2, sfl: string;
  w : array [1..10] of integer;
  r : array [1..12] of integer;
  t : array [1..9] of integer;
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
    w[i] := PosToVal((FindComponent('WSTB' + inttostr(i)) as TTrackbar).position);

  for i := 1 to 12 do
    r[i] := PosToVal((FindComponent('RSTB' + inttostr(i)) as TTrackbar).position);

  for i := 1 to 9 do
    t[i] := PosToVal((FindComponent('TSTB' + inttostr(i)) as TTrackbar).position);

{compiling outputFile}
  sf1 := sf1 + '<' + sf2 + '<KeyValuePairOfStringInt32><Key>coordination</Key><Value>' + (inttostr(ASTB1.Position));
  delete (sf1, 1, 1 );

  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>luck</Key><Value>' + (inttostr(ASTB2.Position));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>awareness</Key><Value>' + (inttostr(ASTB3.Position));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>strength</Key><Value>' + (inttostr(ASTB4.Position));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>speed</Key><Value>' + (inttostr(ASTB5.Position));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>intelligence</Key><Value>' + (inttostr(ASTB6.Position));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>charisma</Key><Value>' + (inttostr(ASTB7.Position));

  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32></attributes2><skillXps2><KeyValuePairOfStringInt32><Key>alarmDisarm</Key><Value>' + (inttostr(t[6]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>animalWhisperer</Key><Value>' + (inttostr(r[5]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>atWeapons</Key><Value>' + (inttostr(w[5]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>barter</Key><Value>' + (inttostr(r[10]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>bladedWeapons</Key><Value>' + (inttostr(w[6]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>bluntWeapons</Key><Value>' + (inttostr(w[1]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>brawling</Key><Value>' + (inttostr(w[3]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>bruteForce</Key><Value>' + (inttostr(r[4]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>calvinBackerSkill</Key><Value>' + (inttostr(r[1]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>combatShooting</Key><Value>' + (inttostr(r[2]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>computerTech</Key><Value>' + (inttostr(t[2]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>demolitions</Key><Value>' + (inttostr(t[1]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>doctor</Key><Value>' + (inttostr(t[7]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>energyWeapons</Key><Value>' + (inttostr(w[8]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>fieldMedic</Key><Value>' + (inttostr(t[4]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>handgun</Key><Value>' + (inttostr(w[10]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>intimidate</Key><Value>' + (inttostr(r[7]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>leadership</Key><Value>' + (inttostr(r[9]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>manipulate</Key><Value>' + (inttostr(r[12]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>mechanicalRepair</Key><Value>' + (inttostr(t[3]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>outdoorsman</Key><Value>' + (inttostr(r[3]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>perception</Key><Value>' + (inttostr(r[8]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>pickLock</Key><Value>' + (inttostr(t[9]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>rifle</Key><Value>' + (inttostr(w[7]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>safecrack</Key><Value>' + (inttostr(t[8]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>shotgun</Key><Value>' + (inttostr(w[9]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>smg</Key><Value>' + (inttostr(w[2]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>sniperRifle</Key><Value>' + (inttostr(w[4]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>spotLie</Key><Value>' + (inttostr(r[6]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>toasterRepair</Key><Value>' + (inttostr(t[5]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>weaponSmith</Key><Value>' + (inttostr(r[11]));
  sf1 := sf1 + '</Value></KeyValuePairOfStringInt32></skillXps2><hasCommittedPoints>false</hasCommittedPoints><availableAttributePoints>0</availableAttributePoints><availableSkillPoints>54</availableSkillPoints><availableTraitPoints>0<';
{The last line of output TXT}
  sf1 := sf1 + sfl;
end;

procedure TWL2CED.CrLbtnClick(Sender: TObject);
var
  cn1 : string;
begin
  CaracSavBtn.Enabled := true;
  SaveBtn.Enabled := true;
{read caracter's name into 'cname'}
  cname := caracterbox.Items.Strings[caracterbox.ItemIndex];
  CurUnitGroup.Caption := 'Загружены данные ' + cname;
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
  SexEdt.Text := cn1;
  AgeEdt.Text := UnregClean (cn, 'age>', 5);
  LvlEdt.Text := UnregClean (cn, 'level>', 7);
  CurrHPEdt.Text := UnregClean (cn, 'curHp>', 7);
  MaxHPEdt.Text := UnregClean (cn, 'maxHp>', 7);
  FreeSkPEdt.Text := UnregClean (cn, 'availableSkillPoints>', 22);
{Biografy}
  cn1 := cn;
  delete (cn1, 1, (ansipos('<biography>&lt;@&gt;',cn1)-1));
  if ansipos('<biography>&lt;@&gt;',cn1) = 0 {check if biografy exists}
    then BioMem.Text := 'Биография не заполнена'
    else
    begin
      delete (cn1, (ansipos('</biography>',cn1)), Length(cn1));
      delete (cn1, 1, Length('<biography>&lt;@&gt;'));
      BioMem.Text := cn1;
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
      cn1 := CnClean(cn, SkillPrefix + WSPref[i] + SkillPostfix);
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
      cn1 := CnClean(cn, SkillPrefix + GSPref[i] + SkillPostfix);
      cn1 := ValToWL2Format(cn1);
      (FindComponent('RSPB' + inttostr(i)) as TProgressbar).position := strtointdef(cn1, 0);
      (FindComponent('RSTB' + inttostr(i)) as TTrackbar).position := strtointdef(cn1, 0);
      (FindComponent('RSL' + inttostr(i)) as TEdit).Text := cn1 + '/10';
      (FindComponent('RSI' + inttostr(i)) as TEdit).Text := cn1 + '/10';
    end;

{ Block 3 - Technical skills }
  for i := 1 to 9 do
    Begin
      cn1 := CnClean(cn, SkillPrefix + TSPref[i] + SkillPostfix);
      cn1 := ValToWL2Format(cn1);
      (FindComponent('TSPB' + inttostr(i)) as TProgressbar).position := strtointdef(cn1, 0);
      (FindComponent('TSTB' + inttostr(i)) as TTrackbar).position := strtointdef(cn1, 0);
      (FindComponent('TSL' + inttostr(i)) as TEdit).Text := cn1 + '/10';
      (FindComponent('TSI' + inttostr(i)) as TEdit).Text := cn1 + '/10';
    End;

{ Block 4 - Attributes }
  for i := 1 to 7 do
    Begin
      cn1 := CnClean(cn, SkillPrefix + ASPref[i] + SkillPostfix);
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
