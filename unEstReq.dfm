object fmEstReq: TfmEstReq
  Left = -192
  Top = 335
  Width = 1018
  Height = 610
  Caption = #1047#1072#1103#1074#1082#1080' '#1085#1072' '#1088#1072#1089#1095#1077#1090' '#1089#1084#1077#1090
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
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 1002
    Height = 571
    ActivePage = ts2
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    object ts1: TTabSheet
      Caption = #1047#1072#1103#1074#1082#1080
      object p1: TPanel
        Left = 0
        Top = 0
        Width = 1002
        Height = 550
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object dbg1: TDBGridEh
          Left = 2
          Top = 56
          Width = 998
          Height = 474
          Align = alClient
          DataSource = dsEReq
          DrawMemoText = True
          Flat = True
          FooterColor = 16776176
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          OnDblClick = dbg1DblClick
          OnGetCellParams = dbg1GetCellParams
          OnSortMarkingChanged = dbg1SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ID_REQUEST'
              Footer.FieldName = 'ID_REQUEST'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'D_CREATE'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'DESCRIPTION'
              Footers = <>
              Title.Alignment = taCenter
              Width = 185
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
              KeyList.Strings = (
                ''
                '10'
                '20'
                '30'
                '40'
                '50')
              PickList.Strings = (
                ''
                #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
                #1087#1088#1080#1085#1103#1090#1072' '#1055#1069#1054' ('#1086#1087#1088#1077#1076#1077#1083#1077#1085' '#1089#1084#1077#1090#1095#1080#1082')'
                #1087#1088#1080#1085#1103#1090#1072' '#1089#1084#1077#1090#1095#1080#1082#1086#1084
                #1074#1099#1087#1086#1083#1085#1077#1085#1072
                #1086#1090#1082#1072#1079)
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 119
            end
            item
              EditButtons = <>
              FieldName = 'D_MANAGER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'MANAGER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 184
            end
            item
              EditButtons = <>
              FieldName = 'ID_ESTIMATE'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'D_GET'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'ESTIMATOR'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 204
            end
            item
              EditButtons = <>
              FieldName = 'D_FIX'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CONSTR'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 191
            end
            item
              EditButtons = <>
              FieldName = 'ID_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'AGENT'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 274
            end
            item
              EditButtons = <>
              FieldName = 'KIND'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'TYPE'
              Footers = <>
            end>
        end
        object dbn1: TDBNavigator
          Left = 2
          Top = 530
          Width = 998
          Height = 18
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 1
        end
        object clb1: TCoolBar
          Left = 2
          Top = 2
          Width = 998
          Height = 54
          AutoSize = True
          Bands = <
            item
              Control = tlb2
              ImageIndex = -1
              MinHeight = 24
              Width = 994
            end
            item
              Control = tlb1
              ImageIndex = -1
              MinHeight = 24
              Width = 994
            end>
          object tlb1: TToolBar
            Left = 9
            Top = 26
            Width = 981
            Height = 24
            AutoSize = True
            Caption = 'tlb1'
            Flat = True
            Images = fmMain.il1
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            object tb1: TToolButton
              Left = 0
              Top = 0
              Hint = #1042#1089#1077
              Caption = 'tb1'
              Grouped = True
              ImageIndex = 10
              ParentShowHint = False
              ShowHint = True
              Style = tbsCheck
            end
            object tb2: TToolButton
              Left = 23
              Top = 0
              Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1077', '#1085#1077' '#1074#1079#1103#1090#1099#1077' '#1074' '#1088#1072#1073#1086#1090#1091
              Caption = 'tb2'
              Grouped = True
              ImageIndex = 15
              ParentShowHint = False
              ShowHint = True
              Style = tbsCheck
            end
            object tb6: TToolButton
              Left = 46
              Top = 0
              Hint = #1042' '#1088#1072#1073#1086#1090#1077
              Caption = 'tb6'
              Grouped = True
              ImageIndex = 34
              ParentShowHint = False
              ShowHint = True
              Style = tbsCheck
            end
            object tb7: TToolButton
              Left = 69
              Top = 0
              Hint = #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077
              Caption = 'tb7'
              Grouped = True
              ImageIndex = 16
              ParentShowHint = False
              ShowHint = True
              Style = tbsCheck
            end
            object ToolButton4: TToolButton
              Left = 92
              Top = 0
              Width = 13
              Caption = 'ToolButton4'
              ImageIndex = 27
              Style = tbsSeparator
            end
            object tb4: TToolButton
              Left = 105
              Top = 0
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
              Caption = 'tb4'
              ImageIndex = 26
              ParentShowHint = False
              ShowHint = True
              OnClick = tb4Click
            end
            object tb3: TToolButton
              Left = 128
              Top = 0
              Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
              Caption = 'tb3'
              ImageIndex = 3
              ParentShowHint = False
              ShowHint = True
              OnClick = tb3Click
            end
            object ToolButton1: TToolButton
              Left = 151
              Top = 0
              Width = 10
              Caption = 'ToolButton1'
              ImageIndex = 30
              Style = tbsSeparator
            end
            object tb5: TToolButton
              Left = 161
              Top = 0
              Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
              Caption = 'tb5'
              ImageIndex = 31
              ParentShowHint = False
              ShowHint = True
              OnClick = tb5Click
            end
            object ToolButton3: TToolButton
              Left = 184
              Top = 0
              Width = 8
              Caption = 'ToolButton3'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object tb11: TToolButton
              Left = 192
              Top = 0
              Hint = #1057#1085#1103#1090#1100' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
              Caption = 'tb11'
              ImageIndex = 35
              ParentShowHint = False
              ShowHint = True
              OnClick = tb11Click
            end
            object tb10: TToolButton
              Left = 215
              Top = 0
              Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1084#1077#1090#1099
              Caption = 'tb10'
              ImageIndex = 32
              ParentShowHint = False
              ShowHint = True
              OnClick = tb10Click
            end
            object Label32: TLabel
              Left = 238
              Top = 0
              Width = 55
              Height = 13
              Caption = '    '#1053#1072#1081#1090#1080':   '
            end
            object ToolButton9: TToolButton
              Left = 293
              Top = 0
              Width = 14
              Caption = 'ToolButton9'
              ImageIndex = 28
              Style = tbsSeparator
            end
            object cbPrv: TCheckBox
              Left = 307
              Top = 0
              Width = 97
              Height = 22
              Caption = #1051#1080#1095#1085#1099#1077
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = cbPrvClick
            end
            object Label17: TLabel
              Left = 404
              Top = 0
              Width = 32
              Height = 13
              Caption = #1055#1086#1080#1089#1082
            end
            object ed1: TEdit
              Left = 436
              Top = 0
              Width = 121
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyUp = ed1KeyUp
            end
            object ToolButton2: TToolButton
              Left = 557
              Top = 0
              Width = 13
              Caption = 'ToolButton2'
              ImageIndex = 29
              Style = tbsSeparator
            end
            object Label20: TLabel
              Left = 570
              Top = 0
              Width = 25
              Height = 13
              Caption = #1042#1080#1076'  '
            end
            object lcbVid: TDBLookupComboboxEh
              Left = 595
              Top = 0
              Width = 141
              Height = 22
              DropDownBox.Rows = 30
              DropDownBox.Sizable = True
              DropDownBox.Width = 250
              EditButtons = <>
              KeyField = 'REQ_KIND'
              ListField = 'NAME'
              ListSource = dsVid
              TabOrder = 2
              Visible = True
              OnChange = lcbVidChange
            end
            object Label19: TLabel
              Left = 736
              Top = 0
              Width = 25
              Height = 13
              Caption = #1058#1080#1087'  '
            end
            object lcbT: TDBLookupComboboxEh
              Left = 761
              Top = 0
              Width = 141
              Height = 22
              DropDownBox.Rows = 30
              DropDownBox.Sizable = True
              DropDownBox.Width = 250
              EditButtons = <>
              KeyField = 'REQ_TYPE'
              ListField = 'NAME'
              ListSource = dsT
              TabOrder = 3
              Visible = True
              OnChange = lcbTChange
            end
          end
          object tlb2: TToolBar
            Left = 9
            Top = 0
            Width = 981
            Height = 24
            AutoSize = True
            Caption = 'tlb2'
            Flat = True
            Images = fmMain.il1
            TabOrder = 1
            object tb0: TToolButton
              Left = 0
              Top = 0
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
              Caption = 'tb0'
              ImageIndex = 29
              ParentShowHint = False
              ShowHint = True
              OnClick = tb0Click
            end
            object ToolButton6: TToolButton
              Left = 23
              Top = 0
              Width = 8
              Caption = 'ToolButton6'
              ImageIndex = 30
              Style = tbsSeparator
            end
            object Label15: TLabel
              Left = 31
              Top = 0
              Width = 16
              Height = 13
              Caption = ' '#1057': '
            end
            object dtp1: TDBDateTimeEditEh
              Left = 47
              Top = 0
              Width = 90
              Height = 22
              EditButtons = <>
              Kind = dtkDateEh
              TabOrder = 2
              Visible = True
            end
            object Label16: TLabel
              Left = 137
              Top = 0
              Width = 23
              Height = 13
              Caption = ' '#1055#1086': '
            end
            object dtp2: TDBDateTimeEditEh
              Left = 160
              Top = 0
              Width = 97
              Height = 22
              EditButtons = <>
              Kind = dtkDateEh
              TabOrder = 3
              Visible = True
            end
            object ToolButton5: TToolButton
              Left = 257
              Top = 0
              Width = 24
              Caption = 'ToolButton5'
              ImageIndex = 32
              Style = tbsSeparator
            end
            object Label5: TLabel
              Left = 281
              Top = 0
              Width = 56
              Height = 13
              Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
            end
            object lcb1: TDBLookupComboboxEh
              Left = 337
              Top = 0
              Width = 170
              Height = 22
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 250
              EditButtons = <>
              KeyField = 'ID_P'
              ListField = 'FIO'
              ListSource = dsMan
              TabOrder = 0
              Visible = True
            end
            object ToolButton11: TToolButton
              Left = 507
              Top = 0
              Width = 8
              Caption = 'ToolButton11'
              ImageIndex = 31
              Style = tbsSeparator
            end
            object Label1: TLabel
              Left = 515
              Top = 0
              Width = 39
              Height = 13
              Caption = #1050#1083#1080#1077#1085#1090':'
            end
            object lcb2: TDBLookupComboboxEh
              Left = 554
              Top = 0
              Width = 177
              Height = 22
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 250
              EditButtons = <>
              KeyField = 'ID_ITEM'
              ListField = 'NAME'
              ListSource = dsCli
              TabOrder = 1
              Visible = True
            end
          end
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 360
        Width = 994
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object dbm1: TDBMemo
        Left = 0
        Top = 169
        Width = 994
        Height = 191
        Align = alClient
        DataField = 'DESCRIPTION'
        DataSource = dsEReq
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 994
        Height = 169
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        DesignSize = (
          994
          169)
        object Label2: TLabel
          Left = 8
          Top = 48
          Width = 40
          Height = 13
          Caption = #1055#1088#1086#1077#1082#1090':'
        end
        object Label3: TLabel
          Left = 152
          Top = 8
          Width = 37
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089':'
        end
        object DBText1: TDBText
          Left = 56
          Top = 48
          Width = 65
          Height = 17
          DataField = 'ID_PROJECT'
          DataSource = dsEReq
        end
        object DBText2: TDBText
          Left = 128
          Top = 48
          Width = 896
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = dsEReq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 64
          Top = 8
          Width = 81
          Height = 17
          DataField = 'ID_PROJECT'
          DataSource = dsEReq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 280
          Top = 8
          Width = 129
          Height = 17
          DataField = 'D_CREATE'
          DataSource = dsEReq
        end
        object DBText5: TDBText
          Left = 416
          Top = 8
          Width = 632
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'CREATOR'
          DataSource = dsEReq
        end
        object Label4: TLabel
          Left = 8
          Top = 8
          Width = 53
          Height = 13
          Caption = #8470' '#1079#1072#1103#1074#1082#1080':'
        end
        object Label6: TLabel
          Left = 232
          Top = 8
          Width = 40
          Height = 13
          Caption = #1057#1086#1079#1076#1072#1083':'
        end
        object Label7: TLabel
          Left = 264
          Top = 120
          Width = 46
          Height = 13
          Caption = #1057#1084#1077#1090#1095#1080#1082':'
        end
        object DBText6: TDBText
          Left = 192
          Top = 8
          Width = 25
          Height = 17
          DataField = 'STATUS'
          DataSource = dsEReq
        end
        object DBText7: TDBText
          Left = 312
          Top = 120
          Width = 718
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ESTIMATOR'
          DataSource = dsEReq
        end
        object Bevel1: TBevel
          Left = 8
          Top = 112
          Width = 1040
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label8: TLabel
          Left = 264
          Top = 144
          Width = 50
          Height = 13
          Caption = #8470' '#1089#1084#1077#1090#1099':'
        end
        object DBText8: TDBText
          Left = 320
          Top = 144
          Width = 73
          Height = 17
          DataField = 'ID_ESTIMATE'
          DataSource = dsEReq
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 144
          Width = 60
          Height = 13
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1072':'
        end
        object Label10: TLabel
          Left = 8
          Top = 88
          Width = 67
          Height = 13
          Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088':'
        end
        object Label11: TLabel
          Left = 8
          Top = 26
          Width = 39
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090':'
        end
        object DBText9: TDBText
          Left = 56
          Top = 26
          Width = 974
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'AGENT'
          DataSource = dsEReq
        end
        object Label12: TLabel
          Left = 8
          Top = 66
          Width = 107
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1076#1080#1083' '#1084#1077#1085#1077#1076#1078#1077#1088':'
        end
        object DBText10: TDBText
          Left = 120
          Top = 66
          Width = 161
          Height = 17
          DataField = 'D_MANAGER'
          DataSource = dsEReq
        end
        object DBText11: TDBText
          Left = 288
          Top = 66
          Width = 734
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'MANAGER'
          DataSource = dsEReq
        end
        object DBText12: TDBText
          Left = 72
          Top = 144
          Width = 161
          Height = 17
          DataField = 'D_FIX'
          DataSource = dsEReq
        end
        object DBText13: TDBText
          Left = 88
          Top = 88
          Width = 710
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'CONSTR'
          DataSource = dsEReq
        end
        object Label13: TLabel
          Left = 8
          Top = 120
          Width = 79
          Height = 13
          Caption = #1042#1079#1103#1090#1072' '#1074' '#1088#1072#1073#1086#1090#1091':'
        end
        object DBText14: TDBText
          Left = 96
          Top = 120
          Width = 161
          Height = 17
          DataField = 'D_GET'
          DataSource = dsEReq
        end
        object Label14: TLabel
          Left = 512
          Top = 88
          Width = 54
          Height = 13
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090':'
        end
        object DBText15: TDBText
          Left = 568
          Top = 88
          Width = 105
          Height = 17
          DataField = 'ID_DOC'
          DataSource = dsEReq
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 515
        Width = 994
        Height = 30
        Align = alBottom
        TabOrder = 2
        object SpeedButton1: TSpeedButton
          Left = 2
          Top = 5
          Width = 23
          Height = 22
          Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00840000008400000084000000FF000000FF000000840000008400
            00008400000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF000000FF000000FF000000FF000000840000008400
            00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00000084000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
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
        object SpeedButton2: TSpeedButton
          Left = 28
          Top = 5
          Width = 23
          Height = 22
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00E7E7E700F3F3F300FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00F3F3F300FF00FF00FF00FF00FF00FF00FF00
            FF00340EDE002900DF0070707000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00B0AEBB003315BC00E7E7E700FF00FF00FF00FF00FF00
            FF00502FE4002900DF0038297C00D1D1D100FF00FF00FF00FF00FF00FF00FF00
            FF00FEFEFE005E4AB9002900DF00B6AFD900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00350FDF002900DF0050505000E9E9E900FF00FF00FF00FF00FCFC
            FC003918CD002900DF00EAEAEA00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF002900DF002900DF0061616100F5F5F500FCFCFC003918
            CD002900DF00EDEDED00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF002900DF002C06D6006B6B6B003817CC002900
            DF00EDEDED00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00350FDF002900DF002900DF00DBDB
            DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FCFCFC002E08D9002900DF002900DF005959
            5900E3E3E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FCFCFC003918CD002900DF00E1E1E1007960EB002900
            DF004C4A5800C9C9C900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FCFCFC003918CD002900DF00D4D4D400FF00FF00FF00FF00D6CF
            F8002900DF0045387E009A9A9A00FEFEFE00FF00FF00FF00FF00FF00FF00FF00
            FF00F5F5F5003616CB002900DF00B6B4C100FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF002900DF00391BC200CECECE00FF00FF00FF00FF00FF00FF00FF00
            FF002E08D9002900DF006F60B400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00AD9EF100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF002900DF003D1FC500FEFEFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 54
          Top = 5
          Width = 23
          Height = 22
          Hint = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000848484000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FF000000FF00FF00000000008484
            840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF000000FF000000FF00FF00FF00FF000000
            00008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF000000FF000000FF000000FF00FF00FF00FF00FFFF
            FF00000000008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF000000FF000000FF000000FF000000FF00FF00FFFFFF00FFFF
            FF00FFFFFF00000000008484840000000000FF00FF00FF00FF00FF00FF000000
            0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000008484840000000000FF00FF0000000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF0000000000FF00
            0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
            0000FF000000FF00FF00FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000008400000000000000FF00FF00FF00FF00FF00FF0000000000FF00
            0000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            000000000000FF000000FF00000000000000FF00FF00FF00FF0000000000FF00
            000000000000FF00FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00000000000000
            0000FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object cbDel: TCheckBox
          Left = 80
          Top = 8
          Width = 145
          Height = 17
          Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1091#1076#1072#1083#1077#1085#1085#1099#1077
          TabOrder = 0
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 363
        Width = 994
        Height = 152
        Align = alBottom
        DataSource = dsRDoc
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ID_REQ_DOC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ID_REQUEST'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'D_EDIT'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FIO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ID_DOC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'D_REJECT'
            Footers = <>
          end>
      end
    end
  end
  object qEReq: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select r.id_request, r.id_project, r.status, r.description, r.id' +
        '_doc,'
      
        'r.d_manager, r.id_manager, r.id_estimate, r.id_constr, r.id_esti' +
        'mator,'
      
        'r.d_get, r.d_fix, m.fio manager, c.fio constr, e.fio estimator, ' +
        'p.name,'
      
        'p.id_agent, i.name agent, r.d_create, r.id_creator, t.fio creato' +
        'r, r.rem,k.name kind, tp.name type'
      'from estimate_requests r join projects p'
      'on p.id_project = r.id_project'
      'left join items i on i.id_item = p.id_agent'
      'left join personnel m on m.id_p = r.id_manager'
      'left join personnel c on c.id_p = r.id_constr'
      'left join personnel e on e.id_p = r.id_estimator'
      'left join personnel t on t.id_p = r.id_creator'
      'left join REQUESTS_KINDS k on k.REQ_KIND = r.REQ_KIND'
      'left join REQUESTS_TYPES tp on tp.REQ_TYPE = r.REQ_TYPE'
      '')
    Left = 512
    Top = 272
    object qEReqID_REQUEST: TIntegerField
      DisplayLabel = #8470' '#1079#1072#1103#1074#1082#1080
      FieldName = 'ID_REQUEST'
      Origin = '"ESTIMATE_REQUESTS"."ID_REQUEST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEReqID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"ESTIMATE_REQUESTS"."ID_PROJECT"'
    end
    object qEReqSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"ESTIMATE_REQUESTS"."STATUS"'
    end
    object qEReqDESCRIPTION: TMemoField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Origin = '"ESTIMATE_REQUESTS"."DESCRIPTION"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qEReqID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"ESTIMATE_REQUESTS"."ID_DOC"'
    end
    object qEReqD_MANAGER: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
      FieldName = 'D_MANAGER'
      Origin = '"ESTIMATE_REQUESTS"."D_MANAGER"'
    end
    object qEReqID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"ESTIMATE_REQUESTS"."ID_MANAGER"'
    end
    object qEReqID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"ESTIMATE_REQUESTS"."ID_ESTIMATE"'
    end
    object qEReqID_CONSTR: TIntegerField
      FieldName = 'ID_CONSTR'
      Origin = '"ESTIMATE_REQUESTS"."ID_CONSTR"'
    end
    object qEReqID_ESTIMATOR: TIntegerField
      FieldName = 'ID_ESTIMATOR'
      Origin = '"ESTIMATE_REQUESTS"."ID_ESTIMATOR"'
    end
    object qEReqD_GET: TDateTimeField
      DisplayLabel = #1055#1088#1080#1085#1103#1090#1072' '#1089#1084#1077#1090#1095#1080#1082#1086#1084
      FieldName = 'D_GET'
      Origin = '"ESTIMATE_REQUESTS"."D_GET"'
    end
    object qEReqD_FIX: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1072
      FieldName = 'D_FIX'
      Origin = '"ESTIMATE_REQUESTS"."D_FIX"'
    end
    object qEReqMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEReqCONSTR: TIBStringField
      DisplayLabel = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088
      FieldName = 'CONSTR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEReqESTIMATOR: TIBStringField
      DisplayLabel = #1057#1084#1077#1090#1095#1080#1082
      FieldName = 'ESTIMATOR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEReqNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'NAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qEReqID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"PROJECTS"."ID_AGENT"'
    end
    object qEReqAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qEReqD_CREATE: TDateTimeField
      DisplayLabel = #1057#1086#1079#1076#1072#1085#1072
      FieldName = 'D_CREATE'
      Origin = '"ESTIMATE_REQUESTS"."D_CREATE"'
    end
    object qEReqID_CREATOR: TIntegerField
      FieldName = 'ID_CREATOR'
      Origin = '"ESTIMATE_REQUESTS"."ID_CREATOR"'
    end
    object qEReqCREATOR: TIBStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'CREATOR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEReqREM: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1088#1072#1089#1095#1105#1090#1095#1080#1082#1072
      FieldName = 'REM'
      Origin = '"ESTIMATE_REQUESTS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qEReqKIND: TIBStringField
      DisplayLabel = #1042#1080#1076
      FieldName = 'KIND'
      Origin = '"REQUESTS_KINDS"."NAME"'
      Size = 64
    end
    object qEReqTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087
      FieldName = 'TYPE'
      Origin = '"REQUESTS_TYPES"."NAME"'
      Size = 64
    end
  end
  object dsEReq: TDataSource
    DataSet = qEReq
    Left = 512
    Top = 312
  end
  object qMan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct r.id_p, r.fio'
      'from projects p join personnel r'
      'on r.id_p = p.id_manager'
      'order by r.fio')
    Left = 556
    Top = 268
    object qManID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qManFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsMan: TDataSource
    DataSet = qMan
    Left = 556
    Top = 308
  end
  object qCli: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct i.id_item, i.name'
      'from projects p join items i'
      'on i.id_item = p.id_agent'
      'order by i.name')
    Left = 596
    Top = 268
    object qCliID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCliNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsCli: TDataSource
    DataSet = qCli
    Left = 596
    Top = 308
  end
  object qT: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REQUESTS_TYPES')
    Left = 654
    Top = 368
    object qTREQ_TYPE: TIntegerField
      FieldName = 'REQ_TYPE'
      Origin = '"REQUESTS_TYPES"."REQ_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REQUESTS_TYPES"."NAME"'
      Size = 64
    end
  end
  object qVid: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REQUESTS_KINDS')
    Left = 702
    Top = 368
    object qVidREQ_KIND: TIntegerField
      FieldName = 'REQ_KIND'
      Origin = '"REQUESTS_KINDS"."REQ_KIND"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVidNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REQUESTS_KINDS"."NAME"'
      Size = 64
    end
  end
  object dsVid: TDataSource
    DataSet = qVid
    Left = 694
    Top = 416
  end
  object dsT: TDataSource
    DataSet = qT
    Left = 638
    Top = 416
  end
  object qRDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qRDocBeforeOpen
    DataSource = dsEReq
    SQL.Strings = (
      'select cast (0 as integer) id_req_doc,'
      'rr.id_request, cast (d.d_fix as date) d_edit,'
      'd.name, pp.fio, rr.id_doc, null d_reject, null id_reject'
      'from project_docs d'
      'join estimate_requests rr on rr.id_doc = d.id_draft'
      'left join personnel pp on pp.id_p = d.id_fix'
      'where rr.id_request =:id_request'
      ' union'
      'select r.id_req_doc,'
      ' r.id_req, r.d_edit,'
      'r.name, p.fio, r.id_doc, r.d_reject, r.id_reject'
      'from request_docs r'
      'left join personnel p on p.id_p = r.id_edit'
      ' where r.id_req = :id_request')
    Left = 316
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_request'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_request'
        ParamType = ptUnknown
      end>
    object qRDocID_REQ_DOC: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470
      FieldName = 'ID_REQ_DOC'
      ProviderFlags = []
    end
    object qRDocID_REQUEST: TIntegerField
      DisplayLabel = #8470' '#1079#1072#1103#1074#1082#1080
      FieldName = 'ID_REQUEST'
      Origin = '"ESTIMATE_REQUESTS"."ID_REQUEST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qRDocD_EDIT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
      FieldName = 'D_EDIT'
      ProviderFlags = []
    end
    object qRDocNAME: TIBStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'NAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qRDocFIO: TIBStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qRDocID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"ESTIMATE_REQUESTS"."ID_DOC"'
    end
    object qRDocD_REJECT: TDateField
      DisplayLabel = #1054#1090#1074#1077#1088#1075#1085#1091#1090
      FieldName = 'D_REJECT'
      ProviderFlags = []
    end
  end
  object dsRDoc: TDataSource
    DataSet = qRDoc
    Left = 404
    Top = 239
  end
  object od2: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 212
    Top = 247
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 716
    Top = 212
  end
end
