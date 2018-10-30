program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
  什么是多态
      封装、继承、多态

      一类事物以多种形态存在，例如：动物类和狗类、猫类的关系

      前提：两个类具备继承(派生)和实现这两种关系的一种

      具体体现：父类接收或指向其子类对象

  有什么用
      提高代码的复用性，方便我们对代码进行解耦操作(类和类之间不要出现直接的依赖关系)
      耦合

  怎么使用

-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';
//向上转型：把子类对象的类型转换成了父类的数据类型

procedure ShowAnimalRun(Animal: TAnimal);
var
  Dog: TDog;
  Cat: TCat;
begin

  if Assigned(Dog) then
  begin
    Writeln('空值');

  end;
  //运行时的数据类型
  Animal.Run;
  //向下转型：把父类对象的类型转换成子类的数据类型
  //判断一个对象是否和一个类型兼容
  if Animal is TDog then
  begin
    //强制类型转换
//    Dog:=TDog(Animal);  不推荐这么写
    Dog := Animal as TDog;

    Dog.WatchDoor;
  end
  else if Animal is TCat then
  begin
    //强制类型转换
    Cat := Animal as TCat;
    Cat.CatchMouse;
  end;

end;

var
  Animal: TAnimal;
//  ColorDog:IColor;



begin
//  Animal:=TDog.Create;
//  ColorDog:=TDog.Create;
//  Animal.Run;
  ShowAnimalRun(TDog.Create);
  Readln;

end.

