object fmEstCalc: TfmEstCalc
  Left = 369
  Top = 84
  Width = 880
  Height = 675
  Caption = #1056#1072#1089#1095#1077#1090#1085#1072#1103' '#1089#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
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
    Top = 233
    Width = 872
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 233
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object p2: TPanel
      Left = 2
      Top = 2
      Width = 427
      Height = 229
      Align = alLeft
      TabOrder = 0
      DesignSize = (
        427
        229)
      object Label1: TLabel
        Left = 8
        Top = 4
        Width = 35
        Height = 13
        Caption = #1057#1084#1077#1090#1072':'
      end
      object Label2: TLabel
        Left = 120
        Top = 4
        Width = 40
        Height = 13
        Caption = #1042#1077#1088#1089#1080#1103':'
      end
      object DBText1: TDBText
        Left = 48
        Top = 4
        Width = 65
        Height = 17
        DataField = 'ID_ESTIMATE'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 168
        Top = 4
        Width = 65
        Height = 17
        DataField = 'ID_VERSION'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 240
        Top = 4
        Width = 173
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        DataField = 'VNAME'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 47
        Height = 13
        Caption = #1048#1079#1076#1077#1083#1080#1077':'
      end
      object DBText4: TDBText
        Left = 136
        Top = 24
        Width = 285
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        DataField = 'INAME'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 40
        Width = 36
        Height = 13
        Caption = #1058#1080#1088#1072#1078':'
      end
      object DBText5: TDBText
        Left = 56
        Top = 40
        Width = 97
        Height = 17
        DataField = 'AMOUNT'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 64
        Top = 24
        Width = 65
        Height = 17
        DataField = 'ID_ITEM'
        DataSource = dsEst
      end
      object Label6: TLabel
        Left = 8
        Top = 56
        Width = 108
        Height = 13
        Caption = #1055#1083#1072#1085#1086#1074#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' %'
      end
      object Label8: TLabel
        Left = 176
        Top = 56
        Width = 80
        Height = 13
        Caption = #1044#1086#1087'. '#1085#1072#1094#1077#1085#1082#1072' %'
      end
      object DBText7: TDBText
        Left = 120
        Top = 56
        Width = 49
        Height = 17
        DataField = 'PROFIT'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 264
        Top = 55
        Width = 49
        Height = 17
        DataField = 'DOP_PRICE'
        DataSource = dsEst
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 184
        Top = 72
        Width = 58
        Height = 26
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#13#10#1088#1072#1089#1095#1105#1090#1085#1072#1103
      end
      object Label11: TLabel
        Left = 8
        Top = 80
        Width = 79
        Height = 13
        Caption = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      end
      object LbCc: TLabel
        Left = 96
        Top = 80
        Width = 21
        Height = 13
        Caption = #1089'/'#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbRas: TLabel
        Left = 264
        Top = 80
        Width = 22
        Height = 13
        Caption = #1088#1072#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 328
        Top = 80
        Width = 55
        Height = 13
        Caption = #1053#1072#1094#1077#1085#1082#1072' %'
      end
      object LbPr: TLabel
        Left = 392
        Top = 80
        Width = 29
        Height = 13
        Caption = #1087#1088#1086#1094
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 184
        Top = 152
        Width = 56
        Height = 26
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100#13#10#1087#1088#1086#1076#1072#1078#1085#1072#1103
      end
      object LbProd: TLabel
        Left = 264
        Top = 160
        Width = 29
        Height = 13
        Caption = #1087#1088#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 328
        Top = 160
        Width = 55
        Height = 13
        Caption = #1053#1072#1094#1077#1085#1082#1072' %'
      end
      object LbPrProd: TLabel
        Left = 392
        Top = 160
        Width = 29
        Height = 13
        Caption = #1087#1088#1086#1094
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 104
        Width = 79
        Height = 26
        Caption = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057
        WordWrap = True
      end
      object LbCcbezNDS: TLabel
        Left = 96
        Top = 104
        Width = 81
        Height = 13
        Caption = #1089'/'#1089'  '#1073#1077#1079' '#1053#1044#1057
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 184
        Top = 104
        Width = 73
        Height = 39
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#13#10#1088#1072#1089#1095#1105#1090#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
        WordWrap = True
      end
      object LbRasbezNDS: TLabel
        Left = 264
        Top = 112
        Width = 22
        Height = 13
        Caption = #1088#1072#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 184
        Top = 184
        Width = 56
        Height = 39
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100#13#10#1087#1088#1086#1076#1072#1078#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
        WordWrap = True
      end
      object LbProdbezNDS: TLabel
        Left = 264
        Top = 184
        Width = 29
        Height = 13
        Caption = #1087#1088#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 192
        Width = 74
        Height = 29
        Caption = 'Panel4'
        TabOrder = 0
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 72
          Height = 27
          Caption = 'ToolBar1'
          Flat = True
          Images = fmMain.il1
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Hint = #1057#1077#1090#1082#1091' '#1074' Excel'
            Caption = 'ToolButton1'
            ImageIndex = 26
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton1Click
          end
          object ToolButton2: TToolButton
            Left = 23
            Top = 0
            Hint = #1057#1084#1077#1090#1072' '#1074' Excel'
            Caption = 'ToolButton2'
            ImageIndex = 26
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton2Click
          end
          object ToolButton3: TToolButton
            Left = 46
            Top = 0
            Hint = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1088#1090#1072
            Caption = 'ToolButton3'
            ImageIndex = 40
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton3Click
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 429
      Top = 2
      Width = 441
      Height = 229
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 1
      object dbg1: TDBGridEh
        Left = 1
        Top = 1
        Width = 439
        Height = 227
        Align = alClient
        DataSource = dsEstOpTyp
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
            Title.EndEllipsis = True
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'NAME_PTYPE'
            Footers = <>
            Width = 141
          end
          item
            EditButtons = <>
            FieldName = 'PROC'
            Footers = <>
            Title.EndEllipsis = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL'
            Footer.DisplayFormat = '### ### ### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.EndEllipsis = True
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_BEZ_NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'SUM_PROC'
            Footer.DisplayFormat = '### ### ### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.EndEllipsis = True
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SUM_PROC_BEZ_NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'SUMRAS_TMS'
            Footer.DisplayFormat = '### ### ### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SUMRAS_TMS_BEZ_NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'SUMRAS_OPER'
            Footer.DisplayFormat = '### ### ### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SUMRAS_OPER_BEZ_NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_OPER'
            Footer.DisplayFormat = '### ### ### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.EndEllipsis = True
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_OPER_BEZ_NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_MAT'
            Footer.DisplayFormat = '### ### ### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.EndEllipsis = True
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_MAT_BEZ_NDS'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'PROFIT'
            Footers = <>
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'DOP_PRICE'
            Footers = <>
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'ID_OPER_TYPE'
            Footers = <>
            Title.EndEllipsis = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 236
    Width = 872
    Height = 405
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 265
      Top = 2
      Height = 401
    end
    object p3: TPanel
      Left = 2
      Top = 2
      Width = 263
      Height = 401
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object pc2: TPageControl
        Left = 2
        Top = 2
        Width = 259
        Height = 397
        ActivePage = tt1
        Align = alClient
        Constraints.MinHeight = 10
        TabOrder = 0
        TabPosition = tpBottom
        object tt1: TTabSheet
          Caption = #1048#1079#1076#1077#1083#1080#1077
          object dbt2: TDBS_TreeView
            Left = 0
            Top = 23
            Width = 251
            Height = 348
            Align = alClient
            HideSelection = False
            Images = il1
            Indent = 19
            TabOrder = 0
            OnChange = dbt2Change
            Database = dmIS.dbIS
            Transaction = dmIS.mT
            RootId = 0
            FieldId = 'ID_OBJECT'
            FieldParentId = 'PARENT'
            FieldName = 'NAME'
            FieldState = 'OBJ_TYPE'
            FieldSort = 'NAME'
            OnBuildNode = dbt2BuildNode
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 251
            Height = 23
            Align = alTop
            TabOrder = 1
            object lb2: TLabel
              Left = 40
              Top = 4
              Width = 14
              Height = 13
              Caption = 'lb2'
            end
            object Label5: TLabel
              Left = 8
              Top = 4
              Width = 25
              Height = 13
              Caption = #1050#1086#1076': '
            end
          end
        end
        object tt2: TTabSheet
          Caption = #1054#1089#1085#1072#1089#1090#1082#1072
          ImageIndex = 1
          object dbt4: TDBS_TreeView
            Left = 0
            Top = 23
            Width = 251
            Height = 348
            Align = alClient
            HideSelection = False
            Images = il1
            Indent = 19
            TabOrder = 0
            OnChange = dbt4Change
            Database = dmIS.dbIS
            Transaction = dmIS.mT
            RootId = 0
            FieldId = 'ID_OBJECT'
            FieldParentId = 'PARENT'
            FieldName = 'NAME'
            FieldState = 'OBJ_TYPE'
            FieldSort = 'NAME'
            OnBuildNode = dbt4BuildNode
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 251
            Height = 23
            Align = alTop
            TabOrder = 1
            object lb4: TLabel
              Left = 40
              Top = 4
              Width = 14
              Height = 13
              Caption = 'lb2'
            end
            object Label7: TLabel
              Left = 8
              Top = 4
              Width = 25
              Height = 13
              Caption = #1050#1086#1076': '
            end
          end
        end
        object tt3: TTabSheet
          Caption = #1043#1088#1091#1087#1087#1099
          ImageIndex = 2
          object Splitter6: TSplitter
            Left = 0
            Top = 198
            Width = 251
            Height = 3
            Cursor = crVSplit
            Align = alBottom
          end
          object dbt3: TDBS_TreeView
            Left = 0
            Top = 23
            Width = 251
            Height = 175
            Align = alClient
            HideSelection = False
            Images = il1
            Indent = 19
            TabOrder = 0
            OnChange = dbt3Change
            Database = dmIS.dbIS
            Transaction = dmIS.mT
            RootId = 0
            FieldId = 'ID_OBJECT'
            FieldParentId = 'PARENT'
            FieldName = 'NAME'
            FieldState = 'OBJ_TYPE'
            FieldSort = 'NAME'
            OnBuildNode = dbt3BuildNode
          end
          object Panel11: TPanel
            Left = 0
            Top = 201
            Width = 251
            Height = 170
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 1
            object dbg6: TDBGridEh
              Left = 2
              Top = 2
              Width = 247
              Height = 166
              Align = alClient
              DataSource = dsGr
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
              TitleLines = 3
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'OBJ_NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 146
                end
                item
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 43
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_OBJECT'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 58
                end>
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 251
            Height = 23
            Align = alTop
            TabOrder = 2
            object lb3: TLabel
              Left = 40
              Top = 4
              Width = 14
              Height = 13
              Caption = 'lb3'
            end
            object Label9: TLabel
              Left = 8
              Top = 4
              Width = 25
              Height = 13
              Caption = #1050#1086#1076': '
            end
          end
        end
      end
    end
    object pc1: TPageControl
      Left = 268
      Top = 2
      Width = 602
      Height = 401
      ActivePage = ts1
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      object ts1: TTabSheet
        Caption = #1055#1086' '#1101#1083#1077#1084#1077#1085#1090#1072#1084
        object Splitter5: TSplitter
          Left = 0
          Top = 278
          Width = 594
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Splitter9: TSplitter
          Left = 0
          Top = 178
          Width = 594
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object p4: TPanel
          Left = 0
          Top = 181
          Width = 594
          Height = 97
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object Splitter7: TSplitter
            Left = 351
            Top = 2
            Height = 93
          end
          object dbg9: TDBGridEh
            Left = 2
            Top = 2
            Width = 349
            Height = 93
            Align = alLeft
            DataSource = dsEst_Mat
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 2
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 2
            UseMultiTitle = True
            OnGetCellParams = dbg9GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 183
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'AM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_ALL_RAS'
                Footer.DisplayFormat = '### ### ### ##0.00'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_ALL_RAS_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_ALL'
                Footer.DisplayFormat = '### ### ### ##0.00'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_ALL_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS'
                Footer.DisplayFormat = '### ### ### ##0.00'
                Footer.FieldName = 'TOTAL_RAS'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
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
                FieldName = 'TOTAL_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'COMM_AMOUNT'
                Footers = <>
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
                FieldName = 'AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_ITEM'
                Footers = <>
                Title.EndEllipsis = True
              end>
          end
          object dbg12: TDBGridEh
            Left = 354
            Top = 2
            Width = 238
            Height = 93
            Align = alClient
            DataSource = dsOpParam
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
            OnCellClick = dbg12CellClick
            OnGetCellParams = dbg12GetCellParams
            OnMouseDown = dbg12MouseDown
            Columns = <
              item
                EditButtons = <>
                FieldName = 'POSIT'
                Footers = <>
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Width = 88
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'S_AMOUNT'
                Footers = <>
                Width = 58
                OnUpdateData = dbg12Columns3UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'DEFAMOUNT'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_PROD_OPER_PARAM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_OPER_PARAM'
                Footers = <>
              end>
          end
          object dbl2: TDBLookupComboBox
            Left = 400
            Top = 68
            Width = 145
            Height = 21
            KeyField = 'ID_MP_SET'
            ListField = 'NAME'
            ListSource = dsP
            TabOrder = 2
            Visible = False
            OnClick = dbl2Click
            OnExit = dbl2Exit
          end
        end
        object pOper: TPanel
          Left = 0
          Top = 0
          Width = 594
          Height = 178
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          object Splitter3: TSplitter
            Left = 2
            Top = 42
            Width = 590
            Height = 3
            Cursor = crVSplit
            Align = alTop
          end
          object dbn5: TDBNavigator
            Left = 2
            Top = 158
            Width = 590
            Height = 18
            DataSource = dsEst_S
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
          object dbg5: TDBGridEh
            Left = 2
            Top = 45
            Width = 590
            Height = 113
            Align = alClient
            DataSource = dsEst_S
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 3
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 2
            UseMultiTitle = True
            OnGetCellParams = dbg5GetCellParams
            OnSortMarkingChanged = dbg5SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ID_CALC'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 147
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footer.DisplayFormat = '### ### ### ##0.00'
                Footer.FieldName = 'TOTAL'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS'
                Footer.DisplayFormat = '### ### ### ##0.00'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'FULL_AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'WASTE'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'WASTE_DEF'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'sAmount_Time'
                Footer.FieldName = 'AMOUNT_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'sTime_Waste'
                Footer.FieldName = 'TIME_WASTE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'TIME_WASTE'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE0'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE0_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'OTNAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 115
              end
              item
                EditButtons = <>
                FieldName = 'ID_OPERATION'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_PROD_OPER'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_UNION'
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_EST_POS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'OBJ_NAME'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 154
              end
              item
                EditButtons = <>
                FieldName = 'LENG'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'WIDTH'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'HEIGHT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_OBJECT'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end>
          end
          object Panel7: TPanel
            Left = 2
            Top = 2
            Width = 590
            Height = 40
            Align = alTop
            TabOrder = 2
            object m2: TMemo
              Left = 1
              Top = 1
              Width = 559
              Height = 38
              Align = alClient
              Color = 16776176
              ScrollBars = ssVertical
              TabOrder = 0
              OnKeyUp = m2KeyUp
            end
            object Panel8: TPanel
              Left = 560
              Top = 1
              Width = 29
              Height = 38
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                29
                38)
              object sbPaht: TSpeedButton
                Left = 4
                Top = 7
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
              end
            end
          end
        end
        object pParam: TPanel
          Left = 0
          Top = 281
          Width = 594
          Height = 94
          Align = alBottom
          TabOrder = 2
          object Splitter8: TSplitter
            Left = 350
            Top = 1
            Height = 92
          end
          object dbg15: TDBGridEh
            Left = 1
            Top = 1
            Width = 349
            Height = 92
            Align = alLeft
            DataSource = dsOrdParam
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Width = 148
              end
              item
                EditButtons = <>
                FieldName = 'S_AMOUNT'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'STRVALUE'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 353
            Top = 1
            Width = 240
            Height = 92
            Align = alClient
            Caption = #1044#1086#1087'. '#1086#1087#1080#1089#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1086#1074' - '#1044#1077#1090#1072#1083#1080'/'#1054#1087#1077#1088#1072#1094#1080#1080
            TabOrder = 1
            object dbg16: TDBGridEh
              Left = 2
              Top = 15
              Width = 236
              Height = 53
              Align = alClient
              DataSource = dsOrdParam_Det
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnMouseDown = dbg16MouseDown
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'OB_NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 101
                end
                item
                  EditButtons = <>
                  FieldName = 'OP_NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 150
                end
                item
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 118
                end
                item
                  EditButtons = <>
                  FieldName = 'S_AMOUNT'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 136
                end
                item
                  EditButtons = <>
                  FieldName = 'STRVALUE'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                  Width = 141
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_OBJECT'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_PROD_OPER'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.EndEllipsis = True
                end>
            end
            object pnIns: TPanel
              Left = 2
              Top = 68
              Width = 236
              Height = 22
              Align = alBottom
              TabOrder = 1
              object sbIns_Obj: TSpeedButton
                Left = 5
                Top = 2
                Width = 44
                Height = 20
                Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1077#1090#1072#1083#1100
                Caption = #1044'+'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
                  3333333333777F33333333333309033333333333337F7F333333333333090333
                  33333333337F7F33333333333309033333333333337F7F333333333333090333
                  33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
                  3333333777737777F333333099999990333333373F3333373333333309999903
                  333333337F33337F33333333099999033333333373F333733333333330999033
                  3333333337F337F3333333333099903333333333373F37333333333333090333
                  33333333337F7F33333333333309033333333333337373333333333333303333
                  333333333337F333333333333330333333333333333733333333}
                NumGlyphs = 2
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = sbIns_ObjClick
              end
              object sbIns_Oper: TSpeedButton
                Left = 49
                Top = 2
                Width = 41
                Height = 20
                Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
                Caption = #1054'+'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
                  3333333333777F33333333333309033333333333337F7F333333333333090333
                  33333333337F7F33333333333309033333333333337F7F333333333333090333
                  33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
                  3333333777737777F333333099999990333333373F3333373333333309999903
                  333333337F33337F33333333099999033333333373F333733333333330999033
                  3333333337F337F3333333333099903333333333373F37333333333333090333
                  33333333337F7F33333333333309033333333333337373333333333333303333
                  333333333337F333333333333330333333333333333733333333}
                NumGlyphs = 2
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = sbIns_OperClick
              end
              object sbDel: TSpeedButton
                Left = 90
                Top = 2
                Width = 31
                Height = 20
                Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                  333333333337F33333333333333033333333333333373F333333333333090333
                  33333333337F7F33333333333309033333333333337373F33333333330999033
                  3333333337F337F33333333330999033333333333733373F3333333309999903
                  333333337F33337F33333333099999033333333373333373F333333099999990
                  33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                  33333333337F7F33333333333309033333333333337F7F333333333333090333
                  33333333337F7F33333333333309033333333333337F7F333333333333090333
                  33333333337F7F33333333333300033333333333337773333333}
                NumGlyphs = 2
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = sbDelClick
              end
            end
            object dbl3: TDBLookupComboBox
              Left = 60
              Top = 36
              Width = 145
              Height = 21
              KeyField = 'ID_MP_SET'
              ListField = 'NAME'
              ListSource = dsP
              TabOrder = 2
              Visible = False
              OnClick = dbl3Click
              OnExit = dbl3Exit
            end
            object Edit1: TEdit
              Left = 232
              Top = 24
              Width = 121
              Height = 21
              TabOrder = 3
              Text = 'Edit1'
              Visible = False
              OnExit = Edit1Exit
              OnKeyUp = Edit1KeyUp
            end
          end
        end
      end
      object ts2: TTabSheet
        Caption = #1057#1091#1084#1084#1072#1088#1085#1086
        ImageIndex = 1
        object Splitter4: TSplitter
          Left = 0
          Top = 202
          Width = 594
          Height = 2
          Cursor = crVSplit
          Align = alBottom
        end
        object p5: TPanel
          Left = 0
          Top = 204
          Width = 594
          Height = 171
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 151
            Width = 590
            Height = 18
            DataSource = dsEst_Pm
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
          object dbg11: TDBGridEh
            Left = 2
            Top = 2
            Width = 590
            Height = 149
            Align = alClient
            DataSource = dsEst_Pm
            Flat = True
            FooterColor = clSkyBlue
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 2
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 2
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 301
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 57
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Title.EndEllipsis = True
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'PRICE_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footer.FieldName = 'TOTAL'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS'
                Footer.DisplayFormat = '### ### ##0.00'
                Footer.FieldName = 'TOTAL_RAS'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PNAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'FACTOR'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'PAMOUNT'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'PPRICE'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'PPRICE_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_OBJ'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end>
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 594
          Height = 202
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object DBNavigator2: TDBNavigator
            Left = 2
            Top = 182
            Width = 590
            Height = 18
            DataSource = dsEst_Pp
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
          object dbg10: TDBGridEh
            Left = 2
            Top = 2
            Width = 590
            Height = 180
            Align = alClient
            DataSource = dsEst_Pp
            Flat = True
            FooterColor = clSkyBlue
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            FrozenCols = 2
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 2
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 246
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Title.EndEllipsis = True
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT_TIME'
                Footer.FieldName = 'AMOUNT_TIME'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'sTime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                ReadOnly = True
                Title.EndEllipsis = True
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'COST'
                Footers = <>
                Title.EndEllipsis = True
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'COST_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'COST0'
                Footers = <>
                Title.EndEllipsis = True
                Width = 67
              end
              item
                EditButtons = <>
                FieldName = 'COST0_NEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Title.EndEllipsis = True
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'PRICE_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL'
                Footer.FieldName = 'TOTAL'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS'
                Footer.DisplayFormat = '### ### ##0.00'
                Footer.FieldName = 'TOTAL_RAS'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.EndEllipsis = True
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_RAS_BEZ_NDS'
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_OBJ'
                Footers = <>
                Title.EndEllipsis = True
                Width = 72
              end>
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
        ImageIndex = 2
        object dbg14: TDBGridEh
          Left = 0
          Top = 0
          Width = 561
          Height = 394
          Align = alClient
          DataSource = dsDoc
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = dbg14DblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ID_DOC'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 235
            end
            item
              EditButtons = <>
              FieldName = 'D_CONFIRM'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'D_FIX'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_OBJECT'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'OBJ_NAME'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
              Title.EndEllipsis = True
              Title.TitleButton = True
            end>
        end
      end
    end
  end
  object qEst: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select e.*, v.name vname, v.id_item, i.name iname'
      'from estimates e join product_versions v'
      'on v.id_version = e.id_version'
      'join items i on i.id_item = v.id_item'
      'where e.id_estimate = :id_est')
    Left = 264
    Top = 258
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_est'
        ParamType = ptUnknown
      end>
    object qEstID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"ESTIMATES"."ID_ESTIMATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"ESTIMATES"."ID_VERSION"'
    end
    object qEstNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ESTIMATES"."NAME"'
      Size = 128
    end
    object qEstD_CREATE: TDateTimeField
      FieldName = 'D_CREATE'
      Origin = '"ESTIMATES"."D_CREATE"'
    end
    object qEstID_CREATOR: TIntegerField
      FieldName = 'ID_CREATOR'
      Origin = '"ESTIMATES"."ID_CREATOR"'
    end
    object qEstD_CONFIRM: TDateTimeField
      FieldName = 'D_CONFIRM'
      Origin = '"ESTIMATES"."D_CONFIRM"'
    end
    object qEstID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"ESTIMATES"."ID_CONFIRM"'
    end
    object qEstAMOUNT: TIntegerField
      FieldName = 'AMOUNT'
      Origin = '"ESTIMATES"."AMOUNT"'
    end
    object qEstPRICE_DATE: TDateField
      FieldName = 'PRICE_DATE'
      Origin = '"ESTIMATES"."PRICE_DATE"'
    end
    object qEstSUM_NDS: TFloatField
      FieldName = 'SUM_NDS'
      Origin = '"ESTIMATES"."SUM_NDS"'
    end
    object qEstPRICE_DELIVERY: TFloatField
      FieldName = 'PRICE_DELIVERY'
      Origin = '"ESTIMATES"."PRICE_DELIVERY"'
    end
    object qEstPRICE_TOOLS: TFloatField
      FieldName = 'PRICE_TOOLS'
      Origin = '"ESTIMATES"."PRICE_TOOLS"'
    end
    object qEstPROFIT: TFloatField
      FieldName = 'PROFIT'
      Origin = '"ESTIMATES"."PROFIT"'
    end
    object qEstID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"ESTIMATES"."ID_DOC"'
    end
    object qEstDOP_PRICE: TFloatField
      FieldName = 'DOP_PRICE'
      Origin = '"ESTIMATES"."DOP_PRICE"'
    end
    object qEstID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"ESTIMATES"."ID_PTYPE"'
    end
    object qEstTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
    end
    object qEstVNAME: TIBStringField
      FieldName = 'VNAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
    object qEstID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"PRODUCT_VERSIONS"."ID_ITEM"'
    end
    object qEstINAME: TIBStringField
      FieldName = 'INAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsEst: TDataSource
    DataSet = qEst
    Left = 264
    Top = 202
  end
  object qEstOpTyp: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_oper_type, 100*s.factor proc, '
      'e.total_sum * s.factor total,'
      
        '(select nds_val from get_nds_sum(e.total_sum * s.factor,1)) tota' +
        'l_bez_nds,'
      's.profit,s.dop_price,'
      's.total_oper,'
      
        '(select nds_val from get_nds_sum(s.total_oper,1)) total_oper_bez' +
        '_nds,'
      'coalesce(s.total_mat,0) - coalesce(s.comm_amount,0) total_mat,'
      
        '(select nds_val from get_nds_sum((coalesce(s.total_mat,0) - coal' +
        'esce(s.comm_amount,0)),1)) total_mat_bez_nds,'
      's.total_oper * (s.profit/100 + 1) +'
      '(s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1) sum_proc,'
      
        '(select nds_val from get_nds_sum((s.total_oper * (s.profit/100 +' +
        ' 1) +'
      
        '(s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1)),1)) sum_' +
        'proc_bez_nds,'
      's.total_oper * (s.profit/100 + 1) sumras_oper,'
      
        '(select nds_val from get_nds_sum((s.total_oper * (s.profit/100 +' +
        ' 1)),1)) sumras_oper_bez_nds,'
      
        '(s.total_mat - s.comm_amount ) * (s.dop_price/100 + 1) sumras_tm' +
        's,'
      
        '(select nds_val from get_nds_sum(((s.total_mat - s.comm_amount )' +
        ' * (s.dop_price/100 + 1)),1)) sumras_tms_bez_nds,'
      't.name,p.name name_ptype, s.id_ptype'
      'from est_sum_oper_types s '
      'join estimates e on e.id_estimate = s.id_estimate'
      'join oper_types t on s.id_oper_type = t.id_oper_type'
      'join ptypes p on p.id_ptype = s.id_ptype'
      'where s.id_estimate = :id_estimate'
      'order by t.name')
    Left = 308
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qEstOpTypID_OPER_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_OPER_TYPE'
      Origin = '"EST_SUM_OPER_TYPES"."ID_OPER_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstOpTypPROC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PROC'
      ProviderFlags = []
      DisplayFormat = '##0.00'
    end
    object qEstOpTypTOTAL: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'TOTAL'
      Origin = '"EST_SUM_OPER_TYPES"."TOTAL"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypTOTAL_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypNAME: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'NAME'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qEstOpTypPROFIT: TFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' %'
      FieldName = 'PROFIT'
      Origin = '"EST_SUM_OPER_TYPES"."PROFIT"'
    end
    object qEstOpTypDOP_PRICE: TFloatField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072' % '#1085#1072' '#1058#1052#1062
      FieldName = 'DOP_PRICE'
      Origin = '"EST_SUM_OPER_TYPES"."DOP_PRICE"'
    end
    object qEstOpTypTOTAL_OPER: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100'|'#1054#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'TOTAL_OPER'
      Origin = '"EST_SUM_OPER_TYPES"."TOTAL_OPER"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypTOTAL_OPER_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100'|'#1054#1087#1077#1088#1072#1094#1080#1080' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_OPER_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypTOTAL_MAT: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100'|'#1058#1052#1062
      FieldName = 'TOTAL_MAT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypTOTAL_MAT_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100'|'#1058#1052#1062' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_MAT_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypSUM_PROC: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1095#1105#1090#1085#1072#1103
      FieldName = 'SUM_PROC'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypSUM_PROC_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1095#1105#1090#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUM_PROC_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypSUMRAS_OPER: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1095#1105#1090#1085#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1081
      FieldName = 'SUMRAS_OPER'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypSUMRAS_OPER_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1095#1105#1090#1085#1072#1103' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMRAS_OPER_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypSUMRAS_TMS: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1095#1105#1090#1085#1072#1103' '#1058#1052#1062
      FieldName = 'SUMRAS_TMS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypSUMRAS_TMS_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100'|'#1056#1072#1089#1095#1105#1090#1085#1072#1103' '#1058#1052#1062' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMRAS_TMS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstOpTypNAME_PTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NAME_PTYPE'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qEstOpTypID_PTYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'ID_PTYPE'
      Origin = '"EST_SUM_OPER_TYPES"."ID_PTYPE"'
    end
  end
  object dsEstOpTyp: TDataSource
    DataSet = qEstOpTyp
    Left = 316
    Top = 196
  end
  object qEst_S: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qEst_SAfterScroll
    OnCalcFields = qEst_SCalcFields
    DataSource = dsEst
    SQL.Strings = (
      ''
      ''
      ''
      'select s.id_est_pos, s.id_estimate, s.id_prod_oper, s.amount,'
      ' s.full_amount, s.waste, s.amount_time,'
      ' s.price,'
      ' (select nds_val from get_nds_sum(s.price,1)) price_bez_nds,'
      ' s.price0,'
      ' (select nds_val from get_nds_sum(s.price0,1)) price0_bez_nds,'
      ' s.total,'
      ' (select nds_val from get_nds_sum(s.total,1)) total_bez_nds,'
      ' s.total *(1 + e.profit/100) total_ras,'
      
        ' (select nds_val from get_nds_sum((s.total *(1 + e.profit/100)),' +
        '1)) total_ras_bez_nds,'
      ' s.id_unit, o.id_area, o.id_operation, o.name, o.calc_time,'
      
        ' u.name uname, s.id_oper_type, t.name otname, s.id_calc, s.waste' +
        '_def,'
      
        ' s.time_waste, s.is_group, s.id_union, coalesce(b.obj_name,i.nam' +
        'e) obj_name,'
      ' b.leng, b.width, b.height, b.id_object'
      ' from est_pos s'
      ' left join units u on u.id_unit = s.id_unit'
      ' left join oper_types t on t.id_oper_type = s.id_oper_type '
      
        ' join est_sum_oper_types e on e.id_estimate = s.id_estimate and ' +
        ' e.id_oper_type = s.id_oper_type'
      ' join product_oper p on p.id_prod_oper = s.id_prod_oper '
      
        ' join operations o on o.id_area = p.id_area and o.id_operation =' +
        ' p.id_operation'
      ' join product_objects b on b.id_object = p.id_object'
      ' left join items i on i.id_item = b.id_product'
      ' where s.id_estimate = :id_estimate and s.id_item is null'
      '')
    Left = 354
    Top = 266
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qEst_SID_EST_POS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_EST_POS'
      Origin = '"EST_POS"."ID_EST_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_SID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_POS"."ID_ESTIMATE"'
    end
    object qEst_SID_PROD_OPER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1077#1093#1085#1086#1083'. '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_PROD_OPER'
      Origin = '"EST_POS"."ID_PROD_OPER"'
    end
    object qEst_SAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' '#1085#1072' '#1090#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"EST_POS"."AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_SFULL_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' '#1088#1072#1089#1095#1077#1090#1085#1086#1077
      FieldName = 'FULL_AMOUNT'
      Origin = '"EST_POS"."FULL_AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_SWASTE: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1085#1072' '#1087#1088#1080#1083#1072#1076#1082#1091
      FieldName = 'WASTE'
      Origin = '"EST_POS"."WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_SAMOUNT_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' ('#1095#1072#1089')'
      FieldName = 'AMOUNT_TIME'
      Origin = '"EST_POS"."AMOUNT_TIME"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_SPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1095#1072#1089#1072
      FieldName = 'PRICE'
      Origin = '"EST_POS"."PRICE"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_SPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1095#1072#1089#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_SPRICE0: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'PRICE0'
      Origin = '"EST_POS"."PRICE0"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_SPRICE0_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE0_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_STOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089
      FieldName = 'TOTAL'
      Origin = '"EST_POS"."TOTAL"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_STOTAL_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_STOTAL_RAS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103
      FieldName = 'TOTAL_RAS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_STOTAL_RAS_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_RAS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_SID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"EST_POS"."ID_UNIT"'
    end
    object qEst_SID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Origin = '"OPERATIONS"."ID_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_SID_OPERATION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_OPERATION'
      Origin = '"OPERATIONS"."ID_OPERATION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_SNAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qEst_SCALC_TIME: TMemoField
      FieldName = 'CALC_TIME'
      Origin = '"OPERATIONS"."CALC_TIME"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qEst_SUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_SID_OPER_TYPE: TIntegerField
      FieldName = 'ID_OPER_TYPE'
      Origin = '"OPERATIONS"."ID_OPER_TYPE"'
    end
    object qEst_SOTNAME: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'OTNAME'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qEst_SID_CALC: TIntegerField
      DisplayLabel = #8470' '#1087'.'#1087'.'
      FieldName = 'ID_CALC'
      Origin = '"EST_POS"."ID_CALC"'
    end
    object qEst_SWASTE_DEF: TFloatField
      DisplayLabel = #1058#1077#1093'. '#1086#1090#1093#1086#1076
      FieldName = 'WASTE_DEF'
      Origin = '"EST_POS"."WASTE_DEF"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_STIME_WASTE: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1087#1088#1080#1083#1072#1076#1082#1080' ('#1095#1072#1089')'
      FieldName = 'TIME_WASTE'
      Origin = '"EST_POS"."TIME_WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_SIS_GROUP: TIntegerField
      FieldName = 'IS_GROUP'
      Origin = '"EST_POS"."IS_GROUP"'
    end
    object qEst_SID_UNION: TIntegerField
      DisplayLabel = #1050#1086#1084#1087#1083#1077#1082#1090
      FieldName = 'ID_UNION'
      Origin = '"EST_POS"."ID_UNION"'
    end
    object qEst_SOBJ_NAME: TIBStringField
      DisplayLabel = #1069#1083#1077#1084#1077#1085#1090
      FieldName = 'OBJ_NAME'
      ProviderFlags = []
      Size = 128
    end
    object qEst_SLENG: TFloatField
      DisplayLabel = #1044#1083#1080#1085#1072
      FieldName = 'LENG'
      Origin = '"PRODUCT_OBJECTS"."LENG"'
    end
    object qEst_SWIDTH: TFloatField
      DisplayLabel = #1064#1080#1088#1080#1085#1072
      FieldName = 'WIDTH'
      Origin = '"PRODUCT_OBJECTS"."WIDTH"'
    end
    object qEst_SHEIGHT: TFloatField
      DisplayLabel = #1042#1099#1089#1086#1090#1072
      FieldName = 'HEIGHT'
      Origin = '"PRODUCT_OBJECTS"."HEIGHT"'
    end
    object qEst_SID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1101#1083#1077#1084#1077#1085#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_SsAmount_Time: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      FieldKind = fkCalculated
      FieldName = 'sAmount_Time'
      Calculated = True
    end
    object qEst_SsTime_Waste: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1087#1088#1080#1083#1072#1076#1082#1080
      FieldKind = fkCalculated
      FieldName = 'sTime_Waste'
      Calculated = True
    end
  end
  object dsEst_S: TDataSource
    DataSet = qEst_S
    Left = 354
    Top = 210
  end
  object qEst_Mat: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst_S
    SQL.Strings = (
      ''
      
        ' select s.id_est_pos, s.id_prod_oper, s.id_item, i.name, s.amoun' +
        't,'
      's.full_amount, s.waste,'
      's.price,s.price0,'
      's.total,'
      '(select nds_val from get_nds_sum(s.total,1)) total_bez_nds,'
      's.total *(1 + e1.dop_price/100) total_ras,'
      
        '(select nds_val from get_nds_sum((s.total *(1 + e1.dop_price/100' +
        ')),1)) total_ras_bez_nds,'
      's.id_unit, u.name uname, s.is_base,'
      
        's.comm_amount, coalesce(s.full_amount,0) -coalesce(s.comm_amount' +
        ',0) am,'
      
        's.price * (coalesce(s.full_amount,0) -coalesce(s.comm_amount,0))' +
        ' *'
      '(1 + e1.dop_price/100) total_all_ras,'
      
        '(select nds_val from get_nds_sum((s.price * (coalesce(s.full_amo' +
        'unt,0) -coalesce(s.comm_amount,0)) *'
      '(1 + e1.dop_price/100)),1)) total_all_ras_bez_nds,'
      
        's.price * (coalesce(s.full_amount,0) -coalesce(s.comm_amount,0))' +
        ' total_all,'
      
        '(select nds_val from get_nds_sum((s.price * (coalesce(s.full_amo' +
        'unt,0) -coalesce(s.comm_amount,0))),1)) total_all_bez_nds'
      'from est_pos s'
      'join oper_types o1 on o1.id_oper_type = s.id_oper_type'
      'join est_sum_oper_types e1 on e1.id_estimate = s.id_estimate and'
      '   e1.id_oper_type = o1.id_oper_type'
      'join product_oper p on p.id_prod_oper = s.id_prod_oper'
      'join operations o on o.id_area = p.id_area'
      'and o.id_operation = p.id_operation'
      'join items i on i.id_item = s.id_item'
      'left join units u on u.id_unit = s.id_unit'
      
        'where s.id_estimate = :id_estimate and s.id_prod_oper = :id_prod' +
        '_oper'
      'and s.id_item is not null'
      ''
      ' ')
    Left = 402
    Top = 266
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ESTIMATE'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID_PROD_OPER'
        ParamType = ptUnknown
        Size = 4
      end>
    object qEst_MatID_EST_POS: TIntegerField
      FieldName = 'ID_EST_POS'
      Origin = '"EST_POS"."ID_EST_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEst_MatID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"EST_POS"."ID_PROD_OPER"'
    end
    object qEst_MatID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1052#1062
      FieldName = 'ID_ITEM'
      Origin = '"EST_POS"."ID_ITEM"'
    end
    object qEst_MatNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1052#1062
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qEst_MatAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' '#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1102' '#1074#1082#1083'. '#1044#1057
      FieldName = 'AMOUNT'
      Origin = '"EST_POS"."AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_MatFULL_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' '#1088#1072#1089#1095#1077#1090#1085#1086#1077' '#1074#1082#1083'. '#1044#1057
      FieldName = 'FULL_AMOUNT'
      Origin = '"EST_POS"."FULL_AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_MatWASTE: TFloatField
      DisplayLabel = #1041#1088#1072#1082'  '#1074#1082#1083'. '#1044#1057
      FieldName = 'WASTE'
      Origin = '"EST_POS"."WASTE"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_MatPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Origin = '"EST_POS"."PRICE"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatPRICE0: TFloatField
      FieldName = 'PRICE0'
      Origin = '"EST_POS"."PRICE0"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089'  '#1074#1082#1083'. '#1044#1057
      FieldName = 'TOTAL'
      Origin = '"EST_POS"."TOTAL"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089'  '#1074#1082#1083'. '#1044#1057' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL_RAS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103'  '#1074#1082#1083'. '#1044#1057
      FieldName = 'TOTAL_RAS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL_RAS_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103'  '#1074#1082#1083'. '#1044#1057' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_RAS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"EST_POS"."ID_UNIT"'
    end
    object qEst_MatUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_MatIS_BASE: TIntegerField
      FieldName = 'IS_BASE'
      Origin = '"EST_POS"."IS_BASE"'
    end
    object qEst_MatCOMM_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1044#1057
      FieldName = 'COMM_AMOUNT'
      Origin = '"EST_POS"."COMM_AMOUNT"'
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_MatAM: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AM'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_MatTOTAL_ALL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089' '
      FieldName = 'TOTAL_ALL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL_ALL_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_ALL_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL_ALL_RAS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103
      FieldName = 'TOTAL_ALL_RAS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_MatTOTAL_ALL_RAS_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_ALL_RAS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
  end
  object dsEst_Mat: TDataSource
    DataSet = qEst_Mat
    Left = 394
    Top = 210
  end
  object qEst_Pp: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qEst_PpCalcFields
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_estimate, o.id_operation  id_obj,'
      ' o.name, u.name uname,'
      ' o.cost,'
      ' (select nds_val from get_nds_sum(o.cost,1)) cost_bez_nds,'
      ' o.cost0,'
      ' (select nds_val from get_nds_sum(o.cost0,1)) cost0_nez_nds,'
      'sum(coalesce(s.amount,0)) amount,'
      'sum(coalesce(s.total,0)/coalesce(s.amount,0)) price,'
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0)/coales' +
        'ce(s.amount,0))),1)) price_bez_nds,'
      'sum(coalesce(s.total,0)) total,'
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0))),1)) ' +
        'total_bez_nds,'
      'sum(coalesce(s.total,0)  *(1 + e.profit/100)) total_ras,'
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0)*(1 + e' +
        '.profit/100))),1)) total_ras_bez_nds,'
      'sum(coalesce(s.amount_time,0)) amount_time'
      'from est_pos s'
      'left join units u on u.id_unit = s.id_unit'
      'join oper_types o1 on o1.id_oper_type = s.id_oper_type'
      'join est_sum_oper_types e on e.id_estimate = s.id_estimate and'
      '   e.id_oper_type = o1.id_oper_type'
      'join product_oper p on p.id_prod_oper = s.id_prod_oper '
      
        'join operations o on o.id_area = p.id_area and o.id_operation = ' +
        'p.id_operation'
      'where s.id_estimate = :id_estimate  and s.id_item is  null'
      'and coalesce(s.amount,0) > 0'
      'group by 1,2,3,4,5,6,7,8')
    Left = 442
    Top = 258
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ESTIMATE'
        ParamType = ptUnknown
        Size = 4
      end>
    object qEst_PpID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUMPOS"."ID_ESTIMATE"'
    end
    object qEst_PpID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_OBJ'
      Origin = '"EST_SUMPOS"."ID_OBJ"'
    end
    object qEst_PpNAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qEst_PpUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_PpAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' '#1086#1087#1077#1088#1072#1094#1080#1081
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ##0.0'
    end
    object qEst_PpPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1080
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1074#1099#1088#1072#1073#1086#1090#1082#1080' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpTOTAL_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpTOTAL_RAS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103
      FieldName = 'TOTAL_RAS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpTOTAL_RAS_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_RAS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpAMOUNT_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1099#1087'. ('#1095#1072#1089'.)'
      FieldName = 'AMOUNT_TIME'
      ProviderFlags = []
      DisplayFormat = '### ##0.0000'
    end
    object qEst_PpCOST: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072' '#1095#1072#1089#1072
      FieldName = 'COST'
      Origin = '"OPERATIONS"."COST"'
      DisplayFormat = '### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qEst_PpCOST_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1095#1072#1089#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'COST_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpCOST0: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'COST0'
      Origin = '"OPERATIONS"."COST0"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpCOST0_NEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'COST0_NEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PpsTime: TStringField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1099#1087'.'
      FieldKind = fkCalculated
      FieldName = 'sTime'
      Calculated = True
    end
  end
  object dsEst_Pp: TDataSource
    DataSet = qEst_Pp
    Left = 442
    Top = 210
  end
  object qEst_Pm: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst
    SQL.Strings = (
      ''
      ''
      ' select s.id_estimate, s.id_item id_obj, i.name,'
      'u.name uname, uu.name pname,'
      
        'case when f.smlval = 0 then 1 else coalesce(f.smlval,1) end fact' +
        'or,'
      'sum(coalesce(s.amount,0)/case when f.smlval = 0 then 1 else'
      'coalesce(f.smlval,1) end) pamount,'
      ''
      'sum(coalesce(s.total,0)*case when f.smlval = 0 then 1'
      'else coalesce(f.smlval,1) end/coalesce(s.amount,0)) pprice ,'
      ''
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0)*case w' +
        'hen f.smlval = 0 then 1'
      
        'else coalesce(f.smlval,1) end/coalesce(s.amount,0))),1)) pprice_' +
        'bez_nds ,'
      ''
      'sum(coalesce(s.amount,0)) amount,'
      'sum(coalesce(s.total,0)/coalesce(s.amount,0)) price,'
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0)/coales' +
        'ce(s.amount,0))),1)) price_bez_nds,'
      'sum(coalesce(s.total,0)) total,'
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0))),1)) ' +
        'total_bez_nds,'
      'sum(coalesce(s.total,0) *(1 + e.dop_price/100)) total_ras,'
      
        '(select nds_val from get_nds_sum((sum(coalesce(s.total,0) *(1 + ' +
        'e.dop_price/100))),1)) total_ras_bez_nds'
      ''
      'from est_pos s'
      '   join oper_types o on o.id_oper_type = s.id_oper_type'
      
        '   join est_sum_oper_types e on e.id_estimate = s.id_estimate an' +
        'd'
      '   e.id_oper_type = o.id_oper_type'
      ''
      'join items i on i.id_item = s.id_item'
      'left join units u on u.id_unit = s.id_unit'
      'left join params_value v on v.id_item = i.id_item'
      'and v.id_param = 2 and v.data = '#39'01.01.1900'#39
      'left join units uu on uu.id_unit = v.smlval'
      'left join params_value f on f.id_item = i.id_item'
      'and f.id_param = 3 and f.data = '#39'01.01.1900'#39
      'where s.id_estimate = :id_estimate and s.id_item is not null'
      'and coalesce(s.amount,0) > 0'
      'group by 1,2,3,4,5,6'
      '')
    Left = 498
    Top = 258
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ESTIMATE'
        ParamType = ptUnknown
        Size = 4
      end>
    object qEst_PmID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"EST_SUMPOS"."ID_ESTIMATE"'
    end
    object qEst_PmID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1052#1062
      FieldName = 'ID_OBJ'
      Origin = '"EST_SUMPOS"."ID_OBJ"'
    end
    object qEst_PmNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1052#1062
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qEst_PmUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'. ('#1091')'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_PmAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' ('#1091')'
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_PmPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' ('#1091')'
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' ('#1091') '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmTOTAL: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089
      FieldName = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmTOTAL_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089'/'#1089' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmTOTAL_RAS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103
      FieldName = 'TOTAL_RAS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmTOTAL_RAS_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1088#1072#1089#1095#1105#1090#1085#1072#1103' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_RAS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmPNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'. ('#1087')'
      FieldName = 'PNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qEst_PmFACTOR: TFloatField
      DisplayLabel = #1050#1086#1101#1092#1092
      FieldName = 'FACTOR'
      ProviderFlags = []
      DisplayFormat = '#0.0000'
    end
    object qEst_PmPAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' ('#1087')'
      FieldName = 'PAMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.0000'
    end
    object qEst_PmPPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072' ('#1087')'
      FieldName = 'PPRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEst_PmPPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' ('#1087') '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PPRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
  end
  object dsEst_Pm: TDataSource
    DataSet = qEst_Pm
    Left = 490
    Top = 210
  end
  object il1: TImageList
    Left = 72
    Top = 224
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
  object qGr: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select g.id_object, b.obj_name, b.obj_kind, g.amount'
      'from product_object_groups g join product_objects b'
      'on b.id_object = g.id_object'
      'where g.id_object_group = :id_obj'
      '')
    Left = 536
    Top = 250
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_obj'
        ParamType = ptUnknown
      end>
    object qGrID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECT_GROUPS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGrOBJ_NAME: TIBStringField
      DisplayLabel = #1069#1083#1077#1084#1077#1085#1090
      FieldName = 'OBJ_NAME'
      Origin = '"PRODUCT_OBJECTS"."OBJ_NAME"'
      Size = 128
    end
    object qGrOBJ_KIND: TIntegerField
      FieldName = 'OBJ_KIND'
      Origin = '"PRODUCT_OBJECTS"."OBJ_KIND"'
    end
    object qGrAMOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1074' '#1075#1088#1091#1087#1087#1077
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_OBJECT_GROUPS"."AMOUNT"'
    end
  end
  object dsGr: TDataSource
    DataSet = qGr
    Left = 536
    Top = 210
  end
  object qDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qDocBeforeOpen
    SQL.Strings = (
      
        'select p.id_prod_doc, p.name, p.d_confirm, p.id_doc, p.d_fix, o.' +
        'id_object, o.obj_name, a.fio'
      ' from product_docs p'
      'left join product_objects o on o.id_object = p.id_object'
      'left join personnel a on a.id_p = p.id_confirm'
      
        ' where ((p.status <> 3) or (p.status is null) ) and   o.id_versi' +
        'on = :id_version')
    Left = 280
    Top = 325
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_version'
        ParamType = ptUnknown
      end>
    object qDocID_PROD_DOC: TIntegerField
      FieldName = 'ID_PROD_DOC'
      Origin = '"PRODUCT_DOCS"."ID_PROD_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDocNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PRODUCT_DOCS"."NAME"'
      Size = 64
    end
    object qDocD_CONFIRM: TDateTimeField
      DisplayLabel = #1044'/'#1057#1086#1079#1076#1072#1085#1080#1103
      FieldName = 'D_CONFIRM'
      Origin = '"PRODUCT_DOCS"."D_CONFIRM"'
    end
    object qDocID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082'-'#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"PRODUCT_DOCS"."ID_DOC"'
    end
    object qDocD_FIX: TDateTimeField
      DisplayLabel = #1044'/'#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
      FieldName = 'D_FIX'
      Origin = '"PRODUCT_DOCS"."D_FIX"'
    end
    object qDocID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qDocOBJ_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_NAME'
      Origin = '"PRODUCT_OBJECTS"."OBJ_NAME"'
      Size = 128
    end
    object qDocFIO: TIBStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsDoc: TDataSource
    DataSet = qDoc
    Left = 288
    Top = 389
  end
  object dsOpParam: TDataSource
    DataSet = qParam
    Left = 694
    Top = 275
  end
  object qParam: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforePost = qParamBeforePost
    DataSource = dsEst_S
    SQL.Strings = (
      
        'select NAME,  UNAME,  S_AMOUNT,   DEFAMOUNT,  ID_PROD_OPER_PARAM' +
        ' ,  ID_OPER_PARAM ,   '
      'P_TYPE,   ID_MAIN_PARAM, ID_UNIT,    AMOUNT,  MPNAME, posit,'
      'in_prod_oper, in_calc'
      ' from get_oper_params(:id_prod_oper)')
    UpdateObject = upOpParam
    Left = 694
    Top = 227
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prod_oper'
        ParamType = ptUnknown
      end>
    object qParamNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GET_OPER_PARAMS"."NAME"'
      Size = 64
    end
    object qParamUNAME: TIBStringField
      DisplayLabel = #1045#1076' '#1048#1079#1084
      FieldName = 'UNAME'
      Origin = '"GET_OPER_PARAMS"."UNAME"'
      Size = 16
    end
    object qParamS_AMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'S_AMOUNT'
      Origin = '"GET_OPER_PARAMS"."S_AMOUNT"'
      Size = 128
    end
    object qParamDEFAMOUNT: TFloatField
      DisplayLabel = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      FieldName = 'DEFAMOUNT'
      Origin = '"GET_OPER_PARAMS"."DEFAMOUNT"'
      Precision = 4
    end
    object qParamID_PROD_OPER_PARAM: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_PROD_OPER_PARAM'
      Origin = '"GET_OPER_PARAMS"."ID_PROD_OPER_PARAM"'
    end
    object qParamID_OPER_PARAM: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
      FieldName = 'ID_OPER_PARAM'
      Origin = '"GET_OPER_PARAMS"."ID_OPER_PARAM"'
    end
    object qParamP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"GET_OPER_PARAMS"."P_TYPE"'
    end
    object qParamID_MAIN_PARAM: TIntegerField
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"GET_OPER_PARAMS"."ID_MAIN_PARAM"'
    end
    object qParamPOSIT: TIntegerField
      DisplayLabel = #8470
      FieldName = 'POSIT'
      Origin = '"GET_OPER_PARAMS"."POSIT"'
    end
    object qParamIN_PROD_OPER: TIntegerField
      FieldName = 'IN_PROD_OPER'
      Origin = '"GET_OPER_PARAMS"."IN_PROD_OPER"'
    end
    object qParamIN_CALC: TIntegerField
      DisplayLabel = #1042' '#1088#1072#1089#1095#1077#1090#1077
      FieldName = 'IN_CALC'
      Origin = '"GET_OPER_PARAMS"."IN_CALC"'
    end
  end
  object upOpParam: TIBUpdateSQL
    RefreshSQL.Strings = (
      'select * from get_oper_params(:id_prod_oper)')
    ModifySQL.Strings = (
      'update product_oper_params'
      'set'
      '    amount = :s_amount'
      ' where (id_prod_oper_param = :id_prod_oper_param)')
    Left = 758
    Top = 235
  end
  object dsP: TDataSource
    DataSet = qP
    Left = 542
    Top = 427
  end
  object qP: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select id_mp_set,  name, s_value, status'
      'from main_params_sets where id_main_param = :id_main_param')
    Left = 566
    Top = 411
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
  object qINs: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 616
    Top = 245
  end
  object od1: TOpenDialog
    Left = 76
    Top = 412
  end
  object qOrdParam: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
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
      '  from get_ord_params_det(:id_order,:id_ptype,1) o'
      ''
      'order by o.posit')
    Left = 128
    Top = 311
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
      end>
    object qOrdParamNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GET_ORD_PARAMS"."NAME"'
      Size = 64
    end
    object qOrdParamID_ORDER_PARAM: TIntegerField
      FieldName = 'ID_ORDER_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_ORDER_PARAM"'
    end
    object qOrdParamID_PT_PARAM: TIntegerField
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
      Origin = '"GET_ORD_PARAMS"."STRVALUE"'
      Size = 255
    end
    object qOrdParamP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"GET_ORD_PARAMS"."P_TYPE"'
    end
  end
  object dsOrdParam: TDataSource
    DataSet = qOrdParam
    Left = 208
    Top = 311
  end
  object qOrdParam_Det: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
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
      '   o.P_TYPE,'
      '   o.ID_OBJECT ,'
      '   o.ID_PROD_OPER,'
      '   o.OB_NAME ,'
      '   o.OP_NAME'
      ''
      ''
      '  from GET_ORD_PARAMS_DET(:id_order,:id_ptype,2) o'
      ''
      'order by  o.OB_NAME ,   o.OP_NAME, o.posit')
    UpdateObject = upOrdParam_det
    Left = 128
    Top = 375
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
      end>
    object qOrdParam_DetNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GET_ORD_PARAMS"."NAME"'
      Size = 64
    end
    object qOrdParam_DetID_ORDER_PARAM: TIntegerField
      FieldName = 'ID_ORDER_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_ORDER_PARAM"'
    end
    object qOrdParam_DetID_PT_PARAM: TIntegerField
      FieldName = 'ID_PT_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_PT_PARAM"'
    end
    object qOrdParam_DetS_AMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'S_AMOUNT'
      Origin = '"GET_ORD_PARAMS"."S_AMOUNT"'
      Size = 128
    end
    object qOrdParam_DetAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"GET_ORD_PARAMS"."AMOUNT"'
    end
    object qOrdParam_DetID_MP_SET: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"GET_ORD_PARAMS"."ID_MP_SET"'
    end
    object qOrdParam_DetMPNAME: TIBStringField
      FieldName = 'MPNAME'
      Origin = '"GET_ORD_PARAMS"."MPNAME"'
      Size = 128
    end
    object qOrdParam_DetID_MAIN_PARAM: TIntegerField
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"GET_ORD_PARAMS"."ID_MAIN_PARAM"'
    end
    object qOrdParam_DetIN_ORDER: TIntegerField
      FieldName = 'IN_ORDER'
      Origin = '"GET_ORD_PARAMS"."IN_ORDER"'
    end
    object qOrdParam_DetSTRVALUE: TIBStringField
      DisplayLabel = #1057#1090#1088#1086#1082#1072
      FieldName = 'STRVALUE'
      Origin = '"GET_ORD_PARAMS"."STRVALUE"'
      Size = 64
    end
    object qOrdParam_DetP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"GET_ORD_PARAMS"."P_TYPE"'
    end
    object qOrdParam_DetID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"GET_ORD_PARAMS"."ID_OBJECT"'
    end
    object qOrdParam_DetID_PROD_OPER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_PROD_OPER'
      Origin = '"GET_ORD_PARAMS"."ID_PROD_OPER"'
    end
    object qOrdParam_DetOB_NAME: TIBStringField
      DisplayLabel = #1044#1077#1090#1072#1083#1100
      FieldName = 'OB_NAME'
      Origin = '"GET_ORD_PARAMS"."OB_NAME"'
      Size = 128
    end
    object qOrdParam_DetOP_NAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'OP_NAME'
      Origin = '"GET_ORD_PARAMS"."OP_NAME"'
      Size = 64
    end
  end
  object dsOrdParam_Det: TDataSource
    DataSet = qOrdParam_Det
    Left = 216
    Top = 375
  end
  object qIN: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mmT
    Left = 32
    Top = 271
  end
  object upOrdParam_det: TIBUpdateSQL
    RefreshSQL.Strings = (
      'select * from get_oper_params(:id_prod_oper)')
    ModifySQL.Strings = (
      'update project_ord_params'
      'set'
      '    amount = :s_amount'
      ' where (id_order_param = :id_order_param)')
    Left = 190
    Top = 443
  end
end
