object fmProjPlan: TfmProjPlan
  Left = 291
  Top = 135
  Width = 696
  Height = 480
  Caption = 'fmProjPlan'
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
    Width = 688
    Height = 446
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbg1: TDBGridEh
      Left = 2
      Top = 26
      Width = 684
      Height = 400
      Align = alClient
      DataSource = dmIS.dsPrjPlan
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
      OnDrawColumnCell = dbg1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'STEP'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 28
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 305
        end
        item
          EditButtons = <>
          FieldName = 'DIN'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'DOUT'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'D_FACT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'nRESP'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 259
        end>
    end
    object dbn1: TDBNavigator
      Left = 2
      Top = 426
      Width = 684
      Height = 18
      DataSource = dmIS.dsPrjPlan
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 1
    end
    object tlb1: TToolBar
      Left = 2
      Top = 2
      Width = 684
      Height = 24
      AutoSize = True
      Caption = 'tlb1'
      Flat = True
      Images = fmMain.il1
      TabOrder = 2
      object tb1: TToolButton
        Left = 0
        Top = 0
        Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1101#1090#1072#1087#1072
        Caption = 'tb1'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = tb1Click
      end
      object tb2: TToolButton
        Left = 23
        Top = 0
        Hint = #1059#1076#1072#1083#1077#1085#1080#1077' '#1101#1090#1072#1087#1072
        Caption = 'tb2'
        ImageIndex = 3
        ParentShowHint = False
        ShowHint = True
        OnClick = tb2Click
      end
      object ToolButton5: TToolButton
        Left = 46
        Top = 0
        Width = 35
        Caption = 'ToolButton5'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tb3: TToolButton
        Left = 81
        Top = 0
        Hint = #1060#1080#1082#1089#1072#1094#1080#1103' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1101#1090#1072#1087#1072
        Caption = 'l'
        ImageIndex = 8
        ParentShowHint = False
        ShowHint = True
        OnClick = tb3Click
      end
      object ToolButton4: TToolButton
        Left = 104
        Top = 0
        Width = 36
        Caption = 'ToolButton4'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object lcb1: TDBLookupComboBox
        Left = 140
        Top = 0
        Width = 365
        Height = 21
        DropDownRows = 30
        KeyField = 'ID_PROJ_TRAFF'
        ListField = 'NAME'
        ListSource = dmIS.dsFTraff
        TabOrder = 0
        OnCloseUp = lcb1CloseUp
      end
    end
  end
end
