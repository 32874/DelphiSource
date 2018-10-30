unit UTools;

interface
  {声明区域}//公共部分，在此声明其他单元可用

//var
//  Name: string;

type
  TPerson = class
    {字段、域}
  private
    FName: string;
    FAge: Integer;
    //声明一个函数
    function GetAge():Integer;
    procedure SetAge(FAge:Integer);
  public
    {属性:property}
    property Name: string read FName write FName;
    {该属性是一个只读属性}
    property Age: Integer read GetAge write SetAge;
  end;

implementation
  {实现区域}//私有部分，在此声明其他单元不可见

//var
//  Age: Integer;

{ TPerson }

function TPerson.GetAge: Integer;
begin
  Result:= Self.FAge;
end;

procedure TPerson.SetAge(FAge: Integer);
begin
  Self.FAge:= FAge;
end;
initialization
  {初始化区域}
//  Name := '萧蔷';
//  Age := 18;



finalization
  {销毁区域}
//  Name := '';
//  Age := 0;

end.

