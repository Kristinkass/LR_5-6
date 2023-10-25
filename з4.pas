program z4;
const
n= 30;
var A, B: array[1..n] of integer; 
i, j: Integer; 
begin
  for i := 1 to n do
    A[i] := random(167) - 99;
  for i := 1 to n do
  begin
    if A[i] mod 2 = 0 then 
    begin
      j := j + 1;
      B[j] := A[i];
    end;
  end;
  writeln('Массив В с четными элементами из массива А:');
  for i := 1 to j do
    writeln(B[i]);
  readln;
end.