object fmOrder_Center: TfmOrder_Center
  Left = 473
  Top = 252
  Width = 1210
  Height = 395
  Caption = #1047#1072#1082#1072#1079#1099' '#1080#1079' '#1089#1074#1103#1079#1072#1085#1085#1086#1081' '#1073#1072#1079#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1194
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ToolBar3
        ImageIndex = -1
        Width = 1190
      end>
    object ToolBar3: TToolBar
      Left = 9
      Top = 0
      Width = 1177
      Height = 25
      Caption = 'ToolBar3'
      Flat = True
      Images = fmMain.il1
      TabOrder = 0
      object ToolButton5: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton5'
        ImageIndex = 29
        OnClick = ToolButton5Click
      end
      object ToolButton8: TToolButton
        Left = 23
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object Label57: TLabel
        Left = 31
        Top = 0
        Width = 38
        Height = 22
        Caption = #1055#1086#1080#1089#1082': '
        Layout = tlCenter
      end
      object ed_find: TEdit
        Left = 69
        Top = 0
        Width = 140
        Height = 22
        TabOrder = 0
        OnKeyPress = ed_findKeyPress
      end
      object ToolButton10: TToolButton
        Left = 209
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object Label61: TLabel
        Left = 217
        Top = 0
        Width = 53
        Height = 22
        Caption = #1055#1077#1088#1080#1086#1076' '#1089': '
        Layout = tlCenter
      end
      object d_beg: TDBDateTimeEditEh
        Left = 270
        Top = 0
        Width = 131
        Height = 22
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 2
        Visible = True
      end
      object Label64: TLabel
        Left = 401
        Top = 0
        Width = 21
        Height = 22
        Caption = ' '#1087#1086': '
        Layout = tlCenter
      end
      object d_end: TDBDateTimeEditEh
        Left = 422
        Top = 0
        Width = 131
        Height = 22
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 1
        Visible = True
      end
    end
  end
  object dbgOrders: TDBGridEh
    Left = 0
    Top = 29
    Width = 1194
    Height = 328
    Align = alClient
    DataSource = dsOrders
    DrawMemoText = True
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
    UseMultiTitle = True
    OnDblClick = dbgOrdersDblClick
    OnGetCellParams = dbgOrdersGetCellParams
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
        Width = 368
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
        FieldName = 'ID_CURRENCY'
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
        FieldName = 'MARGIN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DISCOUNT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MANAGER_MARGIN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DELIVERY_SUM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PLAN_COST_PRICE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_CPTYPE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_CPROD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_OPER_TYPE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'D_FIX'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_FIX'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_PRODUCT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_PROJECT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_C'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_AX'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_DOC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_DOGOVOR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'REM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'IS_CHARGE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'IS_COL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_PRICE_POS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_ESTIMATE'
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
        FieldName = 'ID_VERSION_PEO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_BATCH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NPTYPE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NOPERTYPE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NPROD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NCURR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NSTATUS'
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
        FieldName = 'DOG_NUMBER'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DOG_NUMBER_'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DOG_DATE_IN'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KOL_DAY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_CHIEF'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FIO_CHIEF'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PATH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FULL_NAME'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NAME_PRODUCT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'NAME_ORDTYPE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'LID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ORD_TYPE'
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
        FieldName = 'nStat'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'fiLL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ID_AGENT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DOCNAME'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ORDKIND'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ORD_KIND'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PROFIT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'IS_SELF'
        Footers = <>
      end>
  end
  object qOrders: TIBQuery
    Database = dmIS.C_db
    Transaction = dmIS.cT
    SQL.Strings = (
      'select p.id_order, p.n_order, p.name, p.amount, p.is_self,'
      
        'p.price, (select nds_val from get_nds_sum(p.price,1)) price_bez_' +
        'nds,p.pricea, p.id_currency, p.def_sum,'
      'p.d_open, p.d_ready, p.d_close, p.d_reject,'
      'p.margin, p.discount, p.manager_margin,'
      'p.delivery_sum, p.plan_cost_price, p.id_cptype,'
      'p.id_cprod, pt.id_oper_type, p.status, p.d_fix,'
      'p.id_fix, p.id_product, p.id_project, p.id_c, p.id_ax,'
      
        'p.id_doc, p.id_dogovor, p.rem,p.IS_CHARGE,p.is_col,p.id_price_po' +
        's,'
      'p.id_estimate,ee.id_version id_version_peo,'
      'p.id_version, p.id_estimate_kd, p.id_batch,'
      'pt.name nptype, ot.name nopertype, a.name nprod,'
      'c.name ncurr, e.name nstatus, prj.name nproj, r.fio,'
      'd.dog_number,d.dog_number_, d.dog_date_in,'
      'coalesce(d.kol_day,0) kol_day,'
      ' case when d.vid = 0 then '#39#1073'/'#1085#39' else '#39#1082#1072#1083'/'#1076#1085#39' end vid,'
      ''
      'p.id_chief, rr.fio fio_chief,'
      
        'p.path, p.full_name, i.name name_product, oo.name name_ordtype,p' +
        '.lid,p.ord_type,'
      'ee.total_sum est_total_sum_peo, e1.total_sum est_total_sum_kd,'
      
        'p.ship, p.receive,p.prodused, p.BUCH_PROD_NAME, p.is_reserve, p.' +
        'id_agent, dd.name docname, kk.name ordkind, p.ord_kind,'
      
        'case when ee.total_sum <> 0 then (p.price/(ee.total_sum+p.delive' +
        'ry_sum)-1)*100'
      
        'when (ee.total_sum = 0) or (ee.total_sum is null) then -100 end ' +
        'profit'
      'from project_ords p'
      'left join ptypes pt on p.id_cptype = pt.id_ptype'
      'left join estimates ee on ee.id_estimate = p.id_estimate'
      'left join estimates e1 on e1.id_estimate = p.id_estimate_kd'
      'left join oper_types ot on ot.id_oper_type = pt.id_oper_type'
      'left join prod_areas a on a.id_p_area = p.id_cprod'
      'left join currency c on c.id_currency = p.id_currency'
      'left join ord_events e on e.status = p.status'
      'left join projects prj on prj.id_project = p.id_project'
      'left join personnel r on r.id_p = p.id_fix'
      'left join personnel rr on rr.id_p = p.id_chief'
      'left join dogovor d on d.id_dogovor = p.id_dogovor'
      'left join items i on i.id_item = p.id_product'
      'left join ord_types oo on oo.id_type = p.ord_type'
      'left join project_docs dd on dd.id_project_doc = p.id_doc'
      'left join order_kinds kk on kk.id_ord_kind = p.ord_kind'
      'where p.id_project = :id_project')
    Left = 32
    Top = 77
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_project'
        ParamType = ptUnknown
      end>
    object qOrdersID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdersN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qOrdersNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qOrdersAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083' - '#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qOrdersPRICE: TIBBCDField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1076#1072#1078#1085#1072#1103' + '#1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qOrdersPRICEA: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' ('#1091#1089#1083#1091#1075#1080')'
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qOrdersID_CURRENCY: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1072#1083#1102#1090#1099
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS"."ID_CURRENCY"'
    end
    object qOrdersDEF_SUM: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' ('#1088#1091#1073'.)'
      FieldName = 'DEF_SUM'
      Origin = '"PROJECT_ORDS"."DEF_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersD_OPEN: TDateTimeField
      DisplayLabel = #1054#1090#1082#1088#1099#1090
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qOrdersD_READY: TDateField
      DisplayLabel = #1043#1086#1090#1086#1074#1085#1086#1089#1090#1100
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object qOrdersD_CLOSE: TDateTimeField
      DisplayLabel = #1047#1072#1082#1088#1099#1090
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qOrdersD_REJECT: TDateTimeField
      DisplayLabel = #1054#1090#1074#1077#1088#1075#1085#1091#1090
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qOrdersMARGIN: TFloatField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072
      FieldName = 'MARGIN'
      Origin = '"PROJECT_ORDS"."MARGIN"'
    end
    object qOrdersDISCOUNT: TFloatField
      DisplayLabel = #1057#1082#1080#1076#1082#1072
      FieldName = 'DISCOUNT'
      Origin = '"PROJECT_ORDS"."DISCOUNT"'
    end
    object qOrdersMANAGER_MARGIN: TFloatField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
      FieldName = 'MANAGER_MARGIN'
      Origin = '"PROJECT_ORDS"."MANAGER_MARGIN"'
      DisplayFormat = '##0.00'
    end
    object qOrdersDELIVERY_SUM: TFloatField
      DisplayLabel = #1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'DELIVERY_SUM'
      Origin = '"PROJECT_ORDS"."DELIVERY_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersPLAN_COST_PRICE: TFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'PLAN_COST_PRICE'
      Origin = '"PROJECT_ORDS"."PLAN_COST_PRICE"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersID_CPTYPE: TIntegerField
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object qOrdersID_CPROD: TIntegerField
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object qOrdersID_OPER_TYPE: TIntegerField
      FieldName = 'ID_OPER_TYPE'
      Origin = '"PTYPES"."ID_OPER_TYPE"'
    end
    object qOrdersSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qOrdersD_FIX: TDateTimeField
      DisplayLabel = #1042' '#1087#1083#1072#1085
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS"."D_FIX"'
    end
    object qOrdersID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS"."ID_FIX"'
    end
    object qOrdersID_PRODUCT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qOrdersID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qOrdersID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS"."ID_C"'
    end
    object qOrdersID_AX: TIBStringField
      FieldName = 'ID_AX'
      Origin = '"PROJECT_ORDS"."ID_AX"'
    end
    object qOrdersID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' -'#1086#1089#1085#1086#1074#1072#1085#1080#1103
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object qOrdersID_DOGOVOR: TIntegerField
      FieldName = 'ID_DOGOVOR'
      Origin = '"PROJECT_ORDS"."ID_DOGOVOR"'
    end
    object qOrdersREM: TMemoField
      FieldName = 'REM'
      Origin = '"PROJECT_ORDS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOrdersIS_CHARGE: TIntegerField
      DisplayLabel = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077
      FieldName = 'IS_CHARGE'
      Origin = '"PROJECT_ORDS"."IS_CHARGE"'
    end
    object qOrdersIS_COL: TIntegerField
      DisplayLabel = #1057#1087#1077#1094'.'#1091#1095#1105#1090
      FieldName = 'IS_COL'
      Origin = '"PROJECT_ORDS"."IS_COL"'
    end
    object qOrdersID_PRICE_POS: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1072#1081#1089#1072
      FieldName = 'ID_PRICE_POS'
      Origin = '"PROJECT_ORDS"."ID_PRICE_POS"'
    end
    object qOrdersID_ESTIMATE: TIntegerField
      DisplayLabel = #1055#1069#1054'||'#1057#1084#1077#1090#1072
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qOrdersID_VERSION: TIntegerField
      DisplayLabel = #1042' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1080'||'#1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qOrdersID_ESTIMATE_KD: TIntegerField
      DisplayLabel = #1042' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1080'||'#1057#1084#1077#1090#1072
      FieldName = 'ID_ESTIMATE_KD'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE_KD"'
    end
    object qOrdersID_VERSION_PEO: TIntegerField
      DisplayLabel = #1055#1069#1054'||'#1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION_PEO'
      Origin = '"PRODUCT_ESTIMATE"."ID_VERSION"'
    end
    object qOrdersID_BATCH: TIntegerField
      DisplayLabel = #1042' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1080'||'#1055#1072#1088#1090#1080#1103
      FieldName = 'ID_BATCH'
      Origin = '"PROJECT_ORDS"."ID_BATCH"'
    end
    object qOrdersNPTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NPTYPE'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qOrdersNOPERTYPE: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      FieldName = 'NOPERTYPE'
      Origin = '"OPER_TYPES"."NAME"'
      Size = 64
    end
    object qOrdersNPROD: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'NPROD'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qOrdersNCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qOrdersNSTATUS: TIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'NSTATUS'
      Origin = '"ORD_EVENTS"."NAME"'
      Size = 40
    end
    object qOrdersNPROJ: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'NPROJ'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qOrdersFIO: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdersDOG_NUMBER: TIBStringField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088'|'#8470' '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081
      FieldName = 'DOG_NUMBER'
      Origin = '"DOGOVOR"."DOG_NUMBER"'
      Size = 16
    end
    object qOrdersDOG_NUMBER_: TIBStringField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088'|'#8470' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'DOG_NUMBER_'
      Origin = '"DOGOVOR"."DOG_NUMBER_"'
      Size = 32
    end
    object qOrdersDOG_DATE_IN: TDateField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088'|'#1054#1090#1082#1088#1099#1090
      FieldName = 'DOG_DATE_IN'
      Origin = '"DOGOVOR"."DOG_DATE_IN"'
    end
    object qOrdersKOL_DAY: TIntegerField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088'|'#1044#1085#1080
      FieldName = 'KOL_DAY'
      ProviderFlags = []
    end
    object qOrdersVID: TIBStringField
      DisplayLabel = #1044#1086#1075#1086#1074#1086#1088'|'#1042#1080#1076
      FieldName = 'VID'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
    object qOrdersID_CHIEF: TIntegerField
      FieldName = 'ID_CHIEF'
      Origin = '"PROJECT_ORDS"."ID_CHIEF"'
    end
    object qOrdersFIO_CHIEF: TIBStringField
      DisplayLabel = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
      FieldName = 'FIO_CHIEF'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdersPATH: TBlobField
      DisplayLabel = #1053#1086#1089#1080#1090#1077#1083#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      FieldName = 'PATH'
      Origin = '"PROJECT_ORDS"."PATH"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOrdersFULL_NAME: TMemoField
      DisplayLabel = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1072
      FieldName = 'FULL_NAME'
      Origin = '"PROJECT_ORDS"."FULL_NAME"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOrdersNAME_PRODUCT: TIBStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'NAME_PRODUCT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOrdersNAME_ORDTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1079#1072#1082#1072#1079#1072
      FieldName = 'NAME_ORDTYPE'
      Origin = '"ORD_TYPES"."NAME"'
      Size = 32
    end
    object qOrdersLID: TIntegerField
      DisplayLabel = #1056#1086#1076#1080#1090#1077#1083#1100' '#1079#1072#1082#1072#1079#1072
      FieldName = 'LID'
      Origin = '"PROJECT_ORDS"."LID"'
    end
    object qOrdersORD_TYPE: TIntegerField
      FieldName = 'ORD_TYPE'
      Origin = '"PROJECT_ORDS"."ORD_TYPE"'
    end
    object qOrdersEST_TOTAL_SUM_PEO: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100'|'#1055#1069#1054
      FieldName = 'EST_TOTAL_SUM_PEO'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersEST_TOTAL_SUM_KD: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100'|'#1050#1044
      FieldName = 'EST_TOTAL_SUM_KD'
      Origin = '"ESTIMATES"."TOTAL_SUM"'
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersSHIP: TFloatField
      DisplayLabel = #1054#1090#1075#1088#1091#1078#1077#1085#1086
      FieldName = 'SHIP'
      Origin = '"PROJECT_ORDS"."SHIP"'
    end
    object qOrdersRECEIVE: TFloatField
      DisplayLabel = #1042#1099#1074#1077#1079#1077#1085#1086
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS"."RECEIVE"'
    end
    object qOrdersPRODUSED: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086
      FieldName = 'PRODUSED'
      Origin = '"PROJECT_ORDS"."PRODUSED"'
    end
    object qOrdersBUCH_PROD_NAME: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'BUCH_PROD_NAME'
      Origin = '"PROJECT_ORDS"."BUCH_PROD_NAME"'
      Size = 32
    end
    object qOrdersIS_RESERVE: TIntegerField
      DisplayLabel = #1056#1077#1079#1077#1088#1074
      FieldName = 'IS_RESERVE'
      Origin = '"PROJECT_ORDS"."IS_RESERVE"'
    end
    object qOrdersnStat: TStringField
      FieldKind = fkCalculated
      FieldName = 'nStat'
      Size = 32
      Calculated = True
    end
    object qOrdersfiLL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'fiLL'
      Size = 1
      Calculated = True
    end
    object qOrdersID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qOrdersDOCNAME: TIBStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOCNAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qOrdersORDKIND: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ORDKIND'
      Origin = '"ORDER_KINDS"."NAME"'
      Size = 32
    end
    object qOrdersORD_KIND: TIntegerField
      FieldName = 'ORD_KIND'
      Origin = '"PROJECT_ORDS"."ORD_KIND"'
    end
    object qOrdersPROFIT: TFloatField
      DisplayLabel = #1056#1077#1085#1090#1072#1073#1077#1083#1100#1085#1086#1089#1090#1100
      FieldName = 'PROFIT'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdersIS_SELF: TIntegerField
      FieldName = 'IS_SELF'
      Origin = '"PROJECT_ORDS"."IS_SELF"'
    end
  end
  object dsOrders: TDataSource
    DataSet = qOrders
    Left = 33
    Top = 123
  end
end
