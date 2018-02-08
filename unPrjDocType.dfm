object fmPrjDocType: TfmPrjDocType
  Left = 247
  Top = 144
  Width = 700
  Height = 483
  Caption = #1058#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1087#1086' '#1087#1088#1086#1077#1082#1090#1072#1084
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
    Left = 298
    Top = 0
    Height = 449
    Align = alRight
  end
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 298
    Height = 449
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbn1: TDBNavigator
      Left = 2
      Top = 429
      Width = 294
      Height = 18
      DataSource = dmIS.dsDOC_TYPE
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 2
      Width = 294
      Height = 427
      Align = alClient
      DataSource = dmIS.dsDOC_TYPE
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
          FieldName = 'sTR'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
        end
        item
          EditButtons = <>
          FieldName = 'ID_PROJ_DOC_TYPE'
          Footers = <>
          Title.Alignment = taCenter
          Title.EndEllipsis = True
        end>
    end
  end
  object p2: TPanel
    Left = 301
    Top = 0
    Width = 391
    Height = 449
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    object p3: TPanel
      Left = 2
      Top = 2
      Width = 387
      Height = 31
      Align = alTop
      BevelInner = bvRaised
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 66
        Height = 13
        Caption = #1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072':'
      end
      object lcb1: TDBLookupComboBox
        Left = 88
        Top = 4
        Width = 201
        Height = 21
        KeyField = 'ID_PROJ_TYPE'
        ListField = 'NAME'
        ListSource = dmIS.dsP_TYPE
        TabOrder = 0
        OnCloseUp = lcb1CloseUp
      end
    end
    object pc1: TPageControl
      Left = 2
      Top = 33
      Width = 387
      Height = 414
      ActivePage = ts1
      Align = alClient
      TabOrder = 1
      object ts1: TTabSheet
        Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
        object Splitter2: TSplitter
          Left = 0
          Top = 189
          Width = 379
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object dbg3: TDBGrid
          Left = 0
          Top = 192
          Width = 379
          Height = 194
          Align = alBottom
          DataSource = dsFFP
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'IDPOST'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Width = 271
              Visible = True
            end>
        end
        object pf1: TPanel
          Left = 0
          Top = 0
          Width = 379
          Height = 189
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object Panel1: TPanel
            Left = 2
            Top = 161
            Width = 375
            Height = 26
            Align = alBottom
            TabOrder = 0
            DesignSize = (
              375
              26)
            object sb1: TSpeedButton
              Left = 112
              Top = 2
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337F33333333333333033333333333333373F333333333333090333
                33333333337F7F33333333333309033333333333337373F33333333330999033
                3333333337F337F33333333330999033333333333733373F3333333309999903
                333333337F33337F33333333099999033333333373333373F333333099999990
                33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333300033333333333337773333333}
              NumGlyphs = 2
              OnClick = sb1Click
            end
            object sb2: TSpeedButton
              Left = 224
              Top = 2
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
                3333333333777F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
                3333333777737777F333333099999990333333373F3333373333333309999903
                333333337F33337F33333333099999033333333373F333733333333330999033
                3333333337F337F3333333333099903333333333373F37333333333333090333
                33333333337F7F33333333333309033333333333337373333333333333303333
                333333333337F333333333333330333333333333333733333333}
              NumGlyphs = 2
              OnClick = sb2Click
            end
          end
          object dbg4: TDBGrid
            Left = 2
            Top = 26
            Width = 375
            Height = 117
            Align = alClient
            DataSource = dmIS.dsD_FILL
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbg4DrawColumnCell
            OnDblClick = dbg4DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'aLL'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                ReadOnly = True
                Title.Alignment = taCenter
                Width = 271
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'POSIT'
                Title.Alignment = taCenter
                Width = 29
                Visible = True
              end>
          end
          object tlbf1: TToolBar
            Left = 2
            Top = 2
            Width = 375
            Height = 24
            AutoSize = True
            Caption = 'tlbf1'
            Flat = True
            Images = fmMain.il1
            TabOrder = 2
            object tbf1: TToolButton
              Left = 0
              Top = 0
              Hint = #1058#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1083#1080#1095#1085#1099#1093' '#1087#1088#1086#1077#1082#1090#1086#1074
              Caption = 'tbf1'
              ImageIndex = 20
              ParentShowHint = False
              ShowHint = True
              OnClick = tbf1Click
            end
            object ToolButton1: TToolButton
              Left = 23
              Top = 0
              Width = 34
              Caption = 'ToolButton1'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object tbf2: TToolButton
              Left = 57
              Top = 0
              Hint = #1059#1090#1074#1077#1088#1078#1076#1072#1102#1097#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
              Caption = 'tbf2'
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              OnClick = dbg4DblClick
            end
            object ToolButton2: TToolButton
              Left = 80
              Top = 0
              Caption = 'ToolButton2'
              ImageIndex = 9
            end
          end
          object dbn2: TDBNavigator
            Left = 2
            Top = 143
            Width = 375
            Height = 18
            DataSource = dmIS.dsD_FILL
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
            Align = alBottom
            TabOrder = 3
          end
        end
      end
      object ts2: TTabSheet
        Caption = #1056#1072#1089#1089#1099#1083#1082#1072
        ImageIndex = 1
        object Splitter3: TSplitter
          Left = 0
          Top = 196
          Width = 379
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object dbg5: TDBGrid
          Left = 0
          Top = 199
          Width = 379
          Height = 194
          Align = alBottom
          DataSource = dsFGP
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'IDPOST'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Width = 271
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 379
          Height = 196
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object Panel3: TPanel
            Left = 2
            Top = 168
            Width = 375
            Height = 26
            Align = alBottom
            TabOrder = 0
            DesignSize = (
              375
              26)
            object sb3: TSpeedButton
              Left = 112
              Top = 2
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337F33333333333333033333333333333373F333333333333090333
                33333333337F7F33333333333309033333333333337373F33333333330999033
                3333333337F337F33333333330999033333333333733373F3333333309999903
                333333337F33337F33333333099999033333333373333373F333333099999990
                33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333300033333333333337773333333}
              NumGlyphs = 2
              OnClick = sb3Click
            end
            object sb4: TSpeedButton
              Left = 224
              Top = 2
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
                3333333333777F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
                3333333777737777F333333099999990333333373F3333373333333309999903
                333333337F33337F33333333099999033333333373F333733333333330999033
                3333333337F337F3333333333099903333333333373F37333333333333090333
                33333333337F7F33333333333309033333333333337373333333333333303333
                333333333337F333333333333330333333333333333733333333}
              NumGlyphs = 2
              OnClick = sb4Click
            end
          end
          object dbg6: TDBGrid
            Left = 2
            Top = 26
            Width = 375
            Height = 135
            Align = alClient
            DataSource = dmIS.dsD_GET
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbg6DrawColumnCell
            OnDblClick = dbg6DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'aLL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_POST'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAME'
                Title.Alignment = taCenter
                Width = 259
                Visible = True
              end>
          end
          object tlbg1: TToolBar
            Left = 2
            Top = 2
            Width = 375
            Height = 24
            AutoSize = True
            Caption = 'tlbf1'
            Flat = True
            Images = fmMain.il1
            TabOrder = 2
            object tbg1: TToolButton
              Left = 0
              Top = 0
              Hint = #1058#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1083#1080#1095#1085#1099#1093' '#1087#1088#1086#1077#1082#1090#1086#1074
              Caption = 'tbf1'
              ImageIndex = 20
              ParentShowHint = False
              ShowHint = True
              OnClick = tbg1Click
            end
            object ToolButton3: TToolButton
              Left = 23
              Top = 0
              Width = 34
              Caption = 'ToolButton1'
              ImageIndex = 2
              Style = tbsSeparator
            end
            object tbg2: TToolButton
              Left = 57
              Top = 0
              Hint = #1059#1090#1074#1077#1088#1078#1076#1072#1102#1097#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
              Caption = 'tbf2'
              ImageIndex = 8
              ParentShowHint = False
              ShowHint = True
              OnClick = dbg6DblClick
            end
          end
        end
      end
    end
  end
  object qFGPOST: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct P.IDPOST, P.NAME'
      'from POST P join PERSONNEL R'
      'on R.IDPOST = P.IDPOST and R.ACCESS_KEY IS NOT NULL'
      'where P.IDPOST NOT IN '
      '(SELECT ID_POST FROM PROJ_DOC_TYPES_GET WHERE'
      'ID_PROJ_TYPES = :idpt1 AND ID_PROJ_DOC_TYPE = :idpdt1)'
      'ORDER BY P.NAME')
    Left = 144
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idpt1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'idpdt1'
        ParamType = ptUnknown
      end>
    object qFGPOSTIDPOST: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'IDPOST'
      Origin = '"POST"."IDPOST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFGPOSTNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
  end
  object dsFFP: TDataSource
    DataSet = qFFPOST
    Left = 72
    Top = 200
  end
  object dsFGP: TDataSource
    DataSet = qFGPOST
    Left = 144
    Top = 200
  end
  object qFFPOST: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select distinct P.IDPOST, P.NAME'
      'from POST P join PERSONNEL R'
      'on R.IDPOST = P.IDPOST and R.ACCESS_KEY IS NOT NULL'
      'where P.IDPOST NOT IN '
      '(SELECT ID_POST FROM PROJ_DOC_TYPES_FILL WHERE'
      'ID_PROJ_TYPES = :idpt1 AND ID_PROJ_DOC_TYPE = :idpdt1)'
      'ORDER BY P.NAME')
    Left = 72
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idpt1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'idpdt1'
        ParamType = ptUnknown
      end>
    object qFFPOSTIDPOST: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'IDPOST'
      Origin = '"POST"."IDPOST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFFPOSTNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
  end
end
