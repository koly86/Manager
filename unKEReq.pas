unit unKEReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  ComCtrls, ToolWin, IBQuery, IBCustomDataSet, DBGridEh, Mask, DBCtrlsEh,
  DBLookupEh, unCliOrds, unKOrder, DB;

type
  TfmKEReq = class(TForm)
    p4: TPanel;
    bb1: TBitBtn;
    bb2: TBitBtn;
    p1: TPanel;
    m1: TMemo;
    p2: TPanel;
    Label5: TLabel;
    n_Order: TLabel;
    nomOrder: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lcbReq_Kind: TDBLookupComboboxEh;
    lcbReq_Type: TDBLookupComboboxEh;
    qReq_Kind: TIBQuery;
    qReq_Type: TIBQuery;
    qReq_KindREQ_KIND: TIntegerField;
    qReq_KindNAME: TIBStringField;
    qReq_TypeREQ_TYPE: TIntegerField;
    qReq_TypeNAME: TIBStringField;
    dsReq_Kind: TDataSource;
    dsReq_Type: TDataSource;
    Label3: TLabel;
    dt1: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bb2Click(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure sb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Kop: word;
    C_PROJECT, ID_DOC, New_Req: integer;
    { Public declarations }
  end;

var
  fmKEReq: TfmKEReq;

implementation
uses unMain, unIS, unPrj_S;

const
  id_Form = 35;

{$R *.dfm}

procedure TfmKEReq.FormShow(Sender: TObject);
begin
  if not Assigned(fmKEReq) then
    Application.CreateForm(TfmKEReq, fmKEReq);
  case Kop of
    0:
      begin
        p4.Hide;
        if fmMain.S19 <> 1 then
          if dmIS.qEstReq.Active then
            m1.Text := dmIS.qEstReqDESCRIPTION.AsString
          else
            m1.Clear;
        if fmMain.S19 = 1 then
          if f_CliOrds[fmMain.NF_CliOrds].qEstReq.Active then
          begin
            lcbReq_Type.KeyValue :=
              f_CliOrds[fmMain.NF_CliOrds].qEstReqREQ_TYPE.AsInteger;
            lcbReq_Kind.KeyValue :=
              f_CliOrds[fmMain.NF_CliOrds].qEstReqREQ_KIND.AsInteger;
            m1.Text := f_CliOrds[fmMain.NF_CliOrds].qEstReqDESCRIPTION.AsString
          end
          else
          begin
            lcbReq_Type.KeyValue := null;
            lcbReq_Kind.KeyValue := null;
            m1.Clear;
          end;
        m1.ReadOnly := True;
      end;
    1:
      begin
        p4.Show;
        // m1.Clear;
        m1.ReadOnly := False;
      end;
    2:
      begin
        p4.Show;
        if fmMain.S19 <> 1 then
          if dmIS.qEstReq.Active then
            m1.Text := dmIS.qEstReqDESCRIPTION.AsString
          else
            m1.Clear;
        if fmMain.S19 = 1 then
          if f_CliOrds[fmMain.NF_CliOrds].qEstReq.Active then
          begin
            lcbReq_Type.KeyValue :=
              f_CliOrds[fmMain.NF_CliOrds].qEstReqREQ_TYPE.AsInteger;
            lcbReq_Kind.KeyValue :=
              f_CliOrds[fmMain.NF_CliOrds].qEstReqREQ_KIND.AsInteger;
            m1.Text := f_CliOrds[fmMain.NF_CliOrds].qEstReqDESCRIPTION.AsString;
            dt1.DateTime :=
              f_CliOrds[fmMain.NF_CliOrds].qEstReqD_CALC.AsDateTime;
          end
          else
          begin
            lcbReq_Type.KeyValue := null;
            lcbReq_Kind.KeyValue := null;
            m1.Clear;
          end;
        m1.ReadOnly := False;
      end;
  end;
end;

procedure TfmKEReq.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
  ID_DOC := -1;
  New_Req := -1;
  qReq_Type.Close;
  qReq_Type.Open;
  qReq_Kind.Close;
  qReq_Kind.Open;
  dt1.DateTime := now + 1;
end;

procedure TfmKEReq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmKEReq.bb2Click(Sender: TObject);
begin
  New_Req := -1;
  fmKEReq.Close;
end;

procedure TfmKEReq.bb1Click(Sender: TObject);
begin
 try
  if fmMain.S19 = 1 then
  begin
    if lcbReq_Kind.Text = '' then
    begin
      MsgError('Не задан вид заказа.', 'Проверка данных');
      exit;
    end;
    if lcbReq_Type.Text = '' then
    begin
      MsgError('Не задан тип заказа.', 'Проверка данных');
      exit;
    end;
  end;
  Screen.Cursor := crHourGlass;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    case Kop of
      1:
        begin
          Add('SELECT GEN_ID(OBJ_ID,1) ID FROM ACCESS_LEVELS WHERE ACCESS_KEY = 0');
          Open;
          New_Req := FieldByName('ID').AsInteger;
          Close;
          Clear;
          Add('INSERT INTO ESTIMATE_REQUESTS (ID_REQUEST, ID_PROJECT, DESCRIPTION,');
          Add('ID_CREATOR, D_CREATE, ID_DOC,id_order,req_kind,req_type, d_calc)');
          Add('VALUES (:c_req, :proj, :descr, :cr1, CURRENT_TIMESTAMP, :c_doc,:id_order,:req_kind,:req_type, :d_calc)');
          ParamByName('c_req').AsInteger := New_Req;
          ParamByName('proj').AsInteger := C_PROJECT;
          ParamByName('cr1').AsInteger := SysVars.RegTN;
          ParamByName('c_doc').AsInteger := ID_DOC;
          parambyname('d_calc').AsDateTime := dt1.DateTime;
          if nomOrder.Caption <> '' then
            ParamByName('id_order').AsString := nomOrder.Caption
          else
            ParamByName('id_order').Clear;
          try
            // fmCliOrds.C_Req := New_Req;  f_CliOrds[ind_CliOrd]
            if fmMain.S19 = 1 then
              f_CliOrds[fmMain.NF_CliOrds].C_Req := New_Req;
            if fmMain.S19 <> 1 then
              fmPrj_S.C_REQ := New_Req;
          except
          end;
        end;
      2:
        begin
          Close;
          Clear;
          Add('UPDATE ESTIMATE_REQUESTS SET DESCRIPTION = :descr,req_kind = :req_kind,');
          add('req_type = :req_type, d_calc = :d_calc');
          Add('WHERE ID_REQUEST = :c_req');
          if fmMain.S19 <> 1 then
            if dmIS.qEstReq.Active then
              ParamByName('c_req').AsInteger := dmIS.qEstReqID_REQUEST.AsInteger
            else
              ParamByName('c_req').AsInteger := -1;
          if fmMain.S19 = 1 then
            if f_CliOrds[fmMain.NF_CliOrds].qEstReq.Active then
              ParamByName('c_req').AsInteger :=
                f_CliOrds[fmMain.NF_CliOrds].qEstReqID_REQUEST.AsInteger
            else
              ParamByName('c_req').AsInteger := -1;
          parambyname('d_calc').AsDateTime := dt1.DateTime;
          New_Req := -1;
        end;
    end;
    if lcbReq_Kind.KeyValue <> null then
      ParamByName('req_kind').AsInteger := lcbReq_Kind.KeyValue
    else
      ParamByName('req_kind').Clear;
    if lcbReq_Type.KeyValue <> null then
      ParamByName('req_type').AsInteger := lcbReq_Type.KeyValue
    else
      ParamByName('req_type').Clear;
    ParamByName('descr').AsString := m1.Text;
    try
      ExecSQL;
      if Transaction.Active then
        Transaction.Commit;
    except
      MsgError('Ошибка записи заявки', 'Ошибка записи');
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
 finally
  Screen.Cursor := crDefault;
  fmKEReq.Close;
 end;
end;

procedure TfmKEReq.sb1Click(Sender: TObject);
var
  FName: string;
  ID_I: integer;
begin
  {If od1.Execute Then begin
  // If dmIS.qDOCID_DRAFT.IsNull Then begin
    with dmIS.qD_IN, dmIS.qD_IN.SQL do begin
     Close;
     Clear;
     Add('SELECT * FROM NEW_DESIGN_DOC( ' + dmIS.qDOCID_PROJECT_DOC.AsString + ',' +
       IntToStr(SysVars.RegTN) + ')');
     try
      Open;
      ID_I := FieldByName('ID_DOC').Value;
      If dmIS.dT.Active Then dmIS.dT.CommitRetaining;
     except
      If dmIS.dT.Active Then dmIS.dT.RollbackRetaining;
      MsgError('Ошибка при записи нового эскиза','Ошибка записи');
      exit;
     end;
    end;
    with dmIS.qIN, dmIS.qIN.SQL do begin
     Close;
     Clear;
     Add('UPDATE PROJECT_DOCS SET ID_DRAFT = ' + IntToStr(ID_I) );
     Add('WHERE ID_PROJECT_DOC = ' + dmIS.qDOCID_PROJECT_DOC.AsString);
     try
      ExecSQL;
      If dmIS.mT.Active Then dmIS.mT.CommitRetaining;
     except
      If dmIS.mT.Active Then dmIS.mT.RollbackRetaining;
      MsgError('Ошибка при записи нового документа','Ошибка записи');
      exit;
     end;
  //  end;
   end else ID_I := dmIS.qDOCID_DRAFT.Value; //поле ID_DRAFT is not null
   FName := ExtractFileName(od1.FileName);
   fmMain.StoreDoc(2,ID_I,FName,dmIS.qR_BODY);
  end;
   }

end;

end.
