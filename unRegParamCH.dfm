object fmRegParam: TfmRegParam
  Left = 342
  Top = 64
  Width = 1040
  Height = 670
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1056#1077#1082#1074#1080#1079#1080#1090#1086#1074' '#1086#1073#1098#1077#1082#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 631
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 433
      Width = 1022
      Height = 1
      Cursor = crVSplit
      Align = alTop
    end
    object CoolBar1: TCoolBar
      Left = 1
      Top = 1
      Width = 1022
      Height = 29
      AutoSize = True
      Bands = <
        item
          Control = ToolBar1
          ImageIndex = -1
          Width = 1018
        end>
      object ToolBar1: TToolBar
        Left = 9
        Top = 0
        Width = 1005
        Height = 25
        Caption = 'ToolBar1'
        Flat = True
        Images = fmMain.il1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object tb9: TToolButton
          Left = 0
          Top = 0
          Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
          Caption = 'tb9'
          ImageIndex = 29
          OnClick = tb9Click
        end
        object ToolButton5: TToolButton
          Left = 23
          Top = 0
          Width = 18
          Caption = 'ToolButton5'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object tb8: TToolButton
          Left = 41
          Top = 0
          Hint = #1056#1072#1089#1082#1088#1099#1090#1100' '#1076#1077#1088#1077#1074#1086
          Caption = 'tb8'
          ImageIndex = 23
          Style = tbsCheck
          OnClick = tb8Click
        end
        object ToolButton8: TToolButton
          Left = 64
          Top = 0
          Width = 33
          Caption = 'ToolButton8'
          ImageIndex = 32
          Style = tbsSeparator
        end
        object tb10: TToolButton
          Left = 97
          Top = 0
          Caption = 'tb10'
          Enabled = False
          ImageIndex = 36
          OnClick = tb10Click
        end
        object ToolButton6: TToolButton
          Left = 120
          Top = 0
          Width = 25
          Caption = 'ToolButton6'
          ImageIndex = 37
          Style = tbsSeparator
        end
        object rbObj: TRadioButton
          Left = 145
          Top = 0
          Width = 128
          Height = 22
          Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1086#1073#1098#1077#1082#1090
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object rbOper: TRadioButton
          Left = 273
          Top = 0
          Width = 215
          Height = 22
          Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
          TabOrder = 0
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 434
      Width = 1022
      Height = 196
      Align = alClient
      Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1086#1074': '
      TabOrder = 1
      object Bevel2: TBevel
        Left = 2
        Top = 174
        Width = 1018
        Height = 20
        Align = alBottom
      end
      object CoolBar2: TCoolBar
        Left = 2
        Top = 15
        Width = 1018
        Height = 29
        AutoSize = True
        Bands = <
          item
            Control = ToolBar2
            ImageIndex = -1
            Width = 1014
          end>
        Images = fmMain.il1
        object ToolBar2: TToolBar
          Left = 9
          Top = 0
          Width = 1001
          Height = 25
          Caption = 'ToolBar2'
          Flat = True
          Images = fmMain.il1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolButton3: TToolButton
            Left = 0
            Top = 0
            Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
            Caption = 'ToolButton3'
            ImageIndex = 29
            OnClick = ToolButton3Click
          end
          object ToolButton4: TToolButton
            Left = 23
            Top = 0
            Width = 90
            Caption = 'ToolButton4'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object tb12: TToolButton
            Left = 113
            Top = 0
            Hint = #1042#1086' '#1074#1089#1077' '#1090#1080#1087#1099' '#1080#1079#1076#1077#1083#1080#1081
            Caption = 'tb12'
            ImageIndex = 10
            Style = tbsCheck
            OnClick = tb12Click
          end
          object ToolButton2: TToolButton
            Left = 136
            Top = 0
            Width = 49
            Caption = 'ToolButton2'
            ImageIndex = 25
            Style = tbsSeparator
          end
          object tbNew: TToolButton
            Left = 185
            Top = 0
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082' '#1087#1088#1086#1077#1082#1090#1091
            Caption = 'tbNew'
            ImageIndex = 24
            OnClick = tbNewClick
          end
          object ToolButton7: TToolButton
            Left = 208
            Top = 0
            Width = 57
            Caption = 'ToolButton7'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object tbDel: TToolButton
            Left = 265
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1087#1088#1086#1077#1082#1090#1072
            Caption = 'tbDel'
            ImageIndex = 23
            OnClick = tbDelClick
          end
          object ToolButton14: TToolButton
            Left = 288
            Top = 0
            Width = 168
            Caption = 'ToolButton14'
            ImageIndex = 24
            Style = tbsSeparator
          end
          object Label2: TLabel
            Left = 456
            Top = 0
            Width = 38
            Height = 22
            Caption = #1055#1086#1080#1089#1082': '
          end
          object ed_p: TEdit
            Left = 494
            Top = 0
            Width = 160
            Height = 22
            TabOrder = 0
            OnKeyDown = ed_pKeyDown
          end
        end
      end
      object dbgParamall: TDBGridEh
        Left = 2
        Top = 44
        Width = 1018
        Height = 130
        Align = alClient
        DataSource = dsParamALL
        DrawMemoText = True
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnSortMarkingChanged = dbgParamallSortMarkingChanged
        Columns = <
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'ID_MAIN_PARAM'
            Footers = <>
            Title.EndEllipsis = True
            Title.SortIndex = 1
            Title.SortMarker = smUpEh
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'NAME'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 311
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'AMOUNT'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 133
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'UNIT'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'REM'
            Footers = <>
            Title.EndEllipsis = True
            Title.TitleButton = True
            Width = 203
          end>
      end
    end
    object p3: TPanel
      Left = 1
      Top = 30
      Width = 1022
      Height = 403
      Align = alTop
      TabOrder = 2
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 1020
        Height = 401
        Align = alClient
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1087#1086' '#1090#1080#1087#1091' '#1080#1079#1076#1077#1083#1080#1103': '
        TabOrder = 0
        object Bevel1: TBevel
          Left = 2
          Top = 377
          Width = 1016
          Height = 22
          Align = alBottom
        end
        object Splitter2: TSplitter
          Left = 153
          Top = 15
          Width = 4
          Height = 362
        end
        object dbtries: TDBS_TreeView
          Left = 2
          Top = 15
          Width = 151
          Height = 362
          Align = alLeft
          HideSelection = False
          Indent = 19
          PopupMenu = pNEW
          TabOrder = 0
          OnClick = dbtriesClick
          OnEdited = dbtriesEdited
          OnKeyUp = dbtriesKeyUp
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
        object ed_names: TEdit
          Left = 816
          Top = 184
          Width = 121
          Height = 21
          TabOrder = 2
          Visible = False
          OnExit = ed_namesExit
          OnKeyPress = ed_namesKeyPress
        end
        object lcbAmount: TDBLookupComboboxEh
          Left = 816
          Top = 208
          Width = 121
          Height = 19
          DropDownBox.Rows = 10
          DropDownBox.Sizable = True
          EditButtons = <>
          Flat = True
          KeyField = 'ID_MP_SET'
          ListField = 'NAME'
          ListSource = dsamount
          TabOrder = 3
          Visible = False
          OnCloseUp = lcbAmountCloseUp
        end
        object pc1: TPageControl
          Left = 157
          Top = 15
          Width = 861
          Height = 362
          ActivePage = tsOper
          Align = alClient
          TabOrder = 4
          OnChange = pc1Change
          object tsObj: TTabSheet
            Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1086#1073#1098#1077#1082#1090#1072
            object dbgParamObj: TDBGridEh
              Left = 0
              Top = 29
              Width = 1001
              Height = 305
              Align = alClient
              DataSource = dsParamObj
              DrawMemoText = True
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = dbgParamObjCellClick
              OnGetCellParams = dbgParamObjGetCellParams
              OnKeyPress = dbgParamObjKeyPress
              OnMouseUp = dbgParamObjMouseUp
              OnSortMarkingChanged = dbgParamObjSortMarkingChanged
              Columns = <
                item
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'ID_MAIN_PARAM'
                  Footers = <>
                  ReadOnly = True
                  Title.EndEllipsis = True
                  Title.SortIndex = 1
                  Title.SortMarker = smUpEh
                  Title.TitleButton = True
                end
                item
                  Alignment = taCenter
                  Checkboxes = True
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'IN_CALC'
                  Footers = <>
                  KeyList.Strings = (
                    '1'
                    '0')
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                  Width = 72
                end
                item
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'PARAM'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
                end
                item
                  Checkboxes = True
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'IS_NOT_NULL'
                  Footers = <>
                  KeyList.Strings = (
                    '1'
                    '0')
                  Width = 93
                  OnUpdateData = dbgParamObjColumns2UpdateData
                end
                item
                  Checkboxes = True
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'IS_SECOND'
                  Footers = <>
                  KeyList.Strings = (
                    '1'
                    '0')
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                end
                item
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'POSIT'
                  Footers = <>
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                  Width = 74
                end
                item
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'AMOUNT'
                  Footers = <>
                  ReadOnly = True
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                  Width = 107
                end
                item
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'REM'
                  Footers = <>
                  ReadOnly = True
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                  Width = 175
                end
                item
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'UNIT'
                  Footers = <>
                end>
            end
            object CoolBar3: TCoolBar
              Left = 0
              Top = 0
              Width = 1001
              Height = 29
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar4
                  ImageIndex = -1
                  Width = 997
                end>
              object ToolBar4: TToolBar
                Left = 9
                Top = 0
                Width = 984
                Height = 25
                Caption = 'ToolBar4'
                Flat = True
                Images = fmMain.il1
                TabOrder = 0
                object tb5: TToolButton
                  Left = 0
                  Top = 0
                  Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
                  Caption = 'tb5'
                  ImageIndex = 26
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = tb5Click
                end
                object ToolButton17: TToolButton
                  Left = 23
                  Top = 0
                  Width = 105
                  Caption = 'ToolButton17'
                  ImageIndex = 2
                  Style = tbsSeparator
                end
                object tb3: TToolButton
                  Left = 128
                  Top = 0
                  Hint = #1042#1085#1080#1079
                  Caption = 'tb3'
                  ImageIndex = 23
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = tb3Click
                end
                object ToolButton12: TToolButton
                  Left = 151
                  Top = 0
                  Width = 25
                  Caption = 'ToolButton12'
                  ImageIndex = 1
                  Style = tbsSeparator
                end
                object tb4: TToolButton
                  Left = 176
                  Top = 0
                  Hint = #1042#1074#1077#1088#1093
                  Caption = 'tb4'
                  ImageIndex = 24
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = tb4Click
                end
              end
            end
          end
          object tsOper: TTabSheet
            Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099' '#1086#1087#1077#1088#1072#1094#1080#1081
            ImageIndex = 1
            object Splitter3: TSplitter
              Left = 369
              Top = 0
              Width = 0
              Height = 293
            end
            object dbgOper: TDBGridEh
              Left = 0
              Top = 0
              Width = 369
              Height = 293
              Align = alLeft
              DataSource = dsOper
              DrawMemoText = True
              Flat = True
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnKeyPress = dbgOperKeyPress
              OnMouseUp = dbgOperMouseUp
              OnSortMarkingChanged = dbgOperSortMarkingChanged
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'NAME'
                  Footers = <>
                  Width = 132
                end
                item
                  Checkboxes = True
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'PARAM_EXEC'
                  Footers = <>
                  KeyList.Strings = (
                    '1'
                    '0')
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                  Width = 77
                  OnUpdateData = dbgOperColumns1UpdateData
                end
                item
                  Checkboxes = True
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'PARAM_INTEG'
                  Footers = <>
                  KeyList.Strings = (
                    '1'
                    '0')
                  Title.EndEllipsis = True
                  Title.TitleButton = True
                  Width = 57
                  OnUpdateData = dbgOperColumns2UpdateData
                end
                item
                  Checkboxes = True
                  EditButtons = <>
                  EndEllipsis = True
                  FieldName = 'PARAM_KONTROL'
                  Footers = <>
                  KeyList.Strings = (
                    '1'
                    '0')
                  Title.Caption = #1053#1072' '#1082#1086#1085#1090#1088#1086#1083#1100
                  Title.TitleButton = True
                  Title.ToolTips = True
                  ToolTips = True
                  Width = 57
                  OnUpdateData = dbgOperColumns3UpdateData
                end>
            end
            object PageControl1: TPageControl
              Left = 369
              Top = 0
              Width = 484
              Height = 293
              ActivePage = TabSheet1
              Align = alClient
              TabOrder = 1
              object TabSheet1: TTabSheet
                Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
                object Panel2: TPanel
                  Left = 0
                  Top = 0
                  Width = 476
                  Height = 265
                  Align = alClient
                  Caption = 'Panel2'
                  TabOrder = 0
                  object dbgOperParam: TDBGridEh
                    Left = 1
                    Top = 30
                    Width = 474
                    Height = 234
                    Align = alClient
                    DataSource = dsOperParam
                    DrawMemoText = True
                    Flat = True
                    FooterColor = clWindow
                    FooterFont.Charset = DEFAULT_CHARSET
                    FooterFont.Color = clWindowText
                    FooterFont.Height = -11
                    FooterFont.Name = 'MS Sans Serif'
                    FooterFont.Style = []
                    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    UseMultiTitle = True
                    OnKeyPress = dbgOperParamKeyPress
                    OnSortMarkingChanged = dbgOperParamSortMarkingChanged
                    Columns = <
                      item
                        Alignment = taCenter
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'ID_MAIN_PARAM'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                      end
                      item
                        Alignment = taCenter
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'POSIT'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 57
                        OnUpdateData = dbgOperParamColumns1UpdateData
                      end
                      item
                        Alignment = taCenter
                        Checkboxes = True
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'IS_SECOND'
                        Footers = <>
                        KeyList.Strings = (
                          '1'
                          '0')
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        OnUpdateData = dbgOperParamColumns2UpdateData
                      end
                      item
                        Alignment = taCenter
                        Checkboxes = True
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'IS_WORK'
                        Footers = <>
                        KeyList.Strings = (
                          '1'
                          '0')
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        OnUpdateData = dbgOperParamColumns3UpdateData
                      end
                      item
                        Alignment = taCenter
                        Checkboxes = True
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'IN_CALC'
                        Footers = <>
                        KeyList.Strings = (
                          '1'
                          '0')
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        OnUpdateData = dbgOperParamColumns3UpdateData
                      end
                      item
                        Alignment = taCenter
                        Checkboxes = True
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'IS_NOT_NULL'
                        Footers = <>
                        KeyList.Strings = (
                          '1'
                          '0')
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 82
                        OnUpdateData = dbgOperParamColumns4UpdateData
                      end
                      item
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'PARAM'
                        Footers = <>
                        ReadOnly = True
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 249
                      end
                      item
                        Alignment = taCenter
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'AMOUNT'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 58
                      end
                      item
                        Alignment = taCenter
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'UNIT'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                        Width = 62
                      end
                      item
                        Alignment = taCenter
                        EditButtons = <>
                        EndEllipsis = True
                        FieldName = 'REM'
                        Footers = <>
                        Title.EndEllipsis = True
                        Title.TitleButton = True
                      end>
                  end
                  object CoolBar4: TCoolBar
                    Left = 1
                    Top = 1
                    Width = 474
                    Height = 29
                    AutoSize = True
                    Bands = <
                      item
                        Control = ToolBar3
                        ImageIndex = -1
                        Width = 470
                      end>
                    object ToolBar3: TToolBar
                      Left = 9
                      Top = 0
                      Width = 457
                      Height = 25
                      Caption = 'ToolBar3'
                      Flat = True
                      Images = fmMain.il1
                      TabOrder = 0
                      object tb7: TToolButton
                        Left = 0
                        Top = 0
                        Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
                        Caption = 'tb7'
                        ImageIndex = 26
                        ParentShowHint = False
                        ShowHint = True
                        OnClick = tb7Click
                      end
                      object ToolButton13: TToolButton
                        Left = 23
                        Top = 0
                        Width = 66
                        Caption = 'ToolButton13'
                        ImageIndex = 2
                        Style = tbsSeparator
                      end
                      object tb1: TToolButton
                        Left = 89
                        Top = 0
                        Hint = #1042#1085#1080#1079
                        Caption = #1074#1085#1080#1079
                        ImageIndex = 23
                        ParentShowHint = False
                        ShowHint = True
                        OnClick = tb1Click
                      end
                      object ToolButton15: TToolButton
                        Left = 112
                        Top = 0
                        Width = 17
                        Caption = 'ToolButton15'
                        ImageIndex = 2
                        Style = tbsSeparator
                      end
                      object tb2: TToolButton
                        Left = 129
                        Top = 0
                        Hint = #1042#1074#1077#1088#1093
                        Caption = #1074#1074#1077#1088#1093
                        ImageIndex = 24
                        ParentShowHint = False
                        ShowHint = True
                        OnClick = tb2Click
                      end
                    end
                  end
                end
              end
              object TabSheet2: TTabSheet
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
                ImageIndex = 1
                object CoolBar5: TCoolBar
                  Left = 0
                  Top = 0
                  Width = 657
                  Height = 29
                  AutoSize = True
                  Bands = <
                    item
                      Control = ToolBar5
                      ImageIndex = -1
                      Width = 653
                    end>
                  ParentShowHint = False
                  ShowHint = True
                  object ToolBar5: TToolBar
                    Left = 9
                    Top = 0
                    Width = 640
                    Height = 25
                    Caption = 'ToolBar5'
                    Flat = True
                    Images = fmMain.il1
                    TabOrder = 0
                    object ToolButton1: TToolButton
                      Left = 0
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton1'
                      Style = tbsSeparator
                    end
                    object tb11: TToolButton
                      Left = 8
                      Top = 0
                      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
                      Caption = 'tb11'
                      ImageIndex = 3
                      OnClick = tb11Click
                    end
                  end
                end
                object dbgRes: TDBGridEh
                  Left = 0
                  Top = 29
                  Width = 657
                  Height = 236
                  Align = alClient
                  DataSource = dsRes
                  DrawMemoText = True
                  Flat = True
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -11
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
                  TabOrder = 1
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  UseMultiTitle = True
                  OnKeyPress = dbgResKeyPress
                  Columns = <
                    item
                      EditButtons = <>
                      EndEllipsis = True
                      FieldName = 'ID_REASON'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                      Width = 79
                    end
                    item
                      EditButtons = <>
                      EndEllipsis = True
                      FieldName = 'NAME'
                      Footers = <>
                      Title.EndEllipsis = True
                      Title.TitleButton = True
                    end>
                end
              end
            end
            object Panel3: TPanel
              Left = 0
              Top = 293
              Width = 853
              Height = 41
              Align = alBottom
              TabOrder = 2
              DesignSize = (
                853
                41)
              object b2: TButton
                Left = 832
                Top = 5
                Width = 99
                Height = 25
                Anchors = [akRight, akBottom]
                Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
                TabOrder = 0
                OnClick = b2Click
              end
            end
          end
        end
        object gb1: TGroupBox
          Left = 272
          Top = 160
          Width = 225
          Height = 81
          Caption = ' '#1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1090#1072#1083#1086#1075#1072' '
          TabOrder = 1
          DesignSize = (
            225
            81)
          object ed_name: TEdit
            Left = 8
            Top = 24
            Width = 209
            Height = 21
            MaxLength = 15
            TabOrder = 0
          end
          object b1: TButton
            Left = 8
            Top = 48
            Width = 75
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #1047#1072#1087#1080#1089#1072#1090#1100
            TabOrder = 1
            OnClick = b1Click
          end
          object Button2: TButton
            Left = 142
            Top = 48
            Width = 75
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = #1042#1099#1093#1086#1076
            TabOrder = 2
            OnClick = Button2Click
          end
        end
      end
    end
  end
  object dsamount: TDataSource
    DataSet = qamount
    Left = 824
    Top = 272
  end
  object qParamObj: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterDelete = qParamObjAfterDelete
    AfterInsert = qParamObjAfterInsert
    AfterPost = qParamObjAfterPost
    BeforeDelete = qParamObjBeforeDelete
    BeforeInsert = qParamObjBeforeInsert
    SQL.Strings = (
      
        ' select s.id_pt_param, s.id_proj_type, s.id_unit, s.is_not_null,' +
        ' s.in_calc,'
      
        ' s.is_second, s.id_main_param, s.posit, s.rem, q.name unit, m.na' +
        'me param,'
      
        ' m.p_type,  coalesce(cast(s.amount as numeric (16,2)),(select q.' +
        'name from main_params_sets q'
      ' where q.id_mp_set = s.id_mp_set)) amount'
      ' from proj_types_params s'
      ' left join units q on q.id_unit = s.id_unit'
      'join main_params m on m.id_main_param = s.id_main_param'
      'order by (s.posit) ')
    Left = 897
    Top = 188
    object qParamObjID_MAIN_PARAM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"PROJ_TYPES_PARAMS"."ID_MAIN_PARAM"'
    end
    object qParamObjPARAM: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1072' '
      FieldName = 'PARAM'
      Origin = '"MAIN_PARAMS"."NAME"'
      Size = 64
    end
    object qParamObjUNIT: TIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      FieldName = 'UNIT'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qParamObjREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PROJ_TYPES_PARAMS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qParamObjPOSIT: TIntegerField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103
      FieldName = 'POSIT'
      Origin = '"PROJ_TYPES_PARAMS"."POSIT"'
    end
    object qParamObjID_PROJ_TYPE: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1090#1080#1087#1072' '#1087#1088#1086#1077#1082#1090#1072
      FieldName = 'ID_PROJ_TYPE'
      Origin = '"PROJ_TYPES_PARAMS"."ID_PROJ_TYPE"'
    end
    object qParamObjID_PT_PARAM: TIntegerField
      FieldName = 'ID_PT_PARAM'
      Origin = '"PROJ_TYPES_PARAMS"."ID_PT_PARAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qParamObjID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"PROJ_TYPES_PARAMS"."ID_UNIT"'
    end
    object qParamObjIS_NOT_NULL: TIntegerField
      DisplayLabel = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'IS_NOT_NULL'
      Origin = '"PROJ_TYPES_PARAMS"."IS_NOT_NULL"'
    end
    object qParamObjIN_CALC: TIntegerField
      DisplayLabel = #1044#1083#1103' '#1088#1072#1089#1095#1077#1090#1085#1086#1075#1086' '#1086#1090#1076#1077#1083#1072
      FieldName = 'IN_CALC'
      Origin = '"PROJ_TYPES_PARAMS"."IN_CALC"'
    end
    object qParamObjIS_SECOND: TIntegerField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'IS_SECOND'
      Origin = '"PROJ_TYPES_PARAMS"."IS_SECOND"'
    end
    object qParamObjP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"MAIN_PARAMS"."P_TYPE"'
    end
    object qParamObjAMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'AMOUNT'
      ProviderFlags = []
      Size = 64
    end
  end
  object qParamALL: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    SQL.Strings = (
      
        'select m.id_main_param, m.name,m.amount, m.rem, s.name unit, m.i' +
        'd_unit from main_params m left join units s on s.id_unit = m.id_' +
        'unit')
    GeneratorField.Field = 'ID_MAIN_PARAM'
    GeneratorField.Generator = 'MAIN_PARAMS_ID'
    Left = 761
    Top = 268
    object qParamALLID_MAIN_PARAM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"MAIN_PARAMS"."ID_MAIN_PARAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qParamALLNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'NAME'
      Origin = '"MAIN_PARAMS"."NAME"'
      Size = 64
    end
    object qParamALLAMOUNT: TIntegerField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'AMOUNT'
      Origin = '"MAIN_PARAMS"."AMOUNT"'
    end
    object qParamALLUNIT: TIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      FieldName = 'UNIT'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qParamALLREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"MAIN_PARAMS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qParamALLID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"MAIN_PARAMS"."ID_UNIT"'
    end
  end
  object dsParamObj: TDataSource
    DataSet = qParamObj
    Left = 897
    Top = 236
  end
  object dsParamALL: TDataSource
    DataSet = qParamALL
    Left = 761
    Top = 316
  end
  object upParamObj: TIBUpdateSQL
    ModifySQL.Strings = (
      'update proj_types_params'
      'set'
      '  POSIT = :POSIT,'
      '  in_calc = :in_calc,'
      '  is_second = :is_second,'
      '  is_not_null = :is_not_null'
      'where'
      '  ID_pt_param = :ID_pt_param')
    InsertSQL.Strings = (
      
        ' insert into proj_types_params (id_pt_param, id_proj_type, id_un' +
        'it, id_main_param, amount, posit, rem, is_not_null, in_calc, id_' +
        'mp_set, is_second, id_operation, strval)'
      
        ' values (:id_pt_param, :id_proj_type, :id_unit, :id_main_param, ' +
        ':amount, :posit, :rem, :is_not_null, :in_calc, :id_mp_set, :is_s' +
        'econd, :id_operation, :strval)')
    Left = 897
    Top = 284
  end
  object pNEW: TPopupMenu
    Left = 218
    Top = 175
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1080#1087' '#1080#1079#1076#1077#1083#1080#1103
      OnClick = N3Click
    end
  end
  object qamount: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    DataSource = dsParamObj
    SQL.Strings = (
      ' select s.name, s.id_mp_set, s.id_main_param'
      ' from main_params_sets s'
      'where s.id_main_param = :id_main_param'
      '')
    Left = 824
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_main_param'
        ParamType = ptUnknown
      end>
    object qamountNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"MAIN_PARAMS_SETS"."NAME"'
      Size = 64
    end
    object qamountID_MP_SET: TIntegerField
      FieldName = 'ID_MP_SET'
      Origin = '"MAIN_PARAMS_SETS"."ID_MP_SET"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qamountID_MAIN_PARAM: TIntegerField
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"MAIN_PARAMS_SETS"."ID_MAIN_PARAM"'
    end
  end
  object dsOperParam: TDataSource
    DataSet = qOperParam
    Left = 587
    Top = 166
  end
  object dsOper: TDataSource
    DataSet = qOper
    Left = 219
    Top = 302
  end
  object qOper: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterDelete = qOperAfterDelete
    AfterInsert = qOperAfterInsert
    AfterPost = qOperAfterPost
    AfterScroll = qOperAfterScroll
    BeforeDelete = qOperBeforeDelete
    BeforeEdit = qOperBeforeEdit
    BeforeInsert = qOperBeforeInsert
    SQL.Strings = (
      'select'
      'case when g.id_operation in'
      '(select id from get_str_param('
      '(select str_VALUE from IS$MOD_SYS_PARAMS where ID_SYS_PARAM = 10'
      '    and ID_MOD = 9),'#39','#39')) then 1 else 0 end param_exec,'
      ''
      ''
      '    case when g.id_operation in (select id from get_str_param('
      '(select str_VALUE from IS$MOD_SYS_PARAMS where ID_SYS_PARAM = 11'
      '    and ID_MOD = 9),'#39','#39')) then 1 else 0 end param_integ,'
      ''
      '     case when g.id_operation in (select id from get_str_param('
      '(select str_VALUE from IS$MOD_SYS_PARAMS where ID_SYS_PARAM = 55'
      '    and ID_MOD = 9),'#39','#39')) then 1 else 0 end param_kontrol'
      ''
      ',g.* from operations g'
      'where g.id_area = 620'
      'order by (g.id_posit)')
    UpdateObject = upOper
    Left = 216
    Top = 246
    object qOperNAME: TIBStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      FieldName = 'NAME'
      Origin = '"OPERATIONS"."NAME"'
      Size = 30
    end
    object qOperPARAM_EXEC: TIntegerField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      FieldName = 'PARAM_EXEC'
      KeyFields = 'NOT_CALC'
      ProviderFlags = []
    end
    object qOperPARAM_INTEG: TIntegerField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1080' ('#1080#1085#1090#1077#1075#1088#1072#1094#1080#1103')'
      FieldName = 'PARAM_INTEG'
      ProviderFlags = []
    end
    object qOperID_OPERATION: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'ID_OPERATION'
      Origin = '"OPERATIONS"."ID_OPERATION"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOperID_AREA: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1091#1095#1072#1089#1090#1082#1072
      FieldName = 'ID_AREA'
      Origin = '"OPERATIONS"."ID_AREA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOperSHORTNAME: TIBStringField
      FieldName = 'SHORTNAME'
      Origin = '"OPERATIONS"."SHORTNAME"'
      Size = 16
    end
    object qOperID_EQUIPMENT: TIntegerField
      FieldName = 'ID_EQUIPMENT'
      Origin = '"OPERATIONS"."ID_EQUIPMENT"'
    end
    object qOperCOST: TIBBCDField
      FieldName = 'COST'
      Origin = '"OPERATIONS"."COST"'
      Precision = 18
      Size = 4
    end
    object qOperEX_RATE: TIBBCDField
      FieldName = 'EX_RATE'
      Origin = '"OPERATIONS"."EX_RATE"'
      Precision = 18
      Size = 4
    end
    object qOperID_CURRENCY: TSmallintField
      FieldName = 'ID_CURRENCY'
      Origin = '"OPERATIONS"."ID_CURRENCY"'
    end
    object qOperID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"OPERATIONS"."ID_UNIT"'
    end
    object qOperARCH: TIBStringField
      FieldName = 'ARCH'
      Origin = '"OPERATIONS"."ARCH"'
      FixedChar = True
      Size = 1
    end
    object qOperN_PLACE: TFloatField
      FieldName = 'N_PLACE'
      Origin = '"OPERATIONS"."N_PLACE"'
    end
    object qOperREM: TMemoField
      FieldName = 'REM'
      Origin = '"OPERATIONS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOperIS_GROUP: TIntegerField
      FieldName = 'IS_GROUP'
      Origin = '"OPERATIONS"."IS_GROUP"'
    end
    object qOperCOST0: TFloatField
      FieldName = 'COST0'
      Origin = '"OPERATIONS"."COST0"'
    end
    object qOperCALC_TIME: TMemoField
      FieldName = 'CALC_TIME'
      Origin = '"OPERATIONS"."CALC_TIME"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOperID_OPER_TYPE: TIntegerField
      FieldName = 'ID_OPER_TYPE'
      Origin = '"OPERATIONS"."ID_OPER_TYPE"'
    end
    object qOperCALC_TOOLS: TMemoField
      FieldName = 'CALC_TOOLS'
      Origin = '"OPERATIONS"."CALC_TOOLS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOperCALC_TIME_P: TMemoField
      FieldName = 'CALC_TIME_P'
      Origin = '"OPERATIONS"."CALC_TIME_P"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOperID_POSIT: TIntegerField
      FieldName = 'ID_POSIT'
      Origin = '"OPERATIONS"."ID_POSIT"'
    end
    object qOperNOT_CALC: TIntegerField
      FieldName = 'NOT_CALC'
      Origin = '"OPERATIONS"."NOT_CALC"'
    end
    object qOperID_OP_GROUP: TIntegerField
      FieldName = 'ID_OP_GROUP'
      Origin = '"OPERATIONS"."ID_OP_GROUP"'
    end
    object qOperID_WCENTER: TIntegerField
      FieldName = 'ID_WCENTER'
      Origin = '"OPERATIONS"."ID_WCENTER"'
    end
    object qOperPOST_AMOUNT: TIntegerField
      FieldName = 'POST_AMOUNT'
      Origin = '"OPERATIONS"."POST_AMOUNT"'
    end
    object qOperPROJ_TYPE: TIntegerField
      FieldName = 'PROJ_TYPE'
      Origin = '"OPERATIONS"."PROJ_TYPE"'
    end
    object qOperPARAM_KONTROL: TIntegerField
      FieldName = 'PARAM_KONTROL'
      LookupDataSet = qParamObj
      LookupKeyFields = 'PARAM_KONTROL'
      LookupResultField = 'PARAM_KONTROL'
      ProviderFlags = []
    end
  end
  object qOperParam: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterDelete = qOperParamAfterDelete
    AfterInsert = qOperParamAfterInsert
    AfterPost = qOperParamAfterPost
    BeforeDelete = qOperParamBeforeDelete
    BeforeInsert = qOperParamBeforeInsert
    SQL.Strings = (
      
        '  select s.id_pt_param, s.id_proj_type, s.id_unit,s.is_not_null,' +
        '     is_work, s.id_main_param,'
      
        '    s.posit, s.rem, q.name unit, m.name param, s.in_calc, s.is_s' +
        'econd,'
      
        '    m.p_type, coalesce(cast(s.amount as numeric (16,2)),(select ' +
        'q.name from     main_params_sets q'
      
        '    where q.id_mp_set = s.id_mp_set)) amount from proj_types_par' +
        'ams s'
      '    left join units q on q.id_unit = s.id_unit'
      '    join main_params m on m.id_main_param = s.id_main_param'
      
        '    where s.id_proj_type = :id_proj_type and s.id_operation = :i' +
        'd_operation'
      '    Order by (s.posit)')
    UpdateObject = uoOperParam
    Left = 587
    Top = 118
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_proj_type'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_operation'
        ParamType = ptUnknown
      end>
    object qOperParamID_MAIN_PARAM: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'ID_MAIN_PARAM'
      Origin = '"PROJ_TYPES_PARAMS"."ID_MAIN_PARAM"'
    end
    object qOperParamPOSIT: TIntegerField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103
      FieldName = 'POSIT'
      Origin = '"PROJ_TYPES_PARAMS"."POSIT"'
    end
    object qOperParamPARAM: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1072
      FieldName = 'PARAM'
      Origin = '"MAIN_PARAMS"."NAME"'
      Size = 64
    end
    object qOperParamAMOUNT: TIBStringField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'AMOUNT'
      ProviderFlags = []
      Size = 64
    end
    object qOperParamUNIT: TIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      FieldName = 'UNIT'
      Origin = '"UNITS"."NAME"'
      Size = 16
    end
    object qOperParamREM: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'REM'
      Origin = '"PROJ_TYPES_PARAMS"."REM"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qOperParamIS_WORK: TIntegerField
      DisplayLabel = #1047#1072#1087#1088#1077#1090' '#1085#1072' '#1076#1086#1088#1072#1073#1086#1090#1082#1091
      FieldName = 'IS_WORK'
      Origin = '"PROJ_TYPES_PARAMS"."IS_WORK"'
    end
    object qOperParamIS_NOT_NULL: TIntegerField
      DisplayLabel = #1054#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'IS_NOT_NULL'
      Origin = '"PROJ_TYPES_PARAMS"."IS_NOT_NULL"'
    end
    object qOperParamID_PT_PARAM: TIntegerField
      FieldName = 'ID_PT_PARAM'
      Origin = '"PROJ_TYPES_PARAMS"."ID_PT_PARAM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOperParamID_PROJ_TYPE: TIntegerField
      FieldName = 'ID_PROJ_TYPE'
      Origin = '"PROJ_TYPES_PARAMS"."ID_PROJ_TYPE"'
    end
    object qOperParamID_UNIT: TIntegerField
      FieldName = 'ID_UNIT'
      Origin = '"PROJ_TYPES_PARAMS"."ID_UNIT"'
    end
    object qOperParamIN_CALC: TIntegerField
      DisplayLabel = #1044#1083#1103' '#1088#1072#1089#1095#1077#1090#1085#1086#1075#1086' '#1086#1090#1076#1077#1083#1072
      FieldName = 'IN_CALC'
      Origin = '"PROJ_TYPES_PARAMS"."IN_CALC"'
    end
    object qOperParamIS_SECOND: TIntegerField
      DisplayLabel = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FieldName = 'IS_SECOND'
      Origin = '"PROJ_TYPES_PARAMS"."IS_SECOND"'
    end
    object qOperParamP_TYPE: TIntegerField
      FieldName = 'P_TYPE'
      Origin = '"MAIN_PARAMS"."P_TYPE"'
    end
  end
  object uoOperParam: TIBUpdateSQL
    ModifySQL.Strings = (
      'update proj_types_params'
      'set'
      '  id_mp_set = :id_mp_set,'
      '  in_calc = :in_calc,'
      '  is_second = :is_second,'
      '  is_not_null = :is_not_null,'
      '  is_work = :is_work'
      'where'
      '  ID_pt_PARAM = :ID_pt_PARAM')
    InsertSQL.Strings = (
      ''
      
        'insert into proj_types_params (id_pt_param, id_proj_type, id_uni' +
        't, id_main_param, amount, posit, rem, is_not_null, in_calc, id_m' +
        'p_set, is_second, id_operation, strval)'
      
        ' values (:id_pt_param, :id_proj_type, :id_unit, :id_main_param, ' +
        ':amount, :posit, :rem, :is_not_null, :in_calc, :id_mp_set, :is_s' +
        'econd, :id_operation, :strval)'
      '')
    Left = 587
    Top = 214
  end
  object qRes: TIBQuery
    Database = dmIS.dbIS
    Transaction = dmIS.mT
    AfterDelete = qResAfterDelete
    AfterPost = qResAfterPost
    BeforeDelete = qResBeforeDelete
    BeforePost = qResBeforePost
    OnNewRecord = qResNewRecord
    DataSource = dsOper
    SQL.Strings = (
      'select id_reason, name, id_all'
      ' from reasons_diff'
      'where id_all = :id_operation and id_parent = 20')
    GeneratorField.Field = 'ID_REASON'
    GeneratorField.Generator = 'OBJ_ID'
    Left = 691
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_operation'
        ParamType = ptUnknown
      end>
    object qResID_REASON: TIntegerField
      DisplayLabel = #1050#1086#1076' '#1087#1088#1080#1084#1077#1095#1072#1085#1080#1103
      FieldName = 'ID_REASON'
      Origin = '"REASONS_DIFF"."ID_REASON"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qResNAME: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"REASONS_DIFF"."NAME"'
      Size = 64
    end
    object qResID_ALL: TIntegerField
      FieldName = 'ID_ALL'
      Origin = '"REASONS_DIFF"."ID_ALL"'
    end
  end
  object dsRes: TDataSource
    DataSet = qRes
    Left = 691
    Top = 222
  end
  object upRes: TIBUpdateSQL
    RefreshSQL.Strings = (
      '')
    ModifySQL.Strings = (
      'update reasons_diff'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID_REASON = :ID_REASON')
    InsertSQL.Strings = (
      'insert into reasons_diff'
      '  (id_reason, id_parent, name, id_all)'
      'values'
      '  (:id_reason, 20, :name, :id_all)')
    DeleteSQL.Strings = (
      '')
    Left = 643
    Top = 270
  end
  object upOper: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select *'
      'from operations '
      'where'
      '  ID_OPERATION = :ID_OPERATION')
    ModifySQL.Strings = (
      'update operations'
      'set'
      '  id_area = :id_area'
      'where'
      '  ID_OPERATION = :ID_OPERATION')
    InsertSQL.Strings = (
      'insert into operations'
      '  (USER_OPER)'
      'values'
      '  (:USER_OPER)')
    Left = 643
    Top = 222
  end
end
