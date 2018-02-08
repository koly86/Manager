object fmKOrd: TfmKOrd
  Left = 219
  Top = 206
  Width = 820
  Height = 553
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1079#1072#1082#1072#1079#1072
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
  object Splitter1: TSplitter
    Left = 0
    Top = 297
    Width = 812
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object clb1: TCoolBar
    Left = 0
    Top = 0
    Width = 812
    Height = 28
    AutoSize = True
    Bands = <
      item
        Control = tlb1
        ImageIndex = -1
        MinHeight = 24
        Width = 808
      end>
    object tlb1: TToolBar
      Left = 9
      Top = 0
      Width = 795
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object tb1: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100
        Caption = 'tb1'
        DropdownMenu = PopupMenu1
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
      end
      object ToolButton1: TToolButton
        Left = 36
        Top = 0
        Width = 13
        Caption = 'ToolButton1'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 49
        Top = 0
        Hint = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091'-'#1086#1089#1085#1086#1074#1072#1085#1080#1102
        Caption = 'tb2'
        ImageIndex = 7
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object tb3: TToolButton
        Left = 72
        Top = 0
        Hint = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        Caption = 'tb3'
        ImageIndex = 30
        ParentShowHint = False
        ShowHint = True
        OnClick = tb3Click
      end
      object ToolButton2: TToolButton
        Left = 95
        Top = 0
        Hint = #1042#1099#1073#1086#1088#1082#1072' '#1087#1086' '#1079#1072#1082#1072#1079#1091' '#1087#1086' '#1090#1088#1072#1092#1080#1082#1091
        Caption = 'ToolButton2'
        ImageIndex = 4
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton2Click
      end
    end
  end
  object p1: TPanel
    Left = 0
    Top = 28
    Width = 812
    Height = 269
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      812
      269)
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 22
      Height = 13
      Caption = #1050#1086#1076':'
    end
    object DBText1: TDBText
      Left = 32
      Top = 8
      Width = 65
      Height = 17
      DataField = 'ID_ORDER'
      DataSource = dmIS.dsP_ORDS
    end
    object Label7: TLabel
      Left = 104
      Top = 8
      Width = 14
      Height = 13
      Caption = #8470':'
    end
    object DBText2: TDBText
      Left = 120
      Top = 8
      Width = 97
      Height = 17
      DataField = 'N_ORDER'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 8
      Top = 24
      Width = 769
      Height = 17
      DataField = 'NAME'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 632
      Top = 8
      Width = 66
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072':'
    end
    object DBText4: TDBText
      Left = 704
      Top = 8
      Width = 89
      Height = 17
      DataField = 'nTYPE'
      DataSource = dmIS.dsPrj
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 78
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
    end
    object Label8: TLabel
      Left = 8
      Top = 90
      Width = 114
      Height = 13
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090'_'#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
    end
    object DBText6: TDBText
      Left = 128
      Top = 90
      Width = 73
      Height = 17
      DataField = 'ID_DOC'
      DataSource = dmIS.dsP_ORDS
    end
    object Label9: TLabel
      Left = 520
      Top = 8
      Width = 40
      Height = 13
      Caption = #1055#1088#1086#1077#1082#1090':'
    end
    object DBText7: TDBText
      Left = 568
      Top = 8
      Width = 57
      Height = 17
      DataField = 'ID_PROJECT'
      DataSource = dmIS.dsP_ORDS
    end
    object Bevel1: TBevel
      Left = 8
      Top = 152
      Width = 778
      Height = 9
      Anchors = [akLeft, akTop, akRight]
      Shape = bsTopLine
    end
    object Label10: TLabel
      Left = 8
      Top = 192
      Width = 47
      Height = 13
      Caption = #1048#1079#1076#1077#1083#1080#1077':'
    end
    object DBText8: TDBText
      Left = 136
      Top = 192
      Width = 571
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'PNAME'
      DataSource = dmIS.dsVER
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 112
      Width = 62
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object DBText11: TDBText
      Left = 72
      Top = 112
      Width = 81
      Height = 17
      DataField = 'AMOUNT'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 160
      Width = 67
      Height = 13
      Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088':'
    end
    object Label15: TLabel
      Left = 216
      Top = 40
      Width = 76
      Height = 13
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
    end
    object DBText13: TDBText
      Left = 88
      Top = 160
      Width = 313
      Height = 17
      DataField = 'fCONSTR'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText19: TDBText
      Left = 64
      Top = 192
      Width = 65
      Height = 17
      DataField = 'ID_PRODUCT'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 528
      Top = 160
      Width = 123
      Height = 13
      Caption = #1042#1077#1088#1089#1080#1103' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077':'
    end
    object DBText9: TDBText
      Left = 656
      Top = 160
      Width = 65
      Height = 17
      DataField = 'ID_VERSION'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 8
      Top = 176
      Width = 126
      Height = 13
      Caption = #1050#1086#1085#1089#1090#1088'. '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1103' '#1082':'
    end
    object DBText10: TDBText
      Left = 136
      Top = 176
      Width = 97
      Height = 17
      DataField = 'D_CONSTR'
      DataSource = dmIS.dsP_ORDS
    end
    object Label21: TLabel
      Left = 656
      Top = 40
      Width = 49
      Height = 13
      Caption = #1057#1084#1077#1090#1072' '#8470':'
    end
    object DBText20: TDBText
      Left = 712
      Top = 40
      Width = 89
      Height = 17
      DataField = 'ID_ESTIMATE'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText12: TDBText
      Left = 216
      Top = 90
      Width = 489
      Height = 17
      DataField = 'nDOC'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 8
      Top = 40
      Width = 47
      Height = 13
      Caption = #1054#1090#1082#1088#1099#1090#1086':'
    end
    object DBText15: TDBText
      Left = 56
      Top = 40
      Width = 153
      Height = 17
      DataField = 'D_OPEN'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 8
      Top = 130
      Width = 47
      Height = 13
      Caption = #1047#1072#1082#1088#1099#1090#1086':'
    end
    object DBText22: TDBText
      Left = 64
      Top = 130
      Width = 153
      Height = 17
      DataField = 'D_CLOSE'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
      Top = 8
      Width = 37
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object DBText16: TDBText
      Left = 264
      Top = 8
      Width = 25
      Height = 17
      DataField = 'STATUS'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText5: TDBText
      Left = 296
      Top = 40
      Width = 353
      Height = 17
      DataField = 'NPROD'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText14: TDBText
      Left = 96
      Top = 56
      Width = 337
      Height = 17
      DataField = 'NPTYPE'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText17: TDBText
      Left = 56
      Top = 72
      Width = 57
      Height = 17
      DataField = 'ID_AGENT'
      DataSource = dmIS.dsP_ORDS
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 39
      Height = 13
      Caption = #1050#1083#1080#1077#1085#1090':'
    end
    object DBText18: TDBText
      Left = 120
      Top = 72
      Width = 561
      Height = 17
      DataField = 'AGENT'
      DataSource = dmIS.dsP_ORDS
    end
    object Label14: TLabel
      Left = 144
      Top = 112
      Width = 37
      Height = 13
      Caption = #1057#1091#1084#1084#1072':'
    end
    object Label16: TLabel
      Left = 400
      Top = 112
      Width = 63
      Height = 13
      Caption = #1044#1086#1087'. '#1091#1089#1083#1091#1075#1080':'
    end
    object DBText23: TDBText
      Left = 192
      Top = 112
      Width = 89
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRICE'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText24: TDBText
      Left = 328
      Top = 112
      Width = 65
      Height = 17
      DataField = 'NCURR'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText25: TDBText
      Left = 472
      Top = 112
      Width = 89
      Height = 17
      Alignment = taRightJustify
      DataField = 'PRICEA'
      DataSource = dmIS.dsP_ORDS
    end
    object Label5: TLabel
      Left = 576
      Top = 56
      Width = 94
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
    end
    object DBText26: TDBText
      Left = 680
      Top = 56
      Width = 97
      Height = 17
      DataField = 'D_READY'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText27: TDBText
      Left = 296
      Top = 8
      Width = 217
      Height = 17
      DataField = 'nSTAT'
      DataSource = dmIS.dsP_ORDS
    end
    object Label17: TLabel
      Left = 144
      Top = 128
      Width = 61
      Height = 13
      Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470':'
    end
    object DBText28: TDBText
      Left = 208
      Top = 128
      Width = 89
      Height = 17
      Alignment = taRightJustify
      DataField = 'DOG_NUMBER'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText29: TDBText
      Left = 304
      Top = 128
      Width = 89
      Height = 17
      Alignment = taRightJustify
      DataField = 'DOG_DATE_IN'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 568
      Top = 112
      Width = 50
      Height = 13
      Caption = #1044#1086#1089#1090#1072#1074#1082#1072
    end
    object DBText30: TDBText
      Left = 627
      Top = 112
      Width = 102
      Height = 17
      DataField = 'DELIVERY_SUM'
      DataSource = dmIS.dsP_ORDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 8
      Top = 216
      Width = 111
      Height = 13
      Caption = #1053#1072#1094#1077#1085#1082#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072': '
      Visible = False
    end
    object Label22: TLabel
      Left = 40
      Top = 240
      Width = 73
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103': '
    end
    object DBText21: TDBText
      Left = 128
      Top = 240
      Width = 225
      Height = 17
      DataField = 'NAME_UR'
      DataSource = dmIS.dsP_ORDS
    end
    object DBText31: TDBText
      Left = 128
      Top = 216
      Width = 65
      Height = 17
      DataField = 'NACH'
      DataSource = dmIS.dsP_ORDS
      Visible = False
    end
    object cb1: TCheckBox
      Left = 696
      Top = 136
      Width = 105
      Height = 17
      Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1077
      TabOrder = 0
    end
    object cb2: TCheckBox
      Left = 440
      Top = 56
      Width = 129
      Height = 17
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object p2: TPanel
    Left = 0
    Top = 300
    Width = 812
    Height = 219
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 457
      Top = 2
      Height = 215
      Align = alRight
    end
    object p3: TPanel
      Left = 460
      Top = 2
      Width = 350
      Height = 215
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object dbg4: TDBGridEh
        Left = 2
        Top = 2
        Width = 346
        Height = 193
        Align = alClient
        DataSource = dmIS.dsOrd_PF
        Flat = True
        FooterColor = 16776176
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = dbg4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'C_D'
            Footer.Value = #1042#1089#1077#1075#1086':'
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Alignment = taCenter
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_SHIPP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'PLAN_SHIPP'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clMaroon
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clMaroon
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCED'
            Footer.FieldName = 'PRODUCED'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
          end
          item
            EditButtons = <>
            FieldName = 'SHIP'
            Footer.FieldName = 'SHIP'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'RECIEV'
            Footer.FieldName = 'RECIEV'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Width = 55
          end>
      end
      object dbn3: TDBNavigator
        Left = 2
        Top = 195
        Width = 346
        Height = 18
        DataSource = dmIS.dsOrd_PF
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 1
      end
    end
    object pc1: TPageControl
      Left = 2
      Top = 2
      Width = 455
      Height = 215
      ActivePage = ts3
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      object ts1: TTabSheet
        Caption = #1057#1086#1073#1099#1090#1080#1103
        object dbg3: TDBGridEh
          Left = 0
          Top = 0
          Width = 447
          Height = 189
          Align = alClient
          DataSource = dmIS.dsOrd_S
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NAME_EVENT'
              Footers = <>
              Title.Alignment = taCenter
              Width = 202
            end
            item
              EditButtons = <>
              FieldName = 'D_FACT'
              Footers = <>
              Title.Alignment = taCenter
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'FIO_FACT'
              Footers = <>
              Title.Alignment = taCenter
              Width = 200
            end>
        end
      end
      object ts2: TTabSheet
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        ImageIndex = 1
        object dbm1: TDBMemo
          Left = 0
          Top = 0
          Width = 447
          Height = 189
          Align = alClient
          DataField = 'REM'
          DataSource = dmIS.dsP_ORDS
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object ts3: TTabSheet
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        ImageIndex = 2
        object Panel1: TPanel
          Left = 0
          Top = 165
          Width = 447
          Height = 24
          Align = alBottom
          TabOrder = 0
          object dbn2: TDBNavigator
            Left = 1
            Top = 1
            Width = 415
            Height = 22
            DataSource = dmIS.dsORD_POS
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alClient
            TabOrder = 0
          end
          object Panel3: TPanel
            Left = 416
            Top = 1
            Width = 30
            Height = 22
            Align = alRight
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              Left = 3
              Top = 0
              Width = 23
              Height = 22
              Hint = #1042#1099#1073#1086#1088#1082#1091' '#1074' Excel'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00000000008080000080800000808000008080000080800000808000008080
                000000000000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00
                FF00FF00FF000000000080800000808000008080000080800000808000000000
                0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF000000000080800000808000008080000000000000FFFF
                0000FFFF0000FFFF0000808000008080000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000008080000000000000FFFF0000FFFF
                0000FFFF000000000000000000000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF
                00008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF00008080
                0000808000008080000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000FFFF0000FFFF0000FFFF0000000000008080
                000080800000808000008080000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000FFFF0000FFFF0000FFFF000000000000FF00FF000000
                00008080000080800000808000008080000000000000FF00FF00FF00FF00FF00
                FF000000000080808000808080008080800000000000FF00FF00FF00FF00FF00
                FF000000000080800000808000008080000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 447
          Height = 165
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          object dbg2: TDBGridEh
            Left = 1
            Top = 1
            Width = 445
            Height = 163
            Align = alClient
            DataSource = dmIS.dsORD_POS
            Flat = True
            FooterColor = 16776176
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.Alignment = taCenter
                Width = 196
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.Alignment = taCenter
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'nUNIT'
                Footers = <>
                Title.Alignment = taCenter
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'PRICEA'
                Footer.Value = #1042#1089#1077#1075#1086':'
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Alignment = taCenter
                Width = 93
              end
              item
                EditButtons = <>
                FieldName = 'sUMPRICE'
                Footer.FieldName = 'sUMPRICE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Alignment = taCenter
                Width = 86
              end>
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
        ImageIndex = 3
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 447
          Height = 200
          Align = alClient
          DataSource = dsPL_SH
          DrawMemoText = True
          Flat = True
          FooterColor = clScrollBar
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'D_PLANING'
              Footer.FieldName = 'D_PLANING'
              Footer.Value = #1042#1089#1077#1075#1086
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Width = 77
            end
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footer.FieldName = 'AMOUNT'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Width = 55
            end
            item
              Color = 16776176
              EditButtons = <>
              FieldName = 'ADRESS'
              Footers = <>
              Width = 267
            end>
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 288
    object N1: TMenuItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1057#1084#1077#1090#1072
      OnClick = N3Click
    end
  end
  object qPL_SH: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * '
      'from ORD_PLAN_SHIPP'
      'where ID_ORDER = :ID_ORDER'
      'and plan_type=21'
      'order by D_PLANING')
    GeneratorField.Field = 'ID_PLAN_SHIPP'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 336
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qPL_SHID_PLAN_SHIPP: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PLAN_SHIPP'
      Origin = '"ORD_PLAN_SHIPP"."ID_PLAN_SHIPP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPL_SHID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER"'
      Required = True
    end
    object qPL_SHD_PLANING: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_PLANING'
      Origin = '"ORD_PLAN_SHIPP"."D_PLANING"'
    end
    object qPL_SHAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."AMOUNT"'
    end
    object qPL_SHSUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = '"ORD_PLAN_SHIPP"."SUMMA"'
    end
    object qPL_SHPLAN_TYPE: TIntegerField
      FieldName = 'PLAN_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."PLAN_TYPE"'
    end
    object qPL_SHD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"ORD_PLAN_SHIPP"."D_FIX"'
    end
    object qPL_SHID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"ORD_PLAN_SHIPP"."ID_FIX"'
    end
    object qPL_SHID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"ORD_PLAN_SHIPP"."ID_C"'
    end
    object qPL_SHIN_PLAN: TIntegerField
      FieldName = 'IN_PLAN'
      Origin = '"ORD_PLAN_SHIPP"."IN_PLAN"'
    end
    object qPL_SHFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"ORD_PLAN_SHIPP"."FLAG"'
    end
    object qPL_SHADRESS: TMemoField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADRESS'
      Origin = '"ORD_PLAN_SHIPP"."ADRESS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qPL_SHkol_day: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'kol_day'
      Calculated = True
    end
    object qPL_SHO_D: TDateField
      FieldKind = fkCalculated
      FieldName = 'O_D'
      Calculated = True
    end
  end
  object dsPL_SH: TDataSource
    DataSet = qPL_SH
    Left = 294
    Top = 287
  end
end
