program v2;
var
  sum:integer;
procedure proc(sum:integer);
var
  i: integer;
begin
  sum:= 0;
  for i := 30 to 60 do begin
    if i mod 10 = 3 then begin
      writeln('Число: ', i);
      sum:=sum+ i;
      end;
  end;
  writeln('Сумма чисел, заканчивающихся на 3, в диапазоне от 30 до 60: ', sum);
end;

begin
  proc(sum);
end.