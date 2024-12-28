unit WL2.SavegameEditor;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.XPMan, Vcl.ExtCtrls, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, Vcl.DBCtrls, WL2.Classes, Vcl.Mask, System.Skia, Vcl.Skia,
  System.Classes;

type
  TfrmWL2Main = class(TForm)
    Btn_OpenSave: TButton;
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
    MIt_AboutProject: TMenuItem;
    OpenDialog: TOpenDialog;
    CmbbCaracters: TComboBox;
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
    MELinkedIn: TMenuItem;
    MEContactDev: TMenuItem;
    MEXing: TMenuItem;
    procedure Btn_QuitClick(Sender: TObject);
    procedure MIt_AboutProjectClick(Sender: TObject);
    procedure Btn_OpenSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_RRSaveClick(Sender: TObject);
    procedure MIt_CoffeeClick(Sender: TObject);
    procedure MIt_HowToUseClick(Sender: TObject);
    procedure MIt_ToRusClick(Sender: TObject);
    procedure MIt_ToEngClick(Sender: TObject);
    procedure MIt_FollowUsClick(Sender: TObject);
    procedure MIt_FollowPatreonClick(Sender: TObject);
    procedure MELinkedInClick(Sender: TObject);
    procedure CmbbCaractersSelect(Sender: TObject);
    procedure SyncCaracterValues(Sender: TObject);
    procedure SyncTrackBarPosition(Sender: TObject);
    procedure MEXingClick(Sender: TObject);

  strict private
    fSelectedLangId: Integer;

  private
    { Private declarations }
  public
    property SelectedLangId: Integer read fSelectedLangId write fSelectedLangId;

  end;

const
  CurrentVersion = '3.0.01';

  ChannelLnk = 'https://www.youtube.com/channel/UCyniVlUauJ1iWYyo-vHfGlA';
  PatreonLnk = 'https://www.patreon.com/Tokeshy';
  CoffeeLnk = 'https://www.paypal.com/donate/?hosted_button_id=6H3WDBHQ3MEC6';
  ProjLnk = 'https://sonkjeferson.wixsite.com/wastelandschared2';
  LinkInLnk = 'https://www.linkedin.com/in/vitaliherasimenia/';
  XingLink = 'https://www.xing.com/profile/Vitali_Herasimenia';
  Wl2FormatCorrespondence: array [1 .. 11] of array [0 .. 1] of integer = ((0, 0), (1, 2), (2, 4), (3, 6), (4, 10), (5, 14), (6, 18), (7, 24), (8, 30), (9, 36), (10, 44));

var
  SaveGameData: TSaveGameData;
  PreSelectedCaracter: integer;
  frmWL2Main: TfrmWL2Main;

implementation

{$R *.dfm}
uses
  WL2.EditorInterface, System.IOUtils, Wl2.Utilities, WinAPI.Windows;

procedure TfrmWL2Main.MIt_FollowPatreonClick(Sender: TObject);
begin
  OpenLink(PatreonLnk);
end;

procedure TfrmWL2Main.MIt_FollowUsClick(Sender: TObject);
begin
   OpenLink(ChannelLnk);
end;

procedure TfrmWL2Main.MELinkedInClick(Sender: TObject);
begin
  OpenLink(LinkInLnk);
end;

procedure TfrmWL2Main.MEXingClick(Sender: TObject);
begin
  OpenLink(Pchar(XingLink));
end;

procedure TfrmWL2Main.MIt_CoffeeClick(Sender: TObject);
begin
  OpenLink(CoffeeLnk);
end;

procedure TfrmWL2Main.MIt_HowToUseClick(Sender: TObject);
begin
   OpenLink(Pchar(VideoLink));
end;

procedure TfrmWL2Main.MIt_AboutProjectClick(Sender: TObject);
begin
  OpenLink(ProjLnk);
end;

procedure TfrmWL2Main.Btn_QuitClick(Sender: TObject);
begin
  if (frmWL2Main.Edt_SelectedCrt.text <> UnitDataCaptions[40][SelectedLangId]) then
    if MessageDlg(SaveRequestText[SelectedLangId], mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      SaveGameData.UpdateCaracter(CmbbCaracters.ItemIndex, SetNewSkillValues(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex)));
      SyncInterfaceAndCaracterData(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex));
      SaveGameData.SaveChanges();
    end;
  application.Terminate;
end;

procedure TfrmWL2Main.MIt_ToRusClick(Sender: TObject);
begin
  SelectedLangId := 1;
  Translate(SelectedLangId);
end;


procedure TfrmWL2Main.MIt_ToEngClick(Sender: TObject);
begin
  SelectedLangId := 0;
  Translate(SelectedLangId);
end;

procedure TfrmWL2Main.FormCreate(Sender: TObject);
begin
  frmWL2Main.Caption := frmWL2Main.Caption + CurrentVersion;
  SelectedLangId := 0;
  Translate(SelectedLangId);
  Mem_CrBio.Clear;
end;

procedure TfrmWL2Main.Btn_RRSaveClick(Sender: TObject);
begin
  SaveGameData.UpdateCaracter(CmbbCaracters.ItemIndex, SetNewSkillValues(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex)));

  if SaveGameData.SaveChanges() then
    MessageDlg(SavingMessage[1][SelectedLangId], mtInformation, [mbOk], 0, mbOk)
  else
    MessageDlg(SavingMessage[0][SelectedLangId], mtInformation, [mbOk], 0, mbOk)
end;

procedure TfrmWL2Main.Btn_OpenSaveClick(Sender: TObject);
begin
  openDialog.InitialDir := GetCurrentDir;
  openDialog.Filter := 'Wasteland2 Save Games files|*.xml';
  if OpenDialog.Execute and fileexists(OpenDialog.FileName) then
  begin
    CmbbCaracters.Clear;
    SaveGameData := TSaveGameData.Create(OpenDialog.FileName);
    PreSelectedCaracter := 0;

    Edt_SelectedCrt.Text := SaveGameData.NameOfFile;
    Edt_SelectedCrt.Hint := SaveGameData.FileLocation;

    CmbbCaracters.Items := SaveGameData.CaracterList;
    CmbbCaracters.Hint := CmbbCaracterHint[SelectedLangId][0] + inttostr(CmbbCaracters.Items.Count) + CmbbCaracterHint[SelectedLangId][1];
    CmbbCaracters.Enabled := True;
    CmbbCaracters.TextHint := CmbbCaracterTextsHint[SelectedLangId];
  end;
end;

procedure TfrmWL2Main.CmbbCaractersSelect(Sender: TObject);
begin
  var lSelectedCaracterData := SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex);

  Btn_RRSave.Enabled := lSelectedCaracterData.UnitName <> String.empty;
  SkillBrowsCntr.Enabled := lSelectedCaracterData.UnitName <> String.empty;

  SyncInterfaceAndCaracterData(lSelectedCaracterData);
  PreSelectedCaracter := CmbbCaracters.ItemIndex;
end;

procedure TfrmWL2Main.SyncCaracterValues(Sender: TObject);
begin
  SaveGameData.UpdateCaracter(CmbbCaracters.ItemIndex, SetNewSkillValues(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex)));
  SyncInterfaceAndCaracterData(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex));
end;

procedure TfrmWL2Main.SyncTrackBarPosition(Sender: TObject);
begin
  RefreshValuesByTrackBar();
end;

end.

