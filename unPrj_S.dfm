object fmPrj_S: TfmPrj_S
  Left = 187
  Top = 249
  Width = 734
  Height = 570
  Caption = 'fmPrj_S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = ppm1
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 292
    Width = 726
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 726
    Height = 292
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = pc1Change
    object ts1: TTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      object p1: TPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 266
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object tlb1: TToolBar
          Left = 2
          Top = 2
          Width = 714
          Height = 24
          AutoSize = True
          Caption = 'tlb1'
          Flat = True
          Images = fmMain.il1
          TabOrder = 0
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 11
            Style = tbsSeparator
          end
          object tb1: TToolButton
            Left = 8
            Top = 0
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Caption = 'tb1'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = tb1Click
          end
          object tb2: TToolButton
            Left = 31
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
            Caption = 'tb2'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = tb2Click
          end
          object ToolButton1: TToolButton
            Left = 54
            Top = 0
            Width = 35
            Caption = 'ToolButton1'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tb3: TToolButton
            Left = 89
            Top = 0
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1079#1076#1077#1083#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Caption = 'tb3'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = tb3Click
          end
          object tb4: TToolButton
            Left = 112
            Top = 0
            Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100
            Caption = 'tb4'
            ImageIndex = 13
            ParentShowHint = False
            ShowHint = True
            OnClick = tb4Click
          end
          object tb10: TToolButton
            Left = 135
            Top = 0
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Caption = 'tb10'
            ImageIndex = 26
            ParentShowHint = False
            ShowHint = True
            OnClick = tb10Click
          end
          object ToolButton6: TToolButton
            Left = 158
            Top = 0
            Width = 34
            Caption = 'ToolButton6'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object tb5: TToolButton
            Left = 192
            Top = 0
            Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
            Caption = 'tb5'
            ImageIndex = 7
            ParentShowHint = False
            ShowHint = True
            OnClick = tb5Click
          end
          object tb6: TToolButton
            Left = 215
            Top = 0
            Hint = #1047#1072#1087#1080#1089#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
            Caption = 'tb6'
            ImageIndex = 15
            ParentShowHint = False
            ShowHint = True
            OnClick = tb6Click
          end
          object tb7: TToolButton
            Left = 238
            Top = 0
            Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
            Caption = 'tb7'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = tb7Click
          end
          object tb9: TToolButton
            Left = 261
            Top = 0
            Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1074' '#1092#1072#1081#1083#1077
            Caption = 'tb9'
            ImageIndex = 19
            ParentShowHint = False
            ShowHint = True
            OnClick = tb9Click
          end
          object ToolButton2: TToolButton
            Left = 284
            Top = 0
            Width = 27
            Caption = 'ToolButton2'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tb8: TToolButton
            Left = 311
            Top = 0
            Hint = #1055#1086#1076#1087#1080#1089#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
            Caption = 'tb8'
            ImageIndex = 8
            ParentShowHint = False
            ShowHint = True
            OnClick = tb8Click
          end
          object ToolButton15: TToolButton
            Left = 334
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object tb12: TToolButton
            Left = 342
            Top = 0
            Hint = #1057#1085#1103#1090#1100' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1089' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Caption = 'tb12'
            ImageIndex = 35
            ParentShowHint = False
            ShowHint = True
            OnClick = tb12Click
          end
          object ToolButton9: TToolButton
            Left = 365
            Top = 0
            Width = 14
            Caption = 'ToolButton9'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object tb11: TToolButton
            Left = 379
            Top = 0
            Hint = #1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
            Caption = 'tb11'
            ImageIndex = 11
            ParentShowHint = False
            ShowHint = True
            OnClick = tb11Click
          end
          object ToolButton7: TToolButton
            Left = 402
            Top = 0
            Width = 26
            Caption = 'ToolButton7'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object tb14: TToolButton
            Left = 428
            Top = 0
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091' '#1085#1072' '#1088#1072#1089#1095#1077#1090' '#1089#1084#1077#1090#1099' '#1085#1072' '#1086#1089#1085#1086#1074#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Caption = 'tb14'
            ImageIndex = 22
            ParentShowHint = False
            ShowHint = True
            OnClick = tb14Click
          end
          object ToolButton17: TToolButton
            Left = 451
            Top = 0
            Width = 25
            Caption = 'ToolButton17'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object Label32: TLabel
            Left = 476
            Top = 0
            Width = 55
            Height = 22
            Caption = '    '#1053#1072#1081#1090#1080':   '
          end
          object ed3: TEdit
            Left = 531
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
            OnKeyUp = ed3KeyUp
          end
        end
        object dbn1: TDBNavigator
          Left = 2
          Top = 246
          Width = 714
          Height = 18
          DataSource = dmIS.dsDOC
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 1
        end
        object dbg1: TDBGridEh
          Left = 2
          Top = 26
          Width = 714
          Height = 220
          Align = alClient
          DataSource = dmIS.dsDOC
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbg1DblClick
          OnDrawColumnCell = dbg1DrawColumnCell
          OnSortMarkingChanged = dbg1SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Graph'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = 'G'
            end
            item
              EditButtons = <>
              FieldName = 'fILL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Alignment = taCenter
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 252
            end
            item
              EditButtons = <>
              FieldName = 'nTYPE'
              Footers = <>
              Title.Alignment = taCenter
              Width = 155
            end
            item
              EditButtons = <>
              FieldName = 'D_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'nSTATUS'
              Footers = <>
              Title.Alignment = taCenter
              Width = 118
            end
            item
              EditButtons = <>
              FieldName = 'NUMBER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROJECT_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end>
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072
      ImageIndex = 1
      object p4: TPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 266
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 79
          Height = 13
          Caption = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
        end
        object DBText1: TDBText
          Left = 96
          Top = 16
          Width = 105
          Height = 17
          DataField = 'ID_PROJECT_DOC'
          DataSource = dmIS.dsDOC
        end
        object Label4: TLabel
          Left = 240
          Top = 16
          Width = 79
          Height = 13
          Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
        end
        object Label5: TLabel
          Left = 8
          Top = 96
          Width = 39
          Height = 13
          Caption = #1048#1089#1093'. '#8470':'
        end
        object Label6: TLabel
          Left = 224
          Top = 96
          Width = 13
          Height = 13
          Caption = #1054#1090
        end
        object Label7: TLabel
          Left = 8
          Top = 128
          Width = 141
          Height = 13
          Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1079#1072#1087#1088#1086#1089#1072':'
        end
        object Label8: TLabel
          Left = 176
          Top = 128
          Width = 125
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1074#1077#1090#1072' '#1087#1086' '#1079#1072#1087#1088#1086#1089#1091':'
        end
        object Label9: TLabel
          Left = 336
          Top = 128
          Width = 141
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072':'
        end
        object Label10: TLabel
          Left = 504
          Top = 128
          Width = 77
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080':'
        end
        object Label21: TLabel
          Left = 8
          Top = 40
          Width = 79
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        end
        object lcb1: TDBLookupComboBox
          Left = 324
          Top = 8
          Width = 221
          Height = 21
          KeyField = 'ID_PROJ_DOC_TYPE'
          ListField = 'NAME'
          ListSource = dmIS.dsDOC_TYPE
          TabOrder = 0
        end
        object ed2: TEdit
          Left = 56
          Top = 88
          Width = 129
          Height = 21
          TabOrder = 1
        end
        object dtp1: TDBDateTimeEditEh
          Left = 248
          Top = 88
          Width = 137
          Height = 21
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 2
          Visible = True
        end
        object dtp2: TDBDateTimeEditEh
          Left = 8
          Top = 144
          Width = 137
          Height = 21
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 3
          Visible = True
        end
        object dtp3: TDBDateTimeEditEh
          Left = 172
          Top = 144
          Width = 137
          Height = 21
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 4
          Visible = True
        end
        object dtp4: TDBDateTimeEditEh
          Left = 336
          Top = 144
          Width = 137
          Height = 21
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 5
          Visible = True
        end
        object dtp5: TDBDateTimeEditEh
          Left = 500
          Top = 144
          Width = 137
          Height = 21
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 6
          Visible = True
        end
        object p22: TPanel
          Left = 2
          Top = 227
          Width = 714
          Height = 37
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 7
          DesignSize = (
            714
            37)
          object bb21: TBitBtn
            Left = 177
            Top = 6
            Width = 99
            Height = 25
            Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
            Anchors = [akLeft, akBottom]
            Caption = #1047#1072#1087#1080#1089#1072#1090#1100
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bb21Click
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
          object bb22: TBitBtn
            Left = 431
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
            OnClick = bb22Click
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
        object ed1: TEdit
          Left = 32
          Top = 56
          Width = 585
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
      object p3: TPanel
        Left = 16
        Top = 0
        Width = 918
        Height = 273
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          918
          273)
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 79
          Height = 13
          Caption = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
        end
        object dbt21: TDBText
          Left = 96
          Top = 8
          Width = 81
          Height = 17
          DataField = 'ID_PROJECT_DOC'
          DataSource = dmIS.dsDOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 192
          Top = 8
          Width = 79
          Height = 13
          Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
        end
        object Label14: TLabel
          Left = 480
          Top = 8
          Width = 39
          Height = 13
          Caption = #1048#1089#1093'. '#8470':'
        end
        object Label15: TLabel
          Left = 624
          Top = 8
          Width = 13
          Height = 13
          Caption = #1054#1090
        end
        object Label16: TLabel
          Left = 8
          Top = 56
          Width = 141
          Height = 13
          Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1079#1072#1087#1088#1086#1089#1072':'
        end
        object Label17: TLabel
          Left = 344
          Top = 56
          Width = 125
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1074#1077#1090#1072' '#1087#1086' '#1079#1072#1087#1088#1086#1089#1091':'
        end
        object Label18: TLabel
          Left = 8
          Top = 80
          Width = 141
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072':'
        end
        object Label19: TLabel
          Left = 344
          Top = 80
          Width = 77
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080':'
        end
        object DBText2: TDBText
          Left = 280
          Top = 8
          Width = 193
          Height = 17
          DataField = 'nTYPE'
          DataSource = dmIS.dsDOC
        end
        object Label11: TLabel
          Left = 8
          Top = 32
          Width = 79
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        end
        object DBText3: TDBText
          Left = 96
          Top = 32
          Width = 746
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = dmIS.dsDOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 528
          Top = 8
          Width = 89
          Height = 17
          DataField = 'NUMBER'
          DataSource = dmIS.dsDOC
        end
        object DBText5: TDBText
          Left = 648
          Top = 8
          Width = 129
          Height = 17
          DataField = 'D_DOC'
          DataSource = dmIS.dsDOC
        end
        object DBText6: TDBText
          Left = 160
          Top = 56
          Width = 137
          Height = 17
          DataField = 'D_IN'
          DataSource = dmIS.dsDOC
        end
        object DBText7: TDBText
          Left = 480
          Top = 56
          Width = 121
          Height = 17
          DataField = 'D_OUT'
          DataSource = dmIS.dsDOC
        end
        object DBText8: TDBText
          Left = 160
          Top = 80
          Width = 137
          Height = 17
          DataField = 'D_PROD'
          DataSource = dmIS.dsDOC
        end
        object DBText9: TDBText
          Left = 432
          Top = 80
          Width = 129
          Height = 17
          DataField = 'D_SHIPP'
          DataSource = dmIS.dsDOC
        end
        object DBText10: TDBText
          Left = 112
          Top = 104
          Width = 113
          Height = 17
          DataField = 'D_FIX'
          DataSource = dmIS.dsDOC
        end
        object DBText11: TDBText
          Left = 8
          Top = 120
          Width = 297
          Height = 17
          DataField = 'fFIX'
          DataSource = dmIS.dsDOC
        end
        object DBText12: TDBText
          Left = 416
          Top = 104
          Width = 113
          Height = 17
          DataField = 'D_FILL'
          DataSource = dmIS.dsDOC
        end
        object DBText13: TDBText
          Left = 344
          Top = 120
          Width = 313
          Height = 17
          DataField = 'fFILL'
          DataSource = dmIS.dsDOC
        end
        object Label12: TLabel
          Left = 8
          Top = 104
          Width = 75
          Height = 13
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1083':'
        end
        object Label20: TLabel
          Left = 344
          Top = 104
          Width = 52
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1076#1080#1083':'
        end
        object Label39: TLabel
          Left = 8
          Top = 136
          Width = 37
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089':'
        end
        object DBText28: TDBText
          Left = 48
          Top = 136
          Width = 25
          Height = 17
          DataField = 'STATUS'
          DataSource = dmIS.dsDOC
        end
        object DBText29: TDBText
          Left = 80
          Top = 136
          Width = 129
          Height = 17
          DataField = 'nSTATUS'
          DataSource = dmIS.dsDOC
        end
        object Panel4: TPanel
          Left = 2
          Top = 167
          Width = 914
          Height = 104
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelInner = bvLowered
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 724
            Top = 25
            Height = 77
            Align = alRight
          end
          object Panel5: TPanel
            Left = 2
            Top = 2
            Width = 910
            Height = 23
            Align = alTop
            BevelInner = bvRaised
            TabOrder = 0
            DesignSize = (
              910
              23)
            object Label37: TLabel
              Left = 8
              Top = 4
              Width = 47
              Height = 13
              Caption = #1055#1086#1076#1087#1080#1089#1080':'
            end
            object Label38: TLabel
              Left = 792
              Top = 4
              Width = 73
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
            end
          end
          object dbg5: TDBGrid
            Left = 2
            Top = 25
            Width = 722
            Height = 77
            Align = alClient
            DataSource = dmIS.dsFILL_D
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbg5DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'D_FILL'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Title.Alignment = taCenter
                Width = 203
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FIO'
                Title.Alignment = taCenter
                Width = 216
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nFILL'
                Title.Alignment = taCenter
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Alignment = taCenter
                Width = 33
                Visible = True
              end>
          end
          object DBMemo1: TDBMemo
            Left = 727
            Top = 25
            Width = 185
            Height = 77
            Align = alRight
            DataField = 'COMMENT'
            DataSource = dmIS.dsFILL_D
            ScrollBars = ssVertical
            TabOrder = 2
          end
        end
      end
    end
  end
  object pc2: TPageControl
    Left = 0
    Top = 295
    Width = 726
    Height = 241
    ActivePage = tss1
    Align = alBottom
    TabOrder = 1
    OnChange = pc2Change
    object tss1: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      object p2: TPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 213
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object p6: TPanel
          Left = 2
          Top = 2
          Width = 714
          Height = 209
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object Panel2: TPanel
            Left = 2
            Top = 175
            Width = 710
            Height = 32
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 0
            DesignSize = (
              710
              32)
            object bb3: TBitBtn
              Left = 176
              Top = 4
              Width = 110
              Height = 25
              Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
              TabOrder = 0
              OnClick = bb3Click
            end
            object bb4: TBitBtn
              Left = 452
              Top = 4
              Width = 110
              Height = 25
              Anchors = [akTop, akRight]
              Caption = #1054#1090#1084#1077#1085#1072
              TabOrder = 1
              OnClick = bb4Click
            end
          end
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 710
            Height = 23
            Align = alTop
            BevelInner = bvRaised
            TabOrder = 1
            DesignSize = (
              710
              23)
            object Label36: TLabel
              Left = 8
              Top = 4
              Width = 145
              Height = 13
              Caption = #1053#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
            end
            object DBText26: TDBText
              Left = 160
              Top = 4
              Width = 81
              Height = 17
              DataField = 'ID_PROJECT_DOC'
              DataSource = dmIS.dsDOC
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText27: TDBText
              Left = 248
              Top = 4
              Width = 445
              Height = 17
              Anchors = [akLeft, akTop, akRight]
              DataField = 'NAME'
              DataSource = dmIS.dsDOC
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object dbg4: TDBGridEh
            Left = 2
            Top = 25
            Width = 710
            Height = 150
            Align = alClient
            DataSource = dmIS.dsCliOrd
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnSortMarkingChanged = dbg4SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ID_ORDER'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 239
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'N_ORDER'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'nDOC'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 231
              end
              item
                EditButtons = <>
                FieldName = 'D_OPEN'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'fOPEN'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 255
              end
              item
                EditButtons = <>
                FieldName = 'ID_DOC'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'ID_C'
                Footers = <>
                Title.Alignment = taCenter
                Title.TitleButton = True
              end>
          end
        end
        object p0: TPanel
          Left = 2
          Top = 2
          Width = 714
          Height = 209
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object dbn2: TDBNavigator
            Left = 2
            Top = 189
            Width = 710
            Height = 18
            DataSource = dmIS.dsP_ORDS
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
            Align = alBottom
            TabOrder = 0
          end
          object tlb2: TToolBar
            Left = 2
            Top = 2
            Width = 710
            Height = 24
            AutoSize = True
            Caption = 'tlb1'
            Flat = True
            Images = fmMain.il1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object tbs1: TToolButton
              Left = 0
              Top = 0
              Hint = #1053#1086#1074#1099#1081' '#1079#1072#1082#1072#1079
              Caption = 'tbs1'
              ImageIndex = 1
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs1Click
            end
            object tbs7: TToolButton
              Left = 23
              Top = 0
              Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
              Caption = 'tbs7'
              ImageIndex = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs7Click
            end
            object ToolButton5: TToolButton
              Left = 46
              Top = 0
              Width = 25
              Caption = 'ToolButton5'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object tbs8: TToolButton
              Left = 71
              Top = 0
              Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1079#1072#1082#1072#1079
              Caption = 'tbs8'
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs8Click
            end
            object tbRezerv: TToolButton
              Left = 94
              Top = 0
              Hint = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1079#1072#1082#1072#1079' '#1074' '#1089#1090#1072#1090#1091#1089' '#1055#1088#1086#1075#1085#1086#1079
              Caption = 'tbRezerv'
              ImageIndex = 41
              ParentShowHint = False
              ShowHint = True
              OnClick = tbRezervClick
            end
            object ToolButton12: TToolButton
              Left = 117
              Top = 0
              Width = 25
              Caption = 'ToolButton12'
              ImageIndex = 33
              Style = tbsSeparator
            end
            object tbs9: TToolButton
              Left = 142
              Top = 0
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Caption = 'tbs9'
              ImageIndex = 33
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs9Click
            end
            object ToolButton11: TToolButton
              Left = 165
              Top = 0
              Width = 40
              Caption = 'ToolButton11'
              ImageIndex = 33
              Style = tbsSeparator
            end
            object tbs2: TToolButton
              Left = 205
              Top = 0
              Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1082#1072#1079
              Caption = 'tbs2'
              ImageIndex = 3
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs2Click
            end
            object ToolButton8: TToolButton
              Left = 228
              Top = 0
              Width = 46
              Caption = 'ToolButton8'
              ImageIndex = 12
              Style = tbsSeparator
            end
            object tbs5: TToolButton
              Left = 274
              Top = 0
              Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
              Caption = 'tbs5'
              ImageIndex = 16
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs5Click
            end
            object ToolButton10: TToolButton
              Left = 297
              Top = 0
              Width = 11
              Caption = 'ToolButton10'
              ImageIndex = 17
              Style = tbsSeparator
            end
            object tbs6: TToolButton
              Left = 308
              Top = 0
              Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1091#1102' '#1089#1084#1077#1090#1091' '#1079#1072#1082#1072#1079#1072
              Caption = 'tbs6'
              ImageIndex = 32
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs6Click
            end
            object ToolButton4: TToolButton
              Left = 331
              Top = 0
              Width = 49
              Caption = 'ToolButton4'
              ImageIndex = 33
              Style = tbsSeparator
            end
            object tbs10: TToolButton
              Left = 380
              Top = 0
              Hint = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
              Caption = 'tbs10'
              ImageIndex = 9
              ParentShowHint = False
              ShowHint = True
              OnClick = tbs10Click
            end
            object ToolButton14: TToolButton
              Left = 403
              Top = 0
              Width = 29
              Caption = 'ToolButton14'
              ImageIndex = 11
              Style = tbsSeparator
            end
            object ToolButton13: TToolButton
              Left = 432
              Top = 0
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
              Caption = 'ToolButton13'
              ImageIndex = 26
              ParentShowHint = False
              ShowHint = True
              OnClick = ToolButton13Click
            end
          end
          object dbg2: TDBGridEh
            Left = 2
            Top = 26
            Width = 710
            Height = 163
            Align = alClient
            DataSource = dmIS.dsP_ORDS
            Flat = True
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbg2DblClick
            OnGetCellParams = dbg2GetCellParams
            OnSortMarkingChanged = dbg2SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FILL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Footers = <>
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                EndEllipsis = True
                FieldName = 'NAME_UR'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'D_OPEN'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 98
              end
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 286
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'NDOC'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 258
              end
              item
                EditButtons = <>
                FieldName = 'N_ORDER'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'NSTAT'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'ID_ORDER'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_VERSION'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_ESTIMATE'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ID_C'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'DOG_NUMBER_'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'DOG_DATE_IN'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'DOG_NUMBER'
                Footers = <>
                Title.Alignment = taCenter
                Title.EndEllipsis = True
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'ORDKIND'
                Footers = <>
              end>
          end
        end
      end
    end
    object tss2: TTabSheet
      Caption = #1047#1072#1103#1074#1082#1080' '#1085#1072' '#1088#1072#1089#1095#1077#1090' '#1089#1084#1077#1090
      ImageIndex = 1
      object dbn3: TDBNavigator
        Left = 0
        Top = 195
        Width = 718
        Height = 18
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 0
      end
      object dbg3: TDBGridEh
        Left = 0
        Top = 28
        Width = 718
        Height = 167
        Align = alClient
        DataSource = dmIS.dsEstReq
        DrawMemoText = True
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        OnDblClick = dbg3DblClick
        OnGetCellParams = dbg3GetCellParams
        OnSortMarkingChanged = dbg3SortMarkingChanged
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Graph'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = 'Fill'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ID_REQUEST'
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
            Width = 203
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
              '40')
            PickList.Strings = (
              ''
              #1091#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
              #1087#1088#1080#1085#1103#1090#1072' '#1089#1084#1077#1090#1095#1080#1082#1086#1084
              #1074#1099#1087#1086#1083#1085#1077#1085#1072)
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
            FieldName = 'D_GET'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
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
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 249
          end
          item
            EditButtons = <>
            FieldName = 'REM'
            Footers = <>
          end>
      end
      object clb2: TCoolBar
        Left = 0
        Top = 0
        Width = 718
        Height = 28
        AutoSize = True
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 24
            Width = 714
          end>
        object ToolBar1: TToolBar
          Left = 9
          Top = 0
          Width = 701
          Height = 24
          AutoSize = True
          Caption = 'tlb1'
          Flat = True
          Images = fmMain.il1
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          object tbz2: TToolButton
            Left = 0
            Top = 0
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
            Caption = 'tbz2'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz2Click
          end
          object ToolButton18: TToolButton
            Left = 23
            Top = 0
            Width = 42
            Caption = 'ToolButton4'
            ImageIndex = 31
            Style = tbsSeparator
          end
          object tbz3: TToolButton
            Left = 65
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
            Caption = 'tbz3'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz3Click
          end
          object ToolButton20: TToolButton
            Left = 88
            Top = 0
            Width = 40
            Caption = 'ToolButton1'
            ImageIndex = 30
            Style = tbsSeparator
          end
          object tbz4: TToolButton
            Left = 128
            Top = 0
            Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
            Caption = 'tb5'
            ImageIndex = 31
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz4Click
          end
          object ToolButton22: TToolButton
            Left = 151
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tbz5: TToolButton
            Left = 159
            Top = 0
            Hint = #1057#1085#1103#1090#1100' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
            Caption = 'tb11'
            ImageIndex = 35
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz5Click
          end
          object ToolButton24: TToolButton
            Left = 182
            Top = 0
            Width = 30
            Caption = 'ToolButton7'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tbz6: TToolButton
            Left = 212
            Top = 0
            Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1084#1077#1090#1099
            Caption = 'tb10'
            ImageIndex = 32
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz6Click
          end
          object ToolButton26: TToolButton
            Left = 235
            Top = 0
            Width = 40
            Caption = 'ToolButton2'
            ImageIndex = 27
            Style = tbsSeparator
          end
          object tbz7: TToolButton
            Left = 275
            Top = 0
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Caption = 'tb4'
            ImageIndex = 26
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz7Click
          end
          object ToolButton28: TToolButton
            Left = 298
            Top = 0
            Width = 52
            Caption = 'ToolButton5'
            ImageIndex = 27
            Style = tbsSeparator
          end
          object tbz8: TToolButton
            Left = 350
            Top = 0
            Hint = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1079#1072#1103#1074#1082#1077
            Caption = 'tb6'
            ImageIndex = 7
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz8Click
          end
          object tbz9: TToolButton
            Left = 373
            Top = 0
            Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1079#1072#1103#1074#1082#1077
            Caption = 'tb7'
            ImageIndex = 15
            ParentShowHint = False
            ShowHint = True
            OnClick = tbz9Click
          end
        end
      end
    end
    object tsRDoc: TTabSheet
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1079#1072#1103#1074#1082#1080
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 718
        Height = 184
        Align = alClient
        DataSource = dsRDoc
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
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
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
          end
          item
            EditButtons = <>
            FieldName = 'ID_PROJECT'
            Footers = <>
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 184
        Width = 718
        Height = 29
        Align = alBottom
        TabOrder = 1
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
    end
  end
  object od1: TOpenDialog
    Left = 316
    Top = 180
  end
  object frxReport1: TfrxReport
    Version = '3.23.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39093.516612685200000000
    ReportOptions.LastChange = 39842.603067870370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure frxReport1OnStartReport(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'If <frxDBDataset1."PARENT"> = '#39'1'#39' Then Memo1.font.style := fsBol' +
        'd'
      ' else Memo1.font.style := nil;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 564
    Top = 84
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 268.346630000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 317.480520000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '192177, '#1056#1038#1056#176#1056#1029#1056#1108#1057#8218'-'#1056#1119#1056#181#1057#8218#1056#181#1057#1026#1056#177#1057#1107#1057#1026#1056#1110', 3-'#1056#8470' '#1056#160#1057#8249#1056#177#1056#176#1057#8224#1056#1108#1056#1105#1056#8470' '#1056#1111#1057 +
              #1026#1056#1109#1056#181#1056#183#1056#1169', '#1056#1169'.3, '#1056#187#1056#1105#1057#8218'. '#1056#8226
            '              '#1057#8218#1056#181#1056#187'. (812) 326-69-99, '#1057#8222#1056#176#1056#1108#1057#1027': (812) 326-69-95'
            
              '105082, '#1056#1114#1056#1109#1057#1027#1056#1108#1056#1030#1056#176', '#1056#1119#1056#181#1057#1026#1056#181#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1109#1056#1030#1057#1027#1056#1108#1056#1105#1056#8470' '#1056#1111#1056#181#1057#1026#1056#181#1057#1107#1056 +
              #187#1056#1109#1056#1108', '#1056#1169'.13, '#1057#1027#1057#8218#1057#1026'.26,'
            '              4 '#1056#1111#1056#1109#1056#1169#1057#1033#1056#181#1056#183#1056#1169', '#1056#1108#1056#1109#1056#1112#1056#1029'. 19,  '
            
              '             '#1057#8218#1056#181#1056#187'. (495) 228-19-14, 772-78-02, '#1057#8222#1056#176#1056#1108#1057#1027': (495)' +
              ' 228-19-32')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 22.677180000000000000
          Top = 102.047310000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#152#1057#1027#1057#8230'. '#1074#8222#8211'_______'#1056#1109#1057#8218'___ .________200__ '#1056#1110'.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 60.472480000000000000
          Top = 132.283550000000000000
          Width = 529.134200000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[NameDoc]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 110.362204724409000000
          Top = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 188.976500000000000000
          Top = 177.637910000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Cli]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 188.976500000000000000
          Top = 200.315090000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Brand]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 200.315090000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8216#1057#1026#1057#1036#1056#1029#1056#1169' ('#1057#8218#1056#1109#1057#1026#1056#1110#1056#1109#1056#1030#1056#176#1057#1039' '#1056#1112#1056#176#1057#1026#1056#1108#1056#176'):')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 483.779840000000000000
          Top = 22.677180000000000000
          Width = 166.299320000000000000
          Height = 79.370130000000000000
          Picture.Data = {
            0A544A504547496D616765CC0D0000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC0001108004800C503012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
            63C8B1A96721547526ABDF5EC3616ED34CD803A0EE4FA0AE5EEAFE7BE7DF2361
            7F850741FE26B4A749CDD8CAA5550D3A9BF3EBB6911C29690FFB238AAFFF0009
            1C7DADDBFEFA159D6368B22F99202467E519E0FD6B44C08531E5AFA74ADDD3A7
            1D1992A9364B1F882D98E1D1E3F73C8FD2B460B98AE5774522B8EF83D2B96BDB
            5584078F3B49C11E86A979D35B1F3ADDCA483D3BFB529508B57893F5871D6477
            94D271593A26B90EA88F19655B98BEFA67A8F51ED5AC7A5734938BB33A613538
            F344862BDB79A578A39959D18AB283C83E9538E95E5D6F7E61F176AD62E4AB35
            CB4911CF7E323FAD75DA6F89627916DAFDD22949DA921380FF00E06BA2A61651
            4A48E4A58EA72D24ECEF63A4A29323145731DC2D21A29B23AC6BB98E05017B0A
            CC1467381515ADDC17624304AB2796E637DA73861D45636BDADC7A568F737F2B
            612142557FBCDD87E78AC6F860D2CDA2DEDCCD9DD35C97393DF033FAD6CA8BF6
            4EA767639E55D2AD1A4BA9DCD55B9BB5872A08DDEFD052DE5CADADB348C7A703
            EB5E69E33F17CD6118B5B4245CCC33EBB17D4FBFA55E1B0F2AD2B21622BAA4AE
            CD4F1278E2D34A2D0A31B8BCE7E45E8BF5F4AE5347835DF1DEA4C924EF6FA746
            C0CED1E5571FDD1EAD59BE14F08EA1E2ABD32CCCF058A37EFA6EACC7BAAFBFBF
            6AF71D3B4DB5D2ACA2B3B3896282318551FCCFA9F7AEBC4FB3C32F671D65F91C
            F87E6C47BEF625B4B68ACEDA2B78176C5128445F402A7A4F4A5AF2CF41681451
            45030A28A2803CF7C41ABFDB7C4325A23FEEAD46DDBEAFDCFF004A96339406B8
            B9EED86B9773331DDF686DC7F1AE8A1D4EDE2B59279240218C6E63E95EABA4E9
            F2D91E0D3C429D4726751677118B5CC922AF963E62C40007AD40FE2BD0918A1D
            56D770EBF3D7906B9AFDC6AB39F32464B5C9F2E1078C7A9F535901F2B911311E
            A2B6596CA7EF337963634DDAE7BB5C6A36D776C3EC97114EAC465A360DC0FE55
            9D39DB11E3B74AF1FB6BB7B79C496D2BC3203C153835D5D8F8C249A3F26FD46F
            FE19546013EE2955C2CE92E52255D4E2F94D16D49F4AD760BD85BE68B1BC762B
            D08FCABD760956781254395750C3E86BC16F2632163904B67BF6AF66F0AB17F0
            A698CC724DBAF35CF8EA4A308CBAEC19657E6A92A7D11E7DF106CE4D3FC4F1DF
            C59513A875603A3AF07FA1ACABDD423BFB385C604A09DEA3F84D7A978AF431AF
            68CF6EBC5C21DF0B7FB43B7E3D2BC4D8496D3BC6EA52446DACA7B11D41AE9C1C
            E35A9A4F7479D98D2961ABB97D996BF33D27C3FE24BAB6B18966DD3C6060073F
            30FC7BD75916BB64E9B8B3A1F42BFE15E57A5EAD6E6DD2095BCA75181BBA1FC6
            BAB88ABC4A5486180323E95CF570C9C9B6AC76E031936B979AE75635882590C7
            08662067246054324C5F2F238000EB9E00AE69B58D3B490F2DE5D2C581C26EC9
            3F80EF5C4F89BC7371ACA3D9D9AB5BD9370C49F9E51EFE83DAB38E1ECED13BA7
            5FB8CF1E78A175A9D6D2D093636EC7047FCB47F5FA7615EADE0AD31F4AF0A594
            12822664F324CF62DCE2BCB3C03E1A7D6F598EE2643F61B47DD26470EDD97FA9
            F6AF731D3A55E36A4234E3421D356185A4DD475A5E88C4F113911409D8924FE1
            5E553D91D5BC5CD03B88D649C21918E02A8EC2BD47C5ABB749372012206DCD8E
            B8E95E73633E9F7F7D20B8DB1C8E7E5C9E18FB9F5AAC149AA6DC4E1CCAD3AD18
            4F6DFD4F59B2B5B5D36CA2B6B7091411AE14671F8D3E4D42CE2387B88C1F4DD5
            C6436780123476FCCD5D874D909F98AA0F6E4D72BA1ADE6CF4E35A564944E81B
            5AB15FF96A4FD14D09ACD9C87085CFD109ACC8B4D89304A96C7F7AA9DFF88744
            D1C15BABF895C7FCB38FE66FC854FB383768EACAF693DDE87551DC4520F91B27
            D31CD499CD790EABF1324933068967B643C2CB3727EA17FC6BD5B4F69DB4EB63
            743170624F37FDFC0CFEB4AB61E74927256B954ABC2A36A2F62CD1451581B9F3
            DDE395D4AE8AFF00CF67FE66AA5FDEB187ECEAC42FDE719E0F7029D7B7710D52
            F232769599C7B1F98D669DD2C84632CE70001DFD2BEA6CA3CBCC7C86169CFDA4
            DB1D67079B99A5E7FBA0D680207715DFF847E1C6CB48EE75D0C5CE196D41E17F
            DEF7F6AEF62D0B4B86311A69D6A1076F28572E23338467CB1D4DA39457AFEFCE
            563E79BB852488B0037AF39154D183C79CE48E0FBD7D27FD87A4FF00D032CFFE
            FCAFF853E3D274E85B31585AA1F558547F4AC259AA94395C7F13BF0D95D4A2F5
            99E15E1CD0B54D76E16182D9CC191BAE1C10883EBDFE82BDE2C2D52C6C20B58C
            7EEE1408BF415615428C05007A0A5AF3EBE2255AC9EC8F430F84A741B9477626
            2B8CF18783175766BEB00A97CA3E743C2CC3EBD8FBD76945674EA4A9CB9A3B9A
            57A10AF070A8AE8F9DEE6DE6B4B8782E6268E553828E3045645C4F2C57127953
            4B1E7A85623F957D1FA968DA7EAF17977D691CC074247CC3E87AD72973F09BC3
            F3C85D64BC8F3D409723F515ECD0CD297FCBD4783FD8D5694EF4DDD1E36C490A
            C49271D49AE83C33E0FD47C493A944686C81FDE5CB0E31FECFA9AF53D3FE1D78
            76C24593EC8F72EBD0DC36E03F0E95D4C51AC4A11115114602A8C015CB89C7A9
            C9FB347AB4708D25CECA7A469569A3E9D1D959C4238A31F8B1EE49EE6AFD2D15
            E6B6DBBB3B924959114D0A4F13C52286471B594F715E2DE2BF0C4DE1CBA69705
            B4F76FDDCBD76FFB2D5EDB515C5BC5730BC3344B244E30C8C3208AE8C3622542
            5E471637050C546CF46BA9F3DDB78B759B2C47617B2A46BC7CDF32FE47A55C3E
            3CF1195C0D407FBC2251FD2BBCD5FE1469B74ED269970F64C79F288DF1E7DBB8
            AE6E4F84DAE23612EAC9D7D9987F4AF4A78AC3D5F8525EA7252C255A31E54DB3
            95BBF10EB17E0FDA753B8753D577ED5FC87154618249D86C042B1FBD8C96FA57
            A2587C23BD3286D435181501C84854B7F3C5775A3F83F49D14ABC16E649C7FCB
            697E66FC3B0FC29BC5E1E8AF73DE64CF0F8AACF957BABBB391F047809A1963D4
            F52844617E68A16FBC4F666FF0AF4C5E28039EF8A757935EBCEB4B9A47A786C3
            430F0E58851451589D07CCDABC462F11EA284E4ADC483EBF31AF40F869E13170
            C35DBD8F288716A8DDCF77FC3A0AE767F0FCFABFC46BFD32305564BC6676FEEC
            79C96FC8FEB5EE96B6B0D9DA456D02048A25088A3B015EB63F1178C6317D0F2F
            0543572977261D2968C515E49EA0514514005145140051451400514514005145
            14005266835E6FA9788FC490D86BBAAC1A85AA41A76A3F654B56B40DB977A0C9
            7DDFED1ED401E919F6A335C1EB7E37BBD2EFB5EB0B6863BABFB7086CA003185F
            2B7BBC87B28FFEB5676A7E2DD7F7D90B49A48CBE8C9A83A5B69FF69692463CAE
            3236AD007A6EEA335E7D1F8FA68AF74A171E44CB7BA42DCA436A3734F725C284
            43E9D7E983E94B6FE2CD6AEFC1B6B74E20B7D5AEB55FECF0AA9BD233E6953C67
            E6C283CFB5007A064519AE1AD35AD7DF4AF126EBCB37BCD1EECA24D2C5E5472A
            2A2B90DC9DB9048CE78ACBD2FE225F6BBAC7F67DAC42D05CDE46904B7509511C
            5E52BB2FFB521C90A3D39A00F4DCD2D79B6AFF00106FF4FF00F8492D6DA08AEB
            50B2B8616D10181140B1AB34921F404903D4E07AD7A0D8CAD3D85BCAE4177895
            891D32403401628A28A00A51699656FA8DC5F456E8B7570009651D580E957074
            A28A6F5D58592D85A28A29005145140051451400514514005145140051451400
            8D58B37863499EC2FACA4B76305F4FF68B851230DEF90739CF1CA8E28A280266
            D034C7BAD42E8DA2FDA3518C43732E4EE74030173D863D2A85DF82346BC781D9
            6EE2305BADAA7D9EEA48F310E8A7079A28A00B56BE17D1ACAFACEF2DAC238E6B
            2B7FB35B119C451E72401EA7D7AD65DC78074A9EF6D98B5CA5ADB99658E08AE1
            D089A46DCD26E0739E48F6CD14500241E00D2E2B9BF567B996C2F846F3DACB71
            238795093B98939208DA08E876D695C784F47BB4BC596D091773A5C4A448C089
            1000ACA41F948000E31451400E6F0BE8ED1EAA86CC67553FE98E18EE9780BD7A
            8E076AD782258214890611142A8F400605145004945145007FFFD9}
        end
        object Memo10: TfrxMemoView
          Left = 578.268090000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Num]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 45.354360000000000000
          Top = 222.992270000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1105#1056#183#1056#1169#1056#181#1056#187#1056#1105#1057#1039':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 188.976500000000000000
          Top = 222.992270000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Product]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000001000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1115#1056#1115#1056#1115' '#1056#1119#1056#1105#1056#8217#1056#1105#1056#8221#1056#182#1056#1105'-'#1056#1114#1056#1119#1056#1113)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 245.669401180000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[frxDBDataset1."NAME"]')
        end
        object Memo2: TfrxMemoView
          Left = 257.008040000000000000
          Top = 3.779530000000022000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ROW_VALUE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."ROW_VALUE"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 136.063080000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 34.015770000000000000
          Top = 41.574830000000080000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '            '#1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
        end
        object Memo15: TfrxMemoView
          Left = 18.897650000000000000
          Top = 105.826840000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 597.165740000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 438.425480000000000000
          Top = 41.574830000000080000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '               '#1056#8212#1056#176#1056#1108#1056#176#1056#183#1057#8225#1056#1105#1056#1108)
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter2: TfrxPageFooter
        Height = 124.724490000000000000
        Top = 922.205320000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Left = 30.236240000000000000
          Top = 30.236240000000290000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '            '#1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
        end
        object Memo19: TfrxMemoView
          Left = 15.118120000000000000
          Top = 94.488250000000450000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 593.386210000000000000
          Top = 98.267780000000360000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000290000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '               '#1056#8212#1056#176#1056#1108#1056#176#1056#183#1057#8225#1056#1105#1056#1108)
        end
      end
      object Overlay1: TfrxOverlay
        Height = 842.835190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture2: TfrxPictureView
          Left = 15.118120000000000000
          Top = 22.677180000000000000
          Width = 668.976810000000000000
          Height = 718.110700000000000000
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = dmIS.qDOC_S
    Left = 524
    Top = 68
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 420
    Top = 68
  end
  object frxReport2: TfrxReport
    Version = '3.23.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39093.516612685200000000
    ReportOptions.LastChange = 39094.427714594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure frxReport1OnStartReport(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'If <frxDBDataset1."PARENT"> = '#39'1'#39' Then Memo1.font.style := fsBol' +
        'd'
      ' else Memo1.font.style := nil;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 468
    Top = 68
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 268.346630000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo6: TfrxMemoView
          Left = 110.362204724409000000
          Top = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 188.976500000000000000
          Top = 177.637910000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Cli]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 188.976500000000000000
          Top = 200.315090000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Brand]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 200.315090000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8216#1057#1026#1057#1036#1056#1029#1056#1169' ('#1057#8218#1056#1109#1057#1026#1056#1110#1056#1109#1056#1030#1056#176#1057#1039' '#1056#1112#1056#176#1057#1026#1056#1108#1056#176'):')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 521.575140000000100000
          Top = 22.677180000000000000
          Width = 166.299320000000000000
          Height = 79.370130000000000000
          Picture.Data = {
            0A544A504547496D616765CC0D0000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC0001108004800C503012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
            63C8B1A96721547526ABDF5EC3616ED34CD803A0EE4FA0AE5EEAFE7BE7DF2361
            7F850741FE26B4A749CDD8CAA5550D3A9BF3EBB6911C29690FFB238AAFFF0009
            1C7DADDBFEFA159D6368B22F99202467E519E0FD6B44C08531E5AFA74ADDD3A7
            1D1992A9364B1F882D98E1D1E3F73C8FD2B460B98AE5774522B8EF83D2B96BDB
            5584078F3B49C11E86A979D35B1F3ADDCA483D3BFB529508B57893F5871D6477
            94D271593A26B90EA88F19655B98BEFA67A8F51ED5AC7A5734938BB33A613538
            F344862BDB79A578A39959D18AB283C83E9538E95E5D6F7E61F176AD62E4AB35
            CB4911CF7E323FAD75DA6F89627916DAFDD22949DA921380FF00E06BA2A61651
            4A48E4A58EA72D24ECEF63A4A29323145731DC2D21A29B23AC6BB98E05017B0A
            CC1467381515ADDC17624304AB2796E637DA73861D45636BDADC7A568F737F2B
            612142557FBCDD87E78AC6F860D2CDA2DEDCCD9DD35C97393DF033FAD6CA8BF6
            4EA767639E55D2AD1A4BA9DCD55B9BB5872A08DDEFD052DE5CADADB348C7A703
            EB5E69E33F17CD6118B5B4245CCC33EBB17D4FBFA55E1B0F2AD2B21622BAA4AE
            CD4F1278E2D34A2D0A31B8BCE7E45E8BF5F4AE5347835DF1DEA4C924EF6FA746
            C0CED1E5571FDD1EAD59BE14F08EA1E2ABD32CCCF058A37EFA6EACC7BAAFBFBF
            6AF71D3B4DB5D2ACA2B3B3896282318551FCCFA9F7AEBC4FB3C32F671D65F91C
            F87E6C47BEF625B4B68ACEDA2B78176C5128445F402A7A4F4A5AF2CF41681451
            45030A28A2803CF7C41ABFDB7C4325A23FEEAD46DDBEAFDCFF004A96339406B8
            B9EED86B9773331DDF686DC7F1AE8A1D4EDE2B59279240218C6E63E95EABA4E9
            F2D91E0D3C429D4726751677118B5CC922AF963E62C40007AD40FE2BD0918A1D
            56D770EBF3D7906B9AFDC6AB39F32464B5C9F2E1078C7A9F535901F2B911311E
            A2B6596CA7EF337963634DDAE7BB5C6A36D776C3EC97114EAC465A360DC0FE55
            9D39DB11E3B74AF1FB6BB7B79C496D2BC3203C153835D5D8F8C249A3F26FD46F
            FE19546013EE2955C2CE92E52255D4E2F94D16D49F4AD760BD85BE68B1BC762B
            D08FCABD760956781254395750C3E86BC16F2632163904B67BF6AF66F0AB17F0
            A698CC724DBAF35CF8EA4A308CBAEC19657E6A92A7D11E7DF106CE4D3FC4F1DF
            C59513A875603A3AF07FA1ACABDD423BFB385C604A09DEA3F84D7A978AF431AF
            68CF6EBC5C21DF0B7FB43B7E3D2BC4D8496D3BC6EA52446DACA7B11D41AE9C1C
            E35A9A4F7479D98D2961ABB97D996BF33D27C3FE24BAB6B18966DD3C6060073F
            30FC7BD75916BB64E9B8B3A1F42BFE15E57A5EAD6E6DD2095BCA75181BBA1FC6
            BAB88ABC4A5486180323E95CF570C9C9B6AC76E031936B979AE75635882590C7
            08662067246054324C5F2F238000EB9E00AE69B58D3B490F2DE5D2C581C26EC9
            3F80EF5C4F89BC7371ACA3D9D9AB5BD9370C49F9E51EFE83DAB38E1ECED13BA7
            5FB8CF1E78A175A9D6D2D093636EC7047FCB47F5FA7615EADE0AD31F4AF0A594
            12822664F324CF62DCE2BCB3C03E1A7D6F598EE2643F61B47DD26470EDD97FA9
            F6AF731D3A55E36A4234E3421D356185A4DD475A5E88C4F113911409D8924FE1
            5E553D91D5BC5CD03B88D649C21918E02A8EC2BD47C5ABB749372012206DCD8E
            B8E95E73633E9F7F7D20B8DB1C8E7E5C9E18FB9F5AAC149AA6DC4E1CCAD3AD18
            4F6DFD4F59B2B5B5D36CA2B6B7091411AE14671F8D3E4D42CE2387B88C1F4DD5
            C6436780123476FCCD5D874D909F98AA0F6E4D72BA1ADE6CF4E35A564944E81B
            5AB15FF96A4FD14D09ACD9C87085CFD109ACC8B4D89304A96C7F7AA9DFF88744
            D1C15BABF895C7FCB38FE66FC854FB383768EACAF693DDE87551DC4520F91B27
            D31CD499CD790EABF1324933068967B643C2CB3727EA17FC6BD5B4F69DB4EB63
            743170624F37FDFC0CFEB4AB61E74927256B954ABC2A36A2F62CD1451581B9F3
            DDE395D4AE8AFF00CF67FE66AA5FDEB187ECEAC42FDE719E0F7029D7B7710D52
            F232769599C7B1F98D669DD2C84632CE70001DFD2BEA6CA3CBCC7C86169CFDA4
            DB1D67079B99A5E7FBA0D680207715DFF847E1C6CB48EE75D0C5CE196D41E17F
            DEF7F6AEF62D0B4B86311A69D6A1076F28572E23338467CB1D4DA39457AFEFCE
            563E79BB852488B0037AF39154D183C79CE48E0FBD7D27FD87A4FF00D032CFFE
            FCAFF853E3D274E85B31585AA1F558547F4AC259AA94395C7F13BF0D95D4A2F5
            99E15E1CD0B54D76E16182D9CC191BAE1C10883EBDFE82BDE2C2D52C6C20B58C
            7EEE1408BF415615428C05007A0A5AF3EBE2255AC9EC8F430F84A741B9477626
            2B8CF18783175766BEB00A97CA3E743C2CC3EBD8FBD76945674EA4A9CB9A3B9A
            57A10AF070A8AE8F9DEE6DE6B4B8782E6268E553828E3045645C4F2C57127953
            4B1E7A85623F957D1FA968DA7EAF17977D691CC074247CC3E87AD72973F09BC3
            F3C85D64BC8F3D409723F515ECD0CD297FCBD4783FD8D5694EF4DDD1E36C490A
            C49271D49AE83C33E0FD47C493A944686C81FDE5CB0E31FECFA9AF53D3FE1D78
            76C24593EC8F72EBD0DC36E03F0E95D4C51AC4A11115114602A8C015CB89C7A9
            C9FB347AB4708D25CECA7A469569A3E9D1D959C4238A31F8B1EE49EE6AFD2D15
            E6B6DBBB3B924959114D0A4F13C52286471B594F715E2DE2BF0C4DE1CBA69705
            B4F76FDDCBD76FFB2D5EDB515C5BC5730BC3344B244E30C8C3208AE8C3622542
            5E471637050C546CF46BA9F3DDB78B759B2C47617B2A46BC7CDF32FE47A55C3E
            3CF1195C0D407FBC2251FD2BBCD5FE1469B74ED269970F64C79F288DF1E7DBB8
            AE6E4F84DAE23612EAC9D7D9987F4AF4A78AC3D5F8525EA7252C255A31E54DB3
            95BBF10EB17E0FDA753B8753D577ED5FC87154618249D86C042B1FBD8C96FA57
            A2587C23BD3286D435181501C84854B7F3C5775A3F83F49D14ABC16E649C7FCB
            697E66FC3B0FC29BC5E1E8AF73DE64CF0F8AACF957BABBB391F047809A1963D4
            F52844617E68A16FBC4F666FF0AF4C5E28039EF8A757935EBCEB4B9A47A786C3
            430F0E58851451589D07CCDABC462F11EA284E4ADC483EBF31AF40F869E13170
            C35DBD8F288716A8DDCF77FC3A0AE767F0FCFABFC46BFD32305564BC6676FEEC
            79C96FC8FEB5EE96B6B0D9DA456D02048A25088A3B015EB63F1178C6317D0F2F
            0543572977261D2968C515E49EA0514514005145140051451400514514005145
            14005266835E6FA9788FC490D86BBAAC1A85AA41A76A3F654B56B40DB977A0C9
            7DDFED1ED401E919F6A335C1EB7E37BBD2EFB5EB0B6863BABFB7086CA003185F
            2B7BBC87B28FFEB5676A7E2DD7F7D90B49A48CBE8C9A83A5B69FF69692463CAE
            3236AD007A6EEA335E7D1F8FA68AF74A171E44CB7BA42DCA436A3734F725C284
            43E9D7E983E94B6FE2CD6AEFC1B6B74E20B7D5AEB55FECF0AA9BD233E6953C67
            E6C283CFB5007A064519AE1AD35AD7DF4AF126EBCB37BCD1EECA24D2C5E5472A
            2A2B90DC9DB9048CE78ACBD2FE225F6BBAC7F67DAC42D05CDE46904B7509511C
            5E52BB2FFB521C90A3D39A00F4DCD2D79B6AFF00106FF4FF00F8492D6DA08AEB
            50B2B8616D10181140B1AB34921F404903D4E07AD7A0D8CAD3D85BCAE4177895
            891D32403401628A28A00A51699656FA8DC5F456E8B7570009651D580E957074
            A28A6F5D58592D85A28A29005145140051451400514514005145140051451400
            8D58B37863499EC2FACA4B76305F4FF68B851230DEF90739CF1CA8E28A280266
            D034C7BAD42E8DA2FDA3518C43732E4EE74030173D863D2A85DF82346BC781D9
            6EE2305BADAA7D9EEA48F310E8A7079A28A00B56BE17D1ACAFACEF2DAC238E6B
            2B7FB35B119C451E72401EA7D7AD65DC78074A9EF6D98B5CA5ADB99658E08AE1
            D089A46DCD26E0739E48F6CD14500241E00D2E2B9BF567B996C2F846F3DACB71
            238795093B98939208DA08E876D695C784F47BB4BC596D091773A5C4A448C089
            1000ACA41F948000E31451400E6F0BE8ED1EAA86CC67553FE98E18EE9780BD7A
            8E076AD782258214890611142A8F400605145004945145007FFFD9}
        end
        object Memo10: TfrxMemoView
          Left = 578.268090000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Num]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 49.133890000000000000
          Top = 222.992270000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1111#1057#1026#1056#1109#1056#181#1056#1108#1057#8218#1056#176':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 188.976500000000000000
          Top = 222.992270000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Product]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 83.149660000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8216#1057#1026#1056#1105#1057#8222' '#1074#8222#8211':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 181.417440000000000000
          Top = 83.149660000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Brief]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 52.913420000000000000
          Top = 109.606370000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1114#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026' PVG:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 181.417440000000000000
          Top = 109.606370000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Manager]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 245.669401180000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            '[frxDBDataset1."NAME"]')
        end
        object Memo2: TfrxMemoView
          Left = 257.008040000000000000
          Top = 3.779530000000022000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'ROW_VALUE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."ROW_VALUE"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 136.063080000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 34.015770000000000000
          Top = 41.574830000000080000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '            '#1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
        end
        object Memo15: TfrxMemoView
          Left = 18.897650000000000000
          Top = 105.826840000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 597.165740000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 438.425480000000000000
          Top = 41.574830000000080000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '               '#1056#8212#1056#176#1056#1108#1056#176#1056#183#1057#8225#1056#1105#1056#1108)
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 831.496062992126000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture2: TfrxPictureView
          Left = 18.897650000000000000
          Width = 668.976810000000000000
          Height = 767.244590000000000000
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 124.724490000000000000
        Top = 910.866730000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Left = 30.236240000000000000
          Top = 30.236240000000060000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '            '#1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
        end
        object Memo19: TfrxMemoView
          Left = 15.118120000000000000
          Top = 94.488250000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 593.386210000000000000
          Top = 98.267780000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 434.645950000000000000
          Top = 30.236240000000060000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Memo.UTF8 = (
            '________________________'
            '               '#1056#8212#1056#176#1056#1108#1056#176#1056#183#1057#8225#1056#1105#1056#1108)
        end
      end
    end
  end
  object ppm1: TPopupMenu
    Images = fmMain.il1
    OnPopup = ppm1Popup
    Left = 412
    Top = 180
    object N1: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1074' '#1073#1091#1092#1077#1088
      ImageIndex = 2
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1080#1079' '#1073#1091#1092#1077#1088#1072' '#1074' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 9
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1091#1092#1077#1088
      ImageIndex = 3
      OnClick = N3Click
    end
  end
  object dsRDoc: TDataSource
    DataSet = qRDoc
    Left = 428
    Top = 359
  end
  object od2: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 236
    Top = 367
  end
  object qIN: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 508
    Top = 196
  end
  object qRDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qRDocBeforeOpen
    DataSource = dmIS.dsEstReq
    SQL.Strings = (
      'select cast (0 as integer) id_req_doc,'
      'rr.id_request, cast (d.d_fix as date) d_edit,'
      'd.name, pp.fio, rr.id_doc, null d_reject, null id_reject,'
      'd.id_project'
      'from project_docs d'
      'join estimate_requests rr on rr.id_doc = d.id_draft'
      'left join personnel pp on pp.id_p = d.id_fix'
      'where rr.id_request =:id_request'
      ' union'
      'select r.id_req_doc,'
      ' r.id_req, r.d_edit,'
      'r.name, p.fio, r.id_doc, r.d_reject, r.id_reject, rr.id_project'
      'from request_docs r'
      'left join personnel p on p.id_p = r.id_edit'
      'left join estimate_requests rr on rr.id_request = r.id_req'
      ' where r.id_req = :id_request')
    Left = 340
    Top = 351
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
    object qRDocID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_DOCS"."ID_PROJECT"'
    end
  end
end
