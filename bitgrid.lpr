program bitgrid;
uses
  CRT;
{ The simplest possible implementation of the BitGrid array as a text based
program in a turbo pascal equivalent.  I hope }

procedure welcome;
begin
  Writeln('Welcome to the BitGrid simulator, this is the simplest possible implementation,');
end;

function getboolean : boolean;
var
  s : string;
begin
  readln(s);
  getboolean := (s = '1');
end;

var
  s : string;
  i : integer;
  inputs : array[0..3] of boolean;
  index : byte;
  oldattr : byte;
begin
  oldattr := crt.TextAttr;
  Welcome;
  Write('Program Bytes (Hex, 16 digits - default is 0123456789ABCDEF) :');
  Readln(s);
  if s = '' then s := '0123456789ABCDEF';
  Write('Left input (1/0) :');  inputs[0] := getboolean;
  Write('Top input        :');  inputs[1] := getboolean;
  Write('Right input      :');  inputs[2] := getboolean;
  Write('Bottom input     :');  inputs[3] := getboolean;
  index := 0;
  if inputs[0] then inc(index,1);
  if inputs[1] then inc(index,2);
  if inputs[2] then inc(index,4);
  if inputs[3] then inc(index,8);
  WriteLn('Index = ',index);

  s := s + '000000000000000000000';
  for i := 0 to 15 do
  begin
    if i = index then
    begin
      crt.TextColor(white);
      crt.TextBackground(red);
    end;
    write(s[i+1]);
    crt.textattr := oldattr;
  end;
  writeln;
  writeln('Output is [',s[index+1],']');
end.

