object fmManager: TfmManager
  Left = 192
  Top = 114
  Width = 730
  Height = 480
  Caption = #1052#1077#1085#1077#1076#1078#1077#1088#1099
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
    Left = 365
    Top = 0
    Height = 446
    Align = alRight
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 365
    Height = 446
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object p3: TPanel
      Left = 333
      Top = 65
      Width = 30
      Height = 379
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object sb1: TSpeedButton
        Left = 4
        Top = 120
        Width = 23
        Height = 22
        Hint = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1077' '#1079#1072#1087#1080#1089#1080
        Caption = '>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = sb1Click
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 361
      Height = 63
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 91
        Height = 13
        Caption = #1053#1072#1081#1090#1080' '#1087#1086' '#1060'.'#1048'.'#1054'. :'
      end
      object lb1: TLabel
        Left = 8
        Top = 8
        Width = 191
        Height = 13
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088#1099' ('#1094#1077#1085#1090#1088#1072#1083#1100#1085#1072#1103' '#1073#1072#1079#1072')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ed1: TEdit
        Left = 128
        Top = 32
        Width = 169
        Height = 21
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
    object p5: TPanel
      Left = 2
      Top = 65
      Width = 331
      Height = 379
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 2
      object dbn1: TDBNavigator
        Left = 2
        Top = 359
        Width = 327
        Height = 18
        DataSource = dmIS.dsFreeman
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 0
      end
      object dbg1: TDBGrid
        Left = 2
        Top = 2
        Width = 327
        Height = 357
        Align = alClient
        DataSource = dmIS.dsFreeman
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FIO'
            Title.Alignment = taCenter
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MANAGER'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  object p2: TPanel
    Left = 368
    Top = 0
    Width = 354
    Height = 446
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    object dbn2: TDBNavigator
      Left = 2
      Top = 426
      Width = 350
      Height = 18
      DataSource = dmIS.dsManager
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg2: TDBGrid
      Left = 2
      Top = 65
      Width = 350
      Height = 361
      Align = alClient
      DataSource = dmIS.dsManager
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Alignment = taCenter
          Width = 246
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_P'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object p4: TPanel
      Left = 2
      Top = 2
      Width = 350
      Height = 63
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 40
        Width = 91
        Height = 13
        Caption = #1053#1072#1081#1090#1080' '#1087#1086' '#1060'.'#1048'.'#1054'. :'
      end
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 191
        Height = 13
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088#1099' ('#1086#1087#1077#1088#1072#1090#1080#1074#1085#1072#1103' '#1073#1072#1079#1072')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ed2: TEdit
        Left = 128
        Top = 32
        Width = 169
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyUp = ed2KeyUp
      end
    end
  end
end
