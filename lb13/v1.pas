program v1;
var
  X,Y:Set of char;
begin
  X:=['Ж','З', 'И', 'К', 'Л', 'М', 'Р'];
  Y:=['A', 'а', 'Б', 'б', 'И', 'и', 'М', 'м'];
  writeln('X=',X);
  writeln('Y=',Y);
  writeln('X+Y=',X+Y);
  writeln('Y-X',Y-X);
  writeln('X+Y:',X=Y);
end.