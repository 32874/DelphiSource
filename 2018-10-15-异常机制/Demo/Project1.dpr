program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  EMyException=class(Exception)


  end;
procedure MyDivFun(Num1,Num2:Integer);
begin
  if Num2 = 0 then
  begin
    //我们抛出一个异常
    raise EMyException.Create('除数不能为0！');//抛出异常之后会退出
    Writeln('**********  ');
  end;
end;
begin
  try
    MyDivFun(10,0);
  except on E: EMyException do
  begin
    Writeln(E.Message);
  end;
  end;
  Readln;
end.
