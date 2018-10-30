unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
  Msg:TMyMsg;
  MsgAccept:TMsgAccepter;
begin
  Msg.MsgNum:=2000;
  Msg.MsgText:='消息和事件';
  MsgAccept:=TMsgAccepter.Create;
  MsgAccept.Dispatch(Msg);
end;

procedure TForm1.btn2Click(Sender: TObject);
  var
  Msg:TMyMsg;
  MsgAccept:TMsgAccepter;
begin
  Msg.MsgNum:=2002;
  Msg.MsgText:='消息和事件';
  MsgAccept:=TMsgAccepter.Create;
  MsgAccept.Dispatch(Msg);
end;

end.

