object Form1: TForm1
  Left = 640
  Top = 208
  BorderStyle = bsSingle
  Caption = #27867#22411#23481#22120#31867
  ClientHeight = 452
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 128
    Width = 569
    Height = 322
    TabOrder = 0
  end
  object btnAdd: TBitBtn
    Left = 5
    Top = 89
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnDelte: TBitBtn
    Left = 123
    Top = 89
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
    OnClick = btnDelteClick
  end
  object btnModify: TBitBtn
    Left = 243
    Top = 89
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 3
  end
  object btnFind: TBitBtn
    Left = 363
    Top = 89
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 4
    OnClick = btnFindClick
  end
  object btnClear: TBitBtn
    Left = 483
    Top = 89
    Width = 75
    Height = 25
    Caption = #28165#31354
    TabOrder = 5
  end
  object edt1: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
