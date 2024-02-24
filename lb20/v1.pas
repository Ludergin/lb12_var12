program v1;
var
  n,i,j,a,b:integer;
function func(ch:integer):integer;
var
  i,sum:integer;
begin
  sum:=0;
  for i:=1 to ch do begin
    if (ch mod i =0) and (ch<>i) then begin
      sum:=sum+i
    end;
  end;
  func:=sum
end;

begin
  readln(n);
  for i:=1 to n do begin
    a:=func(i);
    for j:=i to n do begin
      if (a=j) then begin
        b:=func(j);
        if (b=i) and (i<>j) then begin
          writeln('Числа дружественные ',i,' и ',j);
          break;
          end;
      end;
    end;
  end;
end.