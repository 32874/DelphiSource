unit MultipleThread;

interface

uses
  uSyncThread, uThreads, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    lb1: TLabel;
    btn1: TButton;
    btn2: TButton;
    grp1: TGroupBox;
    lb2: TLabel;
    btnStart: TBitBtn;
    btnPause: TBitBtn;
    btnContinue: TBitBtn;
    btnTerminate: TBitBtn;
    lb3: TLabel;
    btn3: TBitBtn;
    mmo1: TMemo;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnContinueClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTerminateClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

var
  WorkThread: TWork;

implementation

{$R *.dfm}
procedure Work();
var
  Num: Integer;
begin
  for Num := 1 to 1000000 do
  begin
    Form1.lb1.Caption := Num.ToString;
    TThread.Sleep(100);
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  //�����߳�
//  TThread.CreateAnonymousThread(Work).Start;
  TThread.CreateAnonymousThread(
    procedure
    var
      Num: Integer;
    begin
      for Num := 1 to 1000000 do
      begin
        Form1.lb1.Caption := Num.ToString;
        TThread.Sleep(10);
      end

    end).Start;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  lb1.Caption := '0';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  TWorkingThread.Create(False);
  TWorkingThread.Create(False);
end;

procedure TForm1.btnContinueClick(Sender: TObject);
begin
//  WorkThread.Resume;
  WorkThread.Suspended := False;
end;

procedure TForm1.btnPauseClick(Sender: TObject);
begin
  WorkThread.Suspended := True;
end;

procedure TForm1.btnStartClick(Sender: TObject);
begin
  try
    WorkThread.Start;
  except
    on E: Exception do
      ShowMessage('����ʧ��');
  end;

end;

procedure TForm1.btnTerminateClick(Sender: TObject);
begin
  WorkThread.FreeOnTerminate := True;
//  try
//    TerminateThread(WorkThread.Handle, 0);
//  except on E: Exception do
//    ShowMessage('��ֹʧ��');
//  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  WorkThread := TWork.Create(True);
end;

end.

