program v2;
var
  a,b,c:real;
procedure proc(a,b,c:real;var median:real);
begin
  median := sqrt(2 * (b * b + c * c) - a * a) / 2;
end;

function func1(a,b,c:real):real;
var
  med_a,med_b,med_c,med:real;
begin
  proc(a,b,c,med_a);
  proc(b,c,a,med_b);
  proc(c,a,b,med_c);
  proc(med_a,med_b,med_c,med);
  func1:=med;
end;

function func2(a,b,c:real):real;
var
  med_a,med_b,med_c,med:real;
begin
  proc(a,b,c,med_a);
  proc(b,c,a,med_b);
  proc(c,a,b,med_c);
  proc(med_a,med_b,med_c,med);
  func2:=med;
end;

function func3(a,b,c:real):real;
var
  med_a,med_b,med_c,med:real;
begin
  proc(a,b,c,med_a);
  proc(b,c,a,med_b);
  proc(c,a,b,med_c);
  proc(med_a,med_b,med_c,med);
  func3:=med;
end;

function func(a,b,c:real):real;
begin
  writeln(func1(a,b,c));
  writeln(func2(a,b,c));
  writeln(func3(a,b,c));
end;

begin
  readln(a,b,c);
  func(a,b,c);
end.