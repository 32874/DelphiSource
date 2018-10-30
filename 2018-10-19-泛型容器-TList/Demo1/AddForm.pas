unit AddForm;

interface

uses
  System.Generics.Collections, System.StrUtils, Unit2, DaoUnit, Winapi.Windows,
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAdd = class(TForm)
    lbName: TLabel;
    lbAge: TLabel;
    edtName: TEdit;
    edtAge: TEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdd: TfrmAdd;

implementation

uses
  Unit1;
{$R *.dfm}

procedure TfrmAdd.btnCancelClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmAdd.btnSaveClick(Sender: TObject);
var
  Student: TStudent;
  Guid, Id, Key: string;
  StuDictionary: TDictionary<string, TStudent>;
  Stu: TStudent;
begin
  Guid := TGUID.NewGuid.ToString;
  Id := Copy(Guid, 2, Length(Guid) - 2);
//  ShowMessage(Id + '  ' + Guid);
  Student := TStudent.Create(Id, StrToInt(edtAge.Text), edtName.Text);
  TDao.Add(Student);
  Self.Close;
  StuDictionary := TDao.ListStu;
  Form1.mmo1.Lines.Clear;
  //第二种遍历方式
  for Key in StuDictionary.Keys do
  begin
    StuDictionary.TryGetValue(Key, Stu);
    Form1.mmo1.Lines.Add(Stu.Id + '......' + Stu.name + '......' + Stu.Age.ToString);
  end;

end;

end.

