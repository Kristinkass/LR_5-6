program z8;
const
n = 10; 
var a: array[1..n] of integer; 
count: array[1..n] of integer;
i, j, maxCount, maxNum: integer; 
begin
  randomize;
  for i := 1 to n do
    a[i] := random(10) + 1; 
  for i := 1 to n do
    count[i] := 0;
  for i := 1 to n do
    for j := 1 to n do
      if a[i] = a[j] then
        count[i] := count[i] + 1;
  maxCount := 0;
  maxNum := 0;
  for i := 1 to n do
    if count[i] > maxCount then
    begin
      maxCount := count[i];
      maxNum := a[i];
    end;
  WriteLn('Наиболее часто повторяющееся число: ', maxNum);
end.