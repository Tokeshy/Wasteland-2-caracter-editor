unit Wl2.Services;

interface
  function CleanRawData(const aSourceString, aLimiter: string; const aExpectedLength: integer): string; overload;
  function CleanRawData(const aSourceString, aLimiter: string): string; overload;
  function RawDigitToNormal(const aRawValue: string): string;

implementation
  uses
    System.SysUtils;

function CleanRawData(const aSourceString, aLimiter: string; const aExpectedLength: integer): string;
begin
  var lStartLimiter: string := '<' + aLimiter;
  var lEndLimiter: string := '</' + aLimiter;
  var lWorkString: String := aSourceString;
  delete(lWorkString, 1, (ansipos(lStartLimiter, lWorkString) - 1));
  delete(lWorkString, (ansipos(lEndLimiter, lWorkString)), Length(lWorkString));
  delete(lWorkString, 1, aExpectedLength);
  Result := lWorkString;
end;

function CleanRawData(const aSourceString, aLimiter: string): string; // CnClean
begin
  var lWorkString: String := aSourceString;
  delete(lWorkString, 1, (ansipos(aLimiter, lWorkString)-1));
  delete(lWorkString, (ansipos('</Value>', lWorkString)), Length(lWorkString));
  delete(lWorkString, 1, (Length(aLimiter)));
  Result := lWorkString;
end;

function RawDigitToNormal(const aRawValue: string): string;
begin
  case strtointdef(aRawValue, 0) of
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

end.
