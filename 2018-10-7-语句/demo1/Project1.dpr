program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  1.表达式
      由运算符和合法的标识符组成的序列

      划分:根据运算结果的类型 1 < 2      1 + 1


  2.语句:
      主要由关键字和操作指令组成

      划分
        选择语句
          if

          case

        循环语句

-------------------------------------------------------------------------------}

begin
  //if语句格式

  //1.标准格式
  if 1 < 2 then
  begin
    //当判断条件成立时,执行的代码
    //向控制台写出一句话
    Writeln('台湾第一美女');

  end;
  //简写方式:前提是只需要执行一行代码
  if 1 < 2 then
    Writeln('台湾第一美女');

  if True then
  begin
    Writeln('台湾第一美女');
  end;
  //如果否则
  if True then
  begin
    Writeln('台湾第一美女:萧蔷');
  end
  else
  begin
    Writeln('台湾第一美女:林志玲');
  end;
  //简写
  if True then
    Writeln('台湾第一美女:萧蔷')
  else
    Writeln('台湾第一美女:林志玲');

  //从控制台读入一行文本,直到遇到回车(换行符)
  Readln;
end.
