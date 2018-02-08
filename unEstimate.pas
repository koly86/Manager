unit unEstimate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, ComCtrls, DBSTrees, ExtCtrls, Grids, DBGrids, ToolWin,
  frxClass, frxDBSet, frxExportPDF, StdCtrls, IBQuery, DB, unMainForm,
  xlcClasses, xlEngine, xlReport, IBCustomDataSet, Menus;

type
  TfmEstimate = class(TMainForm)
    p1: TPanel;
    Splitter1: TSplitter;
    dbt1: TDBS_TreeView;
    tlb1: TToolBar;
    tb1: TToolButton;
    dbg1: TDBGrid;
    ToolButton2: TToolButton;
    stb1: TStatusBar;
    p2: TPanel;
    ToolButton1: TToolButton;
    ed1: TEdit;
    Label1: TLabel;
    ToolButton3: TToolButton;
    tb2: TToolButton;
    ToolButton4: TToolButton;
    tb3: TToolButton;
    Panel1: TPanel;
    Label2: TLabel;
    ed2: TEdit;
    xlReport1: TxlReport;
    ToolButton5: TToolButton;
    tb4: TToolButton;
    qProd: TIBQuery;
    qProd2: TIBQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dbt1BuildNode(Sender: TObject; StateFieldValue: Variant;
      var StateImage: Integer);
    procedure dbt1Change(Sender: TObject; Node: TTreeNode);
    procedure dbg1DblClick(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb2Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure ed2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    FTXT: string;
    procedure OpenEstimate;
    procedure FindTreeItem(c_item: integer);
    { Private declarations }
  public
    C_ORD, C_EST, C_PROD: integer;
    { Public declarations }
  end;

var
  fmEstimate: TfmEstimate;

implementation
uses unMain, unIS, unProduct, unREP, uAll;

const
  id_Form = 2;

{$R *.dfm}

procedure TfmEstimate.FindTreeItem(c_item: integer);
var
  i: integer;
begin
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select ID from BR_UP_ITEMS(:ci1,1)');
    ParamByName('ci1').AsInteger := c_item;
    Open;
    Last;
    i := 0;
    while not BOF do
    begin
      //  ShowMessage(FieldByName('ID').AsString);
      Prior;
      dbt1.Items[i].Expand(False);
      for i := i to dbt1.Items.Count - 1 do
      begin
        if Integer(dbt1.Items[i].Data) = FieldByName('ID').AsInteger then
          break;
      end;
      if Integer(dbt1.Items[i].Data) = c_item then
      begin
        dbt1.Selected := dbt1.Items[i];
        exit;
      end;
    end;
  end;
end;

procedure TfmEstimate.OpenEstimate;
begin
  {select distinct T.ID_ESTIMATE, E.ID_PRODUCT,
  E.ID_ORDER, E.ID_VERSION, V.NAME, B.ID_OBJECT,
  T.D_CREATE, T.PRICE_DATA, P.FIO,T.DOP_PRICE
  from (((PRODUCT_ESTIMATE E join PRODUCT_ESTIMATE_TITLE T
  on T.ID_VERSION = E.ID_VERSION)
  join PRODUCT_VERSIONS V
  on V.ID_VERSION = E.ID_VERSION and V.STATUS >=50)
  left join PRODUCT_OBJECTS B on B.ID_PRODUCT = E.ID_PRODUCT
  and B.ID_VERSION = E.ID_VERSION and B.ID_PARENT = 0)
  join PERSONNEL P on P.ID_P = T.ID_P
  where E.ID_PRODUCT = :prd1
  ������ ������}
  with dmIS.qHEst do
  begin
    Close;
    ParamByName('prd1').AsInteger := dbt1.GetId;
    Open;
  end;
end;

procedure TfmEstimate.FormCreate(Sender: TObject);
begin
  ed1.Clear;
  C_ORD := 0;
  C_EST := 0;
  C_PROD := 0;
  if not Assigned(fmProduct) then
    Application.CreateForm(TfmProduct, fmProduct);
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p1, iniRect);
  finally
    Free;
  end;
end;

procedure TfmEstimate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmIS.qHEst.Close;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p1, iniRect);
  finally
    Free;
  end;
  // dmIS.dbDOC.Connected := false;
end;

procedure TfmEstimate.FormActivate(Sender: TObject);
begin
  tb1.Enabled := fmMain.UF64;
  tb3.Enabled := fmMain.UF71;
  if fmMain.UF143 then
  begin
    tb1.visible := false;
    tb4.visible := false;
  end;
  if C_EST > 0 then
    ed1.Text := IntToStr(C_EST);
  with dbt1 do
  begin
    ClearTree;
    BuildTree;
    if C_PROD > 0 then
    begin
      //  dbt1.FullExpand;
      //  FindInTree;
      FindTreeItem(C_PROD);
    end
    else
    begin
      Items[0].Expand(False);
      Selected := Items[0];
    end;
  end;
end;

procedure TfmEstimate.dbt1BuildNode(Sender: TObject;
  StateFieldValue: Variant; var StateImage: Integer);
begin
  StateImage := StateFieldValue;
end;

procedure TfmEstimate.dbt1Change(Sender: TObject; Node: TTreeNode);
begin
  stb1.SimpleText := '��� �������: ' + IntToStr(dbt1.GetId);
  OpenEstimate;
end;

procedure TfmEstimate.dbg1DblClick(Sender: TObject);
begin
  if dmIS.qHEst.IsEmpty then
    exit;
  fmProduct.Caption := '��������������-��������������� ������������ �������';
  fmProduct.C_OBJ := dmIS.qHEstID_OBJECT.AsInteger;
  fmProduct.ShowModal;
end;

procedure TfmEstimate.tb1Click(Sender: TObject);
begin
  {If dmIS.qHEst.IsEmpty Then exit;
  If not Assigned(fmRep) Then Application.CreateForm(TfmRep,fmRep);
  C_EST := dmIS.qHEstID_ESTIMATE.AsInteger; }
  {with fmREP do begin
   qEstim.Close;
   qEstim.ParamByName('est1').asInteger := C_EST;
   qEstim.Open;
   rEstim.ShowReport;
  end;}
  {with fmREP do begin
   qR_EST.Close;
   qR_EST.ParamByName('id_estimate').asInteger := C_EST;
   qR_EST.ParamByName('obj_kind').Clear;
   qR_EST.Open;
   rR_EST.Script.Variables['Est_Title'] := '�����';
   rR_EST.ShowReport;
  end;
       }

end;

procedure TfmEstimate.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  V_id: integer;
begin
  if Key = 13 then
  begin
    try
      C_EST := StrToInt(ed1.Text);
    except
      // MsgError('������� ����� � �����','����� �� � �����');
      exit;
    end;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select T.id_item ID_PRODUCT, E.ID_VERSION');
      Add('from ESTIMATES E join PRODUCT_VERSIONS T on T.ID_VERSION = E.ID_VERSION');
      // Add('select E.ID_PRODUCT, E.ID_VERSION'); Add('from PRODUCT_ESTIMATE E join PRODUCT_ESTIMATE_TITLE T on T.ID_VERSION = E.ID_VERSION');"
      Add('where E.ID_ESTIMATE = :ide1');
      ParamByName('ide1').AsInteger := C_EST;
      Open;
      if not IsEmpty then
      begin
        C_PROD := FieldByName('ID_PRODUCT').AsInteger;
        V_id := FieldByName('ID_VERSION').AsInteger;
      end
      else
      begin
        exit;
      end;
      dbt1.ClearTree;
      dbt1.BuildTree;
      FindTreeItem(C_PROD);
      dmIS.qHEst.Locate('ID_ESTIMATE', C_EST, []);
    end;
  end;
end;

procedure TfmEstimate.tb2Click(Sender: TObject);
var
  d_id: integer;
begin
  if dmIS.qHEst.IsEmpty then
    exit;
  d_id := 0;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select ID_DOC FROM PRODUCT_DOCS');
    Add('where ID_PRODUCT = :idp and ID_OBJECT = 0');
    ParamByName('idp').AsInteger := dmIS.qHEstID_PRODUCT.AsInteger;
    Open;
    if not IsEmpty then
      d_id := FieldByName('ID_DOC').AsInteger;
    if d_id = 0 then
      exit;
    {   if not dmIS.dbDOC.Connected then
       try
         dmIS.dbDOC.Connected := True;
       except
         MsgError('��� ����� � ���������� ����������', '������ �����������');
       end;  }
    try
      // fmMain.StoreDoc(0,d_id,'',dmIS.qS_BODY);
      if not Assigned(fmAll) then
        Application.CreateForm(TfmAll, fmAll);
      Old_DocBody(d_id, 0, ''); // ������� �� ����� ���� ����������
      //  fmAll.StoreDoc_r(d_id);
    except
      MsgError('������ ������ ���������', '������');
    end;
  end;
end;

procedure TfmEstimate.tb3Click(Sender: TObject);
begin
  if dmIS.qHEst.IsEmpty then
    exit;
  if C_ORD > 0 then
    if MsgQuestion('����� �: ' + dmIS.qHEstID_ESTIMATE.AsString +
      ' ����� ������� � ������� - ' + dmIS.qP_ORDSNAME.AsString + ' (' +
      dmIS.qP_ORDSN_ORDER.AsString + ' ). ��������� �����?',
      '��������� � ����� � ������.') = id_yes then
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('update PROJECT_ORDS SET ID_PRODUCT = :prd1, ID_ESTIMATE = :est1 ');
        Add('where ID_ORDER = :ord1');
        ParamByName('prd1').AsInteger := dmIS.qHEstID_PRODUCT.AsInteger;
        ParamByName('est1').AsInteger := dmIS.qHEstID_ESTIMATE.AsInteger;
        ParamByName('ord1').AsInteger := C_ORD;
        try
          ExecSQL;
          if dmIS.mT.Active then
            dmIS.mT.CommitRetaining;
        except;
          MsgError('������ ��� ������ ������ �����', '������');
          if dmIS.mT.Active then
            dmIS.mT.RollbackRetaining;
        end;
      end;
  C_ORD := 0;
  C_EST := 0;
  C_PROD := 0;
  fmEstimate.Close;
end;

procedure TfmEstimate.ed2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  try
    FTXT := ed2.Text;
    if FTXT[1] = '*' then
    begin
      delete(FTXT, 1, 1);
      C_PROD := StrToInt(FTXT);
    end
    else
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('select i.id_item from ITEMS i join br_items(4,0) b');
        Add('on b.id = i.id_item where i.status <> 3');
        Add('and upper(i.name) like upper(''' + ed2.Text + '%'')');
        Open;
        if not IsEmpty then
          C_PROD := FieldByName('ID_ITEM').AsInteger
        else
          C_PROD := 0;
      end;
    FindTreeItem(C_PROD);
  except
    MsgInformation('������� �� ������', '����� �� �������');
  end;
end;

procedure TfmEstimate.tb4Click(Sender: TObject);
var
  FN: string;
begin
  if dmIS.qHEst.IsEmpty then
    exit;
  if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  C_EST := dmIS.qHEstID_ESTIMATE.AsInteger;
  with fmREP do
  begin
    qEstim.Close;
    qEstim.ParamByName('est1').asInteger := C_EST;
    qEstim.Open;
  end;
  with dmIS.qD_IN, dmIS.qD_IN.SQL do
  begin
    Close;
    Clear;
    Add('select ID_DOC, FILENAME from WORKDOCS where ID_OWNER = 7');
    Open;
    if IsEmpty then
    begin
      MsgError('������ ������ ������� �� ���� ������', '������');
      Exit;
    end;
    Old_DocBody(dmIS.qD_IN.FieldByName('ID_DOC').AsInteger, 1, '');
      // ������� �� ����� ���� ����������
    //  fmMain.StoreDoc(4, dmIS.qD_IN.FieldByName('ID_DOC').AsInteger, '',
    //    dmiS.qW_BODY);
  end;
  FN := SysVars.IsDir + '\Tmp\' + dmIS.qD_IN.FieldByName('FILENAME').AsString;
  if not FileExists(FN) then
  begin
    MsgError('������ ������ ������� �� ���� ������', '������');
    Exit;
  end;
  xlReport1.XLSTemplate := FN;
  Screen.Cursor := crHourGlass;
  with qProd, qProd.SQL do
  begin
    Close;
    Clear;
    Add('SELECT obj_type, id_obj, name, unit, unit_s, price, ');
    Add(' SUM(amount) amount, SUM(summa) summa');
    Add('FROM get_estimate(:id_version, null)');
    Add('where obj_type = 1');
    Add('GROUP BY obj_type, id_obj, name, unit, unit_s, price');
    Add('ORDER BY obj_type, name');
    Prepare;
    ParamByName('id_version').AsInteger := dmIS.qHEstID_VERSION.AsInteger;
    Open;
  end;

  with qProd2, qProd2.SQL do
  begin
    Close;
    Clear;
    Add('SELECT obj_type, id_obj, name, unit, unit_s, price, ');
    Add(' SUM(amount) amount, SUM(summa) summa');
    Add('FROM get_estimate(:id_version, null)');
    Add('where obj_type = 2');
    Add('GROUP BY obj_type, id_obj, name, unit, unit_s, price');
    Add('ORDER BY obj_type, name');
    Prepare;
    ParamByName('id_version').AsInteger := dmIS.qHEstID_VERSION.AsInteger;
    Open;
  end;
  xlReport1.ParamByName['DATE_ESTIMATE'].AsString :=
    fmREP.qEstimD_CREATE.AsString;
  xlReport1.ParamByName['NUMB_ESTIMATE'].AsString :=
    fmREP.qEstimID_ESTIMATE.AsString;
  xlReport1.ParamByName['IZD'].AsString := fmREP.qEstimNPROD.AsString;
  xlReport1.ParamByName['TIR'].AsString := fmREP.qEstimAMOUNT.AsString;
  xlReport1.ParamByName['PRICE'].AsString := fmREP.qEstimPRICE_DATA.AsString;
  xlReport1.ParamByName['DEV'].AsString := fmREP.qEstimFIO.AsString;
  xlReport1.ParamByName['IDIZD'].AsString := fmREP.qEstimID_PRODUCT.AsString;
  xlReport1.ParamByName['IDVERS'].AsString := fmREP.qEstimID_VERSION.AsString;
  xlReport1.ParamByName['EQUIP'].AsString :=
    fmREP.qEstimPRICE_EQUIPMENT.AsString;
  xlReport1.ParamByName['DOPPRICE'].AsString := fmREP.qEstimDOP_PRICE.AsString +
    '%';
  xlReport1.ParamByName['PROFIT'].AsString := fmREP.qEstimPROFIT.AsString + '%';
  xlReport1.ParamByName['NDS'].AsString := fmREP.qEstimNDS.AsString + '%';
  xlReport1.ParamByName['DELIVE'].AsString :=
    fmREP.qEstimPRICE_DELIVERY.AsString;
  xlreport1.Report;
  Screen.Cursor := crDefault;
  dmIS.qD_IN.Close;
  qProd.Close;
  qProd2.Close;
  fmREP.qEstim.Close;
end;

procedure TfmEstimate.N1Click(Sender: TObject);
begin
  if dmIS.qHEst.IsEmpty then
    exit;
  C_EST := dmIS.qHEstID_ESTIMATE.AsInteger;
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  fmAll.GetEstRep(C_EST, 1, fmMain.s19);
end;

procedure TfmEstimate.N2Click(Sender: TObject);
begin
  if dmIS.qHEst.IsEmpty then
    exit;
  C_EST := dmIS.qHEstID_ESTIMATE.AsInteger;
  if not Assigned(fmAll) then
    Application.CreateForm(TfmAll, fmAll);
  fmAll.GetEstRep(C_EST, 0, fmMain.s19);
end;

end.
