object WL2CED: TWL2CED
  Left = 0
  Top = 0
  Caption = 'Wastelands'#160'2 character editor Rev'#160'2.0'
  ClientHeight = 674
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SObtn: TButton
    Left = 8
    Top = 8
    Width = 177
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1086#1093#1088#1072#1085#1105#1085#1085#1091#1102' '#1080#1075#1088#1091
    TabOrder = 0
    OnClick = SObtnClick
  end
  object CaracterID: TEdit
    Left = 8
    Top = 39
    Width = 177
    Height = 26
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = #1042#1089#1077#1075#1086' '#1102#1085#1080#1090#1086#1074
  end
  object CrLbtn: TButton
    Left = 471
    Top = 39
    Width = 154
    Height = 25
    Caption = #1057#1082#1072#1085#1080#1088#1086#1074#1072#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1078
    Enabled = False
    TabOrder = 2
    OnClick = CrLbtnClick
  end
  object SkillBrowsCntr: TPageControl
    Left = 8
    Top = 185
    Width = 617
    Height = 418
    ActivePage = AttributeSkillsSht
    TabOrder = 3
    object WeaponSkillSht: TTabSheet
      Caption = #1054#1088#1091#1078#1077#1081#1085#1099#1077
      object WSkillGrb: TGroupBox
        Left = 3
        Top = 3
        Width = 142
        Height = 326
        Caption = #1053#1072#1074#1099#1082
        TabOrder = 0
        object WS1: TEdit
          Left = 12
          Top = 20
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = #1044#1088#1086#1073#1103#1097#1077#1077
        end
        object WS2: TEdit
          Left = 12
          Top = 50
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = #1055#1080#1089#1090'.-'#1087#1091#1083#1077#1084#1105#1090
        end
        object WS3: TEdit
          Left = 10
          Top = 80
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = #1056#1091#1082#1086#1087#1072#1096#1085#1072#1103
        end
        object WS4: TEdit
          Left = 10
          Top = 110
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = #1057#1085#1072#1081#1087#1077#1088#1089#1082#1080#1077
        end
        object WS5: TEdit
          Left = 10
          Top = 140
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = #1058#1103#1078#1105#1083#1086#1077
        end
        object WS6: TEdit
          Left = 10
          Top = 170
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = #1061#1086#1083#1086#1076#1085#1086#1077
        end
        object WS7: TEdit
          Left = 10
          Top = 200
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = #1064#1090#1091#1088#1084#1086#1074#1099#1077
        end
        object WS8: TEdit
          Left = 10
          Top = 230
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = #1069#1085#1077#1088#1075#1077#1090#1080#1095#1077#1089#1082#1086#1077
        end
        object WS9: TEdit
          Left = 10
          Top = 260
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = #1044#1088#1086#1073#1086#1074#1080#1082#1080
        end
        object WS10: TEdit
          Left = 10
          Top = 290
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = #1055#1080#1089#1090#1086#1083#1077#1090#1099
        end
      end
      object WCurrLvlGrb: TGroupBox
        Left = 151
        Top = 2
        Width = 221
        Height = 327
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 1
        object WSPB1: TProgressBar
          Left = 8
          Top = 20
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 0
        end
        object WSPB2: TProgressBar
          Left = 8
          Top = 50
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 1
        end
        object WSPB3: TProgressBar
          Left = 8
          Top = 80
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 2
        end
        object WSPB4: TProgressBar
          Left = 8
          Top = 110
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 3
        end
        object WSPB5: TProgressBar
          Left = 8
          Top = 140
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 4
        end
        object WSPB6: TProgressBar
          Left = 8
          Top = 170
          Width = 150
          Height = 15
          Max = 10
          TabOrder = 5
        end
        object WSPB7: TProgressBar
          Left = 8
          Top = 200
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 6
        end
        object WSPB8: TProgressBar
          Left = 8
          Top = 230
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 7
        end
        object WSPB9: TProgressBar
          Left = 8
          Top = 260
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 8
        end
        object WSPB10: TProgressBar
          Left = 8
          Top = 290
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 9
        end
        object WSI1: TEdit
          Left = 164
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '0/10'
        end
        object WSI2: TEdit
          Left = 164
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = '0/10'
        end
        object WSI3: TEdit
          Left = 164
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = '0/10'
        end
        object WSI4: TEdit
          Left = 164
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = '0/10'
        end
        object WSI5: TEdit
          Left = 164
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          Text = '0/10'
        end
        object WSI6: TEdit
          Left = 164
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          Text = '0/10'
        end
        object WSI7: TEdit
          Left = 164
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          Text = '0/10'
        end
        object WSI8: TEdit
          Left = 164
          Top = 230
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          Text = '0/10'
        end
        object WSI9: TEdit
          Left = 164
          Top = 260
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
          Text = '0/10'
        end
        object WSI10: TEdit
          Left = 164
          Top = 290
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
          Text = '0/10'
        end
      end
      object WAplyLvlGrb: TGroupBox
        Left = 378
        Top = 3
        Width = 217
        Height = 326
        Caption = #1055#1088#1080#1084#1077#1085#1103#1077#1084#1099#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 2
        object WSTB1: TTrackBar
          Left = 3
          Top = 20
          Width = 150
          Height = 24
          TabOrder = 0
          OnChange = WSTB1Change
        end
        object WSL1: TEdit
          Left = 159
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '0/10'
        end
        object WSTB2: TTrackBar
          Left = 3
          Top = 50
          Width = 150
          Height = 24
          TabOrder = 2
          OnChange = WSTB1Change
        end
        object WSTB3: TTrackBar
          Left = 3
          Top = 80
          Width = 150
          Height = 24
          TabOrder = 3
          OnChange = WSTB1Change
        end
        object WSTB4: TTrackBar
          Left = 3
          Top = 110
          Width = 150
          Height = 24
          TabOrder = 4
          OnChange = WSTB1Change
        end
        object WSTB5: TTrackBar
          Left = 3
          Top = 140
          Width = 150
          Height = 24
          TabOrder = 5
          OnChange = WSTB1Change
        end
        object WSTB6: TTrackBar
          Left = 3
          Top = 170
          Width = 150
          Height = 24
          TabOrder = 6
          OnChange = WSTB1Change
        end
        object WSTB7: TTrackBar
          Left = 3
          Top = 200
          Width = 150
          Height = 24
          TabOrder = 7
          OnChange = WSTB1Change
        end
        object WSTB8: TTrackBar
          Left = 3
          Top = 230
          Width = 150
          Height = 24
          TabOrder = 8
          OnChange = WSTB1Change
        end
        object WSTB9: TTrackBar
          Left = 3
          Top = 260
          Width = 150
          Height = 24
          TabOrder = 9
          OnChange = WSTB1Change
        end
        object WSTB10: TTrackBar
          Left = 3
          Top = 290
          Width = 150
          Height = 24
          TabOrder = 10
          OnChange = WSTB1Change
        end
        object WSL2: TEdit
          Left = 159
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = '0/10'
        end
        object WSL3: TEdit
          Left = 159
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = '0/10'
        end
        object WSL4: TEdit
          Left = 159
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = '0/10'
        end
        object WSL5: TEdit
          Left = 159
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          Text = '0/10'
        end
        object WSL6: TEdit
          Left = 159
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          Text = '0/10'
        end
        object WSL7: TEdit
          Left = 159
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          Text = '0/10'
        end
        object WSL8: TEdit
          Left = 159
          Top = 230
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          Text = '0/10'
        end
        object WSL9: TEdit
          Left = 159
          Top = 260
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
          Text = '0/10'
        end
        object WSL10: TEdit
          Left = 159
          Top = 290
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
          Text = '0/10'
        end
      end
    end
    object GeneralSkillSht: TTabSheet
      Caption = #1054#1073#1097#1080#1077
      ImageIndex = 1
      object GSkillGrb: TGroupBox
        Left = 0
        Top = 3
        Width = 149
        Height = 382
        Caption = #1053#1072#1074#1099#1082
        TabOrder = 0
        object RS1: TEdit
          Left = 16
          Top = 20
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '"'#1047#1085#1072#1090#1086#1082' '#1079#1072#1087#1072#1076#1072'"'
        end
        object RS2: TEdit
          Left = 16
          Top = 50
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = #1057#1090#1088#1077#1083#1086#1082
        end
        object RS3: TEdit
          Left = 16
          Top = 80
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = #1042#1099#1078#1080#1074#1072#1085#1080#1077
        end
        object RS4: TEdit
          Left = 16
          Top = 110
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = #1043#1088#1091#1073#1072#1103' '#1089#1080#1083#1072
        end
        object RS5: TEdit
          Left = 16
          Top = 140
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = #1044#1088#1077#1089#1089#1080#1088#1086#1074#1097#1080#1082
        end
        object RS6: TEdit
          Left = 16
          Top = 170
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = #1046#1086#1087#1086#1083#1080#1079
        end
        object RS7: TEdit
          Left = 16
          Top = 200
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = #1047#1072#1076#1080#1088#1072
        end
        object RS8: TEdit
          Left = 16
          Top = 230
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = #1047#1086#1088#1082#1080#1081' '#1075#1083#1072#1079
        end
        object RS9: TEdit
          Left = 16
          Top = 260
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = #1051#1080#1076#1077#1088#1089#1090#1074#1086
        end
        object RS10: TEdit
          Left = 16
          Top = 290
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = #1052#1077#1085#1103#1083#1072
        end
        object RS11: TEdit
          Left = 16
          Top = 320
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = #1054#1088#1091#1078#1077#1081#1085#1080#1082
        end
        object RS12: TEdit
          Left = 16
          Top = 350
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = #1061#1080#1090#1088#1086#1078#1086#1087#1099#1081
        end
      end
      object GCurrLvlGrb: TGroupBox
        Left = 155
        Top = 3
        Width = 221
        Height = 382
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 1
        object RSPB1: TProgressBar
          Left = 8
          Top = 20
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 0
        end
        object RSPB2: TProgressBar
          Left = 8
          Top = 50
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 1
        end
        object RSPB3: TProgressBar
          Left = 8
          Top = 80
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 2
        end
        object RSPB4: TProgressBar
          Left = 8
          Top = 110
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 3
        end
        object RSPB5: TProgressBar
          Left = 8
          Top = 140
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 4
        end
        object RSPB6: TProgressBar
          Left = 8
          Top = 170
          Width = 150
          Height = 15
          Max = 10
          TabOrder = 5
        end
        object RSPB7: TProgressBar
          Left = 8
          Top = 200
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 6
        end
        object RSPB8: TProgressBar
          Left = 8
          Top = 230
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 7
        end
        object RSPB9: TProgressBar
          Left = 8
          Top = 260
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 8
        end
        object RSPB10: TProgressBar
          Left = 8
          Top = 290
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 9
        end
        object RSI1: TEdit
          Left = 164
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '0/10'
        end
        object RSI2: TEdit
          Left = 164
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = '0/10'
        end
        object RSI3: TEdit
          Left = 164
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = '0/10'
        end
        object RSI4: TEdit
          Left = 164
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = '0/10'
        end
        object RSI5: TEdit
          Left = 164
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          Text = '0/10'
        end
        object RSI6: TEdit
          Left = 164
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          Text = '0/10'
        end
        object RSI7: TEdit
          Left = 164
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          Text = '0/10'
        end
        object RSI8: TEdit
          Left = 164
          Top = 230
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          Text = '0/10'
        end
        object RSI9: TEdit
          Left = 164
          Top = 260
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
          Text = '0/10'
        end
        object RSI10: TEdit
          Left = 164
          Top = 290
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
          Text = '0/10'
        end
        object RSPB11: TProgressBar
          Left = 8
          Top = 320
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 20
        end
        object RSPB12: TProgressBar
          Left = 8
          Top = 350
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 21
        end
        object RSI11: TEdit
          Left = 164
          Top = 320
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
          Text = '0/10'
        end
        object RSI12: TEdit
          Left = 164
          Top = 348
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
          Text = '0/10'
        end
      end
      object GAplyLvlGrb: TGroupBox
        Left = 382
        Top = 3
        Width = 217
        Height = 384
        Caption = #1055#1088#1080#1084#1077#1085#1103#1077#1084#1099#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 2
        object RSTB1: TTrackBar
          Left = 3
          Top = 20
          Width = 150
          Height = 24
          TabOrder = 0
          OnChange = WSTB1Change
        end
        object RSL1: TEdit
          Left = 159
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '0/10'
        end
        object RSTB2: TTrackBar
          Left = 3
          Top = 50
          Width = 150
          Height = 24
          TabOrder = 2
          OnChange = WSTB1Change
        end
        object RSTB3: TTrackBar
          Left = 3
          Top = 80
          Width = 150
          Height = 24
          TabOrder = 3
          OnChange = WSTB1Change
        end
        object RSTB4: TTrackBar
          Left = 3
          Top = 110
          Width = 150
          Height = 24
          TabOrder = 4
          OnChange = WSTB1Change
        end
        object RSTB5: TTrackBar
          Left = 3
          Top = 140
          Width = 150
          Height = 24
          TabOrder = 5
          OnChange = WSTB1Change
        end
        object RSTB6: TTrackBar
          Left = 3
          Top = 170
          Width = 150
          Height = 24
          TabOrder = 6
          OnChange = WSTB1Change
        end
        object RSTB7: TTrackBar
          Left = 3
          Top = 200
          Width = 150
          Height = 24
          TabOrder = 7
          OnChange = WSTB1Change
        end
        object RSTB8: TTrackBar
          Left = 3
          Top = 230
          Width = 150
          Height = 24
          TabOrder = 8
          OnChange = WSTB1Change
        end
        object RSTB9: TTrackBar
          Left = 3
          Top = 260
          Width = 150
          Height = 24
          TabOrder = 9
          OnChange = WSTB1Change
        end
        object RSTB10: TTrackBar
          Left = 3
          Top = 290
          Width = 150
          Height = 24
          TabOrder = 10
          OnChange = WSTB1Change
        end
        object RSL2: TEdit
          Left = 159
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Text = '0/10'
        end
        object RSL3: TEdit
          Left = 159
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = '0/10'
        end
        object RSL4: TEdit
          Left = 159
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = '0/10'
        end
        object RSL5: TEdit
          Left = 159
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Text = '0/10'
        end
        object RSL6: TEdit
          Left = 159
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          Text = '0/10'
        end
        object RSL7: TEdit
          Left = 159
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          Text = '0/10'
        end
        object RSL8: TEdit
          Left = 159
          Top = 230
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          Text = '0/10'
        end
        object RSL9: TEdit
          Left = 159
          Top = 260
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          Text = '0/10'
        end
        object RSL10: TEdit
          Left = 159
          Top = 290
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          Text = '0/10'
        end
        object RSTB11: TTrackBar
          Left = 3
          Top = 320
          Width = 150
          Height = 24
          TabOrder = 20
          OnChange = WSTB1Change
        end
        object RSTB12: TTrackBar
          Left = 3
          Top = 350
          Width = 150
          Height = 24
          TabOrder = 21
          OnChange = WSTB1Change
        end
        object RSL11: TEdit
          Left = 159
          Top = 320
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          Text = '0/10'
        end
        object RSL12: TEdit
          Left = 159
          Top = 350
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          Text = '0/10'
        end
      end
    end
    object TechSkillSht: TTabSheet
      Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077
      ImageIndex = 2
      object TSkillGrb: TGroupBox
        Left = 0
        Top = 3
        Width = 149
        Height = 294
        Caption = #1053#1072#1074#1099#1082
        TabOrder = 0
        object TS1: TEdit
          Left = 16
          Top = 20
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = #1042#1079#1088#1099#1074#1086#1090#1077#1093#1085#1080#1082#1072
        end
        object TS2: TEdit
          Left = 16
          Top = 50
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1099
        end
        object TS3: TEdit
          Left = 16
          Top = 80
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = #1052#1077#1093#1072#1085#1080#1082#1072
        end
        object TS4: TEdit
          Left = 16
          Top = 110
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = #1055#1086#1083#1077#1074#1072#1103' '#1084#1077#1076'.'
        end
        object TS5: TEdit
          Left = 16
          Top = 140
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = #1056#1077#1084#1086#1085#1090' '#1090#1086#1089#1090#1077#1088#1086#1074
        end
        object TS6: TEdit
          Left = 16
          Top = 170
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = #1057#1085#1103#1090#1080#1077' '#1089#1080#1075#1085#1072#1083#1080#1079'.'
        end
        object TS7: TEdit
          Left = 16
          Top = 200
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = #1061#1080#1088#1091#1088#1075#1080#1103
        end
        object TS8: TEdit
          Left = 16
          Top = 230
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = #1042#1079#1083#1086#1084' '#1089#1077#1081#1092#1086#1074
        end
        object TS9: TEdit
          Left = 16
          Top = 260
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = #1042#1079#1083#1086#1084' '#1079#1072#1084#1082#1086#1074
        end
      end
      object TCurrLvlGrb: TGroupBox
        Left = 155
        Top = 3
        Width = 221
        Height = 294
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 1
        object TSPB1: TProgressBar
          Left = 8
          Top = 20
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 0
        end
        object TSPB2: TProgressBar
          Left = 8
          Top = 50
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 1
        end
        object TSPB3: TProgressBar
          Left = 8
          Top = 80
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 2
        end
        object TSPB4: TProgressBar
          Left = 8
          Top = 110
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 3
        end
        object TSPB5: TProgressBar
          Left = 8
          Top = 140
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 4
        end
        object TSPB6: TProgressBar
          Left = 8
          Top = 170
          Width = 150
          Height = 15
          Max = 10
          TabOrder = 5
        end
        object TSPB7: TProgressBar
          Left = 8
          Top = 200
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 6
        end
        object TSPB8: TProgressBar
          Left = 8
          Top = 230
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 7
        end
        object TSPB9: TProgressBar
          Left = 8
          Top = 260
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 8
        end
        object TSI1: TEdit
          Left = 164
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = '0/10'
        end
        object TSI2: TEdit
          Left = 164
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '0/10'
        end
        object TSI3: TEdit
          Left = 164
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = '0/10'
        end
        object TSI4: TEdit
          Left = 164
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = '0/10'
        end
        object TSI5: TEdit
          Left = 164
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = '0/10'
        end
        object TSI6: TEdit
          Left = 164
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
          Text = '0/10'
        end
        object TSI7: TEdit
          Left = 164
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
          Text = '0/10'
        end
        object TSI8: TEdit
          Left = 164
          Top = 230
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          Text = '0/10'
        end
        object TSI9: TEdit
          Left = 164
          Top = 260
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
          Text = '0/10'
        end
      end
      object TAplyLvlGrb: TGroupBox
        Left = 382
        Top = 3
        Width = 217
        Height = 294
        Caption = #1055#1088#1080#1084#1077#1085#1103#1077#1084#1099#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 2
        object TSTB1: TTrackBar
          Left = 3
          Top = 20
          Width = 150
          Height = 24
          TabOrder = 0
          OnChange = WSTB1Change
        end
        object TSL1: TEdit
          Left = 159
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '0/10'
        end
        object TSTB2: TTrackBar
          Left = 3
          Top = 50
          Width = 150
          Height = 24
          TabOrder = 2
          OnChange = WSTB1Change
        end
        object TSTB3: TTrackBar
          Left = 3
          Top = 80
          Width = 150
          Height = 24
          TabOrder = 3
          OnChange = WSTB1Change
        end
        object TSTB4: TTrackBar
          Left = 3
          Top = 110
          Width = 150
          Height = 24
          TabOrder = 4
          OnChange = WSTB1Change
        end
        object TSTB5: TTrackBar
          Left = 3
          Top = 140
          Width = 150
          Height = 24
          TabOrder = 5
          OnChange = WSTB1Change
        end
        object TSTB6: TTrackBar
          Left = 3
          Top = 170
          Width = 150
          Height = 24
          TabOrder = 6
          OnChange = WSTB1Change
        end
        object TSTB7: TTrackBar
          Left = 3
          Top = 200
          Width = 150
          Height = 24
          TabOrder = 7
          OnChange = WSTB1Change
        end
        object TSTB8: TTrackBar
          Left = 3
          Top = 230
          Width = 150
          Height = 24
          TabOrder = 8
          OnChange = WSTB1Change
        end
        object TSTB9: TTrackBar
          Left = 3
          Top = 260
          Width = 150
          Height = 24
          TabOrder = 9
          OnChange = WSTB1Change
        end
        object TSL2: TEdit
          Left = 159
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Text = '0/10'
        end
        object TSL3: TEdit
          Left = 159
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Text = '0/10'
        end
        object TSL4: TEdit
          Left = 159
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = '0/10'
        end
        object TSL5: TEdit
          Left = 159
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = '0/10'
        end
        object TSL6: TEdit
          Left = 159
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Text = '0/10'
        end
        object TSL7: TEdit
          Left = 159
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          Text = '0/10'
        end
        object TSL8: TEdit
          Left = 159
          Top = 230
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          Text = '0/10'
        end
        object TSL9: TEdit
          Left = 159
          Top = 260
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          Text = '0/10'
        end
      end
    end
    object AttributeSkillsSht: TTabSheet
      Caption = #1040#1090#1088#1080#1073#1091#1090#1099
      ImageIndex = 3
      object AtrSkillGrb: TGroupBox
        Left = 3
        Top = 11
        Width = 149
        Height = 238
        Caption = #1053#1072#1074#1099#1082
        TabOrder = 0
        object as1: TEdit
          Left = 16
          Top = 20
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = #1050#1086#1086#1088#1076#1080#1085#1072#1094#1080#1103
        end
        object as2: TEdit
          Left = 16
          Top = 50
          Width = 119
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = #1059#1076#1072#1095#1072
        end
        object as3: TEdit
          Left = 16
          Top = 80
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = #1042#1086#1089#1087#1088#1080#1103#1090#1080#1077
        end
        object as4: TEdit
          Left = 16
          Top = 110
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = #1057#1080#1083#1072
        end
        object as5: TEdit
          Left = 16
          Top = 140
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = #1057#1082#1086#1088#1086#1089#1090#1100
        end
        object as6: TEdit
          Left = 16
          Top = 170
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = #1048#1085#1090#1077#1083#1083#1077#1082#1090
        end
        object as7: TEdit
          Left = 16
          Top = 200
          Width = 121
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = #1061#1072#1088#1080#1079#1084#1072
        end
      end
      object AtrCurrLvlGrb: TGroupBox
        Left = 163
        Top = 11
        Width = 221
        Height = 238
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 1
        object ASPB1: TProgressBar
          Left = 8
          Top = 20
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 0
        end
        object ASPB2: TProgressBar
          Left = 8
          Top = 50
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 1
        end
        object ASPB3: TProgressBar
          Left = 8
          Top = 80
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 2
        end
        object ASPB4: TProgressBar
          Left = 8
          Top = 110
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 3
        end
        object ASPB5: TProgressBar
          Left = 8
          Top = 140
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 4
        end
        object ASPB6: TProgressBar
          Left = 8
          Top = 170
          Width = 150
          Height = 15
          Max = 10
          TabOrder = 5
        end
        object ASPB7: TProgressBar
          Left = 8
          Top = 200
          Width = 150
          Height = 17
          Max = 10
          TabOrder = 6
        end
        object ASI1: TEdit
          Left = 164
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = '0/10'
        end
        object ASI2: TEdit
          Left = 164
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '0/10'
        end
        object ASI3: TEdit
          Left = 164
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = '0/10'
        end
        object ASI4: TEdit
          Left = 164
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = '0/10'
        end
        object ASI5: TEdit
          Left = 164
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          Text = '0/10'
        end
        object ASI6: TEdit
          Left = 164
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          Text = '0/10'
        end
        object ASI7: TEdit
          Left = 164
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = '0/10'
        end
      end
      object AtrAplyLvlGrb: TGroupBox
        Left = 390
        Top = 11
        Width = 217
        Height = 238
        Caption = #1055#1088#1080#1084#1077#1085#1103#1077#1084#1099#1081' '#1091#1088#1086#1074#1077#1085#1100
        TabOrder = 2
        object ASTB1: TTrackBar
          Left = 3
          Top = 20
          Width = 150
          Height = 24
          TabOrder = 0
          OnChange = WSTB1Change
        end
        object ASL1: TEdit
          Left = 159
          Top = 20
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '0/10'
        end
        object ASTB2: TTrackBar
          Left = 3
          Top = 50
          Width = 150
          Height = 24
          TabOrder = 2
          OnChange = WSTB1Change
        end
        object ASTB3: TTrackBar
          Left = 3
          Top = 80
          Width = 150
          Height = 24
          TabOrder = 3
          OnChange = WSTB1Change
        end
        object ASTB4: TTrackBar
          Left = 3
          Top = 110
          Width = 150
          Height = 24
          TabOrder = 4
          OnChange = WSTB1Change
        end
        object ASTB5: TTrackBar
          Left = 3
          Top = 140
          Width = 150
          Height = 24
          TabOrder = 5
          OnChange = WSTB1Change
        end
        object ASTB6: TTrackBar
          Left = 3
          Top = 170
          Width = 150
          Height = 24
          TabOrder = 6
          OnChange = WSTB1Change
        end
        object ASTB7: TTrackBar
          Left = 3
          Top = 200
          Width = 150
          Height = 24
          TabOrder = 7
          OnChange = WSTB1Change
        end
        object ASL2: TEdit
          Left = 159
          Top = 50
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Text = '0/10'
        end
        object ASL3: TEdit
          Left = 159
          Top = 80
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          Text = '0/10'
        end
        object ASL4: TEdit
          Left = 159
          Top = 110
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Text = '0/10'
        end
        object ASL5: TEdit
          Left = 159
          Top = 140
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Text = '0/10'
        end
        object ASL6: TEdit
          Left = 159
          Top = 170
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = '0/10'
        end
        object ASL7: TEdit
          Left = 159
          Top = 200
          Width = 50
          Height = 24
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = '0/10'
        end
      end
    end
  end
  object SGid: TEdit
    Left = 191
    Top = 8
    Width = 274
    Height = 26
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Text = #1074#1099#1073#1088#1072#1085#1085#1099#1081' SaveGame'
  end
  object EndBtn: TButton
    Left = 553
    Top = 640
    Width = 72
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 5
    OnClick = EndBtnClick
  end
  object SSnBtn: TButton
    Left = 471
    Top = 8
    Width = 154
    Height = 25
    Caption = #1057#1082#1072#1085#1080#1088#1086#1074#1072#1090#1100' Save'
    TabOrder = 6
    OnClick = SSnBtnClick
  end
  object CaracterBox: TComboBox
    Left = 191
    Top = 40
    Width = 274
    Height = 21
    TabOrder = 7
    Text = #1042#1099#1073#1088#1072#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1078
  end
  object CurUnitGroup: TGroupBox
    Left = 8
    Top = 71
    Width = 617
    Height = 108
    Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1102#1085#1080#1090
    TabOrder = 8
    object SexLbl: TLabel
      Left = 29
      Top = 25
      Width = 27
      Height = 16
      Caption = #1055#1086#1083
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object AgeLbl: TLabel
      Left = 29
      Top = 51
      Width = 53
      Height = 16
      Caption = #1042#1086#1079#1088#1072#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LvlLbl: TLabel
      Left = 29
      Top = 78
      Width = 56
      Height = 16
      Caption = #1059#1088#1086#1074#1077#1085#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrHPLbl: TLabel
      Left = 174
      Top = 25
      Width = 79
      Height = 16
      Caption = 'T'#1077#1082#1091#1097#1080#1077' HP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaxHPLbl: TLabel
      Left = 174
      Top = 51
      Width = 123
      Height = 16
      Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1077' HP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FreeSkPLbl: TLabel
      Left = 174
      Top = 78
      Width = 116
      Height = 16
      Caption = #1057#1074#1086#1073#1086#1076#1085#1099#1077' Skil'#39#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SexEdt: TEdit
      Left = 106
      Top = 24
      Width = 33
      Height = 21
      Alignment = taCenter
      ReadOnly = True
      TabOrder = 0
      Text = '-'
    end
    object AgeEdt: TEdit
      Left = 106
      Top = 51
      Width = 33
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 1
      Text = '-'
    end
    object LvlEdt: TEdit
      Left = 106
      Top = 78
      Width = 33
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 2
      Text = '-'
    end
    object CurrHPEdt: TEdit
      Left = 303
      Top = 24
      Width = 49
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 3
      Text = '-'
    end
    object MaxHPEdt: TEdit
      Left = 303
      Top = 51
      Width = 49
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 4
      Text = '-'
    end
    object FreeSkPEdt: TEdit
      Left = 303
      Top = 78
      Width = 49
      Height = 21
      Alignment = taCenter
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 5
      Text = '-'
    end
    object BioMem: TMemo
      Left = 358
      Top = 24
      Width = 245
      Height = 73
      Lines.Strings = (
        'Memo3')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 6
    end
  end
  object CaracSavBtn: TButton
    Left = 345
    Top = 609
    Width = 137
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1078
    Enabled = False
    TabOrder = 9
    OnClick = CaracSavBtnClick
  end
  object SaveBtn: TButton
    Left = 488
    Top = 609
    Width = 137
    Height = 25
    Caption = #1055#1077#1088#1077#1079#1072#1087#1080#1089#1072#1090#1100' Save'
    Enabled = False
    TabOrder = 10
    OnClick = SaveBtnClick
  end
  object XPManifest: TXPManifest
    Left = 24
    Top = 610
  end
  object MainMenu: TMainMenu
    Left = 96
    Top = 610
    object N5: TMenuItem
      Caption = #1048#1085#1092#1086
      object DevInfo: TMenuItem
        Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082
        object N1: TMenuItem
          Caption = #1050#1091#1087#1080#1090#1100' '#1082#1086#1092#1077' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1091
          OnClick = N1Click
        end
        object Suppo1: TMenuItem
          Caption = #1057#1082#1072#1079#1072#1090#1100' "'#1057#1087#1072#1089#1080#1073#1086'" '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1091
          OnClick = Suppo1Click
        end
        object Followonpatreon1: TMenuItem
          Caption = 'Follow on patreon'
          Hint = 'support a developer on the Patreon platform'
          OnClick = Followonpatreon1Click
        end
        object MailtoDev: TMenuItem
          Caption = #1050#1086#1085#1090#1072#1082#1090#1099
          OnClick = MailtoDevClick
        end
      end
      object ProjectInfo: TMenuItem
        Caption = #1054' '#1087#1088#1086#1077#1082#1090#1077
        object N2: TMenuItem
          Caption = #1050#1072#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103
          OnClick = N2Click
        end
        object Aboutproject1: TMenuItem
          Caption = #1054' '#1087#1088#1086#1077#1082#1090#1077
          OnClick = Aboutproject1Click
        end
      end
      object Followus1: TMenuItem
        Caption = 'Follow us (YouTube)'
        OnClick = Followus1Click
      end
    end
    object language1: TMenuItem
      Caption = #1071#1079#1099#1082' \ Language'
      object English1: TMenuItem
        Caption = 'English'
        OnClick = English1Click
      end
      object N4: TMenuItem
        Caption = #1056#1091#1089#1089#1082#1080#1081
        OnClick = N4Click
      end
    end
  end
  object OpenDialog: TOpenDialog
    Left = 168
    Top = 610
  end
  object XMLDocument: TXMLDocument
    Left = 252
    Top = 610
    DOMVendorDesc = 'MSXML'
  end
end
