uses crt;
function f(x: real): real;
begin
f:=2*power(x,3)+(-1)*power(x,2)+(3)*x+(15); {Первообразная}
end;
function f1(x: real): real;
begin
f1:=6*power(x,2)-2*x+3;
end;
procedure rer;
var a,b,h,s,y:real;
n,i:integer;
begin
repeat
write('Введите левую границу интервала от -10 до 0  = ');
read(a);
until (a>=-10)and(a<=0);
repeat
write('Введите правую границу интервала от 0 до 10  = ');
readln(b);
until (b>=0)and(b>a)and(b<=10);
repeat
write('Введите число разбиений от 10 до 1000000 n = ');
readln(n);
until (n>=10)and(n<=1000000);
h:=(b-a)/n;
s:=(f(a)+f(b))/2;
for i:=1 to n-1 do
s:=s+f(a+i*h);
s:=s*h;
writeln('S=',s:0:5);
{по формуле Ньютона-Лейбница}
y:=f1(b)-f1(a);
writeln('Аналитическое значение = ',y:0:5);
writeln('Абсолютная погрешность = ',abs(y-s):0:5);
writeln('Относительная погрешность = ',abs(y-s)/y);
end;
var m :integer;
begin 
  repeat
    println;
    println('Выберите то, что вам надо:');
    println('1 - фунуция');
    println('2 - производная функции');
    println('3 - нахождение функции');
    println('0 - выход из программы');
    readln(m);
    case m of
      1:println('f:=2*power(x,3)+(-1)*power(x,2)+(3)*x+(15)');
      2:println('f1:=6*power(x,2)-2*x+3');
      3:rer;
      0:halt;
    end;
  until m=4;
end.