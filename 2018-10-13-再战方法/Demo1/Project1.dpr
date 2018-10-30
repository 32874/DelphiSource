program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
  1、种类
    构造方法
    析构方法
    静态方法:类中默认的方法类型
      关键字：无
      调用规则：类的对象调用
    虚拟方法
      关键字：virtual
      规则
        可以有实现、也可以没有实现
        如果子类要覆盖父类(基类)的方法，那么父类的方法必须是虚拟方法或者动态方法
    动态方法
      关键字：Dynamic
      规则：跟虚拟方法一致

    类方法：类似于Java中的静态方法
      关键字：class
      规则：
        当class修饰属性时该属性称为类属性
        当
    抽象方法
      关键字：abstract

      规则：前提是该方法必须是虚方法(动态、虚拟)
            抽象方法一般写在父类中
            抽象方法只有声明没有实现
    消息方法
      暂时不讲，它需要处理窗口消息
  2、
-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';
var
  Animal: TAnimal;
begin
//  TAnimal.Eat;
//  //创建类的对象(类的实例化)
//  Animal:= TAnimal.Create;
//  Animal.Talk;
//  Animal.Free;
//  Animal.Eat;
  Animal:= TAnimal.Create;
  Readln;
end.
