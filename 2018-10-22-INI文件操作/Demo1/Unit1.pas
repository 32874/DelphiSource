unit Unit1;

interface

uses
  System.IOUtils, System.IniFiles, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lbName: TLabel;
    edtName: TEdit;
    lbSex: TLabel;
    edtAge: TEdit;
    lbAge: TLabel;
    lbHobby: TLabel;
    lbAddress: TLabel;
    cbbAddress: TComboBox;
    btnSave: TBitBtn;
    rgSex: TRadioGroup;
    chkListenMusic: TCheckBox;
    chkPlayGame: TCheckBox;
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);
var
  IniFile: TIniFile;
  Section: string;
begin
//  ShowMessage(ExtractFilePath(ParamStr(0)));
  //≈‰÷√Œƒº˛
  IniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'UserConfig.ini');
  Section := 'basic';
  IniFile.WriteString(Section, 'edtName', edtName.Text);
  IniFile.WriteString(Section, 'edtAge', edtAge.Text);
  IniFile.WriteInteger(Section, 'rgSex', rgSex.ItemIndex);
  IniFile.WriteBool(Section, 'chkListenMusic', chkListenMusic.Checked);
  IniFile.WriteBool(Section, 'chkPlayGame', chkPlayGame.Checked);
  IniFile.WriteInteger(Section, 'cbbAddress', cbbAddress.ItemIndex);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  IniFile: TIniFile;
  Section: string;
begin
//  IniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'UserConfig.ini');
  IniFile := TIniFile.Create(TDirectory.GetCurrentDirectory + '\UserConfig.ini');
  edtName.Text := IniFile.ReadString('basic', 'edtName', '');
  edtAge.Text := IniFile.ReadString('basic', 'edtAge', '');
  rgSex.ItemIndex := IniFile.ReadInteger('basic', 'rgSex', -1);
  chkListenMusic.Checked := IniFile.ReadBool('basic', 'chkListenMusic', False);
  chkPlayGame.Checked := IniFile.ReadBool('basic', 'chkPlayGame', False);
  cbbAddress.ItemIndex := IniFile.ReadInteger('basic', 'cbbAddress', -1);
end;

end.

