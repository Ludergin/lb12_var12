﻿Program B;
Uses Crt;
Var m : string; { переменная m для хранения текстового сообщения }
t : text; { t – файловая переменная }
Begin
Clrscr;
Assign (t, 'Message. txt'); { связывание файловой переменной f с файлом ’Message. txt’, который существует в текущей папке }
Reset (t); { открыли файл для чтения }
Readln (t, m); { считали из файла t в переменную s текст сообщения}
Writeln ('Сообщение:' , m); { вывели на экран текст сообщения }
Close (t); { закрыли файл }
Readln
End.