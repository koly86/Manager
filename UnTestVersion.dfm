object fmTestVersion: TfmTestVersion
  Left = 218
  Top = 190
  Width = 670
  Height = 318
  Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1074#1077#1088#1089#1080#1080
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
  object dbn1: TDBNavigator
    Left = 0
    Top = 273
    Width = 662
    Height = 18
    DataSource = dsTestV
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    TabOrder = 0
  end
  object dbg1: TDBGridEh
    Left = 0
    Top = 0
    Width = 662
    Height = 273
    Align = alClient
    DataSource = dsTestV
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
    TitleLines = 2
    OnGetCellParams = dbg1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        Title.Alignment = taCenter
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'PROBLEM'
        Footers = <>
        Title.Alignment = taCenter
        Width = 568
      end>
  end
  object qTestV: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select * from TEST_VERSION(:id_ver)')
    Left = 56
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_ver'
        ParamType = ptUnknown
      end>
    object qTestVSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"TEST_VERSION"."STATUS"'
    end
    object qTestVPROBLEM: TIBStringField
      DisplayLabel = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1087#1088#1086#1074#1077#1088#1082#1080
      FieldName = 'PROBLEM'
      Origin = '"TEST_VERSION"."PROBLEM"'
      Size = 128
    end
  end
  object dsTestV: TDataSource
    DataSet = qTestV
    Left = 56
    Top = 112
  end
  object qStatus: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select COUNT(status) sts '
      'from TEST_VERSION(:id_ver)'
      'where status > 0')
    Left = 104
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_ver'
        ParamType = ptUnknown
      end>
  end
  object IBUpdateSQL1: TIBUpdateSQL
    Left = 688
    Top = 16
  end
end
