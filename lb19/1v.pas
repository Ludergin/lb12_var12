program v1;
var
  A, B: integer;
procedure proc(A, B: integer);
var
  i: integer;
begin
  for i := A to B do
  begin
    if (i > 99) and (i < 100) and (i mod 13 = 0) and (i mod 5 = 0) then
      writeln(i);
  end;
end;

begin
  write('Введите число A: ');
  readln(A);
  write('Введите число B: ');
  readln(B);
  proc(A, B);
end.