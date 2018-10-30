unit uExtends;

interface

type
  {定义一个类}
  TAnimal = class
  private
    FWeight: Integer;
  public
    {定义一个构造方法}
    constructor Create(FWeight: Integer);
    {定义属性}
    property Weight: Integer read FWeight write FWeight;
    procedure GetName; virtual;
  end;
  {定义一个派生类}

  TDog = class(TAnimal)
  public
    {定义一个构造方法}
    constructor Create;
    {重写父类中的虚方法}
    procedure GetName; override;
  end;

  {定义一个派生类}
  TCat = class(TAnimal)
  public
    constructor Create;
  end;

implementation



{ TAnimal }

constructor TAnimal.Create(FWeight: Integer);
begin
  Self.FWeight := FWeight;
end;

procedure TAnimal.GetName;
begin
  Writeln('动物类的方法');
end;

{ TDog }

constructor TDog.Create;
begin
  Writeln('狗类');
  //直接调用父类方法
  inherited Create(100);
end;

procedure TDog.GetName;
begin
  inherited;
  Writeln('TDog.GetName方法');
end;

{ TCat }

constructor TCat.Create;
begin

end;

end.

