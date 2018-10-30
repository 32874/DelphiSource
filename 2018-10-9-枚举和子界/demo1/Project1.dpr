program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{
  常量
    我们在一开始就定义好的一些值,以后在程序的运行过程中不允许改变,例如:圆周率
  枚举: 常量集
    type
      枚举名 = (标识符1,标识符2...)
}
uses
  System.TypInfo, System.SysUtils;

const
  Yzl1: Double = 3.14;
  {常量的定义方式,可以不进行类型声明,编译器会根据具体值来决定常量的类型}
  Yzl2 = 3;

type
  {正常情况下枚举类型的索引是从0开始}
  EColors = (RED, GREEN, BLUE);

  EWeek = (SUN = 7, MON = 1, TUE = 2, WED = 3, THU = 4, FRI = 6, SAT = 7);

var
  {声明一个枚举类型的变量}
  Color: EColors;
  Week: EWeek;
  EIndex: Integer;
  EName: string;
{*------------------------------------------------------------------------------
  获取枚举中的单个元素
-------------------------------------------------------------------------------}
procedure Demo1();
begin
  Color := EColors.RED;
  Week := EWeek.SUN;
  Writeln(Ord(Color), ',', Ord(Week));
end;

{*------------------------------------------------------------------------------
  使用循环遍历枚举元素
-------------------------------------------------------------------------------}
procedure Demo2();
begin
  {遍历枚举}
  EIndex:= 0;
  for Color := Low(EColors) to High(EColors) do
  begin
    Writeln(GetEnumName(TypeInfo(EColors),EIndex));
    EName:= GetEnumName(TypeInfo(EColors),EIndex);
    Writeln(GetEnumValue(TypeInfo(EColors),EName));
    //据说Delphi做过优化
    Inc(EIndex);
  end;
  Readln;
end;


begin
  Writeln(Ord(EWeek.SUN));
  Readln;
end.

