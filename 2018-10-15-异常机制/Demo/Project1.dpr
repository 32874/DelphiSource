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
    //�����׳�һ���쳣
    raise EMyException.Create('��������Ϊ0��');//�׳��쳣֮����˳�
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
