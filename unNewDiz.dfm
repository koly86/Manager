object fmNewDiz: TfmNewDiz
  Left = 254
  Top = 204
  BorderStyle = bsDialog
  Caption = 'fmNewDiz'
  ClientHeight = 313
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 273
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      633
      273)
    object Label1: TLabel
      Left = 32
      Top = 216
      Width = 98
      Height = 13
      Caption = #1044#1080#1079#1072#1081#1085#1077#1088' '#1087#1088#1086#1077#1082#1090#1072':'
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 22
      Height = 13
      Caption = #1050#1086#1076':'
    end
    object Label4: TLabel
      Left = 200
      Top = 40
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
      Top = 72
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
      Left = 19
      Top = 96
      Width = 595
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
      Top = 40
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
      Top = 40
      Width = 67
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072':'
    end
    object DBText7: TDBText
      Left = 88
      Top = 40
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
    object Label24: TLabel
      Left = 8
      Top = 128
      Width = 58
      Height = 13
      Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077':'
    end
    object DBText10: TDBText
      Left = 88
      Top = 128
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
      Left = 348
      Top = 128
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
      Left = 448
      Top = 128
      Width = 65
      Height = 17
      DataField = 'nCURR'
      DataSource = dmIS.dsPrj
    end
    object Label25: TLabel
      Left = 200
      Top = 128
      Width = 134
      Height = 13
      Caption = #1055#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1084#1099#1081' '#1073#1102#1076#1078#1077#1090':'
    end
    object Label26: TLabel
      Left = 8
      Top = 160
      Width = 60
      Height = 13
      Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085':'
    end
    object DBText13: TDBText
      Left = 88
      Top = 160
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
      Top = 160
      Width = 345
      Height = 17
      DataField = 'fIX'
      DataSource = dmIS.dsPrj
    end
    object lcb1: TDBLookupComboBox
      Left = 152
      Top = 208
      Width = 353
      Height = 21
      DropDownRows = 15
      KeyField = 'ID_P'
      ListField = 'FIO'
      ListSource = dmIS.dsCFIO
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 273
    Width = 633
    Height = 40
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      633
      40)
    object bb1: TBitBtn
      Left = 105
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
      Left = 426
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
end
