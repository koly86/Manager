object fmCH_REQ: TfmCH_REQ
  Left = 309
  Top = 145
  Width = 933
  Height = 637
  Caption = #1047#1072#1103#1074#1082#1080' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1074' '#1079#1072#1082#1072#1079#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 472
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object pc1: TPageControl
      Left = 2
      Top = 2
      Width = 921
      Height = 468
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      OnChange = pc1Change
      object ts1: TTabSheet
        Caption = #1047#1072#1103#1074#1082#1080
        object clb1: TCoolBar
          Left = 0
          Top = 0
          Width = 913
          Height = 54
          AutoSize = True
          Bands = <
            item
              Control = tlb1
              ImageIndex = -1
              MinHeight = 24
              Width = 909
            end
            item
              Control = tlb2
              ImageIndex = -1
              MinHeight = 24
              Width = 909
            end>
          object Label14: TLabel
            Left = 8
            Top = 32
            Width = 38
            Height = 13
            Caption = 'Label14'
          end
          object tlb1: TToolBar
            Left = 9
            Top = 0
            Width = 896
            Height = 24
            AutoSize = True
            Caption = 'tlb1'
            Flat = True
            Images = fmMain.il1
            TabOrder = 0
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
            object ToolButton12: TToolButton
              Left = 23
              Top = 0
              Width = 18
              Caption = 'ToolButton12'
              ImageIndex = 30
              Style = tbsSeparator
            end
            object tbh1: TToolButton
              Left = 41
              Top = 0
              Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
              Caption = 'tbh1'
              ImageIndex = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = tbh1Click
            end
            object ToolButton3: TToolButton
              Left = 64
              Top = 0
              Width = 33
              Caption = 'ToolButton3'
              ImageIndex = 32
              Style = tbsSeparator
            end
            object tbh2: TToolButton
              Left = 97
              Top = 0
              Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1103#1074#1082#1080
              Caption = 'tbh2'
              ImageIndex = 3
              ParentShowHint = False
              ShowHint = True
              OnClick = tbh2Click
            end
            object ToolButton7: TToolButton
              Left = 120
              Top = 0
              Width = 17
              Caption = 'ToolButton7'
              ImageIndex = 32
              Style = tbsSeparator
            end
            object Label1: TLabel
              Left = 137
              Top = 0
              Width = 37
              Height = 22
              Caption = #1047#1072#1082#1072#1079': '
              Layout = tlCenter
            end
            object lcb2: TDBLookupComboboxEh
              Left = 174
              Top = 0
              Width = 131
              Height = 22
              DropDownBox.Columns = <
                item
                  FieldName = 'N_ORDER'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Width = 150
                end
                item
                  FieldName = 'NAME'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                end>
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 400
              EditButtons = <>
              KeyField = 'ID_ORDER'
              ListField = 'N_ORDER'
              ListSource = dsOrds
              TabOrder = 1
              Visible = True
            end
            object Label5: TLabel
              Left = 305
              Top = 0
              Width = 56
              Height = 22
              Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
              Layout = tlCenter
            end
            object lcb1: TDBLookupComboboxEh
              Left = 361
              Top = 0
              Width = 144
              Height = 22
              DropDownBox.Rows = 25
              DropDownBox.Sizable = True
              DropDownBox.Width = 250
              EditButtons = <>
              KeyField = 'ID_P'
              ListField = 'FIO'
              ListSource = dsMAN
              TabOrder = 0
              Visible = True
            end
            object ToolButton2: TToolButton
              Left = 505
              Top = 0
              Width = 8
              Caption = 'ToolButton2'
              ImageIndex = 33
              Style = tbsSeparator
            end
            object cb2: TCheckBox
              Left = 513
              Top = 0
              Width = 160
              Height = 22
              AllowGrayed = True
              Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1095#1077#1088#1085#1086#1074#1080#1082#1080
              State = cbGrayed
              TabOrder = 2
            end
            object cb4: TCheckBox
              Left = 673
              Top = 0
              Width = 176
              Height = 22
              Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1086#1090#1074#1077#1088#1075#1085#1091#1090#1099#1077
              TabOrder = 3
              OnClick = cb4Click
            end
          end
          object tlb2: TToolBar
            Left = 9
            Top = 26
            Width = 896
            Height = 24
            AutoSize = True
            Caption = 'tlb2'
            Flat = True
            Images = fmMain.il1
            TabOrder = 1
            object Label23: TLabel
              Left = 0
              Top = 0
              Width = 40
              Height = 22
              Caption = #1057#1090#1072#1090#1091#1089': '
              Layout = tlCenter
            end
            object cmb1: TComboBox
              Left = 40
              Top = 0
              Width = 153
              Height = 21
              Style = csDropDownList
              DropDownCount = 10
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 2
              Text = #1051#1102#1073#1086#1081
              Items.Strings = (
                #1051#1102#1073#1086#1081
                #1063#1077#1088#1085#1086#1074#1080#1082
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1088#1091#1082'. '#1084#1077#1085#1077#1076#1078#1077#1088#1072
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1055#1069#1054
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1092#1080#1085'. '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1076#1080#1088#1077#1082#1090#1086#1088#1086#1084
                #1042#1099#1087#1086#1083#1085#1077#1085#1072' '#1074' '#1048#1057
                #1042#1099#1087#1086#1083#1085#1077#1085#1072' '#1074' '#1094#1077#1085#1090#1088'. '#1073#1072#1079#1077)
            end
            object Label32: TLabel
              Left = 193
              Top = 0
              Width = 55
              Height = 22
              Caption = '    '#1053#1072#1081#1090#1080':   '
              Layout = tlCenter
            end
            object ed1: TEdit
              Left = 248
              Top = 0
              Width = 97
              Height = 22
              Hint = #1055#1086#1080#1089#1082
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyUp = ed1KeyUp
            end
            object tb5: TToolButton
              Left = 345
              Top = 0
              Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1079#1072#1103#1074#1082#1091
              Caption = 'tb5'
              DropdownMenu = ppm1
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object cbPrn: TCheckBox
              Left = 381
              Top = 0
              Width = 72
              Height = 22
              Caption = #1055#1077#1095#1072#1090#1100
              TabOrder = 3
            end
            object tb8: TToolButton
              Left = 453
              Top = 0
              Hint = #1055#1077#1095#1072#1090#1100
              Caption = 'tb8'
              ImageIndex = 13
              ParentShowHint = False
              ShowHint = True
              OnClick = tb8Click
            end
            object tb6: TToolButton
              Left = 476
              Top = 0
              Hint = #1055#1088#1086#1074#1077#1089#1090#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
              Caption = 'tb6'
              DropdownMenu = ppm2
              ImageIndex = 31
              ParentShowHint = False
              ShowHint = True
              Style = tbsDropDown
            end
            object ToolButton1: TToolButton
              Left = 512
              Top = 0
              Width = 16
              Caption = 'ToolButton1'
              ImageIndex = 9
              Style = tbsSeparator
            end
            object tbRej: TToolButton
              Left = 528
              Top = 0
              Hint = #1054#1090#1074#1077#1088#1075#1085#1091#1090#1100' '#1079#1072#1103#1074#1082#1091
              Caption = 'tbRej'
              ImageIndex = 11
              ParentShowHint = False
              ShowHint = True
              OnClick = tbRejClick
            end
            object tbDerej: TToolButton
              Left = 551
              Top = 0
              Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1086#1090#1074#1077#1088#1078#1077#1085#1080#1077
              Caption = 'tbDerej'
              ImageIndex = 33
              ParentShowHint = False
              ShowHint = True
              OnClick = tbDerejClick
            end
            object ToolButton4: TToolButton
              Left = 574
              Top = 0
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 34
              Style = tbsSeparator
            end
            object ToolButton5: TToolButton
              Left = 582
              Top = 0
              Caption = 'ToolButton5'
              ImageIndex = 34
              OnClick = ToolButton5Click
            end
            object cb1: TCheckBox
              Left = 605
              Top = 0
              Width = 173
              Height = 22
              AllowGrayed = True
              Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077
              State = cbGrayed
              TabOrder = 1
            end
          end
        end
        object dbg1: TDBGridEh
          Left = 0
          Top = 54
          Width = 913
          Height = 370
          Align = alClient
          DataSource = dsC_REQ
          DrawMemoText = True
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          OnGetCellParams = dbg1GetCellParams
          OnSortMarkingChanged = dbg1SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ID_REQUEST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'D_MANAGER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'MANAGER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 223
            end
            item
              EditButtons = <>
              FieldName = 'N_ORDER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NSTATUS'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 139
            end
            item
              EditButtons = <>
              FieldName = 'DESCRIPT'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 232
            end
            item
              EditButtons = <>
              FieldName = 'D_WORK'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'REASON'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 186
            end
            item
              EditButtons = <>
              FieldName = 'ID_ORDER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'FIO_CONFIRM'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 167
            end
            item
              EditButtons = <>
              FieldName = 'FIO_ACC'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 168
            end
            item
              EditButtons = <>
              FieldName = 'FIO_FIN'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 172
            end
            item
              EditButtons = <>
              FieldName = 'FIO_HEAD'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 198
            end
            item
              EditButtons = <>
              FieldName = 'FIO_REJECT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'D_REJECT'
              Footers = <>
            end>
        end
        object dbn1: TDBNavigator
          Left = 0
          Top = 424
          Width = 913
          Height = 18
          DataSource = dsC_REQ
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 2
        end
      end
      object ts2: TTabSheet
        Caption = #1044#1072#1085#1085#1099#1077
        ImageIndex = 1
        object p3: TPanel
          Left = 0
          Top = 0
          Width = 913
          Height = 442
          Align = alClient
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 610
            Top = 1
            Height = 440
          end
          object p4: TPanel
            Left = 1
            Top = 1
            Width = 609
            Height = 440
            Align = alLeft
            TabOrder = 0
            object p12: TPanel
              Left = 1
              Top = 338
              Width = 607
              Height = 65
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 0
              DesignSize = (
                607
                65)
              object lb16: TLabel
                Left = 4
                Top = 4
                Width = 68
                Height = 26
                Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#13#10#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt12: TDBText
                Left = 124
                Top = 18
                Width = 446
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'OBD'
                DataSource = dsREQ_TP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt14: TDBText
                Left = 124
                Top = 46
                Width = 438
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'NBD'
                DataSource = dsREQ_TP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt11: TDBText
                Left = 124
                Top = 2
                Width = 177
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'OLD_BASE_DOC'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt13: TDBText
                Left = 124
                Top = 30
                Width = 158
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'NEW_BASE_DOC'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object p8: TPanel
              Left = 1
              Top = 38
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 1
              DesignSize = (
                607
                37)
              object lb4: TLabel
                Left = 12
                Top = 10
                Width = 44
                Height = 13
                Caption = #1057#1091#1084#1084#1072':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt3: TDBText
                Left = 128
                Top = 2
                Width = 89
                Height = 17
                DataField = 'OLD_PRICE'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt4: TDBText
                Left = 128
                Top = 18
                Width = 89
                Height = 17
                DataField = 'NEW_PRICE'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label24: TLabel
                Left = 280
                Top = 10
                Width = 71
                Height = 13
                Caption = #1057#1091#1084#1084#1072' '#1076#1077#1092':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText15: TDBText
                Left = 360
                Top = 2
                Width = 89
                Height = 17
                DataField = 'OLD_DEF_SUM'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText16: TDBText
                Left = 360
                Top = 18
                Width = 89
                Height = 17
                DataField = 'NEW_DEF_SUM'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label29: TLabel
                Left = 446
                Top = 10
                Width = 69
                Height = 13
                Caption = #1053#1072#1094#1077#1085#1082#1072' %:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText33: TDBText
                Left = 529
                Top = 1
                Width = 72
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'OLD_MANAGER_MARGIN'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText34: TDBText
                Left = 529
                Top = 18
                Width = 74
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'NEW_MANAGER_MARGIN'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText39: TDBText
                Left = 72
                Top = 2
                Width = 41
                Height = 14
                DataField = 'OLD_CURRENCY'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText40: TDBText
                Left = 71
                Top = 18
                Width = 49
                Height = 17
                DataField = 'NEW_CURRENCY'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object p7: TPanel
              Left = 1
              Top = 1
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 2
              object lb1: TLabel
                Left = 52
                Top = 4
                Width = 74
                Height = 13
                Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lb2: TLabel
                Left = 4
                Top = 4
                Width = 32
                Height = 13
                Alignment = taRightJustify
                Caption = #1073#1099#1083#1086' -'
              end
              object lb3: TLabel
                Left = 0
                Top = 18
                Width = 77
                Height = 13
                Alignment = taRightJustify
                Caption = #1080#1089#1087#1088#1072#1074#1080#1090#1100' '#1085#1072' - '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object dbt1: TDBText
                Left = 128
                Top = 2
                Width = 89
                Height = 17
                DataField = 'OLD_AMOUNT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt2: TDBText
                Left = 128
                Top = 18
                Width = 89
                Height = 17
                DataField = 'NEW_AMOUNT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 288
                Top = 12
                Width = 58
                Height = 13
                Caption = #1057#1084#1077#1090#1072' '#8470':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText41: TDBText
                Left = 360
                Top = 2
                Width = 89
                Height = 17
                DataField = 'OLD_ESTIMATE'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText42: TDBText
                Left = 360
                Top = 18
                Width = 89
                Height = 17
                DataField = 'NEW_ESTIMATE'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object p9: TPanel
              Left = 1
              Top = 75
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 3
              DesignSize = (
                607
                37)
              object lb7: TLabel
                Left = 12
                Top = 10
                Width = 97
                Height = 13
                Caption = #1059#1089#1083#1091#1075#1080' ('#1089#1091#1084#1084#1072'):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt5: TDBText
                Left = 126
                Top = 2
                Width = 89
                Height = 17
                DataField = 'OLD_SUMMA'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt6: TDBText
                Left = 125
                Top = 18
                Width = 89
                Height = 17
                DataField = 'NEW_SUMMA'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label34: TLabel
                Left = 264
                Top = 10
                Width = 90
                Height = 13
                Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1076#1077#1092':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText35: TDBText
                Left = 360
                Top = 2
                Width = 89
                Height = 17
                DataField = 'OLD_DEF_DELIVERY'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText36: TDBText
                Left = 360
                Top = 18
                Width = 89
                Height = 17
                DataField = 'NEW_DELIVERY_SUM'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 454
                Top = 10
                Width = 63
                Height = 13
                Caption = #1044#1086#1089#1090#1072#1074#1082#1072':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText37: TDBText
                Left = 529
                Top = 1
                Width = 72
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'OLD_DELIVERY_SUM'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText38: TDBText
                Left = 529
                Top = 18
                Width = 74
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'NEW_DELIVERY_SUM'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object p11: TPanel
              Left = 1
              Top = 299
              Width = 607
              Height = 39
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 4
              DesignSize = (
                607
                39)
              object Label52: TLabel
                Left = 8
                Top = 4
                Width = 61
                Height = 26
                Caption = #1056#1086#1076#1080#1090#1077#1083#1100' '#13#10#1079#1072#1082#1072#1079#1072':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText49: TDBText
                Left = 124
                Top = 2
                Width = 93
                Height = 17
                DataField = 'O_N_ORDER'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText50: TDBText
                Left = 124
                Top = 20
                Width = 93
                Height = 17
                DataField = 'N_N_ORDER'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText53: TDBText
                Left = 228
                Top = 2
                Width = 370
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'O_NAME_ORDER'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText54: TDBText
                Left = 228
                Top = 18
                Width = 378
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'N_NAME_ORDER'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object p10: TPanel
              Left = 1
              Top = 112
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 5
              DesignSize = (
                607
                37)
              object lb10: TLabel
                Left = 4
                Top = 4
                Width = 48
                Height = 26
                Caption = #1058#1080#1087' '#1087#1088#1086#13#10#1076#1091#1082#1094#1080#1080':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt7: TDBText
                Left = 56
                Top = 2
                Width = 193
                Height = 17
                DataField = 'OTP'
                DataSource = dsREQ_TP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt8: TDBText
                Left = 56
                Top = 18
                Width = 249
                Height = 17
                DataField = 'NTP'
                DataSource = dsREQ_TP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lb13: TLabel
                Left = 256
                Top = 12
                Width = 56
                Height = 13
                Caption = #1048#1079#1076#1077#1083#1080#1077':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt9: TDBText
                Left = 317
                Top = 2
                Width = 284
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'O_PRODUCT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object dbt10: TDBText
                Left = 318
                Top = 18
                Width = 275
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'N_PRODUCT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object Panel3: TPanel
              Left = 1
              Top = 149
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 6
              DesignSize = (
                607
                37)
              object Label43: TLabel
                Left = 4
                Top = 10
                Width = 90
                Height = 13
                Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText43: TDBText
                Left = 125
                Top = 2
                Width = 430
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'OP'
                DataSource = dsREQ_TP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText44: TDBText
                Left = 125
                Top = 18
                Width = 438
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'NOP'
                DataSource = dsREQ_TP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object Panel4: TPanel
              Left = 1
              Top = 186
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 7
              DesignSize = (
                607
                37)
              object Label46: TLabel
                Left = 4
                Top = 10
                Width = 48
                Height = 13
                Caption = #1055#1088#1086#1077#1082#1090':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText45: TDBText
                Left = 124
                Top = 2
                Width = 430
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'O_PROJECT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText46: TDBText
                Left = 124
                Top = 18
                Width = 438
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'N_PROJECT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object Panel5: TPanel
              Left = 1
              Top = 223
              Width = 607
              Height = 37
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 8
              DesignSize = (
                607
                37)
              object Label49: TLabel
                Left = 4
                Top = 10
                Width = 47
                Height = 13
                Caption = #1050#1083#1080#1077#1085#1090':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText47: TDBText
                Left = 124
                Top = 2
                Width = 430
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'O_AGENT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText48: TDBText
                Left = 124
                Top = 18
                Width = 438
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'N_AGENT'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object Panel6: TPanel
              Left = 1
              Top = 260
              Width = 607
              Height = 39
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 9
              DesignSize = (
                607
                39)
              object Label55: TLabel
                Left = 8
                Top = 12
                Width = 73
                Height = 13
                Caption = #1058#1080#1087' '#1079#1072#1082#1072#1079#1072':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText51: TDBText
                Left = 124
                Top = 2
                Width = 274
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'O_ORD_TYPE'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText52: TDBText
                Left = 124
                Top = 18
                Width = 274
                Height = 17
                Anchors = [akLeft, akTop, akRight]
                DataField = 'N_ORD_TYPE'
                DataSource = dsCH_REQ
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object p5: TPanel
            Left = 613
            Top = 1
            Width = 299
            Height = 440
            Align = alClient
            TabOrder = 1
            object Splitter2: TSplitter
              Left = 1
              Top = 201
              Width = 297
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object DBMemo1: TDBMemo
              Left = 1
              Top = 23
              Width = 297
              Height = 178
              Align = alTop
              DataField = 'REASON'
              DataSource = dsCH_REQ
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object p6: TPanel
              Left = 1
              Top = 1
              Width = 297
              Height = 22
              Align = alTop
              BevelInner = bvRaised
              TabOrder = 1
              object Label25: TLabel
                Left = 8
                Top = 4
                Width = 153
                Height = 13
                Caption = #1055#1088#1080#1095#1080#1085#1072' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
              end
            end
            object DBMemo2: TDBMemo
              Left = 1
              Top = 224
              Width = 297
              Height = 215
              Align = alClient
              DataField = 'DESCRIPT'
              DataSource = dsCH_REQ
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 2
            end
            object Panel2: TPanel
              Left = 1
              Top = 204
              Width = 297
              Height = 20
              Align = alTop
              TabOrder = 3
              object Label33: TLabel
                Left = 4
                Top = 3
                Width = 53
                Height = 13
                Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
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
          Top = 32
          Width = 135
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084':'
        end
        object Label16: TLabel
          Left = 8
          Top = 56
          Width = 156
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1088#1091#1082'. '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1074':'
        end
        object Label17: TLabel
          Left = 8
          Top = 80
          Width = 92
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1055#1069#1054':'
        end
        object Label18: TLabel
          Left = 8
          Top = 104
          Width = 161
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1092#1080#1085'. '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084':'
        end
        object Label19: TLabel
          Left = 8
          Top = 128
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
          Top = 32
          Width = 161
          Height = 17
          DataField = 'D_MANAGER'
          DataSource = dsCH_REQ
        end
        object DBText18: TDBText
          Left = 344
          Top = 32
          Width = 329
          Height = 17
          DataField = 'FIO'
          DataSource = dsCH_REQ
        end
        object DBText19: TDBText
          Left = 176
          Top = 56
          Width = 161
          Height = 17
          DataField = 'D_ACC'
          DataSource = dsCH_REQ
        end
        object DBText20: TDBText
          Left = 176
          Top = 80
          Width = 161
          Height = 17
          DataField = 'D_CONFIRM'
          DataSource = dsCH_REQ
        end
        object DBText21: TDBText
          Left = 176
          Top = 104
          Width = 161
          Height = 17
          DataField = 'D_FIN'
          DataSource = dsCH_REQ
        end
        object DBText22: TDBText
          Left = 176
          Top = 128
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
          Top = 56
          Width = 329
          Height = 17
          DataField = 'ACC'
          DataSource = dsCH_REQ
        end
        object DBText24: TDBText
          Left = 343
          Top = 80
          Width = 329
          Height = 17
          DataField = 'CONF'
          DataSource = dsCH_REQ
        end
        object DBText25: TDBText
          Left = 343
          Top = 104
          Width = 329
          Height = 17
          DataField = 'FIN'
          DataSource = dsCH_REQ
        end
        object DBText26: TDBText
          Left = 343
          Top = 128
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
        object Label13: TLabel
          Left = 8
          Top = 8
          Width = 91
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1103#1074#1082#1080':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 104
          Top = 8
          Width = 25
          Height = 17
          DataField = 'STATUS'
          DataSource = dsC_REQ
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 144
          Top = 8
          Width = 353
          Height = 17
          DataField = 'NSTATUS'
          DataSource = dsC_REQ
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 0
          Top = 350
          Width = 778
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
            DataField = 'FWORK'
            DataSource = dsCH_REQ
          end
          object DBText28: TDBText
            Left = 375
            Top = 56
            Width = 290
            Height = 17
            DataField = 'CWORK'
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
            DataField = 'D_CENTER_WORK'
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
  end
  object p2: TPanel
    Left = 0
    Top = 472
    Width = 925
    Height = 131
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      925
      131)
    object Label2: TLabel
      Left = 8
      Top = 8
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
      Top = 8
      Width = 57
      Height = 17
      DataField = 'ID_ORDER'
      DataSource = dsOrder
    end
    object DBText2: TDBText
      Left = 120
      Top = 8
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
      Top = 24
      Width = 879
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
      Top = 8
      Width = 377
      Height = 17
      DataField = 'NSTATUS'
      DataSource = dsOrder
    end
    object Label3: TLabel
      Left = 256
      Top = 8
      Width = 37
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object Label4: TLabel
      Left = 8
      Top = 40
      Width = 78
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
    end
    object Label6: TLabel
      Left = 296
      Top = 40
      Width = 76
      Height = 13
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
    end
    object DBText5: TDBText
      Left = 96
      Top = 40
      Width = 193
      Height = 17
      DataField = 'TYPEPROD'
      DataSource = dsOrder
    end
    object DBText6: TDBText
      Left = 376
      Top = 40
      Width = 511
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'PROD'
      DataSource = dsOrder
    end
    object DBText7: TDBText
      Left = 48
      Top = 56
      Width = 65
      Height = 17
      DataField = 'AMOUNT'
      DataSource = dsOrder
    end
    object DBText8: TDBText
      Left = 168
      Top = 56
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
      Left = 368
      Top = 56
      Width = 97
      Height = 17
      DataField = 'PRICEA'
      DataSource = dsOrder
    end
    object Label7: TLabel
      Left = 8
      Top = 56
      Width = 37
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086':'
    end
    object Label8: TLabel
      Left = 128
      Top = 56
      Width = 37
      Height = 13
      Caption = #1057#1091#1084#1084#1072':'
    end
    object Label9: TLabel
      Left = 320
      Top = 56
      Width = 39
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1080':'
    end
    object Label10: TLabel
      Left = 520
      Top = 56
      Width = 41
      Height = 13
      Caption = #1042#1072#1083#1102#1090#1072':'
    end
    object DBText10: TDBText
      Left = 568
      Top = 56
      Width = 41
      Height = 17
      DataField = 'NCURR'
      DataSource = dsOrder
    end
    object Label11: TLabel
      Left = 8
      Top = 96
      Width = 56
      Height = 13
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
    end
    object Label12: TLabel
      Left = 320
      Top = 96
      Width = 39
      Height = 13
      Caption = #1050#1083#1080#1077#1085#1090':'
    end
    object DBText11: TDBText
      Left = 72
      Top = 96
      Width = 241
      Height = 17
      DataField = 'FIO'
      DataSource = dsOrder
    end
    object DBText12: TDBText
      Left = 368
      Top = 96
      Width = 519
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'AGENT'
      DataSource = dsOrder
    end
    object Label26: TLabel
      Left = 8
      Top = 112
      Width = 111
      Height = 13
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
    end
    object DBText31: TDBText
      Left = 128
      Top = 112
      Width = 73
      Height = 17
      DataField = 'ID_DOC'
      DataSource = dsOrder
    end
    object DBText32: TDBText
      Left = 216
      Top = 112
      Width = 664
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NDOC'
      DataSource = dsOrder
    end
    object Label27: TLabel
      Left = 128
      Top = 72
      Width = 85
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057':'
    end
    object DBText55: TDBText
      Left = 216
      Top = 72
      Width = 105
      Height = 17
      DataField = 'PRICE_BEZ_NDS'
      DataSource = dsOrder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 320
      Top = 72
      Width = 87
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1080' '#1073#1077#1079' '#1053#1044#1057':'
    end
    object DBText56: TDBText
      Left = 416
      Top = 72
      Width = 97
      Height = 17
      DataField = 'PRICEA_BEZ_NDS'
      DataSource = dsOrder
    end
  end
  object qC_REQ: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qC_REQAfterScroll
    OnCalcFields = qC_REQCalcFields
    SQL.Strings = (
      
        'select c.id_request, c.id_order, c.status, c.d_manager, c.id_man' +
        'ager,'
      
        'c.d_head, c.id_head, c.d_acc, c.id_acc, c.d_fin, c.id_fin, c.d_c' +
        'onfirm,'
      
        'c.id_confirm, c.d_work, c.id_work, c.d_center_work, c.id_center_' +
        'work,'
      
        'c.descript, c.reason, c.old_amount, c.new_amount, c.old_price, c' +
        '.new_price,'
      
        'c.old_summa, c.new_summa, c.old_ptype, c.new_ptype, c.old_base_d' +
        'oc,'
      'c.new_base_doc, c.old_prod, c.new_prod, c.id_doc, c.id_reason,'
      
        'p.n_order, p.name, r.fio manager, s.fio fio_confirm,s1.fio fio_a' +
        'cc,'
      
        's2.fio fio_fin,s3.fio fio_headr, s4.fio fio_reject, c.id_reject,' +
        ' c.d_reject'
      'from change_requests c'
      ' join project_ords p on p.id_order = c.id_order'
      'left join personnel r on r.id_p = c.id_manager'
      'left join personnel s1 on s1.id_p = c.id_acc'
      'left join personnel s on s.id_p = c.id_confirm'
      'left join personnel s2 on s2.id_p = c.id_fin'
      'left join personnel s3 on s3.id_p = c.id_head'
      'left join personnel s4 on s4.id_p = c.id_reject')
    Left = 648
    Top = 112
    object qC_REQID_REQUEST: TIntegerField
      DisplayLabel = #8470' '#1079#1072#1103#1074#1082#1080
      FieldName = 'ID_REQUEST'
      Origin = '"CHANGE_REQUESTS"."ID_REQUEST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qC_REQID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"CHANGE_REQUESTS"."ID_ORDER"'
    end
    object qC_REQSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"CHANGE_REQUESTS"."STATUS"'
    end
    object qC_REQD_MANAGER: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1086' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
      FieldName = 'D_MANAGER'
      Origin = '"CHANGE_REQUESTS"."D_MANAGER"'
    end
    object qC_REQID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"CHANGE_REQUESTS"."ID_MANAGER"'
    end
    object qC_REQD_HEAD: TDateTimeField
      FieldName = 'D_HEAD'
      Origin = '"CHANGE_REQUESTS"."D_HEAD"'
    end
    object qC_REQID_HEAD: TIntegerField
      FieldName = 'ID_HEAD'
      Origin = '"CHANGE_REQUESTS"."ID_HEAD"'
    end
    object qC_REQD_ACC: TDateTimeField
      FieldName = 'D_ACC'
      Origin = '"CHANGE_REQUESTS"."D_ACC"'
    end
    object qC_REQID_ACC: TIntegerField
      FieldName = 'ID_ACC'
      Origin = '"CHANGE_REQUESTS"."ID_ACC"'
    end
    object qC_REQD_FIN: TDateTimeField
      FieldName = 'D_FIN'
      Origin = '"CHANGE_REQUESTS"."D_FIN"'
    end
    object qC_REQID_FIN: TIntegerField
      FieldName = 'ID_FIN'
      Origin = '"CHANGE_REQUESTS"."ID_FIN"'
    end
    object qC_REQD_CONFIRM: TDateTimeField
      FieldName = 'D_CONFIRM'
      Origin = '"CHANGE_REQUESTS"."D_CONFIRM"'
    end
    object qC_REQID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"CHANGE_REQUESTS"."ID_CONFIRM"'
    end
    object qC_REQD_WORK: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1072
      FieldName = 'D_WORK'
      Origin = '"CHANGE_REQUESTS"."D_WORK"'
    end
    object qC_REQID_WORK: TIntegerField
      FieldName = 'ID_WORK'
      Origin = '"CHANGE_REQUESTS"."ID_WORK"'
    end
    object qC_REQD_CENTER_WORK: TDateTimeField
      FieldName = 'D_CENTER_WORK'
      Origin = '"CHANGE_REQUESTS"."D_CENTER_WORK"'
    end
    object qC_REQID_CENTER_WORK: TIntegerField
      FieldName = 'ID_CENTER_WORK'
      Origin = '"CHANGE_REQUESTS"."ID_CENTER_WORK"'
    end
    object qC_REQDESCRIPT: TMemoField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPT'
      Origin = '"CHANGE_REQUESTS"."DESCRIPT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qC_REQREASON: TMemoField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      FieldName = 'REASON'
      Origin = '"CHANGE_REQUESTS"."REASON"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qC_REQOLD_AMOUNT: TFloatField
      FieldName = 'OLD_AMOUNT'
      Origin = '"CHANGE_REQUESTS"."OLD_AMOUNT"'
    end
    object qC_REQNEW_AMOUNT: TFloatField
      FieldName = 'NEW_AMOUNT'
      Origin = '"CHANGE_REQUESTS"."NEW_AMOUNT"'
    end
    object qC_REQOLD_PRICE: TFloatField
      FieldName = 'OLD_PRICE'
      Origin = '"CHANGE_REQUESTS"."OLD_PRICE"'
    end
    object qC_REQNEW_PRICE: TFloatField
      FieldName = 'NEW_PRICE'
      Origin = '"CHANGE_REQUESTS"."NEW_PRICE"'
    end
    object qC_REQOLD_SUMMA: TFloatField
      FieldName = 'OLD_SUMMA'
      Origin = '"CHANGE_REQUESTS"."OLD_SUMMA"'
    end
    object qC_REQNEW_SUMMA: TFloatField
      FieldName = 'NEW_SUMMA'
      Origin = '"CHANGE_REQUESTS"."NEW_SUMMA"'
    end
    object qC_REQOLD_PTYPE: TIntegerField
      FieldName = 'OLD_PTYPE'
      Origin = '"CHANGE_REQUESTS"."OLD_PTYPE"'
    end
    object qC_REQNEW_PTYPE: TIntegerField
      FieldName = 'NEW_PTYPE'
      Origin = '"CHANGE_REQUESTS"."NEW_PTYPE"'
    end
    object qC_REQOLD_BASE_DOC: TIntegerField
      FieldName = 'OLD_BASE_DOC'
      Origin = '"CHANGE_REQUESTS"."OLD_BASE_DOC"'
    end
    object qC_REQNEW_BASE_DOC: TIntegerField
      FieldName = 'NEW_BASE_DOC'
      Origin = '"CHANGE_REQUESTS"."NEW_BASE_DOC"'
    end
    object qC_REQOLD_PROD: TIntegerField
      FieldName = 'OLD_PROD'
      Origin = '"CHANGE_REQUESTS"."OLD_PROD"'
    end
    object qC_REQNEW_PROD: TIntegerField
      FieldName = 'NEW_PROD'
      Origin = '"CHANGE_REQUESTS"."NEW_PROD"'
    end
    object qC_REQID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"CHANGE_REQUESTS"."ID_DOC"'
    end
    object qC_REQID_REASON: TIntegerField
      FieldName = 'ID_REASON'
      Origin = '"CHANGE_REQUESTS"."ID_REASON"'
    end
    object qC_REQN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qC_REQNAME: TIBStringField
      DisplayLabel = #1047#1072#1082#1072#1079
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qC_REQMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qC_REQFIO_CONFIRM: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083' ('#1055#1069#1054')'
      FieldName = 'FIO_CONFIRM'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qC_REQNSTATUS: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkCalculated
      FieldName = 'NSTATUS'
      Size = 64
      Calculated = True
    end
    object qC_REQFIO_ACC: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083' ('#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100')'
      FieldName = 'FIO_ACC'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qC_REQFIO_FIN: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083' ('#1060#1080#1085'.'#1076#1080#1088')'
      FieldName = 'FIO_FIN'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qC_REQFIO_HEAD: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083' ('#1044#1080#1088#1077#1082#1090#1086#1088')'
      FieldName = 'FIO_HEAD'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qC_REQFIO_REJECT: TIBStringField
      DisplayLabel = #1054#1090#1074#1077#1088#1075
      FieldName = 'FIO_REJECT'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qC_REQID_REJECT: TIntegerField
      FieldName = 'ID_REJECT'
      Origin = '"CHANGE_REQUESTS"."ID_REJECT"'
    end
    object qC_REQD_REJECT: TDateTimeField
      DisplayLabel = #1054#1090#1074#1077#1088#1075#1085#1091#1090#1086
      FieldName = 'D_REJECT'
      Origin = '"CHANGE_REQUESTS"."D_REJECT"'
    end
  end
  object dsC_REQ: TDataSource
    DataSet = qC_REQ
    Left = 648
    Top = 160
  end
  object qMAN: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct P.ID_P, P.FIO '
      'from CHANGE_REQUESTS R join PERSONNEL P'
      'on R.ID_MANAGER = P.ID_P'
      'order by FIO')
    Left = 688
    Top = 234
    object qMANID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMANFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsMAN: TDataSource
    DataSet = qMAN
    Left = 688
    Top = 296
  end
  object qOrder: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qOrderBeforeOpen
    DataSource = dsC_REQ
    SQL.Strings = (
      'select p.id_order, p.n_order, p.name, p.id_doc,'
      'p.amount, p.price, '
      '(select nds_val from get_nds_sum(p.price,1)) price_bez_nds,'
      'p.pricea,'
      
        '(select nds_val from get_nds_sum(p.pricea,1)) pricea_bez_nds, p.' +
        'id_cptype,'
      'p.id_cprod, p.id_agent, p.status, r.id_p,'
      'i.name agent, r.fio, pt.name typeprod,'
      'a.name prod, v.name nstatus, c.name ncurr,'
      'd.name ndoc, p.id_project,'
      'p.id_product,p.id_currency,p.id_estimate,'
      'p.lid,p.d_open,p.def_sum,p.manager_margin,p.delivery_sum,'
      'p.def_delivery,p.plan_cost_price'
      'from project_ords p'
      'join project_ords_state s on s.id_order = p.id_order'
      'and s.id_ord_event = 20'
      'join items i on i.id_item = p.id_agent'
      'left join personnel r on r.id_p = s.id_fact'
      'join ptypes pt on p.id_cptype = pt.id_ptype'
      'join prod_areas a on a.id_p_area = p.id_cprod'
      'join ord_events v on v.status = p.status'
      'join currency c on c.id_currency = p.id_currency'
      'join project_docs d on d.id_project_doc = p.id_doc'
      'where p.id_order = :id_order')
    Left = 696
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ORDER'
        ParamType = ptUnknown
        Size = 4
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
  end
  object dsOrder: TDataSource
    DataSet = qOrder
    Left = 702
    Top = 150
  end
  object qCH_REQ: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsC_REQ
    SQL.Strings = (
      'select c.*, p.fio, s.name, a.fio acc, n.fio conf,'
      'f.fio fin, h.fio head, w.fio fwork, cw.fio cwork ,'
      'i1.name o_agent, i11.name n_agent,'
      'i2.name o_product,i22.name n_product,'
      'i3.name o_project, i33.name n_project,'
      'i4.name o_cur, i44.name n_cur,'
      'i5.name o_ord_type,i55.name n_ord_type,'
      'i6.name o_name_order, i6.n_order o_n_order,'
      'i66.name n_name_order, i66.n_order n_n_order,'
      
        'cast(cast(c.new_def_sum as numeric(14,2)) as varchar(16)) new_de' +
        'f_sum_s,'
      
        'cast(cast(c.new_amount as numeric(14,2)) as varchar(16)) new_amo' +
        'unt_s,'
      
        'cast(cast(c.new_price as numeric(14,2)) as varchar(16)) new_pric' +
        'e_s,'
      
        'cast(cast(c.new_summa as numeric(14,2)) as varchar(16)) new_summ' +
        'a_s,'
      
        'cast(cast(c.new_delivery_sum as numeric(14,2)) as varchar(16)) n' +
        'ew_delivery_sum_s,'
      
        'cast(cast(c.new_def_delivery as numeric(14,2)) as varchar(16)) n' +
        'ew_def_delivery_s,'
      
        'cast(cast(c.new_plan_cost_price as numeric(14,2)) as varchar(16)' +
        ') new_plan_cost_price_s,'
      
        'cast(cast(c.new_manager_margin as numeric(14,2)) as varchar(16))' +
        ' new_manager_margin_s'
      ''
      'from change_requests c'
      'left join personnel p on p.id_p = c.id_manager'
      'left join personnel a on a.id_p = c.id_acc'
      'left join personnel n on n.id_p = c.id_confirm'
      'left join personnel f on f.id_p = c.id_fin'
      'left join personnel h on h.id_p = c.id_head'
      'left join personnel w on w.id_p = c.id_work'
      'left join personnel cw on cw.id_p = c.id_center_work'
      ''
      'left join post s on s.idpost = p.idpost'
      'left JOIN items i1 ON i1.id_item = c.old_agent'
      'left JOIN items i11 ON i11.id_item = c.new_agent'
      'left JOIN items i2 ON i2.id_item = c.old_product'
      'left JOIN items i22 ON i22.id_item = c.new_product'
      'left JOIN projects i3 ON i3.id_project = c.old_project'
      'left JOIN projects i33 ON i33.id_project = c.new_project'
      'left JOIN currency i4 ON i4.id_currency = c.old_currency'
      'left JOIN currency i44 ON i44.id_currency = c.new_currency'
      'left JOIN ord_types i5 ON i5.id_type = c.old_ord_type'
      'left JOIN ord_types i55 ON i55.id_type = c.new_ord_type'
      'left JOIN project_ords i6 ON i6.id_order = c.old_lid'
      'left JOIN project_ords i66 ON i66.id_order = c.new_lid'
      'where c.id_request = :id_request')
    Left = 556
    Top = 290
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_REQUEST'
        ParamType = ptUnknown
        Size = 4
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
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_PRICE: TFloatField
      FieldName = 'NEW_PRICE'
      Origin = '"CHANGE_REQUESTS"."NEW_PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQOLD_SUMMA: TFloatField
      FieldName = 'OLD_SUMMA'
      Origin = '"CHANGE_REQUESTS"."OLD_SUMMA"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_SUMMA: TFloatField
      FieldName = 'NEW_SUMMA'
      Origin = '"CHANGE_REQUESTS"."NEW_SUMMA"'
      DisplayFormat = '### ### ### ##0.00'
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
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_DEF_SUM: TFloatField
      FieldName = 'NEW_DEF_SUM'
      Origin = '"CHANGE_REQUESTS"."NEW_DEF_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQOLD_MANAGER_MARGIN: TFloatField
      FieldName = 'OLD_MANAGER_MARGIN'
      Origin = '"CHANGE_REQUESTS"."OLD_MANAGER_MARGIN"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_MANAGER_MARGIN: TFloatField
      FieldName = 'NEW_MANAGER_MARGIN'
      Origin = '"CHANGE_REQUESTS"."NEW_MANAGER_MARGIN"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQOLD_DELIVERY_SUM: TFloatField
      FieldName = 'OLD_DELIVERY_SUM'
      Origin = '"CHANGE_REQUESTS"."OLD_DELIVERY_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_DELIVERY_SUM: TFloatField
      FieldName = 'NEW_DELIVERY_SUM'
      Origin = '"CHANGE_REQUESTS"."NEW_DELIVERY_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQOLD_DEF_DELIVERY: TFloatField
      FieldName = 'OLD_DEF_DELIVERY'
      Origin = '"CHANGE_REQUESTS"."OLD_DEF_DELIVERY"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_DEF_DELIVERY: TFloatField
      FieldName = 'NEW_DEF_DELIVERY'
      Origin = '"CHANGE_REQUESTS"."NEW_DEF_DELIVERY"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQOLD_PLAN_COST_PRICE: TFloatField
      FieldName = 'OLD_PLAN_COST_PRICE'
      Origin = '"CHANGE_REQUESTS"."OLD_PLAN_COST_PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQNEW_PLAN_COST_PRICE: TFloatField
      FieldName = 'NEW_PLAN_COST_PRICE'
      Origin = '"CHANGE_REQUESTS"."NEW_PLAN_COST_PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qCH_REQO_AGENT: TIBStringField
      FieldName = 'O_AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qCH_REQN_AGENT: TIBStringField
      FieldName = 'N_AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qCH_REQO_PRODUCT: TIBStringField
      FieldName = 'O_PRODUCT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qCH_REQN_PRODUCT: TIBStringField
      FieldName = 'N_PRODUCT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qCH_REQO_PROJECT: TIBStringField
      FieldName = 'O_PROJECT'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qCH_REQN_PROJECT: TIBStringField
      FieldName = 'N_PROJECT'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qCH_REQO_CUR: TIBStringField
      FieldName = 'O_CUR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qCH_REQN_CUR: TIBStringField
      FieldName = 'N_CUR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qCH_REQO_ORD_TYPE: TIBStringField
      FieldName = 'O_ORD_TYPE'
      Origin = '"ORD_TYPES"."NAME"'
      Size = 32
    end
    object qCH_REQN_ORD_TYPE: TIBStringField
      FieldName = 'N_ORD_TYPE'
      Origin = '"ORD_TYPES"."NAME"'
      Size = 32
    end
    object qCH_REQN_NAME_ORDER: TIBStringField
      FieldName = 'N_NAME_ORDER'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qCH_REQN_N_ORDER: TIBStringField
      FieldName = 'N_N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qCH_REQO_NAME_ORDER: TIBStringField
      FieldName = 'O_NAME_ORDER'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qCH_REQO_N_ORDER: TIBStringField
      FieldName = 'O_N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qCH_REQNEW_DEF_SUM_S: TIBStringField
      FieldName = 'NEW_DEF_SUM_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_AMOUNT_S: TIBStringField
      FieldName = 'NEW_AMOUNT_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_PRICE_S: TIBStringField
      FieldName = 'NEW_PRICE_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_SUMMA_S: TIBStringField
      FieldName = 'NEW_SUMMA_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_DELIVERY_SUM_S: TIBStringField
      FieldName = 'NEW_DELIVERY_SUM_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_DEF_DELIVERY_S: TIBStringField
      FieldName = 'NEW_DEF_DELIVERY_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_PLAN_COST_PRICE_S: TIBStringField
      FieldName = 'NEW_PLAN_COST_PRICE_S'
      ProviderFlags = []
      Size = 16
    end
    object qCH_REQNEW_MANAGER_MARGIN_S: TIBStringField
      FieldName = 'NEW_MANAGER_MARGIN_S'
      ProviderFlags = []
      Size = 16
    end
  end
  object dsCH_REQ: TDataSource
    DataSet = qCH_REQ
    Left = 550
    Top = 342
  end
  object qOrds: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct p.id_order, p.n_order, p.name'
      'from change_requests c join project_ords p'
      'on p.id_order = c.id_order'
      'order by p.n_order')
    Left = 726
    Top = 238
    object qOrdsID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdsN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qOrdsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
  end
  object dsOrds: TDataSource
    DataSet = qOrds
    Left = 734
    Top = 302
  end
  object ppm1: TPopupMenu
    Left = 602
    Top = 118
    object N1: TMenuItem
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1074
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1055#1069#1054
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1044#1080#1088#1077#1082#1090#1086#1088
      OnClick = N5Click
    end
  end
  object DBDCH_REQ: TfrxDBDataset
    UserName = 'DBDCH_REQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_REQUEST=ID_REQUEST'
      'ID_ORDER=ID_ORDER'
      'STATUS=STATUS'
      'D_MANAGER=D_MANAGER'
      'ID_MANAGER=ID_MANAGER'
      'D_HEAD=D_HEAD'
      'ID_HEAD=ID_HEAD'
      'D_ACC=D_ACC'
      'ID_ACC=ID_ACC'
      'D_FIN=D_FIN'
      'ID_FIN=ID_FIN'
      'D_CONFIRM=D_CONFIRM'
      'ID_CONFIRM=ID_CONFIRM'
      'D_WORK=D_WORK'
      'ID_WORK=ID_WORK'
      'D_CENTER_WORK=D_CENTER_WORK'
      'ID_CENTER_WORK=ID_CENTER_WORK'
      'DESCRIPT=DESCRIPT'
      'REASON=REASON'
      'OLD_AMOUNT=OLD_AMOUNT'
      'NEW_AMOUNT=NEW_AMOUNT'
      'OLD_PRICE=OLD_PRICE'
      'NEW_PRICE=NEW_PRICE'
      'OLD_SUMMA=OLD_SUMMA'
      'NEW_SUMMA=NEW_SUMMA'
      'OLD_PTYPE=OLD_PTYPE'
      'NEW_PTYPE=NEW_PTYPE'
      'OLD_BASE_DOC=OLD_BASE_DOC'
      'NEW_BASE_DOC=NEW_BASE_DOC'
      'OLD_PROD=OLD_PROD'
      'NEW_PROD=NEW_PROD'
      'ID_DOC=ID_DOC'
      'ID_REASON=ID_REASON'
      'FIO=FIO'
      'NAME=NAME'
      'ACC=ACC'
      'CONF=CONF'
      'FIN=FIN'
      'HEAD=HEAD'
      'FWORK=FWORK'
      'CWORK=CWORK'
      'OLD_PROJECT=OLD_PROJECT'
      'NEW_PROJECT=NEW_PROJECT'
      'OLD_PRODUCT=OLD_PRODUCT'
      'NEW_PRODUCT=NEW_PRODUCT'
      'OLD_CURRENCY=OLD_CURRENCY'
      'NEW_CURRENCY=NEW_CURRENCY'
      'OLD_AGENT=OLD_AGENT'
      'NEW_AGENT=NEW_AGENT'
      'OLD_ESTIMATE=OLD_ESTIMATE'
      'NEW_ESTIMATE=NEW_ESTIMATE'
      'OLD_ORD_TYPE=OLD_ORD_TYPE'
      'NEW_ORD_TYPE=NEW_ORD_TYPE'
      'OLD_LID=OLD_LID'
      'NEW_LID=NEW_LID'
      'OLD_D_OPEN=OLD_D_OPEN'
      'NEW_D_OPEN=NEW_D_OPEN'
      'OLD_DEF_SUM=OLD_DEF_SUM'
      'NEW_DEF_SUM=NEW_DEF_SUM'
      'OLD_MANAGER_MARGIN=OLD_MANAGER_MARGIN'
      'NEW_MANAGER_MARGIN=NEW_MANAGER_MARGIN'
      'OLD_DELIVERY_SUM=OLD_DELIVERY_SUM'
      'NEW_DELIVERY_SUM=NEW_DELIVERY_SUM'
      'OLD_DEF_DELIVERY=OLD_DEF_DELIVERY'
      'NEW_DEF_DELIVERY=NEW_DEF_DELIVERY'
      'OLD_PLAN_COST_PRICE=OLD_PLAN_COST_PRICE'
      'NEW_PLAN_COST_PRICE=NEW_PLAN_COST_PRICE'
      'O_AGENT=O_AGENT'
      'N_AGENT=N_AGENT'
      'O_PRODUCT=O_PRODUCT'
      'N_PRODUCT=N_PRODUCT'
      'O_PROJECT=O_PROJECT'
      'N_PROJECT=N_PROJECT'
      'O_CUR=O_CUR'
      'N_CUR=N_CUR'
      'O_ORD_TYPE=O_ORD_TYPE'
      'N_ORD_TYPE=N_ORD_TYPE'
      'N_NAME_ORDER=N_NAME_ORDER'
      'N_N_ORDER=N_N_ORDER'
      'O_NAME_ORDER=O_NAME_ORDER'
      'O_N_ORDER=O_N_ORDER'
      'NEW_DEF_SUM_S=NEW_DEF_SUM_S'
      'NEW_AMOUNT_S=NEW_AMOUNT_S'
      'NEW_PRICE_S=NEW_PRICE_S'
      'NEW_SUMMA_S=NEW_SUMMA_S'
      'NEW_DELIVERY_SUM_S=NEW_DELIVERY_SUM_S'
      'NEW_DEF_DELIVERY_S=NEW_DEF_DELIVERY_S'
      'NEW_PLAN_COST_PRICE_S=NEW_PLAN_COST_PRICE_S'
      'NEW_MANAGER_MARGIN_S=NEW_MANAGER_MARGIN_S')
    DataSet = qCH_REQ
    Left = 560
    Top = 240
  end
  object rREQ: TfrxReport
    Version = '3.23.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39805.636794791710000000
    ReportOptions.LastChange = 39805.636794791710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 648
    Top = 56
    Datasets = <
      item
        DataSet = DBDCH_REQ
        DataSetName = 'DBDCH_REQ'
      end
      item
        DataSet = DBDOrder
        DataSetName = 'DBDOrder'
      end
      item
        DataSet = DBDREQ_TP
        DataSetName = 'DBDREQ_TP'
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
        Height = 1020.473100000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#8212#1056#176#1057#1039#1056#1030#1056#1108#1056#176' '#1074#8222#8211' [DBDCH_REQ."ID_REQUEST"] '#1056#1109#1057#8218' [IIF(<DBDCH_REQ."' +
              'D_MANAGER"> = 0,'#39#39',<DBDCH_REQ."D_MANAGER">)] ')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 181.417440000000000000
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
        object Memo3: TfrxMemoView
          Left = 90.708720000000000000
          Top = 37.795300000000000000
          Width = 532.913730000000000000
          Height = 41.574830000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#8217' '#1056#1109#1057#8218#1056#1169#1056#181#1056#187' '#1056#152#1056#1118' '#1056#1029#1056#176' '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1056#181', '#1056#1108#1056#1109#1057#1026#1057#1026#1056#181#1056#1108#1057#8218#1056#1105#1057#1026#1056 +
              #1109#1056#1030#1056#1108#1057#1107' '#1056#1105#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#176#1057#8224#1056#1105#1056#1105' '#1056#1111#1056#1109' '#1057#1027#1056#1109#1056#1030#1056#181#1057#1026#1057#8364#1056#181#1056#1029#1056#1029#1057#8249#1056#1112' '#1056#1109#1056#1111#1056#181#1057 +
              #1026#1056#176#1057#8224#1056#1105#1057#1039#1056#1112' '#1056#1030' '#1056#1105#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#176#1057#8224#1056#1105#1056#1109#1056#1029#1056#1029#1056#1109#1056#8470' '#1057#1027#1056#1105#1057#1027#1057#8218#1056#181#1056#1112#1056#181' '#1056#1108#1056#1109#1056 +
              #1112#1056#1111#1056#176#1056#1029#1056#1105#1056#1105' PVG)')
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000030000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '1.'#1056#1114#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026': ')
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Top = 79.370130000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#164'.'#1056#152'.'#1056#1115'.: [DBDCH_REQ."FIO"]')
        end
        object Memo6: TfrxMemoView
          Left = 86.929190000000000000
          Top = 98.267780000000040000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034': [DBDCH_REQ."NAME"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 124.724490000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '2. '#1056#8217' '#1057#8218#1056#181#1057#8230#1056#1029#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1109#1056#181' '#1056#183#1056#176#1056#1169#1056#176#1056#1029#1056#1105#1056#181' ')
        end
        object Memo8: TfrxMemoView
          Left = 170.078850000000000000
          Top = 124.724490000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DBDOrder."N_ORDER"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 279.685220000000000000
          Top = 124.724490000000000000
          Width = 430.866322360000000000
          Height = 18.897650000000000000
          DataSet = DBDOrder
          DataSetName = 'DBDOrder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '- [DBDOrder."NAME"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 18.897650000000000000
          Top = 143.622140000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            
              #1056#1029#1056#181#1056#1109#1056#177#1057#8230#1056#1109#1056#1169#1056#1105#1056#1112#1056#1109' '#1056#1030#1056#1029#1056#181#1057#1027#1057#8218#1056#1105' '#1057#1027#1056#187#1056#181#1056#1169#1057#1107#1057#1035#1057#8240#1056#1105#1056#181' '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056 +
              #181#1056#1029#1056#1105#1057#1039':')
        end
        object Memo11: TfrxMemoView
          Left = 147.401670000000000000
          Top = 166.299320000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1056#1169#1056#176#1056#1029#1056#1029#1057#8249#1056#8470' '#1056#1112#1056#1109#1056#1112#1056#181#1056#1029#1057#8218':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 415.748300000000000000
          Top = 166.299320000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#1027#1056#1111#1057#1026#1056#176#1056#1030#1056#1105#1057#8218#1057#1034' '#1056#1029#1056#176':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 185.196970000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
        end
        object Memo14: TfrxMemoView
          Top = 204.094620000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176':')
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 185.196970000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'OLD_AMOUNT'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_AMOUNT"]')
        end
        object Memo17: TfrxMemoView
          Left = 415.748300000000000000
          Top = 185.196970000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ##0'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_AMOUNT_S"]')
        end
        object Memo16: TfrxMemoView
          Left = 147.401670000000000000
          Top = 204.094620000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'OLD_PRICE'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_PRICE"]')
        end
        object Memo18: TfrxMemoView
          Left = 415.748300000000000000
          Top = 204.094620000000000000
          Width = 154.960634800000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_PRICE_S"]')
        end
        object Memo19: TfrxMemoView
          Top = 222.992270000000000000
          Width = 147.401596770000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1032#1057#1027#1056#187#1057#1107#1056#1110#1056#176' ('#1057#1027#1057#1107#1056#1112#1056#1112#1056#176') '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176':')
        end
        object Memo20: TfrxMemoView
          Left = 147.401670000000000000
          Top = 222.992270000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'OLD_SUMMA'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_SUMMA"]')
        end
        object Memo21: TfrxMemoView
          Left = 415.748300000000000000
          Top = 222.992270000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_SUMMA_S"]')
        end
        object Memo22: TfrxMemoView
          Top = 430.866420000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1105#1056#1111' '#1056#1111#1057#1026#1056#1109#1056#1169#1057#1107#1056#1108#1057#8224#1056#1105#1056#1105':')
        end
        object Memo23: TfrxMemoView
          Left = 147.401670000000000000
          Top = 430.866420000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' [DBDCH_REQ."OLD_PTYPE"] - [DBDREQ_TP."OTP"]')
        end
        object Memo24: TfrxMemoView
          Left = 415.748300000000000000
          Top = 430.866420000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_PTYPE"] - [DBDREQ_TP."NTP"]')
        end
        object Memo27: TfrxMemoView
          Top = 449.764070000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1105#1056#183#1056#1030#1056#1109#1056#1169#1057#1027#1057#8218#1056#1030#1056#1109':')
        end
        object Memo28: TfrxMemoView
          Left = 147.401670000000000000
          Top = 449.764070000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_PROD"] - [DBDREQ_TP."OP"]')
        end
        object Memo29: TfrxMemoView
          Left = 415.748300000000000000
          Top = 449.764070000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_PROD"] - [DBDREQ_TP."NOP"]')
        end
        object Memo30: TfrxMemoView
          Top = 468.661720000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218' - '#1056#1109#1057#1027#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181':')
        end
        object Memo31: TfrxMemoView
          Left = 147.401670000000000000
          Top = 468.661720000000000000
          Width = 268.346459130000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDREQ_TP."OBD"]')
        end
        object Memo32: TfrxMemoView
          Left = 415.748300000000000000
          Top = 468.661720000000000000
          Width = 302.362229130000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDREQ_TP."NBD"]')
        end
        object Memo33: TfrxMemoView
          Top = 544.252320000000200000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '3.'#1056#1115#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1056#181' '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1056#8470':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Top = 566.929499999999900000
          Width = 600.945270000000000000
          Height = 64.252010000000000000
          StretchMode = smMaxHeight
          DataField = 'DESCRIPT'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBDCH_REQ."DESCRIPT"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Top = 634.961040000000300000
          Width = 219.212740000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '4.'#1056#1119#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029#1056#176' '#1056#1030#1056#1029#1056#181#1057#1027#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1056#8470':')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 665.197280000000000000
          Width = 600.945270000000000000
          Height = 56.692950000000010000
          StretchMode = smMaxHeight
          DataField = 'REASON'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBDCH_REQ."REASON"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 60.472480000000000000
          Top = 729.449290000000800000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1105#1056#187':')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 158.740260000000000000
          Top = 729.449290000000100000
          Width = 340.157504720000000000
          Height = 18.897650000000000000
          DataField = 'FIO'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."FIO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 37.795300000000000000
          Top = 767.244590000000100000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '"'#1056#1032#1056#1118#1056#8217#1056#8226#1056#160#1056#8211#1056#8221#1056#1106#1056#174'":')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 158.740260000000000000
          Top = 767.244590000000000000
          Width = 340.157480310000000000
          Height = 18.897650000000000000
          DataField = 'HEAD'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."HEAD"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Top = 786.142240000000100000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '('#1057#8222#1057#1107#1056#1029#1056#1108#1057#8224#1056#1105#1056#1109#1056#1029#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1056#8470' '#1056#1169#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026')')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Top = 808.819420000000300000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056#1105#1056#187', '#1057#1027#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1109#1056#1030#1056#176#1056#1029#1056#1109':')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Top = 823.937540000000600000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '('#1057#1026#1057#1107#1056#1108#1056#1109#1056#1030#1056#1109#1056#1169#1056#1105#1057#8218#1056#181#1056#187#1057#1034' '#1056#1112#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026#1056#176')')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 158.740260000000000000
          Top = 805.039890000000000000
          Width = 340.157480310000000000
          Height = 18.897650000000000000
          DataField = 'ACC'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."ACC"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Top = 846.614720000000500000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056#1105#1056#187', '#1057#1027#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1109#1056#1030#1056#176#1056#1029#1056#1109':')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 884.410020000000500000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056#1105#1056#187', '#1057#1027#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1109#1056#1030#1056#176#1056#1029#1056#1109':')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 109.606370000000000000
          Top = 861.732840000000500000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '('#1056#1119#1056#173#1056#1115')')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Top = 899.528140000000500000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '('#1057#8222#1056#1105#1056#1029#1056#176#1056#1029#1057#1027#1056#1109#1056#1030#1057#8249#1056#8470' '#1056#1112#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026')')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 158.740260000000000000
          Top = 846.614720000000500000
          Width = 340.157480310000000000
          Height = 18.897650000000000000
          DataField = 'CONF'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."CONF"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 158.740260000000000000
          Top = 884.410020000000100000
          Width = 340.157480310000000000
          Height = 18.897650000000000000
          DataField = 'FIN'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."FIN"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 925.984850000000300000
          Width = 151.181200000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1030' '#1056#152#1056#1038' '#1056#1111#1057#1026#1056#1109#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1057#8249':')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 948.662030000000100000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '('#1057#1027#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108')')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 158.740260000000000000
          Top = 925.984850000000300000
          Width = 340.157480310000000000
          Height = 18.897650000000000000
          DataField = 'FWORK'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."FWORK"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 158.740260000000000000
          Top = 967.559680000000100000
          Width = 340.157480310000000000
          Height = 18.897650000000000000
          DataField = 'CWORK'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."CWORK"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 3.779530000000000000
          Top = 967.559680000000100000
          Width = 151.181200000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1030' '#1057#8224#1056#181#1056#1029#1057#8218#1057#1026#1056#181' '#1056#1111#1057#1026#1056#1109#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1057#8249':')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 3.779530000000000000
          Top = 997.795920000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '('#1057#1027#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108')')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 922.205320000000400000
          Width = 672.756340000000000000
          Frame.Typ = [ftTop]
        end
        object Memo57: TfrxMemoView
          Left = 170.078850000000000000
          Top = 789.921770000000300000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 170.078850000000000000
          Top = 827.717070000000100000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 170.078850000000000000
          Top = 865.512370000000100000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 170.078850000000000000
          Top = 903.307670000000100000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 170.078850000000000000
          Top = 948.662030000000100000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 170.078850000000000000
          Top = 990.236860000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 529.134199999999900000
          Top = 789.921770000000300000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 529.134199999999900000
          Top = 827.717070000000100000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 529.134199999999900000
          Top = 865.512370000000100000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 529.134199999999900000
          Top = 903.307670000000100000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 529.134199999999900000
          Top = 948.662030000000100000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 529.134199999999900000
          Top = 990.236860000000000000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 170.078850000000000000
          Top = 752.126470000000300000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'. '#1056#152'. '#1056#1115'.')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 529.134199999999900000
          Top = 752.126470000000000000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034)
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 529.134199999999900000
          Top = 729.449290000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_MANAGER'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_MANAGER"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 529.134199999999900000
          Top = 767.244590000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_HEAD'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_HEAD"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 529.134199999999900000
          Top = 805.039890000000600000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_ACC'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_ACC"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 529.134199999999900000
          Top = 846.614720000000500000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_CONFIRM'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_CONFIRM"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 529.134199999999900000
          Top = 884.410020000000500000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_FIN'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_FIN"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 529.134199999999900000
          Top = 925.984850000000300000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_WORK'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_WORK"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 529.134199999999900000
          Top = 967.559680000000100000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'D_CENTER_WORK'
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."D_CENTER_WORK"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Top = 166.299320000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187#1056#181':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Top = 298.582870000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1057#1027#1056#1112#1056#181#1057#8218#1057#8249':')
        end
        object Memo80: TfrxMemoView
          Top = 317.480520000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#187#1056#176#1056#1029#1056#1109#1056#1030#1056#176#1057#1039' '#1057#1027#1057#8218#1056#1109#1056#1105#1056#1112#1056#1109#1057#1027#1057#8218#1057#1034':')
        end
        object Memo81: TfrxMemoView
          Left = 147.401670000000000000
          Top = 298.582870000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_ESTIMATE"]')
        end
        object Memo82: TfrxMemoView
          Left = 415.748300000000000000
          Top = 298.582870000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_ESTIMATE"]')
        end
        object Memo83: TfrxMemoView
          Left = 147.401670000000000000
          Top = 317.480520000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_PLAN_COST_PRICE"]')
        end
        object Memo84: TfrxMemoView
          Left = 415.748300000000000000
          Top = 317.480520000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_PLAN_COST_PRICE_S"]')
        end
        object Memo85: TfrxMemoView
          Top = 336.378170000000000000
          Width = 147.401596770000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1057#8224#1056#181#1056#1029#1056#1108#1056#176' %:')
        end
        object Memo86: TfrxMemoView
          Left = 147.401670000000000000
          Top = 336.378170000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_MANAGER_MARGIN"]')
        end
        object Memo87: TfrxMemoView
          Left = 415.748300000000000000
          Top = 336.378170000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_MANAGER_MARGIN_S"]')
        end
        object Memo88: TfrxMemoView
          Top = 241.889920000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176' '#1056#8221#1056#8226#1056#164'.:')
        end
        object Memo89: TfrxMemoView
          Left = 147.401670000000000000
          Top = 241.889920000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_DEF_SUM"]')
        end
        object Memo91: TfrxMemoView
          Top = 260.787570000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1108#1056#176' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176':')
        end
        object Memo92: TfrxMemoView
          Left = 147.401670000000000000
          Top = 260.787570000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_DELIVERY_SUM"]')
        end
        object Memo93: TfrxMemoView
          Left = 415.748300000000000000
          Top = 260.787570000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_DELIVERY_SUM_S"]')
        end
        object Memo94: TfrxMemoView
          Top = 279.685220000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#1108#1056#176' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176' '#1056#8221#1056#8226#1056#164'.:')
        end
        object Memo95: TfrxMemoView
          Left = 147.401670000000000000
          Top = 279.685220000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_DEF_DELIVERY"]')
        end
        object Memo96: TfrxMemoView
          Left = 415.748300000000000000
          Top = 279.685220000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_DEF_DELIVERY_S"]')
        end
        object Memo25: TfrxMemoView
          Top = 355.275820000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#181#1056#1108#1057#8218':')
        end
        object Memo26: TfrxMemoView
          Left = 147.401670000000000000
          Top = 355.275820000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_PROJECT"] - [DBDCH_REQ."O_PROJECT"]')
        end
        object Memo97: TfrxMemoView
          Left = 415.748300000000000000
          Top = 355.275820000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_PROJECT"] - [DBDCH_REQ."N_PROJECT"]')
        end
        object Memo98: TfrxMemoView
          Top = 374.173470000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218':')
        end
        object Memo99: TfrxMemoView
          Left = 147.401670000000000000
          Top = 374.173470000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_AGENT"] - [DBDCH_REQ."O_AGENT"]')
        end
        object Memo100: TfrxMemoView
          Left = 415.748300000000000000
          Top = 374.173470000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_AGENT"] - [DBDCH_REQ."N_AGENT"]')
        end
        object Memo101: TfrxMemoView
          Top = 393.071120000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1169#1056#181#1056#187#1056#1105#1056#181':')
        end
        object Memo102: TfrxMemoView
          Left = 147.401670000000000000
          Top = 393.071120000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_PRODUCT"] - [DBDCH_REQ."O_PRODUCT"]')
        end
        object Memo103: TfrxMemoView
          Left = 415.748300000000000000
          Top = 393.071120000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_PRODUCT"] - [DBDCH_REQ."N_PRODUCT"]')
        end
        object Memo104: TfrxMemoView
          Top = 411.968770000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1105#1056#1111' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176':')
        end
        object Memo105: TfrxMemoView
          Left = 147.401670000000000000
          Top = 411.968770000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."OLD_ORD_TYPE"] - [DBDCH_REQ."O_ORD_TYPE"]')
        end
        object Memo106: TfrxMemoView
          Left = 415.748300000000000000
          Top = 411.968770000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_ORD_TYPE"] - [DBDCH_REQ."N_ORD_TYPE"]')
        end
        object Memo107: TfrxMemoView
          Top = 487.559370000000000000
          Width = 147.401670000000000000
          Height = 49.133890000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#1109#1056#1169#1056#1105#1057#8218#1056#181#1056#187#1057#1034' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176':')
        end
        object Memo108: TfrxMemoView
          Left = 415.748300000000000000
          Top = 487.559370000000000000
          Width = 302.362400000000000000
          Height = 49.133890000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[DBDCH_REQ."N_N_ORDER"] - "[DBDCH_REQ."N_NAME_ORDER"]"')
        end
        object Memo109: TfrxMemoView
          Left = 147.401670000000000000
          Top = 487.559370000000000000
          Width = 268.346630000000000000
          Height = 49.133890000000000000
          DataSet = DBDREQ_TP
          DataSetName = 'DBDREQ_TP'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DBDCH_REQ."O_N_ORDER"] - "[DBDCH_REQ."O_NAME_ORDER"]"')
        end
        object Memo111: TfrxMemoView
          Left = 309.921460000000000000
          Top = 204.094620000000000000
          Width = 105.826776540000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DBDCH_REQ."O_CUR"]')
        end
        object Memo112: TfrxMemoView
          Left = 578.268090000000000000
          Top = 204.094620000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DBDCH_REQ."N_CUR"]')
        end
        object Memo90: TfrxMemoView
          Left = 415.748300000000000000
          Top = 241.889920000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataSet = DBDCH_REQ
          DataSetName = 'DBDCH_REQ'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ##0.00'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBDCH_REQ."NEW_DEF_SUM_S"]')
        end
      end
    end
  end
  object DBDOrder: TfrxDBDataset
    UserName = 'DBDOrder'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_ORDER=ID_ORDER'
      'N_ORDER=N_ORDER'
      'NAME=NAME'
      'AMOUNT=AMOUNT'
      'PRICE=PRICE'
      'PRICEA=PRICEA'
      'ID_CPTYPE=ID_CPTYPE'
      'ID_CPROD=ID_CPROD'
      'ID_AGENT=ID_AGENT'
      'STATUS=STATUS'
      'ID_P=ID_P'
      'AGENT=AGENT'
      'FIO=FIO'
      'TYPEPROD=TYPEPROD'
      'PROD=PROD'
      'NSTATUS=NSTATUS'
      'NCURR=NCURR'
      'ID_DOC=ID_DOC'
      'NDOC=NDOC'
      'ID_PROJECT=ID_PROJECT'
      'ID_PRODUCT=ID_PRODUCT'
      'ID_CURRENCY=ID_CURRENCY'
      'ID_ESTIMATE=ID_ESTIMATE'
      'LID=LID'
      'D_OPEN=D_OPEN'
      'DEF_SUM=DEF_SUM'
      'MANAGER_MARGIN=MANAGER_MARGIN'
      'DELIVERY_SUM=DELIVERY_SUM'
      'DEF_DELIVERY=DEF_DELIVERY'
      'PLAN_COST_PRICE=PLAN_COST_PRICE')
    DataSet = qOrder
    Left = 694
    Top = 46
  end
  object qREQ_TP: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsC_REQ
    SQL.Strings = (
      'select a.name op, na.name nop, t.name otp, nt.name ntp,'
      'd.name obd, nd.name nbd'
      'from change_requests c'
      'left join ptypes t on t.id_ptype = c.old_ptype'
      'left join ptypes nt on nt.id_ptype = c.new_ptype'
      'left join prod_areas a on a.id_p_area = c.old_prod'
      'and a.id_patype = 1'
      'left join prod_areas na on na.id_p_area = c.new_prod'
      'and a.id_patype = 1'
      'left join project_docs d on d.id_project_doc = c.old_base_doc'
      'left join project_docs nd on nd.id_project_doc = c.new_base_doc'
      'where c.id_request = :id_request;')
    Left = 624
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_REQUEST'
        ParamType = ptUnknown
        Size = 4
      end>
    object qREQ_TPOP: TIBStringField
      FieldName = 'OP'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qREQ_TPNOP: TIBStringField
      FieldName = 'NOP'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qREQ_TPOTP: TIBStringField
      FieldName = 'OTP'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qREQ_TPNTP: TIBStringField
      FieldName = 'NTP'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qREQ_TPOBD: TIBStringField
      FieldName = 'OBD'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qREQ_TPNBD: TIBStringField
      FieldName = 'NBD'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
  end
  object dsREQ_TP: TDataSource
    DataSet = qREQ_TP
    Left = 624
    Top = 342
  end
  object DBDREQ_TP: TfrxDBDataset
    UserName = 'DBDREQ_TP'
    CloseDataSource = False
    DataSet = qREQ_TP
    Left = 630
    Top = 238
  end
  object ppm2: TPopupMenu
    Left = 608
    Top = 70
    object N6: TMenuItem
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1074' '#1048#1057
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080' '#1074' '#1094#1077#1085#1090#1088#1072#1083#1100#1085#1086#1081' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093
      OnClick = N7Click
    end
  end
end
