object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #54217#50504#44368#54924' '#52628#44032' '#49849#51064#52376#47532
  ClientHeight = 890
  ClientWidth = 1599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 8
    Top = 8
    Width = 1121
    Height = 690
    TabOrder = 0
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C000000DC730000504700000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Memo1: TMemo
    Left = 1136
    Top = 632
    Width = 152
    Height = 182
    TabOrder = 1
    WordWrap = False
  end
  object Memo2: TMemo
    Left = 1135
    Top = 8
    Width = 146
    Height = 618
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object carMemo1: TMemo
    Left = 1339
    Top = 176
    Width = 252
    Height = 105
    Lines.Strings = (
      'carMemo1')
    TabOrder = 3
  end
  object carMemo2: TMemo
    Left = 1339
    Top = 287
    Width = 252
    Height = 106
    Lines.Strings = (
      'carMemo2')
    TabOrder = 4
  end
  object carMemo3: TMemo
    Left = 1339
    Top = 399
    Width = 252
    Height = 106
    Lines.Strings = (
      'carMemo3')
    TabOrder = 5
  end
  object carMemo4: TMemo
    Left = 1339
    Top = 511
    Width = 252
    Height = 89
    Lines.Strings = (
      'carMemo4')
    TabOrder = 6
  end
  object carMemo5: TMemo
    Left = 1339
    Top = 606
    Width = 252
    Height = 89
    Lines.Strings = (
      'carMemo5')
    TabOrder = 7
  end
  object carMemo6: TMemo
    Left = 1339
    Top = 701
    Width = 252
    Height = 89
    Lines.Strings = (
      'carMemo6')
    TabOrder = 8
  end
  object carMemo7: TMemo
    Left = 1339
    Top = 796
    Width = 252
    Height = 89
    Lines.Strings = (
      'carMemo7')
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 1294
    Top = 11
    Width = 297
    Height = 874
    Caption = 'Panel1'
    TabOrder = 10
    object Label1: TLabel
      Left = 44
      Top = 20
      Width = 80
      Height = 20
      Caption = #44160#49353#45824#49345
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 44
      Top = 57
      Width = 80
      Height = 20
      Caption = #49849#51064#52376#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 94
      Width = 100
      Height = 20
      Caption = #44592#49849#51064#52376#47532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Memo3: TMemo
      Left = 24
      Top = 136
      Width = 241
      Height = 337
      Lines.Strings = (
        'Memo3')
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Edit8: TEdit
      Left = 144
      Top = 91
      Width = 121
      Height = 28
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object Edit6: TEdit
      Left = 144
      Top = 17
      Width = 121
      Height = 28
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object Edit7: TEdit
      Left = 144
      Top = 54
      Width = 121
      Height = 28
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0'
    end
    object Memo4: TMemo
      Left = 24
      Top = 479
      Width = 241
      Height = 378
      Lines.Strings = (
        'Memo4')
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 704
    Width = 1121
    Height = 181
    Caption = 'Panel2'
    TabOrder = 11
    object Button1: TButton
      Left = 606
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 247
      Top = 105
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 374
      Top = 106
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit2'
    end
    object loginBtn: TButton
      Left = 8
      Top = 20
      Width = 75
      Height = 25
      Caption = 'LOGIN'
      TabOrder = 3
      OnClick = loginBtnClick
    end
    object Edit3: TEdit
      Left = 120
      Top = 78
      Width = 817
      Height = 21
      TabOrder = 4
      Text = 'Edit3'
    end
    object carSerchStartBtn: TButton
      Left = 120
      Top = 20
      Width = 75
      Height = 25
      Caption = #52264#47049#44160#49353
      TabOrder = 5
      OnClick = carSerchStartBtnClick
    end
    object day1Btn: TButton
      Left = 201
      Top = 20
      Width = 75
      Height = 25
      Caption = #51068#51452#52264#51201#50857
      TabOrder = 6
      OnClick = day1BtnClick
    end
    object Edit4: TEdit
      Left = 120
      Top = 133
      Width = 257
      Height = 21
      TabOrder = 7
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 120
      Top = 105
      Width = 121
      Height = 21
      TabOrder = 8
      Text = 'Edit5'
    end
    object Button4: TButton
      Left = 282
      Top = 20
      Width = 75
      Height = 25
      Caption = #52264#47049#44160#49353#51004#47196
      TabOrder = 9
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 363
      Top = 20
      Width = 75
      Height = 25
      Caption = #52264#47049#49849#51064#52376#47532
      TabOrder = 10
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 444
      Top = 20
      Width = 75
      Height = 25
      Caption = 'multe exit'
      TabOrder = 11
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 525
      Top = 20
      Width = 75
      Height = 25
      Caption = #47680#54000#49440#53469
      TabOrder = 12
      OnClick = Button7Click
    end
    object pkeyEdit: TEdit
      Left = 120
      Top = 51
      Width = 121
      Height = 21
      TabOrder = 13
    end
  end
end
