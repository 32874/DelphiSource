unit Unit1;

interface

type
  {定义一个接口}
  IUsb = interface
    {ctrl+shift+G}
    ['{47FCE1BB-4695-4FB7-876E-F096120DF20A}']
    procedure Read();
  end;

  IUsb2 = interface
  end;
  //接口与接口之间也是单继承
//  IUsb3 = interface(IUsb2)

  {定义一个类}
  TComputer = class(TInterfacedObject)
  public
    procedure Run();virtual;abstract;
  end;

  TLapTop = class(TComputer, IUsb2,IUsb)
    procedure Read();
  end;

implementation

{ TComputer }



{ TLapTop }

procedure TLapTop.Read;
begin

end;

end.

