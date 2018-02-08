object fmProj: TfmProj
  Left = 364
  Top = 221
  Width = 809
  Height = 539
  Caption = #1058#1077#1082#1091#1097#1080#1077' '#1087#1088#1086#1077#1082#1090#1099
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
  object Splitter1: TSplitter
    Left = 0
    Top = 245
    Width = 801
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 801
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 28
      Height = 22
      Caption = ' '#1058#1080#1087': '
    end
    object lcb1: TDBLookupComboboxEh
      Left = 28
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
    object ToolButton1: TToolButton
      Left = 161
      Top = 0
      Width = 40
      Caption = 'ToolButton1'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object tb1: TToolButton
      Left = 201
      Top = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1088#1086#1077#1082#1090
      Caption = 'tb1'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tb1Click
    end
    object tb2: TToolButton
      Left = 224
      Top = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1077#1082#1090
      Caption = 'tb2'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = tb2Click
    end
    object ToolButton2: TToolButton
      Left = 247
      Top = 0
      Width = 57
      Caption = 'ToolButton2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tb3: TToolButton
      Left = 304
      Top = 0
      Hint = #1051#1080#1095#1085#1099#1077
      Caption = 'tb3'
      Down = True
      Grouped = True
      ImageIndex = 20
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb3Click
    end
    object tb4: TToolButton
      Left = 327
      Top = 0
      Hint = #1042#1089#1077' '#1090#1077#1082#1091#1097#1080#1077
      Caption = 'tb4'
      Grouped = True
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb3Click
    end
    object tb5: TToolButton
      Left = 350
      Top = 0
      Hint = #1053#1077' '#1087#1088#1080#1085#1103#1090#1099#1077' '#1074' '#1076#1080#1079#1072#1081#1085'-'#1087#1088#1086#1077#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Caption = 'tb5'
      Grouped = True
      ImageIndex = 16
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
      OnClick = tb3Click
    end
    object ToolButton7: TToolButton
      Left = 373
      Top = 0
      Width = 51
      Caption = 'ToolButton7'
      ImageIndex = 24
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 424
      Top = 0
      Hint = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1086#1074
      Caption = 'ToolButton9'
      ImageIndex = 39
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton9Click
    end
    object Label3: TLabel
      Left = 447
      Top = 0
      Width = 55
      Height = 22
      Caption = '    '#1053#1072#1081#1090#1080':   '
    end
    object ed1: TEdit
      Left = 502
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
    Width = 801
    Height = 221
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 537
      Top = 20
      Height = 181
    end
    object dbn1: TDBNavigator
      Left = 2
      Top = 201
      Width = 797
      Height = 18
      DataSource = dmIS.dsCliPrj
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 797
      Height = 18
      Align = alTop
      BevelInner = bvSpace
      TabOrder = 1
      object Label17: TLabel
        Left = 8
        Top = 2
        Width = 52
        Height = 13
        Caption = #1050#1083#1080#1077#1085#1090#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 20
      Width = 535
      Height = 181
      Align = alLeft
      DataSource = dmIS.dsCliPrj
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnSortMarkingChanged = dbg1SortMarkingChanged
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
          Width = 331
        end
        item
          EditButtons = <>
          FieldName = 'CP'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
          Width = 80
        end>
    end
    object Panel2: TPanel
      Left = 540
      Top = 20
      Width = 259
      Height = 181
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 3
      object Splitter3: TSplitter
        Left = 1
        Top = 81
        Width = 257
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object dbg3: TDBGridEh
        Left = 1
        Top = 1
        Width = 257
        Height = 80
        Align = alTop
        DataSource = dsUrAgent
        Flat = True
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'AGENT_UR'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 185
          end
          item
            EditButtons = <>
            FieldName = 'INN'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'RCH'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'BIK'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'NAME_BIK'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 188
          end
          item
            EditButtons = <>
            FieldName = 'KORCH'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'FILIAL'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 213
          end
          item
            EditButtons = <>
            FieldName = 'ADRES1'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 219
          end
          item
            EditButtons = <>
            FieldName = 'ADRES2'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 223
          end
          item
            EditButtons = <>
            FieldName = 'FIOFIRM'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = 'FIOBYX'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 214
          end
          item
            EditButtons = <>
            FieldName = 'TEL'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'DOLFIRM'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 184
          end
          item
            EditButtons = <>
            FieldName = 'DOLBYX'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 198
          end
          item
            EditButtons = <>
            FieldName = 'OKOHX'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 187
          end
          item
            EditButtons = <>
            FieldName = 'OKPO'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 195
          end
          item
            EditButtons = <>
            FieldName = 'KPP'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'OGRN'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'OKVED'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 198
          end
          item
            EditButtons = <>
            FieldName = 'OKUD'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 194
          end>
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 84
        Width = 257
        Height = 96
        Align = alClient
        DataSource = dsDogovor
        DrawMemoText = True
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
            FieldName = 'DOG_NUMBER_'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'DOG_NUMBER'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'DOG_DATE_IN'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'DOG_DATE_OUT'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'VID'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'KOL_DAY'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'PROC'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'DOG_OBJ'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'REM'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'PIOPLE'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'EMAIL'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'STATUS'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'NAME_TYPEOPL'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'NAME_CUR'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'NAME_DOGTYPE'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end
          item
            EditButtons = <>
            FieldName = 'nVid'
            Footers = <>
            Title.Alignment = taCenter
            Title.EndEllipsis = True
          end>
      end
    end
  end
  object p2: TPanel
    Left = 0
    Top = 248
    Width = 801
    Height = 257
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object pc1: TPageControl
      Left = 2
      Top = 2
      Width = 797
      Height = 253
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      OnChange = pc1Change
      object ts1: TTabSheet
        Caption = #1055#1088#1086#1077#1082#1090#1099
        object dbn2: TDBNavigator
          Left = 0
          Top = 209
          Width = 789
          Height = 18
          DataSource = dmIS.dsPrj
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
        object tlb2: TToolBar
          Left = 0
          Top = 0
          Width = 789
          Height = 24
          AutoSize = True
          Caption = 'tlb2'
          Flat = True
          Images = fmMain.il1
          TabOrder = 1
          object Label11: TLabel
            Left = 0
            Top = 0
            Width = 61
            Height = 22
            Caption = ' '#1055#1088#1086#1077#1082#1090#1099' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object tbs1: TToolButton
            Left = 61
            Top = 0
            Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072
            Caption = 'tbs1'
            ImageIndex = 22
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs1Click
          end
          object ToolButton4: TToolButton
            Left = 84
            Top = 0
            Width = 18
            Caption = 'ToolButton4'
            ImageIndex = 11
            Style = tbsSeparator
          end
          object tbs2: TToolButton
            Left = 102
            Top = 0
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            Caption = 'tbs2'
            ImageIndex = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs2Click
          end
          object tbs3: TToolButton
            Left = 125
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1086#1077#1082#1090
            Caption = 'tbs3'
            ImageIndex = 3
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs3Click
          end
          object ToolButton3: TToolButton
            Left = 148
            Top = 0
            Width = 18
            Caption = 'ToolButton3'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tbs4: TToolButton
            Left = 166
            Top = 0
            Hint = #1044#1086#1082#1091#1084#1077#1085#1090#1099' '#1080' '#1079#1072#1082#1072#1079#1099
            Caption = 'tbs4'
            ImageIndex = 10
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs4Click
          end
          object ToolButton8: TToolButton
            Left = 189
            Top = 0
            Width = 28
            Caption = 'ToolButton8'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object tbs7: TToolButton
            Left = 217
            Top = 0
            Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1080#1079#1072#1081#1085#1077#1088#1072' '#1087#1088#1086#1077#1082#1090#1072
            Caption = 'tbs7'
            ImageIndex = 28
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs7Click
          end
          object ToolButton5: TToolButton
            Left = 240
            Top = 0
            Width = 84
            Caption = 'ToolButton5'
            ImageIndex = 11
            Style = tbsSeparator
          end
          object tbs5: TToolButton
            Left = 324
            Top = 0
            Hint = #1055#1086#1080#1089#1082
            Caption = 'tbs5'
            ImageIndex = 27
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs5Click
          end
          object ToolButton6: TToolButton
            Left = 347
            Top = 0
            Width = 97
            Caption = 'ToolButton6'
            ImageIndex = 28
            Style = tbsSeparator
          end
          object tbs6: TToolButton
            Left = 444
            Top = 0
            Hint = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072
            Caption = 'tbs6'
            ImageIndex = 8
            ParentShowHint = False
            ShowHint = True
            OnClick = tbs6Click
          end
        end
        object dbg2: TDBGridEh
          Left = 0
          Top = 24
          Width = 789
          Height = 185
          Align = alClient
          DataSource = dmIS.dsPrj
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbg2DblClick
          OnSortMarkingChanged = dbg2SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'fILL'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'BNAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'nTYPE'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 223
            end
            item
              EditButtons = <>
              FieldName = 'DATA'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'DATAEND'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROJECT'
              Footers = <>
              Title.Alignment = taCenter
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'MANAGER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'SUMMA'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'NCURR'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'DESIGNER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 157
            end>
        end
      end
      object ts2: TTabSheet
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072
        ImageIndex = 1
        DesignSize = (
          789
          227)
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 22
          Height = 13
          Caption = #1050#1086#1076':'
        end
        object Label4: TLabel
          Left = 200
          Top = 32
          Width = 56
          Height = 13
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
        end
        object Label5: TLabel
          Left = 480
          Top = 8
          Width = 30
          Height = 13
          Caption = #1041#1088#1080#1092':'
        end
        object Label6: TLabel
          Left = 8
          Top = 56
          Width = 123
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1077#1082#1090#1072':'
        end
        object DBText1: TDBText
          Left = 40
          Top = 8
          Width = 89
          Height = 17
          DataField = 'ID_PROJECT'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 520
          Top = 8
          Width = 97
          Height = 17
          DataField = 'BRIEF'
          DataSource = dmIS.dsPrj
        end
        object DBText3: TDBText
          Left = 312
          Top = 8
          Width = 161
          Height = 17
          DataField = 'BNAME'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 16
          Top = 72
          Width = 649
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 272
          Top = 32
          Width = 273
          Height = 17
          DataField = 'mANAGER'
          DataSource = dmIS.dsPrj
        end
        object Label7: TLabel
          Left = 272
          Top = 8
          Width = 34
          Height = 13
          Caption = #1041#1088#1101#1085#1076':'
        end
        object Label8: TLabel
          Left = 128
          Top = 8
          Width = 22
          Height = 13
          Caption = #1058#1080#1087':'
        end
        object DBText6: TDBText
          Left = 160
          Top = 8
          Width = 97
          Height = 17
          DataField = 'nTYPE'
          DataSource = dmIS.dsPrj
        end
        object Label9: TLabel
          Left = 8
          Top = 32
          Width = 67
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072':'
        end
        object DBText7: TDBText
          Left = 88
          Top = 32
          Width = 97
          Height = 17
          DataField = 'DATA'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 200
          Width = 37
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089':'
        end
        object DBText8: TDBText
          Left = 56
          Top = 200
          Width = 41
          Height = 17
          DataField = 'STATUS'
          DataSource = dmIS.dsPrj
        end
        object Label19: TLabel
          Left = 8
          Top = 176
          Width = 54
          Height = 13
          Caption = #1044#1080#1079#1072#1081#1085#1077#1088':'
        end
        object DBText9: TDBText
          Left = 72
          Top = 176
          Width = 321
          Height = 17
          DataField = 'dESIGNER'
          DataSource = dmIS.dsPrj
        end
        object Label24: TLabel
          Left = 8
          Top = 96
          Width = 58
          Height = 13
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077':'
        end
        object DBText10: TDBText
          Left = 72
          Top = 96
          Width = 105
          Height = 17
          DataField = 'DATAEND'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 324
          Top = 96
          Width = 89
          Height = 17
          Alignment = taRightJustify
          DataField = 'SUMMA'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 424
          Top = 96
          Width = 49
          Height = 17
          DataField = 'nCURR'
          DataSource = dmIS.dsPrj
        end
        object Label25: TLabel
          Left = 184
          Top = 96
          Width = 134
          Height = 13
          Caption = #1055#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1084#1099#1081' '#1073#1102#1076#1078#1077#1090':'
        end
        object Bevel2: TBevel
          Left = 8
          Top = 144
          Width = 513
          Height = 9
          Shape = bsTopLine
        end
        object Label26: TLabel
          Left = 8
          Top = 120
          Width = 60
          Height = 13
          Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085':'
        end
        object DBText13: TDBText
          Left = 88
          Top = 120
          Width = 137
          Height = 17
          DataField = 'D_FIX'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 240
          Top = 120
          Width = 345
          Height = 17
          DataField = 'fIX'
          DataSource = dmIS.dsPrj
        end
        object Label18: TLabel
          Left = 8
          Top = 152
          Width = 131
          Height = 13
          Caption = #1055#1088#1080#1085#1103#1090' '#1086#1090#1076#1077#1083#1086#1084' '#1076#1080#1079#1072#1081#1085#1072':'
        end
        object DBText15: TDBText
          Left = 152
          Top = 152
          Width = 121
          Height = 17
          DataField = 'D_DACCEPT'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText16: TDBText
          Left = 280
          Top = 152
          Width = 345
          Height = 17
          DataField = 'dACCEPTOR'
          DataSource = dmIS.dsPrj
        end
        object Label28: TLabel
          Left = 512
          Top = 96
          Width = 126
          Height = 13
          Caption = #1055#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1084#1099#1081' '#1090#1080#1088#1072#1078':'
        end
        object DBText17: TDBText
          Left = 648
          Top = 96
          Width = 73
          Height = 17
          DataField = 'AMOUNT'
          DataSource = dmIS.dsPrj
        end
        object p3: TPanel
          Left = 0
          Top = 0
          Width = 789
          Height = 227
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          DesignSize = (
            789
            227)
          object Label12: TLabel
            Left = 24
            Top = 47
            Width = 79
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          end
          object Label13: TLabel
            Left = 576
            Top = 23
            Width = 57
            Height = 13
            Caption = #1050#1086#1076' '#1073#1088#1080#1092#1072':'
          end
          object Label14: TLabel
            Left = 24
            Top = 136
            Width = 67
            Height = 13
            Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072':'
          end
          object Label15: TLabel
            Left = 24
            Top = 104
            Width = 56
            Height = 13
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          end
          object Label16: TLabel
            Left = 272
            Top = 20
            Width = 34
            Height = 13
            Caption = #1041#1088#1101#1085#1076':'
          end
          object sb1: TSpeedButton
            Left = 536
            Top = 12
            Width = 23
            Height = 22
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1073#1088#1101#1085#1076' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sb1Click
          end
          object sb2: TSpeedButton
            Left = 424
            Top = 96
            Width = 23
            Height = 22
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1084#1077#1085#1077#1076#1078#1077#1088#1072' '#1080#1079' '#1094#1077#1085#1090#1088#1072#1083#1100#1085#1086#1081' '#1073#1072#1079#1099
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sb2Click
          end
          object Label21: TLabel
            Left = 32
            Top = 20
            Width = 22
            Height = 13
            Caption = #1058#1080#1087':'
          end
          object Label20: TLabel
            Left = 240
            Top = 135
            Width = 58
            Height = 13
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077':'
          end
          object Label22: TLabel
            Left = 488
            Top = 104
            Width = 43
            Height = 13
            Caption = #1041#1102#1076#1078#1077#1090':'
          end
          object Bevel1: TBevel
            Left = 456
            Top = 96
            Width = 9
            Height = 57
            Shape = bsLeftLine
          end
          object Label23: TLabel
            Left = 488
            Top = 136
            Width = 41
            Height = 13
            Caption = #1042#1072#1083#1102#1090#1072':'
          end
          object Label27: TLabel
            Left = 488
            Top = 168
            Width = 126
            Height = 13
            Caption = #1055#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1084#1099#1081' '#1090#1080#1088#1072#1078':'
          end
          object p4: TPanel
            Left = 2
            Top = 188
            Width = 785
            Height = 37
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 0
            DesignSize = (
              785
              37)
            object bb1: TBitBtn
              Left = 129
              Top = 6
              Width = 99
              Height = 25
              Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
              Anchors = [akLeft, akBottom]
              Caption = #1047#1072#1087#1080#1089#1072#1090#1100
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = bb1Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object bb2: TBitBtn
              Left = 533
              Top = 6
              Width = 99
              Height = 25
              Hint = #1054#1090#1084#1077#1085#1080#1090#1100
              Anchors = [akRight, akBottom]
              Cancel = True
              Caption = #1054#1090#1084#1077#1085#1072
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = bb2Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333000033338833333333333333333F333333333333
                0000333911833333983333333388F333333F3333000033391118333911833333
                38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
                911118111118333338F3338F833338F3000033333911111111833333338F3338
                3333F8330000333333911111183333333338F333333F83330000333333311111
                8333333333338F3333383333000033333339111183333333333338F333833333
                00003333339111118333333333333833338F3333000033333911181118333333
                33338333338F333300003333911183911183333333383338F338F33300003333
                9118333911183333338F33838F338F33000033333913333391113333338FF833
                38F338F300003333333333333919333333388333338FFF830000333333333333
                3333333333333333333888330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
          end
          object ed2: TEdit
            Left = 24
            Top = 63
            Width = 730
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 40
            ParentFont = False
            TabOrder = 1
          end
          object dtp1: TDBDateTimeEditEh
            Left = 96
            Top = 128
            Width = 129
            Height = 21
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 2
            Visible = True
          end
          object lcb4: TDBLookupComboBox
            Left = 96
            Top = 96
            Width = 313
            Height = 21
            DropDownRows = 25
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dmIS.dsManager
            TabOrder = 3
          end
          object lcb2: TDBLookupComboBox
            Left = 320
            Top = 12
            Width = 209
            Height = 21
            DropDownRows = 25
            KeyField = 'ID_BRAND'
            ListField = 'NAME'
            ListSource = dmIS.dsBrands
            TabOrder = 4
          end
          object ed3: TEdit
            Left = 648
            Top = 16
            Width = 129
            Height = 21
            TabOrder = 5
          end
          object lcb3: TDBLookupComboBox
            Left = 72
            Top = 12
            Width = 177
            Height = 21
            KeyField = 'ID_PROJ_TYPE'
            ListField = 'NAME'
            ListSource = dmIS.dsPr_Typ
            TabOrder = 6
          end
          object dtp2: TDBDateTimeEditEh
            Left = 304
            Top = 128
            Width = 129
            Height = 21
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 7
            Visible = True
          end
          object ed4: TEdit
            Left = 536
            Top = 96
            Width = 129
            Height = 21
            TabOrder = 8
          end
          object lcb6: TDBLookupComboboxEh
            Left = 536
            Top = 128
            Width = 129
            Height = 21
            DropDownBox.Rows = 20
            EditButtons = <>
            KeyField = 'ID_CURRENCY'
            ListField = 'NAME'
            ListSource = dmIS.dsCURR
            TabOrder = 9
            Visible = True
          end
          object ed5: TEdit
            Left = 632
            Top = 160
            Width = 121
            Height = 21
            TabOrder = 10
          end
        end
      end
    end
  end
  object qUrAgent: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dmIS.dsCliPrj
    SQL.Strings = (
      'select  distinct'
      'i.id_item id_agent, i.name agent,'
      'ur.inn, ur.def_account,'
      'ac.id_accounts, ac.rch, ac.bik, ac.name_bik, ac.korch, ac.filial'
      
        ',ua.name agent_ur, ua.adres1 , ua.adres2, ua.fiofirm, ua.fiobyx,' +
        ' ua.tel,'
      
        'ua.dolfirm, ua.dolbyx, ua.okohx, ua.okpo, ua.kpp, ua.ogrn, ua.ok' +
        'ved, ua.okud'
      ''
      'from items i'
      'left join items_uragents ur on ur.id_item = i.id_item'
      'left join uragents ua on ua.inn = ur.inn'
      '--left join accounts ac on  ac.id_accounts = ur.def_account'
      'left join accounts ac on ac.inn = ur.inn'
      'where i.id_item = :id'
      'order by ua.name')
    Left = 320
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qUrAgentID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_AGENT'
      Origin = '"ITEMS"."ID_ITEM"'
      Required = True
    end
    object qUrAgentAGENT: TIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qUrAgentINN: TIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Origin = '"ITEMS_URAGENTS"."INN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 12
    end
    object qUrAgentDEF_ACCOUNT: TIntegerField
      FieldName = 'DEF_ACCOUNT'
      Origin = '"ITEMS_URAGENTS"."DEF_ACCOUNT"'
    end
    object qUrAgentID_ACCOUNTS: TIntegerField
      FieldName = 'ID_ACCOUNTS'
      Origin = '"ACCOUNTS"."ID_ACCOUNTS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qUrAgentRCH: TIBStringField
      DisplayLabel = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
      FieldName = 'RCH'
      Origin = '"ACCOUNTS"."RCH"'
    end
    object qUrAgentBIK: TIBStringField
      DisplayLabel = #1041#1048#1050
      FieldName = 'BIK'
      Origin = '"ACCOUNTS"."BIK"'
      Size = 15
    end
    object qUrAgentNAME_BIK: TIBStringField
      DisplayLabel = #1041#1072#1085#1082
      FieldName = 'NAME_BIK'
      Origin = '"ACCOUNTS"."NAME_BIK"'
      Size = 80
    end
    object qUrAgentKORCH: TIBStringField
      DisplayLabel = #1050#1086#1088'. '#1089#1095#1105#1090
      FieldName = 'KORCH'
      Origin = '"ACCOUNTS"."KORCH"'
    end
    object qUrAgentFILIAL: TIBStringField
      DisplayLabel = #1060#1080#1083#1080#1072#1083
      FieldName = 'FILIAL'
      Origin = '"ACCOUNTS"."FILIAL"'
      Size = 80
    end
    object qUrAgentAGENT_UR: TIBStringField
      DisplayLabel = #1070#1088'. '#1083#1080#1094#1086
      FieldName = 'AGENT_UR'
      Origin = '"URAGENTS"."NAME"'
      Size = 128
    end
    object qUrAgentADRES1: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1102#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081
      FieldName = 'ADRES1'
      Origin = '"URAGENTS"."ADRES1"'
      Size = 128
    end
    object qUrAgentADRES2: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081
      FieldName = 'ADRES2'
      Origin = '"URAGENTS"."ADRES2"'
      Size = 128
    end
    object qUrAgentFIOFIRM: TIBStringField
      DisplayLabel = #1060#1048#1054' - '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
      FieldName = 'FIOFIRM'
      Origin = '"URAGENTS"."FIOFIRM"'
      Size = 60
    end
    object qUrAgentFIOBYX: TIBStringField
      DisplayLabel = #1060#1048#1054' - '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1072
      FieldName = 'FIOBYX'
      Origin = '"URAGENTS"."FIOBYX"'
      Size = 60
    end
    object qUrAgentTEL: TIBStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'TEL'
      Origin = '"URAGENTS"."TEL"'
      Size = 60
    end
    object qUrAgentDOLFIRM: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
      FieldName = 'DOLFIRM'
      Origin = '"URAGENTS"."DOLFIRM"'
      Size = 60
    end
    object qUrAgentDOLBYX: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1072
      FieldName = 'DOLBYX'
      Origin = '"URAGENTS"."DOLBYX"'
      Size = 60
    end
    object qUrAgentOKOHX: TIBStringField
      DisplayLabel = #1054#1050#1054#1053#1061
      FieldName = 'OKOHX'
      Origin = '"URAGENTS"."OKOHX"'
      Size = 60
    end
    object qUrAgentOKPO: TIBStringField
      DisplayLabel = #1054#1050#1055#1054
      FieldName = 'OKPO'
      Origin = '"URAGENTS"."OKPO"'
      Size = 60
    end
    object qUrAgentKPP: TIBStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'KPP'
      Origin = '"URAGENTS"."KPP"'
      Size = 12
    end
    object qUrAgentOGRN: TIBStringField
      DisplayLabel = #1054#1043#1056#1053
      FieldName = 'OGRN'
      Origin = '"URAGENTS"."OGRN"'
      Size = 16
    end
    object qUrAgentOKVED: TIBStringField
      DisplayLabel = #1054#1050#1042#1045#1044
      FieldName = 'OKVED'
      Origin = '"URAGENTS"."OKVED"'
      Size = 60
    end
    object qUrAgentOKUD: TIBStringField
      DisplayLabel = #1054#1050#1059#1044
      FieldName = 'OKUD'
      Origin = '"URAGENTS"."OKUD"'
      Size = 60
    end
  end
  object dsUrAgent: TDataSource
    DataSet = qUrAgent
    Left = 384
    Top = 104
  end
  object qDogovor: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qDogovorCalcFields
    DataSource = dsUrAgent
    SQL.Strings = (
      
        'select  d.id_dogovor, d.inn, d.dog_number, d.dog_date_in, d.dog_' +
        'date_out, d.id_agent,'
      
        'd.id_currency, d.dog_number_, d.vid, d.kol_day, d.id_typeopl, d.' +
        'proc, d.dog_obj,'
      'd.rem, d.piople, d.email, d.status, d.id_dogovor_types, d.id_c,'
      't.name name_typeopl, c.name name_cur, dt.name name_dogtype'
      'from DOGOVOR d'
      'left join typeopls t on t.id_typeopl = d.id_typeopl'
      'left join currency c on c.id_currency = d.id_currency'
      
        'left join dogovor_types dt on dt.id_dogovor_types = d.id_dogovor' +
        '_types'
      'where d.inn = :inn'
      'order by d.dog_date_in,c.name')
    Left = 184
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inn'
        ParamType = ptUnknown
      end>
    object qDogovorID_DOGOVOR: TIntegerField
      FieldName = 'ID_DOGOVOR'
      Origin = '"DOGOVOR"."ID_DOGOVOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDogovorINN: TIBStringField
      FieldName = 'INN'
      Origin = '"DOGOVOR"."INN"'
      Size = 12
    end
    object qDogovorDOG_NUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1075'. '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081
      FieldName = 'DOG_NUMBER'
      Origin = '"DOGOVOR"."DOG_NUMBER"'
      Size = 16
    end
    object qDogovorDOG_DATE_IN: TDateField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'DOG_DATE_IN'
      Origin = '"DOGOVOR"."DOG_DATE_IN"'
    end
    object qDogovorDOG_DATE_OUT: TDateField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      FieldName = 'DOG_DATE_OUT'
      Origin = '"DOGOVOR"."DOG_DATE_OUT"'
    end
    object qDogovorID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"DOGOVOR"."ID_AGENT"'
    end
    object qDogovorID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"DOGOVOR"."ID_CURRENCY"'
    end
    object qDogovorDOG_NUMBER_: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1075'. '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'DOG_NUMBER_'
      Origin = '"DOGOVOR"."DOG_NUMBER_"'
      Size = 32
    end
    object qDogovorVID: TIntegerField
      DisplayLabel = #1042#1080#1076
      FieldName = 'VID'
      Origin = '"DOGOVOR"."VID"'
    end
    object qDogovorKOL_DAY: TIntegerField
      DisplayLabel = #1044#1085#1080
      FieldName = 'KOL_DAY'
      Origin = '"DOGOVOR"."KOL_DAY"'
    end
    object qDogovorID_TYPEOPL: TIntegerField
      FieldName = 'ID_TYPEOPL'
      Origin = '"DOGOVOR"."ID_TYPEOPL"'
    end
    object qDogovorPROC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PROC'
      Origin = '"DOGOVOR"."PROC"'
    end
    object qDogovorDOG_OBJ: TMemoField
      DisplayLabel = #1054#1073#1098#1077#1082#1090' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'DOG_OBJ'
      Origin = '"DOGOVOR"."DOG_OBJ"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDogovorREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"DOGOVOR"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDogovorPIOPLE: TMemoField
      DisplayLabel = #1050'. '#1083#1080#1094#1086
      FieldName = 'PIOPLE'
      Origin = '"DOGOVOR"."PIOPLE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDogovorEMAIL: TMemoField
      FieldName = 'EMAIL'
      Origin = '"DOGOVOR"."EMAIL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDogovorSTATUS: TIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"DOGOVOR"."STATUS"'
      Size = 32
    end
    object qDogovorID_DOGOVOR_TYPES: TIntegerField
      FieldName = 'ID_DOGOVOR_TYPES'
      Origin = '"DOGOVOR"."ID_DOGOVOR_TYPES"'
    end
    object qDogovorID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"DOGOVOR"."ID_C"'
    end
    object qDogovorNAME_TYPEOPL: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099
      FieldName = 'NAME_TYPEOPL'
      Origin = '"TYPEOPLS"."NAME"'
      Size = 32
    end
    object qDogovorNAME_CUR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NAME_CUR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qDogovorNAME_DOGTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'NAME_DOGTYPE'
      Origin = '"DOGOVOR_TYPES"."NAME"'
      Size = 32
    end
    object qDogovornVid: TStringField
      DisplayLabel = #1042#1080#1076' '
      FieldKind = fkCalculated
      FieldName = 'nVid'
      Size = 10
      Calculated = True
    end
  end
  object dsDogovor: TDataSource
    DataSet = qDogovor
    Left = 184
    Top = 152
  end
end
