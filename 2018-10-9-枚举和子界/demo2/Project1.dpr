program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
  子界
    为什么使用: 为了防止出现越界


    注意事项:
      1)子界要求上界和下界必须是有序的数据类型 整数、字符、枚举
      2)子界的上界大于或者等于下界
}
{定义格式}
type
  {枚举}
  EColors = (RED, GREEN, BLUE);
  {子界}
  TSubBoundNumber = 1..10;
  TSubBoundChar = 'a'..'z';
  TSubBoundEColors = EColors.RED..EColors.BLUE;
  {子界:12个月}
  TSubBoundMonth = 1..12;
  {枚举:季节}
  ESeason = (SPRING,SUMMER,AUTUMN,WINTER);
var
  Season: ESeason;
  Month: TSubBoundMonth;
  Year: Integer;
  UserMonth: Integer;
begin
  Writeln('请输入一个年份,格式为YYYY');
  Readln(Year);
  if Year mod 4 = 0 then
  begin
    if Year mod 100 = 0 then
    begin
      if Year mod 400 = 0 then
        Writeln(Year,'年是闰年')
      else
        Writeln(Year,'年是平年');
    end
    else
      Writeln(Year,'年是闰年');
  end
  else
    Writeln(Year,'年是平年');

  Writeln('请输入一个月份');
  Readln(UserMonth);
  if (UserMonth >= Low(Month)) and (UserMonth <= High(Month)) then
  begin
    if (UserMonth >= 3) and (UserMonth <= 5) then
    begin
      Write('当前是春季');
    end;
  end
  else
    Writeln('对不起您输入的月份错误!');

  Readln;
end.
