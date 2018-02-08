object fmOper: TfmOper
  Left = 265
  Top = 130
  Width = 736
  Height = 577
  Caption = #1064#1072#1073#1083#1086#1085#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 543
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 726
      Height = 216
      Align = alTop
      Caption = '  '#1055#1077#1088#1077#1095#1077#1085#1100' '#1096#1072#1073#1083#1086#1085#1086#1074'   '
      TabOrder = 0
      object CoolBar1: TCoolBar
        Left = 2
        Top = 15
        Width = 722
        Height = 29
        AutoSize = True
        Bands = <
          item
            Control = tb1
            ImageIndex = -1
            Width = 718
          end>
        object tb1: TToolBar
          Left = 9
          Top = 0
          Width = 705
          Height = 25
          Caption = 'tb1'
          Flat = True
          Images = fmMain.il1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
            Caption = 'ToolButton1'
            ImageIndex = 29
          end
          object ToolButton2: TToolButton
            Left = 23
            Top = 0
            Width = 18
            Caption = 'ToolButton2'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object NewTemp: TToolButton
            Left = 41
            Top = 0
            Hint = #1057#1086#1079#1076#1072#1090#1100' '#1096#1072#1073#1083#1086#1085
            Caption = 'NewTemp'
            ImageIndex = 1
          end
          object ToolButton4: TToolButton
            Left = 64
            Top = 0
            Width = 19
            Caption = 'ToolButton4'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object DelTemp: TToolButton
            Left = 83
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1096#1072#1073#1083#1086#1085
            Caption = 'DelTemp'
            ImageIndex = 3
          end
          object ToolButton6: TToolButton
            Left = 106
            Top = 0
            Width = 12
            Caption = 'ToolButton6'
            ImageIndex = 3
            Style = tbsSeparator
          end
        end
      end
      object dbgTemp: TDBGridEh
        Left = 2
        Top = 44
        Width = 722
        Height = 170
        Align = alClient
        DataSource = dsTemp
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
      end
    end
  end
  object dsTemp: TDataSource
    DataSet = qTempCH
    Left = 681
    Top = 105
  end
  object DataSource2: TDataSource
    Left = 40
    Top = 224
  end
  object DataSource3: TDataSource
    Left = 40
    Top = 280
  end
  object qTempCH: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      '    select id_chain_tmpl, name, id_type, d_fix, id_fix'
      '    from proj_chain_tmpl')
    Left = 681
    Top = 57
  end
end
