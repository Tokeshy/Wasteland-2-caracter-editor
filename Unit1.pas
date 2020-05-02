unit Unit1;

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

procedure TerminateOrRename;
begin
  if (WL2CED.SGid.text <> '��������� SaveGame') and (WL2CED.SGid.text <> 'Selected SaveGame')
    then RenameFile(NewFileName, OldFileName);
  application.Terminate;
end;

procedure TWL2CED.Aboutproject1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://sonkjeferson.wixsite.com/wastelandschared2', '', '', SW_SHOWNORMAL); //����������������
end;


procedure TWL2CED.EndBtnClick(Sender: TObject);
begin
  {if (SGid.text <> '��������� SaveGame') and (SGid.text <> 'Selected SaveGame') then RenameFile(NewFileName, OldFileName);
  application.Terminate; }
  TerminateOrRename
end;

/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////

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
  SObtn.Caption:='������� ���������� ����';
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

/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////

procedure TWL2CED.Followus1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://www.youtube.com/channel/UCyniVlUauJ1iWYyo-vHfGlA', '', '', SW_SHOWNORMAL); //����������������
end;

procedure TWL2CED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {if (SGid.text <> '��������� SaveGame') and (SGid.text <> 'Selected SaveGame') then  RenameFile(NewFileName, OldFileName);
  application.Terminate;}
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
  f:textFile; // �������� ����������.
begin
  AssignFile(f, NewFileName);  // ����� ���������� � ������.
  Rewrite(f);                  // �������� ������ �����.
  write(f, sf1);               // ������ ������ � ����.
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
  CaracterBox.Text:= '������� ��������';
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

 CaracterID.Text := '������� ������ - ' +  inttostr(cc);
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
  if (wstb1.Position)=10 then w1:=44;
  if (wstb1.Position)=9 then w1:=36;
  if (wstb1.Position)=8 then w1:=30;
  if (wstb1.Position)=7 then w1:=24;
  if (wstb1.Position)=6 then w1:=18;
  if (wstb1.Position)=5 then w1:=14;
  if (wstb1.Position)=4 then w1:=10;
  if (wstb1.Position)=3 then w1:=6;
  if (wstb1.Position)=2 then w1:=4;
  if (wstb1.Position)=1 then w1:=2;

  if (wstb2.Position)=10 then w2:=44;
  if (wstb2.Position)=9 then w2:=36;
  if (wstb2.Position)=8 then w2:=30;
  if (wstb2.Position)=7 then w2:=24;
  if (wstb2.Position)=6 then w2:=18;
  if (wstb2.Position)=5 then w2:=14;
  if (wstb2.Position)=4 then w2:=10;
  if (wstb2.Position)=3 then w2:=6;
  if (wstb2.Position)=2 then w2:=4;
  if (wstb2.Position)=1 then w2:=2;

  if (wstb3.Position)=10 then w3:=44;
  if (wstb3.Position)=9 then w3:=36;
  if (wstb3.Position)=8 then w3:=30;
  if (wstb3.Position)=7 then w3:=24;
  if (wstb3.Position)=6 then w3:=18;
  if (wstb3.Position)=5 then w3:=14;
  if (wstb3.Position)=4 then w3:=10;
  if (wstb3.Position)=3 then w3:=6;
  if (wstb3.Position)=2 then w3:=4;
  if (wstb3.Position)=1 then w3:=2;

  if (wstb4.Position)=10 then w4:=44;
  if (wstb4.Position)=9 then w4:=36;
  if (wstb4.Position)=8 then w4:=30;
  if (wstb4.Position)=7 then w4:=24;
  if (wstb4.Position)=6 then w4:=18;
  if (wstb4.Position)=5 then w4:=14;
  if (wstb4.Position)=4 then w4:=10;
  if (wstb4.Position)=3 then w4:=6;
  if (wstb4.Position)=2 then w4:=4;
  if (wstb4.Position)=1 then w4:=2;

  if (wstb5.Position)=10 then w5:=44;
  if (wstb5.Position)=9 then w5:=36;
  if (wstb5.Position)=8 then w5:=30;
  if (wstb5.Position)=7 then w5:=24;
  if (wstb5.Position)=6 then w5:=18;
  if (wstb5.Position)=5 then w5:=14;
  if (wstb5.Position)=4 then w5:=10;
  if (wstb5.Position)=3 then w5:=6;
  if (wstb5.Position)=2 then w5:=4;
  if (wstb5.Position)=1 then w5:=2;

  if (wstb6.Position)=10 then w6:=44;
  if (wstb6.Position)=9 then w6:=36;
  if (wstb6.Position)=8 then w6:=30;
  if (wstb6.Position)=7 then w6:=24;
  if (wstb6.Position)=6 then w6:=18;
  if (wstb6.Position)=5 then w6:=14;
  if (wstb6.Position)=4 then w6:=10;
  if (wstb6.Position)=3 then w6:=6;
  if (wstb6.Position)=2 then w6:=4;
  if (wstb6.Position)=1 then w6:=2;

  if (wstb7.Position)=10 then w7:=44;
  if (wstb7.Position)=9 then w7:=36;
  if (wstb7.Position)=8 then w7:=30;
  if (wstb7.Position)=7 then w7:=24;
  if (wstb7.Position)=6 then w7:=18;
  if (wstb7.Position)=5 then w7:=14;
  if (wstb7.Position)=4 then w7:=10;
  if (wstb7.Position)=3 then w7:=6;
  if (wstb7.Position)=2 then w7:=4;
  if (wstb7.Position)=1 then w7:=2;

  if (wstb8.Position)=10 then w8:=44;
  if (wstb8.Position)=9 then w8:=36;
  if (wstb8.Position)=8 then w8:=30;
  if (wstb8.Position)=7 then w8:=24;
  if (wstb8.Position)=6 then w8:=18;
  if (wstb8.Position)=5 then w8:=14;
  if (wstb8.Position)=4 then w8:=10;
  if (wstb8.Position)=3 then w8:=6;
  if (wstb8.Position)=2 then w8:=4;
  if (wstb8.Position)=1 then w8:=2;

  if (wstb9.Position)=10 then w9:=44;
  if (wstb9.Position)=9 then w9:=36;
  if (wstb9.Position)=8 then w9:=30;
  if (wstb9.Position)=7 then w9:=24;
  if (wstb9.Position)=6 then w9:=18;
  if (wstb9.Position)=5 then w9:=14;
  if (wstb9.Position)=4 then w9:=10;
  if (wstb9.Position)=3 then w9:=6;
  if (wstb9.Position)=2 then w9:=4;
  if (wstb9.Position)=1 then w9:=2;

  if (wstb10.Position)=10 then w10:=44;
  if (wstb10.Position)=9 then w10:=36;
  if (wstb10.Position)=8 then w10:=30;
  if (wstb10.Position)=7 then w10:=24;
  if (wstb10.Position)=6 then w10:=18;
  if (wstb10.Position)=5 then w10:=14;
  if (wstb10.Position)=4 then w10:=10;
  if (wstb10.Position)=3 then w10:=6;
  if (wstb10.Position)=2 then w10:=4;
  if (wstb10.Position)=1 then w10:=2;

{############################################}

  if (rstb1.Position)=10 then r1:=44;
  if (rstb1.Position)=9 then r1:=36;
  if (rstb1.Position)=8 then r1:=30;
  if (rstb1.Position)=7 then r1:=24;
  if (rstb1.Position)=6 then r1:=18;
  if (rstb1.Position)=5 then r1:=14;
  if (rstb1.Position)=4 then r1:=10;
  if (rstb1.Position)=3 then r1:=6;
  if (rstb1.Position)=2 then r1:=4;
  if (rstb1.Position)=1 then r1:=2;

  if (rstb2.Position)=10 then r2:=44;
  if (rstb2.Position)=9 then r2:=36;
  if (rstb2.Position)=8 then r2:=30;
  if (rstb2.Position)=7 then r2:=24;
  if (rstb2.Position)=6 then r2:=18;
  if (rstb2.Position)=5 then r2:=14;
  if (rstb2.Position)=4 then r2:=10;
  if (rstb2.Position)=3 then r2:=6;
  if (rstb2.Position)=2 then r2:=4;
  if (rstb2.Position)=1 then r2:=2;

  if (rstb3.Position)=10 then r3:=44;
  if (rstb3.Position)=9 then r3:=36;
  if (rstb3.Position)=8 then r3:=30;
  if (rstb3.Position)=7 then r3:=24;
  if (rstb3.Position)=6 then r3:=18;
  if (rstb3.Position)=5 then r3:=14;
  if (rstb3.Position)=4 then r3:=10;
  if (rstb3.Position)=3 then r3:=6;
  if (rstb3.Position)=2 then r3:=4;
  if (rstb3.Position)=1 then r3:=2;

  if (rstb4.Position)=10 then r4:=44;
  if (rstb4.Position)=9 then r4:=36;
  if (rstb4.Position)=8 then r4:=30;
  if (rstb4.Position)=7 then r4:=24;
  if (rstb4.Position)=6 then r4:=18;
  if (rstb4.Position)=5 then r4:=14;
  if (rstb4.Position)=4 then r4:=10;
  if (rstb4.Position)=3 then r4:=6;
  if (rstb4.Position)=2 then r4:=4;
  if (rstb4.Position)=1 then r4:=2;

  if (rstb5.Position)=10 then r5:=44;
  if (rstb5.Position)=9 then r5:=36;
  if (rstb5.Position)=8 then r5:=30;
  if (rstb5.Position)=7 then r5:=24;
  if (rstb5.Position)=6 then r5:=18;
  if (rstb5.Position)=5 then r5:=14;
  if (rstb5.Position)=4 then r5:=10;
  if (rstb5.Position)=3 then r5:=6;
  if (rstb5.Position)=2 then r5:=4;
  if (rstb5.Position)=1 then r5:=2;

  if (rstb6.Position)=10 then r6:=44;
  if (rstb6.Position)=9 then r6:=36;
  if (rstb6.Position)=8 then r6:=30;
  if (rstb6.Position)=7 then r6:=24;
  if (rstb6.Position)=6 then r6:=18;
  if (rstb6.Position)=5 then r6:=14;
  if (rstb6.Position)=4 then r6:=10;
  if (rstb6.Position)=3 then r6:=6;
  if (rstb6.Position)=2 then r6:=4;
  if (rstb6.Position)=1 then r6:=2;

  if (rstb7.Position)=10 then r7:=44;
  if (rstb7.Position)=9 then r7:=36;
  if (rstb7.Position)=8 then r7:=30;
  if (rstb7.Position)=7 then r7:=24;
  if (rstb7.Position)=6 then r7:=18;
  if (rstb7.Position)=5 then r7:=14;
  if (rstb7.Position)=4 then r7:=10;
  if (rstb7.Position)=3 then r7:=6;
  if (rstb7.Position)=2 then r7:=4;
  if (rstb7.Position)=1 then r7:=2;

  if (rstb8.Position)=10 then r8:=44;
  if (rstb8.Position)=9 then r8:=36;
  if (rstb8.Position)=8 then r8:=30;
  if (rstb8.Position)=7 then r8:=24;
  if (rstb8.Position)=6 then r8:=18;
  if (rstb8.Position)=5 then r8:=14;
  if (rstb8.Position)=4 then r8:=10;
  if (rstb8.Position)=3 then r8:=6;
  if (rstb8.Position)=2 then r8:=4;
  if (rstb8.Position)=1 then r8:=2;

  if (rstb9.Position)=10 then r9:=44;
  if (rstb9.Position)=9 then r9:=36;
  if (rstb9.Position)=8 then r9:=30;
  if (rstb9.Position)=7 then r9:=24;
  if (rstb9.Position)=6 then r9:=18;
  if (rstb9.Position)=5 then r9:=14;
  if (rstb9.Position)=4 then r9:=10;
  if (rstb9.Position)=3 then r9:=6;
  if (rstb9.Position)=2 then r9:=4;
  if (rstb9.Position)=1 then r9:=2;

  if (rstb10.Position)=10 then r10:=44;
  if (rstb10.Position)=9 then r10:=36;
  if (rstb10.Position)=8 then r10:=30;
  if (rstb10.Position)=7 then r10:=24;
  if (rstb10.Position)=6 then r10:=18;
  if (rstb10.Position)=5 then r10:=14;
  if (rstb10.Position)=4 then r10:=10;
  if (rstb10.Position)=3 then r10:=6;
  if (rstb10.Position)=2 then r10:=4;
  if (rstb10.Position)=1 then r10:=2;

  if (rstb11.Position)=10 then r11:=44;
  if (rstb11.Position)=9 then r11:=36;
  if (rstb11.Position)=8 then r11:=30;
  if (rstb11.Position)=7 then r11:=24;
  if (rstb11.Position)=6 then r11:=18;
  if (rstb11.Position)=5 then r11:=14;
  if (rstb11.Position)=4 then r11:=10;
  if (rstb11.Position)=3 then r11:=6;
  if (rstb11.Position)=2 then r11:=4;
  if (rstb11.Position)=1 then r11:=2;

  if (rstb12.Position)=10 then r12:=44;
  if (rstb12.Position)=9 then r12:=36;
  if (rstb12.Position)=8 then r12:=30;
  if (rstb12.Position)=7 then r12:=24;
  if (rstb12.Position)=6 then r12:=18;
  if (rstb12.Position)=5 then r12:=14;
  if (rstb12.Position)=4 then r12:=10;
  if (rstb12.Position)=3 then r12:=6;
  if (rstb12.Position)=2 then r12:=4;
  if (rstb12.Position)=1 then r12:=2;

{############################################}

  if (tstb1.Position)=10 then t1:=44;
  if (tstb1.Position)=9 then t1:=36;
  if (tstb1.Position)=8 then t1:=30;
  if (tstb1.Position)=7 then t1:=24;
  if (tstb1.Position)=6 then t1:=18;
  if (tstb1.Position)=5 then t1:=14;
  if (tstb1.Position)=4 then t1:=10;
  if (tstb1.Position)=3 then t1:=6;
  if (tstb1.Position)=2 then t1:=4;
  if (tstb1.Position)=1 then t1:=2;

  if (tstb2.Position)=10 then t2:=44;
  if (tstb2.Position)=9 then t2:=36;
  if (tstb2.Position)=8 then t2:=30;
  if (tstb2.Position)=7 then t2:=24;
  if (tstb2.Position)=6 then t2:=18;
  if (tstb2.Position)=5 then t2:=14;
  if (tstb2.Position)=4 then t2:=10;
  if (tstb2.Position)=3 then t2:=6;
  if (tstb2.Position)=2 then t2:=4;
  if (tstb2.Position)=1 then t2:=2;

  if (tstb3.Position)=10 then t3:=44;
  if (tstb3.Position)=9 then t3:=36;
  if (tstb3.Position)=8 then t3:=30;
  if (tstb3.Position)=7 then t3:=24;
  if (tstb3.Position)=6 then t3:=18;
  if (tstb3.Position)=5 then t3:=14;
  if (tstb3.Position)=4 then t3:=10;
  if (tstb3.Position)=3 then t3:=6;
  if (tstb3.Position)=2 then t3:=4;
  if (tstb3.Position)=1 then t3:=2;

  if (tstb4.Position)=10 then t4:=44;
  if (tstb4.Position)=9 then t4:=36;
  if (tstb4.Position)=8 then t4:=30;
  if (tstb4.Position)=7 then t4:=24;
  if (tstb4.Position)=6 then t4:=18;
  if (tstb4.Position)=5 then t4:=14;
  if (tstb4.Position)=4 then t4:=10;
  if (tstb4.Position)=3 then t4:=6;
  if (tstb4.Position)=2 then t4:=4;
  if (tstb4.Position)=1 then t4:=2;

  if (tstb5.Position)=10 then t5:=44;
  if (tstb5.Position)=9 then t5:=36;
  if (tstb5.Position)=8 then t5:=30;
  if (tstb5.Position)=7 then t5:=24;
  if (tstb5.Position)=6 then t5:=18;
  if (tstb5.Position)=5 then t5:=14;
  if (tstb5.Position)=4 then t5:=10;
  if (tstb5.Position)=3 then t5:=6;
  if (tstb5.Position)=2 then t5:=4;
  if (tstb5.Position)=1 then t5:=2;

  if (tstb6.Position)=10 then t6:=44;
  if (tstb6.Position)=9 then t6:=36;
  if (tstb6.Position)=8 then t6:=30;
  if (tstb6.Position)=7 then t6:=24;
  if (tstb6.Position)=6 then t6:=18;
  if (tstb6.Position)=5 then t6:=14;
  if (tstb6.Position)=4 then t6:=10;
  if (tstb6.Position)=3 then t6:=6;
  if (tstb6.Position)=2 then t6:=4;
  if (tstb6.Position)=1 then t6:=2;

  if (tstb7.Position)=10 then t7:=44;
  if (tstb7.Position)=9 then t7:=36;
  if (tstb7.Position)=8 then t7:=30;
  if (tstb7.Position)=7 then t7:=24;
  if (tstb7.Position)=6 then t7:=18;
  if (tstb7.Position)=5 then t7:=14;
  if (tstb7.Position)=4 then t7:=10;
  if (tstb7.Position)=3 then t7:=6;
  if (tstb7.Position)=2 then t7:=4;
  if (tstb7.Position)=1 then t7:=2;

  if (tstb8.Position)=10 then t8:=44;
  if (tstb8.Position)=9 then t8:=36;
  if (tstb8.Position)=8 then t8:=30;
  if (tstb8.Position)=7 then t8:=24;
  if (tstb8.Position)=6 then t8:=18;
  if (tstb8.Position)=5 then t8:=14;
  if (tstb8.Position)=4 then t8:=10;
  if (tstb8.Position)=3 then t8:=6;
  if (tstb8.Position)=2 then t8:=4;
  if (tstb8.Position)=1 then t8:=2;

  if (tstb9.Position)=10 then t9:=44;
  if (tstb9.Position)=9 then t9:=36;
  if (tstb9.Position)=8 then t9:=30;
  if (tstb9.Position)=7 then t9:=24;
  if (tstb9.Position)=6 then t9:=18;
  if (tstb9.Position)=5 then t9:=14;
  if (tstb9.Position)=4 then t9:=10;
  if (tstb9.Position)=3 then t9:=6;
  if (tstb9.Position)=2 then t9:=4;
  if (tstb9.Position)=1 then t9:=2;

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
{general}
{Gender}
  cn1:=cn;
  delete (cn1, 1, (ansipos('{',cn1)-1));
  delete (cn1, (ansipos('}',cn1)), Length(cn1));
  delete (cn1, 1, (Length('{')));
  edit6.Text:=cn1;
{age}
  cn1:=cn;
  delete (cn1, 1, (ansipos('<age>',cn1)-1));
  delete (cn1, (ansipos('</age>',cn1)), Length(cn1));
  delete (cn1, 1, 5);
  edit7.Text:=cn1;
{lvl}
  cn1:=cn;
  delete (cn1, 1, (ansipos('<level>',cn1)-1));
  delete (cn1, (ansipos('</level>',cn1)), Length(cn1));
  delete (cn1, 1, 7);
  edit8.Text:=cn1;
{actual HP}
  cn1:=cn;
  delete (cn1, 1, (ansipos('<curHp>',cn1)-1));
  delete (cn1, (ansipos('</curHp>',cn1)), Length(cn1));
  delete (cn1, 1, 7);
  edit9.Text:=cn1;
{max HP}
  cn1:=cn;
  delete (cn1, 1, (ansipos('<maxHp>',cn1)-1));
  delete (cn1, (ansipos('</maxHp>',cn1)), Length(cn1));
  delete (cn1, 1, 7);
  edit10.Text:=cn1;
{Free SkillPoints}
  cn1:=cn;
  delete (cn1, 1, (ansipos('<availableSkillPoints>',cn1)-1));
  delete (cn1, (ansipos('</availableSkillPoints>',cn1)), Length(cn1));
  delete (cn1, 1, 22);
  edit11.Text:=cn1;
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

 //������ ���� '��������� ������'

    //��������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>bluntWeapons</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>bluntWeapons</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB1.Position:=strtoint(cn1);
  WSTB1.Position:=WSPB1.Position;
  WSL1.Text:=inttostr(WSTB1.Position)+'/10';
  wsi1.Text:=wsl1.Text;

   //���������-�������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>smg</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>smg</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB2.Position:=strtoint(cn1);
  WSTB2.Position:=WSPB2.Position;
  WSL2.Text:=inttostr(WSTB2.Position)+'/10';
  wsi2.Text:=wsl2.Text;

   //����������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>brawling</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>brawling</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB3.Position:=strtoint(cn1);
  WSTB3.Position:=WSPB3.Position;
  WSL3.Text:=inttostr(WSTB3.Position)+'/10';
  wsi3.Text:=wsl3.Text;

    //�����������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>sniperRifle</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>sniperRifle</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB4.Position:=strtoint(cn1);
  WSTB4.Position:=WSPB4.Position;
  WSL4.Text:=inttostr(WSTB4.Position)+'/10';
  wsi4.Text:=wsl4.Text;

  //������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>atWeapons</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>atWeapons</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB5.Position:=strtoint(cn1);
  WSTB5.Position:=WSPB5.Position;
  WSL5.Text:=inttostr(WSTB5.Position)+'/10';
  wsi5.Text:=wsl5.Text;

    //��������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>bladedWeapons</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>bladedWeapons</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB6.Position:=strtoint(cn1);
  WSTB6.Position:=WSPB6.Position;
  WSL6.Text:=inttostr(WSTB6.Position)+'/10';
  wsi6.Text:=wsl6.Text;

  //���������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>rifle</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>rifle</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB7.Position:=strtoint(cn1);
  WSTB7.Position:=WSPB7.Position;
  WSL7.Text:=inttostr(WSTB7.Position)+'/10';
  wsi7.Text:=wsl7.Text;

  //��������������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>energyWeapons</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>energyWeapons</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB8.Position:=strtoint(cn1);
  WSTB8.Position:=WSPB8.Position;
  WSL8.Text:=inttostr(WSTB8.Position)+'/10';
  wsi8.Text:=wsl8.Text;

  //���������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>shotgun</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>shotgun</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB9.Position:=strtoint(cn1);
  WSTB9.Position:=WSPB9.Position;
  WSL9.Text:=inttostr(WSTB9.Position)+'/10';
  wsi9.Text:=wsl9.Text;

   //���������
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>handgun</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>handgun</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  WSPB10.Position:=strtoint(cn1);
  WSTB10.Position:=WSPB10.Position;
  WSL10.Text:=inttostr(WSTB10.Position)+'/10';
  wsi10.Text:=wsl10.Text;


//#######################################################################
// ������ ���� '����� ������'

//������ ������ #1
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>calvinBackerSkill</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>calvinBackerSkill</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB1.Position:=strtoint(cn1);
  RSTB1.Position:=RSPB1.Position;
  RSL1.Text:=inttostr(RSTB1.Position)+'/10';
  rsi1.Text:= RSL1.Text;

//������� #2
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>combatShooting</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>combatShooting</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB2.Position:=strtoint(cn1);
  RSTB2.Position:=RSPB2.Position;
  RSL2.Text:=inttostr(RSTB2.Position)+'/10';
  rsi2.Text:= RSL2.Text;

  //��������� #3
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>outdoorsman</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>outdoorsman</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB3.Position:=strtoint(cn1);
  RSTB3.Position:=RSPB3.Position;
  RSL3.Text:=inttostr(RSTB3.Position)+'/10';
  rsi3.Text:= RSL3.Text;

    //������ ���� #4
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>bruteForce</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>bruteForce</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB4.Position:=strtoint(cn1);
  RSTB4.Position:=RSPB4.Position;
  RSL4.Text:=inttostr(RSTB4.Position)+'/10';
  rsi4.Text:= RSL4.Text;

  //������������ #5
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>animalWhisperer</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>animalWhisperer</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB5.Position:=strtoint(cn1);
  RSTB5.Position:=RSPB5.Position;
  RSL5.Text:=inttostr(RSTB5.Position)+'/10';
  rsi5.Text:= RSL5.Text;

 //������� #6
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>spotLie</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>spotLie</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB6.Position:=strtoint(cn1);
  RSTB6.Position:=RSPB6.Position;
  RSL6.Text:=inttostr(RSTB6.Position)+'/10';
  rsi6.Text:= RSL6.Text;

  //������ #7
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>intimidate</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>intimidate</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB7.Position:=strtoint(cn1);
  RSTB7.Position:=RSPB7.Position;
  RSL7.Text:=inttostr(RSTB7.Position)+'/10';
  rsi7.Text:= RSL7.Text;

    //������ ���� #8
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>perception</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>perception</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB8.Position:=strtoint(cn1);
  RSTB8.Position:=RSPB8.Position;
  RSL8.Text:=inttostr(RSTB8.Position)+'/10';
  rsi8.Text:= RSL8.Text;

  //��������� #9
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>leadership</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>leadership</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB9.Position:=strtoint(cn1);
  RSTB9.Position:=RSPB9.Position;
  RSL9.Text:=inttostr(RSTB9.Position)+'/10';
  rsi9.Text:= RSL9.Text;

   //������ #10
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>barter</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>barter</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB10.Position:=strtoint(cn1);
  RSTB10.Position:=RSPB10.Position;
  RSL10.Text:=inttostr(RSTB10.Position)+'/10';
  rsi10.Text:= RSL10.Text;

  //��������� #11
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>weaponSmith</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>weaponSmith</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB11.Position:=strtoint(cn1);
  RSTB11.Position:=RSPB11.Position;
  RSL11.Text:=inttostr(RSTB11.Position)+'/10';
  rsi11.Text:= RSL11.Text;

  //���������� #12
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>manipulate</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>manipulate</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  RSPB12.Position:=strtoint(cn1);
  RSTB12.Position:=RSPB12.Position;
  RSL12.Text:=inttostr(RSTB12.Position)+'/10';
  rsi12.Text:= RSL12.Text;


//������ ���� '����������� ������'

  //������������� #1
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>demolitions</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>demolitions</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB1.Position:=strtoint(cn1);
  TSTB1.Position:=TSPB1.Position;
  TSL1.Text:=inttostr(TSTB1.Position)+'/10';
  Tsi1.Text:= TSL1.Text;

  //���������� #2
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>computerTech</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>computerTech</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB2.Position:=strtoint(cn1);
  TSTB2.Position:=TSPB2.Position;
  TSL2.Text:=inttostr(TSTB2.Position)+'/10';
  Tsi2.Text:= TSL2.Text;

  //�������� #3
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>mechanicalRepair</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>mechanicalRepair</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB3.Position:=strtoint(cn1);
  TSTB3.Position:=TSPB3.Position;
  TSL3.Text:=inttostr(TSTB3.Position)+'/10';
  Tsi3.Text:= TSL3.Text;

  //������� �������� #4
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>fieldMedic</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>fieldMedic</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB4.Position:=strtoint(cn1);
  TSTB4.Position:=TSPB4.Position;
  TSL4.Text:=inttostr(TSTB4.Position)+'/10';
  Tsi4.Text:= TSL4.Text;

  //������ �������� #5
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>toasterRepair</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>toasterRepair</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB5.Position:=strtoint(cn1);
  TSTB5.Position:=TSPB5.Position;
  TSL5.Text:=inttostr(TSTB5.Position)+'/10';
  Tsi5.Text:= TSL5.Text;

  //������ ������������ #6
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>alarmDisarm</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>alarmDisarm</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB6.Position:=strtoint(cn1);
  TSTB6.Position:=TSPB6.Position;
  TSL6.Text:=inttostr(TSTB6.Position)+'/10';
  Tsi6.Text:= TSL6.Text;

  //�������� #7
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>doctor</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>doctor</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB7.Position:=strtoint(cn1);
  TSTB7.Position:=TSPB7.Position;
  TSL7.Text:=inttostr(TSTB7.Position)+'/10';
  Tsi7.Text:= TSL7.Text;

  //����� ������ #8
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>safecrack</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>safecrack</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB8.Position:=strtoint(cn1);
  TSTB8.Position:=TSPB8.Position;
  TSL8.Text:=inttostr(TSTB8.Position)+'/10';
  Tsi8.Text:= TSL8.Text;

  //����� ������ #9
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>pickLock</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>pickLock</Key><Value>')));
  //������� � ���������� ��������
    if cn1= '2' then cn1:='1';
    if cn1= '4' then cn1 :='2';
    if cn1= '6' then cn1:='3';
    if cn1= '10' then cn1 :='4';
    if cn1= '14' then cn1:='5';
    if cn1= '18' then cn1 :='6';
    if cn1= '24' then cn1:='7';
    if cn1= '30' then cn1 :='8';
    if cn1= '36' then cn1:='9';
    if cn1= '44' then cn1 :='10';
  // ����������� ��������
  TSPB9.Position:=strtoint(cn1);
  TSTB9.Position:=TSPB9.Position;
  TSL9.Text:=inttostr(TSTB9.Position)+'/10';
  Tsi9.Text:= TSL9.Text;

//#######################################################################
// ��������

//����������� #1
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>coordination</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>coordination</Key><Value>')));
  // ����������� ��������
  ASPB1.Position:=strtoint(cn1);
  ASTB1.Position:=ASPB1.Position;
  ASL1.Text:=inttostr(ASTB1.Position)+'/10';
  Asi1.Text:= ASL1.Text;

//����� #2
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>luck</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>luck</Key><Value>')));
  // ����������� ��������
  ASPB2.Position:=strtoint(cn1);
  ASTB2.Position:=ASPB2.Position;
  ASL2.Text:=inttostr(ASTB2.Position)+'/10';
  Asi2.Text:= ASL2.Text;

//���������� #3
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>awareness</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>awareness</Key><Value>')));
  // ����������� ��������
  ASPB3.Position:=strtoint(cn1);
  ASTB3.Position:=ASPB3.Position;
  ASL3.Text:=inttostr(ASTB3.Position)+'/10';
  Asi3.Text:= ASL3.Text;

//���� #4
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>strength</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>strength</Key><Value>')));
  // ����������� ��������
  ASPB4.Position:=strtoint(cn1);
  ASTB4.Position:=ASPB4.Position;
  ASL4.Text:=inttostr(ASTB4.Position)+'/10';
  Asi4.Text:= ASL4.Text;

//�������� #5
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>speed</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>speed</Key><Value>')));
  // ����������� ��������
  ASPB5.Position:=strtoint(cn1);
  ASTB5.Position:=ASPB5.Position;
  ASL5.Text:=inttostr(ASTB5.Position)+'/10';
  Asi5.Text:= ASL5.Text;

//��������� #6
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>intelligence</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>intelligence</Key><Value>')));
   // ����������� ��������
  ASPB6.Position:=strtoint(cn1);
  ASTB6.Position:=ASPB6.Position;
  ASL6.Text:=inttostr(ASTB6.Position)+'/10';
  Asi6.Text:= ASL6.Text;

//������� #7
  cn1:=cn;
  delete (cn1, 1, (ansipos('KeyValuePairOfStringInt32><Key>charisma</Key><Value>',cn1)-1));
  delete (cn1, (ansipos('</Value>',cn1)), Length(cn1));
  delete (cn1, 1, (Length('KeyValuePairOfStringInt32><Key>charisma</Key><Value>')));
   // ����������� ��������
  ASPB7.Position:=strtoint(cn1);
  ASTB7.Position:=ASPB7.Position;
  ASL7.Text:=inttostr(ASTB7.Position)+'/10';
  Asi7.Text:= ASL7.Text;

end;


procedure TWL2CED.WSTB1Change(Sender: TObject);
begin
  // ������ � TrackBar
  //'���������'  ������
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

  // '�����'
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

  // '�����������'
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
