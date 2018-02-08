object fmREG_MAN: TfmREG_MAN
  Left = 235
  Top = 127
  Width = 649
  Height = 422
  Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1074' '#1087#1086' '#1088#1077#1075#1080#1086#1085#1072#1084
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
    Width = 641
    Height = 347
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 637
      Height = 39
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 36
        Height = 13
        Caption = #1056#1077#1075#1080#1086#1085
      end
      object lcb1: TDBLookupComboboxEh
        Left = 64
        Top = 8
        Width = 289
        Height = 21
        EditButtons = <>
        KeyField = 'ID_REGION'
        ListField = 'NAME'
        ListSource = dmIS.dsREG
        TabOrder = 0
        Visible = True
      end
    end
    object p5: TPanel
      Left = 2
      Top = 41
      Width = 637
      Height = 304
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object dbn1: TDBNavigator
        Left = 2
        Top = 284
        Width = 633
        Height = 18
        DataSource = dmIS.dsFreeman
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 0
      end
      object dbg1: TDBGridEh
        Left = 2
        Top = 2
        Width = 633
        Height = 282
        Align = alClient
        DataSource = dmIS.dsREG_MAN
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ID_P'
            Footers = <>
            Title.Alignment = taCenter
          end
          item
            EditButtons = <>
            FieldName = 'FIO'
            Footers = <>
            Title.Alignment = taCenter
            Width = 262
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 260
          end>
      end
    end
  end
  object p2: TPanel
    Left = 0
    Top = 347
    Width = 641
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      641
      41)
    object bb1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 0
      OnClick = bb1Click
    end
    object bb2: TBitBtn
      Left = 552
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = bb2Click
    end
    object lcb2: TDBLookupComboboxEh
      Left = 240
      Top = 8
      Width = 297
      Height = 21
      Anchors = [akTop, akRight]
      DropDownBox.Rows = 25
      EditButtons = <>
      KeyField = 'ID_P'
      ListField = 'FIO'
      ListSource = dsFreeMan
      TabOrder = 2
      Visible = True
    end
  end
  object qFreeMan: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select ID_P, FIO '
      'from PERSONNEL'
      'where ID_C_MAN is not null and ID_REGION is null'
      'and D_DISMISS is null'
      'order by FIO')
    Left = 106
    Top = 113
    object qFreeManID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFreeManFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsFreeMan: TDataSource
    DataSet = qFreeMan
    Left = 106
    Top = 153
  end
end
