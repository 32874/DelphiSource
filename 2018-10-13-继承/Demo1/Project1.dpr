program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------

  派生（继承）：

    派生指类和类之间的关系

    继承更多的的是指对象和对象之间的关系


  特点

    1.提高代码的复用 TForm

    2.一旦产生派生关系之后，他们就具备了多态的特点

    3.Delphi是单继承，但是可以是多层继承

-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  uExtends in 'uExtends.pas';







var
  Dog: TDog;

begin
  Dog := TDog.Create;
  dog.GetName;
  Readln;

end.

