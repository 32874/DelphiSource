program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  i: Integer;
begin
  i := 3;
  case i of
    1:
      begin
        Writeln('台湾第一美女:萧蔷');
      end;
    2:
      Writeln('台湾第一美女:林志玲');
  else
      begin
        Writeln('台湾第一美女:林心如');
      end;
  end;

  Readln;
end.
