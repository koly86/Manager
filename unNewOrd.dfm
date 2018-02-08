object fmNewOrd: TfmNewOrd
  Left = 410
  Top = 82
  Width = 823
  Height = 575
  Caption = #1053#1086#1074#1099#1081' '#1079#1072#1082#1072#1079
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 504
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object pc1: TPageControl
      Left = 2
      Top = 2
      Width = 811
      Height = 319
      ActivePage = ts1
      Align = alTop
      TabOrder = 0
      object ts1: TTabSheet
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        DesignSize = (
          803
          291)
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 22
          Height = 13
          Caption = #1050#1086#1076':'
        end
        object lb1: TLabel
          Left = 40
          Top = 24
          Width = 18
          Height = 13
          Caption = 'lb1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 136
          Top = 19
          Width = 37
          Height = 13
          Caption = #1053#1086#1084#1077#1088':'
        end
        object Label3: TLabel
          Left = 16
          Top = 75
          Width = 76
          Height = 13
          Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086':'
        end
        object Label4: TLabel
          Left = 12
          Top = 47
          Width = 79
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        end
        object Label5: TLabel
          Left = 349
          Top = 75
          Width = 78
          Height = 13
          Caption = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080':'
        end
        object Label6: TLabel
          Left = 664
          Top = 156
          Width = 41
          Height = 13
          Caption = #1042#1072#1083#1102#1090#1072':'
        end
        object Label7: TLabel
          Left = 168
          Top = 160
          Width = 79
          Height = 26
          Caption = #1057#1091#1084#1084#1072' '#13#10'('#1074#1082#1083'. '#1076#1086#1089#1090#1072#1074#1082#1091'):'
        end
        object Label16: TLabel
          Left = 488
          Top = 155
          Width = 63
          Height = 13
          Caption = #1044#1086#1087'. '#1091#1089#1083#1091#1075#1080':'
        end
        object Label8: TLabel
          Left = 8
          Top = 155
          Width = 62
          Height = 13
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
        end
        object Label9: TLabel
          Left = 20
          Top = 193
          Width = 49
          Height = 13
          Caption = #1057#1084#1077#1090#1072' '#8470':'
        end
        object Label10: TLabel
          Left = 8
          Top = 100
          Width = 111
          Height = 13
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077':'
        end
        object DBText1: TDBText
          Left = 128
          Top = 100
          Width = 73
          Height = 17
          DataField = 'ID_PROJECT_DOC'
          DataSource = dmIS.dsBDOC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 0
          Width = 40
          Height = 13
          Caption = #1055#1088#1086#1077#1082#1090':'
        end
        object DBText2: TDBText
          Left = 56
          Top = 0
          Width = 65
          Height = 17
          DataField = 'ID_PROJECT'
          DataSource = dmIS.dsPrj
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 128
          Top = 0
          Width = 626
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
        object DBText4: TDBText
          Left = 208
          Top = 100
          Width = 257
          Height = 17
          DataField = 'TNAME'
          DataSource = dmIS.dsBDOC
        end
        object Label13: TLabel
          Left = 528
          Top = 128
          Width = 94
          Height = 13
          Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
        end
        object Label14: TLabel
          Left = 512
          Top = 19
          Width = 37
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089':'
        end
        object lb2: TLabel
          Left = 560
          Top = 19
          Width = 14
          Height = 13
          Caption = 'lb2'
        end
        object Label12: TLabel
          Left = 8
          Top = 277
          Width = 82
          Height = 13
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 223
          Top = 192
          Width = 74
          Height = 13
          Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100':'
        end
        object Label17: TLabel
          Left = 272
          Top = 277
          Width = 88
          Height = 13
          Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 608
          Top = 277
          Width = 88
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 8
          Top = 225
          Width = 61
          Height = 13
          Caption = #1044#1086#1075#1086#1074#1086#1088' '#8470':'
        end
        object sbDog: TSpeedButton
          Left = 264
          Top = 221
          Width = 23
          Height = 22
          Hint = #1044#1086#1075#1086#1074#1086#1088#1072
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
          OnClick = sbDogClick
        end
        object lbNomDog: TLabel
          Left = 296
          Top = 225
          Width = 50
          Height = 13
          Caption = 'lbNomDog'
          Visible = False
        end
        object Label20: TLabel
          Left = 339
          Top = 156
          Width = 53
          Height = 13
          Caption = #1044#1086#1089#1090#1072#1074#1082#1072':'
        end
        object Label21: TLabel
          Left = 320
          Top = 19
          Width = 61
          Height = 13
          Caption = #1042#1080#1076' '#1079#1072#1082#1072#1079#1072':'
        end
        object Label22: TLabel
          Left = 494
          Top = 225
          Width = 56
          Height = 13
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
        end
        object Label23: TLabel
          Left = 362
          Top = 210
          Width = 108
          Height = 13
          Caption = #1053#1072#1094#1077#1085#1082#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072':'
        end
        object Label24: TLabel
          Left = 7
          Top = 252
          Width = 70
          Height = 13
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
        end
        object lbDtPlan: TLabel
          Left = 368
          Top = 256
          Width = 29
          Height = 13
          Caption = #1055#1083#1072#1085':'
        end
        object lcb1: TDBLookupComboboxEh
          Left = 96
          Top = 72
          Width = 241
          Height = 21
          DropDownBox.Sizable = True
          EditButtons = <>
          KeyField = 'ID_P_AREA'
          ListField = 'NAME'
          ListSource = dmIS.dsPRODS
          TabOrder = 0
          Visible = True
        end
        object ed2: TEdit
          Left = 96
          Top = 44
          Width = 691
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 64
          ParentFont = False
          TabOrder = 1
        end
        object lcb2: TDBLookupComboboxEh
          Left = 431
          Top = 72
          Width = 201
          Height = 21
          DropDownBox.Rows = 15
          DropDownBox.Sizable = True
          EditButtons = <>
          KeyField = 'ID_PTYPE'
          ListField = 'NAME'
          ListSource = dmIS.dsPTPS
          TabOrder = 2
          Visible = True
        end
        object lcb3: TDBLookupComboBox
          Left = 712
          Top = 152
          Width = 89
          Height = 21
          KeyField = 'ID_CURRENCY'
          ListField = 'NAME'
          ListSource = dmIS.dsCURR
          TabOrder = 3
        end
        object ed3: TEdit
          Left = 208
          Top = 152
          Width = 129
          Height = 21
          TabOrder = 4
          OnChange = ed3Change
        end
        object ed4: TEdit
          Left = 552
          Top = 152
          Width = 113
          Height = 21
          TabOrder = 5
        end
        object ed5: TEdit
          Left = 80
          Top = 152
          Width = 81
          Height = 21
          TabOrder = 6
        end
        object ed6: TEdit
          Left = 79
          Top = 189
          Width = 129
          Height = 21
          TabOrder = 7
          OnChange = ed3Change
        end
        object lcb4: TDBLookupComboboxEh
          Left = 8
          Top = 120
          Width = 513
          Height = 21
          DropDownBox.Rows = 10
          DropDownBox.Sizable = True
          EditButtons = <>
          KeyField = 'ID_PROJECT_DOC'
          ListField = 'NAME'
          ListSource = dmIS.dsBDOC
          TabOrder = 8
          Visible = True
        end
        object ed1: TEdit
          Left = 184
          Top = 16
          Width = 129
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object dtp1: TDBDateTimeEditEh
          Left = 632
          Top = 120
          Width = 129
          Height = 21
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Kind = dtkDateEh
          ParentFont = False
          TabOrder = 10
          Visible = True
        end
        object lcb5: TDBLookupComboboxEh
          Left = 303
          Top = 189
          Width = 217
          Height = 21
          EditButtons = <>
          KeyField = 'ID_CHIEF'
          ListField = 'FIO'
          ListSource = dsCHIEF
          TabOrder = 11
          Visible = True
        end
        object cb1: TCheckBox
          Left = 543
          Top = 190
          Width = 129
          Height = 17
          Caption = #1050#1086#1084#1080#1089#1089#1080#1086#1085#1085#1099#1077
          TabOrder = 12
        end
        object edDog: TEdit
          Left = 80
          Top = 221
          Width = 177
          Height = 21
          TabOrder = 13
        end
        object edDeliv: TEdit
          Left = 393
          Top = 152
          Width = 93
          Height = 21
          TabOrder = 14
          OnChange = ed3Change
        end
        object dblType: TDBLookupComboboxEh
          Left = 384
          Top = 16
          Width = 121
          Height = 21
          EditButtons = <>
          KeyField = 'ID_ORD_KIND'
          ListField = 'NAME'
          ListSource = dsOrdType
          TabOrder = 15
          Visible = True
        end
        object lcbManager: TDBLookupComboboxEh
          Left = 555
          Top = 222
          Width = 200
          Height = 21
          DropDownBox.AutoDrop = True
          DropDownBox.Sizable = True
          DropDownBox.Width = 200
          EditButtons = <>
          KeyField = 'ID_P'
          ListField = 'FIO'
          ListSource = dsManager
          TabOrder = 16
          Visible = True
        end
        object ed_price: TEdit
          Left = 362
          Top = 222
          Width = 121
          Height = 21
          ReadOnly = True
          TabOrder = 17
          Text = '0'
        end
        object lcbUragent: TDBLookupComboboxEh
          Left = 80
          Top = 249
          Width = 271
          Height = 21
          DropDownBox.AutoDrop = True
          DropDownBox.Rows = 10
          DropDownBox.Sizable = True
          DropDownBox.Width = 200
          EditButtons = <>
          KeyField = 'ID_ITEM'
          ListField = 'NAME'
          ListSource = dsUragent
          TabOrder = 18
          Visible = True
        end
        object dtpPlan: TDBDateTimeEditEh
          Left = 408
          Top = 248
          Width = 129
          Height = 21
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Kind = dtkDateEh
          ParentFont = False
          TabOrder = 19
          Visible = True
        end
      end
    end
    object p2: TPanel
      Left = 2
      Top = 321
      Width = 811
      Height = 181
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object Panel1: TPanel
        Left = 601
        Top = 2
        Width = 208
        Height = 177
        Align = alRight
        BevelInner = bvLowered
        TabOrder = 0
        object dbn1: TDBNavigator
          Left = 2
          Top = 157
          Width = 204
          Height = 18
          DataSource = dmIS.dsPL_SH
          Align = alBottom
          TabOrder = 0
        end
        object dbg1: TDBGridEh
          Left = 2
          Top = 2
          Width = 204
          Height = 155
          Align = alClient
          DataSource = dmIS.dsPL_SH
          Flat = True
          FooterColor = clScrollBar
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'D_PLANING'
              Footer.FieldName = 'D_PLANING'
              Footer.Value = #1042#1089#1077#1075#1086
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footer.FieldName = 'AMOUNT'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Width = 83
            end>
        end
      end
      object m1: TMemo
        Left = 2
        Top = 2
        Width = 255
        Height = 177
        Align = alLeft
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 257
        Top = 2
        Width = 344
        Height = 177
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 2
        object dbn2: TDBNavigator
          Left = 2
          Top = 157
          Width = 340
          Height = 18
          DataSource = dmIS.dsORD_POS
          Align = alBottom
          TabOrder = 0
        end
        object dbg2: TDBGridEh
          Left = 2
          Top = 2
          Width = 340
          Height = 155
          Align = alClient
          DataSource = dmIS.dsORD_POS
          Flat = True
          FooterColor = clScrollBar
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          SumList.Active = True
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
              Width = 170
            end
            item
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footers = <>
              Title.Alignment = taCenter
              Width = 54
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'nUNIT'
              Footers = <>
              Title.Alignment = taCenter
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'PRICEA'
              Footer.Value = #1042#1089#1077#1075#1086':'
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Alignment = taCenter
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'sUMPRICE'
              Footer.FieldName = 'sUMPRICE'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Alignment = taCenter
              Width = 88
            end>
        end
      end
    end
  end
  object p4: TPanel
    Left = 0
    Top = 504
    Width = 815
    Height = 37
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      815
      37)
    object bb41: TBitBtn
      Left = 177
      Top = 6
      Width = 99
      Height = 25
      Hint = #1047#1072#1087#1080#1089#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
      Anchors = [akLeft, akBottom]
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bb41Click
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
    object bb42: TBitBtn
      Left = 545
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
      OnClick = bb42Click
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
  object qCHIEF: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select M.ID_CHIEF, P.FIO '
      'from CHIEF_MANAGERS M'
      'join PERSONNEL P on P.ID_P = M.ID_CHIEF'
      'order by P.FIO')
    Left = 194
    Top = 353
    object qCHIEFID_CHIEF: TIntegerField
      FieldName = 'ID_CHIEF'
      Origin = '"CHIEF_MANAGERS"."ID_CHIEF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCHIEFFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsCHIEF: TDataSource
    DataSet = qCHIEF
    Left = 194
    Top = 393
  end
  object qOrdType: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from order_kinds k where k.status = 0')
    Left = 662
    Top = 42
    object qOrdTypeID_ORD_KIND: TIntegerField
      FieldName = 'ID_ORD_KIND'
      Origin = '"ORDER_KINDS"."ID_ORD_KIND"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdTypeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ORDER_KINDS"."NAME"'
      Size = 32
    end
    object qOrdTypeSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"ORDER_KINDS"."STATUS"'
    end
  end
  object dsOrdType: TDataSource
    DataSet = qOrdType
    Left = 710
    Top = 42
  end
  object qManager: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select r.fio, r.id_p'
      'from personnel r join p_f f'
      'on f.idpost = r.idpost and f.idf = 42'
      'order by r.fio')
    Left = 750
    Top = 210
    object qManagerFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qManagerID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsManager: TDataSource
    DataSet = qManager
    Left = 750
    Top = 258
  end
  object qUragent: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select'
      'ii.name || '#39'['#1102#1088'.'#1083#1080#1094#1086' <'#39' || u.name  || '#39'>]'#39' nm,'
      'u.*,i.*'
      'from uragents u join items_uragents i on u.inn = i.inn'
      'join items ii on ii.id_item = i.id_item'
      
        'join params_value  v on i.id_item = v.id_item and v.id_param = 3' +
        '4'
      'and v.smlval =215')
    Left = 699
    Top = 275
    object qUragentNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"URAGENTS"."NAME"'
      Size = 128
    end
    object qUragentID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS_URAGENTS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsUragent: TDataSource
    DataSet = qUragent
    Left = 699
    Top = 323
  end
end
