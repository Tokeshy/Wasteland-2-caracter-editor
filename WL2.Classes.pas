unit WL2.Classes;

interface

uses
  System.Classes;

type
  tArrayOfString = array of string;

  TCaracterData = class
    strict private
      fUnitId: integer;
      fUnitName: String;
      fLevel: String;
      fAge: String;
      fSex: String;
      fCurrentHP: String;
      fMaxHP: String;
      fFreeSkillPoints: String;
      fBiography: String;
      fDefaultTextRecord: String;
      fWasUpdated: Boolean;

      fWeaponsSkillSet: array [1 .. 10] of string;
      fGeneralSkillSet: array [1 .. 12] of string;
      fTechnicalSkillSet: array [1 .. 9] of string;
      fAttributesSkillSet: array [1 .. 7] of string;
    public
      constructor Create;
      destructor Destroy();

      property UnitId: Integer read fUnitId write fUnitId;
      property UnitName: String read fUnitName write fUnitName;
      property Level: String read fLevel write fLevel;
      property Age: String read fAge write fAge;
      property Sex: String read fSex write fSex;
      property CurrentHP: String read fCurrentHP write fCurrentHP;
      property MaxHP: String read fMaxHP write fMaxHP;
      property FreeSkillPoints: String read fFreeSkillPoints write fFreeSkillPoints;
      property Biography: String read fBiography write fBiography;
      property DefaultTextRecord: String read fDefaultTextRecord write fDefaultTextRecord;
      property ReadOnlyDefaultTextRecord: String read fDefaultTextRecord;
      property WasUpdated: Boolean read fWasUpdated write fWasUpdated;

      procedure SetWeaponSkill(const aSkillId: integer; const aSkillValue: String);
      procedure SetGeneralSkill(const aSkillId: integer; const aSkillValue: String);
      procedure SetTechnicalSkill(const aSkillId: integer; const aSkillValue: String);
      procedure SetAttributesSkill(const aSkillId: integer; const aSkillValue: String);

      function GetWeaponSkill(const aSkillId: integer): String;
      function GetGeneralSkill(const aSkillId: integer): String;
      function GetTechnicalSkill(const aSkillId: integer): String;
      function GetAttributesSkill(const aSkillId: integer): String;
      function GetCaracterSkillsText(): String;
      procedure RestoreCaracterData(const aCaracterID: Integer);
  end;

  TSaveGameData = class
    strict private
      fNameOfFile: String;
      fSaveGameBody: String;
      fLocationOfSourceFile: String;
      fCaracterList: TStringList;
      fPrefix: String;
      fPostfix: String;
      fCaracterSet: Array of TCaracterData;
    public
      constructor Create(const aSaveGameFullFileName: string);
      destructor Destroy();

      Function SaveChanges(): Boolean;
      procedure ReloadSource();
      procedure ScanSourceForCaracters();
      procedure UpdateCaracter(const aCaracterID: integer; const aCaracterData: TCaracterData);

      function GetDefaultFileName(): string;
      function GetCaracterData(const aCaracterID: integer): TCaracterData;
      function SaveCaractersData(): Boolean;

      property NameOfFile: String read fNameOfFile;
      property FileLocation: String read fLocationOfSourceFile write fLocationOfSourceFile;
      property CaracterList: TStringList read fCaracterList;
      property Prefix: String read fPrefix write fPrefix;
      property Postfix: String read fPostfix write fPostfix;
      property SaveGameBody: String read fSaveGameBody;

end;

  const
    SkillPrefixes: array [0..2] of String = ('</Key><Value>', '<pair><key>', '</Value></KeyValuePairOfStringInt32><KeyValuePairOfStringInt32><Key>');
    CaracterNamePrefixes: String = '</name><displayName><@>';
    BiographyPrefixes: array [0..1] of String = ('<biography><@>', '</biography>' );
    CaractersDataEnd: String = '</value></pair></skillXps>';

    WeaponSkills: array [1 .. 10] of string = ('bluntWeapons', 'smg', 'brawling', 'sniperRifle', 'atWeapons', 'bladedWeapons', 'rifle', 'energyWeapons', 'shotgun', 'handgun');
    GeneralSkills: array [1 .. 12] of string = ('calvinBackerSkill', 'combatShooting', 'outdoorsman', 'bruteForce', 'animalWhisperer', 'spotLie', 'intimidate', 'perception', 'leadership', 'barter', 'weaponSmith', 'manipulate');
    TechnicalSkills: array [1 .. 9] of string = ('demolitions', 'computerTech', 'mechanicalRepair', 'fieldMedic', 'toasterRepair', 'alarmDisarm', 'doctor', 'safecrack', 'pickLock');
    Attributes: array [1 .. 7] of string = ('coordination', 'luck', 'awareness', 'strength', 'speed', 'intelligence', 'charisma');

  function GetSkillPrefix(const aPrefixIndex: Integer): String;
  function ParceRawDataToCaracter(const aSourceData, aCaracterName: String; const aCaracterID: integer): TCaracterData;

implementation
  uses
    Wl2.Utilities, WL2.EditorInterface, System.SysUtils, System.IOUtils, vcl.Dialogs;

constructor TCaracterData.Create;
begin

end;

destructor TCaracterData.Destroy;
begin

end;

procedure TCaracterData.SetWeaponSkill(const aSkillId: integer; const aSkillValue: String);
begin
  Self.fWeaponsSkillSet[aSkillId] := aSkillValue;
end;

procedure TCaracterData.SetGeneralSkill(const aSkillId: integer; const aSkillValue: String);
begin
  Self.fGeneralSkillSet[aSkillId] := aSkillValue;
end;

procedure TCaracterData.SetTechnicalSkill(const aSkillId: integer; const aSkillValue: String);
begin
  Self.fTechnicalSkillSet[aSkillId] := aSkillValue;
end;

procedure TCaracterData.SetAttributesSkill(const aSkillId: integer; const aSkillValue: String);
begin
  Self.fAttributesSkillSet[aSkillId] := aSkillValue;
end;

function TCaracterData.GetWeaponSkill(const aSkillId: integer): String;
begin
  Result := Self.fWeaponsSkillSet[aSkillId];
end;

function TCaracterData.GetGeneralSkill(const aSkillId: integer): String;
begin
  Result := Self.fGeneralSkillSet[aSkillId];
end;

function TCaracterData.GetTechnicalSkill(const aSkillId: integer): String;
begin
  Result := Self.fTechnicalSkillSet[aSkillId];
end;

function TCaracterData.GetAttributesSkill(const aSkillId: integer): String;
begin
  Result := Self.fAttributesSkillSet[aSkillId];
end;

function TCaracterData.GetCaracterSkillsText(): String;
begin
  Result := String.empty;
  Result := Result + '<attributes><pair><key>coordination</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(1));
  Result := Result + '</value></pair><pair><key>luck</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(2));
  Result := Result + '</value></pair><pair><key>awareness</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(3));
  Result := Result + '</value></pair><pair><key>strength</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(4));
  Result := Result + '</value></pair><pair><key>speed</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(5));
  Result := Result + '</value></pair><pair><key>intelligence</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(6));
  Result := Result + '</value></pair><pair><key>charisma</key><value>' + DigitAttributeValueToRaw(Self.GetAttributesSkill(7));

  Result := Result + '</value></pair></attributes><skillXps><pair><key>alarmDisarm</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(6));
  Result := Result + '</value></pair><pair><key>animalWhisperer</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(5));
  Result := Result + '</value></pair><pair><key>atWeapons</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(5));
  Result := Result + '</value></pair><pair><key>barter</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(10));
  Result := Result + '</value></pair><pair><key>bladedWeapons</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(6));
  Result := Result + '</value></pair><pair><key>bluntWeapons</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(1));
  Result := Result + '</value></pair><pair><key>brawling</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(3));
  Result := Result + '</value></pair><pair><key>bruteForce</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(4));
  Result := Result + '</value></pair><pair><key>calvinBackerSkill</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(1));
  Result := Result + '</value></pair><pair><key>combatShooting</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(2));
  Result := Result + '</value></pair><pair><key>computerTech</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(2));
  Result := Result + '</value></pair><pair><key>demolitions</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(1));
  Result := Result + '</value></pair><pair><key>doctor</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(7));
  Result := Result + '</value></pair><pair><key>energyWeapons</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(8));
  Result := Result + '</value></pair><pair><key>fieldMedic</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(4));
  Result := Result + '</value></pair><pair><key>handgun</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(10));
  Result := Result + '</value></pair><pair><key>intimidate</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(7));
  Result := Result + '</value></pair><pair><key>leadership</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(9));
  Result := Result + '</value></pair><pair><key>manipulate</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(12));
  Result := Result + '</value></pair><pair><key>mechanicalRepair</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(3));
  Result := Result + '</value></pair><pair><key>outdoorsman</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(3));
  Result := Result + '</value></pair><pair><key>perception</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(8));
  Result := Result + '</value></pair><pair><key>pickLock</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(9));
  Result := Result + '</value></pair><pair><key>rifle</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(7));
  Result := Result + '</value></pair><pair><key>safecrack</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(8));
  Result := Result + '</value></pair><pair><key>shotgun</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(9));
  Result := Result + '</value></pair><pair><key>smg</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(2));
  Result := Result + '</value></pair><pair><key>sniperRifle</key><value>' + DigitSkillValueToRaw(Self.GetWeaponSkill(4));
  Result := Result + '</value></pair><pair><key>spotLie</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(6));
  Result := Result + '</value></pair><pair><key>toasterRepair</key><value>' + DigitSkillValueToRaw(Self.GetTechnicalSkill(5));
  Result := Result + '</value></pair><pair><key>weaponSmith</key><value>' + DigitSkillValueToRaw(Self.GetGeneralSkill(11));
end;

procedure TCaracterData.RestoreCaracterData(const aCaracterID: Integer);
begin

end;

constructor TSaveGameData.Create(const aSaveGameFullFileName: string);
begin
  fNameOfFile := CutextensionEnding(ExtractFileName(aSaveGameFullFileName));
  fLocationOfSourceFile := aSaveGameFullFileName;
  fSaveGameBody := LoadAsText(GetDefaultFileName);
  fCaracterList := TStringList.Create;
  ScanSourceForCaracters();
end;

destructor TSaveGameData.Destroy();
begin
  fCaracterList.Destroy;
  inherited;
end;

Function TSaveGameData.SaveChanges(): boolean;
begin
  Result := False;
  var lBackupCopyName: String := fLocationOfSourceFile + '.back';
  if fileexists(lBackupCopyName) then
    DeleteFile(lBackupCopyName);
  RenameFile(fLocationOfSourceFile, lBackupCopyName);
  if SaveCaractersData() then
  begin
    if SaveAsText(CutextensionEnding(fLocationOfSourceFile + '.txt'), SaveGameBody) then
      RenameFile(CutextensionEnding(fLocationOfSourceFile + '.txt'), fLocationOfSourceFile);
    Result := True;
  end
  else
    RenameFile(lBackupCopyName, fLocationOfSourceFile);
end;

procedure TSaveGameData.ReloadSource();
begin
  fSaveGameBody := LoadAsText(fLocationOfSourceFile);
end;

procedure TSaveGameData.ScanSourceForCaracters();
begin
  fCaracterList.Clear;
  var lTempString: String := fSaveGameBody;
  for var i: integer := 0 to Length(lTempString) - Length(CaracterNamePrefixes) do
  begin
    if copy(lTempString, i, Length(CaracterNamePrefixes)) = CaracterNamePrefixes then
    begin
      var lCaracterName: String := copy(lTempString, i, Length(CaracterNamePrefixes) + 50);
      delete (lCaracterName, 1, Length(CaracterNamePrefixes));
      delete (lCaracterName, (pos('{',lCaracterName)), Length(lCaracterName));
      fCaracterList.add(lCaracterName);
    end;
  end;
  SetLength(fCaracterSet, fCaracterList.Count);
  for var lCaracterCounter: Integer := 0 to fCaracterList.Count - 1 do
  begin
    var lCurrentCaracterData := ParceRawDataToCaracter(SaveGameBody, fCaracterList[lCaracterCounter], lCaracterCounter);
    UpdateCaracter(lCaracterCounter, lCurrentCaracterData);
  end;
end;

procedure TSaveGameData.UpdateCaracter(const aCaracterID: integer; const aCaracterData: TCaracterData);
begin
  aCaracterData.WasUpdated := True;
  fCaracterSet[aCaracterID] := aCaracterData;
end;

function TSaveGameData.GetDefaultFileName(): String;
begin
  Result := fLocationOfSourceFile;
end;

function TSaveGameData.GetCaracterData(const aCaracterID: integer): TCaracterData;
begin
  Result := fCaracterSet[aCaracterID];
end;

function TSaveGameData.SaveCaractersData(): Boolean;
var
  lTextFile: tFile;
begin
  Result := false;
  for var lCaracterCounter: Integer := 0 to fCaracterList.Count - 1 do
  begin
    var lTempPrefix: String := copy(SaveGameBody, 1, pos(fCaracterList[lCaracterCounter], SaveGameBody) - 1);
    var lPostfix: String := SaveGameBody;
    delete(lPostfix, 1, length(lTempPrefix) - 1);
    var lCaracterStaticPart: String := lPostfix;
    delete(lPostfix, 1, pos(CaractersDataEnd, lPostfix) - 1);
    lCaracterStaticPart := copy(lCaracterStaticPart, 2, pos('<attributes><pair><key>', lCaracterStaticPart) - 2);
    var lCaracterSkillsSet: String := fCaracterSet[lCaracterCounter].DefaultTextRecord;
    if fCaracterSet[lCaracterCounter].WasUpdated then
    begin
      lCaracterSkillsSet := fCaracterSet[lCaracterCounter].GetCaracterSkillsText;
      fSaveGameBody := lTempPrefix + lCaracterStaticPart + lCaracterSkillsSet + lPostfix;
    end
    else
      fSaveGameBody := lTempPrefix + lCaracterStaticPart + lPostfix;
  end;
  Result := True;
end;

function GetSkillPrefix(const aPrefixIndex: Integer): String;
begin
  Result := SkillPrefixes[aPrefixIndex];
end;

function ParceRawDataToCaracter(const aSourceData, aCaracterName: String; const aCaracterID: integer): TCaracterData;
begin
  var lWorkTempStr: String := copy(aSourceData, pos(aCaracterName, aSourceData), length(aSourceData));
  delete (lWorkTempStr, (pos(CaractersDataEnd, lWorkTempStr)), Length(lWorkTempStr));
  Result := TCaracterData.Create;

  with Result do
  begin
    WasUpdated := False;
    DefaultTextRecord := lWorkTempStr;
    UnitId := aCaracterID;
    UnitName := aCaracterName;
    Sex := copy(lWorkTempStr, length(aCaracterName) + 2, 1);
    Age := CleanRawData(lWorkTempStr, 'age>', 5);
    Level := CleanRawData(lWorkTempStr, 'level>', 7);
    CurrentHP := CleanRawData(lWorkTempStr, 'curHp>', 7);
    MaxHP := CurrentHP;
    FreeSkillPoints := CleanRawData(lWorkTempStr, 'availableSkillPoints>', 22);
  end;

  lWorkTempStr := Result.ReadOnlyDefaultTextRecord;
  delete (lWorkTempStr, 1, (pos(BiographyPrefixes[0], lWorkTempStr)-1));
  if pos(BiographyPrefixes[0], lWorkTempStr) = 0 then
    Result.Biography := NoBioText
  else
    begin
      delete (lWorkTempStr, (pos(BiographyPrefixes[1], lWorkTempStr)), Length(lWorkTempStr));
      delete (lWorkTempStr, 1, Length(BiographyPrefixes[0]));
      Result.Biography := lWorkTempStr;
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

  for var i: integer := 1 to 4 do
  begin
    for var j: integer := 1 to strtoint(BarsAndEditPrefixSet[i][5]) do
    begin
      lWorkTempStr := Result.ReadOnlyDefaultTextRecord;
      var lCurrentSkillPrefix := emptystr;
      case i of
        1: lCurrentSkillPrefix := WeaponSkills[j];
        2: lCurrentSkillPrefix := GeneralSkills[j];
        3: lCurrentSkillPrefix := TechnicalSkills[j];
        4: lCurrentSkillPrefix := Attributes[j];
      end;
      lWorkTempStr := CleanRawData(Result.ReadOnlyDefaultTextRecord, GetSkillPrefix(1) + lCurrentSkillPrefix + GetSkillPrefix(0));
      case i of
        1: Result.SetWeaponSkill(j, RawSkillValueToNormal(lWorkTempStr));
        2: Result.SetGeneralSkill(j,RawSkillValueToNormal(lWorkTempStr));
        3: Result.SetTechnicalSkill(j, RawSkillValueToNormal(lWorkTempStr));
        4: Result.SetAttributesSkill(j, RawAttributeValueToNormal(lWorkTempStr));
      end;
    end;
  end;
end;

end.


