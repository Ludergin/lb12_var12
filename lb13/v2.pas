program v2;
var
  a,e:Set of integer;
  b,i,f,j:integer;
begin
  e:=[1,2,3,4,5];
  for i:=1 to 3 do begin
    write('Сколько оценок получил ',i,' ученик за неделю: ');
    readln(f);
    writeln('Введите оценки ');
    for j:=1 to f do begin
      readln(b);
      include(a,b);
    end;
  end;
  writeln('множество А оценок которые были получены всеми 10 учениками ',a);
end.