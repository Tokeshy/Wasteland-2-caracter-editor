unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.XPMan, Vcl.ExtCtrls, ShellAPI, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, Vcl.DBCtrls;

type
  TWL2CED = class(TForm)
    SObtn: TButton;
    CaracterID: TEdit;
    CrLbtn: TButton;
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet; TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    WS1: TEdit;
    GroupBox1: TGroupBox;
    WSPB1: TProgressBar;
    GroupBox2: TGroupBox;
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
    GroupBox4: TGroupBox;
    RS1: TEdit; RS2: TEdit; RS3: TEdit; RS4: TEdit;
    RS5: TEdit; RS6: TEdit; RS7: TEdit; RS8: TEdit;
    RS9: TEdit; RS10: TEdit; RS11: TEdit; RS12: TEdit;
    GroupBox5: TGroupBox;
    RSPB1: TProgressBar; RSPB2: TProgressBar; RSPB3: TProgressBar; RSPB4: TProgressBar;
    RSPB5: TProgressBar; RSPB6: TProgressBar; RSPB7: TProgressBar; RSPB8: TProgressBar;
    RSPB9: TProgressBar; RSPB10: TProgressBar;
    RSI1: TEdit; RSI2: TEdit; RSI3: TEdit; RSI4: TEdit;
    RSI5: TEdit; RSI6: TEdit; RSI7: TEdit; RSI8: TEdit;
    RSI9: TEdit; RSI10: TEdit;
    RSPB11: TProgressBar; RSPB12: TProgressBar;
    RSI11: TEdit; RSI12: TEdit;
    GroupBox6: TGroupBox;
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
    TabSheet4: TTabSheet;
    GroupBox7: TGroupBox;
    TS1: TEdit; TS2: TEdit; TS3: TEdit; TS4: TEdit;
    TS5: TEdit; TS6: TEdit; TS7: TEdit; TS8: TEdit;
    TS9: TEdit;
    GroupBox8: TGroupBox;
    TSPB1: TProgressBar; TSPB2: TProgressBar; TSPB3: TProgressBar; TSPB4: TProgressBar;
    TSPB5: TProgressBar; TSPB6: TProgressBar; TSPB7: TProgressBar; TSPB8: TProgressBar;
    TSPB9: TProgressBar;
    TSI1: TEdit; TSI2: TEdit; TSI3: TEdit; TSI4: TEdit;
    TSI5: TEdit; TSI6: TEdit; TSI7: TEdit; TSI8: TEdit;
    TSI9: TEdit;
    GroupBox9: TGroupBox;
    TSTB1: TTrackBar;
    TSL1: TEdit;
    TSTB2: TTrackBar; TSTB3: TTrackBar; TSTB4: TTrackBar; TSTB5: TTrackBar;
    TSTB6: TTrackBar; TSTB7: TTrackBar; TSTB8: TTrackBar; TSTB9: TTrackBar;
    TSL2: TEdit; TSL3: TEdit; TSL4: TEdit; TSL5: TEdit;
    TSL6: TEdit; TSL7: TEdit; TSL8: TEdit; TSL9: TEdit;
    SSnBtn: TButton;
    Aboutproject1: TMenuItem;
    Suppo1: TMenuItem;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    CaracterBox: TComboBox;
    CurUnitGroup: TGroupBox;
    Label2: TLabel; Label3: TLabel; Label4: TLabel; Edit6: TEdit;
    Edit7: TEdit; Edit8: TEdit;
    Label5: TLabel; Label6: TLabel; Label7: TLabel; Edit9: TEdit;
    Edit10: TEdit; Edit11: TEdit;
    Memo3: TMemo;
    GroupBox11: TGroupBox;
    as1: TEdit; as2: TEdit; as3: TEdit; as4: TEdit;
    as5: TEdit; as6: TEdit; as7: TEdit;
    GroupBox10: TGroupBox;
    aspb1: TProgressBar; aspb2: TProgressBar;
    aspb3: TProgressBar; aspb4: TProgressBar;
    aspb5: TProgressBar; aspb6: TProgressBar;
    aspb7: TProgressBar;
    asi1: TEdit; asi2: TEdit; asi3: TEdit; asi4: TEdit;
    asi5: TEdit; asi6: TEdit; asi7: TEdit;
    GroupBox12: TGroupBox;
    astb1: TTrackBar;
    asl1: TEdit;
    astb2: TTrackBar; astb3: TTrackBar;
    astb4: TTrackBar; astb5: TTrackBar;
    astb6: TTrackBar; astb7: TTrackBar;
    asl2: TEdit; asl3: TEdit;
    asl4: TEdit; asl5: TEdit;
    asl6: TEdit; asl7: TEdit;
    CaracSavBtn: TButton;
    SaveBtn: TButton;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    language1: TMenuItem;
    English1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Followus1: TMenuItem;
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

{At version 2.0 ��������� ����������� ����� ����� ����������
  - ���������� ����� �� Youtube, ���� 2 - �� ������� � ����������
  + ������� ���� �������, � �������������� ���������� (RU / ENG)
  + ����� ���� � ������������ ������ ����� //������� �� ���.�������� � �����. � ��������� � ���������� ������
  + ������� �������� Donate � ��� ����� � ������ .. ����������?
  - �� ������ ��� ������ ������ � ����� ����������
  + ��������� ������ �������� �� YouTube}

{Regular Procedures & Functions}
procedure TerminateOrRename;
begin
  if (WL2CED.SGid.text <> '��������� SaveGame') and (WL2CED.SGid.text <> 'Selected SaveGame')
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
var limSttart, LimEnd : string;
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
{############################################}

procedure TWL2CED.Aboutproject1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://sonkjeferson.wixsite.com/wastelandschared2', '', '', SW_SHOWNORMAL); //����������������
end;

procedure TWL2CED.EndBtnClick(Sender: TObject);
begin
  TerminateOrRename
end;

procedure TWL2CED.N4Click(Sender: TObject);
begin
  CaracSavBtn.Caption:='��������� ��������';
  CaracterBox.Text:='������� ��������';
  CaracterID.Text:='����� ������';
  CrLbtn.Caption:='����������� ��������';
  CurUnitGroup.Caption:='��������� ����';
    Label2.Caption:='���';
    Label3.Caption:='�������';
    Label4.Caption:='�������';
    Label5.Caption:='T������ HP';
    Label6.Caption:='������������ HP';
    Label7.Caption:='��������� Skil'+#39+'�';
  EndBtn.Caption:='�����';
    N3.Caption:='�������������';
    N1.Caption:='������ ���� ������������';
    Suppo1.Caption:='������� "�������" ������������';
    N5.Caption:='����';
    Aboutproject1.Caption:='� �������';
    N2.Caption:='��� ������������';
  TabSheet1.Caption:='���������';
    GroupBox1.Caption:='������� �������';
    GroupBox2.Caption:='����������� �������';
    GroupBox3.Caption:='�����';
      WS1.Text:='��������';
      WS10.Text:='���������';
      WS2.Text:='����.-������';
      WS3.Text:='����������';
      WS4.Text:='�����������';
      WS5.Text:='������';
      WS6.Text:='��������';
      WS7.Text:='���������';
      WS8.Text:='��������������';
      WS9.Text:='���������';
    TabSheet2.Caption:='�����';
      GroupBox6.Caption:='����������� �������';
      GroupBox5.Caption:='������� �������';
      GroupBox4.Caption:='�����';
        RS1.Text:='"������ ������"';
        RS10.Text:='������';
        RS11.Text:='���������';
        RS12.Text:='����������';
        RS2.Text:='�������';
        RS3.Text:='���������';
        RS4.Text:='������ ����';
        RS5.Text:='������������';
        RS6.Text:='�������';
        RS7.Text:='������';
        RS8.Text:='������ ����';
        RS9.Text:='���������';
    TabSheet3.Caption:='�����������';
      GroupBox7.Caption:='�����';
        TS1.Text:='�������������';
        TS2.Text:='����������';
        TS3.Text:='��������';
        TS4.Text:='������� ���.';
        TS5.Text:='������ ��������';
        TS6.Text:='������ ��������.';
        TS7.Text:='��������';
        TS8.Text:='����� ������';
        TS9.Text:='����� ������';
      GroupBox8.Caption:='������� �������';
      GroupBox9.Caption:='����������� �������';
    TabSheet4.Caption:='��������';
      GroupBox10.Caption:='������� �������';
      GroupBox11.Caption:='�����';
        as1.Text:='�����������';
        as2.Text:='�����';
        as3.Text:='����������';
        as4.Text:='����';
        as5.Text:='��������';
        as6.Text:='���������';
        as7.Text:='�������';
      GroupBox12.Caption:='����������� �������';
  SaveBtn.Caption:='������������ Save';
  SGid.Text:='��������� SaveGame';
  SObtn.Caption:='������� ����������� ����';
  SSnBtn.Caption:='����������� Save';
end;

procedure TWL2CED.English1Click(Sender: TObject);
begin
    CaracSavBtn.Caption:='Save unit';
  CaracterBox.Text:='Select unit';
  CaracterID.Text:='Total Units';
  CrLbtn.Caption:='Scan character';
  CurUnitGroup.Caption:='Selected unit';
    Label2.Caption:='Sex';
    Label3.Caption:='Age';
    Label4.Caption:='Level';
    Label5.Caption:='Current HP';
    Label6.Caption:='Max HP';
    Label7.Caption:='Free Skils';
  EndBtn.Caption:='Exit';
    N3.Caption:='Thanks';
    N1.Caption:='Buy coffee for developer';
    Suppo1.Caption:='Say "thanks" to the developer';
    N5.Caption:='Info';
    Aboutproject1.Caption:='About';
    N2.Caption:='How to use';
  TabSheet1.Caption:='Weapons';
    GroupBox1.Caption:='Current level';
    GroupBox2.Caption:='Applicable level';
    GroupBox3.Caption:='Skill';
      WS1.Text:='Blunt weapons';
      WS10.Text:='Handgun';
      WS2.Text:='smg';
      WS3.Text:='Brawling';
      WS4.Text:='Sniper rifle';
      WS5.Text:='F.Big weapons';
      WS6.Text:='Bladed weapons';
      WS7.Text:='Rifle';
      WS8.Text:='Energy weapons';
      WS9.Text:='Shotgun';
    TabSheet2.Caption:='General';
      GroupBox6.Caption:='Applicable level';
      GroupBox5.Caption:='Current level';
      GroupBox4.Caption:='Skill';
        RS1.Text:='Calvin Backer skill';
        RS10.Text:='Barter';
        RS11.Text:='weapon smith';
        RS12.Text:='Manipulate';
        RS2.Text:='Combat shooting';
        RS3.Text:='Outdoorsman';
        RS4.Text:='Brute force';
        RS5.Text:='Animal Whisperer';
        RS6.Text:='Spot lie';
        RS7.Text:='Intimidate';
        RS8.Text:='Perception';
        RS9.Text:='Leadership';
    TabSheet3.Caption:='Technical';
      GroupBox7.Caption:='Skill';
        TS1.Text:='Demolitions';
        TS2.Text:='Computer tech';
        TS3.Text:='Mechanical repair';
        TS4.Text:='Field medic';
        TS5.Text:='Toaster repair';
        TS6.Text:='Alarm disarm';
        TS7.Text:='Doctor';
        TS8.Text:='Safe crack';
        TS9.Text:='PickLock';
      GroupBox8.Caption:='Current level';
      GroupBox9.Caption:='Applicable level';
    TabSheet4.Caption:='Attributes';
      GroupBox10.Caption:='Current level';
      GroupBox11.Caption:='Skill';
        as1.Text:='Coordination';
        as2.Text:='Luck';
        as3.Text:='Awareness';
        as4.Text:='Strength';
        as5.Text:='Speed';
        as6.Text:='Intelligence';
        as7.Text:='Charisma';
      GroupBox12.Caption:='Applicable level';
  SaveBtn.Caption:='Overwrite SaveGame';
  SGid.Text:='Selected SaveGame';
  SObtn.Caption:='Select saved game';
  SSnBtn.Caption:='Scan SaveGame';
end;

{############################################}

procedure TWL2CED.Followus1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://www.youtube.com/channel/UCyniVlUauJ1iWYyo-vHfGlA', '', '', SW_SHOWNORMAL); //����������������
end;

procedure TWL2CED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TerminateOrRename
end;

procedure TWL2CED.FormCreate(Sender: TObject);
begin
  memo3.Clear;
end;

procedure TWL2CED.N1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://sonkjeferson.wixsite.com/donation', '', '', SW_SHOWNORMAL); //����������������
end;

procedure TWL2CED.N2Click(Sender: TObject);
begin
  if EndBtn.caption='�����'
    then ShellExecute(0, 'open', 'https://youtu.be/EORiIPeyx2Y', '', '', SW_SHOWNORMAL);
  if EndBtn.caption='Exit'
    then ShellExecute(0, 'open', 'https://youtu.be/LeS7QBcF6zI', '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.SaveBtnClick(Sender: TObject);
var
  f:textFile;
begin
  AssignFile(f, NewFileName);
  Rewrite(f);
  write(f, sf1);
  CloseFile(f);
  RenameFile(NewFileName, OldFileName);
end;

procedure TWL2CED.SObtnClick(Sender: TObject);
begin
  openDialog1.InitialDir := 'C:\';
  openDialog1.Filter :='Wasteland2 Save Games files|*.xml';
  if OpenDialog1.Execute
    then SGid.Text:=(ExtractFileName(OpenDialog1.FileName));
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
  CrLbtn.Enabled:=true;
  if EndBtn.caption='�����'
    then CaracterBox.Text:= '������� ��������';
  if EndBtn.caption='Exit'
    then CaracterBox.Text:= 'Select unit';
{FileType to TXT}
  OldFileName:=OpenDialog1.FileName;
  OFNL:=OldFileName.length;
  NewFileName:=OldFileName;
  delete(NewFileName,(OFNL-3), OFNL);
  NewFileName:=NewFileName+'.txt';
  RenameFile(OldFileName, NewFileName);
  FileName :=NewFileName;
  AssignFile(F, FileName);
  Reset(F, 1);
{Loading into SA Var}
  SetLength(SSrc, FileSize(F));
  BlockRead(F, Pointer(SSrc)^, Length(SSrc));
  CloseFile(F);
  S := Utf8ToAnsi(SSrc);
  sa := S;
{Counting Caracters}
  cc:=0;
  s1:='</name><displayName>&lt;@&gt;';
  for i:=0 to Length(sa)-Length(s1) do
  begin
    if copy(sa,i,Length(s1))=s1 then
    begin
      cc:=cc+1;
    {Getting Caracters Names}
      cn := copy(sa,i,Length(s1)+10);
      delete (cn, 1, Length(s1));
      delete (cn, (ansipos('{',cn)), Length(cn));
    {Feeling ComboBox}
      CaracterBox.Items.Add(cn);
    end;
  end;

  if EndBtn.caption='�����'
    then CaracterID.Text := '������� ������ - ' +  inttostr(cc);
  if EndBtn.caption='Exit'
    then CaracterID.Text := 'Units found - ' +  inttostr(cc);
end;

procedure TWL2CED.Suppo1Click(Sender: TObject);
begin
{ProjectSupport Page}
  ShellExecute(0, 'open', 'https://sonkjeferson.wixsite.com/donation', '', '', SW_SHOWNORMAL);
end;

procedure TWL2CED.CaracSavBtnClick(Sender: TObject);
var
  sf2, sfl: string;
  w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, r1, r2, r3, r4, r5, r6, r7, r8, r9,
  r10, r11, r12, t1, t2, t3, t4, t5, t6, t7, t8, t9 :integer;
begin
{Prefix into sf1}
  sf1:=S;
  delete (sf1, (ansipos(sname,sf1)), (length(sf1)));
{Prefix2 into sf2}
  sf2:=cn;
  delete (sf2, (ansipos('<KeyValuePairOfStringInt32><Key>awareness',sf2)), Length(sf2));
{Postfix into sfl}
  sfl:=S;
  delete (sfl, 1, (length(sf1)));
  delete (sfl, 1, (ansipos('</availableTraitPoints>',sfl)));

{skils into Wasteland format}
  w1 := PosToVal(wstb1.Position);
  w2 := PosToVal(wstb2.Position);
  w3 := PosToVal(wstb3.Position);
  w4 := PosToVal(wstb4.Position);
  w5 := PosToVal(wstb5.Position);
  w6 := PosToVal(wstb6.Position);
  w7 := PosToVal(wstb7.Position);
  w8 := PosToVal(wstb8.Position);
  w9 := PosToVal(wstb9.Position);
  w10 := PosToVal(wstb10.Position);

  r1 := PosToVal(rstb1.Position);
  r2 := PosToVal(rstb2.Position);
  r3 := PosToVal(rstb3.Position);
  r4 := PosToVal(rstb4.Position);
  r5 := PosToVal(rstb5.Position);
  r6 := PosToVal(rstb6.Position);
  r7 := PosToVal(rstb7.Position);
  r8 := PosToVal(rstb8.Position);
  r9 := PosToVal(rstb9.Position);
  r10 := PosToVal(rstb10.Position);
  r11 := PosToVal(rstb11.Position);
  r12 := PosToVal(rstb12.Position);

  t1 := PosToVal(tstb1.Position);
  t2 := PosToVal(tstb2.Position);
  t3 := PosToVal(tstb3.Position);
  t4 := PosToVal(tstb4.Position);
  t5 := PosToVal(tstb5.Position);
  t6 := PosToVal(tstb6.Position);
  t7 := PosToVal(tstb7.Position);
  t8 := PosToVal(tstb8.Position);
  t9 := PosToVal(tstb9.Position);

{compiling outputFile}
  sf1:=sf1+'<'+sf2+'<KeyValuePairOfStringInt32><Key>awareness</Key><Value>'+(inttostr(ASTB3.Position));
  delete (sf1, 1, 1 );
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>charisma</Key><Value>'+(inttostr(ASTB7.Position));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>coordination</Key><Value>'+(inttostr(ASTB1.Position));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>intelligence</Key><Value>'+(inttostr(ASTB6.Position));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>luck</Key><Value>'+(inttostr(ASTB2.Position));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>speed</Key><Value>'+(inttostr(ASTB5.Position));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>strength</Key><Value>'+(inttostr(ASTB4.Position));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32></attributes2><skillXps2><KeyValuePairOfStringInt32><Key>alarmDisarm</Key><Value>'+(inttostr(t6));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>animalWhisperer</Key><Value>'+(inttostr(r5));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>atWeapons</Key><Value>'+(inttostr(w5));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>barter</Key><Value>'+(inttostr(r10));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>bladedWeapons</Key><Value>'+(inttostr(w6));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>bluntWeapons</Key><Value>'+(inttostr(w1));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>brawling</Key><Value>'+(inttostr(w3));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>bruteForce</Key><Value>'+(inttostr(r4));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>calvinBackerSkill</Key><Value>'+(inttostr(r1));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>combatShooting</Key><Value>'+(inttostr(r2));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>computerTech</Key><Value>'+(inttostr(t2));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>demolitions</Key><Value>'+(inttostr(t1));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>doctor</Key><Value>'+(inttostr(t7));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>energyWeapons</Key><Value>'+(inttostr(w8));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>fieldMedic</Key><Value>'+(inttostr(t4));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>handgun</Key><Value>'+(inttostr(w10));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>intimidate</Key><Value>'+(inttostr(r7));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>leadership</Key><Value>'+(inttostr(r9));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>manipulate</Key><Value>'+(inttostr(r12));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>mechanicalRepair</Key><Value>'+(inttostr(t3));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>outdoorsman</Key><Value>'+(inttostr(r3));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>perception</Key><Value>'+(inttostr(r8));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>pickLock</Key><Value>'+(inttostr(t9));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>rifle</Key><Value>'+(inttostr(w7));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>safecrack</Key><Value>'+(inttostr(t8));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>shotgun</Key><Value>'+(inttostr(w9));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>smg</Key><Value>'+(inttostr(w2));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>sniperRifle</Key><Value>'+(inttostr(w4));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>spotLie</Key><Value>'+(inttostr(r6));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>toasterRepair</Key><Value>'+(inttostr(t5));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>weaponSmith</Key><Value>'+(inttostr(r11));
  sf1:=sf1+'</Value></KeyValuePairOfStringInt32></skillXps2><hasCommittedPoints>false</hasCommittedPoints><availableAttributePoints>0</availableAttributePoints><availableSkillPoints>54</availableSkillPoints><availableTraitPoints>0<';
{The last line of output TXT}
  sf1:=sf1+sfl;
end;



procedure TWL2CED.CrLbtnClick(Sender: TObject);
var
  cn1 : string;
begin
  CaracSavBtn.Enabled:=true;
  SaveBtn.Enabled:=true;
{read caracter's name into cname}
  cname:= caracterbox.Items.Strings[caracterbox.ItemIndex];
  CurUnitGroup.Caption := '��������� ������ ' + cname;
{scaning caracter}
  cn:=S;
  sname:='</name><displayName>&lt;@&gt;'+cname;
{clearing file (before caracter description)}
  delete (cn, 1, (ansipos(sname,cn)));
{clering postfix (after caracter description)}
  delete (cn, (ansipos('</availableSkillPoints><availableTraitPoints>',cn)), Length(cn));
{now cn include all data about skills and inventory of selected caracter}
{reading values from savegame}
{general info}
{Gender}
  cn1:=cn;
  delete (cn1, 1, (ansipos('{',cn1)-1));
  delete (cn1, (ansipos('}',cn1)), Length(cn1));
  delete (cn1, 1, (Length('{')));
  edit6.Text:=cn1;
{age}
  edit7.Text := UnregClean (cn, 'age>', 5);
{lvl}
  edit8.Text := UnregClean (cn, 'level>', 7);
{actual HP}
  edit9.Text := UnregClean (cn, 'curHp>', 7);
{max HP}
  edit10.Text := UnregClean (cn, 'maxHp>', 7);
{Free SkillPoints}
  edit11.Text := UnregClean (cn, 'availableSkillPoints>', 22);
{Biografy}
  cn1:=cn;
  delete (cn1, 1, (ansipos('<biography>&lt;@&gt;',cn1)-1));
  {check if biografy exists}
  if ansipos('<biography>&lt;@&gt;',cn1)=0
    then memo3.Text:='��������� �� ���������'
    else
    begin
      delete (cn1, (ansipos('</biography>',cn1)), Length(cn1));
      delete (cn1, 1, Length('<biography>&lt;@&gt;'));
      memo3.Text:=cn1;
    end;

{##########################}
{ Block 1 - weapon skills  }
{##########################}

{crushing / ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>bluntWeapons</Key><Value>');
  {translating to "normal" values}
  cn1 := ValToWL2Format(cn1);
  {substitution of values}
  WSPB1.Position:=strtoint(cn1);
  WSTB1.Position:=WSPB1.Position;
  WSL1.Text:=inttostr(WSTB1.Position)+'/10';
  wsi1.Text:=wsl1.Text;
{submachine gun / ���������-�������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>smg</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB2.Position:=strtoint(cn1);
  WSTB2.Position:=WSPB2.Position;
  WSL2.Text:=inttostr(WSTB2.Position)+'/10';
  wsi2.Text:=wsl2.Text;
{Melee / ����������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>brawling</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB3.Position:=strtoint(cn1);
  WSTB3.Position:=WSPB3.Position;
  WSL3.Text:=inttostr(WSTB3.Position)+'/10';
  wsi3.Text:=wsl3.Text;
{Sniper  / �����������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>sniperRifle</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB4.Position:=strtoint(cn1);
  WSTB4.Position:=WSPB4.Position;
  WSL4.Text:=inttostr(WSTB4.Position)+'/10';
  wsi4.Text:=wsl4.Text;
{Heavy / ������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>atWeapons</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB5.Position:=strtoint(cn1);
  WSTB5.Position:=WSPB5.Position;
  WSL5.Text:=inttostr(WSTB5.Position)+'/10';
  wsi5.Text:=wsl5.Text;
{steel arms / ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>bladedWeapons</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB6.Position:=strtoint(cn1);
  WSTB6.Position:=WSPB6.Position;
  WSL6.Text:=inttostr(WSTB6.Position)+'/10';
  wsi6.Text:=wsl6.Text;
{Assault / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>rifle</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB7.Position:=strtoint(cn1);
  WSTB7.Position:=WSPB7.Position;
  WSL7.Text:=inttostr(WSTB7.Position)+'/10';
  wsi7.Text:=wsl7.Text;
{Power /��������������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>energyWeapons</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB8.Position:=strtoint(cn1);
  WSTB8.Position:=WSPB8.Position;
  WSL8.Text:=inttostr(WSTB8.Position)+'/10';
  wsi8.Text:=wsl8.Text;
{shotguns / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>shotgun</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB9.Position:=strtoint(cn1);
  WSTB9.Position:=WSPB9.Position;
  WSL9.Text:=inttostr(WSTB9.Position)+'/10';
  wsi9.Text:=wsl9.Text;
{guns / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>handgun</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  WSPB10.Position:=strtoint(cn1);
  WSTB10.Position:=WSPB10.Position;
  WSL10.Text:=inttostr(WSTB10.Position)+'/10';
  wsi10.Text:=wsl10.Text;

{##########################}
{Block 2 - 'General skills'}
{##########################}

{"Calvin Backer skill" / "������ ������"}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>calvinBackerSkill</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB1.Position:=strtoint(cn1);
  RSTB1.Position:=RSPB1.Position;
  RSL1.Text:=inttostr(RSTB1.Position)+'/10';
  rsi1.Text:= RSL1.Text;
{Combat shooting / �������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>combatShooting</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB2.Position:=strtoint(cn1);
  RSTB2.Position:=RSPB2.Position;
  RSL2.Text:=inttostr(RSTB2.Position)+'/10';
  rsi2.Text:= RSL2.Text;
{Outdoorsman / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>outdoorsman</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB3.Position:=strtoint(cn1);
  RSTB3.Position:=RSPB3.Position;
  RSL3.Text:=inttostr(RSTB3.Position)+'/10';
  rsi3.Text:= RSL3.Text;
{Brute force / ������ ����}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>bruteForce</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB4.Position:=strtoint(cn1);
  RSTB4.Position:=RSPB4.Position;
  RSL4.Text:=inttostr(RSTB4.Position)+'/10';
  rsi4.Text:= RSL4.Text;
{Animal Whisperer / ������������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>animalWhisperer</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB5.Position:=strtoint(cn1);
  RSTB5.Position:=RSPB5.Position;
  RSL5.Text:=inttostr(RSTB5.Position)+'/10';
  rsi5.Text:= RSL5.Text;
{Spot lie / �������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>spotLie</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB6.Position:=strtoint(cn1);
  RSTB6.Position:=RSPB6.Position;
  RSL6.Text:=inttostr(RSTB6.Position)+'/10';
  rsi6.Text:= RSL6.Text;
{Intimidate / ������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>intimidate</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB7.Position:=strtoint(cn1);
  RSTB7.Position:=RSPB7.Position;
  RSL7.Text:=inttostr(RSTB7.Position)+'/10';
  rsi7.Text:= RSL7.Text;
{Perception / ������ ����}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>perception</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB8.Position:=strtoint(cn1);
  RSTB8.Position:=RSPB8.Position;
  RSL8.Text:=inttostr(RSTB8.Position)+'/10';
  rsi8.Text:= RSL8.Text;
{Leadership / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>leadership</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB9.Position:=strtoint(cn1);
  RSTB9.Position:=RSPB9.Position;
  RSL9.Text:=inttostr(RSTB9.Position)+'/10';
  rsi9.Text:= RSL9.Text;
{Barter / ������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>barter</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB10.Position:=strtoint(cn1);
  RSTB10.Position:=RSPB10.Position;
  RSL10.Text:=inttostr(RSTB10.Position)+'/10';
  rsi10.Text:= RSL10.Text;
{weapon smith / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>weaponSmith</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB11.Position:=strtoint(cn1);
  RSTB11.Position:=RSPB11.Position;
  RSL11.Text:=inttostr(RSTB11.Position)+'/10';
  rsi11.Text:= RSL11.Text;
{Manipulate / ����������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>manipulate</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  RSPB12.Position:=strtoint(cn1);
  RSTB12.Position:=RSPB12.Position;
  RSL12.Text:=inttostr(RSTB12.Position)+'/10';
  rsi12.Text:= RSL12.Text;

{##########################}
{Block 3 - Technical skills}
{##########################}

{Demolitions / �������������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>demolitions</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB1.Position:=strtoint(cn1);
  TSTB1.Position:=TSPB1.Position;
  TSL1.Text:=inttostr(TSTB1.Position)+'/10';
  Tsi1.Text:= TSL1.Text;
{Computer tech / ����������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>computerTech</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB2.Position:=strtoint(cn1);
  TSTB2.Position:=TSPB2.Position;
  TSL2.Text:=inttostr(TSTB2.Position)+'/10';
  Tsi2.Text:= TSL2.Text;
{Mechanical repair / ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>mechanicalRepair</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB3.Position:=strtoint(cn1);
  TSTB3.Position:=TSPB3.Position;
  TSL3.Text:=inttostr(TSTB3.Position)+'/10';
  Tsi3.Text:= TSL3.Text;
{Field medic / ������� ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>fieldMedic</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB4.Position:=strtoint(cn1);
  TSTB4.Position:=TSPB4.Position;
  TSL4.Text:=inttostr(TSTB4.Position)+'/10';
  Tsi4.Text:= TSL4.Text;
{Toaster repair / ������ ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>toasterRepair</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB5.Position:=strtoint(cn1);
  TSTB5.Position:=TSPB5.Position;
  TSL5.Text:=inttostr(TSTB5.Position)+'/10';
  Tsi5.Text:= TSL5.Text;
{Alarm disarm / ������ ������������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>alarmDisarm</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB6.Position:=strtoint(cn1);
  TSTB6.Position:=TSPB6.Position;
  TSL6.Text:=inttostr(TSTB6.Position)+'/10';
  Tsi6.Text:= TSL6.Text;
{Doctor / ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>doctor</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB7.Position:=strtoint(cn1);
  TSTB7.Position:=TSPB7.Position;
  TSL7.Text:=inttostr(TSTB7.Position)+'/10';
  Tsi7.Text:= TSL7.Text;
{Safe crack / ����� ������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>safecrack</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB8.Position:=strtoint(cn1);
  TSTB8.Position:=TSPB8.Position;
  TSL8.Text:=inttostr(TSTB8.Position)+'/10';
  Tsi8.Text:= TSL8.Text;
{PickLock / ����� ������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>pickLock</Key><Value>');
  cn1 := ValToWL2Format(cn1);
  TSPB9.Position:=strtoint(cn1);
  TSTB9.Position:=TSPB9.Position;
  TSL9.Text:=inttostr(TSTB9.Position)+'/10';
  Tsi9.Text:= TSL9.Text;

{##########################}
{   Block 4 - Attributes   }
{##########################}

{Coordination / �����������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>coordination</Key><Value>');
  ASPB1.Position:=strtoint(cn1);
  ASTB1.Position:=ASPB1.Position;
  ASL1.Text:=inttostr(ASTB1.Position)+'/10';
  Asi1.Text:= ASL1.Text;
{Luck / �����}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>luck</Key><Value>');
  ASPB2.Position:=strtoint(cn1);
  ASTB2.Position:=ASPB2.Position;
  ASL2.Text:=inttostr(ASTB2.Position)+'/10';
  Asi2.Text:= ASL2.Text;
{Awareness / ����������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>awareness</Key><Value>');
  ASPB3.Position:=strtoint(cn1);
  ASTB3.Position:=ASPB3.Position;
  ASL3.Text:=inttostr(ASTB3.Position)+'/10';
  Asi3.Text:= ASL3.Text;
{Strength / ����}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>strength</Key><Value>');
  ASPB4.Position:=strtoint(cn1);
  ASTB4.Position:=ASPB4.Position;
  ASL4.Text:=inttostr(ASTB4.Position)+'/10';
  Asi4.Text:= ASL4.Text;
{Speed / ��������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>speed</Key><Value>');
  ASPB5.Position:=strtoint(cn1);
  ASTB5.Position:=ASPB5.Position;
  ASL5.Text:=inttostr(ASTB5.Position)+'/10';
  Asi5.Text:= ASL5.Text;
{Intelligence / ���������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>intelligence</Key><Value>');
  ASPB6.Position:=strtoint(cn1);
  ASTB6.Position:=ASPB6.Position;
  ASL6.Text:=inttostr(ASTB6.Position)+'/10';
  Asi6.Text:= ASL6.Text;
{Charisma / �������}
  cn1 := CnClean(cn, 'KeyValuePairOfStringInt32><Key>charisma</Key><Value>');
  ASPB7.Position:=strtoint(cn1);
  ASTB7.Position:=ASPB7.Position;
  ASL7.Text:=inttostr(ASTB7.Position)+'/10';
  Asi7.Text:= ASL7.Text;

end;


procedure TWL2CED.WSTB1Change(Sender: TObject);
begin
{TrackBar Works}
{Weapons}
  WSL1.Text:=inttostr(WSTB1.Position)+'/10';
  WSL2.Text:=inttostr(WSTB2.Position)+'/10';
  WSL3.Text:=inttostr(WSTB3.Position)+'/10';
  WSL4.Text:=inttostr(WSTB4.Position)+'/10';
  WSL5.Text:=inttostr(WSTB5.Position)+'/10';
  WSL6.Text:=inttostr(WSTB6.Position)+'/10';
  WSL7.Text:=inttostr(WSTB7.Position)+'/10';
  WSL8.Text:=inttostr(WSTB8.Position)+'/10';
  WSL9.Text:=inttostr(WSTB9.Position)+'/10';
  WSL10.Text:=inttostr(WSTB10.Position)+'/10';
{General}
  RSL1.Text:=inttostr(RSTB1.Position)+'/10';
  RSL2.Text:=inttostr(RSTB2.Position)+'/10';
  RSL3.Text:=inttostr(RSTB3.Position)+'/10';
  RSL4.Text:=inttostr(RSTB4.Position)+'/10';
  RSL5.Text:=inttostr(RSTB5.Position)+'/10';
  RSL6.Text:=inttostr(RSTB6.Position)+'/10';
  RSL7.Text:=inttostr(RSTB7.Position)+'/10';
  RSL8.Text:=inttostr(RSTB8.Position)+'/10';
  RSL9.Text:=inttostr(RSTB9.Position)+'/10';
  RSL10.Text:=inttostr(RSTB10.Position)+'/10';
  RSL11.Text:=inttostr(RSTB11.Position)+'/10';
  RSL12.Text:=inttostr(RSTB12.Position)+'/10';
{Technical}
  TSL1.Text:=inttostr(TSTB1.Position)+'/10';
  TSL2.Text:=inttostr(TSTB2.Position)+'/10';
  TSL3.Text:=inttostr(TSTB3.Position)+'/10';
  TSL4.Text:=inttostr(TSTB4.Position)+'/10';
  TSL5.Text:=inttostr(TSTB5.Position)+'/10';
  TSL6.Text:=inttostr(TSTB6.Position)+'/10';
  TSL7.Text:=inttostr(TSTB7.Position)+'/10';
  TSL8.Text:=inttostr(TSTB8.Position)+'/10';
  TSL9.Text:=inttostr(TSTB9.Position)+'/10';
end;

end.
