object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 558
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lb1: TLabel
    Left = 88
    Top = 32
    Width = 7
    Height = 13
    Caption = '0'
  end
  object lb3: TLabel
    Left = 456
    Top = 32
    Width = 7
    Height = 13
    Caption = '0'
  end
  object btn1: TButton
    Left = 32
    Top = 120
    Width = 75
    Height = 25
    Caption = #24320#22987#36816#31639
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 120
    Width = 75
    Height = 25
    Caption = #36824#21407#26631#31614
    TabOrder = 1
    OnClick = btn2Click
  end
  object grp1: TGroupBox
    Left = 32
    Top = 200
    Width = 219
    Height = 313
    Caption = #22810#32447#31243#25511#21046
    TabOrder = 2
    object lb2: TLabel
      Left = 80
      Top = 56
      Width = 21
      Height = 13
      Caption = 'lb2'
    end
    object btnStart: TBitBtn
      Left = 144
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnPause: TBitBtn
      Left = 136
      Top = 115
      Width = 75
      Height = 25
      Caption = 'Pause'
      TabOrder = 1
      OnClick = btnPauseClick
    end
    object btnContinue: TBitBtn
      Left = 112
      Top = 171
      Width = 75
      Height = 25
      Caption = 'Continue'
      TabOrder = 2
      OnClick = btnContinueClick
    end
    object btnTerminate: TBitBtn
      Left = 112
      Top = 235
      Width = 75
      Height = 25
      Caption = 'Terminate'
      TabOrder = 3
      OnClick = btnTerminateClick
    end
  end
  object btn3: TBitBtn
    Left = 456
    Top = 64
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 3
    OnClick = btn3Click
  end
  object mmo1: TMemo
    Left = 346
    Top = 152
    Width = 215
    Height = 308
    Lines.Strings = (
      'mmo1')
    TabOrder = 4
  end
end
