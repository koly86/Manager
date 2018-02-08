object fmOrders: TfmOrders
  Left = 435
  Top = 137
  Width = 785
  Height = 612
  Caption = #1047#1072#1082#1072#1079#1099
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
  object Splitter1: TSplitter
    Left = 0
    Top = 397
    Width = 777
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object clb1: TCoolBar
    Left = 0
    Top = 0
    Width = 777
    Height = 106
    AutoSize = True
    Bands = <
      item
        Control = Panel2
        ImageIndex = -1
        MinHeight = 76
        Width = 773
      end
      item
        Control = tlb1
        ImageIndex = -1
        MinHeight = 24
        Width = 773
      end>
    object Panel2: TPanel
      Left = 9
      Top = 0
      Width = 760
      Height = 76
      BevelInner = bvLowered
      TabOrder = 0
      object pc1: TPageControl
        Left = 32
        Top = 2
        Width = 726
        Height = 72
        ActivePage = ts1
        Align = alClient
        TabOrder = 0
        object ts1: TTabSheet
          Caption = #1042#1099#1073#1086#1088
          object lb1: TListBox
            Left = 0
            Top = 0
            Width = 718
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
            Left = 116
            Top = 0
            Width = 265
            Height = 41
            Caption = #1057#1090#1072#1090#1091#1089
            TabOrder = 0
            object sb1: TSpeedButton
              Left = 4
              Top = 14
              Width = 23
              Height = 22
              GroupIndex = 1
              Down = True
              Caption = '='
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object sb2: TSpeedButton
              Left = 26
              Top = 14
              Width = 23
              Height = 22
              GroupIndex = 1
              Caption = '>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object sb3: TSpeedButton
              Left = 48
              Top = 14
              Width = 23
              Height = 22
              GroupIndex = 1
              Caption = '<'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cbx1: TComboBox
              Left = 80
              Top = 14
              Width = 177
              Height = 21
              Style = csDropDownList
              DropDownCount = 12
              ItemHeight = 0
              TabOrder = 0
              Items.Strings = (
                #1051#1102#1073#1086#1081
                #1063#1077#1088#1085#1086#1074#1080#1082
                #1059#1090#1074#1077#1088#1078#1076#1077#1085' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
                #1059#1090#1074#1077#1088#1078#1076#1077#1085' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1077#1084
                #1055#1086#1083#1091#1095#1077#1085' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086#1084
                #1059#1090#1074#1077#1088#1078#1076#1077#1085' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
                #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1103
                #1055#1088#1080#1085#1103#1090' '#1074' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1077
                #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085' '#1087#1086#1083#1085#1086#1089#1090#1100#1102
                #1042#1099#1074#1077#1079#1077#1085' '#1087#1086#1083#1085#1086#1089#1090#1100#1102
                #1042#1099#1087#1080#1089#1072#1085' '#1087#1086#1083#1085#1086#1089#1090#1100#1102)
            end
          end
          object GroupBox2: TGroupBox
            Left = 384
            Top = 0
            Width = 427
            Height = 41
            Caption = #1055#1077#1088#1080#1086#1076
            TabOrder = 1
            object lb3: TLabel
              Left = 302
              Top = 14
              Width = 14
              Height = 13
              Caption = #1055#1086
            end
            object lb2: TLabel
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
              OnCloseUp = cbx2CloseUp
              Items.Strings = (
                #1051#1102#1073#1086#1081
                #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
                #1044#1072#1090#1072' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1080
                #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
                #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
                #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1086#1090#1075#1088#1091#1079#1082#1080)
            end
          end
          object cb1: TCheckBox
            Left = 0
            Top = 0
            Width = 113
            Height = 17
            Caption = #1053#1077#1079#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077
            TabOrder = 2
          end
          object cb2: TCheckBox
            Left = 0
            Top = 12
            Width = 97
            Height = 19
            Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077
            TabOrder = 3
          end
          object cb3: TCheckBox
            Left = 0
            Top = 28
            Width = 97
            Height = 17
            Caption = #1054#1090#1074#1077#1088#1075#1085#1091#1090#1099#1077
            TabOrder = 4
            OnClick = cb3Click
          end
          object cb6: TCheckBox
            Left = 820
            Top = 12
            Width = 129
            Height = 17
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object cb7: TCheckBox
            Left = 820
            Top = 28
            Width = 129
            Height = 17
            Caption = #1045#1089#1090#1100' '#1082#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1077
            TabOrder = 6
          end
          object cb8: TCheckBox
            Left = 820
            Top = -2
            Width = 141
            Height = 17
            Caption = #1053#1077' '#1087#1086#1083#1085'. '#1086#1087#1083#1072#1095#1077#1085#1085#1099#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
        end
        object ts3: TTabSheet
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1086#1081#1089#1090#1074#1072
          ImageIndex = 2
          object Label3: TLabel
            Left = 8
            Top = 8
            Width = 76
            Height = 13
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
          end
          object Label4: TLabel
            Left = 8
            Top = 32
            Width = 78
            Height = 13
            Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
          end
          object Label5: TLabel
            Left = 328
            Top = 8
            Width = 56
            Height = 13
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          end
          object Label6: TLabel
            Left = 344
            Top = 31
            Width = 39
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090':'
          end
          object Label7: TLabel
            Left = 656
            Top = 8
            Width = 54
            Height = 13
            Caption = #1044#1080#1079#1072#1081#1085#1077#1088':'
          end
          object Label8: TLabel
            Left = 648
            Top = 31
            Width = 67
            Height = 13
            Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088':'
          end
          object lcb1: TDBLookupComboboxEh
            Left = 88
            Top = 0
            Width = 225
            Height = 21
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P_AREA'
            ListField = 'NAME'
            ListSource = dsPROD
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
            KeyField = 'ID_PTYPE'
            ListField = 'NAME'
            ListSource = dsTPR
            TabOrder = 1
            Visible = True
          end
          object lcb3: TDBLookupComboboxEh
            Left = 392
            Top = 0
            Width = 249
            Height = 21
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dsMAN
            TabOrder = 2
            Visible = True
          end
          object lcb4: TDBLookupComboboxEh
            Left = 392
            Top = 23
            Width = 249
            Height = 21
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_ITEM'
            ListField = 'NAME'
            ListSource = dsAGENTS
            TabOrder = 3
            Visible = True
          end
          object lcb5: TDBLookupComboboxEh
            Left = 720
            Top = 0
            Width = 217
            Height = 21
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dsDEZ
            TabOrder = 4
            Visible = True
          end
          object lcb6: TDBLookupComboboxEh
            Left = 720
            Top = 23
            Width = 217
            Height = 21
            DropDownBox.Rows = 20
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dsCONSTR
            TabOrder = 5
            Visible = True
          end
        end
        object ts4: TTabSheet
          Caption = #1042#1099#1087#1091#1089#1082#1072#1102#1097#1080#1081' '#1091#1095#1072#1089#1090#1086#1082' '#1080' '#1089#1082#1083#1072#1076' '
          ImageIndex = 3
          object Label9: TLabel
            Left = 16
            Top = 8
            Width = 118
            Height = 13
            Caption = #1042#1099#1087#1091#1089#1082#1072#1102#1097#1080#1081' '#1091#1095#1072#1089#1090#1086#1082':'
          end
          object Label10: TLabel
            Left = 8
            Top = 31
            Width = 133
            Height = 13
            Caption = #1057#1082#1083#1072#1076' '#1075#1086#1090#1086#1074#1086#1081' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
          end
          object lcb7: TDBLookupComboboxEh
            Left = 144
            Top = 0
            Width = 300
            Height = 21
            DropDownBox.Rows = 25
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P_AREA'
            ListField = 'NAME'
            ListSource = dsPA_OUT
            TabOrder = 0
            Visible = True
          end
          object lcb8: TDBLookupComboboxEh
            Left = 144
            Top = 23
            Width = 300
            Height = 21
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P_AREA'
            ListField = 'NAME'
            ListSource = dsSTORE
            TabOrder = 1
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
      Width = 760
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
        Width = 7
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 30
        Top = 0
        Hint = #1057#1084#1077#1090#1072' '#1074' Excel'
        Caption = 'ToolButton1'
        DropdownMenu = pmEstExc
        ImageIndex = 26
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Left = 66
        Top = 0
        Hint = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1088#1090#1072
        Caption = 'ToolButton4'
        ImageIndex = 40
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton4Click
      end
      object cbPEO: TCheckBox
        Left = 89
        Top = 0
        Width = 45
        Height = 22
        Hint = #1087#1086' '#1089#1084#1077#1090#1077' '#1055#1069#1054
        Caption = #1055#1069#1054
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 1
        OnClick = cbPEOClick
      end
      object cbKD: TCheckBox
        Left = 134
        Top = 0
        Width = 48
        Height = 22
        Hint = #1087#1086' '#1089#1084#1077#1090#1077' '#1050#1044
        Caption = #1050#1044
        TabOrder = 2
        OnClick = cbKDClick
      end
      object ToolButton5: TToolButton
        Left = 182
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object SpeedButton1: TSpeedButton
        Left = 190
        Top = 0
        Width = 23
        Height = 22
        Hint = #1040#1085#1072#1083#1080#1079
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
          0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
          0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
          CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
          CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
          CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
          CCC77777777777777377330333333333CCC3337F33333333737F370333333333
          0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
          7777777777777777777733333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object tb2: TToolButton
        Left = 213
        Top = 0
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100
        Caption = 'tb2'
        DropdownMenu = PopupMenu2
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
      end
      object Label32: TLabel
        Left = 249
        Top = 0
        Width = 55
        Height = 22
        Caption = '    '#1053#1072#1081#1090#1080':   '
      end
      object ed1: TEdit
        Left = 304
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
      object ToolButton6: TToolButton
        Left = 425
        Top = 0
        Width = 23
        Caption = 'ToolButton6'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object cbRej: TCheckBox
        Left = 448
        Top = 0
        Width = 173
        Height = 22
        Caption = #1053#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1086#1090#1074#1077#1088#1075#1085#1091#1090#1099#1077
        TabOrder = 3
      end
    end
  end
  object p2: TPanel
    Left = 0
    Top = 400
    Width = 777
    Height = 178
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 422
      Top = 2
      Height = 174
      Align = alRight
    end
    object p3: TPanel
      Left = 425
      Top = 2
      Width = 350
      Height = 174
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object dbg4: TDBGridEh
        Left = 2
        Top = 2
        Width = 346
        Height = 152
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
            FieldName = 'PROD_PLAN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.FieldName = 'PROD_PLAN'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
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
          end
          item
            EditButtons = <>
            FieldName = 'O_D'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'O3_D'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'DOG_NUMBER'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'KOL_DAY'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'VID'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end>
      end
      object dbn3: TDBNavigator
        Left = 2
        Top = 154
        Width = 346
        Height = 18
        DataSource = dmIS.dsOrd_PF
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 1
      end
    end
    object pc2: TPageControl
      Left = 2
      Top = 2
      Width = 420
      Height = 174
      ActivePage = ss3
      Align = alClient
      TabOrder = 1
      TabPosition = tpBottom
      object ss1: TTabSheet
        Caption = #1057#1086#1073#1099#1090#1080#1103
        object dbg3: TDBGridEh
          Left = 0
          Top = 0
          Width = 412
          Height = 148
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
      object ss2: TTabSheet
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        ImageIndex = 1
        object dbm1: TDBMemo
          Left = 0
          Top = 0
          Width = 412
          Height = 148
          Align = alClient
          DataField = 'REM'
          DataSource = dsOrders
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object ss3: TTabSheet
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        ImageIndex = 2
        object dbn2: TDBNavigator
          Left = 0
          Top = 130
          Width = 412
          Height = 18
          DataSource = dmIS.dsORD_POS
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
        object dbg5: TDBGridEh
          Left = 0
          Top = 0
          Width = 412
          Height = 130
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
              Width = 46
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
            end
            item
              EditButtons = <>
              FieldName = 'PRICEA_BEZ_NDS'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'sUMPRICE_BEZ_NDS'
              Footers = <>
            end>
        end
      end
      object ss4: TTabSheet
        Caption = #1054#1087#1083#1072#1090#1099
        ImageIndex = 3
        object dbg6: TDBGridEh
          Left = 0
          Top = 0
          Width = 412
          Height = 148
          Align = alClient
          DataSource = dsOrds_p
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
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'D_PACK'
              Footers = <>
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'SHIP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'SHIP_BEZ_NDS'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'PAY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Width = 94
            end
            item
              EditButtons = <>
              FieldName = 'PAY_BEZ_NDS'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'D_ACCEPT'
              Footers = <>
              Width = 116
            end>
        end
      end
    end
  end
  object pc3: TPageControl
    Left = 0
    Top = 106
    Width = 777
    Height = 291
    ActivePage = hs2
    Align = alClient
    TabOrder = 2
    TabPosition = tpBottom
    OnChange = pc3Change
    object hs1: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      object p1: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 265
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object dbg1: TDBGridEh
          Left = 2
          Top = 2
          Width = 765
          Height = 243
          Align = alClient
          DataSource = dsOrders
          Flat = True
          FooterColor = 16776176
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          SumList.Active = True
          TabOrder = 0
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
              Checkboxes = False
              EditButtons = <>
              FieldName = 'IS_RESERVE'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 30
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
              FieldName = 'N_ORDER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footer.FieldName = 'ID_ORDER'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 245
            end
            item
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'SUMPRICE'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = 'SUMPRICE_bez_nds'
              Footers = <>
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'NCURR'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'AGENT'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'D_OPEN'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'D_READY'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'D_CONSTR'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'D_CLOSE'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'TPNAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 173
            end
            item
              EditButtons = <>
              FieldName = 'PRODNAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 186
            end
            item
              EditButtons = <>
              FieldName = 'PA_OUT'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 212
            end
            item
              EditButtons = <>
              FieldName = 'STOTE'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 288
            end
            item
              EditButtons = <>
              FieldName = 'MANAGER'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 258
            end
            item
              EditButtons = <>
              FieldName = 'DESIGNER'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 249
            end
            item
              EditButtons = <>
              FieldName = 'CONSTR'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 236
            end
            item
              EditButtons = <>
              FieldName = 'NSTSTUS'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROJECT'
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
              FieldName = 'ID_ESTIMATE_KD'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'CHARGE'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 49
            end
            item
              Checkboxes = True
              EditButtons = <>
              FieldName = 'OS'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'DEF_SUM_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'DEF_SUM'
              Footer.FieldName = 'DEF_SUM'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'TOTAL_PAYMENT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.FieldName = 'TOTAL_PAYMENT'
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clGreen
              Footer.Font.Height = -11
              Footer.Font.Name = 'MS Sans Serif'
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'TOTAL_PAYMENT_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'DEBT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.FieldName = 'DEBT'
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clMaroon
              Footer.Font.Height = -11
              Footer.Font.Name = 'MS Sans Serif'
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'DEBT_bez_nds'
              Footers = <>
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'LAST_SHIP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clPurple
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'SHIP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #1054#1090#1075#1088#1091' '#1078#1077#1085#1086
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'SUMSHIP'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'SUMSHIP_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'S_SHIP_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'S_SHIP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Footer.FieldName = 'S_SHIP'
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clNavy
              Footer.Font.Height = -11
              Footer.Font.Name = 'MS Sans Serif'
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME_ORD_TYPE'
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'EST_TOTAL_SUM_PEO'
              Footer.DisplayFormat = '### ### ### ##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'EST_TOTAL_SUM_PEO_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'EST_TOTAL_SUM_KD'
              Footer.DisplayFormat = '### ### ### ##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Title.EndEllipsis = True
              Title.TitleButton = True
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'EST_TOTAL_SUM_KD_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_VERSION_PEO'
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
              FieldName = 'DELIVERY_SUM'
              Footers = <>
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'delivery_sum_bez_nds'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ORDKIND'
              Footers = <>
              Title.TitleButton = True
            end>
        end
        object dbn1: TDBNavigator
          Left = 2
          Top = 245
          Width = 765
          Height = 18
          DataSource = dsOrders
          Align = alBottom
          TabOrder = 1
        end
      end
    end
    object hs2: TTabSheet
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 24
        Width = 769
        Height = 221
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        DesignSize = (
          769
          221)
        object Label11: TLabel
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
          DataSource = dsOrders
        end
        object Label12: TLabel
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
          DataSource = dsOrders
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
          Width = 745
          Height = 17
          DataField = 'NAME'
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 56
          Width = 78
          Height = 13
          Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
        end
        object Label15: TLabel
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
          DataSource = dsOrders
        end
        object Label16: TLabel
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
          DataSource = dsOrders
        end
        object Bevel1: TBevel
          Left = 8
          Top = 152
          Width = 828
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
        end
        object Label17: TLabel
          Left = 8
          Top = 192
          Width = 47
          Height = 13
          Caption = #1048#1079#1076#1077#1083#1080#1077':'
        end
        object DBText8: TDBText
          Left = 136
          Top = 192
          Width = 621
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
        object Label18: TLabel
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
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 8
          Top = 160
          Width = 67
          Height = 13
          Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088':'
        end
        object Label20: TLabel
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
          DataField = 'CONSTR'
          DataSource = dsOrders
        end
        object DBText19: TDBText
          Left = 64
          Top = 192
          Width = 65
          Height = 17
          DataField = 'ID_PRODUCT'
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
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
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
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
          DataSource = dsOrders
        end
        object Label23: TLabel
          Left = 648
          Top = 40
          Width = 49
          Height = 13
          Caption = #1057#1084#1077#1090#1072' '#8470':'
        end
        object DBText20: TDBText
          Left = 704
          Top = 40
          Width = 49
          Height = 17
          DataField = 'ID_ESTIMATE'
          DataSource = dsOrders
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
          DataSource = dsOrders
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
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
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
          DataSource = dsOrders
        end
        object DBText5: TDBText
          Left = 296
          Top = 40
          Width = 345
          Height = 17
          DataField = 'PRODNAME'
          DataSource = dsOrders
        end
        object DBText14: TDBText
          Left = 96
          Top = 56
          Width = 313
          Height = 17
          DataField = 'TPNAME'
          DataSource = dsOrders
        end
        object DBText17: TDBText
          Left = 56
          Top = 72
          Width = 57
          Height = 17
          DataField = 'ID_AGENT'
          DataSource = dsOrders
        end
        object Label26: TLabel
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
          DataSource = dsOrders
        end
        object Label27: TLabel
          Left = 144
          Top = 112
          Width = 37
          Height = 13
          Caption = #1057#1091#1084#1084#1072':'
        end
        object DBText21: TDBText
          Left = 288
          Top = 112
          Width = 65
          Height = 17
          DataField = 'NCURR'
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText23: TDBText
          Left = 192
          Top = 112
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'SUMPRICE'
          DataSource = dsOrders
        end
        object Label29: TLabel
          Left = 552
          Top = 56
          Width = 94
          Height = 13
          Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
        end
        object DBText26: TDBText
          Left = 656
          Top = 56
          Width = 97
          Height = 17
          DataField = 'D_READY'
          DataSource = dsOrders
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
          DataField = 'NSTSTUS'
          DataSource = dsOrders
        end
        object Label13: TLabel
          Left = 224
          Top = 128
          Width = 85
          Height = 13
          Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057':'
        end
        object DBText4: TDBText
          Left = 312
          Top = 128
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'SUMPRICE_bez_nds'
          DataSource = dsOrders
        end
        object DBText24: TDBText
          Left = 424
          Top = 128
          Width = 65
          Height = 17
          DataField = 'NCURR'
          DataSource = dsOrders
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cb4: TCheckBox
          Left = 376
          Top = 112
          Width = 105
          Height = 17
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1077
          TabOrder = 0
        end
        object cb5: TCheckBox
          Left = 416
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
        object pnCli: TPanel
          Left = 248
          Top = 160
          Width = 393
          Height = 105
          Color = clMoneyGreen
          TabOrder = 2
          Visible = False
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 36
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090
          end
          object Label2: TLabel
            Left = 8
            Top = 40
            Width = 37
            Height = 13
            Caption = #1055#1088#1086#1077#1082#1090
          end
          object lcbAg: TDBLookupComboboxEh
            Left = 56
            Top = 12
            Width = 329
            Height = 21
            DropDownBox.Rows = 15
            DropDownBox.Sizable = True
            DropDownBox.Width = 500
            EditButtons = <>
            KeyField = 'ID_ITEM'
            ListField = 'NAME;ID_ITEM'
            ListSource = dsAgent
            TabOrder = 0
            Visible = True
            OnCloseUp = lcbAgCloseUp
          end
          object lcbProj: TDBLookupComboboxEh
            Left = 56
            Top = 40
            Width = 329
            Height = 21
            DropDownBox.Rows = 15
            DropDownBox.Sizable = True
            DropDownBox.Width = 500
            EditButtons = <>
            KeyField = 'ID_PROJECT'
            ListField = 'NAME;ID_PROjECT'
            ListSource = dsProj
            TabOrder = 1
            Visible = True
          end
          object BitBtn1: TBitBtn
            Left = 224
            Top = 72
            Width = 75
            Height = 25
            Caption = #1047#1072#1084#1077#1085#1080#1090#1100
            TabOrder = 2
            OnClick = BitBtn1Click
            Kind = bkOK
          end
          object BitBtn2: TBitBtn
            Left = 302
            Top = 72
            Width = 75
            Height = 25
            Caption = #1054#1090#1084#1077#1085#1072
            TabOrder = 3
            OnClick = BitBtn2Click
            Kind = bkCancel
          end
        end
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 769
        Height = 24
        AutoSize = True
        Caption = 'tlb1'
        Flat = True
        Images = fmMain.il1
        TabOrder = 1
        object kb1: TToolButton
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
        object ToolButton3: TToolButton
          Left = 36
          Top = 0
          Width = 13
          Caption = 'ToolButton1'
          ImageIndex = 14
          Style = tbsSeparator
        end
        object kb2: TToolButton
          Left = 49
          Top = 0
          Hint = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091'-'#1086#1089#1085#1086#1074#1072#1085#1080#1102
          Caption = 'kb2'
          ImageIndex = 7
          ParentShowHint = False
          ShowHint = True
          OnClick = kb2Click
        end
        object kb3: TToolButton
          Left = 72
          Top = 0
          Hint = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
          Caption = 'kb3'
          ImageIndex = 30
          ParentShowHint = False
          ShowHint = True
          OnClick = kb3Click
        end
        object ToolButton7: TToolButton
          Left = 95
          Top = 0
          Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
          Caption = 'ToolButton7'
          ImageIndex = 39
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton7Click
        end
      end
    end
    object hs3: TTabSheet
      Caption = #1055#1088#1086#1077#1082#1090
      ImageIndex = 2
      TabVisible = False
    end
  end
  object qOrders: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qOrdersCalcFields
    SQL.Strings = (
      'select p.id_order, p.n_order, p.name, p.amount, p.id_agent,'
      '(p.price + p.pricea) sumprice, c.name ncurr, i.name agent,'
      'p.d_open, p.d_ready, p.d_constr, p.d_close, p.status,'
      'p.id_cprod, p.id_cptype, pt.name tpname, a.name prodname,'
      'a1.name pa_out, a2.name stote, r1.fio manager, r2.fio designer,'
      
        'r3.fio constr, p.f_constr, p.rem, p.d_reject, p.id_doc, p.id_pro' +
        'ject,'
      'p.id_product, p.id_estimate, p.id_version, '
      'coalesce(p.is_charge,0) charge, coalesce(p.is_os,0) os,'
      'p.def_sum, p.total_payment, p.last_ship, p.ship,'
      '(p.price + p.pricea)*coalesce(p.ship,0)/p.amount sumship,'
      'coalesce(p.def_sum,0)*coalesce(p.ship,0)/p.amount s_ship,'
      'coalesce(p.def_sum,0)*coalesce(p.ship,0)/p.amount'
      '- coalesce(p.total_payment,0) debt, ot.name name_ord_type,'
      
        'ee.total_sum est_total_sum_peo, e1.total_sum est_total_sum_kd, p' +
        '.id_estimate_kd,ee.id_version id_version_peo, p.is_reserve, p.de' +
        'livery_sum, k.name ordkind'
      'from PROJECT_ORDS P '
      'left join ITEMS I on P.ID_AGENT = I.ID_ITEM'
      'left join projects j on j.ID_PROJECT = P.ID_PROJECT'
      'left join ord_types ot on ot.id_type = p.ord_type'
      'join currency c on c.id_currency = p.id_currency'
      'join ptypes pt on pt.id_ptype = p.id_cptype'
      'join prod_areas a on a.id_p_area = p.id_cprod'
      'left join prod_areas a1 on a1.id_p_area = p.id_pa_out'
      'left join prod_areas a2 on a2.id_p_area = p.id_store'
      'left join personnel r1 on r1.id_p = j.id_manager'
      'left join personnel r2 on r2.id_p = j.id_designer'
      'left join personnel r3 on r3.id_p = p.id_constr'
      'left join estimates ee on ee.id_estimate = p.id_estimate'
      'left join estimates e1 on e1.id_estimate = p.id_estimate_kd'
      'left join order_kinds k on k.id_ord_kind = p.ord_kind')
    Left = 32
    Top = 144
    object qOrdersID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdersN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qOrdersNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qOrdersAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qOrdersID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qOrdersSUMPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMPRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qOrdersSUMPRICE_bez_nds: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMPRICE_bez_nds'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersNCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qOrdersAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOrdersD_OPEN: TDateTimeField
      DisplayLabel = #1054#1090#1082#1088#1099#1090#1086
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qOrdersD_READY: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object qOrdersD_CONSTR: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1082#1086#1085#1089#1090#1088'. '#1076#1086#1082'.'
      FieldName = 'D_CONSTR'
      Origin = '"PROJECT_ORDS"."D_CONSTR"'
    end
    object qOrdersD_CLOSE: TDateTimeField
      DisplayLabel = #1047#1072#1082#1088#1099#1090#1086
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qOrdersSTATUS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qOrdersID_CPROD: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1080#1079#1074'.'
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object qOrdersID_CPTYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1087#1088#1086#1076#1091#1082'.'
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object qOrdersTPNAME: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'TPNAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qOrdersPRODNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'PRODNAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qOrdersPA_OUT: TIBStringField
      DisplayLabel = #1042#1099#1087#1091#1089#1082'. '#1091#1095#1072#1089#1090#1086#1082
      FieldName = 'PA_OUT'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qOrdersSTOTE: TIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STOTE'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qOrdersMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdersDESIGNER: TIBStringField
      DisplayLabel = #1044#1080#1079#1072#1081#1085#1077#1088
      FieldName = 'DESIGNER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdersCONSTR: TIBStringField
      DisplayLabel = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088
      FieldName = 'CONSTR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdersF_CONSTR: TDateTimeField
      FieldName = 'F_CONSTR'
      Origin = '"PROJECT_ORDS"."F_CONSTR"'
    end
    object qOrdersREM: TMemoField
      FieldName = 'REM'
      Origin = '"PROJECT_ORDS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOrdersD_REJECT: TDateTimeField
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qOrdersID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object qOrdersID_PROJECT: TIntegerField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qOrdersID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qOrdersID_ESTIMATE: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1055#1069#1054
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qOrdersID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1050#1044
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qOrdersCHARGE: TIntegerField
      DisplayLabel = #1045#1089#1090#1100' '#1082#1086#1084#1080#1089#1089'.'
      FieldName = 'CHARGE'
      ProviderFlags = []
    end
    object qOrdersOS: TIntegerField
      DisplayLabel = #1054#1089#1085'. '#1089#1088#1077#1076#1089#1090#1074#1072
      FieldName = 'OS'
      ProviderFlags = []
    end
    object qOrdersDEF_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' ('#1088#1091#1073'.)'
      FieldName = 'DEF_SUM'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersDEF_SUM_bez_nds: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' ('#1088#1091#1073'.)'#39' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'DEF_SUM_bez_nds'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersTOTAL_PAYMENT: TFloatField
      DisplayLabel = #1054#1087#1083#1072#1095#1077#1085#1086' ('#1088#1091#1073'.)'
      FieldName = 'TOTAL_PAYMENT'
      Origin = '"PROJECT_ORDS"."TOTAL_PAYMENT"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersTOTAL_PAYMENT_bez_nds: TFloatField
      DisplayLabel = #1054#1087#1083#1072#1095#1077#1085#1086' ('#1088#1091#1073'.)'#39' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'TOTAL_PAYMENT_bez_nds'
      Origin = '"PROJECT_ORDS"."TOTAL_PAYMENT"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersLAST_SHIP: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1089#1083'. '#1086#1090#1075#1088#1091#1079#1082#1080
      FieldName = 'LAST_SHIP'
      Origin = '"PROJECT_ORDS"."LAST_SHIP"'
    end
    object qOrdersSHIP: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086
      FieldName = 'SHIP'
      Origin = '"PROJECT_ORDS"."SHIP"'
    end
    object qOrdersSUMSHIP: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086' '#1085#1072' '#1089#1091#1084#1084#1091
      FieldName = 'SUMSHIP'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersSUMSHIP_bez_nds: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086' '#1085#1072' '#1089#1091#1084#1084#1091' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMSHIP_bez_nds'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersS_SHIP: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086' ('#1088#1091#1073')'
      FieldName = 'S_SHIP'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersS_SHIP_bez_nds: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086' ('#1088#1091#1073')'#39' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'S_SHIP_bez_nds'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersDEBT: TFloatField
      DisplayLabel = #1053#1077' '#1086#1087#1083#1072#1095#1077#1085#1086' ('#1088#1091#1073'.)'
      FieldName = 'DEBT'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersDEBT_bez_nds: TFloatField
      DisplayLabel = #1053#1077' '#1086#1087#1083#1072#1095#1077#1085#1086' ('#1088#1091#1073'.)'#39' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'DEBT_bez_nds'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersNAME_ORD_TYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORD_TYPE'
      Origin = '"ORD_TYPES"."NAME"'
      Size = 32
    end
    object qOrdersEST_TOTAL_SUM_PEO: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077' '#1055#1069#1054
      FieldName = 'EST_TOTAL_SUM_PEO'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersEST_TOTAL_SUM_PEO_bez_nds: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077' '#1055#1069#1054' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'EST_TOTAL_SUM_PEO_bez_nds'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersEST_TOTAL_SUM_KD: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077' '#1050#1044
      FieldName = 'EST_TOTAL_SUM_KD'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersEST_TOTAL_SUM_KD_bez_nds: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1087#1086' '#1089#1084#1077#1090#1077' '#1050#1044' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'EST_TOTAL_SUM_KD_bez_nds'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersID_ESTIMATE_KD: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1050#1044
      FieldName = 'ID_ESTIMATE_KD'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE_KD"'
    end
    object qOrdersID_VERSION_PEO: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1055#1069#1054
      FieldName = 'ID_VERSION_PEO'
      Origin = '"ESTIMATES"."ID_VERSION"'
    end
    object qOrdersIS_RESERVE: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074
      FieldName = 'IS_RESERVE'
      Origin = '"PROJECT_ORDS"."IS_RESERVE"'
    end
    object qOrdersDELIVERY_SUM: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'DELIVERY_SUM'
      Origin = '"PROJECT_ORDS"."DELIVERY_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersdelivery_sum_bez_nds: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'delivery_sum_bez_nds'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersORDKIND: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ORDKIND'
      Origin = '"ORDER_KINDS"."NAME"'
      Size = 32
    end
    object qOrdersNSTSTUS: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkCalculated
      FieldName = 'NSTSTUS'
      Size = 32
      Calculated = True
    end
  end
  object dsOrders: TDataSource
    DataSet = qOrders
    Left = 32
    Top = 184
  end
  object qMAN: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_P, FIO '
      'from PERSONNEL'
      'where ID_C_MAN is not null'
      'order by FIO')
    Left = 168
    Top = 146
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
    Left = 168
    Top = 186
  end
  object qPROD: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_P_AREA, NAME '
      'from PROD_AREAS'
      'where ID_PATYPE = 1')
    Left = 72
    Top = 146
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
  object qTPR: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_PTYPE, NAME from PTYPES'
      'where STATUS = 1'
      'order by NAME')
    Left = 120
    Top = 146
    object qTPRID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"PTYPES"."ID_PTYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qTPRNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
  end
  object dsPROD: TDataSource
    DataSet = qPROD
    Left = 72
    Top = 186
  end
  object dsTPR: TDataSource
    DataSet = qTPR
    Left = 120
    Top = 186
  end
  object dsAGENTS: TDataSource
    DataSet = qAGENTS
    Left = 216
    Top = 186
  end
  object qAGENTS: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct I.ID_ITEM, I.NAME'
      'from PROJECT_ORDS P'
      'join ITEMS I on I.ID_ITEM = P.ID_AGENT'
      'order by I.NAME')
    Left = 216
    Top = 146
    object qAGENTSID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAGENTSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object qDEZ: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct R.ID_P, R.FIO'
      'from PROJECTS P'
      'join PERSONNEL R on R.ID_P = P.ID_DESIGNER'
      'order by R.FIO')
    Left = 264
    Top = 146
    object qDEZID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDEZFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object qCONSTR: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct R.ID_P, R.FIO'
      'from PROJECT_ORDS P'
      'join PERSONNEL R on R.ID_P = P.ID_CONSTR'
      'order by R.FIO')
    Left = 312
    Top = 146
    object qCONSTRID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCONSTRFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsDEZ: TDataSource
    DataSet = qDEZ
    Left = 264
    Top = 186
  end
  object dsCONSTR: TDataSource
    DataSet = qCONSTR
    Left = 312
    Top = 186
  end
  object qPA_OUT: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct a.ID_P_AREA, a.NAME'
      'from PROD_AREAS a'
      'join project_ords p on p.id_pa_out = a.id_p_area'
      'where a.ID_PATYPE IN(4, 5)'
      'order by a.NAME')
    Left = 360
    Top = 146
    object qPA_OUTID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPA_OUTNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object qSTORE: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_P_AREA, NAME'
      'from PROD_AREAS'
      'where ID_PATYPE = 10'
      'order by NAME')
    Left = 416
    Top = 146
    object qSTOREID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSTORENAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object dsPA_OUT: TDataSource
    DataSet = qPA_OUT
    Left = 360
    Top = 186
  end
  object dsSTORE: TDataSource
    DataSet = qSTORE
    Left = 408
    Top = 210
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 280
    object N1: TMenuItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1080#1079#1076#1077#1083#1080#1077' ('#1085#1072' '#1090#1080#1088#1072#1078')'
      OnClick = N3Click
    end
    object N8: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1080#1079#1076#1077#1083#1080#1077' ('#1079#1072' '#1096#1090#1091#1082#1091')'
      OnClick = N8Click
    end
  end
  object qORD_SUM_PACK: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qOrdersCalcFields
    SQL.Strings = (
      'select p.id_order, p.n_order, p.name, p.amount, p.id_agent,'
      '(P.PRICE + P.PRICEA) SUMPRICE, c.name NCURR, I.NAME AGENT,'
      'p.d_open, p.d_ready, p.d_constr, p.d_close, p.status,'
      'p.id_cprod, p.id_cptype, pt.name tpname, a.name prodname,'
      'a1.name pa_out, a2.name stote, r1.fio manager, r2.fio designer,'
      
        'r3.fio constr, p.f_constr, p.rem, p.d_reject, p.id_doc, p.id_pro' +
        'ject,'
      'p.id_product, p.id_estimate, p.id_version, p.prodused,'
      'p.receive, p.ship, sp.sproduced, sp.srecieved, sp.sshipped,'
      'p.def_sum, p.total_payment, p.last_ship,'
      'coalesce(p.def_sum,0)*coalesce(p.ship,0)/p.amount s_ship,'
      'coalesce(p.def_sum,0)*coalesce(p.ship,0)/p.amount'
      '- coalesce(p.total_payment,0) debt'
      'from ((PROJECT_ORDS P left join ITEMS I'
      'on P.ID_AGENT = I.ID_ITEM) left join PROJECTS J'
      'on J.ID_PROJECT = P.ID_PROJECT) join currency c'
      'on c.id_currency = p.id_currency join ptypes pt'
      'on pt.id_ptype = p.id_cptype'
      'join prod_areas a on a.id_p_area = p.id_cprod'
      'left join prod_areas a1 on a1.id_p_area = p.id_pa_out'
      'left join prod_areas a2 on a2.id_p_area = p.id_store'
      'left join personnel r1 on r1.id_p = j.id_manager'
      'left join personnel r2 on r2.id_p = j.id_designer'
      'left join personnel r3 on r3.id_p = p.id_constr'
      'join orders_sum_pack sp on sp.id_order = p.id_order ')
    Left = 496
    Top = 152
    object IntegerField1: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object IBStringField2: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object IBBCDField1: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMPRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object IBStringField3: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object IBStringField4: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #1054#1090#1082#1088#1099#1090#1086
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object DateField1: TDateField
      DisplayLabel = #1044#1086#1090#1072' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object DateField2: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1082#1086#1085#1089#1090#1088'. '#1076#1086#1082'.'
      FieldName = 'D_CONSTR'
      Origin = '"PROJECT_ORDS"."D_CONSTR"'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #1047#1072#1082#1088#1099#1090#1086
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1090#1072#1090#1091#1089#1072
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1080#1079#1074'.'
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object IntegerField5: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1087#1088#1086#1076#1091#1082'.'
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object IBStringField5: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'TPNAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object IBStringField6: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'PRODNAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object IBStringField7: TIBStringField
      DisplayLabel = #1042#1099#1087#1091#1089#1082'. '#1091#1095#1072#1089#1090#1086#1082
      FieldName = 'PA_OUT'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object IBStringField8: TIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'STOTE'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object IBStringField9: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object IBStringField10: TIBStringField
      DisplayLabel = #1044#1080#1079#1072#1081#1085#1077#1088
      FieldName = 'DESIGNER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object IBStringField11: TIBStringField
      DisplayLabel = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088
      FieldName = 'CONSTR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'F_CONSTR'
      Origin = '"PROJECT_ORDS"."F_CONSTR"'
    end
    object MemoField1: TMemoField
      FieldName = 'REM'
      Origin = '"PROJECT_ORDS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object IntegerField7: TIntegerField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object IntegerField9: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object StringField1: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkCalculated
      FieldName = 'NSTSTUS'
      Size = 32
      Calculated = True
    end
    object qORD_SUM_PACKPRODUSED: TFloatField
      FieldName = 'PRODUSED'
      Origin = '"PROJECT_ORDS"."PRODUSED"'
    end
    object qORD_SUM_PACKRECEIVE: TFloatField
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS"."RECEIVE"'
    end
    object qORD_SUM_PACKSHIP: TFloatField
      FieldName = 'SHIP'
      Origin = '"PROJECT_ORDS"."SHIP"'
    end
    object qORD_SUM_PACKSPRODUCED: TFloatField
      FieldName = 'SPRODUCED'
      Origin = '"ORDERS_SUM_PACK"."SPRODUCED"'
    end
    object qORD_SUM_PACKSRECIEVED: TFloatField
      FieldName = 'SRECIEVED'
      Origin = '"ORDERS_SUM_PACK"."SRECIEVED"'
    end
    object qORD_SUM_PACKSSHIPPED: TFloatField
      FieldName = 'SSHIPPED'
      Origin = '"ORDERS_SUM_PACK"."SSHIPPED"'
    end
    object qORD_SUM_PACKDEF_SUM: TFloatField
      FieldName = 'DEF_SUM'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
    end
    object qORD_SUM_PACKTOTAL_PAYMENT: TFloatField
      FieldName = 'TOTAL_PAYMENT'
      Origin = '"PROJECT_ORDS"."TOTAL_PAYMENT"'
    end
    object qORD_SUM_PACKLAST_SHIP: TDateField
      FieldName = 'LAST_SHIP'
      Origin = '"PROJECT_ORDS"."LAST_SHIP"'
    end
    object qORD_SUM_PACKS_SHIP: TFloatField
      FieldName = 'S_SHIP'
      ProviderFlags = []
    end
    object qORD_SUM_PACKDEBT: TFloatField
      FieldName = 'DEBT'
      ProviderFlags = []
    end
  end
  object dbdSUM_PACK: TfrxDBDataset
    UserName = 'dbdSUM_PACK'
    CloseDataSource = False
    DataSet = qORD_SUM_PACK
    Left = 579
    Top = 296
  end
  object rSUM_PACK: TfrxReport
    Version = '3.23.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39458.774150023150000000
    ReportOptions.LastChange = 39458.774150023150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 539
    Top = 224
    Datasets = <
      item
        DataSet = dbdSUM_PACK
        DataSetName = 'dbdSUM_PACK'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 381.732530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#176' '#1056#1111#1056#1109' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176#1056#1112)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 876.850960000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Top = 30.236239999999990000
          Width = 1043.150280000000000000
          Height = 64.252010000000000000
          StretchMode = smMaxHeight
          Memo.UTF8 = (
            '[SelOrders]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 1046.929810000000000000
        DataSet = dbdSUM_PACK
        DataSetName = 'dbdSUM_PACK'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbdSUM_PACK."N_ORDER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbdSUM_PACK."NAME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 238.110390000000000000
          Width = 139.842487950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'AGENT'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbdSUM_PACK."AGENT"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 132.283427950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'MANAGER'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbdSUM_PACK."MANAGER"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 510.236550000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."AMOUNT"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 566.929499999999900000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SUMPRICE'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."SUMPRICE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 646.299630000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NCURR'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbdSUM_PACK."NCURR"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 672.756340000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'PRODUSED'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."PRODUSED"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 721.890230000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SPRODUCED'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."SPRODUCED"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 797.480830000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SHIP'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."SHIP"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 846.614720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'SSHIPPED'
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."SSHIPPED"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 922.205320000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."RECEIVE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 971.339210000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."SRECIEVED"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo18: TfrxMemoView
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1108#1056#176#1056#183)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 94.488250000000000000
          Width = 143.622140000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 238.110390000000000000
          Width = 139.842610000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 377.953000000000000000
          Width = 132.283550000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1114#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 510.236550000000000000
          Width = 56.692950000000010000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 566.929499999999900000
          Width = 79.370130000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 646.299630000000000000
          Width = 26.456710000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#176#1056#187#1057#1035#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 672.756340000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1110#1056#1109#1057#8218#1056#1109#1056#1030' '#1056#187#1056#181#1056#1029#1056#1109)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 721.890230000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1110#1056#1109#1057#8218#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 797.480830000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1030#1056#181#1056#183#1056#181' '#1056#1029#1056#1109)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 846.614720000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1030#1056#181#1056#183#1056#181#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 922.205320000000000000
          Width = 49.133890000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1111#1056#1105#1057#1027#1056#176' '#1056#1029#1056#1109)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 971.339210000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000010000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          Left = 589.606680000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109':')
        end
        object Memo32: TfrxMemoView
          Left = 702.992580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."SPRODUCED">)]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 827.717070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."SSHIPPED">)]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dbdSUM_PACK
          DataSetName = 'dbdSUM_PACK'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."SRECIEVED">)]')
          ParentFont = False
        end
      end
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 500
    Top = 278
    object N2: TMenuItem
      Caption = #1054#1090#1075#1088#1091#1079#1082#1072
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #1054#1087#1083#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1086#1082
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1054#1087#1083#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1086#1082' ('#1084#1077#1085#1077#1076#1078#1077#1088', '#1082#1083#1080#1077#1085#1090')'
      OnClick = N5Click
    end
  end
  object rDebt: TfrxReport
    Version = '3.23.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39798.608185439810000000
    ReportOptions.LastChange = 39798.608185439810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 224
    Datasets = <
      item
        DataSet = dBDDebt
        DataSetName = 'dBDDebt'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779530000000001000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1109#1057#8218#1056#1110#1057#1026#1057#1107#1056#183#1056#1109#1056#1108)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 1043.150280000000000000
          Height = 64.252010000000000000
          StretchMode = smMaxHeight
          Memo.UTF8 = (
            '[SelOrd]')
        end
        object Memo16: TfrxMemoView
          Left = 873.071430000000000000
          Top = 3.779530000000001000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 30.236240000000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        object Memo14: TfrxMemoView
          Left = 264.567100000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1114#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 385.512060000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1118#1056#8212)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 98.267780000000000000
          Width = 166.299320000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1118#1056#8212)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 604.724800000000000000
          Width = 56.692950000000010000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1118#1056#8212' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 661.417750000000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1110#1057#1026#1057#1107#1056#182#1056#181' '#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 714.331170000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#1109#1057#1027#1056#187'. '#1056#1109#1057#8218#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1110#1057#1026#1057#1107#1056#182#1056#181#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1056#1115#1056#1111#1056#187#1056#176#1057#8225#1056#181#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#1027#1057#8218#1056#176#1056#187#1056#1109#1057#1027#1057#1034' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1056#1105#1057#8218#1057#1034' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        DataSet = dBDDebt
        DataSetName = 'dBDDebt'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 264.567100000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'MANAGER'
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dBDDebt."MANAGER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 385.512060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'AGENT'
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dBDDebt."AGENT"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [dBDDebt."N_ORDER"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dBDDebt."NAME"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 604.724800000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dBDDebt."AMOUNT"] ')
        end
        object Memo7: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dBDDebt."DEF_SUM"] ')
        end
        object Memo8: TfrxMemoView
          Left = 661.417750000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dBDDebt."SHIP"] ')
        end
        object Memo9: TfrxMemoView
          Left = 714.331170000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'LAST_SHIP'
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dBDDebt."LAST_SHIP"]')
        end
        object Memo10: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dBDDebt."S_SHIP"] ')
        end
        object Memo11: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dBDDebt."TOTAL_PAYMENT"] ')
        end
        object Memo12: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dBDDebt."DEBT"] ')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000010000
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        object Memo27: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dBDDebt."DEF_SUM">)] ')
        end
        object Memo28: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dBDDebt."S_SHIP">)] ')
        end
        object Memo29: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dBDDebt."TOTAL_PAYMENT">)] ')
        end
        object Memo30: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dBDDebt."DEBT">)] ')
        end
        object Memo31: TfrxMemoView
          Left = 434.645950000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109':')
        end
      end
    end
  end
  object dBDDebt: TfrxDBDataset
    UserName = 'dBDDebt'
    CloseDataSource = False
    DataSet = qOrders
    Left = 641
    Top = 274
  end
  object qOrds_p: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsOrders
    SQL.Strings = (
      'select pp.id_packpos, pp.id_order, pp.id_c,'
      'k.d_pack, k.d_accept,'
      'o.def_sum*pp.shipped/o.amount ship,'
      
        '(select nds_val from get_nds_sum(o.def_sum*pp.shipped/o.amount,1' +
        ')) ship_bez_nds,'
      'cast(null as double precision) pay,'
      
        '(select nds_val from get_nds_sum(cast(null as double precision),' +
        '1)) pay_bez_nds'
      'from packpos pp join packing k'
      'on k.id_packing = pp.id_packing'
      'and k.d_accept is not null'
      'and k.pack_type = 2'
      'join project_ords o on o.id_order = pp.id_order'
      'where pp.id_order = :id_order'
      'union'
      'select p.id_paypos, p.id_order, p.id_c,'
      'p.d_perform, p.d_fix, cast(null as double precision), p.total,'
      
        'cast(null as double precision), (select nds_val from get_nds_sum' +
        '(p.total,1))'
      'from project_ords_paypos p'
      'where p.id_order = :id_order')
    Left = 36
    Top = 230
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_order'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_order'
        ParamType = ptUnknown
      end>
    object qOrds_pID_PACKPOS: TIntegerField
      FieldName = 'ID_PACKPOS'
      ProviderFlags = []
    end
    object qOrds_pID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      ProviderFlags = []
    end
    object qOrds_pID_C: TIntegerField
      FieldName = 'ID_C'
      ProviderFlags = []
    end
    object qOrds_pD_PACK: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_PACK'
      ProviderFlags = []
    end
    object qOrds_pD_ACCEPT: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1085#1077#1089#1077#1085#1080#1103
      FieldName = 'D_ACCEPT'
      ProviderFlags = []
    end
    object qOrds_pSHIP: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086' ('#1088#1091#1073')'
      FieldName = 'SHIP'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrds_pSHIP_BEZ_NDS: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086' ('#1088#1091#1073') '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SHIP_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrds_pPAY: TFloatField
      DisplayLabel = #1054#1087#1083#1072#1090#1072' ('#1088#1091#1073')'
      FieldName = 'PAY'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrds_pPAY_BEZ_NDS: TFloatField
      DisplayLabel = #1054#1087#1083#1072#1090#1072' ('#1088#1091#1073') '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PAY_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
  end
  object dsOrds_p: TDataSource
    DataSet = qOrds_p
    Left = 36
    Top = 270
  end
  object rManDebt: TfrxReport
    Version = '3.23.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39798.608185439810000000
    ReportOptions.LastChange = 39798.608185439810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 240
    Datasets = <
      item
        DataSet = dbdSUM_PACK
        DataSetName = 'dbdSUM_PACK'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date][Time]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 408.189240000000000000
          Top = 7.559059999999999000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1109#1057#8218#1056#1110#1057#1026#1057#1107#1056#183#1056#1109#1056#1108' ('#1056#1112#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026', '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218')')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
          Width = 1043.150280000000000000
          Height = 64.252010000000000000
          StretchMode = smMaxHeight
          Memo.UTF8 = (
            '[SelOrd2]')
        end
        object Memo16: TfrxMemoView
          Left = 869.291900000000000000
          Top = 3.779530000000001000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026'. [Page#] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 30.236240000000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1118#1056#8212)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 98.267780000000000000
          Width = 408.189240000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1118#1056#8212)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 604.724800000000000000
          Width = 56.692950000000010000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1118#1056#8212' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 661.417750000000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1110#1057#1026#1057#1107#1056#182#1056#181' '#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 714.331170000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1056#1109#1057#1027#1056#187'. '#1056#1109#1057#8218#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1110#1057#1026#1057#1107#1056#182#1056#181#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1056#1115#1056#1111#1056#187#1056#176#1057#8225#1056#181#1056#1029#1056#1109' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#1027#1057#8218#1056#176#1056#187#1056#1109#1057#1027#1057#1034' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1056#1105#1057#8218#1057#1034' ('#1057#1026#1057#1107#1056#177')')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 321.260050000000000000
        Width = 1046.929810000000000000
        DataSet = dbdSUM_PACK
        DataSetName = 'dbdSUM_PACK'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbdSUM_PACK."N_ORDER"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[dbdSUM_PACK."NAME"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 604.724800000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."AMOUNT"] ')
        end
        object Memo7: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."DEF_SUM"] ')
        end
        object Memo8: TfrxMemoView
          Left = 661.417750000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."SHIP"] ')
        end
        object Memo9: TfrxMemoView
          Left = 714.331170000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbdSUM_PACK."LAST_SHIP"]')
        end
        object Memo10: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."S_SHIP"] ')
        end
        object Memo11: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."TOTAL_PAYMENT"] ')
        end
        object Memo12: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."DEBT"] ')
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 34.015770000000010000
        Top = 495.118430000000000000
        Width = 1046.929810000000000000
        object Memo27: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."DEF_SUM">)] ')
        end
        object Memo28: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."S_SHIP">)] ')
        end
        object Memo29: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."TOTAL_PAYMENT">)] ')
        end
        object Memo30: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."DEBT">)] ')
        end
        object Memo31: TfrxMemoView
          Left = 362.834880000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1056#1111#1056#1109' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1057#1107':')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        Condition = 'dbdSUM_PACK."AGENT"'
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218': [dbdSUM_PACK."AGENT"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Width = 491.338900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."AGENT"] , '#1056#8217#1057#1027#1056#181#1056#1110#1056#1109':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."DEF_SUM">)] ')
        end
        object Memo35: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."S_SHIP">)] ')
        end
        object Memo36: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."TOTAL_PAYMENT">)] ')
        end
        object Memo37: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."DEBT">)] ')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        Condition = 'dbdSUM_PACK."MANAGER"'
        object Memo42: TfrxMemoView
          Left = 7.559060000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            #1056#1114#1056#181#1056#1029#1056#181#1056#1169#1056#182#1056#181#1057#1026': [dbdSUM_PACK."MANAGER"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 1046.929810000000000000
        object Memo38: TfrxMemoView
          Left = 506.457020000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."DEF_SUM">)] ')
        end
        object Memo39: TfrxMemoView
          Left = 793.701300000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."S_SHIP">)] ')
        end
        object Memo40: TfrxMemoView
          Left = 876.850960000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."TOTAL_PAYMENT">)] ')
        end
        object Memo41: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dBDDebt
          DataSetName = 'dBDDebt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '### ### ### ##0'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbdSUM_PACK."DEBT">)] ')
        end
        object Memo43: TfrxMemoView
          Left = 7.559060000000000000
          Width = 491.338900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          HAlign = haRight
          Memo.UTF8 = (
            '[dbdSUM_PACK."MANAGER"], '#1056#8217#1057#1027#1056#181#1056#1110#1056#1109':')
          ParentFont = False
        end
      end
    end
  end
  object pmEstExc: TPopupMenu
    Left = 252
    Top = 262
    object N6: TMenuItem
      Caption = #1057#1084#1077#1090#1072' ('#1085#1072' '#1090#1080#1088#1072#1078')'
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1057#1084#1077#1090#1072' ('#1079#1072' '#1096#1090#1091#1082#1091')'
      OnClick = N7Click
    end
  end
  object dsAgent: TDataSource
    DataSet = qAgent
    Left = 488
    Top = 483
  end
  object qAgent: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select i.id_item, i.name'
      'from items i where i.id_parent = 13'
      'order by i.name')
    Left = 520
    Top = 488
    object qAgentID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAgentNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsProj: TDataSource
    DataSet = qProj
    Left = 624
    Top = 467
  end
  object qProj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsAgent
    SQL.Strings = (
      'select p.id_project, p.id_agent, p.name ,p.id_manager, s.fio '
      'from projects p'
      'left join personnel s on s.id_p = p.id_manager'
      'where id_agent = :id_item')
    Left = 584
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qProjID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECTS"."ID_PROJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProjID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECTS"."ID_AGENT"'
    end
    object qProjNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qProjID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"PROJECTS"."ID_MANAGER"'
    end
    object qProjFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 673
    Top = 434
  end
end
