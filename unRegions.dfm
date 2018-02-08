object fmRegions: TfmRegions
  Left = 192
  Top = 188
  Width = 533
  Height = 406
  Caption = #1056#1077#1075#1080#1086#1085#1099
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
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 379
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object dbn1: TDBNavigator
      Left = 2
      Top = 359
      Width = 521
      Height = 18
      DataSource = dmIS.dsREG
      Align = alBottom
      TabOrder = 0
    end
    object dbg1: TDBGridEh
      Left = 2
      Top = 2
      Width = 521
      Height = 357
      Align = alClient
      DataSource = dmIS.dsREG
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
          FieldName = 'ID_REGION'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Width = 333
        end
        item
          EditButtons = <>
          FieldName = 'ID_TERMINAL'
          Footers = <>
          Title.Alignment = taCenter
        end>
    end
  end
end
