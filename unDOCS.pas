unit unDOCS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, Grids, DBGrids, DBCtrls, ExtCtrls, ComCtrls, ToolWin,
  DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Buttons, DBTrees, DB,
  IBCustomDataSet, IBQuery, unMainForm;

type
  TfmDOCS = class(TMainForm)
    p3: TPanel;
    p4: TPanel;
    m1: TMemo;
    Splitter1: TSplitter;
    dbt1: TDB_TreeView;
    Panel1: TPanel;
    cb1: TCheckBox;
    qROW: TIBQuery;
    qROWDATA_TYPE: TSmallintField;
    qROWDEF_VALUE: TMemoField;
    qROWSTATUS: TSmallintField;
    Panel2: TPanel;
    bb1: TBitBtn;
    qDOC: TIBQuery;
    qDOCID_PROJECT_DOC: TIntegerField;
    qDOCID_PROJECT: TIntegerField;
    qDOCDOC_TYPE: TIntegerField;
    qDOCNUMBER: TIBStringField;
    qDOCD_DOC: TDateField;
    qDOCD_IN: TDateField;
    qDOCD_OUT: TDateField;
    qDOCD_PROD: TDateField;
    qDOCD_SHIPP: TDateField;
    qDOCD_FIX: TDateTimeField;
    qDOCID_FIX: TIntegerField;
    qDOCSTATUS: TIntegerField;
    qDOCID_DRAFT: TIntegerField;
    qDOCID_FOTO: TIntegerField;
    qDOCnTYPE: TStringField;
    qDOCID_SDOC: TIntegerField;
    qDOCD_FILL: TDateTimeField;
    qDOCID_FILL: TIntegerField;
    qDOCfILL: TStringField;
    qDOCNAME: TIBStringField;
    qDOCGraph: TStringField;
    qDOCiSSTR: TIntegerField;
    qDOCnSTATUS: TStringField;
    dsDOC: TDataSource;
    qDOC_TYPE: TIBQuery;
    qDOC_TYPEID_PROJ_DOC_TYPE: TIntegerField;
    qDOC_TYPEIS_STRUCTURED: TSmallintField;
    qDOC_TYPENAME: TIBStringField;
    qDOC_TYPEsTR: TStringField;
    dsDOC_TYPE: TDataSource;
    qPrj: TIBQuery;
    qPrjID_PROJECT: TIntegerField;
    qPrjBRIEF: TIBStringField;
    qPrjID_MANAGER: TIntegerField;
    qPrjID_AGENT: TIntegerField;
    qPrjID_BRAND: TIntegerField;
    qPrjNAME: TIBStringField;
    qPrjSTATUS: TIntegerField;
    qPrjDATA: TDateField;
    qPrjID_PROJ_TYPE: TIntegerField;
    qPrjBNAME: TIBStringField;
    qPrjID_EDIT: TIntegerField;
    qPrjD_CLOSE: TDateTimeField;
    qPrjID_CLOSE: TIntegerField;
    qPrjID_DESIGNER: TIntegerField;
    qPrjD_EDIT: TDateTimeField;
    qPrjD_FIX: TDateTimeField;
    qPrjID_FIX: TIntegerField;
    qPrjSUMMA: TFloatField;
    qPrjEXPENSES: TFloatField;
    qPrjCURRENCY: TIntegerField;
    qPrjDATAEND: TDateField;
    qPrjD_DACCEPT: TDateTimeField;
    qPrjID_DACCEPTOR: TIntegerField;
    qPrjAMOUNT: TFloatField;
    qPrjDEF_SUM: TFloatField;
    qPrjMANAGER: TIBStringField;
    qPrjDESIGNER: TIBStringField;
    dsPrj: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dbt1Change(Sender: TObject; Node: TTreeNode);
    procedure dbt1Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure bb1Click(Sender: TObject);
    procedure qDOCCalcFields(DataSet: TDataSet);
  private
    C_DOC: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDOCS :TfmDOCS;
  id_ing :Integer;

implementation
uses unMain, unIS;

const
  id_Form = 7;

{$R *.dfm}

procedure TfmDOCS.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmDOCS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qROW.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmDOCS.FormActivate(Sender: TObject);
begin
  qDOC_TYPE.Close;
  qDOC_TYPE.open;
  dbt1.TableName := 'PROJ_DOC_TREE(' + qDocDOC_TYPE.AsString + ', ' +
    qPrjID_PROJ_TYPE.AsString + ')';
  try
    dbt1.BuildTree;
    dbt1.FullExpand;
    dbt1.Selected := dbt1.Items[0];
  except
  end;
end;

procedure TfmDOCS.dbt1Change(Sender: TObject; Node: TTreeNode);
begin
  id_ing := -1;
  id_ing := dbt1.GetId;
  m1.Clear;
  if (dbt1.Selected.AbsoluteIndex = 0) then
  begin
    p4.Hide;
  end
  else
  begin
    with qROW do
    begin
      Close;
      ParamByName('rw1').AsInteger := id_ing;//dbt1.GetId;
      Open;
    end;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      if (qROWSTATUS.AsInteger <> 1) or (fmMain.UF17) then
        case qROWDATA_TYPE.AsInteger of
          5:
            begin
              p4.Show;
              Close;
              Clear;
              Add('SELECT S.ID_DOC_DATA, S.ROW_VALUE from PROJ_DOC_DATA S');
       //       aDD('JOIN PROJ_DOC_STRUCTURE Q ON Q.ID_ROW = S.ID_ROW');
        //      Add('join projects P on P.ID_PROJECT = Q.PROJ_TYPE');
              Add('where s.ID_PROJ_DOC = :prd and s.ID_ROW = :row');
       //       ParamByName('ID_PROJECT').AsInteger := qDOC_TYPEID_PROJ_DOC_TYPE.AsInteger;
              ParamByName('prd').AsInteger := qDocID_PROJECT_DOC.AsInteger;
              ParamByName('row').AsInteger := id_ing;//dbt1.GetId;
              Open;
              if (FieldByName('ROW_VALUE').IsNull) or
                (FieldByName('ROW_VALUE').AsString = '') then
              begin
                if (not qROWDEF_VALUE.IsNull) and (cb1.Checked) then
                begin
                  m1.Text := qROWDEF_VALUE.AsString;
                  m1.Modified := True;
                end
                else
                  m1.Clear;
              end
              else
              begin
                m1.Text := FieldByName('ROW_VALUE').AsString;
                m1.Modified := False;
              end;
            end;
        else
          p4.Hide;
        end;
    end;
  end;
end;

procedure TfmDOCS.dbt1Changing(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if not fmMain.UF17 and (qROWSTATUS.AsInteger = 1) then
    exit;
  if m1.Modified and (not qDocD_FILL.IsNull) then
  begin
    MsgInformation('�������� ��������. ������ �������� ���������� ���������.',
      '�������� ����������� ��������������');
    exit;
  end;
  if m1.Modified and (MsgQuestion(SysVars.NReg + ', ����� ������� ��� �������. '
    +
    '��������� ���������? ', '������ �������') = id_yes) then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      case qROWDATA_TYPE.AsInteger of
        5:
          begin
            Add('SELECT * FROM WRITE_DOC_ROW(:dpd, :drow, NULL, :rv)');
            ParamByName('dpd').AsInteger := qDocID_PROJECT_DOC.AsInteger;
            ParamByName('drow').AsInteger := dbt1.GetId;
            if m1.Text = '' then
              ParamByName('rv').Clear
            else
              ParamByName('rv').AsString := m1.Text;
          end;
      end;
      try
        Open;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        m1.Modified := False;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmDOCS.bb1Click(Sender: TObject);
begin
  if ((not qDocD_FILL.IsNull) and (not fmMain.UF0)) then
  begin
    MsgInformation('�������� ��������. ������ �������� ���������� ���������.',
      '�������� ����������� ��������������');
    exit;
  end;
  if m1.Modified then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      case qROWDATA_TYPE.AsInteger of
        5:
          begin
            Add('SELECT * FROM WRITE_DOC_ROW(:dpd, :drow, NULL, :rv)');
            ParamByName('dpd').AsInteger  := qDocID_PROJECT_DOC.AsInteger;
            ParamByName('drow').AsInteger := id_ing; // dbt1.GetId;
            ParamByName('rv').AsString    := m1.Text;
          end;
      end;
      try
        Open;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
        m1.Modified := False;
      except
        MsgError('��������','������ �� ���������');
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
end;

procedure TfmDOCS.qDOCCalcFields(DataSet: TDataSet);
begin
  if (not qDOCD_FILL.IsNull) or (qDOCSTATUS.AsInteger in [3, 4]) then
    qDOCfILL.AsString := '*'
  else
    qDOCfILL.Clear;
  if qDOCID_DRAFT.IsNull then
    qDOCGraph.Clear
  else
    qDOCGraph.AsString := 'G';
  case qDOCSTATUS.AsInteger of
    0: qDOCnSTATUS.AsString := '';
    1: qDOCnSTATUS.AsString := '�����';
    2: qDOCnSTATUS.AsString := '� �����������';
    3: qDOCnSTATUS.AsString := '���������';
    4: qDOCnSTATUS.AsString := '��������';
  end;
end;

end.
