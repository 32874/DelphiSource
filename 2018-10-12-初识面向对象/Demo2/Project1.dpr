program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
  1、怎么样去创建一个类
    类的成员组成
      属性、成员变量、字段
      功能：方法、函数、过程、例程
  2、如何创建一个类的对象
  3、对象的生命周期
    一个对象从创建到消亡的过程我们称之为该对象的生命周期
    1、对象的创建
      1、构造方法
        a)在内存中申请一个内存空间
        b)初始化类成员的功能
    2、对象的销毁
      1、destroy;
      2、free;
      3、freeAndNil;
      4、nil 空值 类似于其他语言里的null
    3、self：表示本类对象
      1、为了解决命名冲突
      2、
  4、Delphi中单元的概念
-------------------------------------------------------------------------------}
uses
  System.SysUtils;

type
  TUser = class
    {字段}
    FName: string;
    //重载
    constructor Aaa(); overload;
    constructor Aaa(Name: string);overload;
    {声明、定义}
    procedure SetName(Name: string);
    {销毁对象的方法}
    destructor Destroy(); override; //覆盖、重写
  end;
//  TStudent = record
//
//  end;
{ TUser }

constructor TUser.Aaa(Name: string);
begin
  //初始化
  FName := Name;
end;

{销毁对象的方法实现}
destructor TUser.Destroy;
begin
  {调用父类销毁对象的方法}
  Writeln('调用父类销毁对象的方法');
  inherited;
end;

procedure TUser.SetName(Name: string);
begin
  FName := Name;
end;

var
  User: TUser;

begin
  {通过类的构造方法，创建一个类的对象}
//  User:=TUser.Create;
  User := TUser.Aaa('萧蔷');
  //设置字段
//  User.FName:='萧蔷';

  Writeln(User.FName);
  //销毁对象：模板方法设计模式
//  User.Free;
//  Writeln(User.FName);
  FreeAndNil(User);
  Readln;
end.

