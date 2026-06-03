unit WL2.SavegameEditor;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.XPMan, Vcl.ExtCtrls, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, Vcl.DBCtrls, WL2.Classes, Vcl.Mask, System.Skia, Vcl.Skia,
  System.Classes, WL2.Resources;

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
    Edt_WpnS: array[1..10] of TEdit;
    WSPB: array[1..10] of TProgressBar;
    WSTB: array[1..10] of TTrackBar;
    WSL: array[1..10] of TEdit;
    WSI: array[1..10] of TEdit;
    Edt_RS: array[1..12] of TEdit;
    RSPB: array[1..12] of TProgressBar;
    RSTB: array[1..12] of TTrackBar;
    RSL: array[1..12] of TEdit;
    RSI: array[1..12] of TEdit;
    Edt_TechS: array[1..9] of TEdit;
    TSPB: array[1..9] of TProgressBar;
    TSTB: array[1..9] of TTrackBar;
    TSL: array[1..9] of TEdit;
    TSI: array[1..9] of TEdit;
    Edt_AS: array[1..7] of TEdit;
    ASPB: array[1..7] of TProgressBar;
    ASTB: array[1..7] of TTrackBar;
    ASL: array[1..7] of TEdit;
    ASI: array[1..7] of TEdit;
  public
    property SelectedLangId: Integer read fSelectedLangId write fSelectedLangId;

  end;

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
  OpenLink(WL2.Resources.PatreonLnk);
end;

procedure TfrmWL2Main.MIt_FollowUsClick(Sender: TObject);
begin
   OpenLink(WL2.Resources.ChannelLnk);
end;

procedure TfrmWL2Main.MELinkedInClick(Sender: TObject);
begin
  OpenLink(WL2.Resources.LinkInLnk);
end;

procedure TfrmWL2Main.MEXingClick(Sender: TObject);
begin
  OpenLink(Pchar(WL2.Resources.XingLink));
end;

procedure TfrmWL2Main.MIt_CoffeeClick(Sender: TObject);
begin
  OpenLink(WL2.Resources.CoffeeLnk);
end;

procedure TfrmWL2Main.MIt_HowToUseClick(Sender: TObject);
begin
   OpenLink(Pchar(WL2.Resources.VideoLink));
end;

procedure TfrmWL2Main.MIt_AboutProjectClick(Sender: TObject);
begin
  OpenLink(WL2.Resources.ProjLnk);
end;

procedure TfrmWL2Main.Btn_QuitClick(Sender: TObject);
begin
  if (frmWL2Main.Edt_SelectedCrt.text <> WL2.Resources.UnitDataCaptions[40][SelectedLangId]) then
    if MessageDlg(WL2.Resources.SaveRequestText[SelectedLangId], mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
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
var
  i: integer;
begin
  frmWL2Main.Caption := frmWL2Main.Caption + WL2.Resources.CurrentVersion;
  SelectedLangId := 0;
  Translate(SelectedLangId);
  Mem_CrBio.Clear;

  // Initialize component arrays
  for i := 1 to 10 do
  begin
    Edt_WpnS[i] := TEdit(FindComponent('Edt_WpnS' + IntToStr(i)));
    WSPB[i] := TProgressBar(FindComponent('WSPB' + IntToStr(i)));
    WSTB[i] := TTrackBar(FindComponent('WSTB' + IntToStr(i)));
    WSL[i] := TEdit(FindComponent('WSL' + IntToStr(i)));
    WSI[i] := TEdit(FindComponent('WSI' + IntToStr(i)));
  end;
  for i := 1 to 12 do
  begin
    Edt_RS[i] := TEdit(FindComponent('Edt_RS' + IntToStr(i)));
    RSPB[i] := TProgressBar(FindComponent('RSPB' + IntToStr(i)));
    RSTB[i] := TTrackBar(FindComponent('RSTB' + IntToStr(i)));
    RSL[i] := TEdit(FindComponent('RSL' + IntToStr(i)));
    RSI[i] := TEdit(FindComponent('RSI' + IntToStr(i)));
  end;
  for i := 1 to 9 do
  begin
    Edt_TechS[i] := TEdit(FindComponent('Edt_TechS' + IntToStr(i)));
    TSPB[i] := TProgressBar(FindComponent('TSPB' + IntToStr(i)));
    TSTB[i] := TTrackBar(FindComponent('TSTB' + IntToStr(i)));
    TSL[i] := TEdit(FindComponent('TSL' + IntToStr(i)));
    TSI[i] := TEdit(FindComponent('TSI' + IntToStr(i)));
  end;
  for i := 1 to 7 do
  begin
    Edt_AS[i] := TEdit(FindComponent('Edt_AS' + IntToStr(i)));
    ASPB[i] := TProgressBar(FindComponent('ASPB' + IntToStr(i)));
    ASTB[i] := TTrackBar(FindComponent('ASTB' + IntToStr(i)));
    ASL[i] := TEdit(FindComponent('ASL' + IntToStr(i)));
    ASI[i] := TEdit(FindComponent('ASI' + IntToStr(i)));
  end;
end;

procedure TfrmWL2Main.Btn_RRSaveClick(Sender: TObject);
begin
  try
    SaveGameData.UpdateCaracter(CmbbCaracters.ItemIndex, SetNewSkillValues(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex)));

    if SaveGameData.SaveChanges() then
      MessageDlg(WL2.Resources.SavingMessage[1][SelectedLangId], mtInformation, [mbOk], 0, mbOk)
    else
      MessageDlg(WL2.Resources.SavingMessage[0][SelectedLangId], mtInformation, [mbOk], 0, mbOk)
  except
    on E: Exception do
      MessageDlg('Error saving changes: ' + E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmWL2Main.Btn_OpenSaveClick(Sender: TObject);
begin
  openDialog.InitialDir := GetCurrentDir;
  openDialog.Filter := 'Wasteland2 Save Games files|*.xml';
  if OpenDialog.Execute and fileexists(OpenDialog.FileName) then
  begin
    try
      CmbbCaracters.Clear;
      SaveGameData := TSaveGameData.Create(OpenDialog.FileName);
      PreSelectedCaracter := 0;

      Edt_SelectedCrt.Text := SaveGameData.NameOfFile;
      Edt_SelectedCrt.Hint := SaveGameData.FileLocation;

      CmbbCaracters.Items := SaveGameData.CaracterList;
      CmbbCaracters.Hint := CmbbCaracterHint[SelectedLangId][0] + inttostr(CmbbCaracters.Items.Count) + CmbbCaracterHint[SelectedLangId][1];
      CmbbCaracters.Enabled := True;
      CmbbCaracters.TextHint := CmbbCaracterTextsHint[SelectedLangId];
    except
      on E: Exception do
      begin
        MessageDlg('Error loading save file: ' + E.Message, mtError, [mbOk], 0);
        CmbbCaracters.Enabled := False;
        Edt_SelectedCrt.Text := '';
        Edt_SelectedCrt.Hint := '';
      end;
    end;
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
  try
    SaveGameData.UpdateCaracter(CmbbCaracters.ItemIndex, SetNewSkillValues(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex)));
    SyncInterfaceAndCaracterData(SaveGameData.GetCaracterData(CmbbCaracters.ItemIndex));
  except
    on E: Exception do
      MessageDlg('Error updating character values: ' + E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmWL2Main.SyncTrackBarPosition(Sender: TObject);
begin
  RefreshValuesByTrackBar();
end;

end.

