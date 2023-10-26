program z10;
const
n=20;
var a:array[1..n] of integer;
i,j:integer;
begin
  randomize;
  for i:=1 to n do
    a[i]:=random(100)-50;
  writeln('Исходный массив:');
  for i:=1 to n do
    write(a[i],' ');
  j:=1;
  for i:=1 to n do
  begin
    if a[i]>=0 then
    begin
      a[j]:=a[i];
      j:=j+1;
    end;
  end;
  for i:= j to n do
    a[i]:=0;
  writeln;
  writeln('Массив после удаления отрицательных элементов:');
  for i:=1 to n do
    write(a[i],' ');
  readln; 
end.