program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  {����һ����̬�Ķ�ά����}
  TStringDynaminArray = array of array of string;
  {����һ����̬�Ķ�ά����}
  TStringStaticArray = array[0..2] of array[0..1] of string;
var
  DynamicNameArray: TStringDynaminArray;
begin
  DynamicNameArray:= [['���','�й�','��Ǿ'],['������','����','�⾩']];

  Writeln(DynamicNameArray[0][2]);
  Readln;
end.
