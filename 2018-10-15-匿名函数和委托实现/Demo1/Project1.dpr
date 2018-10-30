program Project1;

{$APPTYPE CONSOLE}

{$R *.res}


{*------------------------------------------------------------------------------
  匿名函数
      定义格式
      TFun= reference to function(const Num:Integer):Integer;
-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

type
  //声明一个函数类型
  TFunDemo = function(Age: Integer): Integer;
  //定义一个匿名函数

  TFun = reference to function(Num: Integer): Integer;



function Demo1(Age: Integer): Integer;
begin

  Writeln(Age);
  Result := Age;
end;

//把函数当做一个对象进行传递
function Demo2(num1,num2:Integer;fun: TFun): Integer;
begin
  Result:=fun(num1+num2);
end;

var
//  fun1: TFunDemo;
//  fun2: TFun;
//  NumResult:Integer;

  Dog:TDog;
  Cat:TCat;
  Eat:IEat;
  Demo:TDemo;
begin
  //匿名函数里不能跟分号
//  fun2 :=
//    function(num: Integer): Integer
//    begin
//
//      result := num;
//    end;
//
//  Demo2(fun2);

//  NumResult:=Demo2(10,20,
//    function(num: Integer): Integer
//    begin
//
//      result := num;
//    end);
//  Writeln(NumResult);
  Cat:= TCat.Create;
  Cat.Eat:=TDog.Create;
  Cat.Eat.EatIng;

  Demo:= TDemo.Create;
  Demo.Eat:=TDog.Create;
  Demo.Eat.EatIng;
  Readln;
end.

