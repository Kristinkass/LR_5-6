program z13;
const
n=20;
var a:array[1..n] of integer;
i,b,g,c: integer;
begin
  randomize;
  for i := 1 to n do
    a[i] := random(100);
   b:= 1;
   g:= 1;
  for i := 2 to n do
  begin
    if a[i] < a[b] then
      b := i;
    if a[i] > a[g] then
      g := i;
  end;
   c:= a[b];
  a[b] := a[g];
  a[g] := c;
  for i := 1 to n do
    write(a[i], ' ');
  writeln;
end.
