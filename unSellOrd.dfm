object fmSellOrd: TfmSellOrd
  Left = 193
  Top = 179
  Width = 870
  Height = 640
  Caption = #1047#1072#1082#1072#1079#1099' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 0
    Height = 606
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 606
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    object dbTr: TDBS_TreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 604
      Align = alClient
      Indent = 19
      TabOrder = 0
      Database = dmIS.dbIS
      Transaction = dmIS.mT
      RootId = 0
      TableName = 'GEt_TREE_PRODS'
      FieldId = 'ID_ITEM'
      FieldParentId = 'ID_PARENT'
      FieldName = 'NAME'
      FieldState = 'LOW'
      FieldSort = 'NAME'
    end
  end
  object Panel2: TPanel
    Left = 188
    Top = 0
    Width = 674
    Height = 606
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 249
      Width = 672
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 672
      Height = 248
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 0
      object dbgSellord: TDBGridEh
        Left = 1
        Top = 1
        Width = 670
        Height = 246
        Align = alClient
        DataSource = dsSellord
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 252
      Width = 672
      Height = 324
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      object dbgProdOrd: TDBGridEh
        Left = 1
        Top = 1
        Width = 670
        Height = 322
        Align = alClient
        DataSource = dsProdOrd
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 576
      Width = 672
      Height = 29
      Align = alBottom
      Caption = 'Panel5'
      TabOrder = 2
    end
  end
  object qProdOrd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 445
    Top = 364
  end
  object qSellOrd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 421
    Top = 81
  end
  object dsSellord: TDataSource
    DataSet = qSellOrd
    Left = 437
    Top = 153
  end
  object dsProdOrd: TDataSource
    DataSet = qProdOrd
    Left = 461
    Top = 436
  end
end
