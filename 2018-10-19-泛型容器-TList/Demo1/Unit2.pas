unit Unit2;

interface

type
  TStudent = class
  private
    FId: string;
    FName: string;
    FAge: Integer;
  public
    constructor Create(); overload;
    constructor Create(FId: string; FAge: Integer; FName: string); overload;
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property Age: Integer read FAge write FAge;
  end;

implementation

{ TStudent }

constructor TStudent.Create;
begin
  inherited;

end;

constructor TStudent.Create(FId: string; FAge: Integer; FName: string);
begin
  Self.FId := FId;
  Self.FName := FName;
  Self.FAge := FAge;
end;

end.

