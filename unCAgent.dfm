object fmCAgent: TfmCAgent
  Left = 242
  Top = 126
  Width = 753
  Height = 480
  Caption = #1050#1083#1080#1077#1085#1090#1099' ('#1094#1077#1085#1090#1088#1072#1083#1100#1085#1072#1103' '#1073#1072#1079#1072')'
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
    Width = 745
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object tb1: TToolButton
      Left = 0
      Top = 0
      Hint = #1047#1072#1087#1080#1089#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1074' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      Caption = 'tb1'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = tb1Click
    end
    object tb2: TToolButton
      Left = 23
      Top = 0
      Hint = #1047#1072#1087#1080#1089#1100' '#1082#1086#1076#1072' '#1082#1083#1080#1077#1085#1090#1072' '#1094#1077#1085#1090#1088#1072#1083#1100#1085#1086#1081' '#1073#1072#1079#1099' '#1074' '#1086#1089#1085#1086#1074#1085#1091#1102' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      Caption = 'tb2'
      ImageIndex = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = tb2Click
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 131
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Label1: TLabel
      Left = 177
      Top = 0
      Width = 134
      Height = 22
      Caption = ' '#1053#1072#1081#1090#1080' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102': '
    end
    object ed1: TEdit
      Left = 311
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 427
    Width = 745
    Height = 19
    Panels = <>
  end
  object p1: TPanel
    Left = 0
    Top = 24
    Width = 745
    Height = 403
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object dbn1: TDBNavigator
      Left = 2
      Top = 383
      Width = 741
      Height = 18
      DataSource = dmIS.dsAgents
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 2
      Width = 741
      Height = 381
      Align = alClient
      DataSource = dmIS.dsAgents
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
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Width = 393
        end
        item
          EditButtons = <>
          FieldName = 'DESCRIPTION'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'ID_AGENT'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
        end>
    end
  end
end
