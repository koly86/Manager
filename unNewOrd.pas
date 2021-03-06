unit unNewOrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, StdCtrls, Buttons, ExtCtrls, DBGridEh,
  Mask, DBCtrlsEh, DBLookupEh, ComCtrls, DBCtrls, IBQuery, IBCustomDataSet,
  Grids, DB;

type
  TfmNewOrd = class(TMainForm)
    p1: TPanel;
    p4: TPanel;
    bb41: TBitBtn;
    bb42: TBitBtn;
    pc1: TPageControl;
    ts1: TTabSheet;
    Label1: TLabel;
    lb1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lcb1: TDBLookupComboboxEh;
    ed2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    lcb2: TDBLookupComboboxEh;
    Label6: TLabel;
    lcb3: TDBLookupComboBox;
    Label7: TLabel;
    ed3: TEdit;
    Label16: TLabel;
    ed4: TEdit;
    Label8: TLabel;
    ed5: TEdit;
    Label9: TLabel;
    ed6: TEdit;
    Label10: TLabel;
    lcb4: TDBLookupComboboxEh;
    DBText1: TDBText;
    Label11: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    ed1: TEdit;
    DBText4: TDBText;
    Label13: TLabel;
    dtp1: TDBDateTimeEditEh;
    Label14: TLabel;
    lb2: TLabel;
    p2: TPanel;
    Panel1: TPanel;
    dbn1: TDBNavigator;
    dbg1: TDBGridEh;
    m1: TMemo;
    Label12: TLabel;
    Label15: TLabel;
    lcb5: TDBLookupComboboxEh;
    qCHIEF: TIBQuery;
    dsCHIEF: TDataSource;
    Panel2: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    qCHIEFID_CHIEF: TIntegerField;
    qCHIEFFIO: TIBStringField;
    dbn2: TDBNavigator;
    dbg2: TDBGridEh;
    cb1: TCheckBox;
    Label19: TLabel;
    edDog: TEdit;
    sbDog: TSpeedButton;
    lbNomDog: TLabel;
    Label20: TLabel;
    edDeliv: TEdit;
    Label21: TLabel;
    dblType: TDBLookupComboboxEh;
    qOrdType: TIBQuery;
    dsOrdType: TDataSource;
    qOrdTypeID_ORD_KIND: TIntegerField;
    qOrdTypeNAME: TIBStringField;
    qOrdTypeSTATUS: TIntegerField;
    Label22: TLabel;
    lcbManager: TDBLookupComboboxEh;
    qManager: TIBQuery;
    qManagerFIO: TIBStringField;
    qManagerID_P: TIntegerField;
    dsManager: TDataSource;
    ed_price: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    qUragent: TIBQuery;
    dsUragent: TDataSource;
    lcbUragent: TDBLookupComboboxEh;
    qUragentNAME: TIBStringField;
    qUragentID_ITEM: TIntegerField;
    lbDtPlan: TLabel;
    dtpPlan: TDBDateTimeEditEh;
    procedure FormCreate(Sender: TObject);
    procedure bb41Click(Sender: TObject);
    procedure bb42Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sbDogClick(Sender: TObject);
    procedure ed3Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    function TestCard: Boolean;
    function FindProduct(id_est: integer): integer;
    { Private declarations }
  public
    Kop: word;
    New_id: integer;
    d_open :TDate;
    { Public declarations }
  end;

var
  fmNewOrd: TfmNewOrd;

implementation
uses unMain, unIS, unPrj_s, unClients, unProj, DateUtils;

const
  id_Form = 23;

{$R *.dfm}

function TfmNewOrd.FindProduct(id_est: integer): integer;
begin
  result := 0;
  Screen.Cursor := crHourGlass;
  with dmIS.qIIN, dmIS.qIIN.SQL do
  begin
    Close;
    Clear;
    { Add('select E.ID_PRODUCT');
     Add('from PRODUCT_ESTIMATE E join PRODUCT_ESTIMATE_TITLE T');
     Add('on T.ID_VERSION = E.ID_VERSION');
     Add('where T.ID_ESTIMATE = :ide1'); }

    Add('select v.id_item');
    Add('from estimates e join product_versions v on e.id_version = v.id_version');
    Add('where e.id_estimate = :ide1 and  coalesce(e.estimate_type,0) <> 1');
    ParamByName('ide1').AsInteger := id_est;
    Open;
    if not IsEmpty then
      result := FieldByName('ID_ITEM').AsInteger;
  end;
  Screen.Cursor := crDefault;
end;

function TfmNewOrd.TestCard: Boolean;
var
  tsti: integer;
  tstf: extended;
  tstd: TDate;
begin
  result := True;
  if dmIS.qPL_SH.State in [dsInsert, dsEdit] then
    dmIS.qPL_SH.Post;

   if length(Trim(lcbUragent.Text)) = 0 then lcbUragent.KeyValue := null;

   // �������� �� �����������
   if (lcbUragent.KeyValue = null) then
    if (d_Open = 0) then
    begin
     if (DateOf(Server_now(dmIS.qIM)) >= StrToDate('01.06.2013')) then
     begin
      MsgError('�� ������� ����������� �����������', '�������� ������');
      Result := False;
      Exit;
     end else if MsgQuestion('�� ������ ������� ����������� �����������?',
    '��������') = id_YES then
     begin
      Result := False;
      Exit;
     end;
    end else if (d_Open >= StrToDate('01.06.2013')) then
     begin
      MsgError('�� ������� ����������� �����������', '�������� ������');
      Result := False;
      Exit;
     end else if MsgQuestion('�� ������ ������� ����������� �����������?',
    '��������') = id_YES then
     begin
     Result := False;
     Exit;
    end;

{  if ((lcbUragent.KeyValue = 0) and (dmIS.qP_ORDSD_OPEN.IsNull
  or (DateOf(dmIS.qP_ORDSD_OPEN.AsDateTime) >= StrToDate('01.06.2013')))) then
   if ((dmIS.qP_ORDSD_OPEN.AsDateTime = 0)
    and (DateOf(Server_now(dmIS.qIM)) >= StrToDate('01.06.2013'))) then
   begin
    MsgError('�� ������� ����������� �����������', '�������� ������');
    result := False;
    exit;
  end else
   if lcbUragent.KeyValue = 0 then if MsgQuestion('�� ������ ������� ����������� �����������?',
   '��������') = id_YES then
   Exit;    }
   
  if lcb1.KeyValue = NULL then
  begin
    MsgError('�� ������� ������������', '�������� ������');
    result := False;
    exit;
  end;
  if lcb2.KeyValue = NULL then
  begin
    MsgError('�� ������ ��� ���������', '�������� ������');
    result := False;
    exit;
  end;

  if lcb3.KeyValue = NULL then
  begin
    MsgError('�� ������� ������ ������', '�������� ������');
    result := False;
    exit;
  end;
  if (lcb4.KeyValue = NULL) or (lcb4.KeyValue = 0) then
  begin
    MsgError('�� ������ ��������-���������', '�������� ������');
    result := False;
    exit;
  end;
  //If dmIS.qDOCD_FILL.IsNull Then begin
  // MsgError('��������-��������� �� ��������','�������� ������');
  // result := False;
  // exit;
  //end;
  if ed2.Text = '' then
  begin
    MsgError('�� ������ ������������ ������', '�������� ������');
    result := False;
    exit;
  end;
  try
    tstf := StrToFloat(ed5.Text);
  except
    MsgError('����������� ������ ����������', '�������� ������');
    result := False;
    exit;
  end;
  if tstf <= 0 then
  begin
    MsgError('����������� ������ ����������', '�������� ������');
    result := False;
  end;
  try
    tstf := StrToFloat(ed3.Text);
  except
    MsgError('����������� ������ �����', '�������� ������');
    result := False;
  end;
  if tstf < 0 then
  begin
    MsgError('����������� ������ �����', '�������� ������');
    result := False;
    exit;
  end;
  try
    tstf := StrToFloat(ed4.Text);
  except
    MsgError('����������� ������ ����� ���. �����', '�������� ������');
    result := False;
    exit;
  end;
  if tstf < 0 then
  begin
    MsgError('����������� ������ ����� ���. �����', '�������� ������');
    result := False;
    exit;
  end;
  try
    tstd := StrToDate(dtp1.Text);
  except
    MsgError('����������� ������ ���� ����������', '�������� ������');
    result := False;
    exit;
  end;
  if ed6.Text <> '' then
  begin
    try
      tsti := StrToInt(ed6.Text);
    except
      MsgError('����������� ����� � �����', '�������� ������');
      result := False;
      exit;
    end;
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('select ID_ESTIMATE, AMOUNT FROM ESTIMATES');
      Add('where ID_ESTIMATE = :ide1');
      ParamByName('ide1').AsInteger := tsti;
      Open;
      if IsEmpty then
      begin
        MsgError('����� � ����� ������� �� ����������', '�������� ������');
        result := False;
        exit;
      end;
      if FieldByName('amount').AsFloat <> StrToFloat(ed5.Text) then
      begin
        MsgError('����� ����� �� ����� ������ ������.', '�������� ������');
        result := False;
        exit;
      end;
    end;
  end;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    if Transaction.Active then
      Transaction.CommitRetaining;
    Close;
    Clear;
    Add('select sum(AMOUNT) FROM ORD_PLAN_SHIPP where ID_ORDER = :ord1 and plan_type = 21');
    if Kop = 2 then
      ParamByName('ord1').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger
    else
      ParamByName('ord1').AsInteger := New_id;
    Open;
    if IsEmpty then
    begin
      MsgError('�� ����� ���� ��������', '�������� ������');
      result := False;
      exit;
    end;
    // If Kop = 2 Then tsti := dmIS.qP_ORDSAMOUNT.AsInteger else
    tsti := StrToInt(ed5.Text);
    if FieldByName('SUM').AsInteger <> tsti then
    begin
      MsgError('����� ����� �������� �� ������������� ����� ������',
        '�������� ������');
      result := False;
      exit;
    end;
  end;
end;

procedure TfmNewOrd.FormCreate(Sender: TObject);
begin
  Kop := 0;
  lb1.Caption := '';



  with qManager do
  begin
   Close;
   Open;
   Locate('id_p', dmIS.qPrjID_MANAGER.AsInteger, []);
   lcbManager.KeyValue := dmIS.qPrjID_MANAGER.AsInteger;
  end;

  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmNewOrd.bb41Click(Sender: TObject);
begin
  if not TestCard then exit;
  Screen.Cursor := crHourGlass;
  if dmIS.qPL_SH.State in [dsInsert, dsEdit] then
    dmIS.qPL_SH.Post;
  if dmIS.qORD_POS.State in [dsInsert, dsEdit] then
    dmIS.qORD_POS.Post;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    case Kop of
      1:
        begin
          Add('insert into PROJECT_ORDS(ID_ORDER, ID_PROJECT, NAME, AMOUNT, ID_PRODUCT,');
          Add('D_READY, N_ORDER, D_OPEN, ID_OPEN, ID_DOC, PRICE, PRICEA, ID_CURRENCY,');
          Add('ID_CPTYPE, ID_CPROD, ID_AGENT,  ID_ESTIMATE, ID_CHIEF, REM, IS_CHARGE,ID_DOGOVOR,');
          add('DELIVERY_SUM, ord_kind, id_fix, is_self, d_fix)');
          Add('VALUES (:ID_ORDER, :ID_PROJECT, :NAME, :AMOUNT, :ID_PRODUCT, :D_READY,');
          Add(':N_ORDER, CURRENT_TIMESTAMP, :ID_OPEN, :ID_DOC, :PRICE, :PRICEA, :ID_CURRENCY,');
          Add(':ID_CPTYPE, :ID_CPROD, :ID_AGENT, :ID_ESTIMATE, :ID_CHIEF, :REM, :IS_CHARGE,:ID_DOGOVOR,');
          add(':DELIVERY_SUM, :ord_kind, :id_fix, :is_self, :d_fix)');

          ParamByName('ID_ORDER').AsInteger := New_id;
          ParamByName('ID_PROJECT').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
          ParamByName('ID_OPEN').AsInteger := SysVars.RegTN;
          ParamByName('ID_AGENT').AsInteger := dmIS.qPrjID_AGENT.AsInteger;

        end;
      2:
        begin
          Add('update PROJECT_ORDS set NAME = :NAME, AMOUNT = :AMOUNT,');
          Add('ID_PRODUCT = :ID_PRODUCT, D_READY = :D_READY, N_ORDER = :N_ORDER');
          Add(', ID_DOC = :ID_DOC, PRICE = :PRICE, PRICEA = :PRICEA, ID_CURRENCY = :ID_CURRENCY');
          Add(', ID_CPTYPE = :ID_CPTYPE, ID_CPROD = :ID_CPROD, ID_ESTIMATE = :ID_ESTIMATE,');
          Add('ID_CHIEF = :ID_CHIEF, REM = :REM, IS_CHARGE = :IS_CHARGE,ID_DOGOVOR=:ID_DOGOVOR,');
          add('DELIVERY_SUM = :DELIVERY_SUM, ord_kind = :ord_kind, id_fix = :id_fix, is_self = :is_self,');
          add('d_fix = :d_fix');
          Add('where ID_ORDER = :ID_ORDER');
          ParamByName('ID_ORDER').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
        end;
    end;
    if lcbUragent.KeyValue <> null then ParamByName('is_self').AsInteger := lcbUragent.KeyValue
    else ParamByName('is_self').Clear;
    ParamByName('id_fix').AsInteger := lcbManager.KeyValue;
    ParamByName('ord_kind').AsInteger := dblType.KeyValue;
    ParamByName('NAME').AsString := ed2.Text;

    if dtpPlan.Value > 0 then
      ParamByName('d_fix').AsDate := dtpPLan.Value
    else
      ParamByName('d_fix').clear;
      
    ParamByName('N_ORDER').AsString := ed1.Text;
    ParamByName('AMOUNT').AsString := ed5.Text;
    ParamByName('D_READY').AsString := dtp1.Text;
    ParamByName('ID_DOC').AsInteger := lcb4.KeyValue;
    ParamByName('PRICE').AsCurrency := StrToCurr(ed3.Text);
    ParamByName('PRICEA').AsCurrency := StrToCurr(ed4.Text);
    ParamByName('DELIVERY_SUM').AsCurrency := StrToCurr(edDeliv.Text);
    ParamByName('ID_CURRENCY').AsInteger := lcb3.KeyValue;
    ParamByName('ID_CPTYPE').AsInteger := lcb2.KeyValue;
    ParamByName('ID_CPROD').AsInteger := lcb1.KeyValue;
    ParamByName('REM').AsString := m1.Lines.Text;
    if cb1.Checked then
      ParamByName('IS_CHARGE').AsInteger := 1
    else
      ParamByName('IS_CHARGE').Clear;
    if lcb5.KeyValue = NULL then
      ParamByName('ID_CHIEF').Clear
    else
      ParamByName('ID_CHIEF').AsInteger := lcb5.KeyValue;
    ParamByName('ID_ESTIMATE').AsString := ed6.Text;
    if ed6.Text = '' then
      ParamByName('ID_PRODUCT').Clear
    else
      ParamByName('ID_PRODUCT').AsInteger := FindProduct(StrToInt(ed6.Text));
    ParamByName('ID_DOGOVOR').AsString := lbNomDog.Caption;
    try
      ExecSQL;
      if dmIS.mT.Active then
        dmIS.mT.CommitRetaining;
      Screen.Cursor := crDefault;
      Kop := 0;
      fmPrj_s.OpenOrder;
      fmNewOrd.Close;
    except
      if dmIS.mT.Active then
        dmIS.mT.RollbackRetaining;
      Screen.Cursor := crDefault;
      Kop := 0;
    end;
  end;
end;

procedure TfmNewOrd.bb42Click(Sender: TObject);
begin
  if Kop = 1 then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('delete from PROJECT_ORDS where ID_ORDER = :ord1');
      ParamByName('ord1').AsInteger := New_id;
      try
        ExecSQL;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;
  Kop := 0;
  fmNewOrd.Close;
end;

procedure TfmNewOrd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.dbIS.Connected then
  begin
    if Kop = 1 then
      with dmIS.qIN, dmIS.qIN.SQL do
      begin
        Close;
        Clear;
        Add('delete from PROJECT_ORDS where ID_ORDER = :ord1');
        ParamByName('ord1').AsInteger := New_id;
        try
          ExecSQL;
          if dmIS.mT.Active then
            dmIS.mT.CommitRetaining;
        except
          if dmIS.mT.Active then
            dmIS.mT.RollbackRetaining;
        end;
      end;
    Kop := 0;
    dmIS.qORD_POS.Close;
    dmIS.qPL_SH.Close;
    dmIS.qBDOC.Close;
    dmIS.qIN.Close;
    qCHIEF.Close;
    dmIS.qUNITS.Close;
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
    finally
      Free;
    end;
  end;
end;

procedure TfmNewOrd.FormShow(Sender: TObject);
var
  New_Number: string;
begin
  with qUragent do
  begin
   Close;
   Open;
   lcbUragent.KeyValue := dmIS.qP_ORDSIS_SELF.AsInteger;
  end;
  lb1.Caption := '';
  lb2.Caption := '';
  New_id := 0;
  New_Number := '';
  with qCHIEF do
  begin
    Close;
    Open;
  end;
  with dmIS.qUNITS do
  begin
    Close;
    Open;
  end;
  qOrdType.close;
  qOrdType.Open;

  with dmIS.qBDOC do
  begin
    Close;
    ParamByName('pr1').AsInteger := dmIS.qPrjID_PROJECT.AsInteger;
    Open;
    Last;
    First;
    Locate('ID_PROJECT_DOC', dmIS.qDOCID_PROJECT_DOC.AsInteger, []);
  end;
  case Kop of
    1:
      begin // ����� �����
        with dmIS.qIN, dmIS.qIN.SQL do
        begin
          Close;
          Clear;
          Add('select ID,NUMBER from GET_DOC_NUMBERS(1)');
          Open;
          New_id := dmIS.qIN.FieldValues['ID'];
          New_Number := dmIS.qIN.FieldValues['NUMBER'];
        end;

        lb1.Caption := IntToStr(New_id);
        lb2.Caption := '�����';
        cb1.Checked := False;
        ed1.Text := New_Number;
        ed1.ReadOnly := True;
        ed2.Text := '';
        ed2.ReadOnly := false;
        ed3.Text := '0';
        ed3.ReadOnly := false;
        edDeliv.Text := '0';
        edDeliv.ReadOnly := false;
        ed4.Text := '0';
        ed4.ReadOnly := false;
        ed5.Text := '';
        ed5.ReadOnly := false;

        ed6.Text := '';
        ed6.ReadOnly := false;
        m1.Clear;
        m1.ReadOnly := false;
        lcb1.KeyValue := dmIS.qPRODSID_P_AREA.AsInteger;
        lcb1.ReadOnly := false;
        dblType.KeyValue := 0;
        dblType.ReadOnly := false;
        lcb2.KeyValue := dmIS.qPTPSID_PTYPE.AsInteger;
        lcb2.ReadOnly := false;
        dmIS.qCURR.Locate('MARK', '*', []);
        lcb3.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
        lcb3.ReadOnly := false;
        lcb4.KeyValue := dmIS.qBDOCID_PROJECT_DOC.AsInteger;
        lcb4.ReadOnly := false;
        lcb5.KeyValue := NULL;
        lcb5.ReadOnly := false;
        dtp1.Clear;
        dtp1.ReadOnly := false;
        edDog.Clear;
        edDog.ReadOnly := false;
        edDog.Text := fmProj.qDogovorDOG_NUMBER.AsString;
        lbNomDog.Caption := fmProj.qDogovorID_DOGOVOR.AsString;
        //dmIs.qP_ORDSID_DOGOVOR.AsString;
        with dmIS.qPL_SH do
        begin
          Close;
          ParamByName('ID_ORDER').AsInteger := dmIS.qIN.FieldValues['ID'];
          Open;
        end;
        with dmIS.qORD_POS do
        begin
          Close;
          UpdateObject := dmIS.upORD_POS;
          ParamByName('ID_ORDER').AsInteger := dmIS.qIN.FieldValues['ID'];
          Open;
        end;
      end;
    2:
      begin // ��������������
        lb1.Caption := dmIS.qP_ORDSID_ORDER.AsString;
        lb2.Caption := dmIS.qP_ORDSnSTAT.AsString;
        cb1.Checked := dmIS.qP_ORDSIS_CHARGE.AsInteger = 1;
        ed1.Text := dmIS.qP_ORDSN_ORDER.AsString;
        ed1.ReadOnly := True;
        ed2.Text := dmIS.qP_ORDSNAME.AsString;
        ed2.ReadOnly := false;
        ed3.Text := dmIS.qP_ORDSPRICE.AsString;
        ed3.ReadOnly := false;
        edDeliv.Text := dmIS.qP_ORDSDELIVERY_SUM.AsString;
        edDeliv.ReadOnly := false;
        ed4.Text := dmIS.qP_ORDSPRICEA.AsString;
        ed4.ReadOnly := false;
        ed5.Text := dmIS.qP_ORDSAMOUNT.AsString;
        ed5.ReadOnly := false;
        if dmIS.qP_ORDSID_ESTIMATE.IsNull then
          ed6.Text := ''
        else
          ed6.Text := dmIS.qP_ORDSID_ESTIMATE.AsString;
        ed6.ReadOnly := false;
        m1.ReadOnly := false;
        m1.Lines.Text := dmIS.qP_ORDSREM.AsString;
        dmIS.qPRODS.Locate('ID_P_AREA', dmIS.qP_ORDSID_CPROD.AsInteger, []);
        lcb1.KeyValue := dmIS.qPRODSID_P_AREA.AsInteger;
        lcb1.ReadOnly := false;
        dmIS.qPTPS.Locate('ID_PTYPE', dmIS.qP_ORDSID_CPTYPE.AsInteger, []);
        lcb2.KeyValue := dmIS.qPTPSID_PTYPE.AsInteger;
        lcb2.ReadOnly := false;

        dblType.KeyValue := dmIS.qP_ORDSORD_KIND.AsInteger;
        dblType.ReadOnly := false;

        dmIS.qCURR.Locate('ID_CURRENCY', dmIS.qP_ORDSID_CURRENCY.AsInteger, []);
        lcb3.KeyValue := dmIS.qCURRID_CURRENCY.AsInteger;
        lcb3.ReadOnly := false;
        dmIS.qBDOC.Locate('ID_PROJECT_DOC', dmIS.qP_ORDSID_DOC.AsInteger, []);
        lcb4.KeyValue := dmIS.qBDOCID_PROJECT_DOC.AsInteger;
        lcb4.ReadOnly := false;
        if dmIS.qP_ORDSID_CHIEF.IsNull then
          lcb5.KeyValue := null
        else
        begin
          qCHIEF.Locate('ID_CHIEF', dmIS.qP_ORDSID_CHIEF.AsInteger, []);
          lcb5.KeyValue := qCHIEFID_CHIEF.AsInteger;
        end;
        lcb5.ReadOnly := false;
        dtp1.Text := dmIS.qP_ORDSD_READY.AsString;
        dtp1.ReadOnly := false;

        edDog.ReadOnly := false;
        edDog.Text := dmIs.qP_ORDSDOG_NUMBER.AsString;
        lbNomDog.Caption := dmIs.qP_ORDSID_DOGOVOR.AsString;
        with dmIS.qPL_SH do
        begin
          Close;
          ParamByName('ID_ORDER').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
          Open;
        end;
        with dmIS.qORD_POS do
        begin
          Close;
          UpdateObject := dmIS.upORD_POS;
          ParamByName('ID_ORDER').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
          Open;
        end;
      end;
  end;
end;

procedure TfmNewOrd.sbDogClick(Sender: TObject);
begin
  if not Assigned(fmClients) then
    Application.CreateForm(TfmClients, fmClients);
  fmClients.rb1.Checked := True;
  fmClients.C_Agent := dmIS.qPrjID_AGENT.AsInteger;
  //fmCliOrds.qClientsID_ITEM.AsInteger;
  if lbNomDog.Caption = '' then
    lbNomDog.Caption := '0';
  fmClients.C_DOG := StrToInt(lbNomDog.Caption);
  //fmClients.OpenAgents;

  fmClients.pc1.ActivePage := fmClients.ts3;
  if kop > 0 then
    fmClients.up_Dog := 2;
  fmClients.Show;
end;

procedure TfmNewOrd.ed3Change(Sender: TObject);
begin
 if ((length(Trim(ed3.Text)) > 0) and (length(Trim(edDeliv.Text)) > 0)) then
 begin
  if Length(Trim(ed6.Text)) > 0 then
  begin
   with dmIS.qIN, dmIS.qIN.SQL do
   begin
    Close;
    Clear;
    Add('select total_sum from estimates where id_estimate = ' + ed6.Text);
    Open;
    if IsEmpty then begin
     ed_price.Text := '0';
     Exit;
    end;
    if FieldByName('total_sum').AsFloat > 0 then
    ed_price.Text := FloatToStr(((StrToFloat(ed3.Text) - StrToFloat(edDeliv.Text))/FieldByName('total_sum').AsFloat))
    else ed_price.Text := '0';
   end;
  end else ed_price.Text := '0';
 end;
end;

procedure TfmNewOrd.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if qUragent.Active then qUragent.Close;
end;

end.
