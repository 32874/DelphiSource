unit Unit1;

interface
type
  IColor = interface

  end;

  TAnimal=class(TInterfacedObject)
  public
    procedure Run();virtual;abstract;
  end;

  TDog=class(TAnimal,IColor)
    procedure Run();override;
    procedure WatchDoor();
  end;
  TCat=class(TAnimal)
    procedure Run();override;
    procedure CatchMouse();
  end;
implementation

{ TDog }

procedure TDog.Run;
begin
  Writeln('狗在跑');
end;

procedure TDog.WatchDoor;
begin
  Writeln('狗看门');
end;

{ Tcat }

procedure TCat.CatchMouse;
begin
  Writeln('猫抓老鼠');
end;

procedure TCat.Run;
begin
  Writeln('猫在跑');
end;

end.
