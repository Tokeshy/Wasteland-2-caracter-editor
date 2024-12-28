unit Wl2.Utilities;

interface
  uses
    WL2.Classes;

  function CleanRawData(const aSourceString, aLimiter: string; const aExpectedLength: integer): string; overload;
  function CleanRawData(const aSourceString, aLimiter: string): string; overload;
  function RawSkillValueToNormal(const aRawValue: String): string; overload;
  function RawSkillValueToNormal(const aRawValue: Integer): Integer; overload;

  function RawAttributeValueToNormal(const aRawValue: String): string; overload;
  function RawAttributeValueToNormal(const aRawValue: Integer): Integer; overload;

  function DigitSkillValueToRaw(const aPositionValue: integer): string; overload;
  function DigitSkillValueToRaw(const aPositionValue: string): string; overload;

  function DigitAttributeValueToRaw(const aPositionValue: integer): string; overload;
  function DigitAttributeValueToRaw(const aPositionValue: string): string; overload;

  function CutextensionEnding(const aInput: String): string;
  function LoadAsText(const aFileLocation: String): String;
  function SaveAsText(const aFileLocation, aTextToSave: String): Boolean;
  function SetNewSkillValues(const aUpdatedCaracter: TCaracterData): TCaracterData;

  procedure OpenLink(const aLink: pWideChar);

implementation
  uses
    System.SysUtils, System.IOUtils, ShellAPI, Winapi.Windows, System.Classes, WL2.SavegameEditor, Vcl.ComCtrls;

function CleanRawData(const aSourceString, aLimiter: string; const aExpectedLength: integer): string;
begin
  var lStartLimiter: string := '<' + LowerCase(aLimiter);
  var lEndLimiter: string := '</' + LowerCase(aLimiter);
  var lWorkString: String := LowerCase(aSourceString);
  delete(lWorkString, 1, (pos(lStartLimiter, lWorkString) - 1));
  delete(lWorkString, (pos(lEndLimiter, lWorkString)), Length(lWorkString));
  delete(lWorkString, 1, aExpectedLength);
  Result := lWorkString;
end;

function CleanRawData(const aSourceString, aLimiter: string): string;
begin
  var lLimiter: String := LowerCase(aLimiter);
  var lWorkString: String := LowerCase(copy(trim(aSourceString), pos(lLimiter, LowerCase(aSourceString)), length(lLimiter) + 15));
  delete(lWorkString, pos('</value>', lWorkString), length(lWorkString));
  delete(lWorkString, 1, (Length(lLimiter)));
  Result := lWorkString;
end;

function RawSkillValueToNormal(const aRawValue: string): string;
begin
  case strtointdef(aRawValue, 0) of
    0  : result := '0';
    2  : result := '1';
    4  : result := '2';
    5 : result := '5';
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

function RawSkillValueToNormal(const aRawValue: Integer): Integer;
begin
  Result := strtointdef(RawSkillValueToNormal(inttostr(aRawValue)), 0);
end;

function RawAttributeValueToNormal(const aRawValue: string): string;
begin
  case strtointdef(aRawValue, 0) of
    0 : result := '1';
    1 : result := '1';
    2 : result := '2';
    3 : result := '3';
    4 : result := '4';
    5 : result := '5';
    6 : result := '6';
    7 : result := '7';
    8 : result := '8';
    9 : result := '9';
    10 : result := '10';
  end;
end;

function RawAttributeValueToNormal(const aRawValue: Integer): Integer;
begin
  Result := strtointdef(RawAttributeValueToNormal(inttostr(aRawValue)), 0);
end;

function DigitSkillValueToRaw(const aPositionValue: integer): String; overload;
begin
  case aPositionValue of
    10: result := '44';
    9: result := '36';
    8: result := '30';
    7: result := '24';
    6: result := '18';
    5: result := '14';
    4: result := '10';
    3: result := '6';
    2: result := '4';
    1: result := '2';
    0: result := '0';
  end;
end;

function DigitSkillValueToRaw(const aPositionValue: string): string; overload;
begin
  Result := DigitSkillValueToRaw(strtointdef(aPositionValue, 0));
end;

function DigitAttributeValueToRaw(const aPositionValue: integer): String; overload;
begin
  case aPositionValue of
    10: result := '10';
    9: result := '8';
    8: result := '8';
    7: result := '7';
    6: result := '6';
    5: result := '5';
    4: result := '4';
    3: result := '3';
    2: result := '2';
    1: result := '1';
    0: result := '1';
  end;
end;

function DigitAttributeValueToRaw(const aPositionValue: string): string; overload;
begin
  Result := DigitAttributeValueToRaw(strtointdef(aPositionValue, 0));
end;

function CutextensionEnding(const aInput: String): string;
begin
  Result := aInput;
  delete(Result, (Result.length-3), Result.length);
end;

function LoadAsText(const aFileLocation: String): String;
var
  lTextFile: tFile;
begin
  var TempFileName: String := CutextensionEnding(aFileLocation + '.txt');
  RenameFile(aFileLocation, TempFileName);
  Result := lTextFile.ReadAllText(TempFileName, TEncoding.UTF8);
  RenameFile(TempFileName, aFileLocation);
end;

function SaveAsText(const aFileLocation, aTextToSave: String): Boolean;
var
  lTextFile: tFile;
begin
  Result := false;
  lTextFile.WriteAllText(aFileLocation, aTextToSave);
  Result := True;
end;

procedure OpenLink(const aLink: pWideChar);
begin
  ShellExecute(0, 'open', aLink, '', '', SW_SHOWNORMAL);
end;

function SetNewSkillValues(const aUpdatedCaracter: TCaracterData): TCaracterData;
var
  i: integer;
begin
  result := aUpdatedCaracter;
  with WL2.SavegameEditor.frmWL2Main do
  begin
    for i := 1 to 10 do
      Result.SetWeaponSkill(i, DigitSkillValueToRaw((FindComponent('WSTB' + inttostr(i)) as TTrackbar).position));
    for i := 1 to 12 do
      Result.SetGeneralSkill(i, DigitSkillValueToRaw((FindComponent('RSTB' + inttostr(i)) as TTrackbar).position));
    for i := 1 to 9 do
      Result.SetTechnicalSkill(i, DigitSkillValueToRaw((FindComponent('TSTB' + inttostr(i)) as TTrackbar).position));
    for i := 1 to 7 do
      Result.SetAttributesSkill(i, DigitAttributeValueToRaw((FindComponent('ASTB' + inttostr(i)) as TTrackbar).position));
  end;
end;

end.


