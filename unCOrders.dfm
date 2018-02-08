object fmCOrders: TfmCOrders
  Left = 245
  Top = 120
  Width = 755
  Height = 480
  Caption = #1058#1047' ('#1094#1077#1085#1090#1088#1072#1083#1100#1085#1072#1103' '#1073#1072#1079#1072')'
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
  PixelsPerInch = 96
  TextHeight = 13
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 747
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object tb0: TToolButton
      Left = 0
      Top = 0
      Hint = #1047#1072#1087#1080#1089#1100' '#1082#1086#1076#1086#1074' '#1080' '#8470' '#1058#1047' '#1074'  '#1079#1072#1082#1072#1079' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      Caption = 'tb0'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = tb0Click
    end
    object tb3: TToolButton
      Left = 23
      Top = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1058#1047' '#1074' '#1086#1089#1085#1086#1074#1085#1091#1102' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      Caption = 'tb3'
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = tb3Click
    end
    object Label1: TLabel
      Left = 46
      Top = 0
      Width = 22
      Height = 22
      Caption = ' '#1057'    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtp1: TDateTimePicker
      Left = 68
      Top = 0
      Width = 90
      Height = 22
      Date = 38736.569492905090000000
      Time = 38736.569492905090000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnCloseUp = dtp1CloseUp
    end
    object Label2: TLabel
      Left = 158
      Top = 0
      Width = 35
      Height = 22
      Caption = '    '#1055#1086'   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtp2: TDateTimePicker
      Left = 193
      Top = 0
      Width = 90
      Height = 22
      Date = 38736.569571574070000000
      Time = 38736.569571574070000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = dtp1CloseUp
    end
    object ToolButton1: TToolButton
      Left = 283
      Top = 0
      Width = 12
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object tb1: TToolButton
      Left = 295
      Top = 0
      Hint = #1042#1089#1077' '#1079#1072#1082#1072#1079#1099
      Caption = 'tb1'
      Grouped = True
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = dtp1CloseUp
    end
    object tb2: TToolButton
      Left = 318
      Top = 0
      Hint = #1042#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072
      Caption = 'tb2'
      Down = True
      Grouped = True
      ImageIndex = 20
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = dtp1CloseUp
    end
    object ToolButton2: TToolButton
      Left = 341
      Top = 0
      Width = 23
      Caption = 'ToolButton2'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object lcb1: TDBLookupComboboxEh
      Left = 364
      Top = 0
      Width = 140
      Height = 22
      Hint = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      DropDownBox.Rows = 25
      EditButtons = <>
      Flat = True
      KeyField = 'ID_PTYPE'
      ListField = 'NAME'
      ListSource = dmIS.dsPTYPE
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = True
      OnCloseUp = lcb1CloseUp
    end
    object ToolButton5: TToolButton
      Left = 504
      Top = 0
      Width = 18
      Caption = 'ToolButton5'
      Down = True
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ud1: TUpDown
      Left = 522
      Top = 0
      Width = 17
      Height = 22
      TabOrder = 2
      OnClick = ud1Click
    end
    object Label3: TLabel
      Left = 539
      Top = 0
      Width = 55
      Height = 22
      Caption = '    '#1053#1072#1081#1090#1080':   '
    end
    object ed1: TEdit
      Left = 594
      Top = 0
      Width = 121
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
  object dbg1: TDBGrid
    Left = 0
    Top = 24
    Width = 747
    Height = 429
    Align = alClient
    DataSource = dmIS.dsCOrders
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbg1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Rej'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #8470
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRAND'
        Title.Alignment = taCenter
        Width = 297
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMOUNT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_CONFIRM'
        Title.Alignment = taCenter
        Title.Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DC_CONFIRM'
        Title.Alignment = taCenter
        Title.Caption = #1059#1090#1074'. '#1088#1091#1082#1086#1074#1086#1076#1080#1090'.'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_ACCEPT'
        Title.Alignment = taCenter
        Title.Caption = #1055#1088#1080#1085#1103#1090#1086
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SHIPPED'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1075#1088'.'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_TRANSFER'
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1075#1088#1091#1078#1077#1085#1086
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nPTYPE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ORDERTYPE'
        Title.Alignment = taCenter
        Title.Caption = #1058#1080#1087
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ORDER'
        Title.Alignment = taCenter
        Width = 67
        Visible = True
      end>
  end
end
