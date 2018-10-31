unit uProduct;

interface

uses
  System.Classes;

type
  //产品类
  TProduct = class
  private { Private declarations }
    //产品编号
    FId: Integer; { Private declarations }
    //产品名称
    FName: string;
    //产品是否已经被消费
    FIsConsume:Boolean;
    { Private declarations }
  public
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property IsConsume: Boolean read FIsConsume write FIsConsume;
  end;

implementation

end.
