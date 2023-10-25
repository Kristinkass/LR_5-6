var
  a: array[1..100] of integer;
  n, s: integer;
  i: byte;

begin
  write('Введите размер массива: ');
  readln(n);
  writeln('Исходный массив: ');
  for i := 1 to n do
  begin
    a[i] := random(20) - 10;
    writeln(a[i], ' ');
  end;
  
  begin
    for i := 1 to n do
    begin
      if a[i] > 0 then a[i] := 0;
      if a[i] < 0 then a[i] := a[i] * a[i];
      write(a[i], ' ');
    end;
    readln
  end;
end.