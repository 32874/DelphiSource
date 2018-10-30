unit Unit1;

interface

uses
  System.JSON, System.Generics.Collections, Unit2, System.JSON.Serializers,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    btn1: TBitBtn;
    mmo1: TMemo;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  UserJson: string;
  Serializer: TJsonSerializer;
  Student: TStudent;
begin
  //字符串类型的JSON对象
  UserJson := '{"FName":"小黑","FAge":25}';
  Serializer := TJsonSerializer.Create;
  //序列化  把一个对象转换成跑一个JSON对象

  //反序列化
  Student := Serializer.Deserialize<TStudent>(UserJson);
  mmo1.Clear;
  mmo1.Lines.Add('反序列化：' + Student.Name + ',' + Student.Age.ToString);
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  UserJson: string;
  Serializer: TJsonSerializer;
  Student: TStudent;
begin
  //创建实体类对象
  Student := TStudent.Create;
  Student.Name := '小白';
  Student.Age := 30;
  //创建序列化对象
  Serializer := TJsonSerializer.Create;
  //序列化
  UserJson := Serializer.Serialize<TStudent>(Student);
  mmo1.Clear;
  mmo1.Lines.Add('序列化：' + UserJson);
end;

procedure TForm1.btn3Click(Sender: TObject);
var
  UserJson: string;
  Student: TStudent;
  List: TList<TStudent>;
  Serializer: TJsonSerializer;
begin
  //创建实体类对象
  List := TList<TStudent>.Create;
  List.Add(TStudent.Create('小白', 30));
  List.Add(TStudent.Create('萧蔷', 18));
  //创建序列化对象
  Serializer := TJsonSerializer.Create;
  mmo1.Clear;
  mmo1.Lines.Add('序列化：' + Serializer.Serialize<TList<TStudent>>(List));

end;

procedure TForm1.btn4Click(Sender: TObject);
var
  UserJson: string;
  Student: TStudent;
  List: TList<TStudent>;
  Serializer: TJsonSerializer;
begin
  UserJson := '{"FListHelper":{"FCount":2},"FItems":[{"FName":"小白","FAge":30},{"FName":"萧蔷","FAge":18}],"FComparer":{}}';
  //创建序列化对象
  Serializer := TJsonSerializer.Create;
  List := TList<TStudent>.Create;
  List := Serializer.Deserialize<TList<TStudent>>(UserJson);
  mmo1.Clear;
  for Student in List do
  begin
    mmo1.Lines.Add('反序列化：' + Student.Name + ',' + Student.Age.ToString);
  end;
  mem
end;

end.

