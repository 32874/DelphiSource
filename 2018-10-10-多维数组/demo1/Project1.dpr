program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  {声明一个动态的二维数组}
  TStringDynaminArray = array of array of string;
  {声明一个静态的二维数组}
  TStringStaticArray = array[0..2] of array[0..1] of string;
var
  DynamicNameArray: TStringDynaminArray;
begin
  DynamicNameArray:= [['你好','中国','萧蔷'],['张三丰','成龙','吴京']];

  Writeln(DynamicNameArray[0][2]);
  Readln;
end.
