object fmTEMPL: TfmTEMPL
  Left = 192
  Top = 114
  Width = 727
  Height = 496
  Caption = #1064#1072#1073#1083#1086#1085#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
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
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 94
      Height = 13
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 16
      Width = 79
      Height = 13
      Caption = #1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lcb1: TDBLookupComboBox
      Left = 136
      Top = 40
      Width = 273
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ID_PROJ_DOC_TYPE'
      ListField = 'NAME'
      ListSource = dmIS.dsDOC_TYPE
      ParentFont = False
      TabOrder = 0
      OnClick = lcb1Click
    end
    object lcb2: TDBLookupComboBox
      Left = 136
      Top = 8
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'ID_PROJ_TYPE'
      ListField = 'NAME'
      ListSource = dmIS.dsP_TYPE
      ParentFont = False
      TabOrder = 1
      OnClick = lcb1Click
    end
  end
  object p2: TPanel
    Left = 0
    Top = 73
    Width = 719
    Height = 389
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 445
      Top = 26
      Height = 361
      Align = alRight
    end
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 715
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object tb1: TToolButton
        Left = 0
        Top = 0
        Hint = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083
        Caption = 'tb1'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = tb1Click
      end
      object ToolButton1: TToolButton
        Left = 23
        Top = 0
        Width = 18
        Caption = 'ToolButton1'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tb2: TToolButton
        Left = 41
        Top = 0
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1079#1076#1077#1083
        Caption = 'tb2'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object ToolButton2: TToolButton
        Left = 64
        Top = 0
        Width = 17
        Caption = 'ToolButton2'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object tb3: TToolButton
        Left = 81
        Top = 0
        Caption = 'tb3'
        ImageIndex = 24
        OnClick = tb3Click
      end
      object tb4: TToolButton
        Left = 104
        Top = 0
        Caption = 'tb4'
        ImageIndex = 23
        OnClick = tb4Click
      end
      object Label2: TLabel
        Left = 127
        Top = 0
        Width = 71
        Height = 22
        Caption = ' '#1058#1080#1087' '#1076#1072#1085#1085#1099#1093':  '
      end
      object cb1: TComboBox
        Left = 198
        Top = 0
        Width = 219
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cb1Change
        Items.Strings = (
          #1044#1072#1090#1072
          #1058#1077#1093#1090
          #1044#1086#1082#1091#1084#1077#1085#1090' ('#1080#1079' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093')')
      end
      object ToolButton3: TToolButton
        Left = 417
        Top = 0
        Width = 14
        Caption = 'ToolButton3'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object cb2: TCheckBox
        Left = 431
        Top = 0
        Width = 136
        Height = 22
        Caption = #1054#1075#1088#1072#1085#1080#1095#1077#1085#1085#1099#1081' '#1076#1086#1089#1090#1091#1087
        TabOrder = 1
        OnClick = cb2Click
      end
    end
    object dbt1: TDBS_TreeView
      Left = 2
      Top = 26
      Width = 443
      Height = 361
      Align = alClient
      HideSelection = False
      Indent = 19
      TabOrder = 1
      OnChange = dbt1Change
      OnEdited = dbt1Edited
      Database = dmIS.dbIS
      Transaction = dmIS.mT
      RootId = 1
      FieldId = 'ID_ROW'
      FieldParentId = 'PARENT'
      FieldName = 'NAME'
      FieldState = 'ID_ROW'
      FieldSort = 'POSIT'
    end
    object Panel1: TPanel
      Left = 448
      Top = 26
      Width = 269
      Height = 361
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 2
      object m1: TMemo
        Left = 2
        Top = 27
        Width = 265
        Height = 300
        Align = alClient
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 265
        Height = 25
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvSpace
        Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1088#1072#1079#1076#1077#1083#1072
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 2
        Top = 327
        Width = 265
        Height = 32
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        DesignSize = (
          265
          32)
        object bb1: TBitBtn
          Left = 184
          Top = 4
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 0
          OnClick = bb1Click
        end
      end
    end
  end
  object qDEF_V: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_ROW, DEF_VALUE '
      'from PROJ_DOC_STRUCTURE'
      'where ID_ROW = :rw1')
    Left = 432
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'rw1'
        ParamType = ptUnknown
      end>
    object qDEF_VID_ROW: TIntegerField
      FieldName = 'ID_ROW'
      Origin = '"PROJ_DOC_STRUCTURE"."ID_ROW"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDEF_VDEF_VALUE: TMemoField
      FieldName = 'DEF_VALUE'
      Origin = '"PROJ_DOC_STRUCTURE"."DEF_VALUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
end
