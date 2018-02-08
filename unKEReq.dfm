object fmKEReq: TfmKEReq
  Left = 346
  Top = 253
  Width = 700
  Height = 416
  Caption = #1047#1072#1103#1074#1082#1072' '#1085#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p4: TPanel
    Left = 0
    Top = 345
    Width = 692
    Height = 37
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      692
      37)
    object bb1: TBitBtn
      Left = 137
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
      Left = 470
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
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 345
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object m1: TMemo
      Left = 2
      Top = 57
      Width = 688
      Height = 286
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object p2: TPanel
      Left = 2
      Top = 2
      Width = 688
      Height = 55
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 1
      object Label5: TLabel
        Left = 8
        Top = 4
        Width = 92
        Height = 13
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1103#1074#1082#1080':'
      end
      object n_Order: TLabel
        Left = 120
        Top = 5
        Width = 53
        Height = 13
        Caption = #8470' '#1079#1072#1082#1072#1079#1072':'
      end
      object nomOrder: TLabel
        Left = 512
        Top = 8
        Width = 3
        Height = 13
        Visible = False
      end
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 22
        Height = 13
        Caption = #1042#1080#1076':'
      end
      object Label2: TLabel
        Left = 232
        Top = 28
        Width = 22
        Height = 13
        Caption = #1058#1080#1087':'
      end
      object Label3: TLabel
        Left = 472
        Top = 28
        Width = 73
        Height = 13
        Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1076#1086
      end
      object lcbReq_Kind: TDBLookupComboboxEh
        Left = 40
        Top = 24
        Width = 185
        Height = 21
        DropDownBox.Rows = 20
        DropDownBox.Sizable = True
        DropDownBox.Width = 300
        EditButtons = <>
        KeyField = 'REQ_KIND'
        ListField = 'NAME'
        ListSource = dsReq_Kind
        TabOrder = 0
        Visible = True
      end
      object lcbReq_Type: TDBLookupComboboxEh
        Left = 256
        Top = 24
        Width = 209
        Height = 21
        DropDownBox.Rows = 20
        DropDownBox.Sizable = True
        DropDownBox.Width = 300
        EditButtons = <>
        KeyField = 'REQ_TYPE'
        ListField = 'NAME'
        ListSource = dsReq_Type
        TabOrder = 1
        Visible = True
      end
      object dt1: TDateTimePicker
        Left = 552
        Top = 24
        Width = 122
        Height = 21
        Date = 40953.443521111110000000
        Time = 40953.443521111110000000
        TabOrder = 2
      end
    end
  end
  object qReq_Kind: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REQUESTS_KINDS order by NAME')
    Left = 56
    Top = 104
    object qReq_KindREQ_KIND: TIntegerField
      FieldName = 'REQ_KIND'
      Origin = '"REQUESTS_KINDS"."REQ_KIND"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReq_KindNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REQUESTS_KINDS"."NAME"'
      Size = 64
    end
  end
  object qReq_Type: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from REQUESTS_TYPES order by NAME')
    Left = 144
    Top = 104
    object qReq_TypeREQ_TYPE: TIntegerField
      FieldName = 'REQ_TYPE'
      Origin = '"REQUESTS_TYPES"."REQ_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qReq_TypeNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REQUESTS_TYPES"."NAME"'
      Size = 64
    end
  end
  object dsReq_Kind: TDataSource
    DataSet = qReq_Kind
    Left = 56
    Top = 168
  end
  object dsReq_Type: TDataSource
    DataSet = qReq_Type
    Left = 144
    Top = 168
  end
end
