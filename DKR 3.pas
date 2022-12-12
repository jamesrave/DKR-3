uses crt;
var a:integer;b:integer;n:integer;h:real;s:real;
function f(x:real):real;
begin
  f:=power(x,3)+(-2)*power(x,2)+(1)*x+(6);
end;
function per(x:real):real;
  begin
    per:=(power(x,4))/4-2*(power(x,3))/3+((power(x,2))/2)+6*x;
  end;
  procedure rave;
  begin
  println('Функция:power(x,3)+(-2)*power(x,2)+(1)*x+(6)');
  readkey;
  end;
  procedure exe;
  begin
  println('Первообразная функции:(power(x,4))/4-2*(power(x,3))/3+((power(x,2))/2)+6*x');
  readkey;
  end;
  procedure oaip;
  begin
  print('введите верхний предел:');
  b:=ReadInteger;
    print('введите нижний предел:');
  a:=ReadInteger;
  print('введите количество разбиений:');
  n:=ReadInteger;
  var h:=(b-a)/n;
  var x:=a+h/2;
  for var i:=1 to n do
  begin
    s+=f(x);
    x+=h;
  end;
  s:=s*h;
  var p:=per(b)-per(a);
  var d:=abs(p-s);
  println('точное значение:',p);
  println('приближенное значение:',s); 
  println('погрешность метода',d);
end;
begin 
  var t:integer;
    repeat
      println;
      println('Выберите то,что вам необходимо:');
      println('1-функция');
      println('2-первообразная функции');
      println('3-нахождение площади');
      println('0-выйти из программы');
      readln(t);
      case t of
        1:rave;
        2:exe;
        3:oaip;
        0:halt
      end;
    until t=4;
begin
  oaip;
  end
end.
 