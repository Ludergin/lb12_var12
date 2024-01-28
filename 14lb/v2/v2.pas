Program B;
Uses Crt;
Var
n,x : integer;
y,p:real; 
f : text;
Begin
Clrscr;
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
