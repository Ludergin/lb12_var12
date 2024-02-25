program v2;
var
  a,b,c:real;
procedure proc(a,b,c:real;var median:real);
begin
  median := sqrt(2 * (b * b + c * c) - a * a) / 2;
end;

function f(a,b,c:real):real;
var
  med_a,med_b,med_c,med:real;
begin
  proc(a,b,c,med_a);
  proc(b,c,a,med_b);
  proc(c,a,b,med_c);
  proc(med_a,med_b,med_c,med);
  f:=med;
end;

function func(a,b,c:real):real;
begin
  writeln(f(a,b,c));
  writeln(f(c,a,b));
  writeln(f(b,c,a));
end;

begin
  readln(a,b,c);
  func(a,b,c);
end.