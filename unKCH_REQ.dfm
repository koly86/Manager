object fmKCH_REQ: TfmKCH_REQ
  Left = 337
  Top = 123
  Width = 775
  Height = 652
  Caption = #1047#1072#1103#1074#1082#1072' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1074' '#1058#1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label31: TLabel
    Left = 115
    Top = 65
    Width = 37
    Height = 13
    Caption = #1057#1091#1084#1084#1072':'
  end
  object DBText38: TDBText
    Left = 155
    Top = 65
    Width = 105
    Height = 17
    DataField = 'PRICE'
    DataSource = dsOrder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label32: TLabel
    Left = 267
    Top = 65
    Width = 39
    Height = 13
    Caption = #1059#1089#1083#1091#1075#1080':'
  end
  object DBText39: TDBText
    Left = 310
    Top = 65
    Width = 92
    Height = 17
    DataField = 'PRICEA'
    DataSource = dsOrder
  end
  object Label33: TLabel
    Left = 614
    Top = 65
    Width = 53
    Height = 13
    Caption = #1055#1083#1072#1085#1086#1074#1072#1103':'
  end
  object DBText40: TDBText
    Left = 674
    Top = 65
    Width = 81
    Height = 17
    DataField = 'PLAN_COST_PRICE'
    DataSource = dsOrder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object p0: TPanel
    Left = 0
    Top = 581
    Width = 767
    Height = 37
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      767
      37)
    object bb1: TBitBtn
      Left = 137
      Top = 6
      Width = 99
      Height = 25
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
      Anchors = [akLeft, akBottom]
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bb1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bb2: TBitBtn
      Left = 545
      Top = 6
      Width = 99
      Height = 25
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bb2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 161
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 1
    DesignSize = (
      767
      161)
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 41
      Height = 13
      Caption = #1047#1072#1082#1072#1079':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 56
      Top = 3
      Width = 57
      Height = 17
      DataField = 'ID_ORDER'
      DataSource = dsOrder
    end
    object DBText2: TDBText
      Left = 120
      Top = 3
      Width = 105
      Height = 17
      DataField = 'N_ORDER'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 8
      Top = 19
      Width = 744
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NAME'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 296
      Top = 3
      Width = 273
      Height = 17
      DataField = 'NSTATUS'
      DataSource = dsOrder
    end
    object Label2: TLabel
      Left = 256
      Top = 3
      Width = 37
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Label3: TLabel
      Left = 7
      Top = 34
      Width = 78
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
    end
    object Label4: TLabel
      Left = 296
      Top = 34
      Width = 76
      Height = 13
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
    end
    object DBText5: TDBText
      Left = 96
      Top = 34
      Width = 193
      Height = 17
      DataField = 'TYPEPROD'
      DataSource = dsOrder
    end
    object DBText6: TDBText
      Left = 376
      Top = 34
      Width = 376
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'PROD'
      DataSource = dsOrder
    end
    object DBText7: TDBText
      Left = 48
      Top = 65
      Width = 65
      Height = 17
      DataField = 'AMOUNT'
      DataSource = dsOrder
    end
    object DBText8: TDBText
      Left = 155
      Top = 65
      Width = 105
      Height = 17
      DataField = 'PRICE'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 310
      Top = 65
      Width = 92
      Height = 17
      DataField = 'PRICEA'
      DataSource = dsOrder
    end
    object Label5: TLabel
      Left = 8
      Top = 65
      Width = 37
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086':'
    end
    object Label6: TLabel
      Left = 115
      Top = 65
      Width = 37
      Height = 13
      Caption = #1057#1091#1084#1084#1072':'
    end
    object Label7: TLabel
      Left = 267
      Top = 65
      Width = 39
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1080':'
    end
    object Label8: TLabel
      Left = 403
      Top = 65
      Width = 41
      Height = 13
      Caption = #1042#1072#1083#1102#1090#1072':'
    end
    object DBText10: TDBText
      Left = 448
      Top = 65
      Width = 41
      Height = 17
      DataField = 'NCURR'
      DataSource = dsOrder
    end
    object Label9: TLabel
      Left = 8
      Top = 105
      Width = 56
      Height = 13
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
    end
    object Label10: TLabel
      Left = 320
      Top = 105
      Width = 39
      Height = 13
      Caption = #1050#1083#1080#1077#1085#1090':'
    end
    object DBText11: TDBText
      Left = 72
      Top = 105
      Width = 241
      Height = 17
      DataField = 'FIO'
      DataSource = dsOrder
    end
    object DBText12: TDBText
      Left = 368
      Top = 105
      Width = 384
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'AGENT'
      DataSource = dsOrder
    end
    object Label26: TLabel
      Left = 8
      Top = 136
      Width = 111
      Height = 13
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
    end
    object DBText31: TDBText
      Left = 128
      Top = 136
      Width = 73
      Height = 17
      DataField = 'ID_DOC'
      DataSource = dsOrder
    end
    object DBText32: TDBText
      Left = 216
      Top = 136
      Width = 529
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NDOC'
      DataSource = dsOrder
    end
    object Label27: TLabel
      Left = 506
      Top = 65
      Width = 58
      Height = 13
      Caption = #1053#1072#1094#1077#1085#1082#1072' %:'
    end
    object DBText33: TDBText
      Left = 570
      Top = 65
      Width = 36
      Height = 17
      DataField = 'MANAGER_MARGIN'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText34: TDBText
      Left = 674
      Top = 65
      Width = 81
      Height = 17
      DataField = 'PLAN_COST_PRICE'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 614
      Top = 65
      Width = 53
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072#1103':'
    end
    object DBText35: TDBText
      Left = 575
      Top = 2
      Width = 186
      Height = 17
      DataField = 'NAME_ORD_TYPE'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 8
      Top = 49
      Width = 47
      Height = 13
      Caption = #1048#1079#1076#1077#1083#1080#1077':'
    end
    object DBText36: TDBText
      Left = 64
      Top = 49
      Width = 353
      Height = 17
      DataField = 'NAME_PRODUCT'
      DataSource = dsOrder
    end
    object Label30: TLabel
      Left = 8
      Top = 119
      Width = 40
      Height = 13
      Caption = #1055#1088#1086#1077#1082#1090':'
    end
    object DBText37: TDBText
      Left = 72
      Top = 121
      Width = 345
      Height = 17
      DataField = 'NAME_PROJECT'
      DataSource = dsOrder
    end
    object Label34: TLabel
      Left = 3
      Top = 89
      Width = 85
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057':'
    end
    object DBText41: TDBText
      Left = 91
      Top = 89
      Width = 105
      Height = 17
      DataField = 'PRICE_bez_nds'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 203
      Top = 89
      Width = 87
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1080' '#1073#1077#1079' '#1053#1044#1057':'
    end
    object DBText42: TDBText
      Left = 294
      Top = 89
      Width = 92
      Height = 17
      DataField = 'PRICEA_bez_nds'
      DataSource = dsOrder
    end
    object Label36: TLabel
      Left = 534
      Top = 89
      Width = 101
      Height = 13
      Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1073#1077#1079' '#1053#1044#1057':'
    end
    object DBText43: TDBText
      Left = 674
      Top = 89
      Width = 81
      Height = 17
      DataField = 'PLAN_COST_PRICE_bez_nds'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object pc1: TPageControl
    Left = 0
    Top = 200
    Width = 767
    Height = 381
    ActivePage = ts1
    Align = alClient
    TabOrder = 2
    object ts1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 353
        Align = alClient
        TabOrder = 0
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 448
          Height = 351
          Align = alLeft
          BevelInner = bvLowered
          TabOrder = 0
          object Panel8: TPanel
            Left = 2
            Top = 290
            Width = 444
            Height = 29
            Align = alTop
            TabOrder = 0
            object cb6: TCheckBox
              Left = 4
              Top = 4
              Width = 149
              Height = 17
              Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
              TabOrder = 0
              OnClick = cb6Click
            end
            object lcb3: TDBLookupComboboxEh
              Left = 135
              Top = 5
              Width = 305
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_PROJECT_DOC'
              ListField = 'NAME'
              ListSource = dsDOC
              TabOrder = 1
              Visible = True
            end
          end
          object Panel9: TPanel
            Left = 2
            Top = 2
            Width = 444
            Height = 20
            Align = alTop
            BevelInner = bvRaised
            TabOrder = 1
            object Label25: TLabel
              Left = 8
              Top = 4
              Width = 119
              Height = 13
              Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel10: TPanel
            Left = 2
            Top = 49
            Width = 444
            Height = 106
            Align = alTop
            Color = clMoneyGreen
            TabOrder = 2
            object Bevel1: TBevel
              Left = 216
              Top = 0
              Width = 9
              Height = 113
            end
            object ed2: TEdit
              Left = 304
              Top = 26
              Width = 129
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object cb2: TCheckBox
              Left = 229
              Top = 28
              Width = 74
              Height = 17
              Caption = #1057#1091#1084#1084#1072':'
              TabOrder = 1
              OnClick = cb2Click
            end
            object ed3: TEdit
              Left = 304
              Top = 50
              Width = 129
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object cb3: TCheckBox
              Left = 229
              Top = 53
              Width = 61
              Height = 17
              Caption = #1059#1089#1083#1091#1075#1080':'
              TabOrder = 3
              OnClick = cb3Click
            end
            object cbCur: TCheckBox
              Left = 229
              Top = 79
              Width = 65
              Height = 17
              Caption = #1042#1072#1083#1102#1090#1072':'
              TabOrder = 4
              OnClick = cbCurClick
            end
            object lcbCur: TDBLookupComboboxEh
              Left = 305
              Top = 77
              Width = 128
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_CURRENCY'
              ListField = 'NAME;NAME_FULL'
              ListSource = dsCur
              TabOrder = 5
              Visible = True
            end
            object edProc: TEdit
              Left = 80
              Top = 26
              Width = 57
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object cbProc: TCheckBox
              Left = 4
              Top = 28
              Width = 77
              Height = 17
              Caption = #1053#1072#1094#1077#1085#1082#1072' %:'
              TabOrder = 7
              OnClick = cbProcClick
            end
            object edSumPL: TEdit
              Left = 80
              Top = 2
              Width = 121
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
            end
            object cbSumPL: TCheckBox
              Left = 4
              Top = 4
              Width = 77
              Height = 17
              Caption = #1055#1083#1072#1085#1086#1074#1072#1103':'
              TabOrder = 9
              OnClick = cbSumPLClick
            end
            object edDeliv: TEdit
              Left = 304
              Top = 2
              Width = 129
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
            end
            object cbDeliv: TCheckBox
              Left = 229
              Top = 4
              Width = 73
              Height = 17
              Caption = #1044#1086#1089#1090#1072#1074#1082#1072':'
              TabOrder = 11
              OnClick = cbDelivClick
            end
            object GroupBox1: TGroupBox
              Left = 0
              Top = 46
              Width = 209
              Height = 59
              Caption = #1044#1077#1092'. '#1074#1072#1083#1102#1090#1072
              TabOrder = 12
              object edSum_Def: TEdit
                Left = 80
                Top = 34
                Width = 121
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object cbSum_Def: TCheckBox
                Left = 4
                Top = 37
                Width = 61
                Height = 17
                Caption = #1057#1091#1084#1084#1072':'
                TabOrder = 1
                OnClick = cbSum_DefClick
              end
              object edDeliv_Def: TEdit
                Left = 80
                Top = 10
                Width = 121
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object cbDeliv_Def: TCheckBox
                Left = 4
                Top = 14
                Width = 77
                Height = 17
                Caption = #1044#1086#1089#1090#1072#1074#1082#1072':'
                TabOrder = 3
                OnClick = cbDeliv_DefClick
              end
            end
          end
          object Panel11: TPanel
            Left = 2
            Top = 22
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 3
            object ed1: TEdit
              Left = 64
              Top = 2
              Width = 105
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object cb1: TCheckBox
              Left = 4
              Top = 4
              Width = 61
              Height = 17
              Caption = #1050#1086#1083'-'#1074#1086':'
              TabOrder = 1
              OnClick = cb1Click
            end
            object cbEst: TCheckBox
              Left = 180
              Top = 2
              Width = 77
              Height = 17
              Caption = #8470' '#1089#1084#1077#1090#1099':'
              TabOrder = 2
              OnClick = cbEstClick
            end
            object edEst: TEdit
              Left = 254
              Top = 2
              Width = 121
              Height = 21
              TabOrder = 3
              Text = 'edEst'
            end
          end
          object Panel12: TPanel
            Left = 2
            Top = 263
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 4
            object cb5: TCheckBox
              Left = 4
              Top = 4
              Width = 101
              Height = 17
              Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
              TabOrder = 0
              OnClick = cb5Click
            end
            object lcb2: TDBLookupComboboxEh
              Left = 135
              Top = 2
              Width = 305
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_PTYPE'
              ListField = 'NAME'
              ListSource = dsTYPPROD
              TabOrder = 1
              Visible = True
            end
          end
          object Panel13: TPanel
            Left = 2
            Top = 236
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 5
            object cb4: TCheckBox
              Left = 4
              Top = 4
              Width = 101
              Height = 17
              Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
              TabOrder = 0
              OnClick = cb4Click
            end
            object lcb1: TDBLookupComboboxEh
              Left = 135
              Top = 2
              Width = 305
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_P_AREA'
              ListField = 'NAME'
              ListSource = dsPROD
              TabOrder = 1
              Visible = True
            end
          end
          object Panel15: TPanel
            Left = 2
            Top = 182
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 6
            object cbProj: TCheckBox
              Left = 4
              Top = 4
              Width = 101
              Height = 17
              Caption = #1055#1088#1086#1077#1082#1090':'
              TabOrder = 0
              OnClick = cbProjClick
            end
            object lcbProj: TDBLookupComboboxEh
              Left = 135
              Top = 2
              Width = 305
              Height = 21
              DropDownBox.ColumnDefValues.EndEllipsis = True
              DropDownBox.Columns = <
                item
                  FieldName = 'NAME_AGENT'
                  Title.Alignment = taCenter
                  Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
                  Title.EndEllipsis = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGray
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                end
                item
                  FieldName = 'NAME'
                  Title.Alignment = taCenter
                  Title.Caption = #1055#1088#1086#1077#1082#1090
                  Title.EndEllipsis = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGray
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                end
                item
                  FieldName = 'ID_PROJECT'
                  Title.Caption = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
                  Title.EndEllipsis = True
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clGray
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                end>
              DropDownBox.Options = [dlgColLinesEh, dlgRowLinesEh]
              DropDownBox.Rows = 25
              DropDownBox.ShowTitles = True
              DropDownBox.Sizable = True
              DropDownBox.Width = 650
              EditButtons = <>
              KeyField = 'ID_PROJECT'
              ListField = 'NAME'
              ListSource = dsProj
              TabOrder = 1
              Visible = True
            end
          end
          object Panel16: TPanel
            Left = 2
            Top = 209
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 7
            object cbProduct: TCheckBox
              Left = 4
              Top = 4
              Width = 101
              Height = 17
              Caption = #1048#1079#1076#1077#1083#1080#1077':'
              TabOrder = 0
              OnClick = cbProductClick
            end
            object lcbProduct: TDBLookupComboboxEh
              Left = 135
              Top = 2
              Width = 305
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_ITEM'
              ListField = 'NAME'
              ListSource = dsProduct
              TabOrder = 1
              Visible = True
            end
          end
          object Panel17: TPanel
            Left = 2
            Top = 155
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 8
            object cbAg: TCheckBox
              Left = 4
              Top = 4
              Width = 101
              Height = 17
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
              TabOrder = 0
              OnClick = cbAgClick
            end
            object lcbAg: TDBLookupComboboxEh
              Left = 135
              Top = 2
              Width = 305
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_ITEM'
              ListField = 'NAME'
              ListSource = dsAgent
              TabOrder = 1
              Visible = True
            end
          end
          object Panel18: TPanel
            Left = 2
            Top = 319
            Width = 444
            Height = 27
            Align = alTop
            TabOrder = 9
            object cbOrd_Type: TCheckBox
              Left = 4
              Top = 4
              Width = 85
              Height = 17
              Caption = #1058#1080#1087' '#1079#1072#1082#1072#1079#1072':'
              TabOrder = 0
              OnClick = cbOrd_TypeClick
            end
            object lcbOrd_Type: TDBLookupComboboxEh
              Left = 87
              Top = 2
              Width = 170
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_TYPE'
              ListField = 'NAME'
              ListSource = dsOrd_Type
              TabOrder = 1
              Visible = True
            end
            object cbLid: TCheckBox
              Left = 260
              Top = 2
              Width = 72
              Height = 17
              Caption = #1056#1086#1076#1080#1090#1077#1083#1100':'
              TabOrder = 2
              OnClick = cbLidClick
            end
            object lcbLid: TDBLookupComboboxEh
              Left = 329
              Top = 2
              Width = 112
              Height = 21
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_ORDER'
              ListField = 'N_ORDER;NAME;LID'
              ListSource = dsLid
              TabOrder = 3
              Visible = True
            end
          end
        end
        object Panel14: TPanel
          Left = 449
          Top = 1
          Width = 309
          Height = 351
          Align = alClient
          Caption = 'Panel14'
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 1
            Top = 191
            Width = 307
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object Panel3: TPanel
            Left = 1
            Top = 194
            Width = 307
            Height = 156
            Align = alClient
            TabOrder = 0
            object m2: TMemo
              Left = 1
              Top = 18
              Width = 305
              Height = 137
              Align = alClient
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object Panel5: TPanel
              Left = 1
              Top = 1
              Width = 305
              Height = 17
              Align = alTop
              TabOrder = 1
              object Label24: TLabel
                Left = 9
                Top = 1
                Width = 53
                Height = 13
                Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
              end
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 307
            Height = 190
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 1
            object Panel4: TPanel
              Left = 2
              Top = 2
              Width = 303
              Height = 20
              Align = alTop
              TabOrder = 0
              object Label23: TLabel
                Left = 8
                Top = 4
                Width = 156
                Height = 13
                Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081':'
              end
            end
            object m1: TMemo
              Left = 2
              Top = 22
              Width = 303
              Height = 166
              Align = alClient
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
        end
      end
    end
    object ts3: TTabSheet
      Caption = #1057#1090#1072#1090#1091#1089
      ImageIndex = 2
      object Label15: TLabel
        Left = 8
        Top = 8
        Width = 135
        Height = 13
        Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084':'
      end
      object Label16: TLabel
        Left = 8
        Top = 32
        Width = 156
        Height = 13
        Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1088#1091#1082'. '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1074':'
      end
      object Label17: TLabel
        Left = 8
        Top = 56
        Width = 92
        Height = 13
        Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1055#1069#1054':'
      end
      object Label18: TLabel
        Left = 8
        Top = 80
        Width = 161
        Height = 13
        Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1092#1080#1085'. '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084':'
      end
      object Label19: TLabel
        Left = 8
        Top = 104
        Width = 130
        Height = 13
        Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1076#1080#1088#1077#1082#1090#1086#1088#1086#1084':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 176
        Top = 8
        Width = 161
        Height = 17
        DataField = 'D_MANAGER'
        DataSource = dsCH_REQ
      end
      object DBText18: TDBText
        Left = 344
        Top = 8
        Width = 329
        Height = 17
        DataField = 'FIO'
        DataSource = dsCH_REQ
      end
      object DBText19: TDBText
        Left = 176
        Top = 32
        Width = 161
        Height = 17
        DataField = 'D_ACC'
        DataSource = dsCH_REQ
      end
      object DBText20: TDBText
        Left = 176
        Top = 56
        Width = 161
        Height = 17
        DataField = 'D_CONFIRM'
        DataSource = dsCH_REQ
      end
      object DBText21: TDBText
        Left = 176
        Top = 80
        Width = 161
        Height = 17
        DataField = 'D_FIN'
        DataSource = dsCH_REQ
      end
      object DBText22: TDBText
        Left = 176
        Top = 104
        Width = 161
        Height = 17
        DataField = 'D_HEAD'
        DataSource = dsCH_REQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText23: TDBText
        Left = 343
        Top = 32
        Width = 329
        Height = 17
        DataField = 'ACC'
        DataSource = dsCH_REQ
      end
      object DBText24: TDBText
        Left = 343
        Top = 56
        Width = 329
        Height = 17
        DataField = 'CONF'
        DataSource = dsCH_REQ
      end
      object DBText25: TDBText
        Left = 343
        Top = 80
        Width = 329
        Height = 17
        DataField = 'FIN'
        DataSource = dsCH_REQ
      end
      object DBText26: TDBText
        Left = 343
        Top = 104
        Width = 329
        Height = 17
        DataField = 'HEAD'
        DataSource = dsCH_REQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 225
        Width = 759
        Height = 92
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 0
        object Label20: TLabel
          Left = 8
          Top = 4
          Width = 78
          Height = 13
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText27: TDBText
          Left = 344
          Top = 24
          Width = 329
          Height = 17
          DataField = 'FIO'
          DataSource = dsCH_REQ
        end
        object DBText28: TDBText
          Left = 375
          Top = 56
          Width = 290
          Height = 17
          DataField = 'FIO'
          DataSource = dsCH_REQ
        end
        object DBText29: TDBText
          Left = 176
          Top = 24
          Width = 161
          Height = 17
          DataField = 'D_WORK'
          DataSource = dsCH_REQ
        end
        object DBText30: TDBText
          Left = 216
          Top = 56
          Width = 153
          Height = 17
          DataField = 'D_MANAGER'
          DataSource = dsCH_REQ
        end
        object Label21: TLabel
          Left = 8
          Top = 56
          Width = 204
          Height = 13
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1072' '#1074' '#1094#1077#1085#1090#1088#1072#1083#1100#1085#1086#1081' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093':'
        end
        object Label22: TLabel
          Left = 8
          Top = 24
          Width = 154
          Height = 13
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1072' '#1074' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093' '#1048#1057':'
        end
      end
    end
  end
  object p2: TPanel
    Left = 0
    Top = 161
    Width = 767
    Height = 39
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 3
    DesignSize = (
      767
      39)
    object Label11: TLabel
      Left = 8
      Top = 4
      Width = 64
      Height = 13
      Caption = #1047#1072#1103#1074#1082#1072' '#8470':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText13: TDBText
      Left = 80
      Top = 4
      Width = 89
      Height = 17
      DataField = 'ID_REQUEST'
      DataSource = dsCH_REQ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 192
      Top = 4
      Width = 11
      Height = 13
      Caption = #1086#1090
    end
    object DBText14: TDBText
      Left = 216
      Top = 4
      Width = 121
      Height = 17
      DataField = 'D_MANAGER'
      DataSource = dsCH_REQ
    end
    object Label13: TLabel
      Left = 8
      Top = 20
      Width = 56
      Height = 13
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
    end
    object DBText15: TDBText
      Left = 72
      Top = 20
      Width = 289
      Height = 17
      DataField = 'FIO'
      DataSource = dsCH_REQ
    end
    object Label14: TLabel
      Left = 368
      Top = 20
      Width = 61
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
    end
    object DBText16: TDBText
      Left = 432
      Top = 18
      Width = 313
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NAME'
      DataSource = dsCH_REQ
    end
  end
  object qOrder: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qOrderBeforeOpen
    SQL.Strings = (
      'select p.id_order, p.n_order, p.name, p.id_doc,'
      
        'p.amount, p.price, (select nds_val from get_nds_sum(p.price,1)) ' +
        'price_bez_nds,'
      'p.pricea, '
      '(select nds_val from get_nds_sum(p.pricea,1)) pricea_bez_nds,'
      'p.id_cptype,'
      'p.id_cprod, p.id_agent, p.status, r.id_p,'
      'i.name agent, r.fio, pt.name typeprod,'
      'a.name prod, v.name nstatus, c.name ncurr,'
      
        'd.name ndoc, p.id_project,p.id_product,p.id_currency,p.id_estima' +
        'te,'
      'p.lid,p.d_open,p.def_sum,p.manager_margin,p.delivery_sum,'
      
        'p.def_delivery,p.plan_cost_price,p.ord_type,ot.name name_ord_typ' +
        'e,'
      'ii.name name_product, pr.name name_project'
      'from project_ords p'
      
        'join project_ords_state s on s.id_order = p.id_order and s.id_or' +
        'd_event = 20'
      'join projects pr on pr.id_project = p.id_project'
      'join items i on i.id_item = p.id_agent'
      'join items ii on ii.id_item = p.id_product'
      'left join personnel r on r.id_p = s.id_fact'
      'join ptypes pt on p.id_cptype = pt.id_ptype'
      'join prod_areas a on a.id_p_area = p.id_cprod'
      'join ord_events v on v.status = p.status'
      'join currency c on c.id_currency = p.id_currency'
      'join ord_types ot on ot.id_type = p.ord_type'
      'join project_docs d on d.id_project_doc = p.id_doc'
      'where p.id_order = :id_order')
    Left = 472
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_order'
        ParamType = ptUnknown
      end>
    object qOrderID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrderN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qOrderNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qOrderAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qOrderPRICE: TIBBCDField
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qOrderPRICE_BEZ_NDS: TFloatField
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
    end
    object qOrderPRICEA: TIBBCDField
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qOrderPRICEA_BEZ_NDS: TFloatField
      FieldName = 'PRICEA_BEZ_NDS'
      ProviderFlags = []
    end
    object qOrderID_CPTYPE: TIntegerField
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object qOrderID_CPROD: TIntegerField
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object qOrderID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qOrderSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qOrderID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qOrderAGENT: TIBStringField
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOrderFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrderTYPEPROD: TIBStringField
      FieldName = 'TYPEPROD'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qOrderPROD: TIBStringField
      FieldName = 'PROD'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qOrderNSTATUS: TIBStringField
      FieldName = 'NSTATUS'
      Origin = '"ORD_EVENTS"."NAME"'
      Size = 40
    end
    object qOrderNCURR: TIBStringField
      FieldName = 'NCURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qOrderID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object qOrderNDOC: TIBStringField
      FieldName = 'NDOC'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qOrderID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qOrderID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qOrderID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS"."ID_CURRENCY"'
    end
    object qOrderID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qOrderLID: TIntegerField
      FieldName = 'LID'
      Origin = '"PROJECT_ORDS"."LID"'
    end
    object qOrderD_OPEN: TDateTimeField
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qOrderDEF_SUM: TFloatField
      FieldName = 'DEF_SUM'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
    end
    object qOrderMANAGER_MARGIN: TFloatField
      FieldName = 'MANAGER_MARGIN'
      Origin = '"PROJECT_ORDS"."MANAGER_MARGIN"'
    end
    object qOrderDELIVERY_SUM: TFloatField
      FieldName = 'DELIVERY_SUM'
      Origin = '"PROJECT_ORDS"."DELIVERY_SUM"'
    end
    object qOrderDEF_DELIVERY: TFloatField
      FieldName = 'DEF_DELIVERY'
      Origin = '"PROJECT_ORDS"."DEF_DELIVERY"'
    end
    object qOrderPLAN_COST_PRICE: TFloatField
      FieldName = 'PLAN_COST_PRICE'
      Origin = '"PROJECT_ORDS"."PLAN_COST_PRICE"'
    end
    object qOrderPLAN_COST_PRICE_bez_nds: TFloatField
      FieldName = 'PLAN_COST_PRICE_bez_nds'
      Origin = '"PROJECT_ORDS"."PLAN_COST_PRICE"'
    end
    object qOrderORD_TYPE: TIntegerField
      FieldName = 'ORD_TYPE'
      Origin = '"PROJECT_ORDS"."ORD_TYPE"'
    end
    object qOrderNAME_ORD_TYPE: TIBStringField
      FieldName = 'NAME_ORD_TYPE'
      Origin = '"ORD_TYPES"."NAME"'
      Size = 32
    end
    object qOrderNAME_PRODUCT: TIBStringField
      FieldName = 'NAME_PRODUCT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOrderNAME_PROJECT: TIBStringField
      FieldName = 'NAME_PROJECT'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
  end
  object dsOrder: TDataSource
    DataSet = qOrder
    Left = 472
    Top = 304
  end
  object qCH_REQ: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select c.*, p.fio, s.name, a.fio acc, n.fio conf,'
      'f.fio fin, h.fio head, w.fio fwork, cw.fio cwork'
      'from change_requests c'
      'left join personnel p on p.id_p = c.id_manager'
      'left join personnel a on a.id_p = c.id_acc'
      'left join personnel n on n.id_p = c.id_confirm'
      'left join personnel f on f.id_p = c.id_fin'
      'left join personnel h on h.id_p = c.id_head'
      'left join personnel w on w.id_p = c.id_work'
      'left join personnel cw on cw.id_p = c.id_center_work'
      'left join post s on s.idpost = p.idpost'
      'where c.id_request = :id_request;')
    Left = 532
    Top = 258
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_request'
        ParamType = ptUnknown
      end>
    object qCH_REQID_REQUEST: TIntegerField
      FieldName = 'ID_REQUEST'
      Origin = '"CHANGE_REQUESTS"."ID_REQUEST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCH_REQID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"CHANGE_REQUESTS"."ID_ORDER"'
    end
    object qCH_REQSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"CHANGE_REQUESTS"."STATUS"'
    end
    object qCH_REQD_MANAGER: TDateTimeField
      FieldName = 'D_MANAGER'
      Origin = '"CHANGE_REQUESTS"."D_MANAGER"'
    end
    object qCH_REQID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"CHANGE_REQUESTS"."ID_MANAGER"'
    end
    object qCH_REQD_HEAD: TDateTimeField
      FieldName = 'D_HEAD'
      Origin = '"CHANGE_REQUESTS"."D_HEAD"'
    end
    object qCH_REQID_HEAD: TIntegerField
      FieldName = 'ID_HEAD'
      Origin = '"CHANGE_REQUESTS"."ID_HEAD"'
    end
    object qCH_REQD_ACC: TDateTimeField
      FieldName = 'D_ACC'
      Origin = '"CHANGE_REQUESTS"."D_ACC"'
    end
    object qCH_REQID_ACC: TIntegerField
      FieldName = 'ID_ACC'
      Origin = '"CHANGE_REQUESTS"."ID_ACC"'
    end
    object qCH_REQD_FIN: TDateTimeField
      FieldName = 'D_FIN'
      Origin = '"CHANGE_REQUESTS"."D_FIN"'
    end
    object qCH_REQID_FIN: TIntegerField
      FieldName = 'ID_FIN'
      Origin = '"CHANGE_REQUESTS"."ID_FIN"'
    end
    object qCH_REQD_CONFIRM: TDateTimeField
      FieldName = 'D_CONFIRM'
      Origin = '"CHANGE_REQUESTS"."D_CONFIRM"'
    end
    object qCH_REQID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"CHANGE_REQUESTS"."ID_CONFIRM"'
    end
    object qCH_REQD_WORK: TDateTimeField
      FieldName = 'D_WORK'
      Origin = '"CHANGE_REQUESTS"."D_WORK"'
    end
    object qCH_REQID_WORK: TIntegerField
      FieldName = 'ID_WORK'
      Origin = '"CHANGE_REQUESTS"."ID_WORK"'
    end
    object qCH_REQD_CENTER_WORK: TDateTimeField
      FieldName = 'D_CENTER_WORK'
      Origin = '"CHANGE_REQUESTS"."D_CENTER_WORK"'
    end
    object qCH_REQID_CENTER_WORK: TIntegerField
      FieldName = 'ID_CENTER_WORK'
      Origin = '"CHANGE_REQUESTS"."ID_CENTER_WORK"'
    end
    object qCH_REQDESCRIPT: TMemoField
      FieldName = 'DESCRIPT'
      Origin = '"CHANGE_REQUESTS"."DESCRIPT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qCH_REQREASON: TMemoField
      FieldName = 'REASON'
      Origin = '"CHANGE_REQUESTS"."REASON"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qCH_REQOLD_AMOUNT: TFloatField
      FieldName = 'OLD_AMOUNT'
      Origin = '"CHANGE_REQUESTS"."OLD_AMOUNT"'
    end
    object qCH_REQNEW_AMOUNT: TFloatField
      FieldName = 'NEW_AMOUNT'
      Origin = '"CHANGE_REQUESTS"."NEW_AMOUNT"'
    end
    object qCH_REQOLD_PRICE: TFloatField
      FieldName = 'OLD_PRICE'
      Origin = '"CHANGE_REQUESTS"."OLD_PRICE"'
    end
    object qCH_REQNEW_PRICE: TFloatField
      FieldName = 'NEW_PRICE'
      Origin = '"CHANGE_REQUESTS"."NEW_PRICE"'
    end
    object qCH_REQOLD_SUMMA: TFloatField
      FieldName = 'OLD_SUMMA'
      Origin = '"CHANGE_REQUESTS"."OLD_SUMMA"'
    end
    object qCH_REQNEW_SUMMA: TFloatField
      FieldName = 'NEW_SUMMA'
      Origin = '"CHANGE_REQUESTS"."NEW_SUMMA"'
    end
    object qCH_REQOLD_PTYPE: TIntegerField
      FieldName = 'OLD_PTYPE'
      Origin = '"CHANGE_REQUESTS"."OLD_PTYPE"'
    end
    object qCH_REQNEW_PTYPE: TIntegerField
      FieldName = 'NEW_PTYPE'
      Origin = '"CHANGE_REQUESTS"."NEW_PTYPE"'
    end
    object qCH_REQOLD_BASE_DOC: TIntegerField
      FieldName = 'OLD_BASE_DOC'
      Origin = '"CHANGE_REQUESTS"."OLD_BASE_DOC"'
    end
    object qCH_REQNEW_BASE_DOC: TIntegerField
      FieldName = 'NEW_BASE_DOC'
      Origin = '"CHANGE_REQUESTS"."NEW_BASE_DOC"'
    end
    object qCH_REQOLD_PROD: TIntegerField
      FieldName = 'OLD_PROD'
      Origin = '"CHANGE_REQUESTS"."OLD_PROD"'
    end
    object qCH_REQNEW_PROD: TIntegerField
      FieldName = 'NEW_PROD'
      Origin = '"CHANGE_REQUESTS"."NEW_PROD"'
    end
    object qCH_REQID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"CHANGE_REQUESTS"."ID_DOC"'
    end
    object qCH_REQID_REASON: TIntegerField
      FieldName = 'ID_REASON'
      Origin = '"CHANGE_REQUESTS"."ID_REASON"'
    end
    object qCH_REQFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qCH_REQACC: TIBStringField
      FieldName = 'ACC'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQCONF: TIBStringField
      FieldName = 'CONF'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQFIN: TIBStringField
      FieldName = 'FIN'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQHEAD: TIBStringField
      FieldName = 'HEAD'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQFWORK: TIBStringField
      FieldName = 'FWORK'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQCWORK: TIBStringField
      FieldName = 'CWORK'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qCH_REQOLD_PROJECT: TIntegerField
      FieldName = 'OLD_PROJECT'
      Origin = '"CHANGE_REQUESTS"."OLD_PROJECT"'
    end
    object qCH_REQNEW_PROJECT: TIntegerField
      FieldName = 'NEW_PROJECT'
      Origin = '"CHANGE_REQUESTS"."NEW_PROJECT"'
    end
    object qCH_REQOLD_PRODUCT: TIntegerField
      FieldName = 'OLD_PRODUCT'
      Origin = '"CHANGE_REQUESTS"."OLD_PRODUCT"'
    end
    object qCH_REQNEW_PRODUCT: TIntegerField
      FieldName = 'NEW_PRODUCT'
      Origin = '"CHANGE_REQUESTS"."NEW_PRODUCT"'
    end
    object qCH_REQOLD_CURRENCY: TIntegerField
      FieldName = 'OLD_CURRENCY'
      Origin = '"CHANGE_REQUESTS"."OLD_CURRENCY"'
    end
    object qCH_REQNEW_CURRENCY: TIntegerField
      FieldName = 'NEW_CURRENCY'
      Origin = '"CHANGE_REQUESTS"."NEW_CURRENCY"'
    end
    object qCH_REQOLD_AGENT: TIntegerField
      FieldName = 'OLD_AGENT'
      Origin = '"CHANGE_REQUESTS"."OLD_AGENT"'
    end
    object qCH_REQNEW_AGENT: TIntegerField
      FieldName = 'NEW_AGENT'
      Origin = '"CHANGE_REQUESTS"."NEW_AGENT"'
    end
    object qCH_REQOLD_ESTIMATE: TIntegerField
      FieldName = 'OLD_ESTIMATE'
      Origin = '"CHANGE_REQUESTS"."OLD_ESTIMATE"'
    end
    object qCH_REQNEW_ESTIMATE: TIntegerField
      FieldName = 'NEW_ESTIMATE'
      Origin = '"CHANGE_REQUESTS"."NEW_ESTIMATE"'
    end
    object qCH_REQOLD_ORD_TYPE: TIntegerField
      FieldName = 'OLD_ORD_TYPE'
      Origin = '"CHANGE_REQUESTS"."OLD_ORD_TYPE"'
    end
    object qCH_REQNEW_ORD_TYPE: TIntegerField
      FieldName = 'NEW_ORD_TYPE'
      Origin = '"CHANGE_REQUESTS"."NEW_ORD_TYPE"'
    end
    object qCH_REQOLD_LID: TIntegerField
      FieldName = 'OLD_LID'
      Origin = '"CHANGE_REQUESTS"."OLD_LID"'
    end
    object qCH_REQNEW_LID: TIntegerField
      FieldName = 'NEW_LID'
      Origin = '"CHANGE_REQUESTS"."NEW_LID"'
    end
    object qCH_REQOLD_D_OPEN: TDateTimeField
      FieldName = 'OLD_D_OPEN'
      Origin = '"CHANGE_REQUESTS"."OLD_D_OPEN"'
    end
    object qCH_REQNEW_D_OPEN: TDateTimeField
      FieldName = 'NEW_D_OPEN'
      Origin = '"CHANGE_REQUESTS"."NEW_D_OPEN"'
    end
    object qCH_REQOLD_DEF_SUM: TFloatField
      FieldName = 'OLD_DEF_SUM'
      Origin = '"CHANGE_REQUESTS"."OLD_DEF_SUM"'
    end
    object qCH_REQNEW_DEF_SUM: TFloatField
      FieldName = 'NEW_DEF_SUM'
      Origin = '"CHANGE_REQUESTS"."NEW_DEF_SUM"'
    end
    object qCH_REQOLD_MANAGER_MARGIN: TFloatField
      FieldName = 'OLD_MANAGER_MARGIN'
      Origin = '"CHANGE_REQUESTS"."OLD_MANAGER_MARGIN"'
    end
    object qCH_REQNEW_MANAGER_MARGIN: TFloatField
      FieldName = 'NEW_MANAGER_MARGIN'
      Origin = '"CHANGE_REQUESTS"."NEW_MANAGER_MARGIN"'
    end
    object qCH_REQOLD_DELIVERY_SUM: TFloatField
      FieldName = 'OLD_DELIVERY_SUM'
      Origin = '"CHANGE_REQUESTS"."OLD_DELIVERY_SUM"'
    end
    object qCH_REQNEW_DELIVERY_SUM: TFloatField
      FieldName = 'NEW_DELIVERY_SUM'
      Origin = '"CHANGE_REQUESTS"."NEW_DELIVERY_SUM"'
    end
    object qCH_REQOLD_DEF_DELIVERY: TFloatField
      FieldName = 'OLD_DEF_DELIVERY'
      Origin = '"CHANGE_REQUESTS"."OLD_DEF_DELIVERY"'
    end
    object qCH_REQNEW_DEF_DELIVERY: TFloatField
      FieldName = 'NEW_DEF_DELIVERY'
      Origin = '"CHANGE_REQUESTS"."NEW_DEF_DELIVERY"'
    end
    object qCH_REQOLD_PLAN_COST_PRICE: TFloatField
      FieldName = 'OLD_PLAN_COST_PRICE'
      Origin = '"CHANGE_REQUESTS"."OLD_PLAN_COST_PRICE"'
    end
    object qCH_REQNEW_PLAN_COST_PRICE: TFloatField
      FieldName = 'NEW_PLAN_COST_PRICE'
      Origin = '"CHANGE_REQUESTS"."NEW_PLAN_COST_PRICE"'
    end
  end
  object dsCH_REQ: TDataSource
    DataSet = qCH_REQ
    Left = 532
    Top = 306
  end
  object qTYPPROD: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_PTYPE, NAME '
      'from PTYPES where STATUS = 1'
      'order by NAME')
    Left = 596
    Top = 249
    object qTYPPRODID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"PTYPES"."ID_PTYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTYPPRODNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
  end
  object qPROD: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_P_AREA, NAME '
      'from PROD_AREAS'
      'where ID_PATYPE = 1'
      'order by NAME')
    Left = 652
    Top = 249
    object qPRODID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPRODNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object qDOC: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_PROJECT_DOC, NAME '
      'from PROJECT_DOCS'
      'where ID_PROJECT = :ID_PROJECT and D_FILL is not null'
      'order by NAME')
    Left = 700
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PROJECT'
        ParamType = ptUnknown
      end>
    object qDOCID_PROJECT_DOC: TIntegerField
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDOCNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
  end
  object dsTYPPROD: TDataSource
    DataSet = qTYPPROD
    Left = 596
    Top = 305
  end
  object dsPROD: TDataSource
    DataSet = qPROD
    Left = 652
    Top = 305
  end
  object dsDOC: TDataSource
    DataSet = qDOC
    Left = 700
    Top = 297
  end
  object qProj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.id_project, p.name, i.name name_agent'
      'from projects p'
      'join items i on i.id_item = p.id_agent'
      'order by  i.name,p.name')
    Left = 462
    Top = 409
    object qProjID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECTS"."ID_PROJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProjNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qProjNAME_AGENT: TIBStringField
      FieldName = 'NAME_AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsProj: TDataSource
    DataSet = qProj
    Left = 462
    Top = 457
  end
  object dsAgent: TDataSource
    DataSet = qAgent
    Left = 502
    Top = 457
  end
  object qAgent: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select B.ID id_item, I.NAME'
      'from (BR_ITEMS(13,0) B '
      'left join PROJECTS P on P.ID_AGENT = B.ID) '
      'join ITEMS I on I.ID_ITEM = B.ID'
      'group by B.ID, I.NAME'
      'order by i.name')
    Left = 502
    Top = 409
    object qAgentID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      ProviderFlags = []
    end
    object qAgentNAME: TIBStringField
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 128
    end
  end
  object qProduct: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select i.id_item, i.name'
      'from items i'
      'where i.low = 0 and i.id_item_type = 104')
    Left = 550
    Top = 409
    object qProductID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProductNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsProduct: TDataSource
    DataSet = qProduct
    Left = 550
    Top = 465
  end
  object dsOrd_Type: TDataSource
    DataSet = qOrd_Type
    Left = 606
    Top = 465
  end
  object dsLid: TDataSource
    DataSet = qLid
    Left = 670
    Top = 465
  end
  object qOrd_Type: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_type, name'
      'from ord_types order by name')
    Left = 614
    Top = 409
    object qOrd_TypeID_TYPE: TIntegerField
      FieldName = 'ID_TYPE'
      Origin = '"ORD_TYPES"."ID_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrd_TypeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ORD_TYPES"."NAME"'
      Size = 32
    end
  end
  object qLid: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.id_order,p.n_order, p.name,p.lid'
      'from project_ords p'
      'where p.status > 29'
      'order by n_order')
    Left = 662
    Top = 417
    object qLidID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qLidN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qLidNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qLidLID: TIntegerField
      FieldName = 'LID'
      Origin = '"PROJECT_ORDS"."LID"'
    end
  end
  object qCur: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_currency, name, name_full'
      'from currency order by name')
    Left = 718
    Top = 417
    object qCurID_CURRENCY: TSmallintField
      FieldName = 'ID_CURRENCY'
      Origin = '"CURRENCY"."ID_CURRENCY"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCurNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qCurNAME_FULL: TIBStringField
      FieldName = 'NAME_FULL'
      Origin = '"CURRENCY"."NAME_FULL"'
      Size = 32
    end
  end
  object dsCur: TDataSource
    DataSet = qCur
    Left = 726
    Top = 473
  end
end
