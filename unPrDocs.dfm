object fmPrDocs: TfmPrDocs
  Left = 192
  Top = 114
  Width = 793
  Height = 591
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1088#1086#1077#1082#1090#1086#1074
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
  object clb1: TCoolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 106
    AutoSize = True
    Bands = <
      item
        Control = Panel2
        ImageIndex = -1
        MinHeight = 76
        Width = 781
      end
      item
        Control = tlb1
        ImageIndex = -1
        MinHeight = 24
        Width = 781
      end>
    object Panel2: TPanel
      Left = 9
      Top = 0
      Width = 768
      Height = 76
      BevelInner = bvLowered
      TabOrder = 0
      object pc1: TPageControl
        Left = 32
        Top = 2
        Width = 734
        Height = 72
        ActivePage = ts1
        Align = alClient
        TabOrder = 0
        object ts1: TTabSheet
          Caption = #1042#1099#1073#1086#1088
          object lb1: TListBox
            Left = 0
            Top = 0
            Width = 726
            Height = 44
            Align = alClient
            Columns = 3
            ItemHeight = 13
            TabOrder = 0
          end
        end
        object ts2: TTabSheet
          Caption = #1057#1090#1072#1090#1091#1089' '#1080' '#1087#1077#1088#1080#1086#1076
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 626
            Top = 0
            Width = 207
            Height = 41
            Caption = #1057#1090#1072#1090#1091#1089
            TabOrder = 0
            object cbx1: TComboBox
              Left = 16
              Top = 14
              Width = 177
              Height = 21
              Style = csDropDownList
              DropDownCount = 12
              ItemHeight = 0
              TabOrder = 0
              Items.Strings = (
                #1051#1102#1073#1086#1081
                #1041#1077#1079' '#1089#1090#1072#1090#1091#1089#1072
                #1053#1086#1074#1099#1081
                #1042' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1080
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1081
                #1054#1090#1082#1083#1086#1085#1077#1085#1085#1099#1081)
            end
          end
          object GroupBox2: TGroupBox
            Left = 166
            Top = 0
            Width = 427
            Height = 41
            Caption = #1055#1077#1088#1080#1086#1076
            TabOrder = 1
            object Label1: TLabel
              Left = 302
              Top = 14
              Width = 14
              Height = 13
              Caption = #1055#1086
            end
            object Label2: TLabel
              Left = 188
              Top = 14
              Width = 7
              Height = 13
              Caption = #1057
            end
            object dtp1: TDateTimePicker
              Left = 200
              Top = 14
              Width = 97
              Height = 21
              Date = 39457.463848888890000000
              Time = 39457.463848888890000000
              TabOrder = 0
            end
            object dtp2: TDateTimePicker
              Left = 320
              Top = 14
              Width = 97
              Height = 21
              Date = 39457.463848888890000000
              Time = 39457.463848888890000000
              TabOrder = 1
            end
            object cbx2: TComboBox
              Left = 8
              Top = 14
              Width = 169
              Height = 21
              Style = csDropDownList
              ItemHeight = 0
              TabOrder = 2
              Items.Strings = (
                #1051#1102#1073#1086#1081
                #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
                #1044#1072#1090#1072' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103)
            end
          end
          object cb1: TCheckBox
            Left = 0
            Top = 0
            Width = 161
            Height = 17
            Caption = #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077' '#1087#1088#1086#1077#1082#1090#1099
            TabOrder = 2
          end
          object cb2: TCheckBox
            Left = 0
            Top = 12
            Width = 161
            Height = 19
            Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077' '#1087#1088#1086#1077#1082#1090#1099
            TabOrder = 3
          end
        end
        object ts3: TTabSheet
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1086#1081#1089#1090#1074#1072
          ImageIndex = 2
          object Label3: TLabel
            Left = 8
            Top = 8
            Width = 79
            Height = 13
            Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
          end
          object Label4: TLabel
            Left = 16
            Top = 32
            Width = 66
            Height = 13
            Caption = #1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072':'
          end
          object Label5: TLabel
            Left = 328
            Top = 8
            Width = 92
            Height = 13
            Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1083':'
          end
          object Label6: TLabel
            Left = 384
            Top = 31
            Width = 39
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090':'
          end
          object lcb1: TDBLookupComboboxEh
            Left = 88
            Top = 0
            Width = 225
            Height = 21
            DropDownBox.Rows = 10
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_PROJ_DOC_TYPE'
            ListField = 'NAME'
            ListSource = dmIS.dsDTyp
            TabOrder = 0
            Visible = True
          end
          object lcb2: TDBLookupComboboxEh
            Left = 88
            Top = 24
            Width = 225
            Height = 21
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_PROJ_TYPE'
            ListField = 'NAME'
            ListSource = dmIS.dsPr_Typ
            TabOrder = 1
            Visible = True
          end
          object lcb3: TDBLookupComboboxEh
            Left = 432
            Top = 0
            Width = 249
            Height = 21
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dmIS.dsID_FIX
            TabOrder = 2
            Visible = True
          end
          object lcb4: TDBLookupComboboxEh
            Left = 432
            Top = 23
            Width = 249
            Height = 21
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_ITEM'
            ListField = 'NAME'
            ListSource = dmIS.dsAg
            TabOrder = 3
            Visible = True
          end
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 2
        Width = 30
        Height = 72
        Align = alLeft
        BevelInner = bvRaised
        TabOrder = 1
        object sb0: TSpeedButton
          Left = 4
          Top = 8
          Width = 23
          Height = 57
          Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
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
          OnClick = sb0Click
        end
      end
    end
    object tlb1: TToolBar
      Left = 9
      Top = 78
      Width = 768
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 1
      object tb1: TToolButton
        Left = 0
        Top = 0
        Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        Caption = 'tb1'
        ImageIndex = 26
        ParentShowHint = False
        ShowHint = True
        OnClick = tb1Click
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 31
        Top = 0
        Caption = 'tb2'
        DropdownMenu = PopupMenu1
        ImageIndex = 13
        Style = tbsDropDown
      end
      object Label32: TLabel
        Left = 67
        Top = 0
        Width = 55
        Height = 22
        Caption = '    '#1053#1072#1081#1090#1080':   '
      end
      object ed1: TEdit
        Left = 122
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
    end
  end
  object p1: TPanel
    Left = 0
    Top = 106
    Width = 785
    Height = 451
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object pc2: TPageControl
      Left = 2
      Top = 2
      Width = 781
      Height = 447
      ActivePage = td1
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      object td1: TTabSheet
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
        object dbn1: TDBNavigator
          Left = 0
          Top = 403
          Width = 773
          Height = 18
          DataSource = dmIS.dsPrDocs
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
        object dbg1: TDBGridEh
          Left = 0
          Top = 0
          Width = 773
          Height = 403
          Align = alClient
          DataSource = dmIS.dsPrDocs
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
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          OnDblClick = dbg1DblClick
          OnSortMarkingChanged = dbg1SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ID_PROJECT_DOC'
              Footer.FieldName = 'ID_PROJECT_DOC'
              Footer.ValueType = fvtCount
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
              Width = 288
            end
            item
              EditButtons = <>
              FieldName = 'NTYPE'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 141
            end
            item
              EditButtons = <>
              FieldName = 'D_DOC'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'D_FIX'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 268
            end
            item
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
              KeyList.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4')
              PickList.Strings = (
                #1041#1077#1079' '#1089#1090#1072#1090#1091#1089#1072
                #1053#1086#1074#1099#1081
                #1042' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1080
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1081
                #1054#1090#1082#1083#1086#1085#1077#1085#1085#1099#1081
                '')
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'ID_DRAFT'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'D_FILL'
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
              FieldName = 'PNAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROJECT'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_AGENT'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'FILL'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 247
            end>
        end
      end
      object td2: TTabSheet
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072
        ImageIndex = 1
        TabVisible = False
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 62
    Top = 176
  end
end
