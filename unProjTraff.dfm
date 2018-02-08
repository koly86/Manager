object fmProjTraff: TfmProjTraff
  Left = 192
  Top = 114
  Width = 721
  Height = 480
  Caption = #1058#1080#1087#1086#1074#1099#1077' '#1084#1072#1088#1096#1088#1091#1090#1099' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
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
    Width = 713
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 78
      Height = 22
      Caption = '  '#1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072':  '
    end
    object lcb1: TDBLookupComboBox
      Left = 78
      Top = 0
      Width = 145
      Height = 21
      KeyField = 'ID_PROJ_TYPE'
      ListField = 'NAME'
      ListSource = dmIS.dsP_TYPE
      TabOrder = 0
    end
    object ToolButton1: TToolButton
      Left = 223
      Top = 0
      Width = 24
      Caption = 'ToolButton1'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object tb1: TToolButton
      Left = 247
      Top = 0
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1101#1090#1072#1087' '#1074#1085#1080#1079
      Caption = 'tb1'
      ImageIndex = 23
      ParentShowHint = False
      ShowHint = True
      OnClick = tb1Click
    end
    object tb2: TToolButton
      Left = 270
      Top = 0
      Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1101#1090#1072#1087' '#1074#1074#1077#1088#1093
      Caption = 'tb2'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = tb2Click
    end
    object tb3: TToolButton
      Left = 293
      Top = 0
      Hint = #1055#1077#1088#1077#1085#1091#1084#1077#1088#1086#1074#1072#1090#1100' '#1096#1072#1075#1080
      Caption = 'tb3'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = tb3Click
    end
  end
  object dbn1: TDBNavigator
    Left = 0
    Top = 428
    Width = 713
    Height = 18
    DataSource = dmIS.dsProjTraff
    Align = alBottom
    TabOrder = 1
  end
  object dbg1: TDBGrid
    Left = 0
    Top = 24
    Width = 713
    Height = 404
    Align = alClient
    DataSource = dmIS.dsProjTraff
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'STEP'
        Title.Alignment = taCenter
        Width = 33
        Visible = True
      end
      item
        DropDownRows = 25
        Expanded = False
        FieldName = 'nEVENT'
        Title.Alignment = taCenter
        Width = 334
        Visible = True
      end
      item
        DropDownRows = 25
        Expanded = False
        FieldName = 'nPOST'
        Title.Alignment = taCenter
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Alignment = taCenter
        Width = 42
        Visible = True
      end>
  end
end
