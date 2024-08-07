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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1029
    Height = 568
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
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
          '2018'
          '2019'
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
      object mem_data: TMemo
        Left = 48
        Top = 417
        Width = 185
        Height = 89
        TabOrder = 4
      end
      object btnAnotherSolution: TButton
        Left = 488
        Top = 368
        Width = 137
        Height = 25
        Caption = 'Another Solution'
        TabOrder = 5
        OnClick = btnAnotherSolutionClick
      end
      object Button1: TButton
        Left = 752
        Top = 432
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 6
        OnClick = Button1Click
      end
      object btn_Test: TButton
        Left = 48
        Top = 512
        Width = 75
        Height = 25
        Caption = 'Test'
        TabOrder = 7
        OnClick = btn_TestClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object mem_xeroJson: TMemo
        Left = 48
        Top = 40
        Width = 897
        Height = 161
        Lines.Strings = (
          
            ' [{"id":"50b3e1b1-dad5-4bb0-a4c6-cef2734df4ce","authEventId":"a9' +
            'c325f2-d9e5-45ab-8dc9-'
          
            '80ebb579f861","tenantId":"84ac1b57-e592-4946-9d9a-ac350701af0a",' +
            '"tenantType":"ORGANISATION","tenantName":"Demo Company (AU)","cr' +
            'eatedDateUtc":"2024-'
          
            '08-01T00:53:29.8200270","updatedDateUtc":"2024-08-06T06:36:47.74' +
            '87120"},{"id":"ba6ef654-7047-4859-a370-'
          
            '4884190f3a2b","authEventId":"fa6f9766-ca6d-44de-9982-cc2f8663e61' +
            'a","tenantId":"b70576b2-6852-4504-ac02-'
          
            '2fb053326ddd","tenantType":"ORGANISATION","tenantName":"AI Shipp' +
            'ing Industries","createdDateUtc":"2024-'
          
            '07-08T05:44:21.0110660","updatedDateUtc":"2024-08-06T07:42:26.49' +
            '27150"}]')
        TabOrder = 0
      end
      object btnExtract: TButton
        Left = 56
        Top = 248
        Width = 75
        Height = 25
        Caption = 'Extract'
        TabOrder = 1
        OnClick = btnExtractClick
      end
      object mem_XeroDetails: TMemo
        Left = 56
        Top = 304
        Width = 577
        Height = 137
        TabOrder = 2
      end
    end
  end
end
