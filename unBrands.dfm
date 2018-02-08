object fmBrands: TfmBrands
  Left = 424
  Top = 153
  Width = 239
  Height = 379
  Caption = #1058#1086#1088#1075#1086#1074#1099#1077' '#1084#1072#1088#1082#1080' ('#1073#1088#1101#1085#1076#1099')'
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
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 231
    Height = 24
    AutoSize = True
    Caption = 'tlb1'
    Flat = True
    Images = fmMain.il1
    TabOrder = 0
    object ToolButton5: TToolButton
      Left = 0
      Top = 0
      Width = 49
      Caption = 'ToolButton5'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object Label9: TLabel
      Left = 49
      Top = 0
      Width = 55
      Height = 22
      Caption = '    '#1053#1072#1081#1090#1080':   '
    end
    object ed1: TEdit
      Left = 104
      Top = 0
      Width = 89
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
  object dbn1: TDBNavigator
    Left = 0
    Top = 334
    Width = 231
    Height = 18
    DataSource = dmIS.dsBrands
    Align = alBottom
    TabOrder = 1
  end
  object dbg1: TDBGridEh
    Left = 0
    Top = 24
    Width = 231
    Height = 310
    Align = alClient
    DataSource = dmIS.dsBrands
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
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
        Title.EndEllipsis = True
        Width = 195
      end>
  end
end
