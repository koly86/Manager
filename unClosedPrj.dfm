object fmClosedPrj: TfmClosedPrj
  Left = 192
  Top = 114
  Width = 804
  Height = 480
  Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1085#1099#1077' '#1087#1088#1086#1077#1082#1090#1099
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
    Left = 0
    Top = 261
    Width = 796
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 796
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 19
      Height = 22
      Caption = '  '#1057': '
    end
    object dtp1: TDateTimePicker
      Left = 19
      Top = 0
      Width = 86
      Height = 22
      Date = 38987.581688900460000000
      Time = 38987.581688900460000000
      TabOrder = 3
      OnCloseUp = dtp1CloseUp
    end
    object Label4: TLabel
      Left = 105
      Top = 0
      Width = 29
      Height = 22
      Caption = '  '#1055#1086':  '
    end
    object dtp2: TDateTimePicker
      Left = 134
      Top = 0
      Width = 83
      Height = 22
      Date = 38987.581688900460000000
      Time = 38987.581688900460000000
      TabOrder = 2
      OnCloseUp = dtp1CloseUp
    end
    object ToolButton2: TToolButton
      Left = 217
      Top = 0
      Width = 37
      Caption = 'ToolButton2'
      ImageIndex = 22
      Style = tbsSeparator
    end
    object Label1: TLabel
      Left = 254
      Top = 0
      Width = 28
      Height = 22
      Caption = ' '#1058#1080#1087': '
    end
    object lcb1: TDBLookupComboboxEh
      Left = 282
      Top = 0
      Width = 133
      Height = 22
      EditButtons = <>
      Flat = True
      KeyField = 'ID_PROJ_TYPE'
      ListField = 'NAME'
      ListSource = dmIS.dsPr_Typ
      TabOrder = 0
      Visible = True
      OnCloseUp = lcb1CloseUp
    end
    object ToolButton4: TToolButton
      Left = 415
      Top = 0
      Width = 18
      Caption = 'ToolButton4'
      ImageIndex = 22
      Style = tbsSeparator
    end
    object tb1: TToolButton
      Left = 433
      Top = 0
      Hint = #1051#1080#1095#1085#1099#1077
      Caption = 'tb1'
      Down = True
      Grouped = True
      ImageIndex = 20
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = dtp1CloseUp
    end
    object tb2: TToolButton
      Left = 456
      Top = 0
      Hint = #1042#1089#1077
      Caption = 'tb2'
      Grouped = True
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = dtp1CloseUp
    end
    object ToolButton1: TToolButton
      Left = 479
      Top = 0
      Width = 87
      Caption = 'ToolButton1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tb0: TToolButton
      Left = 566
      Top = 0
      Hint = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1087#1086#1083#1102
      Caption = 'tb0'
      ImageIndex = 21
      ParentShowHint = False
      ShowHint = True
      OnClick = tb0Click
    end
    object Label3: TLabel
      Left = 589
      Top = 0
      Width = 55
      Height = 22
      Caption = '    '#1053#1072#1081#1090#1080':   '
    end
    object ed1: TEdit
      Left = 644
      Top = 0
      Width = 121
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyUp = ed1KeyUp
    end
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 796
    Height = 237
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbn1: TDBNavigator
      Left = 2
      Top = 217
      Width = 792
      Height = 18
      DataSource = dmIS.dsCliPrj
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGrid
      Left = 2
      Top = 2
      Width = 792
      Height = 215
      Align = alClient
      DataSource = dmIS.dsCliPrj
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 452
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CP'
          Title.Alignment = taCenter
          Width = 56
          Visible = True
        end>
    end
  end
  object p2: TPanel
    Left = 0
    Top = 264
    Width = 796
    Height = 182
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object dbn2: TDBNavigator
      Left = 2
      Top = 162
      Width = 792
      Height = 18
      DataSource = dmIS.dsPrj
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg2: TDBGrid
      Left = 2
      Top = 2
      Width = 792
      Height = 160
      Align = alClient
      DataSource = dmIS.dsPrj
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbg2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'BNAME'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nTYPE'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 247
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MANAGER'
          Title.Alignment = taCenter
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PROJECT'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
end
