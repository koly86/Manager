object fmClients: TfmClients
  Left = 183
  Top = 178
  Width = 799
  Height = 560
  Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
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
    Top = 269
    Width = 791
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 269
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object clb1: TCoolBar
      Left = 2
      Top = 2
      Width = 787
      Height = 28
      AutoSize = True
      Bands = <
        item
          Control = tlb1
          ImageIndex = -1
          MinHeight = 24
          Width = 783
        end>
      object tlb1: TToolBar
        Left = 9
        Top = 0
        Width = 770
        Height = 24
        AutoSize = True
        Caption = 'tlb1'
        Flat = True
        Images = fmMain.il1
        TabOrder = 0
        object tb0: TToolButton
          Left = 0
          Top = 0
          Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
          Caption = 'tb0'
          ImageIndex = 29
          ParentShowHint = False
          ShowHint = True
          OnClick = tb0Click
        end
        object ToolButton3: TToolButton
          Left = 23
          Top = 0
          Caption = 'ToolButton3'
          ImageIndex = 26
          OnClick = ToolButton3Click
        end
        object tb1: TToolButton
          Left = 46
          Top = 0
          Hint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099' (AXAPTA)'
          Caption = 'tb1'
          ImageIndex = 14
          ParentShowHint = False
          ShowHint = True
          OnClick = tb1Click
        end
        object ToolButton1: TToolButton
          Left = 69
          Top = 0
          Width = 26
          Caption = 'ToolButton1'
          ImageIndex = 30
          Style = tbsSeparator
        end
        object tb2: TToolButton
          Left = 95
          Top = 0
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
          Caption = 'tb2'
          ImageIndex = 3
          ParentShowHint = False
          ShowHint = True
          OnClick = tb2Click
        end
        object ToolButton2: TToolButton
          Left = 118
          Top = 0
          Width = 30
          Caption = 'ToolButton2'
          ImageIndex = 30
          Style = tbsSeparator
        end
        object Panel1: TPanel
          Left = 148
          Top = 0
          Width = 186
          Height = 22
          TabOrder = 0
          object rb1: TRadioButton
            Left = 8
            Top = 2
            Width = 73
            Height = 17
            Caption = #1050#1083#1080#1077#1085#1090#1099
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rb1Click
          end
          object rb2: TRadioButton
            Left = 88
            Top = 2
            Width = 89
            Height = 17
            Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
            TabOrder = 1
            OnClick = rb1Click
          end
        end
        object Label10: TLabel
          Left = 334
          Top = 0
          Width = 55
          Height = 22
          Caption = '    '#1053#1072#1081#1090#1080':   '
        end
        object ed1: TEdit
          Left = 389
          Top = 0
          Width = 102
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
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 30
      Width = 787
      Height = 219
      Align = alClient
      DataSource = dmIS.dsAg
      Flat = True
      FooterColor = clSkyBlue
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      OnSortMarkingChanged = dbg1SortMarkingChanged
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID_ITEM'
          Footer.FieldName = 'ID_ITEM'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Alignment = taCenter
          Title.SortIndex = 1
          Title.SortMarker = smDownEh
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
          Width = 347
        end
        item
          EditButtons = <>
          FieldName = 'ID_C'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_AX'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
          Width = 85
        end>
    end
    object dbn1: TDBNavigator
      Left = 2
      Top = 249
      Width = 787
      Height = 18
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 2
    end
  end
  object p2: TPanel
    Left = 0
    Top = 272
    Width = 791
    Height = 254
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object pc1: TPageControl
      Left = 2
      Top = 2
      Width = 787
      Height = 250
      ActivePage = ts3
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      object ts2: TTabSheet
        Caption = #1057#1095#1077#1090#1072
        ImageIndex = 1
        object dbg2: TDBGridEh
          Left = 0
          Top = 0
          Width = 779
          Height = 224
          Align = alClient
          DataSource = dmIS.dsAINN
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          OnGetCellParams = dbg2GetCellParams
          OnSortMarkingChanged = dbg2SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'INN'
              Footers = <>
              Title.Alignment = taCenter
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'RCH'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 134
            end
            item
              EditButtons = <>
              FieldName = 'BIK'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'KORCH'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 143
            end
            item
              EditButtons = <>
              FieldName = 'NAME_BIK'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 225
            end
            item
              EditButtons = <>
              FieldName = 'FILIAL'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 200
            end>
        end
      end
      object ts1: TTabSheet
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1102#1088'.'#1083#1080#1094#1072
        DesignSize = (
          779
          224)
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 27
          Height = 13
          Caption = #1048#1053#1053':'
        end
        object DBText1: TDBText
          Left = 40
          Top = 8
          Width = 97
          Height = 17
          DataField = 'INN'
          DataSource = dmIS.dsUrAg
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 152
          Top = 8
          Width = 619
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'NAME'
          DataSource = dmIS.dsUrAg
        end
        object DBText3: TDBText
          Left = 48
          Top = 32
          Width = 715
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ADRES1'
          DataSource = dmIS.dsUrAg
        end
        object DBText4: TDBText
          Left = 48
          Top = 48
          Width = 715
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'ADRES2'
          DataSource = dmIS.dsUrAg
        end
        object Label2: TLabel
          Left = 8
          Top = 32
          Width = 34
          Height = 13
          Caption = #1040#1076#1088#1077#1089':'
        end
        object DBText5: TDBText
          Left = 64
          Top = 136
          Width = 241
          Height = 17
          DataField = 'TEL'
          DataSource = dmIS.dsUrAg
        end
        object DBText6: TDBText
          Left = 232
          Top = 64
          Width = 369
          Height = 17
          DataField = 'DOLFIRM'
          DataSource = dmIS.dsUrAg
        end
        object DBText7: TDBText
          Left = 232
          Top = 80
          Width = 377
          Height = 17
          DataField = 'FIOFIRM'
          DataSource = dmIS.dsUrAg
        end
        object DBText8: TDBText
          Left = 232
          Top = 96
          Width = 377
          Height = 17
          DataField = 'DOLBYX'
          DataSource = dmIS.dsUrAg
        end
        object Label3: TLabel
          Left = 8
          Top = 136
          Width = 48
          Height = 13
          Caption = #1058#1077#1083#1077#1092#1086#1085':'
        end
        object Label4: TLabel
          Left = 152
          Top = 64
          Width = 74
          Height = 13
          Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100':'
        end
        object Label5: TLabel
          Left = 152
          Top = 96
          Width = 54
          Height = 13
          Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088':'
        end
        object DBText9: TDBText
          Left = 232
          Top = 112
          Width = 377
          Height = 17
          DataField = 'FIOBYX'
          DataSource = dmIS.dsUrAg
        end
        object DBText10: TDBText
          Left = 40
          Top = 64
          Width = 97
          Height = 17
          DataField = 'KPP'
          DataSource = dmIS.dsUrAg
        end
        object DBText11: TDBText
          Left = 40
          Top = 80
          Width = 105
          Height = 17
          DataField = 'OGRN'
          DataSource = dmIS.dsUrAg
        end
        object DBText12: TDBText
          Left = 56
          Top = 152
          Width = 145
          Height = 17
          DataField = 'OKVED'
          DataSource = dmIS.dsUrAg
        end
        object Label6: TLabel
          Left = 8
          Top = 64
          Width = 26
          Height = 13
          Caption = #1050#1055#1055':'
        end
        object Label7: TLabel
          Left = 8
          Top = 80
          Width = 32
          Height = 13
          Caption = #1054#1043#1056#1053':'
        end
        object Label8: TLabel
          Left = 8
          Top = 152
          Width = 41
          Height = 13
          Caption = #1054#1050#1042#1045#1044':'
        end
        object Label9: TLabel
          Left = 224
          Top = 152
          Width = 34
          Height = 13
          Caption = #1054#1050#1055#1054':'
        end
        object DBText13: TDBText
          Left = 264
          Top = 152
          Width = 145
          Height = 17
          DataField = 'OKPO'
          DataSource = dmIS.dsUrAg
        end
        object DBText14: TDBText
          Left = 56
          Top = 168
          Width = 217
          Height = 17
          DataField = 'OKUD'
          DataSource = dmIS.dsUrAg
        end
        object Label11: TLabel
          Left = 8
          Top = 168
          Width = 35
          Height = 13
          Caption = #1054#1050#1059#1044':'
        end
      end
      object ts3: TTabSheet
        Caption = #1044#1086#1075#1086#1074#1086#1088#1072
        ImageIndex = 2
        object dbg3: TDBGridEh
          Left = 0
          Top = 0
          Width = 779
          Height = 224
          Align = alClient
          DataSource = dmIS.dsContr
          DrawMemoText = True
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          OnDblClick = dbg3DblClick
          OnSortMarkingChanged = dbg3SortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'INN'
              Footers = <>
              Title.Alignment = taCenter
              Title.SortIndex = 1
              Title.SortMarker = smDownEh
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 151
            end
            item
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 136
            end
            item
              EditButtons = <>
              FieldName = 'DOG_NUMBER'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'DOG_DATE_IN'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'DOG_DATE_OUT'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CNAME'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'DOG_NUMBER_'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'VID'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'KOL_DAY'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_TYPEOPL'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'PROC'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'DOG_OBJ'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'PIOPLE'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'EMAIL'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ID_DOGOVOR'
              Footers = <>
              Title.Alignment = taCenter
              Title.TitleButton = True
            end>
        end
      end
      object TabSheet1: TTabSheet
        Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
        ImageIndex = 3
        object Splitter2: TSplitter
          Left = 0
          Top = 149
          Width = 779
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 29
          Width = 779
          Height = 120
          Align = alClient
          DataSource = dsDoc
          DrawMemoText = True
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = DBGridEh1DblClick
          OnGetCellParams = DBGridEh1GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Width = 240
            end
            item
              EditButtons = <>
              FieldName = 'FILENAME'
              Footers = <>
              Width = 222
            end
            item
              EditButtons = <>
              FieldName = 'REM'
              Footers = <>
              Width = 211
            end
            item
              EditButtons = <>
              FieldName = 'D_EDIT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
              Width = 198
            end
            item
              EditButtons = <>
              FieldName = 'ID_DOC'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'INN'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'STATUS'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_ITEM_DOC'
              Footers = <>
              Width = 107
            end>
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 152
          Width = 779
          Height = 72
          Align = alBottom
          DataField = 'REM'
          DataSource = dsDoc
          ScrollBars = ssBoth
          TabOrder = 1
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 779
          Height = 29
          Caption = 'ToolBar1'
          Images = imgMonButton
          TabOrder = 2
          object ToolButton4: TToolButton
            Left = 0
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1091
            Caption = 'ToolButton4'
            ImageIndex = 5
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton4Click
          end
          object ToolButton5: TToolButton
            Left = 23
            Top = 2
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1082' '#1102#1088'. '#1083#1080#1094#1091
            Caption = 'ToolButton5'
            ImageIndex = 15
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton5Click
          end
          object ToolButton6: TToolButton
            Left = 46
            Top = 2
            Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            Caption = 'ToolButton6'
            ImageIndex = 0
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton6Click
          end
          object ToolButton7: TToolButton
            Left = 69
            Top = 2
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
            Caption = 'ToolButton7'
            ImageIndex = 18
            ParentShowHint = False
            ShowHint = True
            OnClick = ToolButton7Click
          end
        end
        object pnDoc: TPanel
          Left = 197
          Top = 0
          Width = 393
          Height = 185
          Color = clMoneyGreen
          TabOrder = 3
          Visible = False
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 391
            Height = 183
            Align = alClient
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            TabOrder = 0
            object Panel9: TPanel
              Left = 2
              Top = 136
              Width = 387
              Height = 45
              Align = alBottom
              BevelOuter = bvNone
              Color = clMoneyGreen
              TabOrder = 0
              object SpeedButton1: TSpeedButton
                Left = 196
                Top = 3
                Width = 23
                Height = 22
                Hint = #1060#1072#1081#1083
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object lbFname: TLabel
                Left = 0
                Top = 32
                Width = 27
                Height = 13
                Align = alBottom
                Caption = '         '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -8
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object BitBtn2: TBitBtn
                Left = 224
                Top = 0
                Width = 81
                Height = 25
                Caption = #1047#1072#1087#1080#1089#1072#1090#1100
                TabOrder = 0
                OnClick = BitBtn2Click
                Kind = bkOK
              end
              object BitBtn3: TBitBtn
                Left = 312
                Top = 0
                Width = 75
                Height = 25
                Caption = #1054#1090#1084#1077#1085#1072
                TabOrder = 1
                OnClick = BitBtn3Click
                Kind = bkCancel
              end
            end
            object Panel10: TPanel
              Left = 2
              Top = 15
              Width = 387
              Height = 27
              Align = alTop
              BevelOuter = bvNone
              Color = clMoneyGreen
              TabOrder = 1
              object Label12: TLabel
                Left = 8
                Top = 2
                Width = 76
                Height = 13
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              end
              object edDOcName: TEdit
                Left = 96
                Top = 0
                Width = 285
                Height = 21
                BevelInner = bvLowered
                TabOrder = 0
              end
            end
            object GroupBox2: TGroupBox
              Left = 2
              Top = 42
              Width = 387
              Height = 94
              Align = alClient
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              TabOrder = 2
              object edRem: TMemo
                Left = 2
                Top = 15
                Width = 383
                Height = 77
                Align = alClient
                BevelInner = bvNone
                ScrollBars = ssBoth
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  object qDoc: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dmIS.dsAg
    SQL.Strings = (
      ' select d.*,p.fio'
      ' from item_docs d'
      ' join personnel p on p.id_p = d.id_edit'
      ' where d.id_item = :id_item')
    Left = 166
    Top = 325
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qDocID_ITEM_DOC: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470' '#1079#1072#1087#1080#1089#1080
      FieldName = 'ID_ITEM_DOC'
      Origin = '"ITEM_DOCS"."ID_ITEM_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDocID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEM_DOCS"."ID_ITEM"'
    end
    object qDocINN: TIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Origin = '"ITEM_DOCS"."INN"'
      Size = 12
    end
    object qDocNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"ITEM_DOCS"."NAME"'
      Size = 64
    end
    object qDocD_EDIT: TDateTimeField
      DisplayLabel = #1044'/'#1089#1086#1079#1076#1072#1085#1080#1077
      FieldName = 'D_EDIT'
      Origin = '"ITEM_DOCS"."D_EDIT"'
    end
    object qDocID_EDIT: TIntegerField
      FieldName = 'ID_EDIT'
      Origin = '"ITEM_DOCS"."ID_EDIT"'
    end
    object qDocID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"ITEM_DOCS"."ID_DOC"'
    end
    object qDocFILENAME: TIBStringField
      DisplayLabel = #1048#1084#1103' '#1092#1072#1081#1083#1072
      FieldName = 'FILENAME'
      Origin = '"ITEM_DOCS"."FILENAME"'
      Size = 128
    end
    object qDocREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"ITEM_DOCS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qDocSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"ITEM_DOCS"."STATUS"'
    end
    object qDocFIO: TIBStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsDoc: TDataSource
    DataSet = qDoc
    Left = 214
    Top = 325
  end
  object imgMonButton: TImageList
    Left = 108
    Top = 113
    Bitmap = {
      494C010114001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700F3F3F3000000000000000000000000000000000000000000000000000000
      000000000000F3F3F300000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000BFBFBF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000340EDE002900
      DF00707070000000000000000000000000000000000000000000000000000000
      0000B0AEBB003315BC00E7E7E7000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000BFBFBF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000BFBFBF00BFBFBF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000502FE4002900
      DF0038297C00D1D1D10000000000000000000000000000000000FEFEFE005E4A
      B9002900DF00B6AFD90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000808080000000
      000000000000000000000000000000000000000000000000000000000000350F
      DF002900DF0050505000E9E9E9000000000000000000FCFCFC003918CD002900
      DF00EAEAEA0000000000000000000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000BFBFBF00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00002900DF002900DF0061616100F5F5F500FCFCFC003918CD002900DF00EDED
      ED000000000000000000000000000000000000000000BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00FFFFFF000000FF00FFFFFF00000000000000000000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002900DF002C06D6006B6B6B003817CC002900DF00EDEDED000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000BFBFBF00000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF0000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000350FDF002900DF002900DF00DBDBDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF0000FFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC002E08D9002900DF002900DF0059595900E3E3E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000FF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000FF0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000FCFCFC003918CD002900DF00E1E1E1007960EB002900DF004C4A5800C9C9
      C900000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000000000000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC003918CD002900DF00D4D4D4000000000000000000D6CFF8002900DF004538
      7E009A9A9A00FEFEFE0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000808080000000
      0000000000000000000000000000000000000000000000000000F5F5F5003616
      CB002900DF00B6B4C10000000000000000000000000000000000000000002900
      DF00391BC200CECECE0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      80000000000000000000000000000000000000000000000000002E08D9002900
      DF006F60B4000000000000000000000000000000000000000000000000000000
      0000AD9EF1000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      00008080800000000000000000000000000000000000000000002900DF003D1F
      C500FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000C6214200C621
      4200C6214200C6214200C6214200C6214200C6214200C6214200C6214200C621
      4200C62142000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000BFBFBF0000000000BFBFBF00FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000C6000000C6214200C621
      4200C6214200C6214200C6214200C6214200C6214200C6214200C6214200C621
      4200C6A54200FF00000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00000000007F7F7F0000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF0000000000000000000000000000000000C6000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00C6C6A500C6C6A500C6638400C6638400C663
      8400C6214200FF000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      00000000000000000000000000000000000000000000FFFFFF00000000007F7F
      7F007F7F7F0000000000FFFFFF007F7F7F00FFFFFF00000000007F7F7F007F7F
      7F0000000000FFFFFF00000000000000000000000000C6000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C6C6A500C6C6A500C6C6A500C6638400C663
      8400C6214200FF00000000000000000000000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000007F7F7F0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000007F7F7F000000000000000000C6000000F7FFFF00FFFF
      FF00C6C60000C684A500C684A500C684A500C6A54200C6A54200C6A54200C663
      8400C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000007F7F7F0000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF00000000007F7F7F000000000000000000C6000000C6C6A500F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00C6C6A500C6C6A500C663
      8400C6214200FF00000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000C6000000C6C6A500C6C6
      A500C6C60000C6C60000C684A500C684A500C6A54200C6A54200C6C6A500C6C6
      A500C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      000000000000000000000000000000000000000000007F7F7F000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF007F7F7F00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000007F7F7F00000000000000000000000000C6000000C6C6A500C6C6
      A500C6C6A500F7FFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00C6C6A500C6C6
      A500C6214200FF00000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000000000000000000000000000C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      000000000000000000000000000000000000000000007F7F7F0000000000FFFF
      FF0000FFFF00FFFFFF000000FF00BFBFBF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000007F7F7F00000000000000000000000000C6000000C6A54200C6C6
      A500C6C60000C6C60000C6C60000C684A500C684A500C6A54200F7FFFF00C6C6
      A500C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000FFFF000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000000000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000C6000000C6638400C6A5
      4200C6C6A500C6C6A500C6C6A500F7FFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      A500C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000000000000000000000FFFF000000FF000000FF0000000000000000000000
      000000FFFF0000000000000000000000000000000000C6000000C6638400C663
      8400C6C60000C6C60000C6C60000C6C6A500C684A500C684A500FFFFFF00F7FF
      FF00C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000000000000000000000000000000000C6000000C6638400C663
      8400C6638400C6638400C6C6A500C6C6A500C6C6A500F7FFFF00FFFFFF00FFFF
      FF00C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF00BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF0000FFFF00FFFFFF000000FF000000FF0000FFFF00FFFF
      FF0000FFFF0000000000000000000000000000000000C6000000C6638400C663
      840000000000C663840000000000C6C6A50000000000C6C6A50000000000FFFF
      FF00C6214200FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000C6000000C66384000000
      0000C663840000000000C663840000000000C6C6A50000000000C6C6A5000000
      0000FFFFFF00FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000FF000000FF000000FF000000FF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFF0000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008484
      84000000000000000000000000000000000084000000FFFF0000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF0084000000FFFF0000FF000000FF0000000000
      0000FFFFFF000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000008484
      840000000000000000008484840000000000FF000000FF00000000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000848484000000
      0000FFFF00000000000000000000848484008484840000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF0000000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      FF00000000000000000000000000FFFFFF0000000000BDBDBD00000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000084848400FFFFFF00FFFF
      000000000000FFFF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000084848400FFFF0000FFFF
      FF00FFFF000000000000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF0000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      0000FFFFFF00FFFF0000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FF0000000000FF0000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000084848400FFFF
      FF00FFFF0000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000BDBDBD00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004200C6004200
      C6004200C6004200C6004200C6004200C6004200C6004200C6004200C6004200
      C6004200C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000A5C60000A5
      C60000A5C60000A5C60000A5C60000A5C60000A5C60000A5C60000A5C60000A5
      C6000063A500FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      00000000000000000000F7FFFF0084E7E70042E7E70000C6E70000C6E70000C6
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000084E7E70084E7E70042E7E70000C6E70000C6
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400F7FFFF000000
      000000000000C600C600C600C6008400C6008400A5008400A50042C6E70000C6
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084E7E700F7FF
      FF0000000000000000000000000000000000F7FFFF0084E7E70042E7E70000C6
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084E7E70084E7
      E7000000000000000000C600C600C600C6008400A5008400A50084E7E70042E7
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084E7E70084E7
      E70084E7E700F7FFFF00000000000000000000000000F7FFFF0084E7E70084E7
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840042C6E70084E7
      E700000000000000000000000000C600C6008400C6008400A500F7FFFF0084E7
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00007B7B7B00000000000000000000000000FFFFFF0000000000BDBDBD00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000C6E70042C6
      E70084E7E70084E7E70084E7E700F7FFFF0000000000000000000000000084E7
      E70000A5C600FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000007B7B7B000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000008400000084000000840000000000000000000000
      000000000000000000000000000000000000000000008484840000C6E70000C6
      E70000000000000000000000000084E7E700C600C6008400C60000000000F7FF
      FF0000A5C600FF00000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF00000084000000840000000000000000000000
      000000000000000000000000000000000000000000008484840000C6E70000C6
      E70000C6E70042C6E70084E7E70084E7E70084E7E700F7FFFF00000000000000
      000000A5C600FF00000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000FF000000FF000000FF00000084000000840000008400000084000000
      000000000000000000000000000000000000000000008484840000C6E70000C6
      E7000000000000C6E7000000000084E7E7000000000084E7E700000000000000
      000000A5C600FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000C6E7000000
      000000C6E7000000000000C6E7000000000084E7E7000000000084E7E7000000
      000000000000FF0000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      800080808000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000FF0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008000
      0000808080008080800080808000808080008080800080808000808080008000
      000080000000808080000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000008000
      000080000000800000008000000080000000800000008000000080000000FF00
      0000FF000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FF000000FFFF0000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FF000000FF00000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      000080000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FF000000FF00000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000084000000840000008400
      0000FF000000FF00000084000000840000008400000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF00000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000840000008400000084000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FF000000FF00000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000FFFF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FF000000FF00000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008007F9FFFFFF80010003F8FFE7FB0000
      0001FC7FC7F100008010FC3FC3C300000000F01FE18700000000F00FF00F0000
      8000F80FF81F00008000F81FFC3F00000000C00FF81FE0070000C007F00FE007
      0000E00FE183E0070000E01FC3E3E007C001F00FC7F7E00FC001F007C7FFE01F
      C007F803FFFFE03FE3FFF803FFFFE07FFFFFE00FF83FC007E01FE00F00018003
      C00FE00F000180038007E00F000180030003E00F000180030001E00F00018003
      8FD0E00F80038003CFD8A00B80038003EC04C00780038003F004E00F80078003
      F805E00F80078003FBF5C00780078003FA31C00780078003FBF7C007C00F8003
      FB07F83FE01FD557FC7FF83FF03FFFFFFFE7FFFFFFFFFFFFFFC3FFFFFFFFFC00
      E001FFFFFFFFFC00EF0DE7FFFFE7FC00E015DFFFFFFBFC00E125BFE007FDEC00
      D4457FF00FFEE4008A857FF81FFEE00084857FF81FFE000082857FF66FFE0001
      C105BFEFF7FD0003E205CF9FF9F30007E001F07FFE0F000FE013FFFFFFFFE3FF
      E017FFFFFFFFE7FFE00FFFFFFFFFEFFFFFFFC007FFFF8E00FFFF8003FE7F0600
      FFFFBC03FC3F2600FFFFBE03FB1F2600C7FF9803F70F0600E3FF8F03EF478E00
      C7FF8C03DF23DE00EFFF8383BE01C600EFFF8E037E03C201E00780E37C078803
      E01F8E23780F9C07E03F80337017C8E1C00F8013601BE040CFFF800B406BF30C
      FFFFD55720FFFFC0FFFFFFFF7DFFFFE1FC00FFFFFFFFFFFFFC00C03FC03FFFFF
      2000C01FC01FFFFF0000C02FC00FF7E70000C037C007E0030000C003C003C003
      0000C003C00380030000C003C003CFE70000C0038003EFEF000080030003CFE7
      E000800300038003F800800300038003F000C0030003CFE7E001C003C003FFEF
      C403C003C003FFFFEC07C003C003FFFF00000000000000000000000000000000
      000000000000}
  end
  object od1: TOpenDialog
    Left = 286
    Top = 393
  end
  object qIN: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mmT
    Left = 384
    Top = 96
  end
end
