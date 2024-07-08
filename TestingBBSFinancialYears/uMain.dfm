object Form1: TForm1
  Left = 613
  Top = 166
  Caption = 'Comparing Financial Years BBS vs Xero'
  ClientHeight = 568
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 54
    Height = 15
    Caption = 'Xero Years'
  end
  object Label2: TLabel
    Left = 352
    Top = 19
    Width = 50
    Height = 15
    Caption = 'BBS Years'
  end
  object mem_xeroYrs: TMemo
    Left = 32
    Top = 40
    Width = 249
    Height = 289
    Lines.Strings = (
      '2022'
      '2023'
      '2024')
    TabOrder = 0
  end
  object mem_bbsYrs: TMemo
    Left = 352
    Top = 40
    Width = 249
    Height = 289
    Lines.Strings = (
      '2019'
      '2020'
      '2021'
      '2022')
    TabOrder = 1
  end
  object btnCompare: TButton
    Left = 232
    Top = 368
    Width = 163
    Height = 25
    Caption = 'Insert Years into BBS'
    TabOrder = 2
    OnClick = btnCompareClick
  end
  object mem_log: TMemo
    Left = 680
    Top = 40
    Width = 257
    Height = 289
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
