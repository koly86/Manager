object fmEst: TfmEst
  Left = 240
  Top = 131
  Width = 1005
  Height = 634
  Caption = #1057#1084#1077#1090#1099
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
    Top = 548
    Width = 997
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter2: TSplitter
    Left = 250
    Top = 0
    Height = 548
  end
  object p3: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 548
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 246
      Height = 31
      Align = alTop
      BevelInner = bvRaised
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 34
        Height = 13
        Caption = #1053#1072#1081#1090#1080':'
      end
      object sb1: TSpeedButton
        Left = 200
        Top = 4
        Width = 23
        Height = 22
        Hint = #1057#1074#1103#1079#1072#1090#1100' '#1080#1079#1076#1077#1083#1080#1077' '#1089' '#1079#1072#1082#1072#1079#1086#1084
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCC20CCCCCCCCCCCCC2220CCCCCCCCCCCC2220CCCC
          CCCCCCC222220CCCCCCCCC2222220CCCCCCCC0220C2220CCCCCC020CCCC220CC
          CCCCCCCCCCC2220CCCCCCCCCCCCC220CCCCCCCCCCCCCC220CCCCCCCCCCCCCC02
          0CCCCCCCCCCCCCC020CCCCCCCCCCCCCC0220CCCCCCCCCCCCCCCC}
        ParentShowHint = False
        ShowHint = True
        OnClick = sb1Click
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
    object dbt1: TDBS_TreeView
      Left = 2
      Top = 33
      Width = 246
      Height = 513
      Align = alClient
      HideSelection = False
      Images = il1
      Indent = 19
      TabOrder = 1
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
  end
  object p5: TPanel
    Left = 0
    Top = 551
    Width = 997
    Height = 49
    Align = alBottom
    BevelInner = bvRaised
    TabOrder = 1
    DesignSize = (
      997
      49)
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 34
      Height = 13
      Caption = #1047#1072#1082#1072#1079':'
    end
    object DBText1: TDBText
      Left = 48
      Top = 8
      Width = 89
      Height = 17
      DataField = 'N_ORDER'
      DataSource = dsC_ORD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 152
      Top = 8
      Width = 768
      Height = 17
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NAME'
      DataSource = dsC_ORD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 88
      Top = 24
      Width = 81
      Height = 17
      DataField = 'ID_PRODUCT'
      DataSource = dsC_ORD
    end
    object DBText4: TDBText
      Left = 272
      Top = 24
      Width = 89
      Height = 17
      DataField = 'ID_ESTIMATE'
      DataSource = dsC_ORD
    end
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 67
      Height = 13
      Caption = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103':'
    end
    object Label6: TLabel
      Left = 224
      Top = 24
      Width = 35
      Height = 13
      Caption = #1057#1084#1077#1090#1072':'
    end
  end
  object p4: TPanel
    Left = 253
    Top = 0
    Width = 744
    Height = 548
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object p2: TPanel
      Left = 2
      Top = 356
      Width = 740
      Height = 190
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 0
      object pc1: TPageControl
        Left = 2
        Top = 2
        Width = 736
        Height = 186
        ActivePage = ts2
        Align = alClient
        TabOrder = 0
        TabPosition = tpBottom
        object ts1: TTabSheet
          Caption = #1058#1052#1062
          object dbg2: TDBGridEh
            Left = 0
            Top = 0
            Width = 728
            Height = 160
            Align = alClient
            DataSource = dsMat
            Flat = True
            FooterColor = 16776176
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnSortMarkingChanged = dbg2SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footer.FieldName = 'ID_OBJ'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.SortIndex = 1
                Title.SortMarker = smDownEh
                Title.TitleButton = True
                Width = 325
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Title.TitleButton = True
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE_BEZ_NDS'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SUMMA'
                Footer.FieldName = 'SUMMA'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'SUMMA_BEZ_NDS'
                Footer.FieldName = 'SUMMA_BEZ_NDS'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_OBJ'
                Footers = <>
                Title.TitleButton = True
              end>
          end
        end
        object ts2: TTabSheet
          Caption = #1056#1072#1073#1086#1090#1072
          ImageIndex = 1
          object dbg3: TDBGridEh
            Left = 0
            Top = 0
            Width = 728
            Height = 160
            Align = alClient
            DataSource = dsOper
            Flat = True
            FooterColor = 16776176
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnSortMarkingChanged = dbg3SortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'NAME'
                Footer.FieldName = 'ID_OBJ'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.SortIndex = 1
                Title.SortMarker = smDownEh
                Title.TitleButton = True
                Width = 323
              end
              item
                EditButtons = <>
                FieldName = 'UNAME'
                Footers = <>
                Title.TitleButton = True
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE'
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'PRICE_BEZ_NDS'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SUMMA'
                Footer.FieldName = 'SUMMA'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.TitleButton = True
              end
              item
                EditButtons = <>
                FieldName = 'SUMMA_BEZ_NDS'
                Footer.FieldName = 'SUMMA_BEZ_NDS'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_OBJ'
                Footers = <>
                Title.TitleButton = True
              end>
          end
        end
      end
    end
    object p1: TPanel
      Left = 2
      Top = 2
      Width = 740
      Height = 354
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object clb1: TCoolBar
        Left = 2
        Top = 2
        Width = 736
        Height = 54
        AutoSize = True
        Bands = <
          item
            Control = tlb2
            ImageIndex = -1
            MinHeight = 24
            Width = 732
          end
          item
            Control = tlb1
            ImageIndex = -1
            MinHeight = 24
            Width = 732
          end>
        object tlb1: TToolBar
          Left = 9
          Top = 26
          Width = 719
          Height = 24
          AutoSize = True
          Caption = 'tlb1'
          Flat = True
          Images = fmMain.il1
          TabOrder = 0
          object tb1: TToolButton
            Left = 0
            Top = 0
            Hint = #1042#1089#1077
            Caption = 'tb1'
            Down = True
            Grouped = True
            ImageIndex = 10
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
          end
          object tb2: TToolButton
            Left = 23
            Top = 0
            Hint = #1058#1086#1083#1100#1082#1086' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1077
            Caption = 'tb2'
            Grouped = True
            ImageIndex = 14
            ParentShowHint = False
            ShowHint = True
            Style = tbsCheck
          end
          object ToolButton4: TToolButton
            Left = 46
            Top = 0
            Width = 43
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object tb3: TToolButton
            Left = 89
            Top = 0
            Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1086#1074
            Caption = 'tb3'
            DropdownMenu = PopupMenu1
            ImageIndex = 13
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton8: TToolButton
            Left = 125
            Top = 0
            Width = 20
            Caption = 'ToolButton8'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object tb6: TToolButton
            Left = 145
            Top = 0
            Hint = #1069#1082#1089#1087#1086#1088#1090' '#1089#1084#1077#1090#1099' '#1074' Excel'
            Caption = 'tb6'
            DropdownMenu = PopupMenu2
            ImageIndex = 26
            ParentShowHint = False
            ShowHint = True
            Style = tbsDropDown
          end
          object ToolButton5: TToolButton
            Left = 181
            Top = 0
            Width = 33
            Caption = 'ToolButton5'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object tb4: TToolButton
            Left = 214
            Top = 0
            Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'-'#1086#1089#1085#1086#1074#1072#1085#1080#1103
            Caption = 'tb4'
            ImageIndex = 7
            ParentShowHint = False
            ShowHint = True
            OnClick = tb4Click
          end
          object ToolButton2: TToolButton
            Left = 237
            Top = 0
            Width = 41
            Caption = 'ToolButton2'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object tb5: TToolButton
            Left = 278
            Top = 0
            Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089#1084#1077#1090#1091' '#1089' '#1079#1072#1082#1072#1079#1086#1084
            Caption = 'tb5'
            ImageIndex = 8
            ParentShowHint = False
            ShowHint = True
            OnClick = tb5Click
          end
          object ToolButton7: TToolButton
            Left = 301
            Top = 0
            Width = 50
            Caption = 'ToolButton7'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object Label32: TLabel
            Left = 351
            Top = 0
            Width = 55
            Height = 22
            Caption = '    '#1053#1072#1081#1090#1080':   '
          end
          object ed1: TEdit
            Left = 406
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
        object tlb2: TToolBar
          Left = 9
          Top = 0
          Width = 719
          Height = 24
          AutoSize = True
          Caption = 'tlb2'
          Flat = True
          Images = fmMain.il1
          TabOrder = 1
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
          object ToolButton1: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 30
            Style = tbsSeparator
          end
          object cb1: TCheckBox
            Left = 31
            Top = 0
            Width = 74
            Height = 22
            Caption = #1048#1079#1076#1077#1083#1080#1103
            TabOrder = 1
            OnClick = cb1Click
          end
          object ToolButton3: TToolButton
            Left = 105
            Top = 0
            Width = 14
            Caption = 'ToolButton3'
            ImageIndex = 31
            Style = tbsSeparator
          end
          object Label5: TLabel
            Left = 119
            Top = 0
            Width = 52
            Height = 22
            Caption = ' '#1057#1084#1077#1090#1095#1080#1082': '
          end
          object lcb1: TDBLookupComboboxEh
            Left = 171
            Top = 0
            Width = 249
            Height = 22
            DropDownBox.Rows = 35
            DropDownBox.Sizable = True
            EditButtons = <>
            KeyField = 'ID_P'
            ListField = 'FIO'
            ListSource = dsFIO
            TabOrder = 0
            Visible = True
          end
          object ToolButton6: TToolButton
            Left = 420
            Top = 0
            Width = 8
            Caption = 'ToolButton6'
            ImageIndex = 32
            Style = tbsSeparator
          end
          object Label1: TLabel
            Left = 428
            Top = 0
            Width = 13
            Height = 22
            Caption = #1057'  '
          end
          object dtp1: TDBDateTimeEditEh
            Left = 441
            Top = 0
            Width = 121
            Height = 22
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 2
            Visible = True
          end
          object ToolButton9: TToolButton
            Left = 562
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 33
            Style = tbsSeparator
          end
          object Label7: TLabel
            Left = 570
            Top = 0
            Width = 22
            Height = 22
            Caption = #1055#1054'  '
          end
          object dtp2: TDBDateTimeEditEh
            Left = 592
            Top = 0
            Width = 121
            Height = 22
            EditButtons = <>
            Kind = dtkDateEh
            TabOrder = 3
            Visible = True
          end
        end
      end
      object dbg1: TDBGridEh
        Left = 2
        Top = 56
        Width = 736
        Height = 278
        Align = alClient
        DataSource = dsEst
        Flat = True
        FooterColor = 16776176
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        RowHeight = 4
        RowLines = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        OnDblClick = dbg1DblClick
        OnGetCellParams = dbg1GetCellParams
        OnSortMarkingChanged = dbg1SortMarkingChanged
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ID_ESTIMATE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footer.FieldName = 'ID_ESTIMATE'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 224
          end
          item
            EditButtons = <>
            FieldName = 'D_CREATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'D_CONFIRM'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'SUM_NDS'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_DELIVERY'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_DELIVERY_BEZ_NDS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_TOOLS'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_TOOLS_BEZ_NDS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PROFIT'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'ID_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'FIO'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 203
          end
          item
            EditButtons = <>
            FieldName = 'CONF'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 222
          end
          item
            EditButtons = <>
            FieldName = 'ID_ITEM'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'NPROD'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
            Width = 285
          end
          item
            EditButtons = <>
            FieldName = 'ID_VERSION'
            Footers = <>
            Title.Alignment = taCenter
            Title.TitleButton = True
          end>
      end
      object dbn1: TDBNavigator
        Left = 2
        Top = 334
        Width = 736
        Height = 18
        DataSource = dsEst
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alBottom
        TabOrder = 2
      end
    end
  end
  object qEst: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct e.id_estimate, e.id_version, e.name,'
      'e.d_create, e.id_creator, e.d_confirm, e.id_confirm, e.amount,'
      'e.price_date, e.sum_nds, e.price_delivery,'
      
        '(select nds_val from get_nds_sum(e.price_delivery,1)) price_deli' +
        'very_bez_nds,'
      ' e.price_tools,'
      
        '(select nds_val from get_nds_sum(e.price_tools,1)) price_tools_b' +
        'ez_nds,'
      
        'e.profit, e.id_doc, p.fio, r.fio conf, i.id_item, i.name nprod, ' +
        'e.dop_price'
      'from estimates e'
      'join product_objects b on b.id_version = e.id_version'
      'and b.id_parent = 0'
      'join items i on i.id_item = b.id_product'
      'left join personnel p on p.id_p = e.id_creator'
      'left join personnel r on r.id_p = e.id_confirm')
    Left = 456
    Top = 128
    object qEstID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"ESTIMATES"."ID_ESTIMATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"ESTIMATES"."ID_VERSION"'
    end
    object qEstNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"ESTIMATES"."NAME"'
      Size = 128
    end
    object qEstD_CREATE: TDateTimeField
      DisplayLabel = #1057#1086#1079#1076#1072#1085#1072
      FieldName = 'D_CREATE'
      Origin = '"ESTIMATES"."D_CREATE"'
    end
    object qEstID_CREATOR: TIntegerField
      FieldName = 'ID_CREATOR'
      Origin = '"ESTIMATES"."ID_CREATOR"'
    end
    object qEstD_CONFIRM: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072
      FieldName = 'D_CONFIRM'
      Origin = '"ESTIMATES"."D_CONFIRM"'
    end
    object qEstID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"ESTIMATES"."ID_CONFIRM"'
    end
    object qEstAMOUNT: TIntegerField
      DisplayLabel = #1053#1072' '#1090#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"ESTIMATES"."AMOUNT"'
      DisplayFormat = '#0.0'
    end
    object qEstPRICE_DATE: TDateField
      DisplayLabel = #1055#1086' '#1094#1077#1085#1072#1084' '#1085#1072
      FieldName = 'PRICE_DATE'
      Origin = '"ESTIMATES"."PRICE_DATE"'
    end
    object qEstSUM_NDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'SUM_NDS'
      Origin = '"ESTIMATES"."SUM_NDS"'
      DisplayFormat = '#0.0'
    end
    object qEstPRICE_DELIVERY: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'PRICE_DELIVERY'
      Origin = '"ESTIMATES"."PRICE_DELIVERY"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEstPRICE_DELIVERY_BEZ_NDS: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_DELIVERY_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstPRICE_TOOLS: TFloatField
      DisplayLabel = #1054#1089#1085#1072#1089#1090#1082#1072
      FieldName = 'PRICE_TOOLS'
      Origin = '"ESTIMATES"."PRICE_TOOLS"'
      DisplayFormat = '### ### ##0.00'
    end
    object qEstPRICE_TOOLS_BEZ_NDS: TFloatField
      DisplayLabel = #1054#1089#1085#1072#1089#1090#1082#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_TOOLS_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qEstPROFIT: TFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1087#1088#1080#1073#1099#1083#1100
      FieldName = 'PROFIT'
      Origin = '"ESTIMATES"."PROFIT"'
      DisplayFormat = '#0.0'
    end
    object qEstID_DOC: TIntegerField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"ESTIMATES"."ID_DOC"'
    end
    object qEstFIO: TIBStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEstCONF: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083
      FieldName = 'CONF'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEstID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstNPROD: TIBStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'NPROD'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qEstDOP_PRICE: TFloatField
      DisplayLabel = #1053#1072#1082#1083'. '#1088#1072#1089#1093#1086#1076#1099' '#1085#1072' '#1084#1072#1090#1077#1088#1080#1072#1083
      FieldName = 'DOP_PRICE'
      Origin = '"ESTIMATES"."DOP_PRICE"'
      DisplayFormat = '#0.0000'
    end
  end
  object dsEst: TDataSource
    DataSet = qEst
    Left = 456
    Top = 176
  end
  object qMat: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_obj, i.name, u.name uname, s.price,'
      '(select nds_val from get_nds_sum(s.price,1 )) price_bez_nds,'
      'sum(s.amount) amount, sum(s.summa) summa,'
      '(select nds_val from get_nds_sum( sum(s.summa),1)) summa_bez_nds'
      'from estimate_pos s'
      'join items i on i.id_item = s.id_obj'
      'join units u on u.id_unit = s.id_unit'
      'where s.id_estimate = :id_estimate and s.obj_type = 1'
      'group by s.id_obj, i.name, u.name, s.price')
    Left = 504
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qMatID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1052#1062
      FieldName = 'ID_OBJ'
      Origin = '"ESTIMATE_POS"."ID_OBJ"'
    end
    object qMatNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1052#1062
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qMatUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qMatPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      Origin = '"ESTIMATE_POS"."PRICE"'
      DisplayFormat = '### ### ##0.00'
    end
    object qMatPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qMatAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"ESTIMATE_POS"."AMOUNT"'
      DisplayFormat = '#0.0000'
    end
    object qMatSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Origin = '"ESTIMATE_POS"."SUMMA"'
      DisplayFormat = '### ### ##0.00'
    end
    object qMatSUMMA_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMMA_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
  end
  object qOper: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsEst
    SQL.Strings = (
      'select s.id_obj, o.name, u.name uname, s.price,'
      '(select nds_val from get_nds_sum(s.price,1)) price_bez_nds,'
      'sum(s.amount) amount, sum(s.summa) summa,'
      '(select nds_val from get_nds_sum(sum(s.summa),1)) summa_bez_nds,'
      'sum(s.amount_time) amount_time'
      'from estimate_pos s'
      'join product_oper p on p.id_prod_oper = s.id_obj'
      'join operations o on o.id_area = p.id_area'
      'and o.id_operation = p.id_operation'
      'join units u on u.id_unit = s.id_unit'
      'where s.id_estimate = :id_estimate and s.obj_type = 2'
      'group by s.id_obj, o.name, u.name, s.price')
    Left = 544
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_estimate'
        ParamType = ptUnknown
      end>
    object qOperID_OBJ: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_OBJ'
      ProviderFlags = []
    end
    object qOperNAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 30
    end
    object qOperUNAME: TIBStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldName = 'UNAME'
      ProviderFlags = []
      Size = 16
    end
    object qOperPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qOperPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qOperAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '#0.0000'
    end
    object qOperSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qOperSUMMA_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'SUMMA_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.00'
    end
    object qOperAMOUNT_TIME: TFloatField
      FieldName = 'AMOUNT_TIME'
      ProviderFlags = []
    end
  end
  object dsMat: TDataSource
    DataSet = qMat
    Left = 504
    Top = 176
  end
  object dsOper: TDataSource
    DataSet = qOper
    Left = 552
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 136
    object N1: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1080#1079#1076#1077#1083#1080#1077' ('#1085#1072' '#1090#1080#1088#1072#1078')'
      OnClick = N1Click
    end
    object N4: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1080#1079#1076#1077#1083#1080#1077' ('#1079#1072' '#1096#1090#1091#1082#1091')'
      OnClick = N4Click
    end
    object N2: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1086#1089#1085#1072#1089#1090#1082#1091
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1057#1084#1077#1090#1072' '#1085#1072' '#1091#1087#1072#1082#1086#1074#1082#1091
      OnClick = N3Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
  object qFIO: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct p.id_p, p.fio'
      'from estimates e'
      'join personnel p on p.id_p = e.id_creator'
      'order by p.fio')
    Left = 608
    Top = 128
    object qFIOID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFIOFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsFIO: TDataSource
    DataSet = qFIO
    Left = 608
    Top = 176
  end
  object dsC_ORD: TDataSource
    DataSet = qC_ORD
    Left = 656
    Top = 176
  end
  object qC_ORD: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.n_order, p.name, p.id_product, p.id_estimate,'
      'coalesce(p.status,0) status'
      'from project_ords p'
      'where p.id_order = :c_ord')
    Left = 647
    Top = 122
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c_ord'
        ParamType = ptUnknown
      end>
    object qC_ORDN_ORDER: TIBStringField
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qC_ORDNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qC_ORDID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qC_ORDID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qC_ORDSTATUS: TIntegerField
      FieldName = 'STATUS'
      ProviderFlags = []
    end
  end
  object il1: TImageList
    Left = 128
    Top = 152
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000008080000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF0000000000000000
      0000000000000000000000808000000000000000000000808000008080000000
      0000000000000080800000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000008080000080800000808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF0000000000000000
      0000000000000000000000808000000000000080800000808000FFFFFF000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000008080000080800000FFFF000000000000000000C0C0C000000000000080
      8000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000C0C0C0000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000FF0000000000000000
      0000000000000080800000000000FFFFFF000000000000808000FFFFFF000000
      0000FFFFFF00FFFFFF0000808000000000000000000000000000000000000000
      0000008080000080800080808000FFFFFF008080800080808000C0C0C0000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C0008080800080808000808080008080800080808000808080008080
      8000000000008080800000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF0000808000000000000000FF00FFFFFF0080008000FFFF
      FF00808080000000000000000000000000000080000000FF0000000000008000
      8000FF00FF000080800000808000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF000000000000808000000000000000000000000000000000000000
      00000000000000000000C0C0C0000000000000000000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF0000808000000000000000FF00FFFFFF0080008000FFFF
      FF00808080000000000000000000000000000080000000FF0000000000008000
      8000FF00FF000080800000808000FFFFFF00FFFFFF00FFFFFF00808080000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000008080000000000000808000008080000000
      000000000000000000000000000000000000000000008080800080808000C0C0
      C000C0C0C000C0C0C000C0C0C000000000008080800080808000FFFFFF008080
      8000000000008080800080808000000000000000000000000000000000008080
      8000FFFFFF0000FFFF0000808000000000000000FF00FFFFFF0080008000FFFF
      FF00808080000000000000000000000000000000000000800000000000008000
      8000FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FFFFFF000080800000000000000000000000000000000000000000000000
      00000080800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000000080
      800000000000000000000000000000000000808080000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000000000008080800080808000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF000080800000000000FFFFFF00FFFFFF0080008000FFFF
      FF008080800000000000000000000000000000000000FFFFFF00000000008000
      8000FF00FF000000000000808000FFFFFF0000000000FFFFFF00808080000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF00808080000080800000FFFF0000FF
      FF000000000000000000000000000000000080808000C0C0C000C0C0C000FFFF
      FF00808080000000000000000000000000000000000000000000C0C0C0008080
      8000C0C0C0008080800000000000000000000000000000000000000000008080
      8000FFFFFF0000FFFF000080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008080800000000000000000000000000000000000FFFFFF00000000008000
      8000FF00FF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000808000FFFFFF000000000000000000FFFFFF00008080000000
      000000000000000000000000000000000000808080000000000000000000FFFF
      FF0080808000C0C0C000FFFFFF0000000000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000800000000080800000808000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000008000
      8000FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000808000008080000000000000000000008080000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000080808000C0C0C00000000000C0C0C000C0C0C000C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000000000000000000080808000C0C0C000000000008000
      8000FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000008080000080800000808000C0C0C0000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000FFFFFF00000000008080800080808000C0C0C000C0C0C000C0C0C0008080
      8000000000008080800000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000000000000000
      0000800080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000FFFF000000000000000000C0C0C000000000000080
      800000000000000000000000000000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800080808000FFFFFF008080800080808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000080808000C0C0C000C0C0C000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF00808080000080800000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C000C0C0C000C0C0C00080808000C0C0C000000000000000
      00000000000000000000000000000000000000000000C0C0C00080808000C0C0
      C000C0C0C0008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000080808000FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF008080
      800000000000FFFFFF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      000000000000FFFFFF0000808000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080808000808080008080
      800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000080
      8000008080008080800000000000000000008080800080808000808080008080
      8000808080008080800000808000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000808080008080
      8000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000008080800000000000FFFFFF008080
      800000000000FFFFFF0000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000FFFFFF00FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000008080800000000000FFFFFF000000
      0000000000008080800000000000000000008080000080800000000000008080
      0000000000000000000000000000000000000000FF00C0C0C0000000000000FF
      FF0000FFFF0000FFFF0000FFFF00008080000080800000000000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00000000000000FF0000000000C0C0C000C0C0C000FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C00080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      000000000000FFFFFF0000000000000000008080800000000000FFFFFF008080
      80000000000080808000FFFF00000000000080800000FFFF000000000000FFFF
      0000FFFF00000000000000000000000000000000FF000000000000FFFF000000
      0000FFFFFF0000000000008080000080800000808000FFFFFF00808080000000
      FF000000FF000000FF000000FF000000FF0000000000C0C0C000C0C0C000C0C0
      C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800000000000000000000000000000000000808080000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      0000FFFFFF000000000000000000000000008080800000000000FFFFFF000000
      00008080000080800000FFFF0000FFFF0000000000000000000080808000FFFF
      000000000000808080000000000000000000000000000000000000FFFF000000
      00008080800000000000000000000080800000FFFF0000FFFF00000000000000
      FF000000FF000000FF000000FF000000FF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000080808000C0C0C00000000000FFFFFF000000000080808000000000000000
      000000000000FFFFFF0000000000000000008080800000000000FFFFFF008080
      8000FFFF0000FFFF0000FFFF0000C0C0C000C0C0C000C0C0C000000000008080
      8000FFFF0000FFFF00000000000000000000FFFFFF00FFFFFF0000FFFF0000FF
      FF0000000000C0C0C0000000000000FFFF0000FFFF0000FFFF00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C0000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C0000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      00008080800080808000FFFF000000000000C0C0C000C0C0C00000000000FFFF
      000000000000000000000000000000000000008000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000000000C0C0C000FFFF
      FF000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00C0C0
      C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C00000000000C0C0C0008080800000000000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000008080800000000000FFFFFF008080
      80000000000080808000FFFF000080800000C0C0C000C0C0C00000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000FFFF0000FFFF0000FFFF00FFFFFF00C0C0C000C0C0C000FFFF
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C0008080800000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000008080800000000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000FF000000000080808000FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF000000FF000000000000000000000000008080
      8000808080008080800000000000C0C0C000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000C0C0C00080808000C0C0C000C0C0C00000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000808000000000008080800080808000000000000000
      0000000000000000000000000000000000000000FF000000FF0000000000FFFF
      FF008080800000FFFF000000000000000000FFFFFF0000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000008080800000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFFFFFFFFBF9FF81FFE3FF8FF1C93
      F00FFC3FF8FF1801F00FE027E0071000F00FC003E0070000F81FE007E0070001
      F81F8001E007A003F00F0001E007A003F00F0001E007A38FF81F0001E007A3FF
      F81FE007E00703FFF00FE003F9FF17FFF00FC007F8FFF7FFF00FE42FC0DFA37F
      F81FFC3FC03F807FFE7FFC3FD07F80FFFFFFFFF3FFFFFFFF03FFFFE1FFBFFFFF
      01FF8000FE0FFE9B00FF0003F803FC0300FF0003E001F801003700008001F800
      000700008001F801000300008001C003000100008001C0030001000F8001000F
      000100078001001F0007800F8007C03F00170000C01FC03F003F0000F07FD17F
      80FF0000FDFFF1FFFFFFFCFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object xlReport1: TxlReport
    DataExportMode = xdmDDE
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'C:\vz\IS_MPK\IS_MPK\Tmp\newest.xls'
    DataSources = <
      item
        DataSet = qMat
        Alias = 'r'
        Range = 'rr3'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end
      item
        DataSet = qOper
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
    Left = 157
    Top = 221
  end
  object PopupMenu2: TPopupMenu
    Left = 327
    Top = 154
    object N5: TMenuItem
      Caption = #1057#1084#1077#1090#1072' ('#1085#1072' '#1090#1080#1088#1072#1078')'
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1057#1084#1077#1090#1072' ('#1079#1072' '#1096#1090#1091#1082#1091')'
      OnClick = N6Click
    end
    object Excel2: TMenuItem
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1074#1099#1073#1086#1088#1082#1091' '#1074' Excel'
      OnClick = Excel2Click
    end
  end
end
