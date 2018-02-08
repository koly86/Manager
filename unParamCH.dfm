object fmParamCH: TfmParamCH
  Left = 287
  Top = 120
  Width = 971
  Height = 640
  Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1080' '#1082#1086#1084#1087#1083#1077#1082#1090#1091#1102#1097#1080#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object p1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 606
    Align = alClient
    TabOrder = 0
    DesignSize = (
      963
      606)
    object b1: TBevel
      Left = 1
      Top = 568
      Width = 961
      Height = 37
      Align = alBottom
      Shape = bsTopLine
    end
    object pc1: TPageControl
      Left = 1
      Top = 1
      Width = 961
      Height = 567
      ActivePage = tsParamOper
      Align = alClient
      TabOrder = 0
      OnChange = pc1Change
      object tsObject_Info: TTabSheet
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1086#1073#1098#1077#1082#1090#1072
        ImageIndex = 3
        object Splitter2: TSplitter
          Left = 265
          Top = 0
          Height = 539
        end
        object gbTrees: TGroupBox
          Left = 0
          Top = 0
          Width = 265
          Height = 539
          Align = alLeft
          Caption = ' '#1058#1080#1087' '#1080#1079#1076#1077#1083#1080#1103' '
          TabOrder = 0
          object dbtrees: TDBS_TreeView
            Left = 2
            Top = 15
            Width = 261
            Height = 522
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            HideSelection = False
            Indent = 19
            ReadOnly = True
            TabOrder = 0
            OnClick = dbtreesClick
            Database = dmIS.dbIS
            Transaction = dmIS.mT
            RootId = 0
            TableName = 'proj_chain_types'
            FieldId = 'id_ch_type'
            FieldParentId = 'id_parent'
            FieldName = 'name'
            FieldState = 'posit'
            RootName = #1058#1080#1087' '#1087#1088#1086#1077#1082#1090#1072
            FieldSort = 'posit'
          end
        end
        object pObject: TPanel
          Left = 268
          Top = 0
          Width = 685
          Height = 539
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            685
            539)
          object LNameObj: TLabel
            Left = 11
            Top = 120
            Width = 124
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072':'
          end
          object Label1: TLabel
            Left = 11
            Top = 40
            Width = 61
            Height = 13
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
          end
          object Label2: TLabel
            Left = 11
            Top = 80
            Width = 40
            Height = 13
            Caption = #1055#1088#1086#1077#1082#1090':'
          end
          object Label3: TLabel
            Left = 9
            Top = 160
            Width = 116
            Height = 13
            Caption = #1044#1072#1090#1072' '#1086#1090#1075#1088#1091#1079#1082#1080' '#1079#1072#1082#1072#1079#1072':'
          end
          object Label4: TLabel
            Left = 189
            Top = 161
            Width = 156
            Height = 13
            Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1080':'
          end
          object Label5: TLabel
            Left = 10
            Top = 215
            Width = 125
            Height = 13
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1087#1086' '#1086#1073#1098#1077#1082#1090#1091':'
          end
          object Label6: TLabel
            Left = 11
            Top = 0
            Width = 67
            Height = 13
            Caption = #1058#1080#1087' '#1080#1079#1076#1077#1083#1080#1103':'
          end
          object ed_name_obj: TEdit
            Left = 11
            Top = 136
            Width = 313
            Height = 21
            TabOrder = 0
          end
          object lcbCust: TDBLookupComboboxEh
            Left = 12
            Top = 56
            Width = 313
            Height = 19
            DropDownBox.AutoDrop = True
            DropDownBox.Rows = 12
            DropDownBox.Sizable = True
            EditButtons = <>
            Flat = True
            KeyField = 'ID_ITEM'
            ListField = 'NAME'
            ListSource = fmCliOrds.dsClients
            Style = csDropDownEh
            TabOrder = 1
            Visible = True
          end
          object lcbProject: TDBLookupComboboxEh
            Left = 12
            Top = 96
            Width = 313
            Height = 19
            DropDownBox.AutoDrop = True
            DropDownBox.Rows = 12
            DropDownBox.Sizable = True
            EditButtons = <>
            Flat = True
            KeyField = 'ID_PROJECT'
            ListField = 'NAME'
            ListSource = fmCliOrds.dsPrj
            Style = csDropDownEh
            TabOrder = 2
            Visible = True
          end
          object dbOtgruz: TDBDateTimeEditEh
            Left = 11
            Top = 176
            Width = 169
            Height = 19
            EditButtons = <>
            Flat = True
            Kind = dtkDateEh
            TabOrder = 3
            Visible = True
          end
          object dbClose: TDBDateTimeEditEh
            Left = 189
            Top = 176
            Width = 169
            Height = 19
            EditButtons = <>
            Flat = True
            Kind = dtkDateEh
            TabOrder = 4
            Visible = True
          end
          object bNew: TButton
            Left = 428
            Top = 514
            Width = 121
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 5
            OnClick = bNewClick
          end
          object bClose: TButton
            Left = 556
            Top = 514
            Width = 129
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = #1054#1090#1084#1077#1085#1072
            TabOrder = 6
            OnClick = bCloseClick
          end
          object mMes: TMemo
            Left = 8
            Top = 232
            Width = 670
            Height = 268
            Anchors = [akLeft, akTop, akRight, akBottom]
            ScrollBars = ssVertical
            TabOrder = 7
          end
          object ed_type: TEdit
            Left = 11
            Top = 16
            Width = 313
            Height = 21
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
        end
      end
      object tsParamObj: TTabSheet
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1086#1073#1098#1077#1082#1090#1072
        ImageIndex = 1
        object Splitter1: TSplitter
          Left = 0
          Top = 390
          Width = 953
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object CoolBar2: TCoolBar
          Left = 0
          Top = 0
          Width = 953
          Height = 29
          AutoSize = True
          Bands = <
            item
              Control = ToolBar2
              ImageIndex = -1
              Width = 949
            end>
          object ToolBar2: TToolBar
            Left = 9
            Top = 0
            Width = 936
            Height = 25
            Caption = 'ToolBar2'
            Flat = True
            Images = fmMain.il1
            TabOrder = 0
            object ToolButton2: TToolButton
              Left = 0
              Top = 0
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
              Caption = 'ToolButton2'
              ImageIndex = 29
              OnClick = ToolButton2Click
            end
            object ToolButton4: TToolButton
              Left = 23
              Top = 0
              Width = 34
              Caption = 'ToolButton4'
              ImageIndex = 30
              Style = tbsSeparator
            end
            object ToolButton5: TToolButton
              Left = 57
              Top = 0
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
              Caption = 'ToolButton5'
              ImageIndex = 26
              OnClick = ToolButton5Click
            end
          end
        end
        object dbgParamObj: TDBGridEh
          Left = 0
          Top = 29
          Width = 953
          Height = 361
          Align = alClient
          DataSource = dsParamObj
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FrozenCols = 2
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = dbgParamObjCellClick
          OnGetCellParams = dbgParamObjGetCellParams
          OnMouseDown = dbgParamObjMouseDown
          OnSortMarkingChanged = dbgParamObjSortMarkingChanged
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ID_MAIN_PARAM'
              Footers = <>
            end
            item
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'PARAM'
              Footers = <>
              Title.EndEllipsis = True
              Width = 289
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'AMOUNT'
              Footers = <>
              Title.EndEllipsis = True
              Width = 158
            end
            item
              Alignment = taCenter
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'NAME'
              Footers = <>
              Title.EndEllipsis = True
              Width = 121
            end
            item
              Alignment = taCenter
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'D_FIX'
              Footers = <>
              Title.EndEllipsis = True
              Width = 135
            end
            item
              Alignment = taCenter
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'EDITOR'
              Footers = <>
              Title.EndEllipsis = True
              Width = 192
            end>
        end
        object ed_p: TEdit
          Left = 833
          Top = 322
          Width = 121
          Height = 21
          TabOrder = 2
          OnExit = ed_pExit
          OnKeyDown = ed_pKeyDown
          OnKeyPress = ed_pKeyPress
        end
        object lcbparam: TDBLookupComboboxEh
          Left = 833
          Top = 346
          Width = 121
          Height = 19
          DropDownBox.Rows = 10
          DropDownBox.Sizable = True
          DropDownBox.Width = 150
          EditButtons = <>
          Flat = True
          KeyField = 'ID_MP_SET'
          ListField = 'NAME'
          ListSource = dsParam_pos
          TabOrder = 3
          Visible = True
          OnCloseUp = lcbparamCloseUp
          OnExit = lcbparamExit
        end
        object GB2: TGroupBox
          Left = 0
          Top = 393
          Width = 953
          Height = 146
          Align = alBottom
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1087#1086' '#1086#1073#1098#1077#1082#1090#1091' '
          TabOrder = 4
          object dbM5: TDBMemo
            Left = 2
            Top = 15
            Width = 949
            Height = 129
            Align = alClient
            DataField = 'DESCR'
            DataSource = fmCliOrds.dsNewCH
            TabOrder = 0
            OnKeyUp = dbM5KeyUp
          end
        end
      end
      object tsParamOper: TTabSheet
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
        object sp3: TSplitter
          Left = 0
          Top = 385
          Width = 953
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Beveled = True
        end
        object CoolBar1: TCoolBar
          Left = 0
          Top = 0
          Width = 953
          Height = 29
          AutoSize = True
          Bands = <
            item
              Control = ToolBar1
              ImageIndex = -1
              Width = 949
            end>
          object ToolBar1: TToolBar
            Left = 9
            Top = 0
            Width = 936
            Height = 25
            Caption = 'ToolBar1'
            Flat = True
            Images = fmMain.il1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Caption = 'ToolButton1'
              ImageIndex = 29
              OnClick = ToolButton1Click
            end
            object ToolButton6: TToolButton
              Left = 23
              Top = 0
              Width = 26
              Caption = 'ToolButton6'
              ImageIndex = 30
              Style = tbsSeparator
            end
            object ToolButton7: TToolButton
              Left = 49
              Top = 0
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
              Caption = 'ToolButton7'
              ImageIndex = 26
              OnClick = ToolButton7Click
            end
          end
        end
        object dbgParam: TDBGridEh
          Left = 0
          Top = 29
          Width = 953
          Height = 356
          Align = alTop
          DataSource = dsParamCH
          DrawMemoText = True
          EvenRowColor = clWindow
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = dbgParamCellClick
          OnGetCellParams = dbgParamGetCellParams
          OnMouseDown = dbgParamMouseDown
          OnSortMarkingChanged = dbgParamSortMarkingChanged
          Columns = <
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'ID_MAIN_PARAM'
              Footers = <>
            end
            item
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'PARAM'
              Footers = <>
              Title.EndEllipsis = True
              Width = 258
            end
            item
              Alignment = taCenter
              Color = clInfoBk
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'AMOUNT'
              Footers = <>
              Title.EndEllipsis = True
              Width = 173
            end
            item
              Alignment = taCenter
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'NAME'
              Footers = <>
              Title.EndEllipsis = True
              Width = 72
            end
            item
              Alignment = taCenter
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'D_FIX'
              Footers = <>
              Title.EndEllipsis = True
            end
            item
              Alignment = taCenter
              EditButtons = <>
              EndEllipsis = True
              FieldName = 'EDITOR'
              Footers = <>
              Title.EndEllipsis = True
              Width = 182
            end>
        end
        object ed_param: TEdit
          Left = 826
          Top = 342
          Width = 129
          Height = 21
          TabOrder = 2
          OnExit = ed_paramExit
          OnKeyDown = ed_paramKeyDown
          OnKeyPress = ed_paramKeyPress
        end
        object dbl: TDBLookupComboboxEh
          Left = 826
          Top = 366
          Width = 129
          Height = 19
          DropDownBox.Rows = 10
          DropDownBox.Sizable = True
          DropDownBox.Width = 150
          EditButtons = <>
          Flat = True
          KeyField = 'ID_MP_SET'
          ListField = 'NAME'
          ListSource = dsParam_pos
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = True
          OnCloseUp = dblCloseUp
          OnExit = dblExit
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 388
          Width = 953
          Height = 151
          Align = alClient
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1080' '
          TabOrder = 4
          object mRem: TDBMemo
            Left = 2
            Top = 15
            Width = 949
            Height = 134
            Align = alClient
            DataField = 'DESCR'
            DataSource = fmCliOrds.dsWorkCH
            ScrollBars = ssVertical
            TabOrder = 0
            OnKeyUp = mRemKeyUp
          end
        end
      end
      object tsComplect: TTabSheet
        Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1091#1102#1097#1080#1077
        ImageIndex = 2
        TabVisible = False
        object CoolBar3: TCoolBar
          Left = 0
          Top = 0
          Width = 777
          Height = 29
          AutoSize = True
          Bands = <
            item
              Control = ToolBar3
              ImageIndex = -1
              Width = 773
            end>
          object ToolBar3: TToolBar
            Left = 9
            Top = 0
            Width = 760
            Height = 25
            Caption = 'ToolBar3'
            Flat = True
            Images = fmMain.il1
            TabOrder = 0
            object ToolButton3: TToolButton
              Left = 0
              Top = 0
              Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
              Caption = 'ToolButton3'
              ImageIndex = 29
            end
            object ToolButton8: TToolButton
              Left = 23
              Top = 0
              Width = 42
              Caption = 'ToolButton8'
              ImageIndex = 30
              Style = tbsSeparator
            end
            object ToolButton9: TToolButton
              Left = 65
              Top = 0
              Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
              Caption = 'ToolButton9'
              ImageIndex = 26
              OnClick = ToolButton9Click
            end
          end
        end
        object dbgComplect: TDBGridEh
          Left = 0
          Top = 29
          Width = 777
          Height = 394
          Align = alClient
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object bExit: TButton
      Left = 830
      Top = 577
      Width = 129
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 1
      OnClick = bExitClick
    end
    object bSave: TBitBtn
      Left = 704
      Top = 577
      Width = 123
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 2
      OnClick = bSaveClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object qParamCH: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterPost = qParamCHAfterPost
    SQL.Strings = (
      'select distinct t.id_main_param, m.name param, u.name,'
      'case when m.p_type = 2 then substring(t.strvalue from 1 for 128)'
      'when m.p_type = 1 then (select q.name from main_params_sets q'
      
        'where q.id_mp_set = t.id_mp_set) else cast(t.amount as numeric (' +
        '16,2))'
      'end amount, t.d_fix, p.fio editor, m.p_type, t.id_fix,'
      '(select distinct d.is_work from proj_types_params d where'
      
        'd.id_proj_type = c.id_proj_type and d.id_operation = f.id_operat' +
        'ion) is_work'
      'from proj_chain_traff_params t'
      'join main_params m on m.id_main_param = t.id_main_param'
      
        'left join main_params_sets s on s.id_main_param = t.id_main_para' +
        'm'
      'left join units u on u.id_unit = m.id_unit'
      'left join personnel p on p.id_p = t.id_fix'
      'join proj_chain_traff f on f.id_chain_traff = t.id_chain_traff'
      'join proj_chains c on c.id_proj_chain = f.id_chain'
      
        'left join proj_types_params r on r.id_main_param = t.id_main_par' +
        'am and'
      
        'r.id_proj_type = c.id_proj_type and r.id_operation = f.id_operat' +
        'ion'
      'where t.id_chain_traff = :id_chain_traff order by (r.posit)')
    Left = 720
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_chain_traff'
        ParamType = ptUnknown
      end>
    object qParamCHID_MAIN_PARAM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"MAIN_PARAMS"."ID_MAIN_PARAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qParamCHPARAM: TIBStringField
      DisplayLabel = #1056#1077#1082#1074#1080#1079#1080#1090
      FieldName = 'PARAM'
      Origin = '"MAIN_PARAMS"."NAME"'
      Size = 64
    end
    object qParamCHAMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'AMOUNT'
      ProviderFlags = []
      Size = 128
    end
    object qParamCHNAME: TIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      FieldName = 'NAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qParamCHP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"MAIN_PARAMS"."P_TYPE"'
    end
    object qParamCHD_FIX: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      FieldName = 'D_FIX'
      Origin = '"PROJ_CHAIN_TRAFF_PARAMS"."D_FIX"'
    end
    object qParamCHEDITOR: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077' '#1080#1079#1084#1077#1085#1080#1083
      FieldName = 'EDITOR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qParamCHIS_NOT_NULL: TIntegerField
      FieldName = 'IS_NOT_NULL'
      Origin = '"PROJ_TYPES_PARAMS"."IS_NOT_NULL"'
    end
    object qParamCHID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJ_CHAIN_TRAFF_PARAMS"."ID_FIX"'
    end
    object qParamCHIS_WORK: TIntegerField
      FieldName = 'IS_WORK'
      ProviderFlags = []
    end
  end
  object dsParamCH: TDataSource
    DataSet = qParamCH
    Left = 720
    Top = 88
  end
  object qParam_pos: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsParamCH
    SQL.Strings = (
      '  select s.name, s.id_mp_set, s.id_main_param'
      ' from main_params_sets s'
      'where s.id_main_param = :id_main_param')
    Left = 724
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_MAIN_PARAM'
        ParamType = ptUnknown
        Size = 4
      end>
    object qParam_posNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"MAIN_PARAMS_SETS"."NAME"'
      Size = 64
    end
    object qParam_posID_MP_SET: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"MAIN_PARAMS_SETS"."ID_MP_SET"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qParam_posID_MAIN_PARAM: TIntegerField
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"MAIN_PARAMS_SETS"."ID_MAIN_PARAM"'
    end
  end
  object dsParam_pos: TDataSource
    DataSet = qParam_pos
    Left = 724
    Top = 188
  end
  object qParamObj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterPost = qParamObjAfterPost
    SQL.Strings = (
      
        '   select distinct s.id_main_param, m.name param, u.name, s.id_f' +
        'ix,'
      
        '   case when m.p_type = 2 then substring(s.strvalue from 1 for 1' +
        '28)'
      '   when m.p_type = 1 then (select q.name from main_params_sets q'
      
        '   where q.id_mp_set = s.id_mp_set) else cast(s.amount as numeri' +
        'c (16,2))'
      '   end amount, m.p_type, s.d_fix, p.fio editor, t.is_not_null'
      
        '   from proj_chain_params s join proj_chains cs on cs.id_proj_ch' +
        'ain = s.id_chain'
      
        '   left join proj_types_params t on t.id_main_param = s.id_main_' +
        'param'
      
        '   and t.id_proj_type = cs.id_proj_type and t.id_operation is nu' +
        'll'
      '   join main_params m on m.id_main_param = s.id_main_param'
      
        '   left join main_params_sets ms on ms.id_main_param = s.id_main' +
        '_param'
      '   left join units u on u.id_unit = m.id_unit'
      '   left join personnel p on p.id_p = s.id_fix'
      '   where s.id_chain = :id_proj_chain order by (t.posit)')
    Left = 656
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_proj_chain'
        ParamType = ptUnknown
      end>
    object qParamObjID_MAIN_PARAM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"MAIN_PARAMS"."ID_MAIN_PARAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qParamObjPARAM: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'PARAM'
      Origin = '"MAIN_PARAMS"."NAME"'
      Size = 64
    end
    object qParamObjAMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'AMOUNT'
      ProviderFlags = []
      Size = 128
    end
    object qParamObjNAME: TIBStringField
      DisplayLabel = #1045#1076'.'#1048#1079#1084'.'
      FieldName = 'NAME'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qParamObjD_FIX: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      FieldName = 'D_FIX'
      Origin = '"PROJ_CHAIN_PARAMS"."D_FIX"'
    end
    object qParamObjEDITOR: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077' '#1080#1079#1084#1077#1085#1080#1083
      FieldName = 'EDITOR'
      Origin = '"PERSONNEL"."FIO"'
      Size = 60
    end
    object qParamObjP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"MAIN_PARAMS"."P_TYPE"'
    end
    object qParamObjID_FIX: TIntegerField
      FieldName = 'ID_FIX'
      Origin = '"PROJ_CHAIN_PARAMS"."ID_FIX"'
    end
    object qParamObjIS_NOT_NULL: TIntegerField
      FieldName = 'IS_NOT_NULL'
      Origin = '"PROJ_TYPES_PARAMS"."IS_NOT_NULL"'
    end
  end
  object dsParamObj: TDataSource
    DataSet = qParamObj
    Left = 656
    Top = 88
  end
end
