object fmP_EVENT: TfmP_EVENT
  Left = 192
  Top = 112
  Width = 504
  Height = 351
  Caption = #1069#1090#1072#1087#1099' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103' '#1087#1088#1086#1077#1082#1090#1072
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
    Top = 299
    Width = 496
    Height = 18
    DataSource = dmIS.dsP_EVENT
    Align = alBottom
    TabOrder = 0
  end
  object dbg1: TDBGrid
    Left = 0
    Top = 0
    Width = 496
    Height = 299
    Align = alClient
    DataSource = dmIS.dsP_EVENT
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PROJ_EVENT'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Alignment = taCenter
        Width = 392
        Visible = True
      end>
  end
end
