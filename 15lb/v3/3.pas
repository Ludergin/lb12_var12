Program A;
Uses Crt;
Var
t:string;
n, k ,x: integer; 
y,p:real;
f : text; 
Begin
Clrscr;
p:=1;
Assign (f, 'N. txt'); 
RESET(f); 
While Not Eof(f) Do 
Begin
Readln (f, y);
if y>0 then
p:=p*y;
End;
Close (f); 
writeln('произвеление ',p);
Readln
End.