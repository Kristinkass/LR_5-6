program z5;
const
n = 10;
var A, B:array[1..n] of integer;
sumA, sumB: integer; 
i: integer; 
begin
  randomize;
  for i := 1 to n do
  begin
    A[i] := random(21) - 10; 
    B[i] := random(21) - 10;
  end;
  writeln('Массив A:');
  for i := 1 to n do
    write(A[i], ' ');
    writeln;
  writeln('Массив B:');
  for i := 1 to n do
    write(B[i], ' ');
  sumA := 0;
  sumB := 0;
  for i := 1 to n do
  begin
    if A[i] > 0 then
      sumA := sumA + A[i];
    if B[i] > 0 then
      sumB := sumB + B[i];
  end;
  if sumA < sumB then
  begin
    writeln;
    writeln('Умножаем элементы массива A на 10:');
    for i := 1 to n do
    begin
      A[i] := A[i] * 10;
      write(A[i], ' ');
    end;
  end
  else
  begin
    writeln;
    writeln('Умножаем элементы массива B на 10:');
    for i := 1 to N do
    begin
      B[i] := B[i] * 10;
      write(B[i], ' ');
    end;
  end;
 writeln;
end.