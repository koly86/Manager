object fmINDOCS: TfmINDOCS
  Left = 207
  Top = 127
  Width = 741
  Height = 546
  Caption = #1053#1086#1074#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
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
    Left = 0
    Top = 326
    Width = 733
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    MinSize = 70
  end
  object pc1: TPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 326
    ActivePage = ts2
    Align = alClient
    TabOrder = 0
    OnChange = pc1Change
    object ts1: TTabSheet
      Caption = #1042#1093#1086#1076#1103#1097#1080#1077
      object tlb1: TToolBar
        Left = 0
        Top = 0
        Width = 725
        Height = 24
        AutoSize = True
        Caption = 'tlb1'
        Flat = True
        Images = fmMain.il1
        TabOrder = 0
        object tb1: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1088#1080#1085#1103#1090#1100
          Caption = 'tb1'
          ImageIndex = 9
          ParentShowHint = False
          ShowHint = True
          OnClick = tb1Click
        end
        object ToolButton1: TToolButton
          Left = 23
          Top = 0
          Width = 18
          Caption = 'ToolButton1'
          ImageIndex = 10
          Style = tbsSeparator
        end
        object tb2: TToolButton
          Left = 41
          Top = 0
          Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100
          Caption = 'tb2'
          ImageIndex = 13
          ParentShowHint = False
          ShowHint = True
          OnClick = tb2Click
        end
        object ToolButton3: TToolButton
          Left = 64
          Top = 0
          Width = 17
          Caption = 'ToolButton3'
          ImageIndex = 14
          Style = tbsSeparator
        end
        object tb3: TToolButton
          Left = 81
          Top = 0
          Hint = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1076#1080#1079#1072#1081#1085#1077#1088#1072
          Caption = 'tb3'
          ImageIndex = 28
          ParentShowHint = False
          ShowHint = True
          OnClick = tb3Click
        end
      end
      object p1: TPanel
        Left = 0
        Top = 24
        Width = 725
        Height = 274
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object dbn1: TDBNavigator
          Left = 2
          Top = 254
          Width = 721
          Height = 18
          DataSource = dmIS.dsIN_G
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
        object dbg1: TDBGrid
          Left = 2
          Top = 65
          Width = 721
          Height = 189
          Align = alClient
          DataSource = dmIS.dsIN_G
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbg1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'gRAPH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fILL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Width = 9
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROJ_DOC'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DNAME'
              Title.Alignment = taCenter
              Width = 219
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NDTYPE'
              Title.Alignment = taCenter
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'D_DOC'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROJECT'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIO'
              Title.Alignment = taCenter
              Width = 224
              Visible = True
            end>
        end
        object p3: TPanel
          Left = 2
          Top = 2
          Width = 721
          Height = 63
          Align = alTop
          BevelInner = bvRaised
          TabOrder = 2
          DesignSize = (
            721
            63)
          object Label1: TLabel
            Left = 8
            Top = 24
            Width = 40
            Height = 13
            Caption = #1055#1088#1086#1077#1082#1090':'
          end
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 39
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090':'
          end
          object Label3: TLabel
            Left = 8
            Top = 40
            Width = 56
            Height = 13
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          end
          object Label4: TLabel
            Left = 376
            Top = 40
            Width = 54
            Height = 13
            Caption = #1044#1080#1079#1072#1081#1085#1077#1088':'
          end
          object DBText1: TDBText
            Left = 56
            Top = 8
            Width = 625
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'nAGENT'
            DataSource = dmIS.dsIN_G
          end
          object DBText2: TDBText
            Left = 56
            Top = 24
            Width = 569
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'PNAME'
            DataSource = dmIS.dsIN_G
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 72
            Top = 40
            Width = 289
            Height = 17
            DataField = 'mANAGER'
            DataSource = dmIS.dsIN_G
          end
          object DBText4: TDBText
            Left = 440
            Top = 40
            Width = 265
            Height = 17
            DataField = 'dESIGNER'
            DataSource = dmIS.dsIN_G
          end
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1050' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1102
      ImageIndex = 1
      object tlb2: TToolBar
        Left = 0
        Top = 0
        Width = 725
        Height = 24
        AutoSize = True
        Caption = 'tlb2'
        Flat = True
        Images = fmMain.il1
        TabOrder = 0
        object tbh1: TToolButton
          Left = 0
          Top = 0
          Hint = #1055#1086#1076#1087#1080#1089#1072#1090#1100
          Caption = 'tbh1'
          ImageIndex = 8
          ParentShowHint = False
          ShowHint = True
          OnClick = tbh1Click
        end
        object ToolButton2: TToolButton
          Left = 23
          Top = 0
          Width = 18
          Caption = 'ToolButton2'
          ImageIndex = 9
          Style = tbsSeparator
        end
        object tbh2: TToolButton
          Left = 41
          Top = 0
          Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1087#1077#1095#1072#1090#1100
          Caption = 'tbh2'
          ImageIndex = 13
          ParentShowHint = False
          ShowHint = True
          OnClick = tbh2Click
        end
      end
      object p2: TPanel
        Left = 0
        Top = 24
        Width = 725
        Height = 274
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        object dbn2: TDBNavigator
          Left = 2
          Top = 254
          Width = 721
          Height = 18
          DataSource = dmIS.dsIN_F
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
        object dbg2: TDBGrid
          Left = 2
          Top = 65
          Width = 721
          Height = 189
          Align = alClient
          DataSource = dmIS.dsIN_F
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbg2DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'gRAPH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Width = 11
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fILL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Width = 9
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROJ_DOC'
              Title.Alignment = taCenter
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DNAME'
              Title.Alignment = taCenter
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'D_DOC'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NDTYPE'
              Title.Alignment = taCenter
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROJECT'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIO'
              Title.Alignment = taCenter
              Width = 263
              Visible = True
            end>
        end
        object p4: TPanel
          Left = 2
          Top = 2
          Width = 721
          Height = 63
          Align = alTop
          BevelInner = bvRaised
          TabOrder = 2
          DesignSize = (
            721
            63)
          object Label5: TLabel
            Left = 8
            Top = 24
            Width = 40
            Height = 13
            Caption = #1055#1088#1086#1077#1082#1090':'
          end
          object Label6: TLabel
            Left = 8
            Top = 8
            Width = 39
            Height = 13
            Caption = #1050#1083#1080#1077#1085#1090':'
          end
          object Label7: TLabel
            Left = 8
            Top = 40
            Width = 56
            Height = 13
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          end
          object Label8: TLabel
            Left = 376
            Top = 40
            Width = 54
            Height = 13
            Caption = #1044#1080#1079#1072#1081#1085#1077#1088':'
          end
          object DBText5: TDBText
            Left = 56
            Top = 8
            Width = 625
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'nAGENT'
            DataSource = dmIS.dsIN_F
          end
          object DBText6: TDBText
            Left = 56
            Top = 24
            Width = 569
            Height = 17
            Anchors = [akLeft, akTop, akRight]
            DataField = 'PNAME'
            DataSource = dmIS.dsIN_F
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 72
            Top = 40
            Width = 289
            Height = 17
            DataField = 'mANAGER'
            DataSource = dmIS.dsIN_F
          end
          object DBText8: TDBText
            Left = 440
            Top = 40
            Width = 265
            Height = 17
            DataField = 'dESIGNER'
            DataSource = dmIS.dsIN_F
          end
        end
      end
    end
  end
  object p5: TPanel
    Left = 0
    Top = 328
    Width = 733
    Height = 184
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 576
      Top = 25
      Height = 138
      Align = alRight
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 729
      Height = 23
      Align = alTop
      BevelInner = bvRaised
      TabOrder = 0
      DesignSize = (
        729
        23)
      object Label9: TLabel
        Left = 8
        Top = 4
        Width = 47
        Height = 13
        Caption = #1055#1086#1076#1087#1080#1089#1080':'
      end
      object Label10: TLabel
        Left = 622
        Top = 2
        Width = 73
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
      end
    end
    object dbg3: TDBGrid
      Left = 2
      Top = 25
      Width = 574
      Height = 138
      Align = alClient
      DataSource = dmIS.dsFILL_D
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbg3DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'D_FILL'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Alignment = taCenter
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nFILL'
          Title.Alignment = taCenter
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end>
    end
    object dbm1: TDBMemo
      Left = 579
      Top = 25
      Width = 152
      Height = 138
      Align = alRight
      DataField = 'COMMENT'
      DataSource = dmIS.dsFILL_D
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object stb1: TStatusBar
      Left = 2
      Top = 163
      Width = 729
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 50
        end>
    end
  end
end
