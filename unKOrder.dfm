object fmKOrder: TfmKOrder
  Left = 183
  Top = 610
  Width = 1197
  Height = 870
  Caption = #1047#1072#1082#1072#1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label67: TLabel
    Left = 336
    Top = 312
    Width = 89
    Height = 13
    Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1079#1072#1082#1072#1079': '
  end
  object l_op: TLabel
    Left = 427
    Top = 312
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 1189
    Height = 836
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    OnChange = pc1Change
    object ts1: TTabSheet
      Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1079#1072#1082#1072#1079
      object Splitter3: TSplitter
        Left = 553
        Top = 0
        Height = 808
      end
      object pcRec: TPageControl
        Left = 556
        Top = 0
        Width = 625
        Height = 808
        ActivePage = TabSheet1
        Align = alClient
        Constraints.MinHeight = 10
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
          object Splitter7: TSplitter
            Left = 0
            Top = 254
            Width = 617
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 617
            Height = 29
            Caption = 'ToolBar2'
            Images = fmMain.il1
            TabOrder = 0
            object tbDel: TToolButton
              Left = 0
              Top = 2
              Caption = 'tbDel'
              ImageIndex = 3
              OnClick = tbDelClick
            end
            object ToolButton1: TToolButton
              Left = 23
              Top = 2
              Caption = 'ToolButton1'
              ImageIndex = 26
              OnClick = ToolButton1Click
            end
            object ToolButton3: TToolButton
              Left = 46
              Top = 2
              Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1079#1076#1077#1083#1080#1103
              Caption = 'ToolButton3'
              ImageIndex = 37
              ParentShowHint = False
              ShowHint = False
              OnClick = ToolButton3Click
            end
          end
          object gbEst: TGroupBox
            Left = 0
            Top = 257
            Width = 617
            Height = 523
            Align = alClient
            Caption = #1057#1084#1077#1090#1072
            TabOrder = 3
            object Splitter8: TSplitter
              Left = 2
              Top = 136
              Width = 613
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object dbg5: TDBGridEh
              Left = 2
              Top = 139
              Width = 613
              Height = 382
              Align = alClient
              DataSource = dsEst_TMC
              Flat = True
              FooterColor = clWindow
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
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 312
                end
                item
                  EditButtons = <>
                  FieldName = 'AM'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'COMM_AMOUNT'
                  Footers = <>
                  Width = 49
                end
                item
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'UNAME'
                  Footers = <>
                  Width = 39
                end
                item
                  EditButtons = <>
                  FieldName = 'PRICE'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'TOTAL'
                  Footer.DisplayFormat = '### ### ### ##0.00'
                  Footer.FieldName = 'TOTAL'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_OBJ'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'nTotal_Def'
                  Footer.DisplayFormat = '### ### ##0.000'
                  Footer.FieldName = 'nTotal_Def'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end>
            end
            object dbg6: TDBGridEh
              Left = 2
              Top = 15
              Width = 613
              Height = 121
              Align = alTop
              DataSource = dsEst_Work
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnGetCellParams = dbg6GetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 314
                end
                item
                  EditButtons = <>
                  FieldName = 'nAmount_Time'
                  Footer.FieldName = 'AMOUNT_TIME'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 73
                end
                item
                  EditButtons = <>
                  FieldName = 'UNAME'
                  Footers = <>
                  Width = 34
                end
                item
                  EditButtons = <>
                  FieldName = 'PRICE'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'TOTAL'
                  Footer.DisplayFormat = '### ### ### ##0.00'
                  Footer.FieldName = 'TOTAL'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'COST'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'COST0'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_OBJ'
                  Footers = <>
                end
                item
                  DisplayFormat = '### ### ##0.000'
                  EditButtons = <>
                  FieldName = 'nTotal_Def'
                  Footer.DisplayFormat = '### ### ##0.000'
                  Footer.FieldName = 'nTotal_Def'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end>
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 29
            Width = 617
            Height = 225
            Align = alTop
            Caption = 'Panel4'
            TabOrder = 4
            object dbg4: TDBGridEh
              Left = 1
              Top = 1
              Width = 615
              Height = 223
              Align = alClient
              DataSource = dsOrdParam
              DrawMemoText = True
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = dbg4CellClick
              OnGetCellParams = dbg4GetCellParams
              OnMouseDown = dbg4MouseDown
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 171
                end
                item
                  EditButtons = <>
                  FieldName = 'S_AMOUNT'
                  Footers = <>
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'STRVALUE'
                  Footers = <>
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 108
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_ORDER_PARAM'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_PT_PARAM'
                  Footers = <>
                end>
            end
          end
          object edstrv: TEdit
            Left = 152
            Top = 80
            Width = 49
            Height = 21
            TabOrder = 2
            Visible = False
            OnExit = edstrvExit
            OnKeyDown = edstrvKeyDown
            OnKeyPress = edstrvKeyPress
          end
          object dbl2: TDBLookupComboBox
            Left = 152
            Top = 108
            Width = 49
            Height = 21
            KeyField = 'ID_MP_SET'
            ListField = 'NAME'
            ListSource = dsP
            TabOrder = 1
            Visible = False
            OnClick = dbl2Click
            OnExit = dbl2Exit
          end
        end
      end
      object gb1: TGroupBox
        Left = 0
        Top = 0
        Width = 553
        Height = 808
        Align = alLeft
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072
        TabOrder = 1
        object Splitter4: TSplitter
          Left = 2
          Top = 569
          Width = 549
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Splitter6: TSplitter
          Left = 2
          Top = 417
          Width = 549
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 549
          Height = 402
          Align = alTop
          Constraints.MinHeight = 369
          Constraints.MinWidth = 549
          TabOrder = 0
          DesignSize = (
            549
            402)
          object Label1: TLabel
            Left = 5
            Top = 19
            Width = 39
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090':'
          end
          object DBText1: TDBText
            Left = 47
            Top = 19
            Width = 65
            Height = 17
            Alignment = taCenter
            DataField = 'ID_ITEM'
            DataSource = dsCli
          end
          object DBText2: TDBText
            Left = 118
            Top = 19
            Width = 266
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NAME'
            DataSource = dsCli
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 5
            Top = 55
            Width = 56
            Height = 13
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          end
          object Label3: TLabel
            Left = 5
            Top = 5
            Width = 61
            Height = 13
            Caption = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072':'
          end
          object lb1: TLabel
            Left = 76
            Top = 5
            Width = 18
            Height = 13
            Caption = 'lb1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 180
            Top = 5
            Width = 53
            Height = 13
            Caption = #8470' '#1079#1072#1082#1072#1079#1072':'
          end
          object lb2: TLabel
            Left = 235
            Top = 5
            Width = 18
            Height = 13
            Caption = 'lb2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 5
            Top = 241
            Width = 78
            Height = 13
            Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
          end
          object Label6: TLabel
            Left = 5
            Top = 105
            Width = 76
            Height = 13
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
          end
          object Label7: TLabel
            Left = 5
            Top = 170
            Width = 79
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          end
          object Label8: TLabel
            Left = 5
            Top = 147
            Width = 78
            Height = 13
            Caption = #1042#1080#1076' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
          end
          object DBText3: TDBText
            Left = 300
            Top = 144
            Width = 237
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'OPERTYPE'
            DataSource = dsPType
          end
          object Label13: TLabel
            Left = 7
            Top = 186
            Width = 65
            Height = 26
            Alignment = taCenter
            Caption = #1044#1072#1090#1072#13#10#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
          end
          object Label10: TLabel
            Left = 5
            Top = 269
            Width = 36
            Height = 13
            Caption = #1058#1080#1088#1072#1078':'
          end
          object Label11: TLabel
            Left = 336
            Top = 266
            Width = 41
            Height = 13
            Caption = #1042#1072#1083#1102#1090#1072':'
          end
          object Label9: TLabel
            Left = 336
            Top = 6
            Width = 37
            Height = 13
            Caption = #1057#1090#1072#1090#1091#1089':'
          end
          object lb3: TLabel
            Left = 376
            Top = 6
            Width = 18
            Height = 13
            Caption = 'lb3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 368
            Top = 187
            Width = 22
            Height = 26
            Alignment = taCenter
            Caption = #1047#1072#1082#13#10#1088#1099#1090':'
          end
          object Label15: TLabel
            Left = 469
            Top = 340
            Width = 60
            Height = 13
            Caption = #1044#1086#1087'. '#1091#1089#1083#1091#1075#1072
            Visible = False
          end
          object Label16: TLabel
            Left = 162
            Top = 263
            Width = 37
            Height = 26
            Alignment = taCenter
            Caption = #8470' '#13#10#1057#1084#1077#1090#1099':'
          end
          object Label18: TLabel
            Left = 5
            Top = 123
            Width = 83
            Height = 13
            Caption = #1042' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1077':'
          end
          object Label19: TLabel
            Left = 234
            Top = 123
            Width = 40
            Height = 13
            Caption = #1055#1072#1088#1090#1080#1103':'
          end
          object lb4: TLabel
            Left = 152
            Top = 123
            Width = 14
            Height = 13
            Caption = 'lb4'
          end
          object lb5: TLabel
            Left = 280
            Top = 123
            Width = 14
            Height = 13
            Caption = 'lb5'
          end
          object Label21: TLabel
            Left = 413
            Top = 21
            Width = 67
            Height = 26
            Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072': '#13#10'('#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081')'
          end
          object Label17: TLabel
            Left = 108
            Top = 123
            Width = 40
            Height = 13
            Caption = #1042#1077#1088#1089#1080#1103':'
          end
          object Label23: TLabel
            Left = 376
            Top = 123
            Width = 35
            Height = 13
            Caption = #1057#1084#1077#1090#1072':'
          end
          object lb6: TLabel
            Left = 417
            Top = 123
            Width = 14
            Height = 13
            Caption = 'lb6'
          end
          object Label25: TLabel
            Left = 354
            Top = 244
            Width = 40
            Height = 13
            Caption = #1042#1077#1088#1089#1080#1103':'
          end
          object lb7: TLabel
            Left = 398
            Top = 245
            Width = 14
            Height = 13
            Caption = 'lb7'
          end
          object Label24: TLabel
            Left = 5
            Top = 76
            Width = 74
            Height = 13
            Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100':'
          end
          object sbDog: TSpeedButton
            Left = 520
            Top = 51
            Width = 23
            Height = 22
            Hint = #1044#1086#1075#1086#1074#1086#1088#1072
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbDogClick
          end
          object lbNomDog: TLabel
            Left = 483
            Top = 27
            Width = 50
            Height = 13
            Caption = 'lbNomDog'
          end
          object Label26: TLabel
            Left = 304
            Top = 218
            Width = 32
            Height = 13
            Caption = #1055#1088#1072#1081#1089
          end
          object Label20: TLabel
            Left = 5
            Top = 337
            Width = 53
            Height = 13
            Caption = #1044#1086#1089#1090#1072#1074#1082#1072':'
          end
          object lbPrice_pos: TLabel
            Left = 488
            Top = 199
            Width = 55
            Height = 13
            Caption = 'lbPrice_pos'
          end
          object Label29: TLabel
            Left = 336
            Top = 286
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object Label31: TLabel
            Left = 480
            Top = 264
            Width = 24
            Height = 13
            Caption = #1050#1091#1088#1089
          end
          object lbCurs: TLabel
            Left = 483
            Top = 288
            Width = 29
            Height = 13
            Caption = 'lbCurs'
          end
          object Label32: TLabel
            Left = 223
            Top = 338
            Width = 121
            Height = 13
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1077#1092'.'#1074#1072#1083#1102#1090#1077':'
          end
          object lbProd: TLabel
            Left = 8
            Top = 232
            Width = 30
            Height = 13
            Caption = 'lbProd'
            Visible = False
          end
          object Label40: TLabel
            Left = 5
            Top = 34
            Width = 40
            Height = 13
            Caption = #1055#1088#1086#1077#1082#1090':'
          end
          object DBText5: TDBText
            Left = 47
            Top = 34
            Width = 65
            Height = 17
            Alignment = taCenter
          end
          object DBText6: TDBText
            Left = 119
            Top = 34
            Width = 265
            Height = 17
            DataField = 'NAME'
          end
          object Label44: TLabel
            Left = 486
            Top = 167
            Width = 18
            Height = 13
            Caption = '(64)'
          end
          object SpeedButton3: TSpeedButton
            Left = 518
            Top = 163
            Width = 23
            Height = 22
            Hint = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object Label46: TLabel
            Left = 342
            Top = 104
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
          end
          object lbNom_Name: TLabel
            Left = 485
            Top = 183
            Width = 64
            Height = 13
            Caption = 'lbNom_Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 245
            Top = 192
            Width = 29
            Height = 13
            Alignment = taCenter
            Caption = #1055#1083#1072#1085':'
          end
          object Label49: TLabel
            Left = 440
            Top = 245
            Width = 19
            Height = 13
            Caption = #1042#1077#1089
          end
          object lbW: TLabel
            Left = 469
            Top = 245
            Width = 19
            Height = 13
            Caption = 'lbW'
          end
          object Label56: TLabel
            Left = 7
            Top = 220
            Width = 79
            Height = 13
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':   '
          end
          object Label57: TLabel
            Left = 336
            Top = 312
            Width = 89
            Height = 13
            Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1079#1072#1082#1072#1079': '
          end
          object Label61: TLabel
            Left = 427
            Top = 312
            Width = 5
            Height = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lcbUragent: TDBLookupComboboxEh
            Left = 85
            Top = 216
            Width = 212
            Height = 21
            Color = 16776176
            DropDownBox.AutoDrop = True
            DropDownBox.Rows = 10
            DropDownBox.Sizable = True
            DropDownBox.Width = 200
            EditButtons = <>
            KeyField = 'ID_ITEM'
            ListField = 'NAME'
            ListSource = dsUragent
            TabOrder = 28
            Visible = True
          end
          object dtpPlan: TDBDateTimeEditEh
            Left = 276
            Top = 190
            Width = 89
            Height = 21
            Color = 16776176
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 11
            Visible = True
          end
          object cbReserv: TCheckBox
            Left = 184
            Top = 191
            Width = 59
            Height = 17
            Caption = #1056#1077#1079#1077#1088#1074
            Color = 16776176
            ParentColor = False
            TabOrder = 10
            Visible = False
          end
          object edType_Prod: TEdit
            Left = 85
            Top = 143
            Width = 212
            Height = 21
            Color = 16776176
            TabOrder = 7
            Text = #1055#1083#1072#1082#1072#1090
          end
          object lcb2: TDBLookupComboboxEh
            Left = 84
            Top = 239
            Width = 213
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 30
            DropDownBox.Sizable = True
            DropDownBox.Width = 400
            EditButtons = <>
            KeyField = 'ID_PTYPE'
            ListField = 'NAME'
            ListSource = dsPType
            TabOrder = 13
            Visible = True
            OnChange = lcb2Change
            OnCloseUp = lcb2CloseUp
          end
          object ed1: TEdit
            Left = 84
            Top = 166
            Width = 397
            Height = 21
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyUp = ed1KeyUp
          end
          object dtp1: TDBDateTimeEditEh
            Left = 84
            Top = 190
            Width = 98
            Height = 21
            Color = 16776176
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 9
            Visible = True
          end
          object lcb5: TDBLookupComboboxEh
            Left = 382
            Top = 262
            Width = 97
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            DropDownBox.Width = 200
            EditButtons = <>
            KeyField = 'ID_CURRENCY'
            ListField = 'NAME'
            ListSource = dmIS.dsCURR
            TabOrder = 17
            Visible = True
            OnCloseUp = lcb5CloseUp
          end
          object dtp2: TDBDateTimeEditEh
            Left = 393
            Top = 191
            Width = 89
            Height = 21
            EditButtons = <>
            Kind = dtkDateEh
            ReadOnly = True
            TabOrder = 12
            Visible = True
          end
          object ed4: TEdit
            Left = 515
            Top = 338
            Width = 22
            Height = 21
            Color = clWhite
            ReadOnly = True
            TabOrder = 21
            Text = '0'
            Visible = False
          end
          object ed6: TEdit
            Left = 202
            Top = 266
            Width = 87
            Height = 21
            Color = 16776176
            TabOrder = 16
            Text = '0'
            OnChange = ed6Change
            OnDblClick = ed6DblClick
            OnKeyUp = ed6KeyUp
          end
          object edDog: TEdit
            Left = 344
            Top = 52
            Width = 169
            Height = 21
            Color = 16776176
            TabOrder = 3
            OnKeyUp = edDogKeyUp
          end
          object cb1: TCheckBox
            Left = 343
            Top = 79
            Width = 98
            Height = 17
            Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1077
            Color = 16776176
            ParentColor = False
            TabOrder = 4
          end
          object ed2: TEdit
            Left = 52
            Top = 266
            Width = 97
            Height = 21
            Color = 16776176
            TabOrder = 15
            Text = '0'
            OnKeyUp = ed2KeyUp
          end
          object cb3: TCheckBox
            Left = 466
            Top = 79
            Width = 73
            Height = 17
            Caption = #1057#1087#1077#1094'. '#1091#1095#1105#1090
            Color = 16776176
            ParentColor = False
            TabOrder = 5
          end
          object lcb6: TDBLookupComboboxEh
            Left = 341
            Top = 215
            Width = 204
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            DropDownBox.Width = 500
            EditButtons = <>
            KeyField = 'ID_VERSION'
            ListField = 'NAME;ID_VERSION'
            ListSource = dsPr
            TabOrder = 14
            Visible = True
            OnChange = lcb6Change
            OnCloseUp = lcb6CloseUp
          end
          object bbEstimate: TBitBtn
            Left = 295
            Top = 264
            Width = 22
            Height = 25
            Hint = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1089#1084#1077#1090#1091
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
            OnClick = bbEstimateClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 289
            Width = 329
            Height = 38
            Caption = #1056#1072#1089#1095#1105#1090#1085#1072#1103
            TabOrder = 23
            object Label27: TLabel
              Left = 186
              Top = 14
              Width = 29
              Height = 13
              Caption = #1062#1077#1085#1072':'
            end
            object Label28: TLabel
              Left = 5
              Top = 14
              Width = 61
              Height = 13
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100': '
            end
            object edCast_R: TEdit
              Left = 234
              Top = 11
              Width = 87
              Height = 21
              ReadOnly = True
              TabOrder = 0
              Text = '0'
            end
            object edSum_R: TEdit
              Left = 84
              Top = 11
              Width = 97
              Height = 21
              ReadOnly = True
              TabOrder = 1
              Text = '0'
            end
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 359
            Width = 545
            Height = 38
            Anchors = [akLeft, akTop, akRight]
            Caption = #1055#1088#1086#1076#1072#1078#1085#1072#1103
            TabOrder = 20
            object Label14: TLabel
              Left = 5
              Top = 14
              Width = 58
              Height = 13
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
            end
            object Label22: TLabel
              Left = 186
              Top = 9
              Width = 44
              Height = 26
              Alignment = taCenter
              Caption = #1053#1072#1094#1077#1085#1082#1072#13#10'%'
            end
            object Label30: TLabel
              Left = 336
              Top = 14
              Width = 29
              Height = 13
              Caption = #1062#1077#1085#1072':'
            end
            object SpeedButton1: TSpeedButton
              Left = 305
              Top = 11
              Width = 23
              Height = 22
              Hint = #1055#1086#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1094#1077#1085#1082#1091','#13#1077#1089#1083#1080' '#1080#1079#1074#1077#1089#1090#1085#1072' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF3333333333333744333333333333F773333333333337
                44473333333333F777F3333333333744444333333333F7733733333333374444
                4433333333F77333733333333744444447333333F7733337F333333744444444
                433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                CCC333333333333777FF33333333333333CC3333333333333773}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object ed3: TEdit
              Left = 84
              Top = 11
              Width = 97
              Height = 21
              Color = 16776176
              TabOrder = 0
              Text = '0'
              OnKeyUp = ed3KeyUp
            end
            object ed5: TEdit
              Left = 234
              Top = 12
              Width = 67
              Height = 21
              Color = 16776176
              TabOrder = 1
              Text = '0'
              OnKeyUp = ed5KeyUp
            end
            object edCastMen: TEdit
              Left = 382
              Top = 10
              Width = 103
              Height = 21
              TabOrder = 2
            end
          end
          object lcb1: TDBLookupComboboxEh
            Left = 84
            Top = 52
            Width = 253
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            DropDownBox.Width = 400
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dsMan
            TabOrder = 0
            Visible = True
          end
          object lcb3: TDBLookupComboboxEh
            Left = 84
            Top = 101
            Width = 253
            Height = 21
            Color = 16776176
            DropDownBox.Sizable = True
            DropDownBox.Width = 400
            EditButtons = <>
            KeyField = 'ID_P_AREA'
            ListField = 'NAME'
            ListSource = dsProd
            TabOrder = 2
            Visible = True
          end
          object lcb55: TDBLookupComboboxEh
            Left = 84
            Top = 76
            Width = 253
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            DropDownBox.Width = 400
            EditButtons = <>
            KeyField = 'ID_CHIEF'
            ListField = 'FIO'
            ListSource = dsCHIFF
            TabOrder = 1
            Visible = True
          end
          object ed7: TEdit
            Left = 84
            Top = 335
            Width = 97
            Height = 21
            Color = 16776176
            TabOrder = 19
            Text = '0'
            OnKeyUp = ed7KeyUp
          end
          object dtpDate_Open: TDBDateTimeEditEh
            Left = 382
            Top = 285
            Width = 97
            Height = 21
            Color = 16776176
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 18
            Visible = True
            OnCloseUp = dtpDate_OpenCloseUp
          end
          object edDef: TEdit
            Left = 344
            Top = 337
            Width = 121
            Height = 21
            ReadOnly = True
            TabOrder = 24
            Text = '0'
          end
          object lcb7: TDBLookupComboboxEh
            Left = 368
            Top = 101
            Width = 175
            Height = 21
            Color = 16776176
            EditButtons = <>
            KeyField = 'ID_TYPE'
            ListField = 'NAME'
            ListSource = dsOrd_Type
            TabOrder = 6
            Visible = True
            OnCloseUp = lcb7CloseUp
          end
          object pnEst: TPanel
            Left = 508
            Top = 91
            Width = 548
            Height = 222
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 25
            object Panel14: TPanel
              Left = 1
              Top = 1
              Width = 546
              Height = 109
              Align = alTop
              Color = clMoneyGreen
              TabOrder = 0
              object Label33: TLabel
                Left = 50
                Top = 9
                Width = 33
                Height = 13
                Caption = #1058#1080#1088#1072#1078
              end
              object Label34: TLabel
                Left = 48
                Top = 28
                Width = 37
                Height = 13
                Caption = #1042#1077#1088#1089#1080#1080
              end
              object Label35: TLabel
                Left = 8
                Top = 51
                Width = 76
                Height = 26
                Alignment = taCenter
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#13#10#1089#1084#1077#1090#1099
              end
              object Label38: TLabel
                Left = 232
                Top = 8
                Width = 50
                Height = 13
                Caption = #1044#1086#1089#1090#1072#1074#1082#1072
                Visible = False
              end
              object Label43: TLabel
                Left = 8
                Top = 80
                Width = 65
                Height = 13
                Caption = #1044#1072#1090#1072' '#1087#1088#1072#1081#1089#1072
              end
              object sbEst: TSpeedButton
                Left = 425
                Top = 3
                Width = 23
                Height = 22
                Visible = False
                OnClick = sbEstClick
              end
              object SpeedButton4: TSpeedButton
                Left = 427
                Top = 28
                Width = 23
                Height = 22
                Hint = #1055#1077#1088#1077#1079#1072#1087#1080#1089#1072#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102' '#1087#1086' '#1074#1080#1076#1072#1084' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                  3333333777333777FF33339993707399933333773337F3777FF3399933000339
                  9933377333777F3377F3399333707333993337733337333337FF993333333333
                  399377F33333F333377F993333303333399377F33337FF333373993333707333
                  333377F333777F333333993333101333333377F333777F3FFFFF993333000399
                  999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
                  99933773FF777F3F777F339993707399999333773F373F77777F333999999999
                  3393333777333777337333333999993333333333377777333333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton4Click
              end
              object edKol: TEdit
                Left = 96
                Top = 5
                Width = 121
                Height = 21
                ReadOnly = True
                TabOrder = 0
                Text = 'edKol'
                OnChange = edKolChange
              end
              object lcbVer: TDBLookupComboboxEh
                Left = 96
                Top = 28
                Width = 329
                Height = 21
                DropDownBox.Rows = 10
                DropDownBox.Sizable = True
                DropDownBox.Width = 650
                EditButtons = <>
                KeyField = 'ID_VERSION'
                ListField = 'NAME;ID_VERSION'
                ListSource = dsVer
                TabOrder = 1
                Visible = True
                OnCloseUp = lcbVerCloseUp
              end
              object edTitle: TEdit
                Left = 96
                Top = 53
                Width = 353
                Height = 21
                TabOrder = 2
                Text = 'edTitle'
              end
              object edDeliv: TEdit
                Left = 291
                Top = 5
                Width = 121
                Height = 21
                Enabled = False
                TabOrder = 3
                Text = 'edDeliv'
                Visible = False
                OnChange = edDelivChange
              end
              object dtpPrice: TDBDateTimeEditEh
                Left = 96
                Top = 80
                Width = 89
                Height = 21
                EditButtons = <>
                Kind = dtkDateEh
                TabOrder = 4
                Visible = True
                OnCloseUp = dtpPriceCloseUp
              end
              object BitBtn1: TBitBtn
                Left = 455
                Top = 28
                Width = 89
                Height = 25
                Caption = #1053#1086#1074#1072#1103' '#1089#1084#1077#1090#1072
                TabOrder = 5
                Visible = False
                OnClick = BitBtn1Click
                NumGlyphs = 2
              end
              object BitBtn3: TBitBtn
                Left = 455
                Top = 52
                Width = 89
                Height = 25
                Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
                TabOrder = 6
                OnClick = BitBtn3Click
              end
              object BitBtn2: TBitBtn
                Left = 455
                Top = 77
                Width = 89
                Height = 25
                Cancel = True
                Caption = #1054#1090#1084#1077#1085#1080#1090#1100
                TabOrder = 7
                OnClick = BitBtn2Click
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
              object TPanel
                Left = 184
                Top = 80
                Width = 266
                Height = 25
                TabOrder = 8
                Visible = False
                object Label41: TLabel
                  Left = 4
                  Top = 6
                  Width = 61
                  Height = 13
                  Caption = #1053#1072#1094#1077#1085#1082#1072' (%)'
                end
                object Label42: TLabel
                  Left = 114
                  Top = 4
                  Width = 103
                  Height = 13
                  Caption = #1053#1072#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1052#1062' (%)'
                end
                object edProf: TEdit
                  Left = 68
                  Top = 2
                  Width = 41
                  Height = 21
                  TabOrder = 0
                end
                object edDopPr: TEdit
                  Left = 221
                  Top = 2
                  Width = 41
                  Height = 21
                  TabOrder = 1
                end
              end
            end
            object dbgEst: TDBGridEh
              Left = 1
              Top = 134
              Width = 546
              Height = 111
              DataSource = dsEst_Sum_Oper_Types
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ID_ESTIMATE'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'NAME_PROD'
                  Footers = <>
                  Width = 179
                end
                item
                  DropDownBox.UseMultiTitle = True
                  DropDownRows = 30
                  DropDownSizing = True
                  DropDownWidth = 300
                  EditButtons = <>
                  FieldName = 'nID_CTYPE'
                  Footers = <>
                  OnUpdateData = DBGridEh1Columns2UpdateData
                end
                item
                  EditButtons = <>
                  FieldName = 'PROFIT'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'DOP_PRICE'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_OPER_TYPE'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_PTYPE'
                  Footers = <>
                  Width = 90
                end>
            end
          end
          object pnFull_Name: TPanel
            Left = -445
            Top = -14
            Width = 462
            Height = 116
            TabOrder = 26
            object m3: TMemo
              Left = 1
              Top = 1
              Width = 396
              Height = 114
              Align = alLeft
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object BitBtn4: TBitBtn
              Left = 419
              Top = 8
              Width = 25
              Height = 23
              Hint = #1047#1072#1082#1088#1099#1090#1100
              Caption = 'X'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = BitBtn4Click
            end
          end
          object BitBtn5: TBitBtn
            Left = 183
            Top = 334
            Width = 22
            Height = 25
            Hint = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1091
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
            OnClick = BitBtn5Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 572
          Width = 549
          Height = 197
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 2
          object Splitter5: TSplitter
            Left = 297
            Top = 1
            Height = 195
          end
          object gb2: TGroupBox
            Left = 1
            Top = 1
            Width = 296
            Height = 195
            Align = alLeft
            Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            TabOrder = 0
            object dbn2: TDBNavigator
              Left = 2
              Top = 175
              Width = 292
              Height = 18
              DataSource = dsORD_POS
              Align = alBottom
              TabOrder = 0
            end
            object dbg2: TDBGridEh
              Left = 2
              Top = 15
              Width = 292
              Height = 160
              Align = alClient
              DataSource = dsORD_POS
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
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              Columns = <
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 171
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footers = <>
                  Width = 46
                end
                item
                  Alignment = taCenter
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'nUNIT'
                  Footers = <>
                  Width = 33
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'PRICEA'
                  Footer.Value = #1042#1089#1077#1075#1086':'
                  Footer.ValueType = fvtStaticText
                  Footers = <>
                  Width = 71
                end
                item
                  EditButtons = <>
                  FieldName = 'sUMPRICE'
                  Footer.FieldName = 'sUMPRICE'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 88
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'NDS'
                  Footers = <>
                end
                item
                  ButtonStyle = cbsEllipsis
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'ID_PRODUCT'
                  Footers = <>
                  Visible = False
                  OnEditButtonClick = dbg2Columns6EditButtonClick
                end>
            end
          end
          object gb3: TGroupBox
            Left = 300
            Top = 1
            Width = 248
            Height = 195
            Align = alClient
            Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
            TabOrder = 1
            object dbn1: TDBNavigator
              Left = 2
              Top = 175
              Width = 244
              Height = 18
              DataSource = dsPL_SH
              Align = alBottom
              TabOrder = 0
            end
            object dbg3: TDBGridEh
              Left = 2
              Top = 15
              Width = 244
              Height = 160
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
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = dbg3CellClick
              Columns = <
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'D_PLANING'
                  Footer.FieldName = 'D_PLANING'
                  Footer.Value = #1042#1089#1077#1075#1086
                  Footer.ValueType = fvtStaticText
                  Footers = <>
                  Width = 77
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footer.FieldName = 'AMOUNT'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 55
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'ADRESS'
                  Footers = <>
                  Width = 267
                end
                item
                  EditButtons = <>
                  FieldName = 'OBJ_TYPE'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'WEIGHT'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'DELIVERY_AMOUNT'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'DELIVERY_COST'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'nRegion'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'nDeliv_type'
                  Footers = <>
                end
                item
                  ButtonStyle = cbsEllipsis
                  Color = 16776176
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'OBJ_T'
                  Footers = <>
                  OnEditButtonClick = dbg3Columns9EditButtonClick
                end
                item
                  EditButtons = <>
                  FieldName = 'WEIGHT_ONE'
                  Footers = <>
                  Visible = False
                end
                item
                  ButtonStyle = cbsEllipsis
                  Color = 16776176
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'CAR_T'
                  Footers = <>
                  Visible = False
                  OnEditButtonClick = dbg3Columns10EditButtonClick
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_REGION'
                  Footers = <>
                  Visible = False
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_DELIVERY_TYPE'
                  Footers = <>
                end>
            end
          end
        end
        object p1: TPanel
          Left = 2
          Top = 769
          Width = 549
          Height = 37
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 3
          object Panel10: TPanel
            Left = 362
            Top = 2
            Width = 185
            Height = 33
            Align = alRight
            TabOrder = 0
            DesignSize = (
              185
              33)
            object bb1: TBitBtn
              Left = 15
              Top = 6
              Width = 81
              Height = 25
              Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
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
              Left = 99
              Top = 6
              Width = 83
              Height = 25
              Hint = #1054#1090#1084#1077#1085#1080#1090#1100
              Anchors = [akTop, akRight]
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
          object Panel11: TPanel
            Left = 2
            Top = 2
            Width = 360
            Height = 33
            Align = alClient
            TabOrder = 1
            object lbOper: TLabel
              Left = 3
              Top = 3
              Width = 31
              Height = 13
              Caption = 'lbOper'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object pbEst: TProgressBar
              Left = 1
              Top = 20
              Width = 358
              Height = 12
              Align = alBottom
              Step = 1
              TabOrder = 0
            end
          end
        end
        object Panel9: TPanel
          Left = 2
          Top = 455
          Width = 549
          Height = 114
          Align = alTop
          Caption = 'Panel9'
          TabOrder = 1
          object Splitter2: TSplitter
            Left = 1
            Top = 73
            Width = 547
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object m1: TMemo
            Left = 1
            Top = 76
            Width = 547
            Height = 37
            Align = alClient
            Color = 16776176
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 547
            Height = 72
            Align = alTop
            Caption = 'Panel12'
            TabOrder = 1
            object Panel13: TPanel
              Left = 516
              Top = 1
              Width = 30
              Height = 70
              Align = alRight
              TabOrder = 0
              DesignSize = (
                30
                70)
              object SpeedButton2: TSpeedButton
                Left = 4
                Top = 23
                Width = 23
                Height = 22
                Hint = #1042#1099#1073#1088#1072#1090#1100' '#1085#1086#1089#1080#1090#1077#1083#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103' ('#1087#1091#1090#1100')'
                Anchors = [akTop, akRight]
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333FF3333333333333744333333333333F773333333333337
                  44473333333333F777F3333333333744444333333333F7733733333333374444
                  4433333333F77333733333333744444447333333F7733337F333333744444444
                  433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                  9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                  C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                  CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                  CCC333333333333777FF33333333333333CC3333333333333773}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object Label45: TLabel
                Left = -12
                Top = 24
                Width = 24
                Height = 13
                Caption = #1055#1091#1090#1100
                Visible = False
              end
              object sbRfrLink: TSpeedButton
                Left = 4
                Top = 2
                Width = 23
                Height = 22
                Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091
                Glyph.Data = {
                  F6000000424DF600000000000000760000002800000010000000100000000100
                  0400000000008000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
                  7777777778087777777777777700877777777777770B0877777777770000B087
                  777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
                  7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
                  777777770FFFBFF08777777770FBFFBF08777777700000000077}
                ParentShowHint = False
                ShowHint = True
                OnClick = sbRfrLinkClick
              end
              object sbConfFile: TSpeedButton
                Left = 3
                Top = 47
                Width = 23
                Height = 22
                Hint = #1057#1086#1079#1076#1072#1090#1100' JPG'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333333333333333333333C3333333333333337F3333333333333C0C3333
                  333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
                  3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
                  333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
                  0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
                  0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
                  3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
                  3333333333777333333333333333333333333333333333333333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = sbConfFileClick
              end
            end
            object m2: TMemo
              Left = 1
              Top = 1
              Width = 515
              Height = 70
              Align = alClient
              Color = 16776176
              Lines.Strings = (
                '')
              ScrollBars = ssVertical
              TabOrder = 1
            end
            object dbgOrdLinks: TDBGridEh
              Left = 1
              Top = 1
              Width = 515
              Height = 70
              Align = alClient
              DataSource = dsOrdLinks
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgOrdLinksDblClick
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ID_LINK'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'PATH'
                  Footers = <>
                end>
            end
          end
        end
        object Panel16: TPanel
          Left = 2
          Top = 420
          Width = 549
          Height = 35
          Align = alTop
          TabOrder = 4
          object Label48: TLabel
            Left = 4
            Top = 8
            Width = 108
            Height = 13
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
          end
          object SpeedButton7: TSpeedButton
            Left = 520
            Top = 5
            Width = 23
            Height = 22
            Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton7Click
          end
          object edDok: TEdit
            Left = 120
            Top = 5
            Width = 393
            Height = 21
            TabOrder = 0
          end
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1080' '#1086#1090#1075#1088#1091#1079#1082#1080
      ImageIndex = 1
      object pc2: TPageControl
        Left = 0
        Top = 0
        Width = 1181
        Height = 808
        ActivePage = tc2
        Align = alClient
        TabOrder = 0
        OnChange = pc2Change
        object tc1: TTabSheet
          Caption = #1053#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1087#1088#1072#1081#1089#1072
          object Splitter1: TSplitter
            Left = 0
            Top = 241
            Width = 1173
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1173
            Height = 241
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            object DBNavigator1: TDBNavigator
              Left = 2
              Top = 221
              Width = 1169
              Height = 18
              DataSource = dsPr
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
              Align = alBottom
              TabOrder = 0
            end
            object dbg1: TDBGridEh
              Left = 2
              Top = 2
              Width = 1169
              Height = 219
              Align = alClient
              DataSource = dsPrice
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              TitleLines = 2
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME_PRICE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 224
                end
                item
                  EditButtons = <>
                  FieldName = 'PTYPE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'NAMETMC'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 157
                end
                item
                  EditButtons = <>
                  FieldName = 'VNAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 126
                end
                item
                  EditButtons = <>
                  FieldName = 'NAME_EST'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 135
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_PRICE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_PTYPE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_ITEM'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_VERSION'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_ESTIMATE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'D_PRICE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'D_CONFIRM'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end>
            end
          end
          object dbg12: TDBGridEh
            Left = 0
            Top = 244
            Width = 329
            Height = 447
            Align = alLeft
            DataSource = dsPrice_Pos
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Width = 83
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Width = 92
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'TOTAL'
                Footers = <>
                Width = 108
              end>
          end
        end
        object tc2: TTabSheet
          Caption = #1053#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1088#1072#1089#1095#1077#1090#1072
          ImageIndex = 1
          object p2: TPanel
            Left = 0
            Top = 0
            Width = 1173
            Height = 780
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 0
            object p3: TPanel
              Left = 2
              Top = 2
              Width = 250
              Height = 776
              Align = alLeft
              BevelInner = bvLowered
              TabOrder = 0
              object Panel5: TPanel
                Left = 2
                Top = 2
                Width = 246
                Height = 31
                Align = alTop
                BevelInner = bvRaised
                TabOrder = 0
                object Label36: TLabel
                  Left = 8
                  Top = 8
                  Width = 34
                  Height = 13
                  Caption = #1053#1072#1081#1090#1080':'
                end
                object edFind: TEdit
                  Left = 56
                  Top = 4
                  Width = 177
                  Height = 21
                  Hint = 
                    #1045#1089#1083#1080' '#1087#1077#1088#1074#1099#1081' '#1089#1080#1084#1074#1086#1083':'#13' % - '#1087#1086#1080#1089#1082' '#1087#1086' '#1087#1086#1076#1089#1090#1088#1086#1082#1077#13' *  - '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091#13 +
                    ' = - '#1087#1086#1080#1089#1082' '#1087#1086' '#8470' '#1089#1084#1077#1090#1099
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnKeyUp = edFindKeyUp
                end
              end
              object dbt1: TDBS_TreeView
                Left = 2
                Top = 33
                Width = 246
                Height = 720
                Align = alClient
                HideSelection = False
                Indent = 19
                TabOrder = 1
                OnChange = dbt1Change
                Database = dmIS.dbIS
                Transaction = dmIS.mT
                RootId = 4
                TableName = 'ITEMS_V'
                FieldId = 'ID_ITEM'
                FieldParentId = 'ID_PARENT'
                FieldName = 'NAME'
                FieldState = 'LOW'
                FieldSort = 'NAME'
                OnBuildNode = dbt1BuildNode
              end
              object Panel6: TPanel
                Left = 2
                Top = 753
                Width = 246
                Height = 21
                Align = alBottom
                TabOrder = 2
                object Label37: TLabel
                  Left = 8
                  Top = 2
                  Width = 22
                  Height = 13
                  Caption = #1050#1086#1076':'
                end
                object lb: TLabel
                  Left = 40
                  Top = 2
                  Width = 14
                  Height = 13
                  Caption = 'lb1'
                end
              end
            end
            object p4: TPanel
              Left = 252
              Top = 2
              Width = 919
              Height = 776
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 1
              object Splitter9: TSplitter
                Left = 2
                Top = 463
                Width = 915
                Height = 3
                Cursor = crVSplit
                Align = alBottom
              end
              object Panel7: TPanel
                Left = 2
                Top = 466
                Width = 915
                Height = 308
                Align = alBottom
                BevelInner = bvLowered
                TabOrder = 0
                object PageControl2: TPageControl
                  Left = 2
                  Top = 2
                  Width = 911
                  Height = 304
                  ActivePage = TabSheet5
                  Align = alClient
                  TabOrder = 0
                  TabPosition = tpBottom
                  object TabSheet4: TTabSheet
                    Caption = #1055#1086' '#1101#1083#1077#1084#1077#1085#1090#1072#1084
                    object Splitter11: TSplitter
                      Left = 0
                      Top = 120
                      Width = 903
                      Height = 3
                      Cursor = crVSplit
                      Align = alTop
                    end
                    object Splitter10: TSplitter
                      Left = 297
                      Top = 123
                      Height = 155
                    end
                    object PageControl3: TPageControl
                      Left = 300
                      Top = 123
                      Width = 603
                      Height = 155
                      Align = alClient
                      TabOrder = 0
                      TabPosition = tpBottom
                    end
                    object dbg10: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 903
                      Height = 120
                      Align = alTop
                      DataSource = dsEst_Oper_E
                      Flat = True
                      FooterColor = clWindow
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'MS Sans Serif'
                      FooterFont.Style = []
                      FooterRowCount = 1
                      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
                      SumList.Active = True
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      UseMultiTitle = True
                      OnGetCellParams = dbg10GetCellParams
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'ID_CALC'
                          Footers = <>
                          Title.EndEllipsis = True
                          Width = 22
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'AMOUNT'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'FULL_AMOUNT'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'WASTE'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'WASTE_DEF'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'AMOUNT_TIME'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'PRICE'
                          Footers = <>
                          Title.EndEllipsis = True
                          Width = 46
                        end
                        item
                          EditButtons = <>
                          FieldName = 'PRICE0'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'TOTAL'
                          Footer.DisplayFormat = '### ### ### ##0.00'
                          Footer.FieldName = 'TOTAL'
                          Footer.ValueType = fvtSum
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'UNAME'
                          Footers = <>
                          Title.EndEllipsis = True
                          Width = 39
                        end
                        item
                          EditButtons = <>
                          FieldName = 'OTNAME'
                          Footers = <>
                          Title.EndEllipsis = True
                          Width = 167
                        end
                        item
                          EditButtons = <>
                          FieldName = 'TIME_WASTE'
                          Footers = <>
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ARCH'
                          Footers = <>
                          Title.EndEllipsis = True
                        end>
                    end
                    object dbg11: TDBGridEh
                      Left = 0
                      Top = 123
                      Width = 297
                      Height = 155
                      Align = alLeft
                      DataSource = dsEst_TMC_E
                      Flat = True
                      FooterColor = clWindow
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'MS Sans Serif'
                      FooterFont.Style = []
                      FooterRowCount = 1
                      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
                      SumList.Active = True
                      TabOrder = 2
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      UseMultiTitle = True
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'ID_ITEM'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footers = <>
                          Width = 317
                        end
                        item
                          EditButtons = <>
                          FieldName = 'UNAME'
                          Footers = <>
                          Width = 41
                        end
                        item
                          EditButtons = <>
                          FieldName = 'AMOUNT'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'WASTE'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'FULL_AMOUNT'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'PRICE'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'PRICE0'
                          Footers = <>
                        end
                        item
                          EditButtons = <>
                          FieldName = 'TOTAL'
                          Footer.DisplayFormat = '### ### ### ##0.0000'
                          Footer.FieldName = 'TOTAL'
                          Footer.ValueType = fvtSum
                          Footers = <>
                        end
                        item
                          Checkboxes = True
                          EditButtons = <>
                          FieldName = 'IS_COMM'
                          Footers = <>
                          KeyList.Strings = (
                            '1'
                            '0')
                        end
                        item
                          EditButtons = <>
                          FieldName = 'IS_BASE'
                          Footers = <>
                          KeyList.Strings = (
                            '1'
                            '0')
                        end>
                    end
                    object dbg14: TDBGridEh
                      Left = 300
                      Top = 123
                      Width = 603
                      Height = 155
                      Align = alClient
                      DataSource = dsParam
                      Flat = True
                      FooterColor = clWindow
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'MS Sans Serif'
                      FooterFont.Style = []
                      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
                      TabOrder = 3
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      UseMultiTitle = True
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footers = <>
                          Width = 149
                        end
                        item
                          EditButtons = <>
                          FieldName = 'MP'
                          Footers = <>
                          Width = 79
                        end
                        item
                          EditButtons = <>
                          FieldName = 'NAMEU'
                          Footers = <>
                          Width = 38
                        end
                        item
                          EditButtons = <>
                          FieldName = 'DEF_MP'
                          Footers = <>
                          Width = 69
                        end>
                    end
                  end
                  object TabSheet5: TTabSheet
                    Caption = #1057#1091#1084#1084#1072#1088#1085#1086
                    ImageIndex = 1
                    object Splitter12: TSplitter
                      Left = 0
                      Top = 97
                      Width = 903
                      Height = 3
                      Cursor = crVSplit
                      Align = alTop
                    end
                    object dbg9: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 903
                      Height = 97
                      Align = alTop
                      DataSource = dsOper
                      Flat = True
                      FooterColor = 16776176
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'MS Sans Serif'
                      FooterFont.Style = []
                      FooterRowCount = 1
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
                      SumList.Active = True
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      OnGetCellParams = dbg9GetCellParams
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                          Width = 321
                        end
                        item
                          EditButtons = <>
                          FieldName = 'nAmount_Time'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                          Width = 79
                        end
                        item
                          EditButtons = <>
                          FieldName = 'UNAME'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                          Width = 51
                        end
                        item
                          EditButtons = <>
                          FieldName = 'PRICE'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'TOTAL'
                          Footer.DisplayFormat = '### ### ### ##0.00'
                          Footer.FieldName = 'TOTAL'
                          Footer.ValueType = fvtSum
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'AMOUNT'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'AMOUNT_TIME'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'COST'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'COST0'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_OBJ'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ARCH'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end>
                    end
                    object dbg8: TDBGridEh
                      Left = 0
                      Top = 100
                      Width = 903
                      Height = 178
                      Align = alClient
                      DataSource = dsMat
                      Flat = True
                      FooterColor = 16776176
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'MS Sans Serif'
                      FooterFont.Style = []
                      FooterRowCount = 1
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
                      SumList.Active = True
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'NAME'
                          Footer.FieldName = 'ID_OBJ'
                          Footer.ValueType = fvtCount
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.SortIndex = 1
                          Title.SortMarker = smDownEh
                          Title.TitleButton = True
                          Width = 325
                        end
                        item
                          EditButtons = <>
                          FieldName = 'UNAME'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.TitleButton = True
                          Width = 46
                        end
                        item
                          EditButtons = <>
                          FieldName = 'AMOUNT'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'PRICE'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.TitleButton = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'TOTAL'
                          Footer.DisplayFormat = '### ### ### ##0.00'
                          Footer.FieldName = 'TOTAL'
                          Footer.ValueType = fvtSum
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.EndEllipsis = True
                        end
                        item
                          EditButtons = <>
                          FieldName = 'ID_OBJ'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.TitleButton = True
                        end>
                    end
                  end
                end
              end
              object Panel8: TPanel
                Left = 2
                Top = 2
                Width = 915
                Height = 461
                Align = alClient
                BevelInner = bvLowered
                TabOrder = 1
                object clb1: TCoolBar
                  Left = 2
                  Top = 2
                  Width = 911
                  Height = 28
                  AutoSize = True
                  Bands = <
                    item
                      Control = tlb1
                      ImageIndex = -1
                      MinHeight = 24
                      Width = 907
                    end>
                  object tlb1: TToolBar
                    Left = 9
                    Top = 0
                    Width = 894
                    Height = 24
                    AutoSize = True
                    Caption = 'tlb1'
                    Flat = True
                    Images = fmMain.il1
                    TabOrder = 0
                    object tbOpen: TToolButton
                      Left = 0
                      Top = 0
                      Caption = 'tbOpen'
                      ImageIndex = 29
                      OnClick = tbOpenClick
                    end
                    object ToolButton4: TToolButton
                      Left = 23
                      Top = 0
                      Width = 19
                      Caption = 'ToolButton4'
                      Down = True
                      ImageIndex = 3
                      Style = tbsSeparator
                    end
                    object tb1: TToolButton
                      Left = 42
                      Top = 0
                      Hint = #1042#1089#1077
                      Caption = 'tb1'
                      Down = True
                      ImageIndex = 10
                      ParentShowHint = False
                      ShowHint = True
                      Style = tbsCheck
                    end
                    object tb2: TToolButton
                      Left = 65
                      Top = 0
                      Hint = #1058#1086#1083#1100#1082#1086' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1077
                      Caption = 'tb2'
                      ImageIndex = 14
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object tb3: TToolButton
                      Left = 88
                      Top = 0
                      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1086#1074
                      Caption = 'tb3'
                      DropdownMenu = PopupMenu1
                      ImageIndex = 13
                      ParentShowHint = False
                      ShowHint = True
                      Style = tbsDropDown
                    end
                    object ToolButton2: TToolButton
                      Left = 124
                      Top = 0
                      Width = 44
                      Caption = 'ToolButton2'
                      Down = True
                      ImageIndex = 4
                      Style = tbsSeparator
                    end
                    object ToolButton9: TToolButton
                      Left = 168
                      Top = 0
                      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
                      Caption = 'ToolButton9'
                      ImageIndex = 26
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = ToolButton9Click
                    end
                    object Label39: TLabel
                      Left = 191
                      Top = 0
                      Width = 55
                      Height = 13
                      Caption = '    '#1053#1072#1081#1090#1080':   '
                    end
                    object edFind_Est: TEdit
                      Left = 246
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
                      OnKeyUp = edFind_EstKeyUp
                    end
                  end
                end
                object dbg7: TDBGridEh
                  Left = 2
                  Top = 30
                  Width = 911
                  Height = 321
                  Align = alClient
                  DataSource = dsEst
                  Flat = True
                  FooterColor = 16776176
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -11
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
                  RowHeight = 4
                  RowLines = 1
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  TitleLines = 2
                  UseMultiTitle = True
                  OnDblClick = dbg7DblClick
                  OnGetCellParams = dbg7GetCellParams
                  OnSortMarkingChanged = dbg7SortMarkingChanged
                  Columns = <
                    item
                      EditButtons = <>
                      FieldName = 'ID_ESTIMATE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ID_VERSION'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'NAME'
                      Footers = <>
                      Width = 231
                    end
                    item
                      EditButtons = <>
                      FieldName = 'D_CREATE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'D_CONFIRM'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'AMOUNT'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'PRICE_DATE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_NDS'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'PRICE_DELIVERY'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'PRICE_TOOLS'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'PROFIT'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ID_DOC'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'DOP_PRICE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'TOTAL_SUM'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'STATUS'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_PROC'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'FIOCR'
                      Footers = <>
                      Width = 137
                    end
                    item
                      EditButtons = <>
                      FieldName = 'FIOCONF'
                      Footers = <>
                      Width = 164
                    end
                    item
                      EditButtons = <>
                      FieldName = 'TOTAL_SUM_AL'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_OPER'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_MAT'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_OPER_PROC'
                      Footers = <>
                      Width = 71
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_MAT_PROC'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'SUM_PROC_ONE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'nSUM_TOTAL_SALE'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'nSUM_TOTAL_SALE_ONE'
                      Footers = <>
                    end>
                end
                object DBNavigator2: TDBNavigator
                  Left = 2
                  Top = 351
                  Width = 911
                  Height = 18
                  DataSource = dsEst
                  VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                  Align = alBottom
                  TabOrder = 2
                end
              end
            end
          end
        end
      end
    end
    object ts3: TTabSheet
      Caption = #1047#1072#1082#1072#1079' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1091
      ImageIndex = 2
      object Splitter17: TSplitter
        Left = 799
        Top = 0
        Height = 808
        Align = alRight
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 799
        Height = 808
        Align = alClient
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072
        TabOrder = 0
        object Splitter13: TSplitter
          Left = 2
          Top = 471
          Width = 795
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Splitter14: TSplitter
          Left = 2
          Top = 344
          Width = 795
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Panel17: TPanel
          Left = 2
          Top = 15
          Width = 795
          Height = 329
          Align = alTop
          Constraints.MinHeight = 329
          Constraints.MinWidth = 549
          TabOrder = 0
          DesignSize = (
            795
            329)
          object Label50: TLabel
            Left = 5
            Top = 19
            Width = 39
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090':'
          end
          object DBText1_p: TDBText
            Left = 47
            Top = 19
            Width = 65
            Height = 17
            Alignment = taCenter
            DataField = 'ID_ITEM'
            DataSource = dsCli
          end
          object DBText2_p: TDBText
            Left = 118
            Top = 19
            Width = 512
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NAME'
            DataSource = dsCli
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 5
            Top = 55
            Width = 56
            Height = 13
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          end
          object Label52: TLabel
            Left = 5
            Top = 5
            Width = 61
            Height = 13
            Caption = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072':'
          end
          object lb1_p: TLabel
            Left = 76
            Top = 5
            Width = 18
            Height = 13
            Caption = 'lb1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 180
            Top = 5
            Width = 53
            Height = 13
            Caption = #8470' '#1079#1072#1082#1072#1079#1072':'
          end
          object lb2_p: TLabel
            Left = 235
            Top = 5
            Width = 18
            Height = 13
            Caption = 'lb2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label58: TLabel
            Left = 5
            Top = 171
            Width = 79
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          end
          object Label59: TLabel
            Left = 5
            Top = 148
            Width = 78
            Height = 13
            Caption = #1042#1080#1076' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
          end
          object DBText8: TDBText
            Left = 300
            Top = 144
            Width = 483
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'OPERTYPE'
            DataSource = dsPType
          end
          object Label60: TLabel
            Left = 255
            Top = 203
            Width = 65
            Height = 26
            Alignment = taCenter
            Caption = #1044#1072#1090#1072#13#10#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
          end
          object Label62: TLabel
            Left = 336
            Top = 242
            Width = 41
            Height = 13
            Caption = #1042#1072#1083#1102#1090#1072':'
          end
          object Label63: TLabel
            Left = 336
            Top = 6
            Width = 37
            Height = 13
            Caption = #1057#1090#1072#1090#1091#1089':'
          end
          object lb3_p: TLabel
            Left = 376
            Top = 6
            Width = 18
            Height = 13
            Caption = 'lb3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label65: TLabel
            Left = 424
            Top = 204
            Width = 22
            Height = 26
            Alignment = taCenter
            Caption = #1047#1072#1082#13#10#1088#1099#1090':'
          end
          object Label66: TLabel
            Left = 453
            Top = 298
            Width = 60
            Height = 13
            Caption = #1044#1086#1087'. '#1091#1089#1083#1091#1075#1072
            Visible = False
          end
          object Label72: TLabel
            Left = 413
            Top = 21
            Width = 67
            Height = 26
            Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072': '#13#10'('#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081')'
          end
          object Label78: TLabel
            Left = 5
            Top = 76
            Width = 74
            Height = 13
            Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100':'
          end
          object sbDog_p: TSpeedButton
            Left = 520
            Top = 51
            Width = 23
            Height = 22
            Hint = #1044#1086#1075#1086#1074#1086#1088#1072
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
          end
          object lbNomDog_p: TLabel
            Left = 483
            Top = 27
            Width = 50
            Height = 13
            Caption = 'lbNomDog'
          end
          object Label81: TLabel
            Left = 5
            Top = 239
            Width = 53
            Height = 13
            Caption = #1044#1086#1089#1090#1072#1074#1082#1072':'
          end
          object Label83: TLabel
            Left = 336
            Top = 262
            Width = 26
            Height = 13
            Caption = #1044#1072#1090#1072
          end
          object Label84: TLabel
            Left = 480
            Top = 240
            Width = 24
            Height = 13
            Caption = #1050#1091#1088#1089
          end
          object lbCurs_p: TLabel
            Left = 483
            Top = 264
            Width = 29
            Height = 13
            Caption = 'lbCurs'
          end
          object Label86: TLabel
            Left = 7
            Top = 264
            Width = 121
            Height = 13
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1077#1092'.'#1074#1072#1083#1102#1090#1077':'
          end
          object Label88: TLabel
            Left = 5
            Top = 34
            Width = 40
            Height = 13
            Caption = #1055#1088#1086#1077#1082#1090':'
          end
          object DBText5_p: TDBText
            Left = 47
            Top = 34
            Width = 65
            Height = 17
            Alignment = taCenter
            DataField = 'ID_PROJECT'
            DataSource = fmCliOrds.dsPrj
          end
          object DBText6_p: TDBText
            Left = 119
            Top = 34
            Width = 265
            Height = 17
            DataField = 'NAME'
            DataSource = fmCliOrds.dsPrj
          end
          object Label89: TLabel
            Left = 486
            Top = 167
            Width = 18
            Height = 13
            Caption = '(64)'
          end
          object SpeedButton9: TSpeedButton
            Left = 518
            Top = 163
            Width = 23
            Height = 22
            Hint = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object Label90: TLabel
            Left = 342
            Top = 104
            Width = 19
            Height = 13
            Caption = #1058#1080#1087
          end
          object lbNom_Name_p: TLabel
            Left = 421
            Top = 191
            Width = 64
            Height = 13
            Caption = 'lbNom_Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edType_Prod_p: TEdit
            Left = 85
            Top = 144
            Width = 212
            Height = 21
            Color = 16776176
            TabOrder = 6
            Text = #1055#1083#1072#1082#1072#1090
          end
          object ed1_p: TEdit
            Left = 84
            Top = 167
            Width = 397
            Height = 21
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyUp = ed1_pKeyUp
          end
          object dtp1_p: TDBDateTimeEditEh
            Left = 324
            Top = 207
            Width = 98
            Height = 21
            Color = 16776176
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 8
            Visible = True
          end
          object lcb5_p: TDBLookupComboboxEh
            Left = 382
            Top = 238
            Width = 97
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            DropDownBox.Width = 200
            EditButtons = <>
            KeyField = 'ID_CURRENCY'
            ListField = 'NAME'
            ListSource = dmIS.dsCURR
            TabOrder = 10
            Visible = True
            OnCloseUp = lcb5_pCloseUp
          end
          object dtp2_p: TDBDateTimeEditEh
            Left = 449
            Top = 207
            Width = 89
            Height = 21
            EditButtons = <>
            Kind = dtkDateEh
            ReadOnly = True
            TabOrder = 9
            Visible = True
          end
          object ed4_p: TEdit
            Left = 515
            Top = 296
            Width = 22
            Height = 21
            Color = clWhite
            ReadOnly = True
            TabOrder = 14
            Text = '0'
            Visible = False
          end
          object edDog_p: TEdit
            Left = 344
            Top = 52
            Width = 169
            Height = 21
            Color = 16776176
            TabOrder = 2
            OnKeyUp = edDogKeyUp
          end
          object cb1_p: TCheckBox
            Left = 343
            Top = 79
            Width = 98
            Height = 17
            Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1077
            Color = 16776176
            ParentColor = False
            TabOrder = 3
          end
          object cb3_p: TCheckBox
            Left = 466
            Top = 79
            Width = 73
            Height = 17
            Caption = #1057#1087#1077#1094'. '#1091#1095#1105#1090
            Color = 16776176
            ParentColor = False
            TabOrder = 4
          end
          object GroupBox5: TGroupBox
            Left = 1
            Top = 193
            Width = 248
            Height = 38
            Caption = #1056#1072#1089#1095#1105#1090#1085#1072#1103
            TabOrder = 15
            object Label95: TLabel
              Left = 138
              Top = 14
              Width = 29
              Height = 13
              Caption = #1062#1077#1085#1072':'
            end
            object Label96: TLabel
              Left = 5
              Top = 14
              Width = 61
              Height = 13
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100': '
            end
            object edCast_R_p: TEdit
              Left = 170
              Top = 11
              Width = 71
              Height = 21
              ReadOnly = True
              TabOrder = 0
              Text = '0'
            end
            object edSum_R_p: TEdit
              Left = 68
              Top = 11
              Width = 69
              Height = 21
              ReadOnly = True
              TabOrder = 1
              Text = '0'
            end
          end
          object GroupBox6: TGroupBox
            Left = 1
            Top = 288
            Width = 694
            Height = 37
            Anchors = [akLeft, akTop, akRight]
            Caption = #1055#1088#1086#1076#1072#1078#1085#1072#1103
            TabOrder = 13
            object Label97: TLabel
              Left = 5
              Top = 14
              Width = 58
              Height = 13
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
            end
            object Label98: TLabel
              Left = 170
              Top = 9
              Width = 44
              Height = 26
              Alignment = taCenter
              Caption = #1053#1072#1094#1077#1085#1082#1072#13#10'%'
            end
            object Label99: TLabel
              Left = 304
              Top = 14
              Width = 29
              Height = 13
              Caption = #1062#1077#1085#1072':'
            end
            object SpeedButton10: TSpeedButton
              Left = 281
              Top = 11
              Width = 23
              Height = 22
              Hint = #1055#1086#1089#1095#1080#1090#1072#1090#1100' '#1085#1072#1094#1077#1085#1082#1091','#13#1077#1089#1083#1080' '#1080#1079#1074#1077#1089#1090#1085#1072' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF3333333333333744333333333333F773333333333337
                44473333333333F777F3333333333744444333333333F7733733333333374444
                4433333333F77333733333333744444447333333F7733337F333333744444444
                433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                CCC333333333333777FF33333333333333CC3333333333333773}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton10Click
            end
            object ed3_p: TEdit
              Left = 84
              Top = 11
              Width = 85
              Height = 21
              Color = 16776176
              TabOrder = 0
              Text = '0'
              OnKeyUp = ed3_pKeyUp
            end
            object ed5_p: TEdit
              Left = 218
              Top = 12
              Width = 63
              Height = 21
              Color = 16776176
              TabOrder = 1
              Text = '0'
              OnKeyUp = ed5_pKeyUp
            end
            object edCastMen_p: TEdit
              Left = 334
              Top = 10
              Width = 103
              Height = 21
              TabOrder = 2
            end
          end
          object lcb1_p: TDBLookupComboboxEh
            Left = 84
            Top = 52
            Width = 253
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            DropDownBox.Width = 400
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dsMan
            TabOrder = 0
            Visible = True
          end
          object lcb55_p: TDBLookupComboboxEh
            Left = 84
            Top = 76
            Width = 253
            Height = 21
            Color = 16776176
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            DropDownBox.Width = 400
            EditButtons = <>
            KeyField = 'ID_CHIEF'
            ListField = 'FIO'
            ListSource = dsCHIFF
            TabOrder = 1
            Visible = True
          end
          object ed7_p: TEdit
            Left = 153
            Top = 237
            Width = 97
            Height = 21
            Color = 16776176
            TabOrder = 12
            Text = '0'
            OnKeyUp = ed7_pKeyUp
          end
          object dtpDate_Open_p: TDBDateTimeEditEh
            Left = 382
            Top = 261
            Width = 97
            Height = 21
            Color = 16776176
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 11
            Visible = True
            OnCloseUp = dtpDate_Open_pCloseUp
          end
          object edDef_p: TEdit
            Left = 152
            Top = 263
            Width = 122
            Height = 21
            ReadOnly = True
            TabOrder = 16
            Text = '0'
          end
          object lcb7_p: TDBLookupComboboxEh
            Left = 368
            Top = 101
            Width = 175
            Height = 21
            Color = 16776176
            EditButtons = <>
            KeyField = 'ID_TYPE'
            ListField = 'NAME'
            ListSource = dsOrd_Type
            TabOrder = 5
            Visible = True
          end
          object pnFull_Name_p: TPanel
            Left = -445
            Top = 154
            Width = 462
            Height = 116
            TabOrder = 17
            Visible = False
            object m3_p: TMemo
              Left = 1
              Top = 1
              Width = 396
              Height = 114
              Align = alLeft
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object BitBtn10: TBitBtn
              Left = 419
              Top = 8
              Width = 25
              Height = 23
              Hint = #1047#1072#1082#1088#1099#1090#1100
              Caption = 'X'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = BitBtn4Click
            end
          end
          object BitBtn11: TBitBtn
            Left = 253
            Top = 236
            Width = 22
            Height = 25
            Hint = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1091
            ParentShowHint = False
            ShowHint = True
            TabOrder = 18
            OnClick = BitBtn5Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
          end
        end
        object Panel21: TPanel
          Left = 2
          Top = 474
          Width = 795
          Height = 295
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 2
          object GroupBox8: TGroupBox
            Left = 1
            Top = 1
            Width = 793
            Height = 293
            Align = alClient
            Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
            TabOrder = 0
            object dbn1_p: TDBNavigator
              Left = 2
              Top = 273
              Width = 789
              Height = 18
              DataSource = dsPL_SH
              Align = alBottom
              TabOrder = 0
            end
            object dbg3_p: TDBGridEh
              Left = 2
              Top = 15
              Width = 789
              Height = 258
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
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = dbg3CellClick
              OnGetCellParams = dbg3_pGetCellParams
              Columns = <
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'D_PLANING'
                  Footer.FieldName = 'D_PLANING'
                  Footer.Value = #1042#1089#1077#1075#1086
                  Footer.ValueType = fvtStaticText
                  Footers = <>
                  Width = 77
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footer.FieldName = 'AMOUNT'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 55
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'ADRESS'
                  Footers = <>
                  Width = 267
                end
                item
                  EditButtons = <>
                  FieldName = 'OBJ_TYPE'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'WEIGHT'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'DELIVERY_AMOUNT'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'DELIVERY_COST'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'nRegion'
                  Footers = <>
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'nDeliv_type'
                  Footers = <>
                end
                item
                  ButtonStyle = cbsEllipsis
                  Color = 16776176
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'OBJ_T'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'WEIGHT_ONE'
                  Footers = <>
                  Visible = False
                end
                item
                  ButtonStyle = cbsEllipsis
                  Color = 16776176
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'CAR_T'
                  Footers = <>
                  Visible = False
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_REGION'
                  Footers = <>
                  Visible = False
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_DELIVERY_TYPE'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'POS_NAME'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ITEM_NAME'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_ORDER_POS'
                  Footers = <>
                end>
            end
          end
        end
        object Panel22: TPanel
          Left = 2
          Top = 769
          Width = 795
          Height = 37
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 3
          object Panel23: TPanel
            Left = 608
            Top = 2
            Width = 185
            Height = 33
            Align = alRight
            TabOrder = 0
            DesignSize = (
              185
              33)
            object BitBtn12: TBitBtn
              Left = 5
              Top = 6
              Width = 84
              Height = 25
              Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
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
            object BitBtn13: TBitBtn
              Left = 99
              Top = 6
              Width = 78
              Height = 25
              Hint = #1054#1090#1084#1077#1085#1080#1090#1100
              Anchors = [akTop, akRight]
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
          object p1_p: TPanel
            Left = 2
            Top = 2
            Width = 606
            Height = 33
            Align = alClient
            TabOrder = 1
            object lbOper_p: TLabel
              Left = 3
              Top = 3
              Width = 31
              Height = 13
              Caption = 'lbOper'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ProgressBar1: TProgressBar
              Left = 1
              Top = 20
              Width = 604
              Height = 12
              Align = alBottom
              Step = 1
              TabOrder = 0
            end
          end
        end
        object Panel25: TPanel
          Left = 2
          Top = 382
          Width = 795
          Height = 89
          Align = alTop
          Caption = 'Panel9'
          TabOrder = 1
          object Splitter16: TSplitter
            Left = 1
            Top = 42
            Width = 793
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object m1_p: TMemo
            Left = 1
            Top = 45
            Width = 793
            Height = 43
            Align = alClient
            Color = 16776176
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object Panel26: TPanel
            Left = 1
            Top = 1
            Width = 793
            Height = 41
            Align = alTop
            Caption = 'Panel12'
            TabOrder = 1
            object Panel27: TPanel
              Left = 762
              Top = 1
              Width = 30
              Height = 39
              Align = alRight
              TabOrder = 0
              DesignSize = (
                30
                39)
              object SpeedButton13: TSpeedButton
                Left = 4
                Top = 15
                Width = 23
                Height = 22
                Hint = #1042#1099#1073#1088#1072#1090#1100' '#1085#1086#1089#1080#1090#1077#1083#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103' ('#1087#1091#1090#1100')'
                Anchors = [akTop, akRight]
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333FF3333333333333744333333333333F773333333333337
                  44473333333333F777F3333333333744444333333333F7733733333333374444
                  4433333333F77333733333333744444447333333F7733337F333333744444444
                  433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
                  9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
                  C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
                  CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
                  CCC333333333333777FF33333333333333CC3333333333333773}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton13Click
              end
              object Label108: TLabel
                Left = 4
                Top = 0
                Width = 24
                Height = 13
                Caption = #1055#1091#1090#1100
              end
            end
            object m2_p: TMemo
              Left = 1
              Top = 1
              Width = 761
              Height = 39
              Align = alClient
              Color = 16776176
              Lines.Strings = (
                '')
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
        end
        object Panel28: TPanel
          Left = 2
          Top = 347
          Width = 795
          Height = 35
          Align = alTop
          TabOrder = 4
          object Label109: TLabel
            Left = 4
            Top = 8
            Width = 108
            Height = 13
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
          end
          object SpeedButton14: TSpeedButton
            Left = 520
            Top = 5
            Width = 23
            Height = 22
            Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton7Click
          end
          object edDok_p: TEdit
            Left = 120
            Top = 5
            Width = 393
            Height = 21
            TabOrder = 0
          end
        end
      end
      object PageControl1: TPageControl
        Left = 802
        Top = 0
        Width = 379
        Height = 808
        ActivePage = TabSheet3
        Align = alRight
        Constraints.MinHeight = 10
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
          object Splitter18: TSplitter
            Left = 0
            Top = 254
            Width = 371
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object ToolBar1: TToolBar
            Left = 0
            Top = 0
            Width = 371
            Height = 29
            Caption = 'ToolBar2'
            Images = fmMain.il1
            TabOrder = 0
            object tbDel_p: TToolButton
              Left = 0
              Top = 2
              Caption = 'tbDel'
              ImageIndex = 3
              OnClick = tbDel_pClick
            end
            object ToolButton6: TToolButton
              Left = 23
              Top = 2
              Caption = 'ToolButton1'
              ImageIndex = 26
              OnClick = ToolButton1Click
            end
            object ToolButton7: TToolButton
              Left = 46
              Top = 2
              Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1079#1076#1077#1083#1080#1103
              Caption = 'ToolButton3'
              ImageIndex = 37
              ParentShowHint = False
              ShowHint = False
              Visible = False
              OnClick = ToolButton3Click
            end
          end
          object Panel29: TPanel
            Left = 0
            Top = 29
            Width = 371
            Height = 225
            Align = alTop
            Caption = 'Panel4'
            TabOrder = 3
            object dbg4_p: TDBGridEh
              Left = 1
              Top = 1
              Width = 369
              Height = 223
              Align = alClient
              DataSource = dsOrdParam
              DrawMemoText = True
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = dbg4CellClick
              OnGetCellParams = dbg4GetCellParams
              OnMouseDown = dbg4MouseDown
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 171
                end
                item
                  EditButtons = <>
                  FieldName = 'S_AMOUNT'
                  Footers = <>
                  Width = 62
                end
                item
                  EditButtons = <>
                  FieldName = 'STRVALUE'
                  Footers = <>
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clBlack
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = []
                  Width = 108
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_ORDER_PARAM'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_PT_PARAM'
                  Footers = <>
                end>
            end
          end
          object Edit20: TEdit
            Left = 152
            Top = 80
            Width = 41
            Height = 21
            TabOrder = 2
            Visible = False
            OnExit = edstrvExit
            OnKeyDown = edstrvKeyDown
            OnKeyPress = edstrvKeyPress
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 152
            Top = 108
            Width = 49
            Height = 21
            KeyField = 'ID_MP_SET'
            ListField = 'NAME'
            ListSource = dsP
            TabOrder = 1
            Visible = False
            OnClick = dbl2Click
            OnExit = dbl2Exit
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = 257
            Width = 371
            Height = 523
            Align = alClient
            Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            TabOrder = 4
            object Label53: TLabel
              Left = 328
              Top = 16
              Width = 38
              Height = 13
              Caption = 'Label53'
            end
            object dbn2_p: TDBNavigator
              Left = 2
              Top = 503
              Width = 367
              Height = 18
              DataSource = dsORD_POS
              Align = alBottom
              TabOrder = 0
            end
            object dbg2_p: TDBGridEh
              Left = 2
              Top = 43
              Width = 367
              Height = 460
              Align = alClient
              DataSource = dsORD_POS
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
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              Columns = <
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 170
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footers = <>
                  Width = 46
                end
                item
                  Alignment = taCenter
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'nUNIT'
                  Footers = <>
                  Width = 33
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'PRICEA'
                  Footer.Value = #1042#1089#1077#1075#1086':'
                  Footer.ValueType = fvtStaticText
                  Footers = <>
                  Width = 71
                end
                item
                  EditButtons = <>
                  FieldName = 'sUMPRICE'
                  Footer.FieldName = 'sUMPRICE'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  Width = 88
                end
                item
                  Color = 16776176
                  EditButtons = <>
                  FieldName = 'NDS'
                  Footers = <>
                end
                item
                  ButtonStyle = cbsEllipsis
                  EditButtons = <>
                  FieldName = 'PRODNAME'
                  Footers = <>
                  Width = 155
                  OnEditButtonClick = dbg2_pColumns6EditButtonClick
                end
                item
                  ButtonStyle = cbsEllipsis
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'ID_PRODUCT'
                  Footers = <>
                  OnEditButtonClick = dbg2_pColumns6EditButtonClick
                end>
            end
            object Panel18: TPanel
              Left = 2
              Top = 15
              Width = 367
              Height = 28
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 2
              object Label55: TLabel
                Left = 288
                Top = 0
                Width = 8
                Height = 13
                Caption = '%'
              end
              object SpeedButton8: TSpeedButton
                Left = 336
                Top = 1
                Width = 23
                Height = 22
                Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1089#1082#1083#1072#1076' '#1043#1055
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
                  555555777777777FF5555500000000805555557777777777FF555550BBBBB008
                  05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
                  005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
                  055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
                  055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
                  05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
                  05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
                  005555555775FFFF77F555555570000000555555555777777755}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton8Click
              end
              object cbNDS_P: TCheckBox
                Left = 8
                Top = -2
                Width = 177
                Height = 17
                Caption = #1040#1074#1090#1086#1087#1086#1076#1089#1090#1072#1085#1086#1074#1082#1072' '#1053#1044#1057
                TabOrder = 0
              end
            end
            object edNDS_P: TEdit
              Left = 160
              Top = 11
              Width = 121
              Height = 21
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  object pnDok: TPanel
    Left = 0
    Top = 912
    Width = 409
    Height = 201
    Caption = 'pnDok'
    Color = clMoneyGreen
    TabOrder = 1
    Visible = False
    object Panel15: TPanel
      Left = 1
      Top = 168
      Width = 407
      Height = 32
      Align = alBottom
      Color = clMoneyGreen
      TabOrder = 0
      object SpeedButton5: TSpeedButton
        Left = 376
        Top = 8
        Width = 23
        Height = 22
        Hint = #1054#1090#1084#1077#1085#1072
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
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 344
        Top = 8
        Width = 23
        Height = 22
        Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FF000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FF000000FF000000FF000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000FF000000FF000000FF000000FF000000FF000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000FF000000FF000000FF000000FF000000FF000000FF000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F
          7F0000FF000000FF000000000000FF00FF0000FF000000FF000000FF00000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F0000FF
          000000000000FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF00000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000FF
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000FF
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
          000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007F7F7F0000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF007F7F7F0000FF000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FF000000FF000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 407
      Height = 167
      Align = alClient
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      TabOrder = 1
      object dbgDok: TDBGridEh
        Left = 2
        Top = 15
        Width = 403
        Height = 150
        Align = alClient
        DataSource = dsPDoc
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
            FieldName = 'ID_PROJECT_DOC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'DOC_TYPE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'NUMBER'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'nTP'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'STATUS'
            Footers = <>
          end>
      end
    end
  end
  object qCli: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_ITEM, NAME'
      'from ITEMS where ID_ITEM = :id_item')
    Left = 652
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_item'
        ParamType = ptUnknown
      end>
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
    Left = 652
    Top = 384
  end
  object qMan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select r.fio, r.id_p'
      'from personnel r join p_f f'
      'on f.idpost = r.idpost and f.idf = 42'
      
        'where r.d_dismiss is null or (r.is_fact = 1 and r.d_dismiss is n' +
        'ot null)'
      'union'
      'select r.fio, r.id_p'
      'from personnel r'
      
        'where  (r.d_dismiss is null or (r.is_fact = 1 and r.d_dismiss is' +
        ' not null)) and r.access_key = 0')
    Left = 604
    Top = 344
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
  object qProj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_PROJECT, NAME '
      'from PROJECTS'
      'where D_CLOSE is null and ID_AGENT = :id_agent'
      'order by NAME')
    Left = 548
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_agent'
        ParamType = ptUnknown
      end>
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
  end
  object qOrder: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 620
    Top = 200
  end
  object dsMan: TDataSource
    DataSet = qMan
    Left = 620
    Top = 384
  end
  object dsProj: TDataSource
    DataSet = qProj
    Left = 564
    Top = 376
  end
  object dsOrder: TDataSource
    DataSet = qOrder
    Left = 620
    Top = 240
  end
  object qProd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_P_AREA, NAME from PROD_AREAS'
      'where ID_PATYPE = 1'
      'order by NAME')
    Left = 700
    Top = 200
    object qProdID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProdNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object qPType: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.ID_PTYPE, p.NAME, o.NAME OPERTYPE , DOP_PRICE,PROFIT'
      'from PTYPES p'
      'left join OPER_TYPES o'
      'on o.ID_OPER_TYPE = p.ID_OPER_TYPE'
      'where p.STATUS = 1'
      'order by p.NAME')
    Left = 660
    Top = 200
    object qPTypeID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"PTYPES"."ID_PTYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPTypeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qPTypeOPERTYPE: TIBStringField
      FieldName = 'OPERTYPE'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qPTypeDOP_PRICE: TFloatField
      FieldName = 'DOP_PRICE'
      Origin = '"PTYPES"."DOP_PRICE"'
    end
    object qPTypePROFIT: TFloatField
      FieldName = 'PROFIT'
      Origin = '"PTYPES"."PROFIT"'
    end
  end
  object dsProd: TDataSource
    DataSet = qProd
    Left = 708
    Top = 240
  end
  object dsPType: TDataSource
    DataSet = qPType
    Left = 660
    Top = 240
  end
  object qPr: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select e.id_ptype,  v.id_version,e.id_estimate,'
      
        'v.id_item,e.name ename,p.id_price, p.name pname, v.name vname, i' +
        '.name prod ,v.status,'
      
        'case when v.status = 100 then '#39#1047#1072#1082#1088#1099#1090#1072' - '#39'|| v.name else v.name ' +
        'end name'
      'from prices p'
      'join estimates e on e.id_estimate = p.id_estimate'
      'join product_versions v on v.id_price = p.id_price'
      'join items i on i.id_item = v.id_item'
      'where e.id_ptype = :id_ptype'
      'order by v.status,p.name')
    Left = 692
    Top = 352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_ptype'
        ParamType = ptUnknown
      end>
    object qPrID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"ESTIMATES"."ID_PTYPE"'
    end
    object qPrID_PRICE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1072#1081#1089#1072
      FieldName = 'ID_PRICE'
      Origin = '"PRICES"."ID_PRICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrID_VERSION: TIntegerField
      DisplayLabel = #8470' '#1074#1077#1088#1089#1080#1080
      FieldName = 'ID_VERSION'
      Origin = '"PRODUCT_VERSIONS"."ID_VERSION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"ESTIMATES"."ID_ESTIMATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_ITEM'
      Origin = '"PRODUCT_VERSIONS"."ID_ITEM"'
    end
    object qPrENAME: TIBStringField
      DisplayLabel = #1057#1084#1077#1090#1072
      FieldName = 'ENAME'
      Origin = '"ESTIMATES"."NAME"'
      Size = 128
    end
    object qPrPNAME: TIBStringField
      DisplayLabel = #1055#1088#1072#1081#1089
      FieldName = 'PNAME'
      Origin = '"PRICES"."NAME"'
      Size = 128
    end
    object qPrVNAME: TIBStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'VNAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
    object qPrPROD: TIBStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'PROD'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qPrSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PRODUCT_VERSIONS"."STATUS"'
    end
    object qPrNAME: TIBStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 138
    end
  end
  object dsPr: TDataSource
    DataSet = qPr
    Left = 684
    Top = 384
  end
  object qOrdParam: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qOrdParamAfterScroll
    SQL.Strings = (
      'select'
      ''
      'o.NAME ,'
      'O.ID_ORDER_PARAM ,'
      '    o.ID_PT_PARAM ,'
      '    o.S_AMOUNT ,'
      '    o.AMOUNT ,'
      '    o.ID_MP_SET ,'
      '    o.MPNAME ,'
      '    o.ID_MAIN_PARAM ,'
      '    o.IN_ORDER ,'
      '    o.STRVALUE,'
      'o.P_TYPE'
      ''
      ''
      '  from get_ord_params_det(:id_order,:id_ptype,:ysl_in) o'
      'order by o.posit')
    UpdateObject = upOrdParam
    Left = 574
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_ptype'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ysl_in'
        ParamType = ptUnknown
      end>
    object qOrdParamNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GET_ORD_PARAMS"."NAME"'
      Size = 64
    end
    object qOrdParamID_ORDER_PARAM: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_ORDER_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_ORDER_PARAM"'
    end
    object qOrdParamID_PT_PARAM: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
      FieldName = 'ID_PT_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_PT_PARAM"'
    end
    object qOrdParamS_AMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'S_AMOUNT'
      Origin = '"GET_ORD_PARAMS"."S_AMOUNT"'
      Size = 128
    end
    object qOrdParamAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"GET_ORD_PARAMS"."AMOUNT"'
    end
    object qOrdParamID_MP_SET: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"GET_ORD_PARAMS"."ID_MP_SET"'
    end
    object qOrdParamMPNAME: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      FieldName = 'MPNAME'
      Origin = '"GET_ORD_PARAMS"."MPNAME"'
      Size = 128
    end
    object qOrdParamID_MAIN_PARAM: TIntegerField
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_MAIN_PARAM"'
    end
    object qOrdParamIN_ORDER: TIntegerField
      FieldName = 'IN_ORDER'
      Origin = '"GET_ORD_PARAMS"."IN_ORDER"'
    end
    object qOrdParamSTRVALUE: TIBStringField
      DisplayLabel = #1057#1090#1088#1086#1082#1072
      FieldName = 'STRVALUE'
      Origin = '"GET_ORD_PARAMS_DET"."STRVALUE"'
      Size = 255
    end
    object qOrdParamP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"GET_ORD_PARAMS"."P_TYPE"'
    end
  end
  object dsOrdParam: TDataSource
    DataSet = qOrdParam
    Left = 574
    Top = 147
  end
  object upOrdParam: TIBUpdateSQL
    RefreshSQL.Strings = (
      'select * from  get_ord_params(:id_order, :ID_PTYPE) ')
    ModifySQL.Strings = (
      'update project_ord_params'
      'set'
      '   amount = :s_amount'
      'where (id_order_param = :id_order_param)')
    Left = 622
    Top = 163
  end
  object qP: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_mp_set,  name, s_value'
      'from main_params_sets where id_main_param = :id_main_param')
    Left = 742
    Top = 163
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_main_param'
        ParamType = ptUnknown
      end>
    object qPID_MP_SET: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"MAIN_PARAMS_SETS"."ID_MP_SET"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"MAIN_PARAMS_SETS"."NAME"'
      Size = 64
    end
    object qPS_VALUE: TFloatField
      FieldName = 'S_VALUE'
      Origin = '"MAIN_PARAMS_SETS"."S_VALUE"'
    end
  end
  object dsP: TDataSource
    DataSet = qP
    Left = 670
    Top = 163
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mmT
    SQL.Strings = (
      'select id_mp_set,  name, s_value'
      'from main_params_sets where id_main_param = :id_main_param')
    Left = 678
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_main_param'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"MAIN_PARAMS_SETS"."ID_MP_SET"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NAME'
      Origin = '"MAIN_PARAMS_SETS"."NAME"'
      Size = 64
    end
    object FloatField1: TFloatField
      FieldName = 'S_VALUE'
      Origin = '"MAIN_PARAMS_SETS"."S_VALUE"'
    end
  end
  object qIns1: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 734
    Top = 367
  end
  object qCHIEF: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select M.ID_CHIEF, P.FIO '
      'from CHIEF_MANAGERS M'
      'join PERSONNEL P on P.ID_P = M.ID_CHIEF'
      'order by P.FIO')
    Left = 578
    Top = 201
    object qCHIEFID_CHIEF: TIntegerField
      FieldName = 'ID_CHIEF'
      Origin = '"CHIEF_MANAGERS"."ID_CHIEF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCHIEFFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsCHIFF: TDataSource
    DataSet = qCHIEF
    Left = 580
    Top = 240
  end
  object qPrice: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select  e.name name_est, v.id_version, v.id_item, i.name nameTMC' +
        ',v.name vname,'
      
        'p.id_price, p.name name_price, p.d_price, p.id_estimate, p.d_edi' +
        't, p.id_edit,'
      'p.d_confirm,p.id_confirm, p4.fio fio_confirm,'
      'ppp.fio fio_price,'
      ' pp.fio fio_est, e.id_ptype, t.name ptype'
      'from prices p'
      'join estimates e on p.id_estimate = e.id_estimate'
      'join product_versions v on v.id_price = p.id_price'
      'join items i on i.id_item = v.id_item'
      'left join personnel pp on pp.id_p = e.id_creator'
      'left join personnel ppp on ppp.id_p = p.id_edit'
      'left join personnel p4 on p4.id_p = p.id_confirm'
      'left join ptypes t on t.id_ptype = e.id_ptype'
      'where t.id_ptype = :id_ptype')
    Left = 565
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_ptype'
        ParamType = ptUnknown
      end>
    object qPriceNAME_EST: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1084#1077#1090#1099
      FieldName = 'NAME_EST'
      Origin = '"ESTIMATES"."NAME"'
      Size = 128
    end
    object qPriceID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PRODUCT_VERSIONS"."ID_VERSION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPriceID_ITEM: TIntegerField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'ID_ITEM'
      Origin = '"PRODUCT_VERSIONS"."ID_ITEM"'
    end
    object qPriceNAMETMC: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1079#1076#1077#1083#1080#1077
      FieldName = 'NAMETMC'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qPriceVNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1077#1088#1089#1080#1080
      FieldName = 'VNAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
    object qPriceID_PRICE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1072#1081#1089#1072
      FieldName = 'ID_PRICE'
      Origin = '"PRICES"."ID_PRICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPriceNAME_PRICE: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1072#1081#1089#1072
      FieldName = 'NAME_PRICE'
      Origin = '"PRICES"."NAME"'
      Size = 128
    end
    object qPriceD_PRICE: TDateField
      DisplayLabel = #1044'/'#1055#1088#1072#1081#1089#1072
      FieldName = 'D_PRICE'
      Origin = '"PRICES"."D_PRICE"'
    end
    object qPriceID_ESTIMATE: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072
      FieldName = 'ID_ESTIMATE'
      Origin = '"PRICES"."ID_ESTIMATE"'
    end
    object qPriceD_EDIT: TDateTimeField
      FieldName = 'D_EDIT'
      Origin = '"PRICES"."D_EDIT"'
    end
    object qPriceID_EDIT: TIntegerField
      FieldName = 'ID_EDIT'
      Origin = '"PRICES"."ID_EDIT"'
    end
    object qPriceD_CONFIRM: TDateTimeField
      DisplayLabel = #1044'/'#1091#1090#1074'. '#1087#1088#1072#1081#1089#1072
      FieldName = 'D_CONFIRM'
      Origin = '"PRICES"."D_CONFIRM"'
    end
    object qPriceID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"PRICES"."ID_CONFIRM"'
    end
    object qPriceFIO_CONFIRM: TIBStringField
      FieldName = 'FIO_CONFIRM'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPriceFIO_PRICE: TIBStringField
      FieldName = 'FIO_PRICE'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPriceFIO_EST: TIBStringField
      FieldName = 'FIO_EST'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPriceID_PTYPE: TIntegerField
      DisplayLabel = #1055#1088#1086#1076#1091#1082#1094#1080#1103
      FieldName = 'ID_PTYPE'
      Origin = '"ESTIMATES"."ID_PTYPE"'
    end
    object qPricePTYPE: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'PTYPE'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
  end
  object dsPrice: TDataSource
    DataSet = qPrice
    Left = 572
    Top = 479
  end
  object qPrice_Pos: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsPrice
    SQL.Strings = (
      'select id_price_pos, id_price, amount, price, profit, est_price,'
      'amount * price total'
      'from price_pos'
      'where id_price = :id_price'
      'order by amount')
    Left = 668
    Top = 487
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_price'
        ParamType = ptUnknown
      end>
    object qPrice_PosID_PRICE_POS: TIntegerField
      FieldName = 'ID_PRICE_POS'
      Origin = '"PRICE_POS"."ID_PRICE_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrice_PosID_PRICE: TIntegerField
      FieldName = 'ID_PRICE'
      Origin = '"PRICE_POS"."ID_PRICE"'
    end
    object qPrice_PosAMOUNT: TFloatField
      DisplayLabel = #1058#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"PRICE_POS"."AMOUNT"'
    end
    object qPrice_PosPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1096#1090'.'
      FieldName = 'PRICE'
      Origin = '"PRICE_POS"."PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qPrice_PosPROFIT: TFloatField
      FieldName = 'PROFIT'
      Origin = '"PRICE_POS"."PROFIT"'
      DisplayFormat = '### ### ### ##0.000'
    end
    object qPrice_PosEST_PRICE: TFloatField
      DisplayLabel = ' '#1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '
      FieldName = 'EST_PRICE'
      Origin = '"PRICE_POS"."EST_PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qPrice_PosTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1085#1072' '#1090#1080#1088#1072#1078
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsPrice_Pos: TDataSource
    DataSet = qPrice_Pos
    Left = 688
    Top = 568
  end
  object qPrice_Ptype: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.id_price,p.name'
      'from prices p'
      'join price_pos s on p.id_price = s.id_price'
      'where s.id_price_pos = :id_price_pos')
    Left = 732
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_price_pos'
        ParamType = ptUnknown
      end>
    object qPrice_PtypeID_PRICE: TIntegerField
      FieldName = 'ID_PRICE'
      Origin = '"PRICES"."ID_PRICE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrice_PtypeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PRICES"."NAME"'
      Size = 128
    end
  end
  object dsPrice_Ptype: TDataSource
    DataSet = qPrice_Ptype
    Left = 732
    Top = 544
  end
  object qEst_TMC: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qEst_TMCCalcFields
    SQL.Strings = (
      'select s.id_spos, s.id_estimate, s.id_obj, i.name,'
      'u.name uname, s.obj_kind, coalesce(s.amount,0) amount,'
      
        'case when (coalesce(s.amount,0)  - coalesce(s.comm_amount,0)) <>' +
        ' 0 then'
      
        'coalesce(s.total,0)/(coalesce(s.amount,0)  - coalesce(s.comm_amo' +
        'unt,0))'
      'else coalesce(s.total,0)/coalesce(s.amount,0) end  price,'
      'coalesce(s.total,0) total,'
      
        's.comm_amount, coalesce(s.amount,0) - coalesce(s.comm_amount,0) ' +
        'am'
      'from est_sumpos s'
      'join items i on i.id_item = s.id_obj'
      'left join units u on u.id_unit = s.id_unit'
      'where s.id_estimate = :id_estimate and s.obj_type = 1'
      'and coalesce(s.amount,0) > 0'
      'order by i.name')
    Left = 582
    Top = 535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qEst_TMCID_SPOS: TIntegerField
      FieldName = 'ID_SPOS'
      Origin = '"EST_SUMPOS"."ID_SPOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_TMCID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUMPOS"."ID_ESTIMATE"'
    end
    object qEst_TMCID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJ'
      Origin = '"EST_SUMPOS"."ID_OBJ"'
    end
    object qEst_TMCNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qEst_TMCUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_TMCOBJ_KIND: TIntegerField
      FieldName = 'OBJ_KIND'
      Origin = '"EST_SUMPOS"."OBJ_KIND"'
    end
    object qEst_TMCAM: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AM'
      ProviderFlags = []
    end
    object qEst_TMCAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074#1082#1083'. '#1044#1057
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_TMCPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_TMCTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_TMCnTotal_Def: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1079#1072#1082#1072#1079#1072
      FieldKind = fkCalculated
      FieldName = 'nTotal_Def'
      DisplayFormat = '### ### ##0.000'
      Calculated = True
    end
    object qEst_TMCCOMM_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1044#1057
      FieldName = 'COMM_AMOUNT'
      Origin = '"EST_SUMPOS"."COMM_AMOUNT"'
      DisplayFormat = '### ### ##0.000'
    end
  end
  object qEst_Work: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qEst_WorkCalcFields
    SQL.Strings = (
      'select s.id_spos, s.id_estimate, s.id_obj, o.name,'
      'u.name uname, s.obj_kind, coalesce(s.amount,0) amount,'
      'coalesce(s.total,0)/coalesce(s.amount,1) price, '
      
        'coalesce(s.total,0) total, coalesce(s.amount_time,0) amount_time' +
        ','
      'o.cost, o.cost0, o.arch'
      'from est_sumpos s'
      'join operations o on o.id_operation = s.id_obj'
      'join units u on u.id_unit = s.id_unit'
      'where s.id_estimate = :id_estimate and s.obj_type = 2'
      'and coalesce(s.amount,0) > 0'
      'order by o.name')
    Left = 630
    Top = 527
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qEst_WorkID_SPOS: TIntegerField
      FieldName = 'ID_SPOS'
      Origin = '"EST_SUMPOS"."ID_SPOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_WorkID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUMPOS"."ID_ESTIMATE"'
    end
    object qEst_WorkID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJ'
      Origin = '"EST_SUMPOS"."ID_OBJ"'
    end
    object qEst_WorkNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qEst_WorkUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_WorkOBJ_KIND: TIntegerField
      FieldName = 'OBJ_KIND'
      Origin = '"EST_SUMPOS"."OBJ_KIND"'
    end
    object qEst_WorkAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_WorkPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1086#1087#1077#1088#1072#1094#1080#1102
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_WorkTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1076#1077#1092'.'
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_WorkAMOUNT_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1072#1073#1089'.'
      FieldName = 'AMOUNT_TIME'
      ProviderFlags = []
    end
    object qEst_WorkCOST: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072' '#1095#1072#1089#1072
      FieldName = 'COST'
      Origin = '"OPERATIONS"."COST"'
      DisplayFormat = '### ### ##0.000'
      Precision = 18
      Size = 4
    end
    object qEst_WorkCOST0: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1077#1076'. '#1074#1099#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'COST0'
      Origin = '"OPERATIONS"."COST0"'
      DisplayFormat = '### ### ##0.000'
    end
    object qEst_WorknAmount_Time: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldKind = fkCalculated
      FieldName = 'nAmount_Time'
      Calculated = True
    end
    object qEst_WorknTotal_Def: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1079#1072#1082#1072#1079#1072
      FieldKind = fkCalculated
      FieldName = 'nTotal_Def'
      DisplayFormat = '### ### ##0.000'
      Calculated = True
    end
    object qEst_WorkARCH: TIBStringField
      DisplayLabel = '*'
      FieldName = 'ARCH'
      Origin = '"OPERATIONS"."ARCH"'
      FixedChar = True
      Size = 1
    end
  end
  object dsEst_TMC: TDataSource
    DataSet = qEst_TMC
    Left = 582
    Top = 583
  end
  object dsEst_Work: TDataSource
    DataSet = qEst_Work
    Left = 638
    Top = 575
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 104
    object N1: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1080#1079#1076#1077#1083#1080#1077
    end
    object N2: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1086#1089#1085#1072#1089#1090#1082#1091
    end
    object N3: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1091#1087#1072#1082#1086#1074#1082#1091
    end
  end
  object il1: TImageList
    Left = 216
    Top = 176
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000008080000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF0000000000000000
      0000000000000000000000808000000000000000000000808000008080000000
      0000000000000080800000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000008080000080800000808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF0000000000000000
      0000000000000000000000808000000000000080800000808000FFFFFF000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000008080000080800000FFFF000000000000000000C0C0C000000000000080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000C0C0C0000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF0000000000000000
      0000000000000080800000000000FFFFFF000000000000808000FFFFFF000000
      0000FFFFFF00FFFFFF0000808000000000000000000000000000000000000000
      0000008080000080800080808000FFFFFF008080800080808000C0C0C0000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C0008080800080808000808080008080800080808000808080008080
      8000000000008080800000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF0000808000000000000000FF00FFFFFF0080008000FFFF
      FF00808080000000000000000000000000000080000000FF0000000000008000
      8000FF00FF000080800000808000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF000000000000808000000000000000000000000000000000000000
      00000000000000000000C0C0C0000000000000000000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF0000808000000000000000FF00FFFFFF0080008000FFFF
      FF00808080000000000000000000000000000080000000FF0000000000008000
      8000FF00FF000080800000808000FFFFFF00FFFFFF00FFFFFF00808080000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000008080000000000000808000008080000000
      000000000000000000000000000000000000000000008080800080808000C0C0
      C000C0C0C000C0C0C000C0C0C000000000008080800080808000FFFFFF008080
      8000000000008080800080808000000000000000000000000000000000008080
      8000FFFFFF0000FFFF0000808000000000000000FF00FFFFFF0080008000FFFF
      FF00808080000000000000000000000000000000000000800000000000008000
      8000FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FFFFFF000080800000000000000000000000000000000000000000000000
      00000080800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000000080
      800000000000000000000000000000000000808080000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000000000008080800080808000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF000080800000000000FFFFFF00FFFFFF0080008000FFFF
      FF008080800000000000000000000000000000000000FFFFFF00000000008000
      8000FF00FF000000000000808000FFFFFF0000000000FFFFFF00808080000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF00808080000080800000FFFF0000FF
      FF000000000000000000000000000000000080808000C0C0C000C0C0C000FFFF
      FF00808080000000000000000000000000000000000000000000C0C0C0008080
      8000C0C0C0008080800000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF000080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008080800000000000000000000000000000000000FFFFFF00000000008000
      8000FF00FF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000808000FFFFFF000000000000000000FFFFFF00008080000000
      000000000000000000000000000000000000808080000000000000000000FFFF
      FF0080808000C0C0C000FFFFFF0000000000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000008000
      8000FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000008080000000000000000000008080000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000080808000C0C0C00000000000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000000000000000000080808000C0C0C000000000008000
      8000FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000008080000080800000808000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000FFFFFF00000000008080800080808000C0C0C000C0C0C000C0C0C0008080
      8000000000008080800000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000000000000000
      0000800080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000FFFF000000000000000000C0C0C000000000000080
      800000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800080808000FFFFFF008080800080808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000080808000C0C0C000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF00808080000080800000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C000C0C0C000C0C0C00080808000C0C0C000000000000000
      00000000000000000000000000000000000000000000C0C0C00080808000C0C0
      C000C0C0C0008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000080808000FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF008080
      800000000000FFFFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      000000000000FFFFFF0000808000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080808000808080008080
      800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000080
      8000008080008080800000000000000000008080800080808000808080008080
      8000808080008080800000808000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000808080008080
      8000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000008080800000000000FFFFFF008080
      800000000000FFFFFF0000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000008080800000000000FFFFFF000000
      0000000000008080800000000000000000008080000080800000000000008080
      0000000000000000000000000000000000000000FF00C0C0C0000000000000FF
      FF0000FFFF0000FFFF0000FFFF00008080000080800000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00000000000000FF0000000000C0C0C000C0C0C000FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      000000000000FFFFFF0000000000000000008080800000000000FFFFFF008080
      80000000000080808000FFFF00000000000080800000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000FF000000000000FFFF000000
      0000FFFFFF0000000000008080000080800000808000FFFFFF00808080000000
      FF000000FF000000FF000000FF000000FF0000000000C0C0C000C0C0C000C0C0
      C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800000000000000000000000000000000000808080000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FFFFFF000000000000000000000000008080800000000000FFFFFF000000
      00008080000080800000FFFF0000FFFF0000000000000000000080808000FFFF
      000000000000808080000000000000000000000000000000000000FFFF000000
      00008080800000000000000000000080800000FFFF0000FFFF00000000000000
      FF000000FF000000FF000000FF000000FF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000080808000C0C0C00000000000FFFFFF000000000080808000000000000000
      000000000000FFFFFF0000000000000000008080800000000000FFFFFF008080
      8000FFFF0000FFFF0000FFFF0000C0C0C000C0C0C000C0C0C000000000008080
      8000FFFF0000FFFF00000000000000000000FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000C0C0C0000000000000FFFF0000FFFF0000FFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      00008080800080808000FFFF000000000000C0C0C000C0C0C00000000000FFFF
      000000000000000000000000000000000000008000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000000000C0C0C000FFFF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C00000000000C0C0C0008080800000000000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000008080800000000000FFFFFF008080
      80000000000080808000FFFF000080800000C0C0C000C0C0C00000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000FFFF0000FFFF0000FFFF00FFFFFF00C0C0C000C0C0C000FFFF
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C0008080800000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000FF000000000080808000FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF000000FF000000000000000000000000008080
      8000808080008080800000000000C0C0C000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000C0C0C00080808000C0C0C000C0C0C00000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000808000000000008080800080808000000000000000
      0000000000000000000000000000000000000000FF000000FF0000000000FFFF
      FF008080800000FFFF000000000000000000FFFFFF0000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000008080800000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFFFFFFFFBF9FF81FFE3FF8FF1C93
      F00FFC3FF8FF1801F00FE027E0071000F00FC003E0070000F81FE007E0070001
      F81F8001E007A003F00F0001E007A003F00F0001E007A38FF81F0001E007A3FF
      F81FE007E00703FFF00FE003F9FF17FFF00FC007F8FFF7FFF00FE42FC0DFA37F
      F81FFC3FC03F807FFE7FFC3FD07F80FFFFFFFFF3FFFFFFFF03FFFFE1FFBFFFFF
      01FF8000FE0FFE9B00FF0003F803FC0300FF0003E001F801003700008001F800
      000700008001F801000300008001C003000100008001C0030001000F8001000F
      000100078001001F0007800F8007C03F00170000C01FC03F003F0000F07FD17F
      80FF0000FDFFF1FFFFFFFCFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object xlReport1: TxlReport
    DataExportMode = xdmDDE
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'D:\IS_MPK\IS_MPK\Tmp\newest.xls'
    DataSources = <
      item
        Alias = 'r'
        Range = 'rr3'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end
      item
        Alias = 'k'
        Range = 'rr4'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = False
    Params = <
      item
        Name = 'DATE_ESTIMATE'
      end
      item
        Name = 'IZD'
      end
      item
        Name = 'TIR'
      end
      item
        Name = 'PRICE'
      end
      item
        Name = 'DEV'
      end
      item
        Name = 'IDIZD'
      end
      item
        Name = 'IDVERS'
      end
      item
        Name = 'EQUIP'
      end
      item
        Name = 'NDS'
      end
      item
        Name = 'PROFIT'
      end
      item
        Name = 'DOPPRICE'
      end
      item
        Name = 'DELIVE'
      end
      item
        Name = 'NUMB_ESTIMATE'
      end>
    Left = 109
    Top = 413
  end
  object qEst: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select e.id_estimate, e.name, e.amount, e.price_date, e.sum_nds,' +
        ' e.price_delivery,'
      'e.price_tools, e.profit, e.dop_price,'
      'e.d_create, p.fio fiocr,  e.d_confirm, a.fio fioconf,'
      
        'e.id_doc,  e.total_sum, (e.total_sum/coalesce(e.amount,1)) total' +
        '_sum_al,'
      'e.status, e.id_version'
      ',sum(ss.total_oper) sum_oper'
      ', sum(ss.total_mat-ss.comm_amount) sum_mat'
      ',sum(ss.total_oper*(1+ss.profit/100)) sum_oper_proc'
      
        ',sum((ss.total_mat-ss.comm_amount)*(1+ss.dop_price/100)) sum_mat' +
        '_proc'
      ',sum(ss.total_oper * (ss.profit/100 + 1) +'
      
        '(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1)) sum_pr' +
        'oc'
      ',(sum(ss.total_oper * (ss.profit/100 + 1) +'
      
        '(ss.total_mat - ss.comm_amount) * (ss.dop_price/100 + 1)))/e.amo' +
        'unt  sum_proc_one'
      'from estimates e'
      
        'left join est_sum_oper_types ss on e.id_estimate = ss.id_estimat' +
        'e'
      'left join personnel p on p.id_p = e.id_creator'
      'left join personnel a on a.id_p = e.id_confirm'
      'join product_versions v on v.id_version = e.id_version'
      'join items i on i.id_item = v.id_item'
      ''
      'where i.id_item = :id_item'
      'group by  1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18')
    Left = 304
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qEstID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"ESTIMATES"."ID_ESTIMATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"ESTIMATES"."ID_VERSION"'
    end
    object qEstNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"ESTIMATES"."NAME"'
      Size = 128
    end
    object qEstD_CREATE: TDateTimeField
      DisplayLabel = #1057#1086#1079#1076#1072#1085#1072
      FieldName = 'D_CREATE'
      Origin = '"ESTIMATES"."D_CREATE"'
    end
    object qEstD_CONFIRM: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072
      FieldName = 'D_CONFIRM'
      Origin = '"ESTIMATES"."D_CONFIRM"'
    end
    object qEstAMOUNT: TIntegerField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"ESTIMATES"."AMOUNT"'
    end
    object qEstPRICE_DATE: TDateField
      DisplayLabel = #1055#1086' '#1094#1077#1085#1072#1084' '#1085#1072
      FieldName = 'PRICE_DATE'
      Origin = '"ESTIMATES"."PRICE_DATE"'
    end
    object qEstSUM_NDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'SUM_NDS'
      Origin = '"ESTIMATES"."SUM_NDS"'
    end
    object qEstPRICE_DELIVERY: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'PRICE_DELIVERY'
      Origin = '"ESTIMATES"."PRICE_DELIVERY"'
    end
    object qEstPRICE_TOOLS: TFloatField
      DisplayLabel = #1054#1089#1085#1072#1089#1090#1082#1072
      FieldName = 'PRICE_TOOLS'
      Origin = '"ESTIMATES"."PRICE_TOOLS"'
    end
    object qEstPROFIT: TFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1087#1088#1080#1073#1099#1083#1100
      FieldName = 'PROFIT'
      Origin = '"ESTIMATES"."PROFIT"'
      DisplayFormat = '#0.0 '
    end
    object qEstID_DOC: TIntegerField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"ESTIMATES"."ID_DOC"'
    end
    object qEstDOP_PRICE: TFloatField
      DisplayLabel = #1044#1086#1087'. '#1085#1072#1094#1077#1085#1082#1072
      FieldName = 'DOP_PRICE'
      Origin = '"ESTIMATES"."DOP_PRICE"'
      DisplayFormat = '#0.0 '
    end
    object qEstTOTAL_SUM: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'TOTAL_SUM'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qEstSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"ESTIMATES"."STATUS"'
    end
    object qEstSUM_PROC: TFloatField
      DisplayLabel = #1056#1072#1089#1095#1105#1090#1085#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'SUM_PROC'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qEstFIOCR: TIBStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'FIOCR'
      ProviderFlags = []
      Size = 60
    end
    object qEstFIOCONF: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083
      FieldName = 'FIOCONF'
      ProviderFlags = []
      Size = 60
    end
    object qEstTOTAL_SUM_AL: TFloatField
      DisplayLabel = #1057'/'#1089' '#1079#1072' '#1096#1090#1091#1082#1091
      FieldName = 'TOTAL_SUM_AL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEstSUM_OPER: TFloatField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078'|'#1054#1087#1077#1088#1072#1094#1080#1080'|'#1089'/'#1089
      FieldName = 'SUM_OPER'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEstSUM_MAT: TFloatField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078'|'#1058#1052#1062'|'#1089'/'#1089
      FieldName = 'SUM_MAT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEstSUM_OPER_PROC: TFloatField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078'|'#1054#1087#1077#1088#1072#1094#1080#1080'|'#1089'/'#1089' + %'
      FieldName = 'SUM_OPER_PROC'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEstSUM_MAT_PROC: TFloatField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078'|'#1058#1052#1062'|'#1089'/'#1089' + %'
      FieldName = 'SUM_MAT_PROC'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEstSUM_PROC_ONE: TFloatField
      DisplayLabel = #1056#1072#1089#1095#1077#1090#1085#1072#1103' '#1089'/'#1089' '#1079#1072' '#1096#1090#1091#1082#1091
      FieldName = 'SUM_PROC_ONE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qEstnSUM_TOTAL_SALE: TFloatField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078'|'#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1076#1072#1078#1085#1072#1103' '
      FieldKind = fkCalculated
      FieldName = 'nSUM_TOTAL_SALE'
      DisplayFormat = '### ### ##0.000'
      Calculated = True
    end
    object qEstnSUM_TOTAL_SALE_ONE: TFloatField
      DisplayLabel = #1055#1088#1086#1076#1072#1078#1085#1072#1103' '#1057'/'#1089' '#1079#1072' '#1096#1090#1091#1082#1091
      FieldKind = fkCalculated
      FieldName = 'nSUM_TOTAL_SALE_ONE'
      DisplayFormat = '### ### ##0.000'
      Calculated = True
    end
  end
  object dsEst: TDataSource
    DataSet = qEst
    Left = 304
    Top = 464
  end
  object qMat: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_spos, s.id_estimate, s.id_obj, i.name,'
      'u.name uname, s.obj_kind, coalesce(s.amount,0) amount,'
      
        'coalesce(s.total,0)/coalesce(s.amount,0) price, coalesce(s.total' +
        ',0) total'
      'from est_sumpos s '
      'join items i on i.id_item = s.id_obj'
      'left join units u on u.id_unit = s.id_unit'
      'where s.id_estimate = :id_estimate and s.obj_type = 1'
      'and coalesce(s.amount,0) > 0'
      'order by i.name')
    Left = 352
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ESTIMATE'
        ParamType = ptUnknown
        Size = 4
      end>
    object qMatID_SPOS: TIntegerField
      FieldName = 'ID_SPOS'
      Origin = '"EST_SUMPOS"."ID_SPOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMatID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUMPOS"."ID_ESTIMATE"'
    end
    object qMatID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJ'
      Origin = '"EST_SUMPOS"."ID_OBJ"'
    end
    object qMatNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qMatUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qMatOBJ_KIND: TIntegerField
      FieldName = 'OBJ_KIND'
      Origin = '"EST_SUMPOS"."OBJ_KIND"'
    end
    object qMatAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qMatPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qMatTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
  end
  object dsMat: TDataSource
    DataSet = qMat
    Left = 352
    Top = 440
  end
  object qOper: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qOperCalcFields
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_spos, s.id_estimate, s.id_obj, o.name,'
      'u.name uname, s.obj_kind, coalesce(s.amount,0) amount,'
      'coalesce(s.total,0)/coalesce(s.amount,0) price, '
      
        'coalesce(s.total,0) total, coalesce(s.amount_time,0) amount_time' +
        ','
      'o.cost, o.cost0, o.arch'
      'from est_sumpos s'
      'join operations o on o.id_operation = s.id_obj'
      'join units u on u.id_unit = s.id_unit'
      'where s.id_estimate = :id_estimate and s.obj_type = 2'
      'and coalesce(s.amount,0) > 0'
      'order by o.name')
    Left = 400
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ESTIMATE'
        ParamType = ptUnknown
        Size = 4
      end>
    object qOperID_SPOS: TIntegerField
      FieldName = 'ID_SPOS'
      Origin = '"EST_SUMPOS"."ID_SPOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOperID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUMPOS"."ID_ESTIMATE"'
    end
    object qOperID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJ'
      Origin = '"EST_SUMPOS"."ID_OBJ"'
    end
    object qOperNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qOperUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qOperOBJ_KIND: TIntegerField
      FieldName = 'OBJ_KIND'
      Origin = '"EST_SUMPOS"."OBJ_KIND"'
    end
    object qOperAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qOperPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qOperTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qOperAMOUNT_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1072#1073#1089'.'
      FieldName = 'AMOUNT_TIME'
      ProviderFlags = []
    end
    object qOperCOST: TIBBCDField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1077#1076'. '#1080#1079#1084'.'
      FieldName = 'COST'
      Origin = '"OPERATIONS"."COST"'
      Precision = 18
      Size = 4
    end
    object qOperCOST0: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1095#1072#1089#1072
      FieldName = 'COST0'
      Origin = '"OPERATIONS"."COST0"'
    end
    object qOpernAmount_Time: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldKind = fkCalculated
      FieldName = 'nAmount_Time'
      Calculated = True
    end
    object qOperARCH: TIBStringField
      DisplayLabel = '*'
      FieldName = 'ARCH'
      Origin = '"OPERATIONS"."ARCH"'
      FixedChar = True
      Size = 1
    end
  end
  object dsOper: TDataSource
    DataSet = qOper
    Left = 400
    Top = 440
  end
  object qFIO: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct p.id_p, p.fio'
      'from estimates e'
      'join personnel p on p.id_p = e.id_creator'
      'order by p.fio')
    Left = 456
    Top = 392
    object qFIOID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFIOFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsFIO: TDataSource
    DataSet = qFIO
    Left = 456
    Top = 440
  end
  object qC_ORD: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.n_order, p.name, p.id_product, p.id_estimate,'
      'coalesce(p.status,0) status, p.ord_kind'
      'from project_ords p'
      'where p.id_order = :c_ord')
    Left = 487
    Top = 154
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_ord'
        ParamType = ptUnknown
      end>
    object qC_ORDN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qC_ORDNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qC_ORDID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qC_ORDID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qC_ORDSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = []
    end
    object qC_ORDORD_KIND: TIntegerField
      FieldName = 'ORD_KIND'
      Origin = '"PROJECT_ORDS"."ORD_KIND"'
    end
  end
  object dsC_ORD: TDataSource
    DataSet = qC_ORD
    Left = 399
    Top = 194
  end
  object qVer: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select id_version, name, data, creater, status, rem, id_item, id' +
        '_price'
      'from product_versions'
      'where id_price = :id_price')
    Left = 238
    Top = 103
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_price'
        ParamType = ptUnknown
      end>
    object qVerID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PRODUCT_VERSIONS"."ID_VERSION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVerNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
    object qVerDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"PRODUCT_VERSIONS"."DATA"'
    end
    object qVerCREATER: TIntegerField
      FieldName = 'CREATER'
      Origin = '"PRODUCT_VERSIONS"."CREATER"'
    end
    object qVerSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"PRODUCT_VERSIONS"."STATUS"'
    end
    object qVerREM: TMemoField
      FieldName = 'REM'
      Origin = '"PRODUCT_VERSIONS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qVerID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"PRODUCT_VERSIONS"."ID_ITEM"'
    end
    object qVerID_PRICE: TIntegerField
      FieldName = 'ID_PRICE'
      Origin = '"PRODUCT_VERSIONS"."ID_PRICE"'
    end
  end
  object dsVer: TDataSource
    DataSet = qVer
    Left = 86
    Top = 103
  end
  object qEst_TMC_E: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst_Oper_E
    SQL.Strings = (
      
        'select s.id_est_pos, s.id_prod_oper, s.id_item, i.name, s.amount' +
        ','
      's.full_amount, s.waste, s.price, s.price0, s.total,'
      's.id_unit, u.name uname, s.is_comm, s.is_base'
      'from est_pos s '
      'left join units u on u.id_unit = s.id_unit'
      'join product_oper p on p.id_prod_oper = s.id_prod_oper'
      
        'join operations o on o.id_area = p.id_area and o.id_operation = ' +
        'p.id_operation'
      'join items i on i.id_item = s.id_item'
      
        'where s.id_estimate = :id_estimate and s.id_prod_oper = :id_prod' +
        '_oper'
      'and s.id_item is not null')
    Left = 132
    Top = 434
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_prod_oper'
        ParamType = ptUnknown
      end>
    object qEst_TMC_EID_EST_POS: TIntegerField
      FieldName = 'ID_EST_POS'
      Origin = '"EST_POS"."ID_EST_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_TMC_EID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"EST_POS"."ID_PROD_OPER"'
    end
    object qEst_TMC_EID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_ITEM'
      Origin = '"EST_POS"."ID_ITEM"'
    end
    object qEst_TMC_ENAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qEst_TMC_EAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1053#1072' '#1086#1087#1077#1088#1072#1094#1080#1102
      FieldName = 'AMOUNT'
      Origin = '"EST_POS"."AMOUNT"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_TMC_EFULL_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1056#1072#1089#1095#1105#1090#1085#1086#1077
      FieldName = 'FULL_AMOUNT'
      Origin = '"EST_POS"."FULL_AMOUNT"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_TMC_EWASTE: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1041#1088#1072#1082
      FieldName = 'WASTE'
      Origin = '"EST_POS"."WASTE"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_TMC_EPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Origin = '"EST_POS"."PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qEst_TMC_EPRICE0: TFloatField
      FieldName = 'PRICE0'
      Origin = '"EST_POS"."PRICE0"'
    end
    object qEst_TMC_ETOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TOTAL'
      Origin = '"EST_POS"."TOTAL"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qEst_TMC_EID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"EST_POS"."ID_UNIT"'
    end
    object qEst_TMC_EUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_TMC_EIS_COMM: TIntegerField
      DisplayLabel = #1044#1072#1074#1083#1100#1095#1077#1089#1082#1086#1077' '#1089#1099#1088#1100#1105
      FieldName = 'IS_COMM'
      Origin = '"EST_POS"."IS_COMM"'
    end
    object qEst_TMC_EIS_BASE: TIntegerField
      DisplayLabel = #1054#1089#1085#1086#1074#1085#1086#1081' '#1084#1072#1090#1077#1088#1080#1072#1083
      FieldName = 'IS_BASE'
      Origin = '"EST_POS"."IS_BASE"'
    end
  end
  object qEst_Oper_E: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_est_pos, s.id_estimate, s.id_prod_oper, s.amount,'
      
        's.full_amount, s.waste, s.amount_time, s.price, s.price0, s.tota' +
        'l,'
      's.id_unit, o.id_area, o.id_operation, o.name,'
      'o.calc_time, u.name uname, s.id_oper_type, t.name otname,'
      's.id_calc, s.waste_def, s.time_waste, s.is_group,o.arch'
      'from est_pos s '
      'left join units u on u.id_unit = s.id_unit'
      'left join oper_types t on t.id_oper_type = s.id_oper_type'
      'join product_oper p on p.id_prod_oper = s.id_prod_oper'
      
        'join operations o on o.id_area = p.id_area and o.id_operation = ' +
        'p.id_operation'
      'where s.id_estimate = :id_estimate and s.id_item is null')
    Left = 232
    Top = 446
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qEst_Oper_EID_EST_POS: TIntegerField
      FieldName = 'ID_EST_POS'
      Origin = '"EST_POS"."ID_EST_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_Oper_EID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_POS"."ID_ESTIMATE"'
    end
    object qEst_Oper_EID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"EST_POS"."ID_PROD_OPER"'
    end
    object qEst_Oper_EAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1053#1072' '#1090#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"EST_POS"."AMOUNT"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_Oper_EFULL_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1056#1072#1089#1095#1105#1090#1085#1086#1077
      FieldName = 'FULL_AMOUNT'
      Origin = '"EST_POS"."FULL_AMOUNT"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_Oper_EWASTE: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1053#1072' '#1087#1088#1080#1083#1072#1076#1082#1091
      FieldName = 'WASTE'
      Origin = '"EST_POS"."WASTE"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_Oper_EAMOUNT_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1099#1087'-'#1085#1080#1103
      FieldName = 'AMOUNT_TIME'
      Origin = '"EST_POS"."AMOUNT_TIME"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_Oper_EPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1095#1072#1089#1072
      FieldName = 'PRICE'
      Origin = '"EST_POS"."PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qEst_Oper_EPRICE0: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'PRICE0'
      Origin = '"EST_POS"."PRICE0"'
    end
    object qEst_Oper_ETOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'TOTAL'
      Origin = '"EST_POS"."TOTAL"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qEst_Oper_EID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"EST_POS"."ID_UNIT"'
    end
    object qEst_Oper_EID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Origin = '"OPERATIONS"."ID_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_Oper_EID_OPERATION: TIntegerField
      FieldName = 'ID_OPERATION'
      Origin = '"OPERATIONS"."ID_OPERATION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_Oper_ENAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qEst_Oper_ECALC_TIME: TMemoField
      FieldName = 'CALC_TIME'
      Origin = '"OPERATIONS"."CALC_TIME"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qEst_Oper_EUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_Oper_EID_OPER_TYPE: TIntegerField
      FieldName = 'ID_OPER_TYPE'
      Origin = '"EST_POS"."ID_OPER_TYPE"'
    end
    object qEst_Oper_EOTNAME: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'OTNAME'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qEst_Oper_EID_CALC: TIntegerField
      DisplayLabel = #8470' '#1087'/'#1087
      FieldName = 'ID_CALC'
      Origin = '"EST_POS"."ID_CALC"'
    end
    object qEst_Oper_EWASTE_DEF: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086'|'#1058#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'WASTE_DEF'
      Origin = '"EST_POS"."WASTE_DEF"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_Oper_ETIME_WASTE: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1087#1088#1080#1083#1072#1076#1082#1080
      FieldName = 'TIME_WASTE'
      Origin = '"EST_POS"."TIME_WASTE"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qEst_Oper_EIS_GROUP: TIntegerField
      FieldName = 'IS_GROUP'
      Origin = '"EST_POS"."IS_GROUP"'
    end
    object qEst_Oper_EARCH: TIBStringField
      DisplayLabel = '*'
      FieldName = 'ARCH'
      Origin = '"OPERATIONS"."ARCH"'
      FixedChar = True
      Size = 1
    end
  end
  object dsEst_TMC_E: TDataSource
    DataSet = qEst_TMC_E
    Left = 138
    Top = 486
  end
  object dsEst_Oper_E: TDataSource
    DataSet = qEst_Oper_E
    Left = 250
    Top = 486
  end
  object od1: TOpenDialog
    Left = 76
    Top = 412
  end
  object qParam: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst_Oper_E
    SQL.Strings = (
      
        '    select  p.id_prod_oper_param, p.id_oper_param, m1.name, m1.i' +
        'd_unit, u.name nameu,'
      
        '    coalesce(CAST(p.amount as NUMERIC(15, 3)),m.name) mp , CAST(' +
        'o.amount as NUMERIC(15, 3)) def_mp,'
      '    p.id_mp_set, m.name mpname , o.id_main_param , o.posit'
      '    from product_oper_params p'
      '    left join oper_params o on o.id_oper_param = p.id_oper_param'
      
        '    left join main_params m1 on m1.id_main_param = o.id_main_par' +
        'am'
      '    left join main_params_sets m on m.id_mp_set = p.id_mp_set'
      '    left join units u on m1.id_unit = u.id_unit'
      '    where p.id_prod_oper = :id_prod_oper '
      '    order by o.posit')
    Left = 184
    Top = 429
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prod_oper'
        ParamType = ptUnknown
      end>
    object qParamID_PROD_OPER_PARAM: TIntegerField
      FieldName = 'ID_PROD_OPER_PARAM'
      Origin = '"PRODUCT_OPER_PARAMS"."ID_PROD_OPER_PARAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qParamID_OPER_PARAM: TIntegerField
      FieldName = 'ID_OPER_PARAM'
      Origin = '"PRODUCT_OPER_PARAMS"."ID_OPER_PARAM"'
    end
    object qParamNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"MAIN_PARAMS"."NAME"'
      Size = 64
    end
    object qParamID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"MAIN_PARAMS"."ID_UNIT"'
    end
    object qParamNAMEU: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'NAMEU'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qParamMP: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'MP'
      ProviderFlags = []
      Size = 64
    end
    object qParamDEF_MP: TIBBCDField
      DisplayLabel = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      FieldName = 'DEF_MP'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qParamID_MP_SET: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"PRODUCT_OPER_PARAMS"."ID_MP_SET"'
    end
    object qParamMPNAME: TIBStringField
      FieldName = 'MPNAME'
      Origin = '"MAIN_PARAMS_SETS"."NAME"'
      Size = 64
    end
    object qParamID_MAIN_PARAM: TIntegerField
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"OPER_PARAMS"."ID_MAIN_PARAM"'
    end
    object qParamPOSIT: TIntegerField
      FieldName = 'POSIT'
      Origin = '"OPER_PARAMS"."POSIT"'
    end
  end
  object dsParam: TDataSource
    DataSet = qParam
    Left = 190
    Top = 476
  end
  object qPL_SH: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterEdit = qPL_SHAfterEdit
    AfterPost = qPL_SHAfterPost
    BeforeOpen = qPL_SHBeforeOpen
    BeforePost = qPL_SHBeforePost
    OnNewRecord = qPL_SHNewRecord
    SQL.Strings = (
      'select p.*,'
      
        '(select d.name from delivery_obj_types d where d.obj_type = p.ob' +
        'j_type) obj_t,'
      
        '(select t.name from tdcar_types t where t.id_tdcar_type = p.id_c' +
        'ar_type) car_t,'
      
        '(select e1.weight from estimates e1 where e1.id_estimate = :ide ' +
        '  ) weight_one,'
      'pos.name pos_name, i.name item_name'
      ''
      'from ORD_PLAN_SHIPP  p'
      
        'left join PROJECT_ORDS_POS pos on pos.id_order_pos = p.id_order_' +
        'pos'
      'left join items i on i.id_item = pos.id_product'
      'where p.ID_ORDER = :ID_ORDER'
      'and p.plan_type=21'
      'order by p.D_PLANING')
    UpdateObject = upPL_SH
    GeneratorField.Field = 'ID_PLAN_SHIPP'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 832
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ide'
        ParamType = ptUnknown
      end
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
      OnChange = qPL_SHAMOUNTChange
      DisplayFormat = '### ### ### ##0.0000'
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
    object qPL_SHID_DELIVERY_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'ID_DELIVERY_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_DELIVERY_TYPE"'
      OnChange = qPL_SHID_DELIVERY_TYPEChange
    end
    object qPL_SHID_REGION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      FieldName = 'ID_REGION'
      Origin = '"ORD_PLAN_SHIPP"."ID_REGION"'
    end
    object qPL_SHOBJ_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1086#1073#1098#1077#1082#1090#1072' ('#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080')'
      FieldName = 'OBJ_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."OBJ_TYPE"'
    end
    object qPL_SHID_CAR_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
      FieldName = 'ID_CAR_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_CAR_TYPE"'
    end
    object qPL_SHWEIGHT: TFloatField
      DisplayLabel = #1042#1077#1089', '#1082#1075' ('#1076#1083#1103' '#1089#1073'. '#1074#1077#1089#1072')'
      FieldName = 'WEIGHT'
      Origin = '"ORD_PLAN_SHIPP"."WEIGHT"'
    end
    object qPL_SHDELIVERY_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1072#1083#1083#1077#1090'/'#1072#1076#1088#1077#1089#1086#1074
      FieldName = 'DELIVERY_AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_AMOUNT"'
    end
    object qPL_SHDELIVERY_COST: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'DELIVERY_COST'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_COST"'
    end
    object qPL_SHnRegion: TStringField
      DisplayLabel = #1056#1077#1075#1080#1086#1085
      FieldKind = fkLookup
      FieldName = 'nRegion'
      LookupDataSet = qRegion
      LookupKeyFields = 'ID_REGION'
      LookupResultField = 'NAME'
      KeyFields = 'ID_REGION'
      Size = 64
      Lookup = True
    end
    object qPL_SHnDeliv_type: TStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldKind = fkLookup
      FieldName = 'nDeliv_type'
      LookupDataSet = qDelivery_types
      LookupKeyFields = 'ID_DELIVERY_TYPE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_DELIVERY_TYPE'
      OnChange = qPL_SHnDeliv_typeChange
      Size = 64
      Lookup = True
    end
    object qPL_SHOBJ_T: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_T'
      ProviderFlags = []
      Size = 64
    end
    object qPL_SHCAR_T: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1084#1072#1096#1080#1085#1099
      FieldName = 'CAR_T'
      ProviderFlags = []
      Size = 80
    end
    object qPL_SHWEIGHT_ONE: TFloatField
      DisplayLabel = #1042#1077#1089' '#1079#1072' '#1096#1090'.'
      FieldName = 'WEIGHT_ONE'
      Origin = '"ESTIMATES"."WEIGHT"'
      Visible = False
    end
    object qPL_SHID_ORDER_POS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
      FieldName = 'ID_ORDER_POS'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER_POS"'
    end
    object qPL_SHPOS_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'POS_NAME'
      Origin = '"PROJECT_ORDS_POS"."NAME"'
      Size = 64
    end
    object qPL_SHITEM_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077
      FieldName = 'ITEM_NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsPL_SH: TDataSource
    DataSet = qPL_SH
    Left = 878
    Top = 583
  end
  object upPL_SH: TIBUpdateSQL
    ModifySQL.Strings = (
      'update ORD_PLAN_SHIPP'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  D_FIX = CURRENT_TIMESTAMP,'
      '  D_PLANING = :D_PLANING,'
      '  ID_FIX = :ID_FIX,'
      '  ADRESS = :ADRESS,'
      '  id_region = :id_region,'
      '  ID_DELIVERY_TYPE = :ID_DELIVERY_TYPE,'
      '  WEIGHT = :WEIGHT,'
      '  obj_type = (case  when obj_type  in (select obj_type'
      '               from delivery_obj_types'
      '                where id_delivery_type = :ID_DELIVERY_TYPE)'
      '              then :obj_type'
      '              else'
      '                (select DEFAULT_OBJ_TYPE from  delivery_types d1'
      '                 where id_delivery_type = :ID_DELIVERY_TYPE)'
      '              end),'
      ''
      '  delivery_amount = :delivery_amount'
      'where'
      '  ID_PLAN_SHIPP = :ID_PLAN_SHIPP')
    InsertSQL.Strings = (
      'insert into ORD_PLAN_SHIPP'
      
        '  (ID_PLAN_SHIPP, AMOUNT, D_FIX, D_PLANING, ID_FIX, ID_ORDER, PL' +
        'AN_TYPE,ADRESS,'
      
        ' id_region, ID_DELIVERY_TYPE, weight, delivery_amount, id_car_ty' +
        'pe, obj_type, id_order_pos)'
      'values'
      
        '  (:ID_PLAN_SHIPP, :AMOUNT, CURRENT_TIMESTAMP, :D_PLANING, :ID_F' +
        'IX, :ID_ORDER, 21,:ADRESS,'
      
        ' :id_region, :ID_DELIVERY_TYPE, :weight, :delivery_amount, :id_c' +
        'ar_type, :obj_type, :id_order_pos)')
    DeleteSQL.Strings = (
      'delete from ORD_PLAN_SHIPP'
      'where'
      '  ID_PLAN_SHIPP = :OLD_ID_PLAN_SHIPP')
    Left = 832
    Top = 632
  end
  object qORD_POS: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterRefresh = qORD_POSAfterRefresh
    AfterScroll = qORD_POSAfterScroll
    BeforePost = qORD_POSBeforePost
    OnCalcFields = qORD_POSCalcFields
    OnNewRecord = qORD_POSNewRecord
    SQL.Strings = (
      
        'select  o.*, o.amount* cast(o.pricea as double precision) s, i.n' +
        'ame prodname'
      'from PROJECT_ORDS_POS o'
      'left join items i on i.id_item = o.id_product'
      'where ID_ORDER = :ID_ORDER')
    UpdateObject = upORD_POS
    GeneratorField.Field = 'ID_ORDER_POS'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 224
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qORD_POSID_ORDER_POS: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER_POS'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qORD_POSID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER"'
      Required = True
    end
    object qORD_POSNAME: TIBStringField
      DisplayLabel = #1069#1083#1077#1084#1077#1085#1090
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS_POS"."NAME"'
      Size = 64
    end
    object qORD_POSAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS_POS"."AMOUNT"'
    end
    object qORD_POSPRODUCED: TFloatField
      FieldName = 'PRODUCED'
      Origin = '"PROJECT_ORDS_POS"."PRODUCED"'
    end
    object qORD_POSSHIPPED: TFloatField
      FieldName = 'SHIPPED'
      Origin = '"PROJECT_ORDS_POS"."SHIPPED"'
    end
    object qORD_POSRECEIVE: TFloatField
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS_POS"."RECEIVE"'
    end
    object qORD_POSID_PRODUCT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS_POS"."ID_PRODUCT"'
    end
    object qORD_POSID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS_POS"."ID_C"'
    end
    object qORD_POSD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS_POS"."D_FIX"'
    end
    object qORD_POSID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS_POS"."ID_FIX"'
    end
    object qORD_POSID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS_POS"."ID_DOC"'
    end
    object qORD_POSPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS_POS"."PRICE"'
      Precision = 18
      Size = 4
    end
    object qORD_POSPRICEA: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS_POS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qORD_POSID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS_POS"."ID_CURRENCY"'
    end
    object qORD_POSID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS_POS"."ID_VERSION"'
    end
    object qORD_POSID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS_POS"."ID_ESTIMATE"'
    end
    object qORD_POSID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"PROJECT_ORDS_POS"."ID_UNIT"'
    end
    object qORD_POSsUMPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'sUMPRICE'
      Calculated = True
    end
    object qORD_POSnUNIT: TStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldKind = fkLookup
      FieldName = 'nUNIT'
      LookupDataSet = qUNITS
      LookupKeyFields = 'ID_UNIT'
      LookupResultField = 'NAME'
      KeyFields = 'ID_UNIT'
      Size = 16
      Lookup = True
    end
    object qORD_POSNDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'NDS'
      Origin = '"PROJECT_ORDS_POS"."NDS"'
    end
    object qORD_POSS: TFloatField
      FieldName = 'S'
      ProviderFlags = []
    end
    object qORD_POSPRODNAME: TIBStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'PRODNAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsORD_POS: TDataSource
    DataSet = qORD_POS
    Left = 310
    Top = 143
  end
  object upORD_POS: TIBUpdateSQL
    ModifySQL.Strings = (
      'update PROJECT_ORDS_POS'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  D_FIX =  CURRENT_TIMESTAMP,'
      '  ID_CURRENCY = :ID_CURRENCY,'
      '  ID_FIX = :ID_FIX,'
      '  NAME = :NAME,'
      '  PRICEA = :PRICEA,'
      '  ID_UNIT = :ID_UNIT,'
      '  NDS = :NDS,'
      'id_product = :id_product'
      'where'
      '  ID_ORDER_POS = :ID_ORDER_POS')
    InsertSQL.Strings = (
      'insert into PROJECT_ORDS_POS'
      
        '  (AMOUNT, D_FIX, ID_CURRENCY, ID_FIX, ID_ORDER, ID_ORDER_POS, N' +
        'AME, '
      '   PRICEA, ID_UNIT,NDS)'
      'values'
      
        '  (:AMOUNT, CURRENT_TIMESTAMP, :ID_CURRENCY, :ID_FIX, :ID_ORDER,' +
        ' :ID_ORDER_POS, :NAME, '
      '    :PRICEA, :ID_UNIT,:NDS)')
    DeleteSQL.Strings = (
      'delete from PROJECT_ORDS_POS'
      'where'
      '  ID_ORDER_POS = :OLD_ID_ORDER_POS')
    Left = 496
    Top = 248
  end
  object qUNITS: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_UNIT, NAME '
      'from UNITS'
      'order by NAME')
    Left = 312
    Top = 96
    object qUNITSID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"UNITS"."ID_UNIT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUNITSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
  end
  object dsUNITS: TDataSource
    DataSet = qUNITS
    Left = 393
    Top = 97
  end
  object qOrd_Type: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from ORD_TYPES order by NAME')
    Left = 78
    Top = 319
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
    object qOrd_TypeMARK: TIBStringField
      FieldName = 'MARK'
      Origin = '"ORD_TYPES"."MARK"'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrd_Type: TDataSource
    DataSet = qOrd_Type
    Left = 14
    Top = 412
  end
  object qEst_Sum_Oper_Types: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select s.id_estimate, s.id_oper_type, s.factor, s.total,'
      ' s.id_ptype, s.profit, s.dop_price, s.total_oper, s.total_mat,'
      ' s.comm_amount,t.name name_prod'
      'from est_sum_oper_types  s'
      'join oper_types t on t.id_oper_type = s.id_oper_type'
      'where id_estimate = :id_estimate')
    UpdateObject = UpESOT
    Left = 470
    Top = 546
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qEst_Sum_Oper_TypesID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUM_OPER_TYPES"."ID_ESTIMATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_Sum_Oper_TypesID_OPER_TYPE: TIntegerField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'ID_OPER_TYPE'
      Origin = '"EST_SUM_OPER_TYPES"."ID_OPER_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_Sum_Oper_TypesFACTOR: TFloatField
      DisplayLabel = '%'
      FieldName = 'FACTOR'
      Origin = '"EST_SUM_OPER_TYPES"."FACTOR"'
    end
    object qEst_Sum_Oper_TypesTOTAL: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'TOTAL'
      Origin = '"EST_SUM_OPER_TYPES"."TOTAL"'
    end
    object qEst_Sum_Oper_TypesID_PTYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'ID_PTYPE'
      Origin = '"EST_SUM_OPER_TYPES"."ID_PTYPE"'
    end
    object qEst_Sum_Oper_TypesPROFIT: TFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' %'
      FieldName = 'PROFIT'
      Origin = '"EST_SUM_OPER_TYPES"."PROFIT"'
    end
    object qEst_Sum_Oper_TypesDOP_PRICE: TFloatField
      DisplayLabel = #1044#1086#1087'. '#1085#1072#1094#1077#1085#1082#1072' %'
      FieldName = 'DOP_PRICE'
      Origin = '"EST_SUM_OPER_TYPES"."DOP_PRICE"'
    end
    object qEst_Sum_Oper_TypesTOTAL_OPER: TFloatField
      FieldName = 'TOTAL_OPER'
      Origin = '"EST_SUM_OPER_TYPES"."TOTAL_OPER"'
    end
    object qEst_Sum_Oper_TypesTOTAL_MAT: TFloatField
      FieldName = 'TOTAL_MAT'
      Origin = '"EST_SUM_OPER_TYPES"."TOTAL_MAT"'
    end
    object qEst_Sum_Oper_TypesCOMM_AMOUNT: TFloatField
      FieldName = 'COMM_AMOUNT'
      Origin = '"EST_SUM_OPER_TYPES"."COMM_AMOUNT"'
    end
    object qEst_Sum_Oper_TypesNAME_PROD: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'NAME_PROD'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qEst_Sum_Oper_TypesnID_CTYPE: TStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldKind = fkLookup
      FieldName = 'nID_CTYPE'
      LookupDataSet = qP_TYPE
      LookupKeyFields = 'ID_PTYPE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PTYPE'
      Size = 32
      Lookup = True
    end
  end
  object dsEst_Sum_Oper_Types: TDataSource
    DataSet = qEst_Sum_Oper_Types
    Left = 342
    Top = 530
  end
  object qP_TYPE: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.ID_PTYPE, p.NAME, o.NAME OPERTYPE , DOP_PRICE,PROFIT'
      'from PTYPES p'
      'left join OPER_TYPES o on o.ID_OPER_TYPE = p.ID_OPER_TYPE'
      'where p.STATUS = 1'
      'order by p.NAME')
    Left = 134
    Top = 90
    object qP_TYPEID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"PTYPES"."ID_PTYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qP_TYPENAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qP_TYPEOPERTYPE: TIBStringField
      FieldName = 'OPERTYPE'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qP_TYPEDOP_PRICE: TFloatField
      FieldName = 'DOP_PRICE'
      Origin = '"PTYPES"."DOP_PRICE"'
    end
    object qP_TYPEPROFIT: TFloatField
      FieldName = 'PROFIT'
      Origin = '"PTYPES"."PROFIT"'
    end
  end
  object dsP_TYPE: TDataSource
    DataSet = qP_TYPE
    Left = 30
    Top = 127
  end
  object UpESOT: TIBUpdateSQL
    ModifySQL.Strings = (
      'update est_sum_oper_types'
      'set'
      '    id_ptype = :id_ptype,'
      '    profit = :profit,'
      '    dop_price = :dop_price'
      
        'where (id_estimate = :id_estimate) and (id_oper_type = :id_oper_' +
        'type)')
    Left = 54
    Top = 90
  end
  object dsPDoc: TDataSource
    DataSet = qPDoc
    Left = 978
    Top = 528
  end
  object qPDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsProj
    SQL.Strings = (
      
        'select d.id_project_doc, d.id_project, d.name, d.doc_type, d.num' +
        'ber, d.d_doc,'
      
        ' d.d_in, d.d_out, d.d_prod, d.d_shipp, d.d_fix, d.id_fix, d.stat' +
        'us, d.id_draft,'
      ' d.id_foto, d.id_sdoc, d.d_fill, d.id_fill, d.id_order,'
      ' p.fio fFIX, p1.fio fFill, p2.fio fFoto'
      'from PROJECT_DOCS d'
      'left join personnel p on p.id_p = d.id_fix'
      'left join personnel p1 on p1.id_p = d.id_fill'
      'left join personnel p2 on p2.id_p = d.id_foto'
      'where d.ID_PROJECT = :id_project and d.status = 3'
      'order by d.ID_PROJECT_DOC ')
    Left = 906
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_project'
        ParamType = ptUnknown
      end>
    object qPDocID_PROJECT_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPDocNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qPDocDOC_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DOC_TYPE'
      Origin = '"PROJECT_DOCS"."DOC_TYPE"'
    end
    object qPDocNUMBER: TIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'NUMBER'
      Origin = '"PROJECT_DOCS"."NUMBER"'
      Size = 16
    end
    object qPDocnTP: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkCalculated
      FieldName = 'nTP'
      Calculated = True
    end
    object qPDocSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"PROJECT_DOCS"."STATUS"'
    end
  end
  object qDelivery_types: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from delivery_types d1')
    Left = 48
    Top = 528
    object qDelivery_typesID_DELIVERY_TYPE: TIntegerField
      FieldName = 'ID_DELIVERY_TYPE'
      Origin = '"DELIVERY_TYPES"."ID_DELIVERY_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDelivery_typesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"DELIVERY_TYPES"."NAME"'
      Size = 64
    end
    object qDelivery_typesCALC_DELIVERY: TMemoField
      FieldName = 'CALC_DELIVERY'
      Origin = '"DELIVERY_TYPES"."CALC_DELIVERY"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDelivery_typesDEFAULT_OBJ_TYPE: TIntegerField
      FieldName = 'DEFAULT_OBJ_TYPE'
      Origin = '"DELIVERY_TYPES"."DEFAULT_OBJ_TYPE"'
    end
    object qDelivery_typesDEFAULT_CAR_TYPE: TIntegerField
      FieldName = 'DEFAULT_CAR_TYPE'
      Origin = '"DELIVERY_TYPES"."DEFAULT_CAR_TYPE"'
    end
  end
  object qRegion: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from regions where id_region >= 1000')
    Left = 104
    Top = 528
    object qRegionID_REGION: TIntegerField
      FieldName = 'ID_REGION'
      Origin = '"REGIONS"."ID_REGION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRegionNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REGIONS"."NAME"'
      Size = 64
    end
    object qRegionID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
      Origin = '"REGIONS"."ID_TERMINAL"'
    end
  end
  object dsRegion: TDataSource
    DataSet = qRegion
    Left = 128
    Top = 600
  end
  object dsDelivery_types: TDataSource
    DataSet = qDelivery_types
    Left = 16
    Top = 552
  end
  object qCar_types: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsDelivery_types
    SQL.Strings = (
      'select *'
      'from tdcar_types'
      'where id_tdcar_type = :default_car_type')
    Left = 256
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'default_car_type'
        ParamType = ptUnknown
      end>
    object qCar_typesID_TDCAR_TYPE: TIntegerField
      FieldName = 'ID_TDCAR_TYPE'
      Origin = '"TDCAR_TYPES"."ID_TDCAR_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCar_typesNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TDCAR_TYPES"."NAME"'
      Size = 80
    end
  end
  object qObj_type: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsDelivery_types
    SQL.Strings = (
      'select *'
      'from delivery_obj_types'
      'where obj_type = :default_obj_type')
    Left = 408
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'default_obj_type'
        ParamType = ptUnknown
      end>
    object qObj_typeOBJ_TYPE: TIntegerField
      FieldName = 'OBJ_TYPE'
      Origin = '"DELIVERY_OBJ_TYPES"."OBJ_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qObj_typeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"DELIVERY_OBJ_TYPES"."NAME"'
      Size = 64
    end
  end
  object dsObj_type: TDataSource
    DataSet = qObj_type
    Left = 408
    Top = 592
  end
  object dsCar_types: TDataSource
    DataSet = qCar_types
    Left = 176
    Top = 600
  end
  object DEL_OBJ_T: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select b.* from delivery_obj_types b'
      
        'join  delivery_types d on d.id_delivery_type = b.id_delivery_typ' +
        'e'
      'where d.id_delivery_type=:id_delivery_type')
    Left = 740
    Top = 625
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_delivery_type'
        ParamType = ptUnknown
      end>
    object DEL_OBJ_TOBJ_TYPE: TIntegerField
      FieldName = 'OBJ_TYPE'
      Origin = '"DELIVERY_OBJ_TYPES"."OBJ_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DEL_OBJ_TNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"DELIVERY_OBJ_TYPES"."NAME"'
      Size = 64
    end
    object DEL_OBJ_TID_DELIVERY_TYPE: TIntegerField
      FieldName = 'ID_DELIVERY_TYPE'
      Origin = '"DELIVERY_OBJ_TYPES"."ID_DELIVERY_TYPE"'
    end
  end
  object dsUragent: TDataSource
    DataSet = qUragent
    Left = 398
    Top = 346
  end
  object qUragent: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select'
      'ii.name || '#39'['#1102#1088'.'#1083#1080#1094#1086' <'#39' || u.name  || '#39'>]'#39' nm,'
      'u.*,i.*'
      'from uragents u join items_uragents i on u.inn = i.inn'
      'join items ii on ii.id_item = i.id_item'
      
        'join params_value  v on i.id_item = v.id_item and v.id_param = 3' +
        '4'
      'and v.smlval =215 ')
    Left = 398
    Top = 298
    object qUragentNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"URAGENTS"."NAME"'
      Size = 128
    end
    object qUragentID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS_URAGENTS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qOrdLinks: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_link, path, id_order'
      ' from project_ords_links '
      ' where id_order = :id_order')
    Left = 628
    Top = 681
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        ParamType = ptUnknown
      end>
    object qOrdLinksID_LINK: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470
      FieldName = 'ID_LINK'
      Origin = '"PROJECT_ORDS_LINKS"."ID_LINK"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdLinksPATH: TIBStringField
      DisplayLabel = #1057#1089#1099#1083#1082#1072
      FieldName = 'PATH'
      Origin = '"PROJECT_ORDS_LINKS"."PATH"'
      Size = 256
    end
    object qOrdLinksID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS_LINKS"."ID_ORDER"'
    end
  end
  object dsOrdLinks: TDataSource
    DataSet = qOrdLinks
    Left = 628
    Top = 737
  end
end
