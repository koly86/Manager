object dmIS: TdmIS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 340
  Top = 189
  Height = 671
  Width = 941
  object mT: TIBTransaction
    DefaultDatabase = dbIS
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 8
    Top = 8
  end
  object dbIS: TIBDatabase
    Params.Strings = (
      'user_name=bin'
      'password=hourglass'
      'lc_ctype=WIN1251')
    DefaultTransaction = mT
    TraceFlags = [tfQExecute]
    Left = 48
    Top = 8
  end
  object qIN: TIBQuery
    Database = dbIS
    Transaction = mT
    Left = 8
    Top = 56
  end
  object dbDOC: TIBDatabase
    Params.Strings = (
      'user_name=bin'
      'password=hourglass'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = dT
    Left = 8
    Top = 464
  end
  object dT: TIBTransaction
    DefaultDatabase = dbDOC
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 8
    Top = 512
  end
  object qD_IN: TIBQuery
    Database = dbDOC
    Transaction = dT
    Left = 48
    Top = 512
  end
  object qR_BODY: TIBQuery
    Database = dbDOC
    Transaction = dT
    SQL.Strings = (
      'select ID_DOC, FILENAME, BODY from DESIGN_DOC'
      'where ID_DOC = :d1')
    Left = 56
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end>
    object qR_BODYID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"WORKDOCS"."ID_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qR_BODYFILENAME: TIBStringField
      FieldName = 'FILENAME'
      Origin = '"WORKDOCS"."FILENAME"'
      Size = 128
    end
    object qR_BODYBODY: TBlobField
      FieldName = 'BODY'
      Origin = '"WORKDOCS"."BODY"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object upBODY: TIBQuery
    Database = dbDOC
    Transaction = dT
    SQL.Strings = (
      'UPDATE DESIGN_DOC SET FILENAME = :f1, '
      'D_CONFIRM = CURRENT_TIMESTAMP, '
      'ID_CONFIRM = :tn, BODY = :b1'
      'where ID_DOC = :d1')
    Left = 96
    Top = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'f1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tn'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'b1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end>
  end
  object cT: TIBTransaction
    DefaultDatabase = C_db
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 216
    Top = 464
  end
  object C_db: TIBDatabase
    Params.Strings = (
      'user_name=BIN'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = cT
    Left = 256
    Top = 464
  end
  object qC_IN: TIBQuery
    Database = C_db
    Transaction = cT
    Left = 216
    Top = 512
  end
  object qOFFER: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from OFFERS'
      '')
    Left = 96
    Top = 8
    object qOFFERID_OFFER: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_OFFER'
      Origin = '"OFFERS"."ID_OFFER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOFFERID_AGENT: TIntegerField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'ID_AGENT'
      Origin = '"OFFERS"."ID_AGENT"'
      Required = True
    end
    object qOFFERID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1084#1084'. '#1087#1088#1077#1076#1083'.'
      FieldName = 'ID_DOC'
      Origin = '"OFFERS"."ID_DOC"'
    end
    object qOFFERDESIGN_DOC: TIntegerField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'DESIGN_DOC'
      Origin = '"OFFERS"."DESIGN_DOC"'
    end
    object qOFFERMOV_DOC: TIntegerField
      DisplayLabel = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
      FieldName = 'MOV_DOC'
      Origin = '"OFFERS"."MOV_DOC"'
    end
    object qOFFERID_DESIGNER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1080#1079'.'
      FieldName = 'ID_DESIGNER'
      Origin = '"OFFERS"."ID_DESIGNER"'
    end
    object qOFFERD_FIX: TDateTimeField
      DisplayLabel = #1055#1086#1076#1096#1080#1074#1082#1072
      FieldName = 'D_FIX'
      Origin = '"OFFERS"."D_FIX"'
    end
    object qOFFERID_FIX: TIntegerField
      DisplayLabel = #1055#1086#1076#1096#1080#1083
      FieldName = 'ID_FIX'
      Origin = '"OFFERS"."ID_FIX"'
    end
    object qOFFERD_EDIT: TDateTimeField
      DisplayLabel = #1048#1079#1084#1077#1085#1077#1085
      FieldName = 'D_EDIT'
      Origin = '"OFFERS"."D_EDIT"'
    end
    object qOFFERID_EDIT: TIntegerField
      DisplayLabel = #1056#1077#1076#1072#1082#1090#1086#1088
      FieldName = 'ID_EDIT'
      Origin = '"OFFERS"."ID_EDIT"'
    end
    object qOFFERID_ORDER: TIntegerField
      DisplayLabel = #1047#1072#1082#1072#1079
      FieldName = 'ID_ORDER'
      Origin = '"OFFERS"."ID_ORDER"'
    end
    object qOFFERID_PRODUCT: TIntegerField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1077
      FieldName = 'ID_PRODUCT'
      Origin = '"OFFERS"."ID_PRODUCT"'
    end
    object qOFFERFTP_DIR: TIBStringField
      FieldName = 'FTP_DIR'
      Origin = '"OFFERS"."FTP_DIR"'
      Size = 40
    end
    object qOFFERfDIS: TStringField
      DisplayLabel = #1044#1080#1079#1072#1081#1085#1077#1088
      FieldKind = fkLookup
      FieldName = 'fDIS'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_DESIGNER'
      Size = 50
      Lookup = True
    end
    object qOFFERCOMMENT: TMemoField
      FieldName = 'COMMENT'
      Origin = '"OFFERS"."COMMENT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOFFERBRIEF: TIBStringField
      DisplayLabel = #1050#1086#1076' '#1073#1088#1080#1092#1072
      FieldName = 'BRIEF'
      Origin = '"OFFERS"."BRIEF"'
      Size = 24
    end
    object qOFFERNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"OFFERS"."NAME"'
      Size = 64
    end
    object qOFFERNUMBER: TIBStringField
      FieldName = 'NUMBER'
      Origin = '"OFFERS"."NUMBER"'
      Size = 16
    end
    object qOFFERD_OUT: TDateField
      FieldName = 'D_OUT'
      Origin = '"OFFERS"."D_OUT"'
    end
    object qOFFERID_MENEGER: TIntegerField
      FieldName = 'ID_MENEGER'
      Origin = '"OFFERS"."ID_MENEGER"'
    end
  end
  object dsOFFER: TDataSource
    DataSet = qOFFER
    Left = 96
    Top = 56
  end
  object qFIO: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_P, FIO  '
      'from PERSONNEL'
      'order by ID_P')
    Left = 192
    Top = 8
    object qFIOID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFIOFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object qOrders: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_ORDER, NUMBER, BRAND from ORDERS'
      'where ID_AGENT = :ag1'
      'order by ID_ORDER')
    Left = 144
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ag1'
        ParamType = ptUnknown
      end>
    object qOrdersID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER'
      Origin = '"ORDERS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdersNUMBER: TIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'NUMBER'
      Origin = '"ORDERS"."NUMBER"'
      Size = 16
    end
    object qOrdersBRAND: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'BRAND'
      Origin = '"ORDERS"."BRAND"'
      Size = 80
    end
  end
  object dsOrders: TDataSource
    DataSet = qOrders
    Left = 144
    Top = 56
  end
  object dsFIO: TDataSource
    DataSet = qFIO
    Left = 192
    Top = 56
  end
  object qBrands: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from BRANDS'
      'order by NAME')
    UpdateObject = upBrands
    GeneratorField.Field = 'ID_BRAND'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 240
    Top = 8
    object qBrandsID_BRAND: TIntegerField
      FieldName = 'ID_BRAND'
      Origin = '"BRANDS"."ID_BRAND"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBrandsNAME: TIBStringField
      DisplayLabel = #1058#1086#1088#1075#1086#1074#1072#1103' '#1084#1072#1088#1082#1072' ('#1073#1088#1101#1085#1076')'
      FieldName = 'NAME'
      Origin = '"BRANDS"."NAME"'
      Size = 32
    end
    object qBrandsID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"BRANDS"."ID_C"'
    end
  end
  object dsBrands: TDataSource
    DataSet = qBrands
    Left = 240
    Top = 56
  end
  object upBrands: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_BRAND,'
      '  NAME,'
      '  ID_C'
      'from BRANDS '
      'where'
      '  ID_BRAND = :ID_BRAND')
    ModifySQL.Strings = (
      'update BRANDS'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID_BRAND = :OLD_ID_BRAND')
    InsertSQL.Strings = (
      'insert into BRANDS'
      '  (ID_BRAND, NAME)'
      'values'
      '  (:ID_BRAND, :NAME)')
    DeleteSQL.Strings = (
      'delete from BRANDS'
      'where'
      '  ID_BRAND = :OLD_ID_BRAND')
    Left = 288
    Top = 8
  end
  object qDOC_TYPE: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterScroll = qDOC_TYPEAfterScroll
    BeforeDelete = qDOC_TYPEBeforeDelete
    OnCalcFields = qDOC_TYPECalcFields
    SQL.Strings = (
      'select *'
      'from PROJ_DOC_TYPES'
      '')
    UpdateObject = upD_TYPE
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
  object qProjects: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from PROJECTS')
    Left = 440
    Top = 8
    object qProjectsID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECTS"."ID_PROJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProjectsID_PROJ_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072
      FieldName = 'ID_PROJ_TYPE'
      Origin = '"PROJECTS"."ID_PROJ_TYPE"'
    end
    object qProjectsBRIEF: TIBStringField
      DisplayLabel = #1050#1086#1076' '#1073#1088#1080#1092#1072
      FieldName = 'BRIEF'
      Origin = '"PROJECTS"."BRIEF"'
      Size = 24
    end
    object qProjectsID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"PROJECTS"."ID_MANAGER"'
    end
    object qProjectsN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1058#1047
      FieldName = 'N_ORDER'
      Origin = '"PROJECTS"."N_ORDER"'
      Size = 16
    end
    object qProjectsID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECTS"."ID_AGENT"'
    end
    object qProjectsID_BRAND: TIntegerField
      FieldName = 'ID_BRAND'
      Origin = '"PROJECTS"."ID_BRAND"'
    end
    object qProjectsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qProjectsSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = '"PROJECTS"."STATUS"'
    end
    object qProjectsDATA: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'DATA'
      Origin = '"PROJECTS"."DATA"'
    end
    object qProjectsnBRAND: TStringField
      DisplayLabel = #1041#1088#1101#1085#1076
      FieldKind = fkLookup
      FieldName = 'nBRAND'
      LookupDataSet = qBrands
      LookupKeyFields = 'ID_BRAND'
      LookupResultField = 'NAME'
      KeyFields = 'ID_BRAND'
      Size = 32
      Lookup = True
    end
    object qProjectsnTYPE: TStringField
      DisplayLabel = #1058#1080#1087
      FieldKind = fkLookup
      FieldName = 'nTYPE'
      LookupDataSet = qPr_Typ
      LookupKeyFields = 'ID_PROJ_TYPE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PROJ_TYPE'
      Size = 32
      Lookup = True
    end
    object qProjectsID_EDIT: TIntegerField
      FieldName = 'ID_EDIT'
      Origin = '"PROJECTS"."ID_EDIT"'
    end
    object qProjectsD_CLOSE: TDateTimeField
      FieldName = 'D_CLOSE'
      Origin = '"PROJECTS"."D_CLOSE"'
    end
    object qProjectsID_CLOSE: TIntegerField
      FieldName = 'ID_CLOSE'
      Origin = '"PROJECTS"."ID_CLOSE"'
    end
  end
  object dsProjects: TDataSource
    DataSet = qProjects
    Left = 440
    Top = 56
  end
  object qAgents: TIBQuery
    Database = C_db
    Transaction = cT
    SQL.Strings = (
      'select * from agents'
      'order by NAME')
    Left = 304
    Top = 464
    object qAgentsID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_AGENT'
      Origin = 'AGENTS.ID_AGENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAgentsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = 'AGENTS.NAME'
      Required = True
      Size = 64
    end
    object qAgentsDESCRIPTION: TIBStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Origin = 'AGENTS.DESCRIPTION'
      Size = 128
    end
  end
  object dsAgents: TDataSource
    DataSet = qAgents
    Left = 296
    Top = 512
  end
  object qManager: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_P, FIO '
      'from PERSONNEL'
      'where  D_DISMISS is null or is_fact = 1'
      'order by FIO ')
    Left = 648
    Top = 8
    object qManagerID_P: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qManagerFIO: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsManager: TDataSource
    DataSet = qManager
    Left = 648
    Top = 56
  end
  object qFreeMan: TIBQuery
    Database = C_db
    Transaction = cT
    SQL.Strings = (
      'select e.id_se_employee, '
      'e.LAST_NAME||'#39' '#39'||e.NAME||'#39' '#39'||e.PATRONYMIC AS FIO,'
      'm.id_manager from se_employees e join managers m'
      'on e.id_se_employee = m.id_employee'
      'order by 2')
    Left = 352
    Top = 464
    object qFreeManID_SE_EMPLOYEE: TIntegerField
      FieldName = 'ID_SE_EMPLOYEE'
      Origin = 'SE_EMPLOYEES.ID_SE_EMPLOYEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFreeManFIO: TIBStringField
      DisplayLabel = #1060'. '#1048'. '#1054'.'
      FieldName = 'FIO'
      ProviderFlags = []
      Size = 767
    end
    object qFreeManID_MANAGER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1084#1077#1085'.'
      FieldName = 'ID_MANAGER'
      Origin = 'MANAGERS.ID_MANAGER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsFreeman: TDataSource
    DataSet = qFreeMan
    Left = 352
    Top = 512
  end
  object qDOC: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterScroll = qDOCAfterScroll
    BeforePost = qDOCBeforePost
    OnCalcFields = qDOCCalcFields
    OnNewRecord = qDOCNewRecord
    SQL.Strings = (
      'select * '
      'from PROJECT_DOCS'
      'where ID_PROJECT = :pr1'
      'order by ID_PROJECT_DOC ')
    UpdateObject = upDOC
    GeneratorField.Field = 'ID_PROJECT_DOC'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 8
    Top = 104
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
    object qDOCfFIX: TStringField
      FieldKind = fkLookup
      FieldName = 'fFIX'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_FIX'
      Size = 50
      Lookup = True
    end
    object qDOCfFILL: TStringField
      FieldKind = fkLookup
      FieldName = 'fFILL'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_FILL'
      Size = 50
      Lookup = True
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
    Left = 8
    Top = 152
  end
  object qDOC_S: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select  S.ID_ROW, S.NAME, S.PARENT, S.STATUS, S.DATA_TYPE,'
      'D.ID_DOC_DATA, D.ROW_SMALVAL, D.ROW_VALUE'
      'from  PROJ_DOC_DATA D right join PROJ_DOC_STRUCTURE S '
      'on S.ID_ROW = D.ID_ROW'
      'where S.DOC_TYPE = :t1 and S.PROJ_TYPE = :pt1'
      'order by S.ID_ROW')
    Left = 56
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 't1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pt1'
        ParamType = ptUnknown
      end>
    object qDOC_SID_ROW: TIntegerField
      FieldName = 'ID_ROW'
      Origin = '"PROJ_DOC_STRUCTURE"."ID_ROW"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qDOC_SNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJ_DOC_STRUCTURE"."NAME"'
      Size = 128
    end
    object qDOC_SPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = '"PROJ_DOC_STRUCTURE"."PARENT"'
    end
    object qDOC_SSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = '"PROJ_DOC_STRUCTURE"."STATUS"'
    end
    object qDOC_SID_DOC_DATA: TIntegerField
      FieldName = 'ID_DOC_DATA'
      Origin = '"PROJ_DOC_DATA"."ID_DOC_DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDOC_SDATA_TYPE: TSmallintField
      FieldName = 'DATA_TYPE'
      Origin = '"PROJ_DOC_STRUCTURE"."DATA_TYPE"'
    end
    object qDOC_SROW_SMALVAL: TFloatField
      FieldName = 'ROW_SMALVAL'
      Origin = '"PROJ_DOC_DATA"."ROW_SMALVAL"'
    end
    object qDOC_SROW_VALUE: TBlobField
      FieldName = 'ROW_VALUE'
      Origin = '"PROJ_DOC_DATA"."ROW_VALUE"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object dsDOC_S: TDataSource
    DataSet = qDOC_S
    Left = 56
    Top = 152
  end
  object qD_DATA: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_ROW, ID_DOC_DATA, ROW_SMALVAL, ROW_VALUE '
      'from PROJ_DOC_DATA'
      'where ID_PROJ_DOC = :d1'
      'order by ID_ROW')
    Left = 104
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end>
    object qD_DATAID_ROW: TIntegerField
      FieldName = 'ID_ROW'
      Origin = '"PROJ_DOC_DATA"."ID_ROW"'
    end
    object qD_DATAID_DOC_DATA: TIntegerField
      FieldName = 'ID_DOC_DATA'
      Origin = '"PROJ_DOC_DATA"."ID_DOC_DATA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qD_DATAROW_SMALVAL: TFloatField
      FieldName = 'ROW_SMALVAL'
      Origin = '"PROJ_DOC_DATA"."ROW_SMALVAL"'
    end
    object qD_DATAROW_VALUE: TBlobField
      FieldName = 'ROW_VALUE'
      Origin = '"PROJ_DOC_DATA"."ROW_VALUE"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object qCOrders: TIBQuery
    Database = C_db
    Transaction = cT
    OnCalcFields = qCOrdersCalcFields
    SQL.Strings = (
      'select  *'
      'from ORDERS'
      'where ID_ORDERTYPE IN (5,6,8)'
      'and D_PROD >=:d1 and D_PROD < :d2'
      'order by ID_ORDERTYPE, ID_ORDER')
    Left = 408
    Top = 464
    ParamData = <
      item
        DataType = ftDate
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object qOrdersnPTYPE: TStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      DisplayWidth = 32
      FieldKind = fkLookup
      FieldName = 'nPTYPE'
      LookupDataSet = qPTYPES
      LookupKeyFields = 'ID_PTYPE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PTYPE'
      Size = 32
      Lookup = True
    end
    object qCOrdersID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = 'ORDERS.ID_ORDER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCOrdersID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
      Origin = 'ORDERS.ID_TERMINAL'
      Required = True
    end
    object qCOrdersID_ORDERTYPE: TIntegerField
      FieldName = 'ID_ORDERTYPE'
      Origin = 'ORDERS.ID_ORDERTYPE'
      Required = True
    end
    object qCOrdersID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = 'ORDERS.ID_AGENT'
      Required = True
    end
    object qCOrdersID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = 'ORDERS.ID_MANAGER'
      Required = True
    end
    object qCOrdersD_PERFORM: TDateTimeField
      FieldName = 'D_PERFORM'
      Origin = 'ORDERS.D_PERFORM'
    end
    object qCOrdersNUMBER: TIBStringField
      FieldName = 'NUMBER'
      Origin = 'ORDERS.NUMBER'
      Required = True
      Size = 16
    end
    object qCOrdersTECHNOLOGY: TIBStringField
      FieldName = 'TECHNOLOGY'
      Origin = 'ORDERS.TECHNOLOGY'
      Size = 32
    end
    object qCOrdersBRAND: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'BRAND'
      Origin = 'ORDERS.BRAND'
      Required = True
      Size = 80
    end
    object qCOrdersAMOUNT: TIntegerField
      FieldName = 'AMOUNT'
      Origin = 'ORDERS.AMOUNT'
      Required = True
    end
    object qCOrdersPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'ORDERS.PRICE'
      Required = True
    end
    object qCOrdersPRICEA: TFloatField
      FieldName = 'PRICEA'
      Origin = 'ORDERS.PRICEA'
      Required = True
    end
    object qCOrdersD_CONFIRM: TDateTimeField
      FieldName = 'D_CONFIRM'
      Origin = 'ORDERS.D_CONFIRM'
    end
    object qCOrdersD_PROJECT: TDateTimeField
      FieldName = 'D_PROJECT'
      Origin = 'ORDERS.D_PROJECT'
      Required = True
    end
    object qCOrdersD_CENTER: TDateTimeField
      FieldName = 'D_CENTER'
      Origin = 'ORDERS.D_CENTER'
    end
    object qCOrdersD_PROD: TDateTimeField
      FieldName = 'D_PROD'
      Origin = 'ORDERS.D_PROD'
    end
    object qCOrdersD_ACCEPT: TDateTimeField
      FieldName = 'D_ACCEPT'
      Origin = 'ORDERS.D_ACCEPT'
    end
    object qCOrdersD_REJECT: TDateTimeField
      FieldName = 'D_REJECT'
      Origin = 'ORDERS.D_REJECT'
    end
    object qCOrdersD_INTREADY: TDateTimeField
      FieldName = 'D_INTREADY'
      Origin = 'ORDERS.D_INTREADY'
    end
    object qCOrdersID_ACCEPTOR: TIntegerField
      FieldName = 'ID_ACCEPTOR'
      Origin = 'ORDERS.ID_ACCEPTOR'
    end
    object qCOrdersID_REJECTOR: TIntegerField
      FieldName = 'ID_REJECTOR'
      Origin = 'ORDERS.ID_REJECTOR'
    end
    object qCOrdersREJECT: TIBStringField
      FieldName = 'REJECT'
      Origin = 'ORDERS.REJECT'
      Size = 64
    end
    object qCOrdersSHIPPED: TIntegerField
      FieldName = 'SHIPPED'
      Origin = 'ORDERS.SHIPPED'
    end
    object qCOrdersD_TRANSFER: TDateTimeField
      FieldName = 'D_TRANSFER'
      Origin = 'ORDERS.D_TRANSFER'
    end
    object qCOrdersID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = 'ORDERS.ID_PTYPE'
      Required = True
    end
    object qCOrdersPRINTED: TIntegerField
      FieldName = 'PRINTED'
      Origin = 'ORDERS.PRINTED'
    end
    object qCOrdersPAYMENT1C: TFloatField
      FieldName = 'PAYMENT1C'
      Origin = 'ORDERS.PAYMENT1C'
    end
    object qCOrdersDC_CONFIRM: TDateTimeField
      FieldName = 'DC_CONFIRM'
      Origin = 'ORDERS.DC_CONFIRM'
    end
    object qCOrdersID_CMANAGER: TIntegerField
      FieldName = 'ID_CMANAGER'
      Origin = 'ORDERS.ID_CMANAGER'
    end
    object qCOrdersID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ORDERS.ID_PROD'
    end
    object qCOrdersID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = 'ORDERS.ID_CURRENCY'
      Required = True
    end
    object qCOrdersD_READY: TDateTimeField
      FieldName = 'D_READY'
      Origin = 'ORDERS.D_READY'
    end
    object qCOrdersID_DESIGNER: TIntegerField
      FieldName = 'ID_DESIGNER'
      Origin = 'ORDERS.ID_DESIGNER'
    end
    object qCOrdersD_DESIGNER: TDateTimeField
      FieldName = 'D_DESIGNER'
      Origin = 'ORDERS.D_DESIGNER'
    end
    object qCOrdersRej: TStringField
      FieldKind = fkCalculated
      FieldName = 'Rej'
      Size = 1
      Calculated = True
    end
  end
  object dsCOrders: TDataSource
    DataSet = qCOrders
    Left = 408
    Top = 512
  end
  object qPTYPES: TIBQuery
    Database = C_db
    Transaction = cT
    SQL.Strings = (
      'select * from PTYPES'
      'order by ID_PTYPE')
    Left = 464
    Top = 464
    object qPTYPESID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = 'PTYPES.ID_PTYPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPTYPESNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PTYPES.NAME'
      Size = 32
    end
    object qPTYPESID_ORDERTYPE: TIntegerField
      FieldName = 'ID_ORDERTYPE'
      Origin = 'PTYPES.ID_ORDERTYPE'
      Required = True
    end
  end
  object dsPTYPE: TDataSource
    DataSet = qPTYPES
    Left = 464
    Top = 512
  end
  object qPr_Typ: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from PROJ_TYPES'
      'order by ID_PROJ_TYPE')
    Left = 496
    Top = 8
    object qPr_TypID_PROJ_TYPE: TIntegerField
      FieldName = 'ID_PROJ_TYPE'
      Origin = '"PROJ_TYPES"."ID_PROJ_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPr_TypNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJ_TYPES"."NAME"'
      Size = 40
    end
  end
  object dsPr_Typ: TDataSource
    DataSet = qPr_Typ
    Left = 496
    Top = 56
  end
  object qCliPrj: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterScroll = qCliPrjAfterScroll
    SQL.Strings = (
      'select B.ID, I.NAME, count(P.ID_PROJECT) as CP'
      'from (BR_ITEMS(13,0) B left join PROJECTS P'
      'on P.ID_AGENT = B.ID) '
      'join ITEMS I on I.ID_ITEM = B.ID'
      'group by B.ID, I.NAME')
    Left = 552
    Top = 8
    object qCliPrjID: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID'
      ProviderFlags = []
    end
    object qCliPrjNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 128
    end
    object qCliPrjCP: TIntegerField
      DisplayLabel = #1055#1088#1086#1077#1082#1090#1086#1074
      FieldName = 'CP'
      ProviderFlags = []
    end
  end
  object dsCliPrj: TDataSource
    DataSet = qCliPrj
    Left = 552
    Top = 56
  end
  object qPrj: TIBQuery
    Database = dbIS
    Transaction = mT
    OnCalcFields = qPrjCalcFields
    DataSource = dsCliPrj
    SQL.Strings = (
      
        'select p.* , b.name bname, r.fio manager, n.fio designer, c.name' +
        ' ncurr'
      'from projects p left join brands b'
      'on b.id_brand = p.id_brand'
      'left join personnel r on r.id_p = p.id_manager'
      'left join personnel n on n.id_p = p.id_designer'
      'left join currency c on c.id_currency = p.currency'
      'where P.id_agent = :ID and P.d_close is null')
    Left = 600
    Top = 8
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
    object qPrjnTYPE: TStringField
      DisplayLabel = #1058#1080#1087
      FieldKind = fkLookup
      FieldName = 'nTYPE'
      LookupDataSet = qPr_Typ
      LookupKeyFields = 'ID_PROJ_TYPE'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PROJ_TYPE'
      Size = 32
      Lookup = True
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
    object qPrjfILL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'fILL'
      Size = 1
      Calculated = True
    end
    object qPrjfIX: TStringField
      DisplayLabel = #1059#1090#1074#1077#1088#1076#1080#1083
      FieldKind = fkLookup
      FieldName = 'fIX'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_FIX'
      Size = 50
      Lookup = True
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
    object qPrjdACCEPTOR: TStringField
      DisplayLabel = #1055#1088#1080#1085#1103#1083' '#1074' '#1076#1080#1079#1072#1081#1085
      FieldKind = fkLookup
      FieldName = 'dACCEPTOR'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_DACCEPTOR'
      Size = 50
      Lookup = True
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
    object qPrjNCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
  end
  object dsPrj: TDataSource
    DataSet = qPrj
    Left = 600
    Top = 56
  end
  object qPrjPlan: TIBQuery
    Database = dbIS
    Transaction = mT
    BeforePost = qPrjPlanBeforePost
    OnNewRecord = qPrjPlanNewRecord
    DataSource = dsPrj
    SQL.Strings = (
      'select P.*, E.NAME, T.STEP, T.ID_P, T.STATUS '
      'from (PROJECT_PLAN P join PROJECT_TRAFF T'
      'on P.ID_PROJ_TRAFF = T.ID_PROJ_TRAFF) join PROJ_EVENTS E'
      'on E.ID_PROJ_EVENT = T.ID_PROJ_EVENT'
      'where P.ID_PROJECT = :ID_PROJECT'
      'order by T.STEP')
    Left = 160
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PROJECT'
        ParamType = ptUnknown
      end>
    object qPrjPlanID_PROJ_PLAN: TIntegerField
      FieldName = 'ID_PROJ_PLAN'
      Origin = '"PROJECT_PLAN"."ID_PROJ_PLAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrjPlanID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_PLAN"."ID_PROJECT"'
    end
    object qPrjPlanID_PROJ_TRAFF: TIntegerField
      FieldName = 'ID_PROJ_TRAFF'
      Origin = '"PROJECT_PLAN"."ID_PROJ_TRAFF"'
    end
    object qPrjPlanDIN: TDateTimeField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'DIN'
      Origin = '"PROJECT_PLAN"."DIN"'
    end
    object qPrjPlanDOUT: TDateTimeField
      DisplayLabel = #1054#1082#1086#1085#1095#1072#1085#1080#1077
      FieldName = 'DOUT'
      Origin = '"PROJECT_PLAN"."DOUT"'
    end
    object qPrjPlanID_RESP: TIntegerField
      FieldName = 'ID_RESP'
      Origin = '"PROJECT_PLAN"."ID_RESP"'
    end
    object qPrjPlanD_PLAN: TDateTimeField
      FieldName = 'D_PLAN'
      Origin = '"PROJECT_PLAN"."D_PLAN"'
    end
    object qPrjPlanID_PLAN: TIntegerField
      FieldName = 'ID_PLAN'
      Origin = '"PROJECT_PLAN"."ID_PLAN"'
    end
    object qPrjPlanD_FACT: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1086
      FieldName = 'D_FACT'
      Origin = '"PROJECT_PLAN"."D_FACT"'
    end
    object qPrjPlanID_FACT: TIntegerField
      FieldName = 'ID_FACT'
      Origin = '"PROJECT_PLAN"."ID_FACT"'
    end
    object qPrjPlanNAME: TIBStringField
      DisplayLabel = #1069#1090#1072#1087
      FieldName = 'NAME'
      Origin = '"PROJ_EVENTS"."NAME"'
      Size = 128
    end
    object qPrjPlanID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PROJECT_TRAFF"."ID_P"'
    end
    object qPrjPlanSTEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'STEP'
      Origin = '"PROJECT_TRAFF"."STEP"'
    end
    object qPrjPlannRESP: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
      FieldKind = fkLookup
      FieldName = 'nRESP'
      LookupDataSet = qRESP
      LookupKeyFields = 'ID_PROJ_TRAFF'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PROJ_TRAFF'
      Size = 64
      Lookup = True
    end
    object qPrjPlanSTATUS: TIntegerField
      DisplayLabel = #1058#1080#1087'. '#1089#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_TRAFF"."STATUS"'
    end
  end
  object dsPrjPlan: TDataSource
    DataSet = qPrjPlan
    Left = 160
    Top = 152
  end
  object qRESP: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select  T.ID_PROJ_TRAFF, P.NAME'
      'from PROJECT_TRAFF T left join POST P'
      'on P.IDPOST = T.ID_P'
      'order by T.ID_P')
    Left = 208
    Top = 152
    object qRESPID_PROJ_TRAFF: TIntegerField
      FieldName = 'ID_PROJ_TRAFF'
      Origin = '"PROJECT_TRAFF"."ID_PROJ_TRAFF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qRESPNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
  end
  object upPrjPlan: TIBUpdateSQL
    RefreshSQL.Strings = (
      'select P.*, E.NAME, T.STEP, T.ID_P '
      'from (PROJECT_PLAN P join PROJECT_TRAFF T'
      'on P.ID_PROJ_TRAFF = T.ID_PROJ_TRAFF) join PROJ_EVENTS E'
      'on E.ID_PROJ_EVENT = T.ID_PROJ_EVENT'
      'where P.ID_PROJECT = :ID_PROJECT'
      'order by T.STEP')
    ModifySQL.Strings = (
      'update PROJECT_PLAN'
      'set'
      '  DIN = :DIN,'
      '  DOUT = :DOUT,'
      '  D_PLAN = CURRENT_TIMESTAMP,'
      '  ID_PLAN = :ID_PLAN'
      'where'
      '  ID_PROJ_PLAN = :OLD_ID_PROJ_PLAN')
    InsertSQL.Strings = (
      'insert into PROJECT_PLAN'
      '  (DIN, DOUT)'
      'values'
      '  (:DIN, :DOUT)')
    DeleteSQL.Strings = (
      'delete from PROJECT_PLAN'
      'where'
      '  ID_PROJ_PLAN = :OLD_ID_PROJ_PLAN')
    Left = 208
    Top = 104
  end
  object qFreeTraff: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select T.ID_PROJ_TRAFF, E.NAME '
      'from PROJECT_TRAFF T join PROJ_EVENTS E'
      'on E.ID_PROJ_EVENT = T.ID_PROJ_EVENT'
      'where T.PROJ_TYPE = :ID_PROJ_TYPE and '
      'T.ID_PROJ_TRAFF not IN'
      '(SELECT ID_PROJ_TRAFF FROM PROJECT_PLAN'
      'where ID_PROJECT = :ID_PROJECT)  '
      'order by T.ID_PROJ_TRAFF ')
    Left = 264
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PROJ_TYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PROJECT'
        ParamType = ptUnknown
      end>
    object qFreeTraffID_PROJ_TRAFF: TIntegerField
      FieldName = 'ID_PROJ_TRAFF'
      Origin = '"PROJECT_TRAFF"."ID_PROJ_TRAFF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFreeTraffNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJ_EVENTS"."NAME"'
      Size = 128
    end
  end
  object dsFTraff: TDataSource
    DataSet = qFreeTraff
    Left = 264
    Top = 152
  end
  object qP_ORDS: TIBQuery
    Database = dbIS
    Transaction = mT
    OnCalcFields = qP_ORDSCalcFields
    SQL.Strings = (
      
        'select P.*, i.name agent, pt.name nptype, a.name nprod, cu.name ' +
        'ncurr,'
      'case when p.status > 9 then '#39'*'#39' else '#39#39' end fill, '
      'case'
      ' when p.status = 0  then '#39#1053#1086#1074#1099#1081#39' else'
      'case when p.status =10  then '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084#39' else'
      'case when p.status =20  then '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1077#1084#39' else'
      'case when p.status =30  then '#39#1055#1086#1083#1091#1095#1077#1085' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086#1084#39' else'
      'case when p.status =40  then '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085' '#1074' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086#39' else'
      'case when p.status =45  then'#39#1055#1088#1080#1085#1103#1090' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088#1086#1084#39' else'
      'case when p.status =50  then '#39#1056#1072#1079#1088#1072#1073#1086#1090#1072#1085#1072' '#1090#1077#1093#1085#1086#1083#1086#1075#1080#1103#39' else'
      'case when p.status =60  then '#39#1058#1077#1093#1085#1086#1083#1086#1075#1080#1103' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1072#39' else'
      'case when p.status =70  then'#39#1055#1088#1080#1085#1103#1090' '#1074' '#1080#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1077#39' else'
      'case when p.status =100 then '#39#1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1080#1077' '#1079#1072#1074#1077#1088#1096#1077#1085#1086#39' else'
      'case when p.status =110 then'#39#1042#1099#1074#1077#1079#1077#1085' '#1087#1086#1083#1085#1086#1089#1090#1100#1102#39' else'
      'case when p.status =120 then '#39#1055#1086#1083#1091#1095#1077#1085' '#1079#1072#1082#1072#1079#1095#1080#1082#1086#1084#39' else'
      'case when p.status =200 then'#39#1054#1090#1082#1083#1086#1085#1077#1085#39
      'end end end end end end end end end end end end end nSTAT'
      
        ',r.name ndoc,d.dog_number,d.dog_number_, d.dog_date_in, k.name o' +
        'rdkind,'
      
        'coalesce((p.price - p.delivery_sum)/(select e.total_sum from est' +
        'imates e where e.id_estimate = p.id_estimate),0) NACH,'
      '(select ii.name || '#39'['#1102#1088'.'#1083#1080#1094#1086' <'#39' || u.name  || '#39'>]'#39' nm'
      'from uragents u join items_uragents i on u.inn = i.inn'
      'join items ii on ii.id_item = p.is_self) name_ur'
      'from PROJECT_ORDS P left'
      'join items i on i.id_item = p.id_agent'
      'left join ptypes pt on pt.id_ptype = p.id_cptype'
      
        'left join prod_areas a on a.id_p_area = p.id_cprod and a.id_paty' +
        'pe = 1'
      'left join currency cu on cu.id_currency = p.id_currency'
      'left join project_docs r on r.id_project_doc = p.id_doc'
      'left join dogovor d on d.id_dogovor = p.id_dogovor'
      'left join order_kinds k on k.id_ord_kind = p.ord_kind'
      'where P.ID_PROJECT = :pr1'
      '')
    GeneratorField.Field = 'ID_ORDER'
    GeneratorField.Generator = 'ORDER_ID'
    Left = 320
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pr1'
        ParamType = ptUnknown
      end>
    object qP_ORDSID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1058#1047
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qP_ORDSID_PROJECT: TIntegerField
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qP_ORDSNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qP_ORDSAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qP_ORDSSHIPPED: TIBBCDField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086
      FieldName = 'SHIPPED'
      Origin = '"PROJECT_ORDS"."SHIPPED"'
      Precision = 18
      Size = 4
    end
    object qP_ORDSID_PRODUCT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qP_ORDSD_CONSTR: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1089#1086#1085#1089#1090#1088'.'
      FieldName = 'D_CONSTR'
      Origin = '"PROJECT_ORDS"."D_CONSTR"'
    end
    object qP_ORDSID_CONSTR: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1089#1090#1088'.'
      FieldName = 'ID_CONSTR'
      Origin = '"PROJECT_ORDS"."ID_CONSTR"'
    end
    object qP_ORDSID_PA_OUT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1099#1087'. '#1091#1095#1072#1089#1090#1082#1072
      FieldName = 'ID_PA_OUT'
      Origin = '"PROJECT_ORDS"."ID_PA_OUT"'
    end
    object qP_ORDSSD_SUMMA: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1089#1076#1077#1083#1082#1080
      FieldName = 'SD_SUMMA'
      Origin = '"PROJECT_ORDS"."SD_SUMMA"'
      Precision = 18
      Size = 4
    end
    object qP_ORDSD_READY: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080' '
      FieldName = 'D_READY'
      Origin = '"PROJECT_ORDS"."D_READY"'
    end
    object qP_ORDSN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1058#1047
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qP_ORDSID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS"."ID_C"'
    end
    object qP_ORDSSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_ORDS"."STATUS"'
    end
    object qP_ORDSD_OPEN: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1082#1088'.'
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qP_ORDSID_OPEN: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1090#1082#1088'.'
      FieldName = 'ID_OPEN'
      Origin = '"PROJECT_ORDS"."ID_OPEN"'
    end
    object qP_ORDSD_CLOSE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1088#1099#1090#1080#1103
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qP_ORDSID_CLOSE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1088'.'
      FieldName = 'ID_CLOSE'
      Origin = '"PROJECT_ORDS"."ID_CLOSE"'
    end
    object qP_ORDSD_FIX: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1076#1096#1080#1074#1082#1080
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS"."D_FIX"'
    end
    object qP_ORDSID_FIX: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1086#1076#1096'.'
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS"."ID_FIX"'
    end
    object qP_ORDSID_DOC: TIntegerField
      DisplayLabel = #1044#1086#1082'-'#1090
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object qP_ORDSfOPEN: TStringField
      FieldKind = fkLookup
      FieldName = 'fOPEN'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_OPEN'
      Size = 50
      Lookup = True
    end
    object qP_ORDSfCONSTR: TStringField
      FieldKind = fkLookup
      FieldName = 'fCONSTR'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_CONSTR'
      Size = 50
      Lookup = True
    end
    object qP_ORDSPRICE: TIBBCDField
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      Precision = 18
      Size = 4
    end
    object qP_ORDSPRICEA: TIBBCDField
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qP_ORDSID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS"."ID_CURRENCY"'
    end
    object qP_ORDSID_CPTYPE: TIntegerField
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object qP_ORDSID_CPROD: TIntegerField
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object qP_ORDSID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qP_ORDSID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
    object qP_ORDSF_CONSTR: TDateTimeField
      FieldName = 'F_CONSTR'
      Origin = '"PROJECT_ORDS"."F_CONSTR"'
    end
    object qP_ORDSID_ESTIMATE: TIntegerField
      DisplayLabel = #1057#1084#1077#1090#1072
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS"."ID_ESTIMATE"'
    end
    object qP_ORDSAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qP_ORDSNPTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NPTYPE'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qP_ORDSNPROD: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'NPROD'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qP_ORDSNCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qP_ORDSD_REJECT: TDateTimeField
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qP_ORDSID_REJECTOR: TIntegerField
      FieldName = 'ID_REJECTOR'
      Origin = '"PROJECT_ORDS"."ID_REJECTOR"'
    end
    object qP_ORDSID_CHIEF: TIntegerField
      FieldName = 'ID_CHIEF'
      Origin = '"PROJECT_ORDS"."ID_CHIEF"'
    end
    object qP_ORDSREM: TMemoField
      FieldName = 'REM'
      Origin = '"PROJECT_ORDS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qP_ORDSIS_CHARGE: TIntegerField
      FieldName = 'IS_CHARGE'
      Origin = '"PROJECT_ORDS"."IS_CHARGE"'
    end
    object qP_ORDSIS_OS: TIntegerField
      FieldName = 'IS_OS'
    end
    object qP_ORDSSHIP: TFloatField
      FieldName = 'SHIP'
      Origin = '"PROJECT_ORDS"."SHIP"'
    end
    object qP_ORDSFILL: TIBStringField
      DisplayLabel = '*'
      FieldName = 'FILL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qP_ORDSNSTAT: TIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'NSTAT'
      ProviderFlags = []
      FixedChar = True
      Size = 24
    end
    object qP_ORDSNDOC: TIBStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NDOC'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qP_ORDSID_DOGOVOR: TIntegerField
      FieldName = 'ID_DOGOVOR'
      Origin = '"PROJECT_ORDS"."ID_DOGOVOR"'
    end
    object qP_ORDSDOG_NUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1075'. '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1081
      FieldName = 'DOG_NUMBER'
      Origin = '"DOGOVOR"."DOG_NUMBER"'
      Size = 16
    end
    object qP_ORDSDOG_NUMBER_: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1075'. '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'DOG_NUMBER_'
      Origin = '"DOGOVOR"."DOG_NUMBER_"'
      Size = 32
    end
    object qP_ORDSDOG_DATE_IN: TDateField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'DOG_DATE_IN'
      Origin = '"DOGOVOR"."DOG_DATE_IN"'
    end
    object qP_ORDSDELIVERY_SUM: TFloatField
      FieldName = 'DELIVERY_SUM'
      Origin = '"PROJECT_ORDS"."DELIVERY_SUM"'
    end
    object qP_ORDSORD_KIND: TIntegerField
      FieldName = 'ORD_KIND'
      Origin = '"PROJECT_ORDS"."ORD_KIND"'
    end
    object qP_ORDSORDKIND: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ORDKIND'
      Origin = '"ORDER_KINDS"."NAME"'
      Size = 32
    end
    object qP_ORDSIS_SELF: TIntegerField
      FieldName = 'IS_SELF'
      Origin = '"PROJECT_ORDS"."IS_SELF"'
    end
    object qP_ORDSNAME_UR: TIBStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      FieldName = 'NAME_UR'
      ProviderFlags = []
      Size = 268
    end
    object qP_ORDSNACH: TFloatField
      DisplayLabel = #1053#1072#1094#1077#1085#1082#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
      FieldName = 'NACH'
      ProviderFlags = []
    end
  end
  object dsP_ORDS: TDataSource
    DataSet = qP_ORDS
    Left = 320
    Top = 152
  end
  object qP_TYPE: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from PROJ_TYPES'
      'order by ID_PROJ_TYPE')
    UpdateObject = upP_TYPE
    Left = 376
    Top = 104
    object qP_TYPEID_PROJ_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJ_TYPE'
      Origin = '"PROJ_TYPES"."ID_PROJ_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qP_TYPENAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJ_TYPES"."NAME"'
      Size = 40
    end
  end
  object qP_EVENT: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_PROJ_EVENT, NAME from PROJ_EVENTS'
      'order by ID_PROJ_EVENT')
    UpdateObject = upP_EVENT
    Left = 504
    Top = 104
    object qP_EVENTID_PROJ_EVENT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJ_EVENT'
      Origin = '"PROJ_EVENTS"."ID_PROJ_EVENT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qP_EVENTNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJ_EVENTS"."NAME"'
      Size = 128
    end
  end
  object upP_TYPE: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PROJ_TYPE,'
      '  NAME'
      'from PROJ_TYPES '
      'where'
      '  ID_PROJ_TYPE = :ID_PROJ_TYPE')
    ModifySQL.Strings = (
      'update PROJ_TYPES'
      'set'
      '  ID_PROJ_TYPE = :ID_PROJ_TYPE,'
      '  NAME = :NAME'
      'where'
      '  ID_PROJ_TYPE = :OLD_ID_PROJ_TYPE')
    InsertSQL.Strings = (
      'insert into PROJ_TYPES'
      '  (ID_PROJ_TYPE, NAME)'
      'values'
      '  (:ID_PROJ_TYPE, :NAME)')
    DeleteSQL.Strings = (
      'delete from PROJ_TYPES'
      'where'
      '  ID_PROJ_TYPE = :OLD_ID_PROJ_TYPE')
    Left = 440
    Top = 104
  end
  object upP_EVENT: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PROJ_EVENT,'
      '  NAME,'
      '  STATUS'
      'from PROJ_EVENTS '
      'where'
      '  ID_PROJ_EVENT = :ID_PROJ_EVENT')
    ModifySQL.Strings = (
      'update PROJ_EVENTS'
      'set'
      '  ID_PROJ_EVENT = :ID_PROJ_EVENT,'
      '  NAME = :NAME'
      'where'
      '  ID_PROJ_EVENT = :OLD_ID_PROJ_EVENT')
    InsertSQL.Strings = (
      'insert into PROJ_EVENTS'
      '  (ID_PROJ_EVENT, NAME)'
      'values'
      '  (:ID_PROJ_EVENT, :NAME)')
    DeleteSQL.Strings = (
      'delete from PROJ_EVENTS'
      'where'
      '  ID_PROJ_EVENT = :OLD_ID_PROJ_EVENT')
    Left = 440
    Top = 152
  end
  object dsP_TYPE: TDataSource
    DataSet = qP_TYPE
    Left = 376
    Top = 152
  end
  object dsP_EVENT: TDataSource
    DataSet = qP_EVENT
    Left = 504
    Top = 152
  end
  object qProjTraff: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsP_TYPE
    SQL.Strings = (
      'select * from PROJECT_TRAFF'
      'where PROJ_TYPE = :ID_PROJ_TYPE'
      'order by STEP')
    UpdateObject = upPrj_Traff
    GeneratorField.Field = 'ID_PROJ_TRAFF'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 568
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PROJ_TYPE'
        ParamType = ptUnknown
        Size = 4
      end>
    object qProjTraffID_PROJ_TRAFF: TIntegerField
      FieldName = 'ID_PROJ_TRAFF'
      Origin = '"PROJECT_TRAFF"."ID_PROJ_TRAFF"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProjTraffID_PROJ_EVENT: TIntegerField
      FieldName = 'ID_PROJ_EVENT'
      Origin = '"PROJECT_TRAFF"."ID_PROJ_EVENT"'
    end
    object qProjTraffSTEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'STEP'
      Origin = '"PROJECT_TRAFF"."STEP"'
    end
    object qProjTraffnEVENT: TStringField
      DisplayLabel = #1069#1090#1072#1087
      FieldKind = fkLookup
      FieldName = 'nEVENT'
      LookupDataSet = qP_EVENT
      LookupKeyFields = 'ID_PROJ_EVENT'
      LookupResultField = 'NAME'
      KeyFields = 'ID_PROJ_EVENT'
      Size = 128
      Lookup = True
    end
    object qProjTraffID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PROJECT_TRAFF"."ID_P"'
    end
    object qProjTraffnPOST: TStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
      FieldKind = fkLookup
      FieldName = 'nPOST'
      LookupDataSet = qPST
      LookupKeyFields = 'IDPOST'
      LookupResultField = 'NAME'
      KeyFields = 'ID_P'
      Size = 50
      Lookup = True
    end
    object qProjTraffPROJ_TYPE: TIntegerField
      FieldName = 'PROJ_TYPE'
      Origin = '"PROJECT_TRAFF"."PROJ_TYPE"'
    end
    object qProjTraffSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_TRAFF"."STATUS"'
    end
  end
  object dsProjTraff: TDataSource
    DataSet = qProjTraff
    Left = 568
    Top = 152
  end
  object upPrj_Traff: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from PROJECT_TRAFF'
      'where PROJ_TYPE = :ID_PROJ_TYPE '
      'order by STEP')
    ModifySQL.Strings = (
      'update PROJECT_TRAFF'
      'set'
      '  ID_PROJ_EVENT = :ID_PROJ_EVENT,'
      '  STEP = :STEP,'
      '  ID_P = :ID_P,'
      '  STATUS = :STATUS'
      'where'
      '  ID_PROJ_TRAFF = :OLD_ID_PROJ_TRAFF')
    InsertSQL.Strings = (
      'insert into PROJECT_TRAFF'
      '  (ID_PROJ_TRAFF, ID_PROJ_EVENT, STEP, ID_P, PROJ_TYPE, STATUS)'
      'values'
      
        '  (:ID_PROJ_TRAFF, :ID_PROJ_EVENT, :STEP, :ID_P, :PROJ_TYPE, :ST' +
        'ATUS)')
    DeleteSQL.Strings = (
      'delete from PROJECT_TRAFF'
      'where'
      '  ID_PROJ_TRAFF = :OLD_ID_PROJ_TRAFF')
    Left = 632
    Top = 104
  end
  object qPST: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select IDPOST, NAME '
      'from POST'
      'where ARCH is null'
      'order by NAME')
    Left = 696
    Top = 8
    object qPSTIDPOST: TIntegerField
      FieldName = 'IDPOST'
      Origin = '"POST"."IDPOST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPSTNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
  end
  object upDOC: TIBUpdateSQL
    RefreshSQL.Strings = (
      'select * '
      'from PROJECT_DOCS'
      'where ID_PROJECT = :pr1'
      'order by ID_PROJECT, DOC_TYPE ')
    ModifySQL.Strings = (
      'update PROJECT_DOCS'
      'set'
      '  D_DOC = :D_DOC,'
      '  DOC_TYPE = :DOC_TYPE,'
      '  NAME = :NAME,'
      '  NUMBER = :NUMBER,'
      '  D_FIX = CURRENT_TIMESTAMP,'
      '  ID_FIX = :ID_FIX'
      'where'
      '  ID_PROJECT_DOC = :OLD_ID_PROJECT_DOC')
    InsertSQL.Strings = (
      'insert into PROJECT_DOCS'
      '  (ID_PROJECT_DOC, ID_PROJECT, D_DOC, DOC_TYPE, NAME, NUMBER,'
      '   D_FIX, ID_FIX, STATUS)'
      'values'
      '  (:ID_PROJECT_DOC, :ID_PROJECT, :D_DOC, :DOC_TYPE, :NAME, '
      '   :NUMBER, CURRENT_TIMESTAMP, :ID_FIX, :STATUS)')
    DeleteSQL.Strings = (
      'delete from PROJECT_DOCS'
      'where'
      '  ID_PROJECT_DOC = :OLD_ID_PROJECT_DOC')
    Left = 104
    Top = 152
  end
  object upD_TYPE: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PROJ_DOC_TYPE,'
      '  IS_STRUCTURED,'
      '  NAME'
      'from PROJ_DOC_TYPES ')
    ModifySQL.Strings = (
      'update PROJ_DOC_TYPES'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID_PROJ_DOC_TYPE = :OLD_ID_PROJ_DOC_TYPE')
    InsertSQL.Strings = (
      'insert into PROJ_DOC_TYPES'
      '  (ID_PROJ_DOC_TYPE, IS_STRUCTURED, NAME)'
      'values'
      '  (:ID_PROJ_DOC_TYPE, :IS_STRUCTURED, :NAME)')
    DeleteSQL.Strings = (
      'delete from PROJ_DOC_TYPES'
      'where'
      '  ID_PROJ_DOC_TYPE = :OLD_ID_PROJ_DOC_TYPE')
    Left = 304
    Top = 56
  end
  object upP_ORDS: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ORDER,'
      '  ID_PROJECT,'
      '  NAME,'
      '  AMOUNT,'
      '  SHIPPED,'
      '  ID_PRODUCT,'
      '  D_CONSTR,'
      '  ID_CONSTR,'
      '  ID_PA_OUT,'
      '  SD_SUMMA,'
      '  D_READY,'
      '  N_ORDER,'
      '  ID_C,'
      '  STATUS,'
      '  D_OPEN,'
      '  ID_OPEN,'
      '  D_CLOSE,'
      '  ID_CLOSE,'
      '  D_FIX,'
      '  ID_FIX'
      'from PROJECT_ORDS '
      'where'
      '  ID_ORDER = :ID_ORDER')
    ModifySQL.Strings = (
      'update PROJECT_ORDS'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  D_OPEN = :D_OPEN,'
      '  NAME = :NAME,  '
      '  D_FIX = CURRENT_TIMESTAMP,'
      '  ID_FIX = :ID_FIX,'
      '  ID_DOC = :ID_DOC'
      'where'
      '  ID_ORDER = :OLD_ID_ORDER')
    InsertSQL.Strings = (
      'insert into PROJECT_ORDS'
      '  (ID_ORDER, ID_PROJECT, AMOUNT, D_OPEN, NAME, ID_OPEN,'
      '   D_FIX, ID_FIX, ID_AGENT)'
      'values'
      '  (:ID_ORDER, :ID_PROJECT, :AMOUNT, :D_OPEN, :NAME, :ID_OPEN,'
      '    CURRENT_TIMESTAMP, :ID_FIX, :ID_AGENT)')
    DeleteSQL.Strings = (
      'delete from PROJECT_ORDS'
      'where'
      '  ID_ORDER = :OLD_ID_ORDER')
    Left = 632
    Top = 152
  end
  object qVER: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select distinct P.ID_OBJECT, V.*'
      'from PRODUCT_OBJECTS P join PRODUCT_VERSIONS V'
      'on V.ID_VERSION = P.ID_VERSION and V.STATUS > 20'
      'where P.ID_ORDER = :ord1 and P.ID_PARENT = 0 AND'
      'P.ID_PRODUCT = :prd1')
    Left = 688
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ord1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'prd1'
        ParamType = ptUnknown
      end>
    object qVERID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PRODUCT_VERSIONS"."ID_VERSION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qVERNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
    object qVERDATA: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DATA'
      Origin = '"PRODUCT_VERSIONS"."DATA"'
    end
    object qVERCREATER: TIntegerField
      FieldName = 'CREATER'
      Origin = '"PRODUCT_VERSIONS"."CREATER"'
    end
    object qVERSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PRODUCT_VERSIONS"."STATUS"'
    end
    object qVERREM: TMemoField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'REM'
      Origin = '"PRODUCT_VERSIONS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qVERfIO: TStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldKind = fkLookup
      FieldName = 'fIO'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'CREATER'
      Size = 60
      Lookup = True
    end
    object qVERID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsVER: TDataSource
    DataSet = qVER
    Left = 688
    Top = 152
  end
  object qOBJ_OPER: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select P.ID_PROD_OPER, P.ID_AREA, A.NAME AS ANAME, '
      'P.ID_OPERATION, O.NAME, P.STEP, P.REM '
      'from (PRODUCT_OPER P join OPERATIONS O'
      'on P.ID_AREA = O.ID_AREA ) join  PROD_AREAS A'
      'on A.ID_P_AREA = O.ID_AREA'
      'and P.ID_OPERATION = O.ID_OPERATION'
      'where P.ID_OBJECT = :obj1'
      'order by P.STEP')
    Left = 72
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'obj1'
        ParamType = ptUnknown
      end>
    object qOBJ_OPERID_PROD_OPER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088'.'
      FieldName = 'ID_PROD_OPER'
      Origin = '"PRODUCT_OPER"."ID_PROD_OPER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOBJ_OPERID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Origin = '"PRODUCT_OPER"."ID_AREA"'
      Required = True
    end
    object qOBJ_OPERID_OPERATION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088'.'
      FieldName = 'ID_OPERATION'
      Origin = '"PRODUCT_OPER"."ID_OPERATION"'
      Required = True
    end
    object qOBJ_OPERSTEP: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'STEP'
      Origin = '"PRODUCT_OPER"."STEP"'
    end
    object qOBJ_OPERNAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qOBJ_OPERANAME: TIBStringField
      DisplayLabel = #1059#1095#1072#1089#1090#1086#1082
      FieldName = 'ANAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qOBJ_OPERREM: TMemoField
      FieldName = 'REM'
      Origin = '"PRODUCT_OPER"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsOBJ_OPER: TDataSource
    DataSet = qOBJ_OPER
    Left = 72
    Top = 248
  end
  object qOPER_MAT: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsOBJ_OPER
    SQL.Strings = (
      'select  M.*, I.NAME'
      'from PRODUCT_OPER_MATS M join ITEMS I'
      'on M.ID_ITEM = I.ID_ITEM'
      'where ID_PROD_OPER = :ID_PROD_OPER')
    Left = 144
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PROD_OPER'
        ParamType = ptUnknown
      end>
    object qOPER_MATID_PROD_OPER: TIntegerField
      FieldName = 'ID_PROD_OPER'
      Origin = '"PRODUCT_OPER_MATS"."ID_PROD_OPER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOPER_MATID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"PRODUCT_OPER_MATS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOPER_MATAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_OPER_MATS"."AMOUNT"'
    end
    object qOPER_MATWASTE: TIBBCDField
      FieldName = 'WASTE'
      Origin = '"PRODUCT_OPER_MATS"."WASTE"'
      Precision = 9
      Size = 2
    end
    object qOPER_MATDEFECT: TIBBCDField
      FieldName = 'DEFECT'
      Origin = '"PRODUCT_OPER_MATS"."DEFECT"'
      Precision = 9
      Size = 2
    end
    object qOPER_MATLENG: TFloatField
      DisplayLabel = #1044#1083#1080#1085#1072
      FieldName = 'LENG'
      Origin = '"PRODUCT_OPER_MATS"."LENG"'
    end
    object qOPER_MATWIDTH: TFloatField
      DisplayLabel = #1064#1080#1088#1080#1085#1072
      FieldName = 'WIDTH'
      Origin = '"PRODUCT_OPER_MATS"."WIDTH"'
    end
    object qOPER_MATHEIGHT: TFloatField
      DisplayLabel = #1042#1099#1089#1086#1090#1072
      FieldName = 'HEIGHT'
      Origin = '"PRODUCT_OPER_MATS"."HEIGHT"'
    end
    object qOPER_MATREM: TBlobField
      FieldName = 'REM'
      Origin = '"PRODUCT_OPER_MATS"."REM"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qOPER_MATNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsOPER_MAT: TDataSource
    DataSet = qOPER_MAT
    Left = 136
    Top = 248
  end
  object qOBJ_DOCS: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * '
      'from PRODUCT_DOCS'
      'where ID_OBJECT = :obj1')
    Left = 216
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'obj1'
        ParamType = ptUnknown
      end>
    object qOBJ_DOCSID_PROD_DOC: TIntegerField
      FieldName = 'ID_PROD_DOC'
      Origin = '"PRODUCT_DOCS"."ID_PROD_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOBJ_DOCSID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PRODUCT_DOCS"."ID_PRODUCT"'
    end
    object qOBJ_DOCSID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_DOCS"."ID_OBJECT"'
    end
    object qOBJ_DOCSDOC_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'DOC_TYPE'
      Origin = '"PRODUCT_DOCS"."DOC_TYPE"'
    end
    object qOBJ_DOCSD_CONFIRM: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085
      FieldName = 'D_CONFIRM'
      Origin = '"PRODUCT_DOCS"."D_CONFIRM"'
    end
    object qOBJ_DOCSID_CONFIRM: TIntegerField
      FieldName = 'ID_CONFIRM'
      Origin = '"PRODUCT_DOCS"."ID_CONFIRM"'
    end
    object qOBJ_DOCSID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082'.'
      FieldName = 'ID_DOC'
      Origin = '"PRODUCT_DOCS"."ID_DOC"'
    end
    object qOBJ_DOCSNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'NAME'
      Origin = '"PRODUCT_DOCS"."NAME"'
      Size = 64
    end
  end
  object dsOBJ_DOCS: TDataSource
    DataSet = qOBJ_DOCS
    Left = 216
    Top = 248
  end
  object qOBJ: TIBQuery
    Database = dbIS
    Transaction = mT
    OnCalcFields = qOBJCalcFields
    SQL.Strings = (
      'select P.ID_OBJECT, T.NAME, P.OBJ_TYPE, P. AMOUNT, P.REM '
      'from PRODUCT_OBJECTS P join PROD_OBJ_TREE T '
      'on P.ID_OBJECT = T.ID_OBJECT'
      'where P.ID_OBJECT = :obj1')
    Left = 8
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'obj1'
        ParamType = ptUnknown
      end>
    object qOBJID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOBJNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_OBJ_TREE"."NAME"'
      Size = 128
    end
    object qOBJOBJ_TYPE: TIntegerField
      FieldName = 'OBJ_TYPE'
      Origin = '"PRODUCT_OBJECTS"."OBJ_TYPE"'
    end
    object qOBJAMOUNT: TIBBCDField
      FieldName = 'AMOUNT'
      Origin = '"PRODUCT_OBJECTS"."AMOUNT"'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 4
    end
    object qOBJREM: TMemoField
      FieldName = 'REM'
      Origin = '"PRODUCT_OBJECTS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOBJnTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'nTYPE'
      Size = 32
      Calculated = True
    end
  end
  object dsOBJ: TDataSource
    DataSet = qOBJ
    Left = 8
    Top = 248
  end
  object qS_BODY: TIBQuery
    Database = dbDOC
    Transaction = dT
    SQL.Strings = (
      'select ID_DOC, FILENAME, BODY from DOC_STORE'
      'where ID_DOC = :d1')
    Left = 112
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"WORKDOCS"."ID_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'FILENAME'
      Origin = '"WORKDOCS"."FILENAME"'
      Size = 128
    end
    object BlobField1: TBlobField
      FieldName = 'BODY'
      Origin = '"WORKDOCS"."BODY"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object qW_TIME: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select amount_time'
      'from CALC_OBJECT_AMOUNT_TIME(:ob1)')
    Left = 280
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ob1'
        ParamType = ptUnknown
      end>
    object qW_TIMEAMOUNT_TIME: TFloatField
      FieldName = 'AMOUNT_TIME'
      Origin = '"CALC_OBJECT_AMOUNT_TIME"."AMOUNT_TIME"'
      DisplayFormat = '#0.0000'
    end
  end
  object dsW_TIME: TDataSource
    DataSet = qW_TIME
    Left = 280
    Top = 248
  end
  object qOS_AMOUNT: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select amount'
      'from CALC_AMOUNT_OBJECT(:ob1)')
    Left = 344
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ob1'
        ParamType = ptUnknown
      end>
    object qOS_AMOUNTAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"CALC_AMOUNT_OBJECT"."AMOUNT"'
      DisplayFormat = '#0.00'
    end
  end
  object dsOS_AM: TDataSource
    DataSet = qOS_AMOUNT
    Left = 344
    Top = 248
  end
  object qUSERS: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_P, FIO '
      'from PERSONNEL'
      'where ACCESS_KEY is not null'
      'order by FIO')
    Left = 416
    Top = 200
    object qUSERSID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUSERSFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsUSERS: TDataSource
    DataSet = qUSERS
    Left = 416
    Top = 248
  end
  object qD_FILL: TIBQuery
    Database = dbIS
    Transaction = mT
    BeforeDelete = qD_FILLBeforeDelete
    OnCalcFields = qD_FILLCalcFields
    OnNewRecord = qD_FILLNewRecord
    SQL.Strings = (
      'select F.ID_POST, F.STATUS, F.ALL_PROJ, F.POSIT, P.NAME '
      'from PROJ_DOC_TYPES_FILL F'
      'join POST P on P.IDPOST = F.ID_POST'
      'where F.ID_PROJ_TYPES = :pt1 and F.ID_PROJ_DOC_TYPE = :pdt1')
    UpdateObject = upD_FILL
    Left = 472
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pt1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pdt1'
        ParamType = ptUnknown
      end>
    object qD_FILLID_POST: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_POST'
      Origin = '"PROJ_DOC_TYPES_FILL"."ID_POST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qD_FILLSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJ_DOC_TYPES_FILL"."STATUS"'
    end
    object qD_FILLNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qD_FILLALL_PROJ: TIntegerField
      FieldName = 'ALL_PROJ'
      Origin = '"PROJ_DOC_TYPES_FILL"."ALL_PROJ"'
    end
    object qD_FILLaLL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'aLL'
      Size = 1
      Calculated = True
    end
    object qD_FILLPOSIT: TIntegerField
      DisplayLabel = #1064#1072#1075
      FieldName = 'POSIT'
      Origin = '"PROJ_DOC_TYPES_FILL"."POSIT"'
    end
  end
  object dsD_FILL: TDataSource
    DataSet = qD_FILL
    Left = 472
    Top = 248
  end
  object qD_GET: TIBQuery
    Database = dbIS
    Transaction = mT
    OnCalcFields = qD_GETCalcFields
    SQL.Strings = (
      'select F.ID_POST, F.STATUS, ALL_PROJ, P.NAME '
      'from PROJ_DOC_TYPES_GET F'
      'join POST P on P.IDPOST = F.ID_POST'
      'where F.ID_PROJ_TYPES = :pt1 and F.ID_PROJ_DOC_TYPE = :pdt1')
    Left = 528
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pt1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'pdt1'
        ParamType = ptUnknown
      end>
    object qD_GETID_POST: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_POST'
      Origin = '"PROJ_DOC_TYPES_GET"."ID_POST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qD_GETSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJ_DOC_TYPES_GET"."STATUS"'
    end
    object qD_GETNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qD_GETALL_PROJ: TIntegerField
      FieldName = 'ALL_PROJ'
      Origin = '"PROJ_DOC_TYPES_GET"."ALL_PROJ"'
    end
    object qD_GETaLL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'aLL'
      Size = 1
      Calculated = True
    end
  end
  object dsD_GET: TDataSource
    DataSet = qD_GET
    Left = 528
    Top = 248
  end
  object qCliOrd: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsPrj
    SQL.Strings = (
      'select *'
      'from PROJECT_ORDS'
      'where ID_AGENT = :ID_AGENT'
      'and D_CLOSE IS NULL')
    Left = 576
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_AGENT'
        ParamType = ptUnknown
      end>
    object qCliOrdID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCliOrdNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS"."NAME"'
      Size = 64
    end
    object qCliOrdAMOUNT: TIBBCDField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS"."AMOUNT"'
      Precision = 18
      Size = 4
    end
    object qCliOrdN_ORDER: TIBStringField
      DisplayLabel = #1058#1047
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qCliOrdID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS"."ID_C"'
    end
    object qCliOrdD_OPEN: TDateTimeField
      DisplayLabel = #1054#1090#1082#1088#1099#1090#1086
      FieldName = 'D_OPEN'
      Origin = '"PROJECT_ORDS"."D_OPEN"'
    end
    object qCliOrdD_CLOSE: TDateTimeField
      FieldName = 'D_CLOSE'
      Origin = '"PROJECT_ORDS"."D_CLOSE"'
    end
    object qCliOrdID_CLOSE: TIntegerField
      FieldName = 'ID_CLOSE'
      Origin = '"PROJECT_ORDS"."ID_CLOSE"'
    end
    object qCliOrdD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS"."D_FIX"'
    end
    object qCliOrdID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS"."ID_FIX"'
    end
    object qCliOrdID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082'-'#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS"."ID_DOC"'
    end
    object qCliOrdD_INPROD: TDateTimeField
      FieldName = 'D_INPROD'
      Origin = '"PROJECT_ORDS"."D_INPROD"'
    end
    object qCliOrdID_INPROD: TIntegerField
      FieldName = 'ID_INPROD'
      Origin = '"PROJECT_ORDS"."ID_INPROD"'
    end
    object qCliOrdD_REJECT: TDateTimeField
      FieldName = 'D_REJECT'
      Origin = '"PROJECT_ORDS"."D_REJECT"'
    end
    object qCliOrdID_REJECTOR: TIntegerField
      FieldName = 'ID_REJECTOR'
      Origin = '"PROJECT_ORDS"."ID_REJECTOR"'
    end
    object qCliOrdPRICE: TIBBCDField
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS"."PRICE"'
      Precision = 18
      Size = 4
    end
    object qCliOrdPRICEA: TIBBCDField
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS"."PRICEA"'
      Precision = 18
      Size = 4
    end
    object qCliOrdID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS"."ID_CURRENCY"'
    end
    object qCliOrdID_CPTYPE: TIntegerField
      FieldName = 'ID_CPTYPE'
      Origin = '"PROJECT_ORDS"."ID_CPTYPE"'
    end
    object qCliOrdID_CPROD: TIntegerField
      FieldName = 'ID_CPROD'
      Origin = '"PROJECT_ORDS"."ID_CPROD"'
    end
    object qCliOrdID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qCliOrdD_MAT: TDateField
      FieldName = 'D_MAT'
      Origin = '"PROJECT_ORDS"."D_MAT"'
    end
    object qCliOrdfOPEN: TStringField
      DisplayLabel = #1054#1090#1082#1088#1099#1083
      FieldKind = fkLookup
      FieldName = 'fOPEN'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_OPEN'
      Size = 60
      Lookup = True
    end
    object qCliOrdnDOC: TStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090'-'#1086#1089#1085#1086#1074#1072#1085#1080#1077
      FieldKind = fkLookup
      FieldName = 'nDOC'
      LookupDataSet = qDOC
      LookupKeyFields = 'ID_PROJECT_DOC'
      LookupResultField = 'NAME'
      KeyFields = 'ID_DOC'
      Size = 60
      Lookup = True
    end
    object qCliOrdID_OPEN: TIntegerField
      FieldName = 'ID_OPEN'
      Origin = '"PROJECT_ORDS"."ID_OPEN"'
    end
    object qCliOrdID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS"."ID_PRODUCT"'
    end
    object qCliOrdD_CONSTR: TDateField
      FieldName = 'D_CONSTR'
      Origin = '"PROJECT_ORDS"."D_CONSTR"'
    end
    object qCliOrdID_CONSTR: TIntegerField
      FieldName = 'ID_CONSTR'
      Origin = '"PROJECT_ORDS"."ID_CONSTR"'
    end
    object qCliOrdID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS"."ID_VERSION"'
    end
  end
  object dsCliOrd: TDataSource
    DataSet = qCliOrd
    Left = 576
    Top = 248
  end
  object qAg: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select I.ID_ITEM, I.NAME, I.ID_C, I.ID_AX'
      'from ITEMS I join BR_ITEMS(13,0) B'
      'on B.ID=I.ID_ITEM'
      'where I.STATUS <> 3'
      'order by NAME')
    Left = 744
    Top = 8
    object qAgID_ITEM: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAgNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qAgID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"ITEMS"."ID_C"'
    end
    object qAgID_AX: TIBStringField
      DisplayLabel = #1050#1086#1076' AXAPTA'
      FieldName = 'ID_AX'
      Origin = '"ITEMS"."ID_AX"'
      Size = 32
    end
  end
  object dsAg: TDataSource
    DataSet = qAg
    Left = 744
    Top = 56
  end
  object qFILL_D: TIBQuery
    Database = dbIS
    Transaction = mT
    OnCalcFields = qFILL_DCalcFields
    SQL.Strings = (
      'select F.*, P.NAME, R.FIO'
      'from (PROJECT_DOCS_FILL F left join POST P '
      'on P.IDPOST = F.ID_POST) left join PERSONNEL R'
      'on R.ID_P = F.ID_P'
      'where F.ID_PROJECT_DOC = :idd1')
    Left = 744
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idd1'
        ParamType = ptUnknown
      end>
    object qFILL_DID_PROJECT_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082'.'
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS_FILL"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFILL_DID_POST: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1083#1078#1085'.'
      FieldName = 'ID_POST'
      Origin = '"PROJECT_DOCS_FILL"."ID_POST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFILL_DID_P: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1077#1088#1089'.'
      FieldName = 'ID_P'
      Origin = '"PROJECT_DOCS_FILL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFILL_DD_FILL: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_FILL'
      Origin = '"PROJECT_DOCS_FILL"."D_FILL"'
    end
    object qFILL_DSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_DOCS_FILL"."STATUS"'
    end
    object qFILL_DNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
    object qFILL_DFIO: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qFILL_DF_TYPE: TIntegerField
      FieldName = 'F_TYPE'
      Origin = '"PROJECT_DOCS_FILL"."F_TYPE"'
    end
    object qFILL_DCOMMENT: TMemoField
      FieldName = 'COMMENT'
      Origin = '"PROJECT_DOCS_FILL"."COMMENT"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qFILL_DnFILL: TStringField
      DisplayLabel = #1055#1086#1076#1087#1080#1089#1100
      FieldKind = fkCalculated
      FieldName = 'nFILL'
      Size = 16
      Calculated = True
    end
  end
  object dsFILL_D: TDataSource
    DataSet = qFILL_D
    Left = 744
    Top = 248
  end
  object qCURR: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_CURRENCY, NAME, MARK '
      'from CURRENCY'
      'order by ID_CURRENCY')
    Left = 744
    Top = 104
    object qCURRID_CURRENCY: TSmallintField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_CURRENCY'
      Origin = '"CURRENCY"."ID_CURRENCY"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCURRNAME: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NAME'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
    object qCURRMARK: TIBStringField
      DisplayLabel = '*'
      FieldName = 'MARK'
      Origin = '"CURRENCY"."MARK"'
      Size = 1
    end
  end
  object dsCURR: TDataSource
    DataSet = qCURR
    Left = 744
    Top = 152
  end
  object upD_FILL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PROJ_DOC_TYPE,'
      '  ID_PROJ_TYPES,'
      '  ID_POST,'
      '  STATUS,'
      '  ALL_PROJ,'
      '  POSIT'
      'from PROJ_DOC_TYPES_FILL '
      'where'
      '  ID_POST = :ID_POST')
    ModifySQL.Strings = (
      'update PROJ_DOC_TYPES_FILL'
      'set'
      '  POSIT = :POSIT'
      'where'
      '  ID_POST = :OLD_ID_POST')
    InsertSQL.Strings = (
      'insert into PROJ_DOC_TYPES_FILL'
      '  (ID_POST, POSIT)'
      'values'
      '  (:ID_POST, :POSIT)')
    DeleteSQL.Strings = (
      'delete from PROJ_DOC_TYPES_FILL'
      'where'
      '  ID_POST = :OLD_ID_POST')
    Left = 472
    Top = 304
  end
  object qIN_G: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterScroll = qIN_GAfterScroll
    OnCalcFields = qIN_GCalcFields
    SQL.Strings = (
      'select G.*, T.NAME as NDTYPE, P.FIO '
      'from (GET_DOC_GET(:p1) G'
      'left join proj_doc_types t on t.id_proj_doc_type = g.dtype)'
      'left join PERSONNEL P on P.ID_P = G.ID_FILL')
    Left = 688
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qIN_GID_PROJ_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJ_DOC'
      Origin = '"GET_DOC_GET"."ID_PROJ_DOC"'
    end
    object qIN_GDNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DNAME'
      Origin = '"GET_DOC_GET"."DNAME"'
      Size = 64
    end
    object qIN_GDTYPE: TIntegerField
      FieldName = 'DTYPE'
      Origin = '"GET_DOC_GET"."DTYPE"'
    end
    object qIN_GID_DRAFT: TIntegerField
      FieldName = 'ID_DRAFT'
      Origin = '"GET_DOC_GET"."ID_DRAFT"'
    end
    object qIN_GD_DOC: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_DOC'
      Origin = '"GET_DOC_GET"."D_DOC"'
    end
    object qIN_GDS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'DS'
      Origin = '"GET_DOC_GET"."DS"'
    end
    object qIN_GID_FILL: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1083#1072#1076'.'
      FieldName = 'ID_FILL'
      Origin = '"GET_DOC_GET"."ID_FILL"'
    end
    object qIN_GID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"GET_DOC_GET"."ID_PROJECT"'
    end
    object qIN_GPNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'PNAME'
      Origin = '"GET_DOC_GET"."PNAME"'
      Size = 80
    end
    object qIN_GPTYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'PTYPE'
      Origin = '"GET_DOC_GET"."PTYPE"'
    end
    object qIN_GID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"GET_DOC_GET"."ID_AGENT"'
    end
    object qIN_GID_MAN: TIntegerField
      FieldName = 'ID_MAN'
      Origin = '"GET_DOC_GET"."ID_MAN"'
    end
    object qIN_GID_DES: TIntegerField
      FieldName = 'ID_DES'
      Origin = '"GET_DOC_GET"."ID_DES"'
    end
    object qIN_GNDTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082'-'#1090#1072
      FieldName = 'NDTYPE'
      Origin = '"PROJ_DOC_TYPES"."NAME"'
      Size = 32
    end
    object qIN_GFIO: TIBStringField
      DisplayLabel = #1042#1083#1072#1076#1077#1083#1077#1094
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qIN_GnAGENT: TStringField
      FieldKind = fkLookup
      FieldName = 'nAGENT'
      LookupDataSet = qAg
      LookupKeyFields = 'ID_ITEM'
      LookupResultField = 'NAME'
      KeyFields = 'ID_AGENT'
      Size = 64
      Lookup = True
    end
    object qIN_GmANAGER: TStringField
      FieldKind = fkLookup
      FieldName = 'mANAGER'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_MAN'
      Size = 50
      Lookup = True
    end
    object qIN_GdESIGNER: TStringField
      FieldKind = fkLookup
      FieldName = 'dESIGNER'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_DES'
      Size = 50
      Lookup = True
    end
    object qIN_GgRAPH: TStringField
      DisplayLabel = 'G'
      FieldKind = fkCalculated
      FieldName = 'gRAPH'
      Size = 1
      Calculated = True
    end
    object qIN_GfILL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'fILL'
      Size = 1
      Calculated = True
    end
  end
  object dsIN_G: TDataSource
    DataSet = qIN_G
    Left = 688
    Top = 248
  end
  object qIN_F: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterScroll = qIN_FAfterScroll
    OnCalcFields = qIN_FCalcFields
    SQL.Strings = (
      'select F.*, T.NAME as NDTYPE, P.FIO '
      'from (GET_DOC_FILL(:p1) F'
      'left join proj_doc_types t on t.id_proj_doc_type = F.dtype)'
      'left join PERSONNEL P on P.ID_P = F.ID_FILL')
    Left = 632
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object qIN_FnAGENT: TStringField
      FieldKind = fkLookup
      FieldName = 'nAGENT'
      LookupDataSet = qAg
      LookupKeyFields = 'ID_ITEM'
      LookupResultField = 'NAME'
      KeyFields = 'ID_AGENT'
      Size = 64
      Lookup = True
    end
    object qIN_FmANAGER: TStringField
      FieldKind = fkLookup
      FieldName = 'mANAGER'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_MAN'
      Size = 50
      Lookup = True
    end
    object qIN_FdESIGNER: TStringField
      FieldKind = fkLookup
      FieldName = 'dESIGNER'
      LookupDataSet = qFIO
      LookupKeyFields = 'ID_P'
      LookupResultField = 'FIO'
      KeyFields = 'ID_DES'
      Size = 50
      Lookup = True
    end
    object qIN_FgRAPH: TStringField
      DisplayLabel = 'G'
      FieldKind = fkCalculated
      FieldName = 'gRAPH'
      Size = 1
      Calculated = True
    end
    object qIN_FfILL: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'fILL'
      Size = 1
      Calculated = True
    end
    object qIN_FID_PROJ_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJ_DOC'
      Origin = '"GET_DOC_FILL"."ID_PROJ_DOC"'
    end
    object qIN_FDNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082'-'#1090#1072
      FieldName = 'DNAME'
      Origin = '"GET_DOC_FILL"."DNAME"'
      Size = 64
    end
    object qIN_FDTYPE: TIntegerField
      FieldName = 'DTYPE'
      Origin = '"GET_DOC_FILL"."DTYPE"'
    end
    object qIN_FID_DRAFT: TIntegerField
      FieldName = 'ID_DRAFT'
      Origin = '"GET_DOC_FILL"."ID_DRAFT"'
    end
    object qIN_FD_DOC: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_DOC'
      Origin = '"GET_DOC_FILL"."D_DOC"'
    end
    object qIN_FDS: TIntegerField
      FieldName = 'DS'
      Origin = '"GET_DOC_FILL"."DS"'
    end
    object qIN_FID_FILL: TIntegerField
      FieldName = 'ID_FILL'
      Origin = '"GET_DOC_FILL"."ID_FILL"'
    end
    object qIN_FID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"GET_DOC_FILL"."ID_PROJECT"'
    end
    object qIN_FPNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'PNAME'
      Origin = '"GET_DOC_FILL"."PNAME"'
      Size = 80
    end
    object qIN_FPTYPE: TIntegerField
      FieldName = 'PTYPE'
      Origin = '"GET_DOC_FILL"."PTYPE"'
    end
    object qIN_FID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"GET_DOC_FILL"."ID_AGENT"'
    end
    object qIN_FID_MAN: TIntegerField
      FieldName = 'ID_MAN'
      Origin = '"GET_DOC_FILL"."ID_MAN"'
    end
    object qIN_FID_DES: TIntegerField
      FieldName = 'ID_DES'
      Origin = '"GET_DOC_FILL"."ID_DES"'
    end
    object qIN_FNDTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'NDTYPE'
      Origin = '"PROJ_DOC_TYPES"."NAME"'
      Size = 32
    end
    object qIN_FFIO: TIBStringField
      DisplayLabel = #1042#1083#1072#1076#1077#1083#1077#1094
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsIN_F: TDataSource
    DataSet = qIN_F
    Left = 632
    Top = 248
  end
  object qCFIO: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_P, FIO  '
      'from PERSONNEL'
      'where ACCESS_KEY IS NOT NULL and D_DISMISS IS NULL'
      'order by FIO')
    Left = 8
    Top = 304
    object qCFIOID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qCFIOFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsCFIO: TDataSource
    DataSet = qCFIO
    Left = 8
    Top = 352
  end
  object qHEst: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select  T.ID_ESTIMATE, V.ID_ITEM ID_PRODUCT,'
      'T.ID_VERSION, V.NAME, V.ID_ITEM ID_OBJECT,'
      'T.D_CREATE, T.price_date PRICE_DATA, P.FIO,T.DOP_PRICE, v.status'
      'from ESTIMATES T'
      
        'join PRODUCT_VERSIONS V on V.ID_VERSION = T.ID_VERSION --and V.S' +
        'TATUS >=50'
      'join PERSONNEL P on P.ID_P = T.id_creator'
      'where V.ID_ITEM = :prd1')
    Left = 64
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'prd1'
        ParamType = ptUnknown
      end>
    object qHEstID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"PRODUCT_ESTIMATE"."ID_ESTIMATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qHEstID_PRODUCT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1080#1079#1076#1077#1083#1080#1103
      FieldName = 'ID_PRODUCT'
      Origin = '"PRODUCT_ESTIMATE"."ID_PRODUCT"'
      Required = True
    end
    object qHEstID_VERSION: TIntegerField
      DisplayLabel = #1042#1077#1088#1089#1080#1103
      FieldName = 'ID_VERSION'
      Origin = '"PRODUCT_ESTIMATE"."ID_VERSION"'
      Required = True
    end
    object qHEstNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PRODUCT_VERSIONS"."NAME"'
      Size = 128
    end
    object qHEstID_OBJECT: TIntegerField
      FieldName = 'ID_OBJECT'
      Origin = '"PRODUCT_OBJECTS"."ID_OBJECT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qHEstD_CREATE: TDateTimeField
      DisplayLabel = #1057#1086#1079#1076#1072#1085#1072
      FieldName = 'D_CREATE'
      Origin = '"PRODUCT_ESTIMATE_TITLE"."D_CREATE"'
    end
    object qHEstPRICE_DATA: TDateField
      DisplayLabel = #1062#1077#1085#1099' '#1085#1072
      FieldName = 'PRICE_DATA'
      Origin = '"PRODUCT_ESTIMATE_TITLE"."PRICE_DATA"'
    end
    object qHEstFIO: TIBStringField
      DisplayLabel = #1056#1072#1079#1088#1072#1073#1086#1090#1072#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qHEstDOP_PRICE: TFloatField
      FieldName = 'DOP_PRICE'
      Origin = '"PRODUCT_ESTIMATE_TITLE"."DOP_PRICE"'
    end
  end
  object dsHEst: TDataSource
    DataSet = qHEst
    Left = 64
    Top = 352
  end
  object qOrd_PF: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsP_ORDS
    SQL.Strings = (
      'select *'
      'from ORD_PLAN_FACT_SHIPP(:ID_ORDER)'
      'order by C_D')
    Left = 168
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qOrd_PFC_D: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'C_D'
      Origin = '"ORD_PLAN_FACT_SHIPP"."C_D"'
    end
    object qOrd_PFPLAN_SHIPP: TFloatField
      DisplayLabel = #1055#1083#1072#1085' '#1086#1090#1075#1088'.'
      FieldName = 'PLAN_SHIPP'
      Origin = '"ORD_PLAN_FACT_SHIPP"."PLAN_SHIPP"'
      DisplayFormat = '### ### ##0.00'
    end
    object qOrd_PFPRODUCED: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086
      FieldName = 'PRODUCED'
      Origin = '"ORD_PLAN_FACT_SHIPP"."PRODUCED"'
      DisplayFormat = '### ### ##0.00'
    end
    object qOrd_PFSHIP: TFloatField
      DisplayLabel = #1042#1099#1074#1077#1079#1077#1085#1086
      FieldName = 'SHIP'
      Origin = '"ORD_PLAN_FACT_SHIPP"."SHIP"'
      DisplayFormat = '### ### ##0.00'
    end
    object qOrd_PFRECIEV: TFloatField
      DisplayLabel = #1042#1099#1087#1080#1089#1072#1085#1086
      FieldName = 'RECIEV'
      Origin = '"ORD_PLAN_FACT_SHIPP"."RECIEV"'
      DisplayFormat = '### ### ##0.00'
    end
    object qOrd_PFPROD_PLAN: TFloatField
      DisplayLabel = #1055#1083#1072#1085' '#1087#1088#1086#1080#1079'.'
      FieldName = 'PROD_PLAN'
      Origin = '"ORD_PLAN_FACT_SHIPP"."PROD_PLAN"'
      DisplayFormat = '### ### ##0.00'
    end
    object qOrd_PFO_D: TDateField
      DisplayLabel = #1054#1087#1083#1072#1090#1072' '#1087#1086' '#1087#1083#1072#1085#1091
      FieldName = 'O_D'
      Origin = '"ORD_PLAN_FACT_SHIPP"."O_D"'
    end
    object qOrd_PFO3_D: TDateField
      DisplayLabel = #1054#1087#1083#1072#1090#1072' '#1087#1086' '#1074#1099#1088#1091#1095#1082#1077
      FieldName = 'O3_D'
      Origin = '"ORD_PLAN_FACT_SHIPP"."O3_D"'
    end
    object qOrd_PFDOG_NUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'DOG_NUMBER'
      Origin = '"ORD_PLAN_FACT_SHIPP"."DOG_NUMBER"'
      Size = 16
    end
    object qOrd_PFKOL_DAY: TIntegerField
      DisplayLabel = #1044#1085#1080
      FieldName = 'KOL_DAY'
      Origin = '"ORD_PLAN_FACT_SHIPP"."KOL_DAY"'
    end
    object qOrd_PFVID: TIBStringField
      DisplayLabel = #1042#1080#1076
      FieldName = 'VID'
      Origin = '"ORD_PLAN_FACT_SHIPP"."VID"'
      Size = 10
    end
  end
  object dsOrd_PF: TDataSource
    DataSet = qOrd_PF
    Left = 168
    Top = 352
  end
  object dsOrd_S: TDataSource
    DataSet = qOrd_S
    Left = 224
    Top = 352
  end
  object qOrd_S: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsP_ORDS
    SQL.Strings = (
      'select * from GET_ORD_STATE(:ID_ORDER)'
      'where D_FACT > '#39'01.01.1900'#39
      'order by ID_ORD_EVENT')
    Left = 224
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ORDER'
        ParamType = ptUnknown
        Size = 4
      end>
    object qOrd_SID_ORD_EVENT: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORD_EVENT'
      Origin = '"GET_ORD_STATE"."ID_ORD_EVENT"'
    end
    object qOrd_SNAME_EVENT: TIBStringField
      DisplayLabel = #1057#1086#1073#1099#1090#1080#1077
      FieldName = 'NAME_EVENT'
      Origin = '"GET_ORD_STATE"."NAME_EVENT"'
      Size = 40
    end
    object qOrd_SD_PLAN: TDateTimeField
      DisplayLabel = #1055#1083#1072#1085
      FieldName = 'D_PLAN'
      Origin = '"GET_ORD_STATE"."D_PLAN"'
    end
    object qOrd_SID_PLAN: TIntegerField
      FieldName = 'ID_PLAN'
      Origin = '"GET_ORD_STATE"."ID_PLAN"'
    end
    object qOrd_SFIO_PLAN: TIBStringField
      DisplayLabel = #1050#1090#1086' '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1083
      FieldName = 'FIO_PLAN'
      Origin = '"GET_ORD_STATE"."FIO_PLAN"'
      Size = 60
    end
    object qOrd_SD_FACT: TDateTimeField
      DisplayLabel = #1060#1072#1082#1090
      FieldName = 'D_FACT'
      Origin = '"GET_ORD_STATE"."D_FACT"'
    end
    object qOrd_SID_FACT: TIntegerField
      FieldName = 'ID_FACT'
      Origin = '"GET_ORD_STATE"."ID_FACT"'
    end
    object qOrd_SFIO_FACT: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      FieldName = 'FIO_FACT'
      Origin = '"GET_ORD_STATE"."FIO_FACT"'
      Size = 60
    end
  end
  object qPRODS: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_P_AREA, NAME, ID_C '
      'from PROD_AREAS'
      'where ID_PATYPE = 1'
      'order by NAME')
    Left = 272
    Top = 304
    object qPRODSID_P_AREA: TIntegerField
      FieldName = 'ID_P_AREA'
      Origin = '"PROD_AREAS"."ID_P_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPRODSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROD_AREAS"."NAME"'
      Size = 80
    end
    object qPRODSID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"PROD_AREAS"."ID_C"'
    end
  end
  object dsPRODS: TDataSource
    DataSet = qPRODS
    Left = 272
    Top = 352
  end
  object qPTPS: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from PTYPES'
      'where STATUS = 1'
      'order by NAME')
    Left = 328
    Top = 304
    object qPTPSID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"PTYPES"."ID_PTYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPTPSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qPTPSID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"PTYPES"."ID_C"'
    end
    object qPTPSID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PTYPES"."ID_P"'
    end
    object qPTPSREC: TIntegerField
      FieldName = 'REC'
      Origin = '"PTYPES"."REC"'
    end
  end
  object dsPTPS: TDataSource
    DataSet = qPTPS
    Left = 328
    Top = 352
  end
  object qBDOC: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select D.ID_PROJECT_DOC, D.NAME,'
      'T.NAME TNAME '
      'from PROJECT_DOCS D'
      'join PROJ_DOC_TYPES T'
      'on T.ID_PROJ_DOC_TYPE = D.DOC_TYPE'
      'and T.IS_STRUCTURED is not null'
      'where ID_PROJECT = :pr1'
      'order by D.ID_PROJECT_DOC ')
    Left = 376
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pr1'
        ParamType = ptUnknown
      end>
    object qBDOCID_PROJECT_DOC: TIntegerField
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qBDOCNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qBDOCTNAME: TIBStringField
      FieldName = 'TNAME'
      Origin = '"PROJ_DOC_TYPES"."NAME"'
      Size = 32
    end
  end
  object dsBDOC: TDataSource
    DataSet = qBDOC
    Left = 376
    Top = 352
  end
  object qPL_SH: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterPost = qPL_SHAfterPost
    BeforePost = qPL_SHBeforePost
    OnNewRecord = qPL_SHNewRecord
    SQL.Strings = (
      'select * '
      'from ORD_PLAN_SHIPP'
      'where ID_ORDER = :ID_ORDER'
      'and plan_type=21'
      'order by D_PLANING')
    UpdateObject = upPL_SH
    GeneratorField.Field = 'ID_PLAN_SHIPP'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 320
    Top = 616
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qPL_SHID_PLAN_SHIPP: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PLAN_SHIPP'
      Origin = '"ORD_PLAN_SHIPP"."ID_PLAN_SHIPP"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPL_SHID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"ORD_PLAN_SHIPP"."ID_ORDER"'
      Required = True
    end
    object qPL_SHD_PLANING: TDateField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'D_PLANING'
      Origin = '"ORD_PLAN_SHIPP"."D_PLANING"'
    end
    object qPL_SHAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."AMOUNT"'
    end
    object qPL_SHSUMMA: TFloatField
      FieldName = 'SUMMA'
      Origin = '"ORD_PLAN_SHIPP"."SUMMA"'
    end
    object qPL_SHPLAN_TYPE: TIntegerField
      FieldName = 'PLAN_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."PLAN_TYPE"'
    end
    object qPL_SHD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"ORD_PLAN_SHIPP"."D_FIX"'
    end
    object qPL_SHID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"ORD_PLAN_SHIPP"."ID_FIX"'
    end
    object qPL_SHID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"ORD_PLAN_SHIPP"."ID_C"'
    end
    object qPL_SHIN_PLAN: TIntegerField
      FieldName = 'IN_PLAN'
      Origin = '"ORD_PLAN_SHIPP"."IN_PLAN"'
    end
    object qPL_SHFLAG: TIntegerField
      FieldName = 'FLAG'
      Origin = '"ORD_PLAN_SHIPP"."FLAG"'
    end
    object qPL_SHADRESS: TMemoField
      DisplayLabel = #1040#1076#1088#1077#1089
      FieldName = 'ADRESS'
      Origin = '"ORD_PLAN_SHIPP"."ADRESS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qPL_SHID_DELIVERY_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'ID_DELIVERY_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_DELIVERY_TYPE"'
    end
    object qPL_SHID_REGION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1075#1080#1086#1085#1072
      FieldName = 'ID_REGION'
      Origin = '"ORD_PLAN_SHIPP"."ID_REGION"'
    end
    object qPL_SHOBJ_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1073#1098#1077#1082#1090#1072' ('#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080')'
      FieldName = 'OBJ_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."OBJ_TYPE"'
    end
    object qPL_SHID_CAR_TYPE: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
      FieldName = 'ID_CAR_TYPE'
      Origin = '"ORD_PLAN_SHIPP"."ID_CAR_TYPE"'
    end
    object qPL_SHWEIGHT: TFloatField
      DisplayLabel = #1042#1077#1089
      FieldName = 'WEIGHT'
      Origin = '"ORD_PLAN_SHIPP"."WEIGHT"'
    end
    object qPL_SHDELIVERY_AMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083' - '#1074#1086' ('#1076#1083#1103' '#1086#1073#1098#1077#1082#1090#1072')'
      FieldName = 'DELIVERY_AMOUNT'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_AMOUNT"'
    end
    object qPL_SHDELIVERY_COST: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1076#1086#1089#1090#1072#1074#1082#1080
      FieldName = 'DELIVERY_COST'
      Origin = '"ORD_PLAN_SHIPP"."DELIVERY_COST"'
    end
  end
  object dsPL_SH: TDataSource
    DataSet = qPL_SH
    Left = 320
    Top = 664
  end
  object upPL_SH: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PLAN_SHIPP,'
      '  ID_ORDER,'
      '  D_PLANING,'
      '  AMOUNT,'
      '  SUMMA,'
      '  PLAN_TYPE,'
      '  D_FIX,'
      '  ID_FIX,'
      '  ID_C,'
      '  IN_PLAN,'
      '  FLAG,'
      '  ADRESS'
      'from ORD_PLAN_SHIPP '
      'where'
      '  ID_PLAN_SHIPP = :ID_PLAN_SHIPP')
    ModifySQL.Strings = (
      'update ORD_PLAN_SHIPP'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  D_FIX = CURRENT_TIMESTAMP,'
      '  D_PLANING = :D_PLANING,'
      '  ID_FIX = :ID_FIX,'
      '  ADRESS = :ADRESS'
      'where'
      '  ID_PLAN_SHIPP = :OLD_ID_PLAN_SHIPP')
    InsertSQL.Strings = (
      'insert into ORD_PLAN_SHIPP'
      
        '  (ID_PLAN_SHIPP, AMOUNT, D_FIX, D_PLANING, ID_FIX, ID_ORDER, PL' +
        'AN_TYPE,ADRESS)'
      'values'
      
        '  (:ID_PLAN_SHIPP, :AMOUNT, CURRENT_TIMESTAMP, :D_PLANING, :ID_F' +
        'IX, :ID_ORDER, 21,:ADRESS)')
    DeleteSQL.Strings = (
      'delete from ORD_PLAN_SHIPP'
      'where'
      '  ID_PLAN_SHIPP = :OLD_ID_PLAN_SHIPP')
    Left = 320
    Top = 720
  end
  object qORD_POS: TIBQuery
    Database = dbIS
    Transaction = mT
    AfterPost = qORD_POSAfterPost
    BeforePost = qORD_POSBeforePost
    OnCalcFields = qORD_POSCalcFields
    OnNewRecord = qORD_POSNewRecord
    SQL.Strings = (
      'select  o.*, o.amount* cast(o.pricea as double precision) s,'
      
        '(select nds_val from get_nds_sum(o.price,1)) price_bez_nds, (sel' +
        'ect nds_val from get_nds_sum(o.pricea,1)) pricea_bez_nds'
      'from PROJECT_ORDS_POS o'
      'where ID_ORDER = :ID_ORDER')
    UpdateObject = upORD_POS
    GeneratorField.Field = 'ID_ORDER_POS'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 536
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_ORDER'
        ParamType = ptUnknown
      end>
    object qORD_POSID_ORDER_POS: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER_POS'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER_POS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qORD_POSID_ORDER: TIntegerField
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS_POS"."ID_ORDER"'
      Required = True
    end
    object qORD_POSNAME: TIBStringField
      DisplayLabel = #1069#1083#1077#1084#1077#1085#1090
      FieldName = 'NAME'
      Origin = '"PROJECT_ORDS_POS"."NAME"'
      Size = 64
    end
    object qORD_POSAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PROJECT_ORDS_POS"."AMOUNT"'
      DisplayFormat = '### ### ##0.00'
    end
    object qORD_POSPRODUCED: TFloatField
      FieldName = 'PRODUCED'
      Origin = '"PROJECT_ORDS_POS"."PRODUCED"'
    end
    object qORD_POSSHIPPED: TFloatField
      FieldName = 'SHIPPED'
      Origin = '"PROJECT_ORDS_POS"."SHIPPED"'
    end
    object qORD_POSRECEIVE: TFloatField
      FieldName = 'RECEIVE'
      Origin = '"PROJECT_ORDS_POS"."RECEIVE"'
    end
    object qORD_POSID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = '"PROJECT_ORDS_POS"."ID_PRODUCT"'
    end
    object qORD_POSID_C: TIntegerField
      FieldName = 'ID_C'
      Origin = '"PROJECT_ORDS_POS"."ID_C"'
    end
    object qORD_POSD_FIX: TDateTimeField
      FieldName = 'D_FIX'
      Origin = '"PROJECT_ORDS_POS"."D_FIX"'
    end
    object qORD_POSID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_ORDS_POS"."ID_FIX"'
    end
    object qORD_POSID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"PROJECT_ORDS_POS"."ID_DOC"'
    end
    object qORD_POSPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      Origin = '"PROJECT_ORDS_POS"."PRICE"'
      DisplayFormat = '### ### ##0.000'
      Precision = 18
      Size = 4
    end
    object qORD_POSPRICEA: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'PRICEA'
      Origin = '"PROJECT_ORDS_POS"."PRICEA"'
      DisplayFormat = '### ### ##0.000'
      Precision = 18
      Size = 4
    end
    object qORD_POSID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"PROJECT_ORDS_POS"."ID_CURRENCY"'
    end
    object qORD_POSID_VERSION: TIntegerField
      FieldName = 'ID_VERSION'
      Origin = '"PROJECT_ORDS_POS"."ID_VERSION"'
    end
    object qORD_POSID_ESTIMATE: TIntegerField
      FieldName = 'ID_ESTIMATE'
      Origin = '"PROJECT_ORDS_POS"."ID_ESTIMATE"'
    end
    object qORD_POSID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"PROJECT_ORDS_POS"."ID_UNIT"'
    end
    object qORD_POSsUMPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'sUMPRICE'
      DisplayFormat = '### ### ##0.00'
      Calculated = True
    end
    object qORD_POSnUNIT: TStringField
      DisplayLabel = #1045#1076'. '#1080#1079#1084'.'
      FieldKind = fkLookup
      FieldName = 'nUNIT'
      LookupDataSet = qUNITS
      LookupKeyFields = 'ID_UNIT'
      LookupResultField = 'NAME'
      KeyFields = 'ID_UNIT'
      Size = 16
      Lookup = True
    end
    object qORD_POSNDS: TFloatField
      DisplayLabel = #1053#1044#1057
      FieldName = 'NDS'
      Origin = '"PROJECT_ORDS_POS"."NDS"'
    end
    object qORD_POSS: TFloatField
      FieldName = 'S'
      ProviderFlags = []
    end
    object qORD_POSPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qORD_POSPRICEA_BEZ_NDS: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICEA_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ##0.000'
    end
    object qORD_POSsUMPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldKind = fkCalculated
      FieldName = 'sUMPRICE_BEZ_NDS'
      DisplayFormat = '### ### ##0.00'
      Calculated = True
    end
  end
  object dsORD_POS: TDataSource
    DataSet = qORD_POS
    Left = 536
    Top = 352
  end
  object upORD_POS: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ORDER_POS,'
      '  ID_ORDER,'
      '  NAME,'
      '  AMOUNT,'
      '  PRODUCED,'
      '  SHIPPED,'
      '  RECEIVE,'
      '  ID_PRODUCT,'
      '  ID_C,'
      '  D_FIX,'
      '  ID_FIX,'
      '  ID_DOC,'
      '  PRICE,'
      '  PRICEA,'
      '  ID_CURRENCY,'
      '  ID_VERSION,'
      '  ID_ESTIMATE,'
      '  ID_UNIT,'
      '  NDS'
      'from PROJECT_ORDS_POS '
      'where'
      '  ID_ORDER_POS = :ID_ORDER_POS')
    ModifySQL.Strings = (
      'update PROJECT_ORDS_POS'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  D_FIX =  CURRENT_TIMESTAMP,'
      '  ID_CURRENCY = :ID_CURRENCY,'
      '  ID_FIX = :ID_FIX,'
      '  NAME = :NAME,'
      '  PRICEA = :PRICEA,'
      '  ID_UNIT = :ID_UNIT,'
      '  NDS = :NDS'
      'where'
      '  ID_ORDER_POS = :OLD_ID_ORDER_POS')
    InsertSQL.Strings = (
      'insert into PROJECT_ORDS_POS'
      
        '  (AMOUNT, D_FIX, ID_CURRENCY, ID_FIX, ID_ORDER, ID_ORDER_POS, N' +
        'AME, '
      '   PRICEA, ID_UNIT,NDS)'
      'values'
      
        '  (:AMOUNT, CURRENT_TIMESTAMP, :ID_CURRENCY, :ID_FIX, :ID_ORDER,' +
        ' :ID_ORDER_POS, :NAME, '
      '    :PRICEA, :ID_UNIT,:NDS)')
    DeleteSQL.Strings = (
      'delete from PROJECT_ORDS_POS'
      'where'
      '  ID_ORDER_POS = :OLD_ID_ORDER_POS')
    Left = 608
    Top = 352
  end
  object qREG: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select *  '
      'from REGIONS'
      'order by ID_REGION')
    UpdateObject = upREG
    Left = 672
    Top = 304
    object qREGID_REGION: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_REGION'
      Origin = '"REGIONS"."ID_REGION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qREGNAME: TIBStringField
      DisplayLabel = #1056#1077#1075#1080#1086#1085
      FieldName = 'NAME'
      Origin = '"REGIONS"."NAME"'
      Size = 64
    end
    object qREGID_TERMINAL: TIntegerField
      DisplayLabel = #1058#1077#1088#1084#1080#1085#1072#1083
      FieldName = 'ID_TERMINAL'
      Origin = '"REGIONS"."ID_TERMINAL"'
    end
  end
  object dsREG: TDataSource
    DataSet = qREG
    Left = 672
    Top = 352
  end
  object upREG: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_REGION,'
      '  NAME,'
      '  ID_TERMINAL'
      'from REGIONS '
      'where'
      '  ID_REGION = :ID_REGION')
    ModifySQL.Strings = (
      'update REGIONS'
      'set'
      '  ID_REGION = :ID_REGION,'
      '  ID_TERMINAL = :ID_TERMINAL,'
      '  NAME = :NAME'
      'where'
      '  ID_REGION = :OLD_ID_REGION')
    InsertSQL.Strings = (
      'insert into REGIONS'
      '  (ID_REGION, ID_TERMINAL, NAME)'
      'values'
      '  (:ID_REGION, :ID_TERMINAL, :NAME)')
    DeleteSQL.Strings = (
      'delete from REGIONS'
      'where'
      '  ID_REGION = :OLD_ID_REGION')
    Left = 608
    Top = 304
  end
  object qREG_MAN: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsREG
    SQL.Strings = (
      'select P.ID_P, P.ID_C_MAN, P.FIO, S.NAME'
      'from PERSONNEL P left join'
      'POST S on S.IDPOST = P.IDPOST'
      'where P.ID_REGION = :ID_REGION'
      'and P.D_DISMISS IS NULL'
      'order by P.FIO')
    Left = 728
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_REGION'
        ParamType = ptUnknown
      end>
    object qREG_MANID_P: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qREG_MANID_C_MAN: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
      FieldName = 'ID_C_MAN'
      Origin = '"PERSONNEL"."ID_C_MAN"'
    end
    object qREG_MANFIO: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qREG_MANNAME: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'NAME'
      Origin = '"POST"."NAME"'
      Size = 50
    end
  end
  object dsREG_MAN: TDataSource
    DataSet = qREG_MAN
    Left = 728
    Top = 352
  end
  object qIIN: TIBQuery
    Database = dbIS
    Transaction = mT
    Left = 48
    Top = 56
  end
  object qPlanSH: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from PLAN_ORD_SHIPP(:d1,:d2)')
    Left = 640
    Top = 408
    ParamData = <
      item
        DataType = ftDate
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object qPlanSHID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_ORDER'
      Origin = '"PLAN_ORD_SHIPP"."ID_ORDER"'
    end
    object qPlanSHID_C: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1094#1077#1085#1090#1088#1072
      FieldName = 'ID_C'
      Origin = '"PLAN_ORD_SHIPP"."ID_C"'
    end
    object qPlanSHN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PLAN_ORD_SHIPP"."N_ORDER"'
      Size = 16
    end
    object qPlanSHNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PLAN_ORD_SHIPP"."NAME"'
      Size = 64
    end
    object qPlanSHAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'-'#1074#1086
      FieldName = 'AMOUNT'
      Origin = '"PLAN_ORD_SHIPP"."AMOUNT"'
    end
    object qPlanSHPRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      Origin = '"PLAN_ORD_SHIPP"."PRICE"'
      DisplayFormat = '### ### ### ##0'
    end
    object qPlanSHPRICE_BEZ_NDS: TFloatField
      CustomConstraint = '### ### ### ##0'
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      Origin = '"PLAN_ORD_SHIPP"."PRICE_BEZ_NDS"'
    end
    object qPlanSHID_CURRENCY: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1072#1083'.'
      FieldName = 'ID_CURRENCY'
      Origin = '"PLAN_ORD_SHIPP"."ID_CURRENCY"'
    end
    object qPlanSHNCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'NCURR'
      Origin = '"PLAN_ORD_SHIPP"."NCURR"'
      Size = 4
    end
    object qPlanSHID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"PLAN_ORD_SHIPP"."ID_AGENT"'
    end
    object qPlanSHAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"PLAN_ORD_SHIPP"."AGENT"'
      Size = 128
    end
    object qPlanSHID_MANAGER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1084#1077#1085'.'
      FieldName = 'ID_MANAGER'
      Origin = '"PLAN_ORD_SHIPP"."ID_MANAGER"'
    end
    object qPlanSHMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PLAN_ORD_SHIPP"."MANAGER"'
      Size = 64
    end
    object qPlanSHID_CPROD: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1080#1079#1074'-'#1074#1072
      FieldName = 'ID_CPROD'
      Origin = '"PLAN_ORD_SHIPP"."ID_CPROD"'
    end
    object qPlanSHNPROD: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      FieldName = 'NPROD'
      Origin = '"PLAN_ORD_SHIPP"."NPROD"'
      Size = 80
    end
    object qPlanSHID_CPTYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'ID_CPTYPE'
      Origin = '"PLAN_ORD_SHIPP"."ID_CPTYPE"'
    end
    object qPlanSHNCPTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'NCPTYPE'
      Origin = '"PLAN_ORD_SHIPP"."NCPTYPE"'
      Size = 32
    end
    object qPlanSHRATE: TFloatField
      DisplayLabel = #1082#1091#1088#1089
      FieldName = 'RATE'
      Origin = '"PLAN_ORD_SHIPP"."RATE"'
    end
    object qPlanSHDEF_PRICE: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' ('#1088#1091#1073'.)'
      FieldName = 'DEF_PRICE'
      Origin = '"PLAN_ORD_SHIPP"."DEF_PRICE"'
      DisplayFormat = '### ### ### ##0'
    end
    object qPlanSHDEF_PRICE_BEZ_NDS: TFloatField
      CustomConstraint = '### ### ### ##0'
      DisplayLabel = #1057#1091#1084#1084#1072' ('#1088#1091#1073'.) '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'DEF_PRICE_BEZ_NDS'
      Origin = '"PLAN_ORD_SHIPP"."DEF_PRICE_BEZ_NDS"'
    end
    object qPlanSHPLAN_AMOUNT: TFloatField
      DisplayLabel = #1055#1083#1072#1085
      FieldName = 'PLAN_AMOUNT'
      Origin = '"PLAN_ORD_SHIPP"."PLAN_AMOUNT"'
    end
    object qPlanSHPROGN_AMOUNT: TFloatField
      DisplayLabel = #1055#1088#1086#1075#1085#1086#1079
      FieldName = 'PROGN_AMOUNT'
      Origin = '"PLAN_ORD_SHIPP"."PROGN_AMOUNT"'
    end
    object qPlanSHPLAN_SUMMA: TFloatField
      DisplayLabel = #1055#1083#1072#1085' ('#1089#1091#1084#1084#1072')'
      FieldName = 'PLAN_SUMMA'
      Origin = '"PLAN_ORD_SHIPP"."PLAN_SUMMA"'
      DisplayFormat = '### ### ### ##0'
    end
    object qPlanSHPLAN_SUMMA_BEZ_NDS: TFloatField
      DisplayLabel = #1055#1083#1072#1085' ('#1089#1091#1084#1084#1072') '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PLAN_SUMMA_BEZ_NDS'
      Origin = '"PLAN_ORD_SHIPP"."PLAN_SUMMA_BEZ_NDS"'
      DisplayFormat = '### ### ### ##0'
    end
    object qPlanSHPRODUCED_FROM: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090'. '#1076#1086
      FieldName = 'PRODUCED_FROM'
      Origin = '"PLAN_ORD_SHIPP"."PRODUCED_FROM"'
    end
    object qPlanSHPRODUCED: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083#1077#1085#1086' '#1074' '#1087#1077#1088'.'
      FieldName = 'PRODUCED'
      Origin = '"PLAN_ORD_SHIPP"."PRODUCED"'
    end
    object qPlanSHPRODUSED_SUMMA: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083'. ('#1089#1091#1084#1084#1072')'
      FieldName = 'PRODUSED_SUMMA'
      Origin = '"PLAN_ORD_SHIPP"."PRODUSED_SUMMA"'
      DisplayFormat = '### ### ### ##0'
    end
    object qPlanSHPRODUSED_SUMMA_BEZ_NDS: TFloatField
      DisplayLabel = #1048#1079#1075#1086#1090#1086#1074#1083'. ('#1089#1091#1084#1084#1072') '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRODUSED_SUMMA_BEZ_NDS'
      Origin = '"PLAN_ORD_SHIPP"."PRODUSED_SUMMA_BEZ_NDS"'
      DisplayFormat = '### ### ### ##0'
    end
    object qPlanSHIN_PLAN: TIntegerField
      FieldName = 'IN_PLAN'
      Origin = '"PLAN_ORD_SHIPP"."IN_PLAN"'
    end
    object qPlanSHPROGN_SUMMA: TFloatField
      DisplayLabel = #1055#1088#1086#1075#1085#1086#1079' ('#1089#1091#1084#1084#1072')'
      FieldName = 'PROGN_SUMMA'
      Origin = '"PLAN_ORD_SHIPP"."PROGN_SUMMA"'
      DisplayFormat = '### ### ### ##0'
    end
  end
  object dsPlanSH: TDataSource
    DataSet = qPlanSH
    Left = 640
    Top = 456
  end
  object qMAN: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_P, FIO '
      'from PERSONNEL'
      ''
      'order by FIO')
    Left = 528
    Top = 410
    object qMANID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qMANFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object qORD_AG: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select distinct I.ID_ITEM, I.NAME'
      'from PROJECT_ORDS P'
      'join ITEMS I on I.ID_ITEM = P.ID_AGENT'
      'order by I.NAME')
    Left = 584
    Top = 410
    object qORD_AGID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qORD_AGNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
  end
  object dsMan: TDataSource
    DataSet = qMAN
    Left = 528
    Top = 456
  end
  object dsORD_AG: TDataSource
    DataSet = qORD_AG
    Left = 584
    Top = 456
  end
  object qSumPlan: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select *'
      'from SUM_PROD_PLAN_DIFF(:d1,:d2, :rec1, :idm, :ida)'
      'order by ID_PROD, ID_PTYPE, Y_EAR, M_ONTH')
    Left = 480
    Top = 408
    ParamData = <
      item
        DataType = ftDate
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'd2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'rec1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'idm'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ida'
        ParamType = ptUnknown
      end>
    object qSumPlanID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = '"SUM_PROD_PLAN_DIFF"."ID_PROD"'
    end
    object qSumPlanNPROD: TIBStringField
      FieldName = 'NPROD'
      Origin = '"SUM_PROD_PLAN_DIFF"."NPROD"'
      Size = 80
    end
    object qSumPlanID_PTYPE: TIntegerField
      FieldName = 'ID_PTYPE'
      Origin = '"SUM_PROD_PLAN_DIFF"."ID_PTYPE"'
    end
    object qSumPlanNPTYPE: TIBStringField
      FieldName = 'NPTYPE'
      Origin = '"SUM_PROD_PLAN_DIFF"."NPTYPE"'
      Size = 32
    end
    object qSumPlanY_EAR: TIntegerField
      FieldName = 'Y_EAR'
      Origin = '"SUM_PROD_PLAN_DIFF"."Y_EAR"'
    end
    object qSumPlanM_ONTH: TIntegerField
      FieldName = 'M_ONTH'
      Origin = '"SUM_PROD_PLAN_DIFF"."M_ONTH"'
    end
    object qSumPlanSHIPP_IN: TFloatField
      FieldName = 'SHIPP_IN'
      Origin = '"SUM_PROD_PLAN_DIFF"."SHIPP_IN"'
    end
    object qSumPlanPLAN_IN: TFloatField
      FieldName = 'PLAN_IN'
      Origin = '"SUM_PROD_PLAN_DIFF"."PLAN_IN"'
    end
    object qSumPlanPROC_PROD: TSmallintField
      FieldName = 'PROC_PROD'
      Origin = '"SUM_PROD_PLAN_DIFF"."PROC_PROD"'
    end
    object qSumPlanPROGN: TFloatField
      FieldName = 'PROGN'
      Origin = '"SUM_PROD_PLAN_DIFF"."PROGN"'
    end
  end
  object qW_BODY: TIBQuery
    Database = dbDOC
    Transaction = dT
    SQL.Strings = (
      'select ID_DOC, FILENAME, BODY from WORKDOCS'
      'where ID_DOC = :d1')
    Left = 160
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end>
    object qW_BODYID_DOC: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"WORKDOCS"."ID_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qW_BODYFILENAME: TIBStringField
      FieldName = 'FILENAME'
      Origin = '"WORKDOCS"."FILENAME"'
      Size = 128
    end
    object qW_BODYBODY: TBlobField
      FieldName = 'BODY'
      Origin = '"WORKDOCS"."BODY"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object qUrAg: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsAINN
    SQL.Strings = (
      'select * from URAGENTS'
      'where INN = :inn')
    Left = 792
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'inn'
        ParamType = ptUnknown
      end>
    object qUrAgINN: TIBStringField
      FieldName = 'INN'
      Origin = '"URAGENTS"."INN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object qUrAgNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"URAGENTS"."NAME"'
      Size = 128
    end
    object qUrAgDOG_NUMBER: TIBStringField
      FieldName = 'DOG_NUMBER'
      Origin = '"URAGENTS"."DOG_NUMBER"'
      Size = 16
    end
    object qUrAgADRES1: TIBStringField
      FieldName = 'ADRES1'
      Origin = '"URAGENTS"."ADRES1"'
      Size = 128
    end
    object qUrAgADRES2: TIBStringField
      FieldName = 'ADRES2'
      Origin = '"URAGENTS"."ADRES2"'
      Size = 128
    end
    object qUrAgFIOFIRM: TIBStringField
      FieldName = 'FIOFIRM'
      Origin = '"URAGENTS"."FIOFIRM"'
      Size = 60
    end
    object qUrAgFIOBYX: TIBStringField
      FieldName = 'FIOBYX'
      Origin = '"URAGENTS"."FIOBYX"'
      Size = 60
    end
    object qUrAgTEL: TIBStringField
      FieldName = 'TEL'
      Origin = '"URAGENTS"."TEL"'
      Size = 60
    end
    object qUrAgDOLFIRM: TIBStringField
      FieldName = 'DOLFIRM'
      Origin = '"URAGENTS"."DOLFIRM"'
      Size = 60
    end
    object qUrAgDOLBYX: TIBStringField
      FieldName = 'DOLBYX'
      Origin = '"URAGENTS"."DOLBYX"'
      Size = 60
    end
    object qUrAgOKOHX: TIBStringField
      FieldName = 'OKOHX'
      Origin = '"URAGENTS"."OKOHX"'
      Size = 60
    end
    object qUrAgOKPO: TIBStringField
      FieldName = 'OKPO'
      Origin = '"URAGENTS"."OKPO"'
      Size = 60
    end
    object qUrAgKPP: TIBStringField
      FieldName = 'KPP'
      Origin = '"URAGENTS"."KPP"'
      Size = 12
    end
    object qUrAgOGRN: TIBStringField
      FieldName = 'OGRN'
      Origin = '"URAGENTS"."OGRN"'
      Size = 16
    end
    object qUrAgOKVED: TIBStringField
      FieldName = 'OKVED'
      Origin = '"URAGENTS"."OKVED"'
      Size = 60
    end
    object qUrAgMARK: TSmallintField
      FieldName = 'MARK'
      Origin = '"URAGENTS"."MARK"'
    end
    object qUrAgOKUD: TIBStringField
      FieldName = 'OKUD'
      Origin = '"URAGENTS"."OKUD"'
      Size = 60
    end
  end
  object dsUrAg: TDataSource
    DataSet = qUrAg
    Left = 792
    Top = 152
  end
  object qAINN: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsAg
    SQL.Strings = (
      'select i.id_item, i.inn, i.def_account, a.id_accounts, a.rch,'
      'a.bik, a.name_bik, a.korch, a.filial'
      'from items_uragents i'
      'left join accounts a on a.inn = i.inn'
      'where i.id_item = :id_item')
    Left = 792
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qAINNID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = '"ITEMS_URAGENTS"."ID_ITEM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qAINNINN: TIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Origin = '"ITEMS_URAGENTS"."INN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 12
    end
    object qAINNDEF_ACCOUNT: TIntegerField
      DisplayLabel = #1054#1089#1085#1086#1074#1085#1086#1081' '#1089#1095#1077#1090
      FieldName = 'DEF_ACCOUNT'
      Origin = '"ITEMS_URAGENTS"."DEF_ACCOUNT"'
    end
    object qAINNID_ACCOUNTS: TIntegerField
      FieldName = 'ID_ACCOUNTS'
      Origin = '"ACCOUNTS"."ID_ACCOUNTS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qAINNRCH: TIBStringField
      DisplayLabel = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1089#1095#1077#1090
      FieldName = 'RCH'
      Origin = '"ACCOUNTS"."RCH"'
    end
    object qAINNBIK: TIBStringField
      DisplayLabel = #1041#1048#1050
      FieldName = 'BIK'
      Origin = '"ACCOUNTS"."BIK"'
      Size = 15
    end
    object qAINNNAME_BIK: TIBStringField
      DisplayLabel = #1041#1072#1085#1082
      FieldName = 'NAME_BIK'
      Origin = '"ACCOUNTS"."NAME_BIK"'
      Size = 80
    end
    object qAINNKORCH: TIBStringField
      DisplayLabel = #1050#1086#1088#1088'. '#1089#1095#1077#1090
      FieldName = 'KORCH'
      Origin = '"ACCOUNTS"."KORCH"'
    end
    object qAINNFILIAL: TIBStringField
      DisplayLabel = #1060#1080#1083#1080#1072#1083
      FieldName = 'FILIAL'
      Origin = '"ACCOUNTS"."FILIAL"'
      Size = 80
    end
  end
  object dsAINN: TDataSource
    DataSet = qAINN
    Left = 792
    Top = 56
  end
  object qContr: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsAg
    SQL.Strings = (
      'select D.* , T.Name, c.name cname'
      'from DOGOVOR D left join DOGOVOR_TYPES T'
      'on T.ID_DOGOVOR_TYPES = D.ID_DOGOVOR_TYPES'
      'join currency c on c.id_currency = d.id_currency'
      'where D.ID_AGENT = :id_item')
    Left = 792
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_item'
        ParamType = ptUnknown
      end>
    object qContrID_DOGOVOR: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_DOGOVOR'
      Origin = '"DOGOVOR"."ID_DOGOVOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qContrINN: TIBStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'INN'
      Origin = '"DOGOVOR"."INN"'
      Size = 12
    end
    object qContrDOG_NUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'DOG_NUMBER'
      Origin = '"DOGOVOR"."DOG_NUMBER"'
      Size = 16
    end
    object qContrDOG_DATE_IN: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'DOG_DATE_IN'
      Origin = '"DOGOVOR"."DOG_DATE_IN"'
    end
    object qContrDOG_DATE_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'DOG_DATE_OUT'
      Origin = '"DOGOVOR"."DOG_DATE_OUT"'
    end
    object qContrID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"DOGOVOR"."ID_AGENT"'
    end
    object qContrID_CURRENCY: TIntegerField
      FieldName = 'ID_CURRENCY'
      Origin = '"DOGOVOR"."ID_CURRENCY"'
    end
    object qContrDOG_NUMBER_: TIBStringField
      DisplayLabel = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#8470
      FieldName = 'DOG_NUMBER_'
      Origin = '"DOGOVOR"."DOG_NUMBER_"'
      Size = 32
    end
    object qContrVID: TIntegerField
      DisplayLabel = #1042#1080#1076
      FieldName = 'VID'
      Origin = '"DOGOVOR"."VID"'
    end
    object qContrKOL_DAY: TIntegerField
      DisplayLabel = #1054#1090#1089#1088#1086#1095#1082#1072' ('#1076#1085#1077#1081')'
      FieldName = 'KOL_DAY'
      Origin = '"DOGOVOR"."KOL_DAY"'
    end
    object qContrID_TYPEOPL: TIntegerField
      DisplayLabel = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099
      FieldName = 'ID_TYPEOPL'
      Origin = '"DOGOVOR"."ID_TYPEOPL"'
    end
    object qContrPROC: TFloatField
      DisplayLabel = '% '#1087#1083#1072#1090#1077#1078#1072
      FieldName = 'PROC'
      Origin = '"DOGOVOR"."PROC"'
    end
    object qContrDOG_OBJ: TMemoField
      DisplayLabel = #1054#1073#1098#1077#1082#1090' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'DOG_OBJ'
      Origin = '"DOGOVOR"."DOG_OBJ"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qContrREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"DOGOVOR"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qContrPIOPLE: TMemoField
      DisplayLabel = #1050#1086#1085#1090#1072#1082#1090#1085'. '#1083#1080#1094#1086
      FieldName = 'PIOPLE'
      Origin = '"DOGOVOR"."PIOPLE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qContrEMAIL: TMemoField
      DisplayLabel = 'E-mail '#1072#1076#1088#1077#1089
      FieldName = 'EMAIL'
      Origin = '"DOGOVOR"."EMAIL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qContrSTATUS: TIBStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"DOGOVOR"."STATUS"'
      Size = 32
    end
    object qContrID_DOGOVOR_TYPES: TIntegerField
      FieldName = 'ID_DOGOVOR_TYPES'
      Origin = '"DOGOVOR"."ID_DOGOVOR_TYPES"'
    end
    object qContrNAME: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
      FieldName = 'NAME'
      Origin = '"DOGOVOR_TYPES"."NAME"'
      Size = 32
    end
    object qContrCNAME: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'CNAME'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
  end
  object dsContr: TDataSource
    DataSet = qContr
    Left = 792
    Top = 248
  end
  object qPrDocs: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select d.*, t.name ntype, i.name agent, r.fio, p.name pname,'
      'p.id_agent, s.fio fill'
      'from project_docs d'
      'left join proj_doc_types t'
      'on t.id_proj_doc_type = d.doc_type'
      'join projects p on p.id_project = d.id_project'
      'join items i on i.id_item = p.id_agent'
      'left join personnel r on r.id_p = d.id_fix'
      'left join personnel s on s.id_p = d.id_fill')
    Left = 792
    Top = 304
    object qPrDocsID_PROJECT_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrDocsID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_DOCS"."ID_PROJECT"'
    end
    object qPrDocsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"PROJECT_DOCS"."NAME"'
      Size = 64
    end
    object qPrDocsDOC_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072
      FieldName = 'DOC_TYPE'
      Origin = '"PROJECT_DOCS"."DOC_TYPE"'
    end
    object qPrDocsNUMBER: TIBStringField
      DisplayLabel = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'NUMBER'
      Origin = '"PROJECT_DOCS"."NUMBER"'
      Size = 16
    end
    object qPrDocsD_DOC: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'D_DOC'
      Origin = '"PROJECT_DOCS"."D_DOC"'
    end
    object qPrDocsD_IN: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
      FieldName = 'D_IN'
      Origin = '"PROJECT_DOCS"."D_IN"'
    end
    object qPrDocsD_OUT: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
      FieldName = 'D_OUT'
      Origin = '"PROJECT_DOCS"."D_OUT"'
    end
    object qPrDocsD_PROD: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1075#1086#1090#1086#1074#1085#1086#1089#1090#1080
      FieldName = 'D_PROD'
      Origin = '"PROJECT_DOCS"."D_PROD"'
    end
    object qPrDocsD_SHIPP: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080
      FieldName = 'D_SHIPP'
      Origin = '"PROJECT_DOCS"."D_SHIPP"'
    end
    object qPrDocsD_FIX: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      FieldName = 'D_FIX'
      Origin = '"PROJECT_DOCS"."D_FIX"'
    end
    object qPrDocsID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJECT_DOCS"."ID_FIX"'
    end
    object qPrDocsSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"PROJECT_DOCS"."STATUS"'
    end
    object qPrDocsID_DRAFT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1074#1083#1086#1078#1077#1085#1080#1103
      FieldName = 'ID_DRAFT'
      Origin = '"PROJECT_DOCS"."ID_DRAFT"'
    end
    object qPrDocsID_FOTO: TIntegerField
      FieldName = 'ID_FOTO'
      Origin = '"PROJECT_DOCS"."ID_FOTO"'
    end
    object qPrDocsID_SDOC: TIntegerField
      FieldName = 'ID_SDOC'
      Origin = '"PROJECT_DOCS"."ID_SDOC"'
    end
    object qPrDocsD_FILL: TDateTimeField
      DisplayLabel = #1055#1086#1076#1087#1080#1089#1072#1085
      FieldName = 'D_FILL'
      Origin = '"PROJECT_DOCS"."D_FILL"'
    end
    object qPrDocsID_FILL: TIntegerField
      FieldName = 'ID_FILL'
      Origin = '"PROJECT_DOCS"."ID_FILL"'
    end
    object qPrDocsNTYPE: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'NTYPE'
      Origin = '"PROJ_DOC_TYPES"."NAME"'
      Size = 32
    end
    object qPrDocsAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qPrDocsFIO: TIBStringField
      DisplayLabel = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1083
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qPrDocsPNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'PNAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qPrDocsID_AGENT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
      FieldName = 'ID_AGENT'
      Origin = '"PROJECTS"."ID_AGENT"'
    end
    object qPrDocsFILL: TIBStringField
      DisplayLabel = #1055#1086#1076#1087#1080#1089#1072#1083
      FieldName = 'FILL'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsPrDocs: TDataSource
    DataSet = qPrDocs
    Left = 792
    Top = 352
  end
  object qDTyp: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select * from PROJ_DOC_TYPES'
      'order by NAME')
    Left = 432
    Top = 408
    object qDTypID_PROJ_DOC_TYPE: TIntegerField
      FieldName = 'ID_PROJ_DOC_TYPE'
      Origin = '"PROJ_DOC_TYPES"."ID_PROJ_DOC_TYPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qDTypIS_STRUCTURED: TSmallintField
      FieldName = 'IS_STRUCTURED'
      Origin = '"PROJ_DOC_TYPES"."IS_STRUCTURED"'
    end
    object qDTypNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PROJ_DOC_TYPES"."NAME"'
      Size = 32
    end
    object qDTypSYS: TIntegerField
      FieldName = 'SYS'
      Origin = '"PROJ_DOC_TYPES"."SYS"'
    end
  end
  object dsDTyp: TDataSource
    DataSet = qDTyp
    Left = 384
    Top = 408
  end
  object qID_FIX: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select distinct p.id_p, p.fio'
      'from project_docs d join personnel p'
      'on p.id_p = d.id_fix'
      'order by p.fio')
    Left = 336
    Top = 408
    object qID_FIXID_P: TIntegerField
      FieldName = 'ID_P'
      Origin = '"PERSONNEL"."ID_P"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qID_FIXFIO: TIBStringField
      FieldName = 'FIO'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
  end
  object dsID_FIX: TDataSource
    DataSet = qID_FIX
    Left = 280
    Top = 408
  end
  object qOrdProd: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      
        'select distinct p.id_order, p.n_order, p.id_project, j.id_manage' +
        'r,'
      'r.fio manager, i.name pname, t.name tpname, n.fio designer,'
      'd.id_project_doc, d.id_draft, p.id_agent, a.name agent,'
      
        '(p.price + p.pricea) price, (select nds_val from get_nds_sum((p.' +
        'price + p.pricea),1)) price_bez_nds, c.name curr'
      'from project_ords p join'
      'projects j on j.id_project = p.id_project'
      'join items i on i.id_item = p.id_product'
      'join items a on a.id_item = p.id_agent'
      'join project_ords_state s on s.id_order = p.id_order'
      'and s.id_ord_event = 80'
      'join ptypes t on t.id_ptype = p.id_cptype'
      'join project_docs d on d.id_project_doc = p.id_doc'
      'join currency c on c.id_currency = p.id_currency'
      'join ord_plan_shipp l on l.id_order = p.id_order'
      'and l.plan_type = 21'
      'left join personnel r on r.id_p = j.id_manager'
      'left join personnel n on n.id_p = j.id_designer'
      'where (p.d_close is null or p.d_close > :d1)'
      'and p.d_open < :d1 and p.d_reject is null')
    Left = 792
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end>
    object qOrdProdID_ORDER: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
      FieldName = 'ID_ORDER'
      Origin = '"PROJECT_ORDS"."ID_ORDER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdProdN_ORDER: TIBStringField
      DisplayLabel = #8470' '#1079#1072#1082#1072#1079#1072
      FieldName = 'N_ORDER'
      Origin = '"PROJECT_ORDS"."N_ORDER"'
      Size = 16
    end
    object qOrdProdID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"PROJECT_ORDS"."ID_PROJECT"'
    end
    object qOrdProdID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"PROJECTS"."ID_MANAGER"'
    end
    object qOrdProdMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdProdPNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1076#1091#1082#1090#1072
      FieldName = 'PNAME'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOrdProdTPNAME: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
      FieldName = 'TPNAME'
      Origin = '"PTYPES"."NAME"'
      Size = 32
    end
    object qOrdProdDESIGNER: TIBStringField
      DisplayLabel = #1044#1080#1079#1072#1081#1085#1077#1088
      FieldName = 'DESIGNER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qOrdProdID_PROJECT_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_PROJECT_DOC'
      Origin = '"PROJECT_DOCS"."ID_PROJECT_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrdProdID_DRAFT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1101#1089#1082#1080#1079#1072
      FieldName = 'ID_DRAFT'
      Origin = '"PROJECT_DOCS"."ID_DRAFT"'
    end
    object qOrdProdID_AGENT: TIntegerField
      FieldName = 'ID_AGENT'
      Origin = '"PROJECT_ORDS"."ID_AGENT"'
    end
    object qOrdProdAGENT: TIBStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'AGENT'
      Origin = '"ITEMS"."NAME"'
      Size = 128
    end
    object qOrdProdPRICE: TIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'PRICE'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
      Precision = 18
      Size = 4
    end
    object qOrdProdPRICE_BEZ_NDS: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
      FieldName = 'PRICE_BEZ_NDS'
      ProviderFlags = []
      DisplayFormat = '### ### ### ##0.00'
    end
    object qOrdProdCURR: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'CURR'
      Origin = '"CURRENCY"."NAME"'
      Size = 4
    end
  end
  object dsOrdProd: TDataSource
    DataSet = qOrdProd
    Left = 792
    Top = 456
  end
  object qCountDoc: TIBQuery
    Database = dbIS
    Transaction = mT
    DataSource = dsOrdProd
    SQL.Strings = (
      'select d.doc_type, t.name, count(d.id_project_doc)'
      'from project_docs d join proj_doc_types t'
      'on t.id_proj_doc_type = d.doc_type'
      'where d.id_project = :id_project'
      'group by d.doc_type, t.name')
    Left = 728
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_project'
        ParamType = ptUnknown
      end>
    object qCountDocDOC_TYPE: TIntegerField
      FieldName = 'DOC_TYPE'
      ProviderFlags = []
    end
    object qCountDocNAME: TIBStringField
      DisplayLabel = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 32
    end
    object qCountDocCOUNT: TIntegerField
      DisplayLabel = #1050#1086#1083' - '#1074#1086
      FieldName = 'COUNT'
      ProviderFlags = []
    end
  end
  object dsCountDoc: TDataSource
    DataSet = qCountDoc
    Left = 728
    Top = 456
  end
  object qUNITS: TIBQuery
    Database = dbIS
    Transaction = mT
    SQL.Strings = (
      'select ID_UNIT, NAME '
      'from UNITS'
      'order by NAME')
    Left = 696
    Top = 56
    object qUNITSID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"UNITS"."ID_UNIT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUNITSNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
  end
  object qEstReq: TIBQuery
    Database = dbIS
    Transaction = mT
    OnCalcFields = qEstReqCalcFields
    SQL.Strings = (
      
        ' select r.id_request, r.id_project, r.status, r.description, r.i' +
        'd_doc,'
      
        ' r.d_manager, r.id_manager, r.id_estimate, r.id_constr, r.id_est' +
        'imator,'
      ' r.d_get, r.d_fix, m.fio manager, c.fio constr, e.fio estimator,'
      
        ' r.d_create, r.id_creator, i.fio creator, q.name, q.id_project, ' +
        'r.rem'
      ' from estimate_requests r'
      ' left join personnel m on m.id_p = r.id_manager'
      ' left join personnel c on c.id_p = r.id_constr'
      ' left join personnel e on e.id_p = r.id_estimator'
      ' left join personnel i on i.id_p = r.id_creator'
      ' left join projects  q on q.id_project = r.id_project'
      ' where r.id_project = :id_project'
      '')
    Left = 792
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id_project'
        ParamType = ptUnknown
      end>
    object qEstReqID_REQUEST: TIntegerField
      DisplayLabel = #8470' '#1079#1072#1103#1074#1082#1080
      FieldName = 'ID_REQUEST'
      Origin = '"ESTIMATE_REQUESTS"."ID_REQUEST"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstReqID_PROJECT: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJECT'
      Origin = '"ESTIMATE_REQUESTS"."ID_PROJECT"'
    end
    object qEstReqSTATUS: TIntegerField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'STATUS'
      Origin = '"ESTIMATE_REQUESTS"."STATUS"'
    end
    object qEstReqDESCRIPTION: TMemoField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Origin = '"ESTIMATE_REQUESTS"."DESCRIPTION"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qEstReqID_DOC: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'ID_DOC'
      Origin = '"ESTIMATE_REQUESTS"."ID_DOC"'
    end
    object qEstReqD_MANAGER: TDateTimeField
      DisplayLabel = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1086#1084
      FieldName = 'D_MANAGER'
      Origin = '"ESTIMATE_REQUESTS"."D_MANAGER"'
    end
    object qEstReqID_MANAGER: TIntegerField
      FieldName = 'ID_MANAGER'
      Origin = '"ESTIMATE_REQUESTS"."ID_MANAGER"'
    end
    object qEstReqID_ESTIMATE: TIntegerField
      DisplayLabel = #8470' '#1089#1084#1077#1090#1099
      FieldName = 'ID_ESTIMATE'
      Origin = '"ESTIMATE_REQUESTS"."ID_ESTIMATE"'
    end
    object qEstReqID_CONSTR: TIntegerField
      FieldName = 'ID_CONSTR'
      Origin = '"ESTIMATE_REQUESTS"."ID_CONSTR"'
    end
    object qEstReqID_ESTIMATOR: TIntegerField
      FieldName = 'ID_ESTIMATOR'
      Origin = '"ESTIMATE_REQUESTS"."ID_ESTIMATOR"'
    end
    object qEstReqD_GET: TDateTimeField
      DisplayLabel = #1055#1088#1080#1085#1103#1090#1072' '#1089#1084#1077#1090#1095#1080#1082#1086#1084
      FieldName = 'D_GET'
      Origin = '"ESTIMATE_REQUESTS"."D_GET"'
    end
    object qEstReqD_FIX: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1077#1085#1072
      FieldName = 'D_FIX'
      Origin = '"ESTIMATE_REQUESTS"."D_FIX"'
    end
    object qEstReqMANAGER: TIBStringField
      DisplayLabel = #1052#1077#1085#1077#1076#1078#1077#1088
      FieldName = 'MANAGER'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEstReqCONSTR: TIBStringField
      DisplayLabel = #1050#1086#1085#1089#1090#1088#1091#1082#1090#1086#1088
      FieldName = 'CONSTR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEstReqESTIMATOR: TIBStringField
      DisplayLabel = #1057#1084#1077#1090#1095#1080#1082
      FieldName = 'ESTIMATOR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEstReqD_CREATE: TDateTimeField
      DisplayLabel = #1057#1086#1079#1076#1072#1085#1072
      FieldName = 'D_CREATE'
      Origin = '"ESTIMATE_REQUESTS"."D_CREATE"'
    end
    object qEstReqID_CREATOR: TIntegerField
      FieldName = 'ID_CREATOR'
      Origin = '"ESTIMATE_REQUESTS"."ID_CREATOR"'
    end
    object qEstReqCREATOR: TIBStringField
      DisplayLabel = #1057#1086#1079#1076#1072#1083
      FieldName = 'CREATOR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qEstReqGraph: TStringField
      DisplayLabel = 'G'
      FieldKind = fkCalculated
      FieldName = 'Graph'
      Size = 1
      Calculated = True
    end
    object qEstReqFill: TStringField
      DisplayLabel = '*'
      FieldKind = fkCalculated
      FieldName = 'Fill'
      Size = 1
      Calculated = True
    end
    object qEstReqNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1077#1082#1090
      FieldName = 'NAME'
      Origin = '"PROJECTS"."NAME"'
      Size = 80
    end
    object qEstReqREM: TBlobField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1088#1072#1089#1095#1077#1090#1095#1080#1082#1072
      FieldName = 'REM'
      Origin = '"ESTIMATE_REQUESTS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsEstReq: TDataSource
    DataSet = qEstReq
    Left = 792
    Top = 552
  end
  object mmT: TIBTransaction
    DefaultDatabase = dbIS
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 112
    Top = 304
  end
  object qIM: TIBQuery
    Database = dbIS
    Transaction = mmT
    Left = 112
    Top = 352
  end
  object qSH_BODY: TIBQuery
    Database = dbDOC
    Transaction = dT
    SQL.Strings = (
      'select ID_DOC, FILENAME, BODY from WORKDOCS'
      'where ID_DOC = :d1')
    Left = 112
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'd1'
        ParamType = ptUnknown
      end>
    object IntegerField2: TIntegerField
      FieldName = 'ID_DOC'
      Origin = '"WORKDOCS"."ID_DOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'FILENAME'
      Origin = '"WORKDOCS"."FILENAME"'
      Size = 128
    end
    object BlobField2: TBlobField
      FieldName = 'BODY'
      Origin = '"WORKDOCS"."BODY"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object upBody2: TIBQuery
    Database = dbDOC
    Transaction = dT
    SQL.Strings = (
      'UPDATE design_doc SET FILENAME = :f1, BODY = :b1'
      'where ID_DOC = :d1')
    Left = 32
    Top = 400
    ParamData = <
      item
        DataType = ftString
        Name = 'f1'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'b1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'd1'
        ParamType = ptUnknown
      end>
  end
end
