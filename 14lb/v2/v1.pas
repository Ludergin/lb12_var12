Program A;
Uses Crt;
Var
n, k : integer; 
y:real;
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
Readln
End.
