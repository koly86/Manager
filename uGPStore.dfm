object fmGPStore: TfmGPStore
  Left = 198
  Top = 69
  Width = 981
  Height = 770
  Caption = #1057#1082#1083#1072#1076' '#1075#1086#1090#1086#1074#1086#1081' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter6: TSplitter
    Left = 185
    Top = 41
    Height = 695
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 973
    Height = 41
    Align = alTop
    TabOrder = 0
    object sbRfr: TSpeedButton
      Left = 8
      Top = 8
      Width = 23
      Height = 22
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770877777
        7777777778087777777777777700877777777777770B0877777777770000B087
        777777770BBFBB087777777770FB00007777777770BFB08777777700000BFB08
        7777770FBFBFBFB087777770FBFB000077777770BFBFB087777777770BFBFB08
        777777770FFFBFF08777777770FBFFBF08777777700000000077}
      OnClick = sbRfrClick
    end
    object Panel2: TPanel
      Left = 392
      Top = 1
      Width = 580
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 368
        Top = 8
        Width = 31
        Height = 13
        Caption = #1057#1082#1083#1072#1076
      end
      object Label5: TLabel
        Left = 224
        Top = 8
        Width = 14
        Height = 13
        Caption = #1055#1086
      end
      object Label6: TLabel
        Left = 24
        Top = 8
        Width = 58
        Height = 26
        Caption = #1055#1086' '#1076#1072#1090#1077' '#13#10#1089#1086#1079#1076#1072#1085#1080#1103' '#1057
        WordWrap = True
      end
      object dbl1: TDBLookupComboboxEh
        Left = 400
        Top = 8
        Width = 169
        Height = 21
        DropDownBox.Sizable = True
        EditButtons = <>
        KeyField = 'ID_P_AREA'
        ListField = 'NAME'
        ListSource = dsStores
        TabOrder = 0
        Visible = True
      end
      object dtpFrom: TDBDateTimeEditEh
        Left = 96
        Top = 8
        Width = 121
        Height = 21
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 1
        Visible = True
      end
      object dtpTO: TDBDateTimeEditEh
        Left = 243
        Top = 8
        Width = 121
        Height = 21
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 2
        Visible = True
      end
    end
  end
  object pc1: TPageControl
    Left = 188
    Top = 41
    Width = 785
    Height = 695
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = #1057#1082#1083#1072#1076' '#1043#1055
      object Splitter1: TSplitter
        Left = 0
        Top = 169
        Width = 777
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 381
        Width = 777
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Panel3: TPanel
        Left = 0
        Top = 172
        Width = 777
        Height = 209
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 775
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1057#1082#1083#1072#1076' '#1043#1055
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbgGP: TDBGridEh
          Left = 1
          Top = 14
          Width = 775
          Height = 194
          Align = alClient
          DataSource = dsGP
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
          UseMultiTitle = True
          OnGetCellParams = dbgGPGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ID_OBJECT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Width = 246
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROD_OPER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_BATCH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'AMOUNT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'UNIT1'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_STEP'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_OBJECT_TYPE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'SUM_R'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'OST'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CENA'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'PR_NAME'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'N_ORDER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'N_ID_AREA'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'N_ID_OPERATION'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'N_ID_PA_TO'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'N_ID_PA_FROM'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_ORDER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_PROD_TRAFF'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'SUMMA'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'FACTOR'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'DEC_NO'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'SUMMA_E'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CENA_E'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'CUR_ORDER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'RATE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_EST_PEO'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ID_VERSION'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'IS_COMPL'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'LINK_ITEM'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'NAME_LINK_ITEM'
              Footers = <>
              Width = 402
            end
            item
              EditButtons = <>
              FieldName = 'ID_AGENT'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'NAME_AGENT'
              Footers = <>
              Width = 252
            end
            item
              EditButtons = <>
              FieldName = 'FIO_MANAGER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'REM_ORDER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'D_READY_ORDER'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'D_CLOSE'
              Footers = <>
            end>
        end
        object Panel8: TPanel
          Left = 1
          Top = 14
          Width = 775
          Height = 194
          Align = alClient
          Caption = 'Panel8'
          TabOrder = 1
          object dbgGPState: TDBGridEh
            Left = 1
            Top = 1
            Width = 773
            Height = 192
            Align = alClient
            DataSource = dsGpState
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
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ID_P_AREA'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ANAME'
                Footers = <>
                Width = 236
              end
              item
                EditButtons = <>
                FieldName = 'OBJ_NAME'
                Footers = <>
                Width = 112
              end
              item
                EditButtons = <>
                FieldName = 'VNAME'
                Footers = <>
                Width = 222
              end
              item
                EditButtons = <>
                FieldName = 'ID_BATCH'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ID_ORDER'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'AMOUNT'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'FREE'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REZERV'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'REZERVPONAKL'
                Footers = <>
              end>
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 169
        Align = alTop
        Caption = 'Panel4'
        TabOrder = 1
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 775
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1047#1072#1082#1072#1079#1099' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1091
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pcSell: TPageControl
          Left = 1
          Top = 14
          Width = 775
          Height = 154
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = 'TabSheet4'
            object Splitter3: TSplitter
              Left = 579
              Top = 0
              Height = 126
              Align = alRight
            end
            object Splitter4: TSplitter
              Left = 392
              Top = 0
              Width = 2
              Height = 126
              Align = alRight
            end
            object GroupBox3: TGroupBox
              Left = 0
              Top = 0
              Width = 392
              Height = 126
              Align = alClient
              TabOrder = 0
              object dbgEhSell: TDBGridEh
                Left = 2
                Top = 15
                Width = 388
                Height = 109
                Align = alClient
                DataSource = dsEhSell
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
                UseMultiTitle = True
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'N_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRICE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRICEA'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DEF_SUM'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_OPEN'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_READY'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_CLOSE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_REJECT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'STATNAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_FIX'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_BATCH'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NPROJ'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'FIO'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SHIP'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'RECEIVE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRODUSED'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'IS_RESERVE'
                    Footers = <>
                  end>
              end
            end
            object GroupBox4: TGroupBox
              Left = 394
              Top = 0
              Width = 185
              Height = 126
              Align = alRight
              Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
              TabOrder = 1
              object dbgSpecSell: TDBGridEh
                Left = 2
                Top = 15
                Width = 181
                Height = 109
                Align = alClient
                DataSource = dsSellPos
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
                UseMultiTitle = True
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER_POS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Width = 65
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_PRODUCT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRICE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRICEA'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sUMPRICE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NDS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'S'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRODNAME'
                    Footers = <>
                    Width = 150
                  end>
              end
            end
            object GroupBox5: TGroupBox
              Left = 582
              Top = 0
              Width = 185
              Height = 126
              Align = alRight
              Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
              TabOrder = 2
              object dbgShipSell: TDBGridEh
                Left = 2
                Top = 15
                Width = 181
                Height = 109
                Align = alClient
                DataSource = dsShip_sell
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
                UseMultiTitle = True
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_PLAN_SHIPP'
                    Footers = <>
                    Width = 66
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_PLANING'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_C'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ADRESS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OBJ_TYPE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'WEIGHT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DELIVERY_AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DELIVERY_COST'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OBJ_T'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CAR_T'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER_POS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'POS_NAME'
                    Footers = <>
                    Width = 92
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ITEM_NAME'
                    Footers = <>
                    Width = 131
                  end>
              end
            end
          end
          object tsSellShipp: TTabSheet
            Caption = #1047#1072#1082#1072#1079#1099
            ImageIndex = 1
            object dbgSellShipp: TDBGridEh
              Left = 0
              Top = 0
              Width = 767
              Height = 126
              Align = alClient
              DataSource = dsSellOrds
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
              UseMultiTitle = True
            end
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 384
        Width = 777
        Height = 285
        Align = alBottom
        Caption = 'Panel5'
        TabOrder = 2
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 775
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1047#1072#1082#1072#1079#1099' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Splitter5: TSplitter
          Left = 773
          Top = 14
          Height = 270
          Align = alRight
        end
        object pcProd: TPageControl
          Left = 1
          Top = 14
          Width = 772
          Height = 270
          ActivePage = TabSheet2
          Align = alClient
          TabOrder = 0
          object TabSheet2: TTabSheet
            Caption = 'TabSheet2'
            object GroupBox2: TGroupBox
              Left = 376
              Top = 0
              Width = 388
              Height = 242
              Align = alRight
              Caption = #1055#1083#1072#1085' '#1086#1090#1075#1088#1091#1079#1086#1082
              TabOrder = 0
              object dbgShipProd: TDBGridEh
                Left = 2
                Top = 15
                Width = 384
                Height = 225
                Align = alClient
                DataSource = dsShip_Prod
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
                UseMultiTitle = True
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_PLAN_SHIPP'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_PLANING'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_C'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ADRESS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OBJ_TYPE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'WEIGHT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DELIVERY_AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DELIVERY_COST'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'OBJ_T'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CAR_T'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER_POS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'POS_NAME'
                    Footers = <>
                    Width = 123
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ITEM_NAME'
                    Footers = <>
                    Width = 159
                  end>
              end
            end
            object GroupBox6: TGroupBox
              Left = 0
              Top = 0
              Width = 376
              Height = 242
              Align = alClient
              TabOrder = 1
              object dbgEhProd: TDBGridEh
                Left = 2
                Top = 15
                Width = 372
                Height = 225
                Align = alClient
                DataSource = dsEhProd
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
                UseMultiTitle = True
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ID_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'N_ORDER'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NAME'
                    Footers = <>
                    Width = 101
                  end
                  item
                    EditButtons = <>
                    FieldName = 'AMOUNT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRICE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRICEA'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'DEF_SUM'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_OPEN'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_READY'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_CLOSE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_REJECT'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'STATUS'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'STATNAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'D_FIX'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ESTIMATE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_VERSION_PEO'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_VERSION'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_ESTIMATE_KD'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ID_BATCH'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NPROJ'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'FIO'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'EST_TOTAL_SUM_PEO'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'EST_TOTAL_SUM_KD'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'SHIP'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'RECEIVE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'PRODUSED'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BUCH_PROD_NAME'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'IS_RESERVE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'NPROD'
                    Footers = <>
                  end>
              end
            end
          end
          object tsShippProd: TTabSheet
            Caption = #1054#1090#1075#1088#1091#1079#1082#1080
            ImageIndex = 1
            object DBGridEh2: TDBGridEh
              Left = 0
              Top = 0
              Width = 764
              Height = 242
              Align = alClient
              DataSource = dsProdShipp
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
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'N_ORDER'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'AMOUNT'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'D_PLANING'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'amshipp'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'SUMMA'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ID_BATCH'
                  Footers = <>
                end>
            end
          end
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 41
    Width = 185
    Height = 695
    Align = alLeft
    Caption = 'Panel6'
    TabOrder = 2
    Visible = False
    object Splitter7: TSplitter
      Left = 1
      Top = 530
      Width = 183
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel7: TPanel
      Left = 1
      Top = 653
      Width = 183
      Height = 41
      Align = alBottom
      TabOrder = 0
      object Label7: TLabel
        Left = 8
        Top = 16
        Width = 32
        Height = 13
        Caption = #1055#1086#1080#1089#1082
      end
      object edFnd: TEdit
        Left = 48
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 0
      end
    end
    object dbTr: TDBS_TreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 529
      Align = alClient
      Indent = 19
      TabOrder = 1
      OnChange = dbTrChange
      OnStartDrag = dbTrStartDrag
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
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 533
      Width = 183
      Height = 120
      Align = alBottom
      DataSource = dsVer
      Flat = True
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
          FieldName = 'ID_VERSION'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
        end>
    end
  end
  object qStores: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.id_p_area, p.name'
      'from prod_areas p'
      'where p.id_patype = 10 and p.d_close is null')
    Left = 288
    Top = 320
    object qStoresID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qStoresNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object dsStores: TDataSource
    DataSet = qStores
    Left = 288
    Top = 368
  end
  object qGP: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qGPBeforeOpen
    SQL.Strings = (
      
        'select * from GET_PA_STATE_PARENT_NEW(:pa1,:id_parent,:id_is,:id' +
        '_cena,:d_bill,:id_agent,:id_manager)')
    Left = 100
    Top = 309
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pa1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_parent'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_is'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cena'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd_bill'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_agent'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_manager'
        ParamType = ptUnknown
      end>
    object qGPID_OBJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_OBJECT"'
    end
    object qGPNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GET_PA_STATE_PARENT_NEW"."NAME"'
      Size = 170
    end
    object qGPID_PROD_OPER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088'.'
      FieldName = 'ID_PROD_OPER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PROD_OPER"'
    end
    object qGPID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_BATCH"'
    end
    object qGPAMOUNT: TIBBCDField
      DisplayLabel = #1053#1072' '#1089#1082#1083#1072#1076#1077' ('#1091')'
      FieldName = 'AMOUNT'
      Origin = '"GET_PA_STATE_PARENT_NEW"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qGPID_PA_STATE: TIntegerField
      FieldName = 'ID_PA_STATE'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PA_STATE"'
    end
    object qGPUNIT1: TIBStringField
      DisplayLabel = #1077'.'#1080'. ('#1091')'
      FieldName = 'UNIT1'
      Origin = '"GET_PA_STATE_PARENT_NEW"."UNIT1"'
      Size = 16
    end
    object qGPID_STEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'ID_STEP'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_STEP"'
    end
    object qGPID_OBJECT_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'ID_OBJECT_TYPE'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_OBJECT_TYPE"'
    end
    object qGPID_PA_BILL: TIntegerField
      FieldName = 'ID_PA_BILL'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PA_BILL"'
    end
    object qGPID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_ITEM"'
    end
    object qGPID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PROJECT"'
    end
    object qGPAMOUNT2: TIBBCDField
      FieldName = 'AMOUNT2'
      Origin = '"GET_PA_STATE_PARENT_NEW"."AMOUNT2"'
      Precision = 18
      Size = 4
    end
    object qGPSUM_R: TIBBCDField
      DisplayLabel = #1047#1072#1103#1074#1083#1077#1085#1086' ('#1091')'
      FieldName = 'SUM_R'
      Origin = '"GET_PA_STATE_PARENT_NEW"."SUM_R"'
      Precision = 18
      Size = 4
    end
    object qGPOST: TIBBCDField
      DisplayLabel = #1057#1074#1086#1073#1086#1076#1085#1086' ('#1091')'
      FieldName = 'OST'
      Origin = '"GET_PA_STATE_PARENT_NEW"."OST"'
      Precision = 18
      Size = 4
    end
    object qGPCENA: TFloatField
      DisplayLabel = #1062#1077#1085#1072' ('#1091') '#1076#1077#1092'.'
      FieldName = 'CENA'
      Origin = '"GET_PA_STATE_PARENT_NEW"."CENA"'
      DisplayFormat = '### ### ###.000'
    end
    object qGPPR_NAME: TIBStringField
      DisplayLabel = #1041#1088#1077#1085#1076
      FieldName = 'PR_NAME'
      Origin = '"GET_PA_STATE_PARENT_NEW"."PR_NAME"'
      Size = 80
    end
    object qGPN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."N_ORDER"'
      Size = 16
    end
    object qGPN_ID_AREA: TIBStringField
      DisplayLabel = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' - '#1075#1076#1077' '#1076#1077#1083#1072#1083#1080' '#1086#1087#1077#1088#1072#1094#1080#1102
      FieldName = 'N_ID_AREA'
      Origin = '"GET_PA_STATE_PARENT_NEW"."N_ID_AREA"'
      Size = 80
    end
    object qGPN_ID_OPERATION: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103' - '#1090#1077#1082#1091#1097#1077#1077' '#1089#1086'c'#1090#1086#1103#1085#1080#1077
      FieldName = 'N_ID_OPERATION'
      Origin = '"GET_PA_STATE_PARENT_NEW"."N_ID_OPERATION"'
      Size = 30
    end
    object qGPN_ID_PA_TO: TIBStringField
      DisplayLabel = #1050#1091#1076#1072' '#1087#1077#1088#1077#1076#1072#1090#1100
      FieldName = 'N_ID_PA_TO'
      Origin = '"GET_PA_STATE_PARENT_NEW"."N_ID_PA_TO"'
      Size = 80
    end
    object qGPN_ID_PA_FROM: TIBStringField
      DisplayLabel = #1054#1090' '#1082#1091#1076#1072' '#1087#1088#1080#1096#1083#1086
      FieldName = 'N_ID_PA_FROM'
      Origin = '"GET_PA_STATE_PARENT_NEW"."N_ID_PA_FROM"'
      Size = 80
    end
    object qGPID_PA_TO: TIntegerField
      FieldName = 'ID_PA_TO'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PA_TO"'
    end
    object qGPID_PA_FROM: TIntegerField
      FieldName = 'ID_PA_FROM'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PA_FROM"'
    end
    object qGPID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_ORDER"'
    end
    object qGPID_PROD_TRAFF: TIntegerField
      DisplayLabel = #1058#1088#1072#1092#1080#1082
      FieldName = 'ID_PROD_TRAFF'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_PROD_TRAFF"'
    end
    object qGPSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072' '#1076#1077#1092'. ('#1082#1086#1083'-'#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077')'
      FieldName = 'SUMMA'
      Origin = '"GET_PA_STATE_PARENT_NEW"."SUMMA"'
      DisplayFormat = '### ### ###.000'
    end
    object qGPFACTOR: TFloatField
      DisplayLabel = #1050#1086#1101#1092'.'
      FieldName = 'FACTOR'
      Origin = '"GET_PA_STATE_PARENT_NEW"."FACTOR"'
    end
    object qGPDEC_NO: TIBStringField
      DisplayLabel = #1044#1077#1089'. '#8470
      FieldName = 'DEC_NO'
      Origin = '"GET_PA_STATE_PARENT_NEW"."DEC_NO"'
      Size = 32
    end
    object qGPSUMMA_E: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1082#1072#1079#1072' '#1055#1069#1054' ('#1082#1086#1083'-'#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077')'
      FieldName = 'SUMMA_E'
      Origin = '"GET_PA_STATE_PARENT_NEW"."SUMMA_E"'
      DisplayFormat = '### ### ###.000'
    end
    object qGPCENA_E: TFloatField
      DisplayLabel = #1062#1077#1085#1072' ('#1091') '#1087#1086' '#1089'/'#1089' '#1055#1069#1054
      FieldName = 'CENA_E'
      Origin = '"GET_PA_STATE_PARENT_NEW"."CENA_E"'
      DisplayFormat = '### ### ###.000'
    end
    object qGPID_CURR_ORDER: TIntegerField
      FieldName = 'ID_CURR_ORDER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_CURR_ORDER"'
    end
    object qGPCUR_ORDER: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'CUR_ORDER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."CUR_ORDER"'
      Size = 4
    end
    object qGPID_CURDEF: TIntegerField
      FieldName = 'ID_CURDEF'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_CURDEF"'
    end
    object qGPRATE: TFloatField
      DisplayLabel = #1050#1091#1088#1089
      FieldName = 'RATE'
      Origin = '"GET_PA_STATE_PARENT_NEW"."RATE"'
    end
    object qGPID_EST_PEO: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1055#1069#1054
      FieldName = 'ID_EST_PEO'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_EST_PEO"'
    end
    object qGPID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1050#1044
      FieldName = 'ID_VERSION'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_VERSION"'
    end
    object qGPIS_COMPL: TIntegerField
      DisplayLabel = #1057#1086#1089#1090#1072#1074
      FieldName = 'IS_COMPL'
      Origin = '"GET_PA_STATE_PARENT_NEW"."IS_COMPL"'
    end
    object qGPLINK_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1052#1062
      FieldName = 'LINK_ITEM'
      Origin = '"GET_PA_STATE_PARENT_NEW"."LINK_ITEM"'
    end
    object qGPNAME_LINK_ITEM: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1052#1062
      FieldName = 'NAME_LINK_ITEM'
      Origin = '"GET_PA_STATE_PARENT_NEW"."NAME_LINK_ITEM"'
      Size = 170
    end
    object qGPID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"GET_PA_STATE_PARENT_NEW"."ID_AGENT"'
    end
    object qGPNAME_AGENT: TIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      FieldName = 'NAME_AGENT'
      Origin = '"GET_PA_STATE_PARENT_NEW"."NAME_AGENT"'
      Size = 128
    end
    object qGPFIO_MANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'FIO_MANAGER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."FIO_MANAGER"'
      Size = 60
    end
    object qGPREM_ORDER: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM_ORDER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."REM_ORDER"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qGPD_READY_ORDER: TDateField
      DisplayLabel = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      FieldName = 'D_READY_ORDER'
      Origin = '"GET_PA_STATE_PARENT_NEW"."D_READY_ORDER"'
    end
    object qGPD_CLOSE: TDateField
      DisplayLabel = #1047#1072#1082#1088#1099#1090
      FieldName = 'D_CLOSE'
      Origin = '"GET_PA_STATE_PARENT_NEW"."D_CLOSE"'
    end
  end
  object dsGP: TDataSource
    DataSet = qGP
    Left = 100
    Top = 365
  end
  object qProd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsGpState
    SQL.Strings = (
      ' select p.id_order, p.n_order, p.name, p.amount,'
      ' p.price, p.pricea, p.def_sum,'
      ' p.d_open, p.d_ready, p.d_close, p.d_reject,'
      '  p.status,  e.name statname, p.d_fix,'
      ' p.id_estimate,ee.id_version id_version_peo,'
      ' p.id_version, p.id_estimate_kd, p.id_batch,'
      ' prj.name nproj, r.fio,'
      ' ee.total_sum est_total_sum_peo, e1.total_sum est_total_sum_kd,'
      
        ' p.ship, p.receive,p.prodused, p.BUCH_PROD_NAME, p.is_reserve , ' +
        'a.name nprod'
      ' from project_ords p'
      ' left join estimates ee on ee.id_estimate = p.id_estimate'
      ' left join estimates e1 on e1.id_estimate = p.id_estimate_kd'
      ' left join prod_areas a on a.id_p_area = p.id_cprod'
      ' left join ord_events e on e.status = p.status'
      ' left join projects prj on prj.id_project = p.id_project'
      ' left join personnel r on r.id_p = p.id_fix'
      ' where p.id_product = :id_product and p.ord_kind = 2')
    Left = 237
    Top = 515
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_product'
        ParamType = ptUnknown
      end>
    object qProdID_ORDER: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProdN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qProdNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qProdAMOUNT: TIBBCDField
      DisplayLabel = #1058#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      DisplayFormat = '### ### ###.000'
      Precision = 18
      Size = 4
    end
    object qProdPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      DisplayFormat = '### ### ###.000'
      Precision = 18
      Size = 4
    end
    object qProdPRICEA: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1076#1086#1087'.'
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      DisplayFormat = '### ### ###.000'
      Precision = 18
      Size = 4
    end
    object qProdDEF_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1076#1077#1092'. '#1074#1072#1083#1102#1090#1077
      FieldName = 'DEF_SUM'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
      DisplayFormat = '### ### ###.000'
    end
    object qProdD_OPEN: TDateTimeField
      DisplayLabel = #1054#1090#1082#1088#1099#1090
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qProdD_READY: TDateField
      DisplayLabel = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object qProdD_CLOSE: TDateTimeField
      DisplayLabel = #1047#1072#1082#1088#1099#1090
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qProdD_REJECT: TDateTimeField
      DisplayLabel = #1054#1090#1074#1077#1088#1075#1085#1091#1090
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qProdSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qProdSTATNAME: TIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATNAME'
      Origin = '"ORD_EVENTS"."NAME"'
      Size = 40
    end
    object qProdD_FIX: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS"."D_FIX"'
    end
    object qProdID_ESTIMATE: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1055#1069#1054
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qProdID_VERSION_PEO: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1055#1069#1054
      FieldName = 'ID_VERSION_PEO'
      Origin = '"ESTIMATES"."ID_VERSION"'
    end
    object qProdID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103' '#1050#1044
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qProdID_ESTIMATE_KD: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072' '#1050#1044
      FieldName = 'ID_ESTIMATE_KD'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE_KD"'
    end
    object qProdID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"PROJECT_ORDS"."ID_BATCH"'
    end
    object qProdNPROJ: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'NPROJ'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qProdFIO: TIBStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qProdEST_TOTAL_SUM_PEO: TFloatField
      DisplayLabel = #1057'/'#1057' '#1055#1069#1054
      FieldName = 'EST_TOTAL_SUM_PEO'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ###.000'
    end
    object qProdEST_TOTAL_SUM_KD: TFloatField
      DisplayLabel = #1057'/'#1057' '#1050#1044
      FieldName = 'EST_TOTAL_SUM_KD'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ###.000'
    end
    object qProdSHIP: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086
      FieldName = 'SHIP'
      Origin = '"PROJECT_ORDS"."SHIP"'
    end
    object qProdRECEIVE: TFloatField
      DisplayLabel = #1055#1086#1083#1091#1095#1077#1085#1086
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS"."RECEIVE"'
    end
    object qProdPRODUSED: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086
      FieldName = 'PRODUSED'
      Origin = '"PROJECT_ORDS"."PRODUSED"'
    end
    object qProdBUCH_PROD_NAME: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'BUCH_PROD_NAME'
      Origin = '"PROJECT_ORDS"."BUCH_PROD_NAME"'
      Size = 32
    end
    object qProdIS_RESERVE: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074
      FieldName = 'IS_RESERVE'
      Origin = '"PROJECT_ORDS"."IS_RESERVE"'
    end
    object qProdNPROD: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'NPROD'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
  end
  object dsEhProd: TDataSource
    DataSet = qProd
    Left = 253
    Top = 571
  end
  object qSellPos: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterScroll = qSellPosAfterScroll
    OnCalcFields = qSellPosCalcFields
    DataSource = dsEhSell
    SQL.Strings = (
      
        'select  o.*, o.amount* cast(o.pricea as double precision) s, i.n' +
        'ame prodname'
      'from PROJECT_ORDS_POS o'
      'left join items i on i.id_item = o.id_product'
      'where ID_ORDER = :ID_ORDER')
    GeneratorField.Field = 'ID_ORDER_POS'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 664
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qSellPosID_ORDER_POS: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER_POS'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSellPosID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER"'
      Required = True
    end
    object qSellPosNAME: TIBStringField
      DisplayLabel = #1069#1083#1077#1084#1077#1085#1090
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS_POS"."NAME"'
      Size = 64
    end
    object qSellPosAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS_POS"."AMOUNT"'
    end
    object qSellPosPRODUCED: TFloatField
      FieldName = 'PRODUCED'
      Origin = '"PROJECT_ORDS_POS"."PRODUCED"'
    end
    object qSellPosSHIPPED: TFloatField
      FieldName = 'SHIPPED'
      Origin = '"PROJECT_ORDS_POS"."SHIPPED"'
    end
    object qSellPosRECEIVE: TFloatField
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS_POS"."RECEIVE"'
    end
    object qSellPosID_PRODUCT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS_POS"."ID_PRODUCT"'
    end
    object qSellPosID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS_POS"."ID_C"'
    end
    object qSellPosD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS_POS"."D_FIX"'
    end
    object qSellPosID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS_POS"."ID_FIX"'
    end
    object qSellPosID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS_POS"."ID_DOC"'
    end
    object qSellPosPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS_POS"."PRICE"'
      Precision = 18
      Size = 4
    end
    object qSellPosPRICEA: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS_POS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qSellPosID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS_POS"."ID_CURRENCY"'
    end
    object qSellPosID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS_POS"."ID_VERSION"'
    end
    object qSellPosID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS_POS"."ID_ESTIMATE"'
    end
    object qSellPosID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"PROJECT_ORDS_POS"."ID_UNIT"'
    end
    object qSellPossUMPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'sUMPRICE'
      Calculated = True
    end
    object qSellPosNDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'NDS'
      Origin = '"PROJECT_ORDS_POS"."NDS"'
    end
    object qSellPosS: TFloatField
      FieldName = 'S'
      ProviderFlags = []
    end
    object qSellPosPRODNAME: TIBStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'PRODNAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsSellPos: TDataSource
    DataSet = qSellPos
    Left = 622
    Top = 135
  end
  object qShipSell: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.*,'
      
        '(select d.name from delivery_obj_types d where d.obj_type = p.ob' +
        'j_type) obj_t,'
      
        '(select t.name from tdcar_types t where t.id_tdcar_type = p.id_c' +
        'ar_type) car_t,'
      ''
      'pos.name pos_name, i.name item_name'
      ''
      'from ORD_PLAN_SHIPP  p'
      
        'left join PROJECT_ORDS_POS pos on pos.id_order_pos = p.id_order_' +
        'pos'
      'left join items i on i.id_item = pos.id_product'
      'where p.ID_ORDER = :ID_ORDER'
      'and p.plan_type=21'
      'order by p.D_PLANING')
    GeneratorField.Field = 'ID_PLAN_SHIPP'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 872
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qShipSellID_PLAN_SHIPP: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PLAN_SHIPP'
      Origin = '"ORD_PLAN_SHIPP"."ID_PLAN_SHIPP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qShipSellID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER"'
      Required = True
    end
    object qShipSellD_PLANING: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_PLANING'
      Origin = '"ORD_PLAN_SHIPP"."D_PLANING"'
    end
    object qShipSellAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."AMOUNT"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qShipSellSUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = '"ORD_PLAN_SHIPP"."SUMMA"'
    end
    object qShipSellPLAN_TYPE: TIntegerField
      FieldName = 'PLAN_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."PLAN_TYPE"'
    end
    object qShipSellD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"ORD_PLAN_SHIPP"."D_FIX"'
    end
    object qShipSellID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"ORD_PLAN_SHIPP"."ID_FIX"'
    end
    object qShipSellID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"ORD_PLAN_SHIPP"."ID_C"'
    end
    object qShipSellIN_PLAN: TIntegerField
      FieldName = 'IN_PLAN'
      Origin = '"ORD_PLAN_SHIPP"."IN_PLAN"'
    end
    object qShipSellFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"ORD_PLAN_SHIPP"."FLAG"'
    end
    object qShipSellADRESS: TMemoField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADRESS'
      Origin = '"ORD_PLAN_SHIPP"."ADRESS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qShipSellkol_day: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'kol_day'
      Calculated = True
    end
    object qShipSellO_D: TDateField
      FieldKind = fkCalculated
      FieldName = 'O_D'
      Calculated = True
    end
    object qShipSellID_DELIVERY_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'ID_DELIVERY_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_DELIVERY_TYPE"'
    end
    object qShipSellID_REGION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      FieldName = 'ID_REGION'
      Origin = '"ORD_PLAN_SHIPP"."ID_REGION"'
    end
    object qShipSellOBJ_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1086#1073#1098#1077#1082#1090#1072' ('#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080')'
      FieldName = 'OBJ_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."OBJ_TYPE"'
    end
    object qShipSellID_CAR_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
      FieldName = 'ID_CAR_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_CAR_TYPE"'
    end
    object qShipSellWEIGHT: TFloatField
      DisplayLabel = #1042#1077#1089', '#1082#1075' ('#1076#1083#1103' '#1089#1073'. '#1074#1077#1089#1072')'
      FieldName = 'WEIGHT'
      Origin = '"ORD_PLAN_SHIPP"."WEIGHT"'
    end
    object qShipSellDELIVERY_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1072#1083#1083#1077#1090'/'#1072#1076#1088#1077#1089#1086#1074
      FieldName = 'DELIVERY_AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_AMOUNT"'
    end
    object qShipSellDELIVERY_COST: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'DELIVERY_COST'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_COST"'
    end
    object qShipSellOBJ_T: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_T'
      ProviderFlags = []
      Size = 64
    end
    object qShipSellCAR_T: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1084#1072#1096#1080#1085#1099
      FieldName = 'CAR_T'
      ProviderFlags = []
      Size = 80
    end
    object qShipSellID_ORDER_POS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
      FieldName = 'ID_ORDER_POS'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER_POS"'
    end
    object qShipSellPOS_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'POS_NAME'
      Origin = '"PROJECT_ORDS_POS"."NAME"'
      Size = 64
    end
    object qShipSellITEM_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077
      FieldName = 'ITEM_NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsShip_sell: TDataSource
    DataSet = qShipSell
    Left = 918
    Top = 111
  end
  object qShipProd: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select p.*,'
      
        '(select d.name from delivery_obj_types d where d.obj_type = p.ob' +
        'j_type) obj_t,'
      
        '(select t.name from tdcar_types t where t.id_tdcar_type = p.id_c' +
        'ar_type) car_t,'
      'pos.name pos_name, i.name item_name'
      ''
      'from ORD_PLAN_SHIPP  p'
      
        'left join PROJECT_ORDS_POS pos on pos.id_order_pos = p.id_order_' +
        'pos'
      'left join items i on i.id_item = pos.id_product'
      'where p.ID_ORDER = :ID_ORDER'
      'and p.plan_type=21'
      'order by p.D_PLANING')
    GeneratorField.Field = 'ID_PLAN_SHIPP'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 704
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qShipProdID_PLAN_SHIPP: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PLAN_SHIPP'
      Origin = '"ORD_PLAN_SHIPP"."ID_PLAN_SHIPP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qShipProdID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER"'
      Required = True
    end
    object qShipProdD_PLANING: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_PLANING'
      Origin = '"ORD_PLAN_SHIPP"."D_PLANING"'
    end
    object qShipProdAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."AMOUNT"'
      DisplayFormat = '### ### ### ##0.0000'
    end
    object qShipProdSUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = '"ORD_PLAN_SHIPP"."SUMMA"'
    end
    object qShipProdPLAN_TYPE: TIntegerField
      FieldName = 'PLAN_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."PLAN_TYPE"'
    end
    object qShipProdD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"ORD_PLAN_SHIPP"."D_FIX"'
    end
    object qShipProdID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"ORD_PLAN_SHIPP"."ID_FIX"'
    end
    object qShipProdID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"ORD_PLAN_SHIPP"."ID_C"'
    end
    object qShipProdIN_PLAN: TIntegerField
      FieldName = 'IN_PLAN'
      Origin = '"ORD_PLAN_SHIPP"."IN_PLAN"'
    end
    object qShipProdFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"ORD_PLAN_SHIPP"."FLAG"'
    end
    object qShipProdADRESS: TMemoField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADRESS'
      Origin = '"ORD_PLAN_SHIPP"."ADRESS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qShipProdkol_day: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'kol_day'
      Calculated = True
    end
    object qShipProdO_D: TDateField
      FieldKind = fkCalculated
      FieldName = 'O_D'
      Calculated = True
    end
    object qShipProdID_DELIVERY_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'ID_DELIVERY_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_DELIVERY_TYPE"'
    end
    object qShipProdID_REGION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      FieldName = 'ID_REGION'
      Origin = '"ORD_PLAN_SHIPP"."ID_REGION"'
    end
    object qShipProdOBJ_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1086#1073#1098#1077#1082#1090#1072' ('#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080')'
      FieldName = 'OBJ_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."OBJ_TYPE"'
    end
    object qShipProdID_CAR_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
      FieldName = 'ID_CAR_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_CAR_TYPE"'
    end
    object qShipProdWEIGHT: TFloatField
      DisplayLabel = #1042#1077#1089', '#1082#1075' ('#1076#1083#1103' '#1089#1073'. '#1074#1077#1089#1072')'
      FieldName = 'WEIGHT'
      Origin = '"ORD_PLAN_SHIPP"."WEIGHT"'
    end
    object qShipProdDELIVERY_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1087#1072#1083#1083#1077#1090'/'#1072#1076#1088#1077#1089#1086#1074
      FieldName = 'DELIVERY_AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_AMOUNT"'
    end
    object qShipProdDELIVERY_COST: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'DELIVERY_COST'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_COST"'
    end
    object qShipProdOBJ_T: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072
      FieldName = 'OBJ_T'
      ProviderFlags = []
      Size = 64
    end
    object qShipProdCAR_T: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1084#1072#1096#1080#1085#1099
      FieldName = 'CAR_T'
      ProviderFlags = []
      Size = 80
    end
    object qShipProdID_ORDER_POS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
      FieldName = 'ID_ORDER_POS'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER_POS"'
    end
    object qShipProdPOS_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'POS_NAME'
      Origin = '"PROJECT_ORDS_POS"."NAME"'
      Size = 64
    end
    object qShipProdITEM_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1077
      FieldName = 'ITEM_NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsShip_Prod: TDataSource
    DataSet = qShipProd
    Left = 774
    Top = 551
  end
  object qGpState: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    BeforeOpen = qGpStateBeforeOpen
    DataSource = dsSellPos
    SQL.Strings = (
      'select a.id_p_area, a.name aname, b.obj_name , v.name vname,'
      's.id_batch, s.id_order_pos, '
      
        'p.id_order,  p.id_product, sum(s.amount) - sum(z.amount) - sum(y' +
        '.amount) free,'
      'sum(s.amount) amount, sum(y.amount) rezerv,'
      'sum(z.amount) rezervponakl'
      'from p_area_states s'
      'join prod_areas a on a.id_p_area = s.id_p_area'
      'left join project_ords_pos p on p.id_order_pos = s.id_order_pos'
      'join product_objects b on b.id_object = s.id_object'
      'join product_versions v on v.id_version = b.id_version'
      'left join pa_bill_pos y on y.id_batch = s.id_batch'
      'left join p_area_bills b1 on b1.id_pa_bill = y.id_pa_bill'
      ' and b1.pa_bill_type = 122'
      'left join pa_bill_pos z on z.id_batch = s.id_batch'
      'left join p_area_bills b2 on b2.id_pa_bill = z.id_pa_bill'
      ' and b2.pa_bill_type in(110,106,101)'
      'where s.id_object in'
      
        ' (select id_object from product_objects where id_item = :id_item' +
        ')'
      'and a.id_patype = 10 and a.d_close is null'
      'and s.id_object_type = 4'
      'group by 1,2,3,4,5,6,7,8')
    Left = 449
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qGpStateID_P_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1089#1082#1083#1072#1076#1072
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qGpStateANAME: TIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      FieldName = 'ANAME'
      ProviderFlags = []
      Size = 80
    end
    object qGpStateOBJ_NAME: TIBStringField
      DisplayLabel = #1044#1077#1090#1072#1083#1100
      FieldName = 'OBJ_NAME'
      Origin = '"PRODUCT_OBJECTS"."OBJ_NAME"'
      Size = 128
    end
    object qGpStateVNAME: TIBStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'VNAME'
      ProviderFlags = []
      Size = 128
    end
    object qGpStateID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"P_AREA_STATES"."ID_BATCH"'
    end
    object qGpStateID_ORDER_POS: TIntegerField
      FieldName = 'ID_ORDER_POS'
      Origin = '"P_AREA_STATES"."ID_ORDER_POS"'
    end
    object qGpStateID_ORDER: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074' '#1085#1072' '#1079#1072#1082#1072#1079
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER"'
    end
    object qGpStateID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS_POS"."ID_PRODUCT"'
    end
    object qGpStateAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      ProviderFlags = []
      DisplayFormat = '### ### ###.000'
      Precision = 18
      Size = 4
    end
    object qGpStateFREE: TIBBCDField
      DisplayLabel = #1057#1074#1086#1073#1086#1076#1085#1086
      FieldName = 'FREE'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object qGpStateREZERV: TIBBCDField
      DisplayLabel = #1056#1077#1079#1077#1088#1074' '#1079#1072#1082#1072#1079#1072' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1091
      FieldName = 'REZERV'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object qGpStateREZERVPONAKL: TIBBCDField
      DisplayLabel = #1056#1077#1079#1077#1088#1074' '#1087#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1084
      FieldName = 'REZERVPONAKL'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object dsGpState: TDataSource
    DataSet = qGpState
    Left = 521
    Top = 287
  end
  object qIns: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    Left = 921
    Top = 263
  end
  object qVEr: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select id_version, name from product_versions where id_item = :i' +
        'd_item')
    Left = 441
    Top = 491
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qVErID_VERSION: TIntegerField
      DisplayLabel = #1056#1077#1075'. '#8470
      FieldName = 'ID_VERSION'
      Origin = '"PRODUCT_VERSIONS"."ID_VERSION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVErNAME: TIBStringField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'NAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
  end
  object dsVer: TDataSource
    DataSet = qVEr
    Left = 465
    Top = 571
  end
  object qProdShipp: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsGpState
    SQL.Strings = (
      
        ' select     oo.n_order, oo.amount, pp.d_planing, pp.amount ammsh' +
        'ip, pp.summa, oo.id_batch'
      ' from ord_plan_shipp pp'
      ' join project_ords_pos ps on ps.id_order_pos = pp.id_order_pos'
      ' and ps.id_order = pp.id_order'
      ' join project_ords oo on oo.id_order = pp.id_order'
      ' where oo.id_product = :id_product and oo.ord_kind = 2'
      ' and pp.plan_type = 21')
    Left = 581
    Top = 539
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_product'
        ParamType = ptUnknown
      end>
    object qProdShippN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qProdShippAMOUNT: TIBBCDField
      DisplayLabel = #1058#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qProdShippD_PLANING: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080
      FieldName = 'D_PLANING'
      Origin = '"ORD_PLAN_SHIPP"."D_PLANING"'
    end
    object qProdShippAMOUNT1: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'ammship'
      Origin = '"ORD_PLAN_SHIPP"."AMOUNT"'
    end
    object qProdShippSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Origin = '"ORD_PLAN_SHIPP"."SUMMA"'
    end
    object qProdShippID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"PROJECT_ORDS"."ID_BATCH"'
    end
  end
  object dsProdShipp: TDataSource
    DataSet = qProdShipp
    Left = 573
    Top = 603
  end
  object qSellOrds: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      ''
      
        'select oo.n_order, oo.amount, pp.d_planing, pp.amount ampos, pp.' +
        'summa,'
      'i.name'
      ' from project_ords oo'
      ' join project_ords_pos ps on  ps.id_order =oo.id_order'
      ' left join items i on i.id_item = ps.id_product'
      ' left join ord_plan_shipp pp on pp.id_order = oo.id_order'
      ' where  oo.ord_kind = 1 and ps.id_product = :id_product')
    Left = 397
    Top = 99
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_product'
        ParamType = ptUnknown
      end>
    object qSellOrdsN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qSellOrdsAMOUNT: TIBBCDField
      DisplayLabel = #1058#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qSellOrdsD_PLANING: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1084#1086#1081' '#1086#1090#1075#1088#1091#1079#1082#1080
      FieldName = 'D_PLANING'
      Origin = '"ORD_PLAN_SHIPP"."D_PLANING"'
    end
    object qSellOrdsAMPOS: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMPOS'
      Origin = '"ORD_PLAN_SHIPP"."AMOUNT"'
    end
    object qSellOrdsSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Origin = '"ORD_PLAN_SHIPP"."SUMMA"'
    end
    object qSellOrdsNAME: TIBStringField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsSellOrds: TDataSource
    Left = 421
    Top = 171
  end
  object dsEhSell: TDataSource
    DataSet = qSell
    Left = 261
    Top = 171
  end
  object qSell: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      ' select p.id_order, p.n_order, p.name,'
      ' p.price, p.pricea, p.def_sum,'
      ' p.d_open, p.d_ready, p.d_close, p.d_reject,'
      '  p.status,  e.name statname, p.d_fix,'
      ''
      'p.id_batch,'
      ' prj.name nproj, r.fio,'
      ''
      ' p.ship, p.receive,p.prodused,  p.is_reserve '
      ' from project_ords p'
      ''
      ' left join ord_events e on e.status = p.status'
      ' left join projects prj on prj.id_project = p.id_project'
      ' left join personnel r on r.id_p = p.id_fix'
      ' where '
      ' p.ord_kind = 1')
    Left = 245
    Top = 115
    object qSellID_ORDER: TIntegerField
      DisplayLabel = #1056#1077#1075' '#8470
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSellN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qSellNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qSellPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      Precision = 18
      Size = 4
    end
    object qSellPRICEA: TIBBCDField
      DisplayLabel = #1044#1086#1087' '#1089#1091#1084#1084#1072
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qSellDEF_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1074' '#1076#1077#1092'. '#1074#1072#1083#1102#1090#1077
      FieldName = 'DEF_SUM'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
    end
    object qSellD_OPEN: TDateTimeField
      DisplayLabel = #1054#1090#1082#1088#1099#1090
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qSellD_READY: TDateField
      DisplayLabel = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object qSellD_CLOSE: TDateTimeField
      DisplayLabel = #1047#1072#1082#1088#1099#1090
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qSellD_REJECT: TDateTimeField
      DisplayLabel = #1054#1090#1074#1077#1088#1075#1085#1091#1090
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qSellSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qSellSTATNAME: TIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATNAME'
      Origin = '"ORD_EVENTS"."NAME"'
      Size = 40
    end
    object qSellD_FIX: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS"."D_FIX"'
    end
    object qSellID_BATCH: TIntegerField
      DisplayLabel = #1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"PROJECT_ORDS"."ID_BATCH"'
    end
    object qSellNPROJ: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'NPROJ'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qSellFIO: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qSellSHIP: TFloatField
      DisplayLabel = #1086#1090#1075#1088#1091#1078#1077#1085#1086
      FieldName = 'SHIP'
      Origin = '"PROJECT_ORDS"."SHIP"'
    end
    object qSellRECEIVE: TFloatField
      DisplayLabel = #1055#1086#1083#1091#1095#1077#1085#1086
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS"."RECEIVE"'
    end
    object qSellPRODUSED: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086
      FieldName = 'PRODUSED'
      Origin = '"PROJECT_ORDS"."PRODUSED"'
    end
    object qSellIS_RESERVE: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074
      FieldName = 'IS_RESERVE'
      Origin = '"PROJECT_ORDS"."IS_RESERVE"'
    end
  end
end
