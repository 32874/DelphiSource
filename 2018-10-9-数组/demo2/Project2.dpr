program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{声明动态数组}
type
  StringArray = array of string;
var
  NameArray: StringArray;
  AddressArray: StringArray;
  DataArray: StringArray;
  DataArray1: StringArray;
  Index: Integer;
  Name: string;
{动态数组初始化}
procedure InitArray();
begin
  //设置长度
  SetLength(NameArray,20);
  NameArray:= StringArray.Create('林志玲','萧蔷');
  NameArray:= ['林志玲','萧蔷','汤唯','一脱成名'];
  Writeln(Length(NameArray),',',Low(NameArray));
end;

{遍历数组元素}
procedure ListArray();
begin
  NameArray:= ['林志玲','萧蔷','汤唯','一脱成名'];
  for Index := Low(NameArray) to High(NameArray) do
  begin
    Writeln(NameArray[Index]);
  end;
end;
{遍历动态数组2}
procedure ListArray2();
begin
  NameArray:= StringArray.Create('林志玲','萧蔷');
  {在Delphi7版本中不支持}
  for Name in NameArray do
  begin
    Writeln(Name);
  end;
end;
begin
  NameArray:= StringArray.Create('林志玲','萧蔷');
  AddressArray:= StringArray.Create('北京','上海');
  DataArray:= StringArray.Create('北京1','上海1');
  {连接数组}
  DataArray:= Concat(NameArray, AddressArray);
  {复制数组:含头不含尾}
  DataArray1:=Copy(DataArray,Low(DataArray),Length(DataArray));

  AddressArray:= StringArray.Create('11','22');
  {插入:把AddressArray插入到DataArray1里,从DataArray的位置1开始插入}
  Insert(AddressArray,DataArray1,1);

  {删除元素}
  Delete(DataArray1,Length(DataArray1)-2,Length(DataArray1)-1);
  for Name in DataArray1 do
  begin
    Writeln(Name);
  end;
  Readln;
end.
