Program A;
Uses Crt;
Var
t:string;
n, k ,x: integer; 
y,p:real;
f : text; 
Begin
Clrscr;
p:=0;
Assign (f, 'N. txt'); 
RESET(f); 
While Not Eof(f) Do 
Begin
Readln (f, y);
if y<0 then
p:=p+1;
End;
Close (f); 
writeln('количество отрицатеьных чисел ',p);
Readln
End.