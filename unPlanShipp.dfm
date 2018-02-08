object fmPlanShipp: TfmPlanShipp
  Left = 195
  Top = 114
  Width = 827
  Height = 480
  Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
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
    Top = 245
    Width = 819
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 54
    Width = 819
    Height = 191
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbn1: TDBNavigator
      Left = 2
      Top = 171
      Width = 815
      Height = 18
      DataSource = dmIS.dsPlanSH
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 2
      Width = 815
      Height = 169
      Align = alClient
      DataSource = dmIS.dsPlanSH
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
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      OnDrawColumnCell = dbg1DrawColumnCell
      OnSortMarkingChanged = dbg1SortMarkingChanged
      Columns = <
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'N_ORDER'
          Footer.FieldName = 'N_ORDER'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 307
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'AGENT'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 251
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'MANAGER'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 180
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'AMOUNT'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRICE'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRICE_BEZ_NDS'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'NCURR'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 44
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DEF_PRICE'
          Footer.FieldName = 'DEF_PRICE'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'DEF_PRICE_BEZ_NDS'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PLAN_AMOUNT'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PROGN_AMOUNT'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PLAN_SUMMA'
          Footer.FieldName = 'PLAN_SUMMA'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PLAN_SUMMA_BEZ_NDS'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRODUCED_FROM'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRODUCED'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRODUSED_SUMMA'
          Footer.FieldName = 'PRODUSED_SUMMA'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRODUSED_SUMMA_BEZ_NDS'
          Footers = <>
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'NPROD'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 287
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'NCPTYPE'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'ID_ORDER'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end>
    end
  end
  object p2: TPanel
    Left = 0
    Top = 248
    Width = 819
    Height = 198
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object dbg2: TDBGridEh
      Left = 2
      Top = 2
      Width = 815
      Height = 194
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
      OnDrawColumnCell = dbg2DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'C_D'
          Footer.Value = #1042#1089#1077#1075#1086':'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 58
        end
        item
          EditButtons = <>
          EndEllipsis = True
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
          Title.EndEllipsis = True
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 59
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'PRODUCED'
          Footer.FieldName = 'PRODUCED'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'SHIP'
          Footer.FieldName = 'SHIP'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 56
        end
        item
          EditButtons = <>
          EndEllipsis = True
          FieldName = 'RECIEV'
          Footer.FieldName = 'RECIEV'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Title.TitleButton = True
          Width = 55
        end>
    end
  end
  object clb1: TCoolBar
    Left = 0
    Top = 0
    Width = 819
    Height = 54
    AutoSize = True
    Bands = <
      item
        Control = tlb1
        ImageIndex = -1
        MinHeight = 24
        Width = 815
      end
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 24
        Width = 815
      end>
    object tlb1: TToolBar
      Left = 9
      Top = 0
      Width = 802
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object tb1: TToolButton
        Left = 0
        Top = 0
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
        Caption = 'tb1'
        ImageIndex = 29
        ParentShowHint = False
        ShowHint = True
        OnClick = tb1Click
      end
      object ToolButton2: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 33
        Style = tbsSeparator
      end
      object Label1: TLabel
        Left = 31
        Top = 0
        Width = 13
        Height = 22
        Caption = ' C '
        Layout = tlCenter
      end
      object dtp1: TDateTimePicker
        Left = 44
        Top = 0
        Width = 85
        Height = 22
        Date = 39370.686861446760000000
        Time = 39370.686861446760000000
        TabOrder = 0
      end
      object Label2: TLabel
        Left = 129
        Top = 0
        Width = 20
        Height = 22
        Caption = ' '#1055#1086' '
        Layout = tlCenter
      end
      object dtp2: TDateTimePicker
        Left = 149
        Top = 0
        Width = 84
        Height = 22
        Date = 39370.687275949080000000
        Time = 39370.687275949080000000
        TabOrder = 1
      end
      object ToolButton4: TToolButton
        Left = 233
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 30
        Style = tbsSeparator
      end
      object cb1: TCheckBox
        Left = 241
        Top = 0
        Width = 120
        Height = 22
        Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1089#1091#1084#1084#1072#1084#1080
        TabOrder = 2
      end
      object ToolButton1: TToolButton
        Left = 361
        Top = 0
        Width = 16
        Caption = 'ToolButton1'
        ImageIndex = 32
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 377
        Top = 0
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1086#1074
        Caption = 'tb2'
        DropdownMenu = PopupMenu1
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
      end
      object ToolButton7: TToolButton
        Left = 413
        Top = 0
        Width = 12
        Caption = 'ToolButton7'
        ImageIndex = 33
        Style = tbsSeparator
      end
      object tb3: TToolButton
        Left = 425
        Top = 0
        Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
        Caption = 'tb3'
        DropdownMenu = PopupMenu2
        ImageIndex = 26
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
      end
      object ToolButton8: TToolButton
        Left = 461
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 27
        Style = tbsSeparator
      end
      object Label10: TLabel
        Left = 469
        Top = 0
        Width = 52
        Height = 22
        Caption = '    '#1053#1072#1081#1090#1080':   '
        Layout = tlCenter
      end
      object ed1: TEdit
        Left = 521
        Top = 0
        Width = 102
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyUp = ed1KeyUp
      end
    end
    object ToolBar1: TToolBar
      Left = 9
      Top = 26
      Width = 802
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 1
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Hint = #1042#1089#1077
        Caption = 'ToolButton6'
        Down = True
        Grouped = True
        ImageIndex = 10
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
      end
      object tb8: TToolButton
        Left = 23
        Top = 0
        Hint = #1042#1093#1086#1076#1103#1097#1080#1077' '#1074' '#1087#1083#1072#1085
        Caption = 'tb8'
        Grouped = True
        ImageIndex = 34
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
      end
      object tb9: TToolButton
        Left = 46
        Top = 0
        Hint = #1053#1077' '#1074#1093#1086#1076#1103#1097#1080#1077' '#1074' '#1087#1083#1072#1085
        Caption = 'tb9'
        Grouped = True
        ImageIndex = 16
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
      end
      object ToolButton5: TToolButton
        Left = 69
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object Label5: TLabel
        Left = 77
        Top = 0
        Width = 62
        Height = 22
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088':  '
        Layout = tlCenter
      end
      object lcb1: TDBLookupComboboxEh
        Left = 139
        Top = 0
        Width = 188
        Height = 22
        DropDownBox.Rows = 25
        DropDownBox.Sizable = True
        EditButtons = <>
        Flat = True
        KeyField = 'ID_P'
        ListField = 'FIO'
        ListSource = dmIS.dsMan
        TabOrder = 0
        Visible = True
      end
      object ToolButton3: TToolButton
        Left = 327
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        Style = tbsSeparator
      end
      object Label4: TLabel
        Left = 335
        Top = 0
        Width = 42
        Height = 22
        Caption = #1050#1083#1080#1077#1085#1090': '
        Layout = tlCenter
      end
      object lcb2: TDBLookupComboboxEh
        Left = 377
        Top = 0
        Width = 215
        Height = 22
        DropDownBox.Rows = 25
        DropDownBox.Sizable = True
        EditButtons = <>
        Flat = True
        KeyField = 'ID_ITEM'
        ListField = 'NAME'
        ListSource = dmIS.dsORD_AG
        TabOrder = 1
        Visible = True
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 118
    object N2: TMenuItem
      Caption = #1054#1090#1095#1077#1090' '#1089' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1086#1081
      OnClick = N2Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 400
    Top = 118
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1079#1072#1082#1072#1079#1099
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1055#1088#1086#1075#1085#1086#1079' '#1086#1090#1075#1088#1091#1079#1086#1082
      OnClick = N3Click
    end
  end
end
