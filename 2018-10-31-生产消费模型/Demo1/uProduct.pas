unit uProduct;

interface

uses
  System.Classes;

type
  //��Ʒ��
  TProduct = class
  private { Private declarations }
    //��Ʒ���
    FId: Integer; { Private declarations }
    //��Ʒ����
    FName: string;
    //��Ʒ�Ƿ��Ѿ�������
    FIsConsume:Boolean;
    { Private declarations }
  public
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property IsConsume: Boolean read FIsConsume write FIsConsume;
  end;

implementation

end.
