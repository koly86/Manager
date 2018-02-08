object fmEstimate: TfmEstimate
  Left = 206
  Top = 109
  Width = 817
  Height = 480
  Caption = #1048#1079#1076#1077#1083#1080#1103
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
  object Splitter1: TSplitter
    Left = 261
    Top = 0
    Height = 446
    Align = alRight
  end
  object p1: TPanel
    Left = 264
    Top = 0
    Width = 545
    Height = 446
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 0
    object dbg1: TDBGrid
      Left = 2
      Top = 26
      Width = 541
      Height = 418
      Align = alClient
      DataSource = dmIS.dsHEst
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbg1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ESTIMATE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_VERSION'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_CREATE'
          Title.Alignment = taCenter
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Alignment = taCenter
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE_DATA'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 541
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 1
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Width = 17
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object tb1: TToolButton
        Left = 17
        Top = 0
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100' '#1089#1084#1077#1090#1099
        Caption = 'tb1'
        DropdownMenu = PopupMenu1
        ImageIndex = 13
        ParentShowHint = False
        ShowHint = True
        Style = tbsDropDown
        OnClick = tb1Click
      end
      object ToolButton3: TToolButton
        Left = 53
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 61
        Top = 0
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1074#1085#1077#1096#1085#1077#1075#1086' '#1074#1080#1076#1072
        Caption = 'tb2'
        ImageIndex = 30
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object ToolButton5: TToolButton
        Left = 84
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object tb4: TToolButton
        Left = 92
        Top = 0
        Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1084#1077#1090#1099' '#1074' Excel'
        Caption = 'tb4'
        ImageIndex = 26
        ParentShowHint = False
        ShowHint = True
        OnClick = tb4Click
      end
      object ToolButton4: TToolButton
        Left = 115
        Top = 0
        Width = 26
        Caption = 'ToolButton4'
        ImageIndex = 15
        Style = tbsSeparator
      end
      object tb3: TToolButton
        Left = 141
        Top = 0
        Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089#1084#1077#1090#1091' '#1089' '#1079#1072#1082#1072#1079#1086#1084
        Caption = 'tb3'
        ImageIndex = 31
        ParentShowHint = False
        ShowHint = True
        OnClick = tb3Click
      end
      object ToolButton1: TToolButton
        Left = 164
        Top = 0
        Width = 41
        Caption = 'ToolButton1'
        ImageIndex = 14
        Style = tbsSeparator
      end
      object Label1: TLabel
        Left = 205
        Top = 0
        Width = 81
        Height = 22
        Caption = #1053#1072#1081#1090#1080' '#1089#1084#1077#1090#1091' '#8470':'
      end
      object ed1: TEdit
        Left = 286
        Top = 0
        Width = 104
        Height = 22
        TabOrder = 0
        OnKeyUp = ed1KeyUp
      end
    end
  end
  object p2: TPanel
    Left = 0
    Top = 0
    Width = 261
    Height = 446
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object stb1: TStatusBar
      Left = 2
      Top = 425
      Width = 257
      Height = 19
      Panels = <>
      SimplePanel = True
    end
    object dbt1: TDBS_TreeView
      Left = 2
      Top = 33
      Width = 257
      Height = 392
      Align = alClient
      HideSelection = False
      Images = fmProduct.il1
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
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 257
      Height = 31
      Align = alTop
      BevelInner = bvRaised
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 34
        Height = 13
        Caption = #1053#1072#1081#1090#1080':'
      end
      object ed2: TEdit
        Left = 56
        Top = 4
        Width = 121
        Height = 21
        Hint = 
          #1045#1089#1083#1080' '#1087#1077#1088#1074#1099#1081' '#1089#1080#1084#1074#1086#1083':'#13#10' % - '#1087#1086#1080#1089#1082' '#1087#1086' '#1087#1086#1076#1089#1090#1088#1086#1082#1077#13#10' *  - '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076 +
          #1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyUp = ed2KeyUp
      end
    end
  end
  object xlReport1: TxlReport
    DataExportMode = xdmDDE
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'C:\vz\IS_MPK\IS_MPK\Tmp\estimate.xls'
    DataSources = <
      item
        DataSet = qProd
        Alias = 'r'
        Range = 'rr3'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end
      item
        DataSet = qProd2
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
    Left = 221
    Top = 53
  end
  object qProd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 216
    Top = 104
  end
  object qProd2: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 216
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 128
    object N1: TMenuItem
      Caption = #1057#1084#1077#1090#1072' ( '#1085#1072' '#1090#1080#1088#1072#1078')'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1084#1077#1090#1072' ('#1079#1072' '#1096#1090#1091#1082#1091')'
      OnClick = N2Click
    end
  end
end
