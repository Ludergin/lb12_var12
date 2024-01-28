Program A;
Uses Crt;
Var
n, k ,x: integer; 
y,p:real;
f : text; 
Begin
Clrscr;
Assign (f, 'N. txt'); 
Rewrite(f); 
Write ('Введите количество N чисел ');
Readln (n);
For k:=1 To n Do
Begin
Write('Введите ',k,' число ');
Readln (y); 
Writeln (f, y) 
End;
Close (f); 
Writeln ('Файл создан'); 
p:=1;
Assign (f, 'N. txt'); 
Reset (f); 
While Not Eof (f) Do 
Begin
Readln (f, y);
p:=p*y;
End;
Close (f); 
writeln('произведение ',p);
Readln
End.

