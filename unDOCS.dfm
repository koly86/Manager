object fmDOCS: TfmDOCS
  Left = 383
  Top = 156
  Width = 622
  Height = 480
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
  object Splitter1: TSplitter
    Left = 277
    Top = 0
    Height = 446
    Align = alRight
  end
  object p3: TPanel
    Left = 280
    Top = 0
    Width = 334
    Height = 446
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 0
    object p4: TPanel
      Left = 2
      Top = 25
      Width = 330
      Height = 419
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 0
      object m1: TMemo
        Left = 2
        Top = 2
        Width = 326
        Height = 387
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 2
        Top = 389
        Width = 326
        Height = 28
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 1
        DesignSize = (
          326
          28)
        object bb1: TBitBtn
          Left = 248
          Top = 2
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 0
          OnClick = bb1Click
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 330
      Height = 23
      Align = alTop
      TabOrder = 1
      object cb1: TCheckBox
        Left = 8
        Top = 2
        Width = 305
        Height = 17
        Caption = #1047#1072#1087#1080#1089#1099#1074#1072#1090#1100' '#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081' '#1090#1077#1082#1089#1090
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object dbt1: TDB_TreeView
    Left = 0
    Top = 0
    Width = 277
    Height = 446
    Align = alClient
    HideSelection = False
    Indent = 19
    TabOrder = 1
    OnChange = dbt1Change
    OnChanging = dbt1Changing
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    RootId = 1
    FieldId = 'ID_ROW'
    FieldParentId = 'PARENT'
    FieldName = 'NAME'
    FieldState = 'ID_ROW'
    SortByName = False
  end
  object qROW: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select DATA_TYPE, DEF_VALUE, STATUS '
      'from PROJ_DOC_STRUCTURE'
      'where ID_ROW = :rw1')
    Left = 72
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'rw1'
        ParamType = ptUnknown
      end>
    object qROWDATA_TYPE: TSmallintField
      FieldName = 'DATA_TYPE'
      Origin = '"PROJ_DOC_STRUCTURE"."DATA_TYPE"'
    end
    object qROWDEF_VALUE: TMemoField
      FieldName = 'DEF_VALUE'
      Origin = '"PROJ_DOC_STRUCTURE"."DEF_VALUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qROWSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = '"PROJ_DOC_STRUCTURE"."STATUS"'
    end
  end
  object qDOC: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    OnCalcFields = qDOCCalcFields
    SQL.Strings = (
      'select * '
      'from PROJECT_DOCS'
      'where ID_PROJECT = :pr1'
      'order by ID_PROJECT_DOC ')
    GeneratorField.Field = 'ID_PROJECT_DOC'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 88
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pr1'
        ParamType = ptUnknown
      end>
    object qDOCID_PROJECT_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDOCID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_DOCS"."ID_PROJECT"'
    end
    object qDOCDOC_TYPE: TIntegerField
      FieldName = 'DOC_TYPE'
      Origin = '"PROJECT_DOCS"."DOC_TYPE"'
    end
    object qDOCNUMBER: TIBStringField
      DisplayLabel = #1048#1089#1093'. '#8470
      FieldName = 'NUMBER'
      Origin = '"PROJECT_DOCS"."NUMBER"'
      Size = 16
    end
    object qDOCD_DOC: TDateField
      DisplayLabel = #1054#1090
      FieldName = 'D_DOC'
      Origin = '"PROJECT_DOCS"."D_DOC"'
    end
    object qDOCD_IN: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083'.'
      FieldName = 'D_IN'
      Origin = '"PROJECT_DOCS"."D_IN"'
    end
    object qDOCD_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1074#1077#1090#1072
      FieldName = 'D_OUT'
      Origin = '"PROJECT_DOCS"."D_OUT"'
    end
    object qDOCD_PROD: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1080#1079#1074'.'
      FieldName = 'D_PROD'
      Origin = '"PROJECT_DOCS"."D_PROD"'
    end
    object qDOCD_SHIPP: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1075#1088'.'
      FieldName = 'D_SHIPP'
      Origin = '"PROJECT_DOCS"."D_SHIPP"'
    end
    object qDOCD_FIX: TDateTimeField
      DisplayLabel = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085
      FieldName = 'D_FIX'
      Origin = '"PROJECT_DOCS"."D_FIX"'
    end
    object qDOCID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_DOCS"."ID_FIX"'
    end
    object qDOCSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"PROJECT_DOCS"."STATUS"'
    end
    object qDOCID_DRAFT: TIntegerField
      DisplayLabel = #1069#1089#1082#1080#1079
      FieldName = 'ID_DRAFT'
      Origin = '"PROJECT_DOCS"."ID_DRAFT"'
    end
    object qDOCID_FOTO: TIntegerField
      DisplayLabel = #1060#1086#1090#1086
      FieldName = 'ID_FOTO'
      Origin = '"PROJECT_DOCS"."ID_FOTO"'
    end
    object qDOCnTYPE: TStringField
      DisplayLabel = #1058#1080#1087
      FieldKind = fkLookup
      FieldName = 'nTYPE'
      LookupDataSet = qDOC_TYPE
      LookupKeyFields = 'ID_PROJ_DOC_TYPE'
      LookupResultField = 'NAME'
      KeyFields = 'DOC_TYPE'
      Size = 32
      Lookup = True
    end
    object qDOCID_SDOC: TIntegerField
      FieldName = 'ID_SDOC'
      Origin = '"PROJECT_DOCS"."ID_SDOC"'
    end
    object qDOCD_FILL: TDateTimeField
      FieldName = 'D_FILL'
      Origin = '"PROJECT_DOCS"."D_FILL"'
    end
    object qDOCID_FILL: TIntegerField
      FieldName = 'ID_FILL'
      Origin = '"PROJECT_DOCS"."ID_FILL"'
    end
    object qDOCfILL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'fILL'
      Size = 1
      Calculated = True
    end
    object qDOCNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qDOCGraph: TStringField
      FieldKind = fkCalculated
      FieldName = 'Graph'
      Size = 1
      Calculated = True
    end
    object qDOCiSSTR: TIntegerField
      FieldKind = fkLookup
      FieldName = 'iSSTR'
      LookupDataSet = qDOC_TYPE
      LookupKeyFields = 'ID_PROJ_DOC_TYPE'
      LookupResultField = 'IS_STRUCTURED'
      KeyFields = 'DOC_TYPE'
      Lookup = True
    end
    object qDOCnSTATUS: TStringField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      FieldKind = fkCalculated
      FieldName = 'nSTATUS'
      Size = 32
      Calculated = True
    end
  end
  object dsDOC: TDataSource
    DataSet = qDOC
    Left = 88
    Top = 144
  end
  object qDOC_TYPE: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      'select *'
      'from PROJ_DOC_TYPES'
      '')
    GeneratorField.Field = 'ID_PROJ_DOC_TYPE'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 376
    Top = 8
    object qDOC_TYPEID_PROJ_DOC_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJ_DOC_TYPE'
      Origin = '"PROJ_DOC_TYPES"."ID_PROJ_DOC_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDOC_TYPEIS_STRUCTURED: TSmallintField
      FieldName = 'IS_STRUCTURED'
      Origin = '"PROJ_DOC_TYPES"."IS_STRUCTURED"'
    end
    object qDOC_TYPENAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJ_DOC_TYPES"."NAME"'
      Size = 32
    end
    object qDOC_TYPEsTR: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'sTR'
      Size = 1
      Calculated = True
    end
  end
  object dsDOC_TYPE: TDataSource
    DataSet = qDOC_TYPE
    Left = 376
    Top = 56
  end
  object qPrj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select p.* , b.name bname, r.fio manager, n.fio designer, c.name' +
        ' ncurr'
      'from projects p left join brands b'
      'on b.id_brand = p.id_brand'
      'left join personnel r on r.id_p = p.id_manager'
      'left join personnel n on n.id_p = p.id_designer'
      'left join currency c on c.id_currency = p.currency'
      'where P.id_project = :ID and P.d_close is null')
    Left = 184
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qPrjID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECTS"."ID_PROJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrjBRIEF: TIBStringField
      DisplayLabel = #1041#1088#1080#1092
      FieldName = 'BRIEF'
      Origin = '"PROJECTS"."BRIEF"'
      Size = 24
    end
    object qPrjID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"PROJECTS"."ID_MANAGER"'
    end
    object qPrjID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECTS"."ID_AGENT"'
    end
    object qPrjID_BRAND: TIntegerField
      FieldName = 'ID_BRAND'
      Origin = '"PROJECTS"."ID_BRAND"'
    end
    object qPrjNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qPrjSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECTS"."STATUS"'
    end
    object qPrjDATA: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DATA'
      Origin = '"PROJECTS"."DATA"'
    end
    object qPrjID_PROJ_TYPE: TIntegerField
      FieldName = 'ID_PROJ_TYPE'
      Origin = '"PROJECTS"."ID_PROJ_TYPE"'
    end
    object qPrjBNAME: TIBStringField
      DisplayLabel = #1041#1088#1101#1085#1076
      FieldName = 'BNAME'
      Origin = '"BRANDS"."NAME"'
      Size = 32
    end
    object qPrjID_EDIT: TIntegerField
      FieldName = 'ID_EDIT'
      Origin = '"PROJECTS"."ID_EDIT"'
    end
    object qPrjD_CLOSE: TDateTimeField
      FieldName = 'D_CLOSE'
      Origin = '"PROJECTS"."D_CLOSE"'
    end
    object qPrjID_CLOSE: TIntegerField
      FieldName = 'ID_CLOSE'
      Origin = '"PROJECTS"."ID_CLOSE"'
    end
    object qPrjID_DESIGNER: TIntegerField
      FieldName = 'ID_DESIGNER'
      Origin = '"PROJECTS"."ID_DESIGNER"'
    end
    object qPrjD_EDIT: TDateTimeField
      FieldName = 'D_EDIT'
      Origin = '"PROJECTS"."D_EDIT"'
    end
    object qPrjD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"PROJECTS"."D_FIX"'
    end
    object qPrjID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECTS"."ID_FIX"'
    end
    object qPrjSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      Origin = '"PROJECTS"."SUMMA"'
      DisplayFormat = '### ### ##0.00'
    end
    object qPrjEXPENSES: TFloatField
      DisplayLabel = #1057#1077#1073#1077#1089#1090'.'
      FieldName = 'EXPENSES'
      Origin = '"PROJECTS"."EXPENSES"'
    end
    object qPrjCURRENCY: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1072#1083'.'
      FieldName = 'CURRENCY'
      Origin = '"PROJECTS"."CURRENCY"'
    end
    object qPrjDATAEND: TDateField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      FieldName = 'DATAEND'
      Origin = '"PROJECTS"."DATAEND"'
    end
    object qPrjD_DACCEPT: TDateTimeField
      DisplayLabel = #1055#1088#1080#1085#1103#1090#1086' '#1074' '#1076#1080#1079#1072#1081#1085
      FieldName = 'D_DACCEPT'
      Origin = '"PROJECTS"."D_DACCEPT"'
    end
    object qPrjID_DACCEPTOR: TIntegerField
      FieldName = 'ID_DACCEPTOR'
      Origin = '"PROJECTS"."ID_DACCEPTOR"'
    end
    object qPrjAMOUNT: TFloatField
      DisplayLabel = #1058#1080#1088#1072#1078
      FieldName = 'AMOUNT'
      Origin = '"PROJECTS"."AMOUNT"'
      DisplayFormat = '### ### ##0'
    end
    object qPrjDEF_SUM: TFloatField
      DisplayLabel = 'C'#1091#1084#1084#1072' ('#1088#1091#1073')'
      FieldName = 'DEF_SUM'
      Origin = '"PROJECTS"."DEF_SUM"'
      DisplayFormat = '### ### ##0.00'
    end
    object qPrjMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPrjDESIGNER: TIBStringField
      DisplayLabel = #1044#1080#1079#1072#1081#1085#1077#1088
      FieldName = 'DESIGNER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsPrj: TDataSource
    DataSet = qPrj
    Left = 184
    Top = 264
  end
end
