object fmP_TYPES: TfmP_TYPES
  Left = 347
  Top = 187
  Width = 356
  Height = 295
  Caption = #1058#1080#1087#1099' '#1087#1088#1086#1077#1082#1090#1086#1074
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
  object dbn1: TDBNavigator
    Left = 0
    Top = 250
    Width = 348
    Height = 18
    DataSource = dmIS.dsP_TYPE
    Align = alBottom
    TabOrder = 0
  end
  object dbg1: TDBGridEh
    Left = 0
    Top = 0
    Width = 348
    Height = 250
    Align = alClient
    DataSource = dmIS.dsP_TYPE
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
        FieldName = 'ID_PROJ_TYPE'
        Footers = <>
        Title.Alignment = taCenter
        Title.EndEllipsis = True
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.EndEllipsis = True
        Title.TitleButton = True
        Width = 251
      end>
  end
end
