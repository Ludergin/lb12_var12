Program examen; 
Uses crt;
Type 
stud=record 
fio:string[30]; Nz:string[6]; mark:integer 
end;
Var 
Fstud:file of stud;
S:stud;
n,I:byte; 

Begin 
clrscr;

Assign(Fstud, 'Fm.dat'); 
RESET(Fstud); 
Write('kolvo studentov'); 
Readln(n);
For I:=1 To n do 
Begin
Write('vvedite fio:'); readln(s.fio); 
Write('vvedite nomer zachetki:'); readln(s.Nz); 
Write('vvedite ocenka:'); readln(s.mark); 
Write(Fstud,s)
end;
Writeln('Formirovanie zaversheno'); 
Close(Fstud)
End.
