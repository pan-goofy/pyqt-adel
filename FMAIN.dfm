object Form1: TForm1
  Left = 426
  Top = 59
  ActiveControl = Edit1
  AutoScroll = False
  Caption = 'DLL Interface Template'
  ClientHeight = 715
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel4: TPanel
    Left = 0
    Top = 456
    Width = 764
    Height = 65
    TabOrder = 3
    object Label15: TLabel
      Left = 192
      Top = 42
      Width = 48
      Height = 12
      Caption = 'Card No.'
    end
    object Label16: TLabel
      Left = 41
      Top = 41
      Width = 48
      Height = 12
      Caption = 'Room No.'
    end
    object Label49: TLabel
      Left = 43
      Top = 23
      Width = 42
      Height = 12
      Caption = #25151'   '#21495
    end
    object Label50: TLabel
      Left = 193
      Top = 25
      Width = 42
      Height = 12
      Caption = #21345'   '#21495
    end
    object Edit12: TEdit
      Left = 242
      Top = 19
      Width = 56
      Height = 20
      MaxLength = 10
      TabOrder = 0
      Text = '0'
    end
    object Edit13: TEdit
      Left = 105
      Top = 19
      Width = 73
      Height = 20
      MaxLength = 12
      TabOrder = 1
      Text = '0501'
    end
    object BitBtn5: TBitBtn
      Left = 316
      Top = 16
      Width = 110
      Height = 35
      Caption = #27880#38144#65288'Erase'#65289
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object Edit100: TEdit
      Left = 451
      Top = 21
      Width = 114
      Height = 20
      TabOrder = 3
      Text = 'TestUser'
    end
    object Button14: TButton
      Left = 592
      Top = 15
      Width = 153
      Height = 35
      Caption = #26356#25913#25805#20316#21592'(Change User)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button14Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 273
    Width = 764
    Height = 184
    Align = alTop
    TabOrder = 2
    object Label7: TLabel
      Left = 26
      Top = 32
      Width = 48
      Height = 12
      Caption = 'Room No.'
    end
    object Label8: TLabel
      Left = 216
      Top = 32
      Width = 66
      Height = 12
      Caption = 'Active Time'
    end
    object Label9: TLabel
      Left = 26
      Top = 75
      Width = 48
      Height = 12
      Caption = 'Card No.'
    end
    object Label10: TLabel
      Left = 216
      Top = 78
      Width = 60
      Height = 12
      Caption = 'Guest Name'
    end
    object Label11: TLabel
      Left = 423
      Top = 72
      Width = 36
      Height = 12
      Caption = 'Status'
    end
    object Label4: TLabel
      Left = 14
      Top = 121
      Width = 84
      Height = 12
      Caption = 'Opening Method'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 217
      Top = 121
      Width = 54
      Height = 12
      Caption = 'Breakfast'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 399
      Top = 118
      Width = 102
      Height = 12
      Caption = 'Mulity-relay lift'
    end
    object Label20: TLabel
      Left = 31
      Top = 165
      Width = 24
      Height = 12
      Caption = 'Gate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 27
      Top = 12
      Width = 42
      Height = 12
      Caption = #25151'   '#21495
    end
    object Label41: TLabel
      Left = 224
      Top = 13
      Width = 48
      Height = 12
      Caption = #26377#25928#26102#38388
    end
    object Label42: TLabel
      Left = 24
      Top = 58
      Width = 42
      Height = 12
      Caption = #21345'   '#21495
    end
    object Label43: TLabel
      Left = 224
      Top = 59
      Width = 48
      Height = 12
      Caption = #23458#20154#22995#21517
    end
    object Label44: TLabel
      Left = 424
      Top = 56
      Width = 36
      Height = 12
      Caption = #23458#20154'ID'
    end
    object Label45: TLabel
      Left = 32
      Top = 146
      Width = 24
      Height = 12
      Caption = #36890#36947
    end
    object Label46: TLabel
      Left = 24
      Top = 106
      Width = 48
      Height = 12
      Caption = #24320#38376#26041#24335
    end
    object Label47: TLabel
      Left = 216
      Top = 103
      Width = 48
      Height = 12
      Caption = #26089#39184#25968#37327
    end
    object Label48: TLabel
      Left = 432
      Top = 99
      Width = 48
      Height = 12
      Caption = #22810#36335#30005#26799
    end
    object Edit4: TEdit
      Left = 104
      Top = 10
      Width = 81
      Height = 20
      MaxLength = 6
      ReadOnly = True
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 285
      Top = 11
      Width = 161
      Height = 20
      MaxLength = 24
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 608
      Top = 45
      Width = 110
      Height = 35
      Caption = #35835#21345'(Read Card)'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object Edit6: TEdit
      Left = 104
      Top = 54
      Width = 81
      Height = 20
      MaxLength = 6
      ReadOnly = True
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 285
      Top = 55
      Width = 81
      Height = 20
      MaxLength = 6
      ReadOnly = True
      TabOrder = 4
    end
    object Edit8: TEdit
      Left = 474
      Top = 56
      Width = 81
      Height = 20
      MaxLength = 6
      ReadOnly = True
      TabOrder = 5
    end
    object Edit15: TEdit
      Left = 104
      Top = 101
      Width = 81
      Height = 20
      MaxLength = 6
      TabOrder = 6
    end
    object SpinEdit1: TSpinEdit
      Left = 286
      Top = 96
      Width = 104
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 4
      MaxValue = 3
      MinValue = 0
      ParentFont = False
      TabOrder = 7
      Value = 1
    end
    object Edit17: TEdit
      Left = 506
      Top = 98
      Width = 79
      Height = 20
      TabOrder = 8
    end
    object Edit19: TEdit
      Left = 103
      Top = 143
      Width = 82
      Height = 20
      MaxLength = 99
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 764
    Height = 200
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 18
      Top = 40
      Width = 48
      Height = 12
      Caption = 'Room No.'
    end
    object Label6: TLabel
      Left = 145
      Top = 40
      Width = 66
      Height = 12
      Caption = 'Active Time'
    end
    object Label12: TLabel
      Left = 19
      Top = 91
      Width = 48
      Height = 12
      Caption = 'Card No.'
    end
    object Label13: TLabel
      Left = 154
      Top = 91
      Width = 60
      Height = 12
      Caption = 'Guest Name'
    end
    object Label14: TLabel
      Left = 363
      Top = 91
      Width = 48
      Height = 12
      Caption = 'Guest ID'
    end
    object Label2: TLabel
      Left = 352
      Top = 142
      Width = 84
      Height = 12
      Caption = 'Opening Method'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 171
      Top = 142
      Width = 54
      Height = 12
      Caption = 'Breakfast'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 26
      Top = 143
      Width = 24
      Height = 12
      Caption = 'Gate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 160
      Top = 21
      Width = 48
      Height = 12
      Caption = #26377#25928#26102#38388
    end
    object Label34: TLabel
      Left = 528
      Top = 8
      Width = 6
      Height = 12
    end
    object Label33: TLabel
      Left = 16
      Top = 72
      Width = 42
      Height = 12
      Caption = #21345'   '#21495
    end
    object Label35: TLabel
      Left = 160
      Top = 72
      Width = 48
      Height = 12
      Caption = #23458#20154#22995#21517
    end
    object Label36: TLabel
      Left = 368
      Top = 72
      Width = 36
      Height = 12
      Caption = #23458#20154'ID'
    end
    object Label37: TLabel
      Left = 24
      Top = 123
      Width = 24
      Height = 12
      Caption = #36890#36947
    end
    object Label38: TLabel
      Left = 176
      Top = 122
      Width = 48
      Height = 12
      Caption = #26089#39184#25968#37327
    end
    object Label39: TLabel
      Left = 368
      Top = 122
      Width = 48
      Height = 12
      Caption = #24320#38376#26041#24335
    end
    object Label31: TLabel
      Left = 19
      Top = 21
      Width = 42
      Height = 12
      Caption = #25151'   '#21495
    end
    object Edit2: TEdit
      Left = 70
      Top = 17
      Width = 70
      Height = 20
      MaxLength = 12
      TabOrder = 0
      Text = '0102'
    end
    object Edit3: TEdit
      Left = 216
      Top = 17
      Width = 153
      Height = 20
      MaxLength = 24
      TabOrder = 1
      Text = '200201011200200212311200'
    end
    object BitBtn3: TBitBtn
      Left = 592
      Top = 16
      Width = 153
      Height = 35
      Caption = #21457#21345'(New Key'#65289
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object Edit9: TEdit
      Left = 70
      Top = 69
      Width = 70
      Height = 20
      MaxLength = 6
      ReadOnly = True
      TabOrder = 3
    end
    object Edit10: TEdit
      Left = 229
      Top = 69
      Width = 112
      Height = 20
      MaxLength = 6
      TabOrder = 4
      Text = 'Guest Name'
    end
    object Edit11: TEdit
      Left = 418
      Top = 69
      Width = 136
      Height = 20
      MaxLength = 6
      TabOrder = 5
      Text = 'Account No.'
    end
    object CheckBox2: TCheckBox
      Left = 388
      Top = 17
      Width = 149
      Height = 17
      Caption = #35206#30422'(Cover Before)'
      TabOrder = 6
    end
    object Edit14: TEdit
      Left = 440
      Top = 117
      Width = 43
      Height = 20
      MaxLength = 6
      TabOrder = 7
      Text = '0'
    end
    object BitBtn2: TBitBtn
      Left = 592
      Top = 67
      Width = 153
      Height = 35
      Caption = #22797#21046#21345'(Duplicate Key)'
      TabOrder = 8
      OnClick = BitBtn2Click
    end
    object BitBtn7: TBitBtn
      Left = 592
      Top = 117
      Width = 153
      Height = 35
      Caption = #22686#21152#21345'(Add Key)'
      TabOrder = 9
      Visible = False
      OnClick = BitBtn7Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 169
      Width = 201
      Height = 17
      Caption = #22810#36335#30005#26799'(Mulity-relay lift)'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object Edit16: TEdit
      Left = 225
      Top = 166
      Width = 95
      Height = 20
      TabOrder = 11
      Text = '1,2,4,8'
    end
    object Szcq: TSpinEdit
      Left = 241
      Top = 117
      Width = 104
      Height = 23
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      MaxLength = 4
      MaxValue = 3
      MinValue = 0
      ParentFont = False
      TabOrder = 12
      Value = 1
    end
    object Edit18: TEdit
      Left = 69
      Top = 118
      Width = 71
      Height = 20
      MaxLength = 30
      TabOrder = 13
      Text = '0102'
    end
    object CheckBox3: TCheckBox
      Left = 353
      Top = 169
      Width = 192
      Height = 17
      Caption = #37319#38598#25351#32441'(Scan Fingerprint)'
      TabOrder = 14
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 43
      Width = 36
      Height = 12
      Caption = 'Server'
    end
    object Label3: TLabel
      Left = 274
      Top = 43
      Width = 66
      Height = 12
      Caption = 'Serial port'
    end
    object Label29: TLabel
      Left = 24
      Top = 25
      Width = 60
      Height = 12
      Caption = #25968#25454#24211#22320#22336
    end
    object Label30: TLabel
      Left = 296
      Top = 27
      Width = 24
      Height = 12
      Caption = #20018#21475
    end
    object Edit1: TEdit
      Left = 88
      Top = 22
      Width = 150
      Height = 20
      TabOrder = 0
      Text = '(local)'
    end
    object ComboBox2: TComboBox
      Left = 348
      Top = 21
      Width = 65
      Height = 20
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 12
      ItemIndex = 0
      TabOrder = 1
      Text = 'USB'
      Items.Strings = (
        'USB'
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
    object BitBtn1: TBitBtn
      Left = 485
      Top = 18
      Width = 110
      Height = 35
      Caption = #21021#22987#21270'(Init)'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 600
      Top = 18
      Width = 110
      Height = 35
      Caption = #36864#20986'(Exit)'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 521
    Width = 764
    Height = 192
    TabOrder = 4
    object Label21: TLabel
      Left = 35
      Top = 38
      Width = 18
      Height = 12
      Caption = 'Key'
    end
    object Label22: TLabel
      Left = 192
      Top = 38
      Width = 54
      Height = 12
      Caption = 'Authority'
    end
    object Label23: TLabel
      Left = 352
      Top = 38
      Width = 42
      Height = 12
      Caption = 'Section'
    end
    object Label24: TLabel
      Left = 494
      Top = 38
      Width = 30
      Height = 12
      Caption = 'Block'
    end
    object Label26: TLabel
      Left = 608
      Top = 38
      Width = 36
      Height = 12
      Caption = 'Length'
    end
    object Label27: TLabel
      Left = 42
      Top = 85
      Width = 132
      Height = 12
      Caption = 'Read Data(hexadecimal)'
    end
    object Label28: TLabel
      Left = 40
      Top = 132
      Width = 138
      Height = 12
      Caption = 'Write Data(hexadecimal)'
    end
    object Label51: TLabel
      Left = 24
      Top = 24
      Width = 36
      Height = 12
      Caption = #23494'  '#30721
    end
    object Label52: TLabel
      Left = 200
      Top = 24
      Width = 36
      Height = 12
      Caption = #25480'  '#26435
    end
    object Label53: TLabel
      Left = 352
      Top = 24
      Width = 36
      Height = 12
      Caption = #25159'  '#21306
    end
    object Label54: TLabel
      Left = 488
      Top = 24
      Width = 36
      Height = 12
      Caption = #22359'  '#21495
    end
    object Label55: TLabel
      Left = 608
      Top = 24
      Width = 36
      Height = 12
      Caption = #38271'  '#24230
    end
    object Label56: TLabel
      Left = 48
      Top = 64
      Width = 108
      Height = 12
      Caption = #35835#25968#25454#65288#21313#20845#36827#21046#65289
    end
    object Label57: TLabel
      Left = 48
      Top = 115
      Width = 108
      Height = 12
      Caption = #20889#25968#25454#65288#21313#20845#36827#21046#65289
    end
    object Edit20: TEdit
      Left = 72
      Top = 17
      Width = 89
      Height = 20
      MaxLength = 12
      TabOrder = 0
      Text = 'FFFFFFFFFFFF'
    end
    object ComboBox1: TComboBox
      Left = 259
      Top = 16
      Width = 50
      Height = 20
      ItemHeight = 12
      ItemIndex = 0
      TabOrder = 1
      Text = 'A'
      Items.Strings = (
        'A'
        'B')
    end
    object ComboBox3: TComboBox
      Left = 404
      Top = 17
      Width = 50
      Height = 20
      ItemHeight = 12
      ItemIndex = 0
      TabOrder = 2
      Text = '0'
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15')
    end
    object ComboBox4: TComboBox
      Left = 537
      Top = 17
      Width = 50
      Height = 20
      ItemHeight = 12
      ItemIndex = 0
      TabOrder = 3
      Text = '0'
      Items.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
    object ComboBox5: TComboBox
      Left = 656
      Top = 19
      Width = 50
      Height = 20
      ItemHeight = 12
      ItemIndex = 0
      TabOrder = 4
      Text = '16'
      Items.Strings = (
        '16'
        '32'
        '48')
    end
    object Edit21: TEdit
      Left = 192
      Top = 69
      Width = 393
      Height = 20
      TabOrder = 5
    end
    object Edit22: TEdit
      Left = 192
      Top = 111
      Width = 393
      Height = 20
      TabOrder = 6
    end
    object Button2: TButton
      Left = 608
      Top = 66
      Width = 145
      Height = 25
      Caption = #35835#25968#25454'(ReadCardData)'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 608
      Top = 109
      Width = 145
      Height = 25
      Caption = #20889#25968#25454'(WriteCardData)'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 72
      Top = 155
      Width = 107
      Height = 25
      Caption = #35835#21345'ID(Read ID)'
      TabOrder = 9
      OnClick = Button4Click
    end
    object Edit23: TEdit
      Left = 194
      Top = 158
      Width = 121
      Height = 20
      TabOrder = 10
    end
  end
end
