program bitgrid;
uses
  CRT;
{ The simplest possible implementation of the BitGrid array as a text based
program in a turbo pascal equivalent.  I hope }

procedure welcome;
begin
  Writeln('Welcome to the BitGrid simulator, this is the simplest possible implementation,');
end;

var
  s : string;
begin
  Welcome;
  Write('Program Bytes (Hex, 16 digits) :');
  Readln(s);
  Write('Left input (1/0) :');  Readln(s);
  Write('Top input        :');  Readln(s);
  Write('Right input      :');  Readln(s);
  Write('Bottom input     :');  Readln(s);

  crt.TextColor(white);
  crt.TextBackground(red);
  writeln(s);
end.

