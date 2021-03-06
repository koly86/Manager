unit unACli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, DB, ADODB, ComCtrls, StdCtrls, ToolWin,
  Grids, DBGridEh, DBCtrls, ExtCtrls, IBQuery, IBCustomDataSet, uxml_parser;

type
  TfmACli = class(TMainForm)
    Splitter2: TSplitter;
    p1: TPanel;
    dbn4: TDBNavigator;
    dbg1: TDBGridEh;
    tlb3: TToolBar;
    tb0: TToolButton;
    ToolButton6: TToolButton;
    tb4: TToolButton;
    ToolButton25: TToolButton;
    Label1: TLabel;
    ed1: TEdit;
    pc1: TPageControl;
    ts1: TTabSheet;
    Panel5: TPanel;
    DBNavigator1: TDBNavigator;
    dng2: TDBGridEh;
    ts2: TTabSheet;
    DBNavigator2: TDBNavigator;
    dbg3: TDBGridEh;
    ac2: TADOConnection;
    qURAG: TADOQuery;
    qURAGID_PARTNERTYPE: TIntegerField;
    qURAGID_PARTNER: TIntegerField;
    qURAGNAME: TStringField;
    qURAGNAME_ALIAS: TStringField;
    qURAGINN: TStringField;
    qURAGADRES1: TStringField;
    qURAGADRES2: TStringField;
    qURAGFIOFIRM: TStringField;
    qURAGFIOBYX: TStringField;
    qURAGTEL: TStringField;
    qURAGDOLFIRM: TStringField;
    qURAGDOLBYX: TStringField;
    qURAGOKOHX: TStringField;
    qURAGOKPO: TStringField;
    qURAGKPP: TStringField;
    qURAGOGRN: TWideStringField;
    qURAGOKVED: TStringField;
    qURAGMARK: TSmallintField;
    qURAGOKUD: TStringField;
    qURAGID_AXAPTA: TStringField;
    qURAGID_PVG: TStringField;
    qURAGID_ISMPK: TStringField;
    dsURAG: TDataSource;
    qDOG: TADOQuery;
    qDOGID_CONTRACT: TStringField;
    qDOGINN: TStringField;
    qDOGDOG_DATE_IN: TDateTimeField;
    qDOGDOG_DATE_OUT: TDateTimeField;
    qDOGCURRENCY: TStringField;
    qDOGVID: TIntegerField;
    qDOGKOL_DAY: TIntegerField;
    qDOGID_TYPEOPL: TIntegerField;
    qDOGPROC: TFloatField;
    qDOGDOG_OBJ: TStringField;
    qDOGREM: TStringField;
    qDOGPIOPLE: TStringField;
    qDOGEMAIL: TStringField;
    qDOGSTATUS: TStringField;
    qDOGID_DOGOVOR_TYPES: TIntegerField;
    qDOGID_AXAPTA: TStringField;
    qDOGID_PVG: TStringField;
    qDOGID_ISMPK: TStringField;
    dsDOG: TDataSource;
    qAUP: TADOQuery;
    qACC: TADOQuery;
    qACCID_ACCOUNT: TStringField;
    qACCID_PARTNERTYPE: TIntegerField;
    qACCID_PARTNER: TIntegerField;
    qACCINN: TStringField;
    qACCRCH: TStringField;
    qACCBIK: TStringField;
    qACCNAME_BIK: TStringField;
    qACCKORCH: TStringField;
    qACCFILIAL: TStringField;
    qACCID_AXAPTA: TStringField;
    qACCID_PVG: TStringField;
    qACCID_ISMPK: TStringField;
    dsACC: TDataSource;
    ts3: TTabSheet;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label3: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    Label11: TLabel;
    ToolButton1: TToolButton;
    tb1: TToolButton;
    tb2: TToolButton;
    tb3: TToolButton;
    ToolButton2: TToolButton;
    tb5: TToolButton;
    qDOGDOG_NUMBER_: TStringField;
    qURAGId_Object: TAutoIncField;
    qURAGId_IS: TStringField;
    qDOGId_Object: TAutoIncField;
    qACCId_Object: TAutoIncField;
    cb1: TCheckBox;
    ToolButton3: TToolButton;
    qDOGDOG_DATE: TDateTimeField;
    qURAGRealAddress: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tb0Click(Sender: TObject);
    procedure tb4Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tb5Click(Sender: TObject);
  private
    C_ORD, C_URAG, N_AGENT: integer;
    SComp, NSF: string;
    procedure OpenUrAgents;
    procedure NewClient;
    procedure NewUrAgent;
    procedure NewAccount;
    procedure NewDog;
    { Private declarations }
  public
    PRT_TYPE: integer;
    { Public declarations }
  end;

var
  fmACli: TfmACli;

implementation
uses unMain, unIS, unClients;

const
  id_Form = 31;

{$R *.dfm}

procedure TfmACli.NewClient;
begin
  if qURAG.IsEmpty then
    exit;
  if dmIS.qAg.Active and dmIS.qAg.Locate('ID_AX', qURAGID_PARTNER.AsString, [])
    then
  begin
    if (not cb1.Checked) and (MsgQuestion('���������� � ����� AXAPTA - ' +
      qURAGID_PARTNER.AsString + ' - ��� ���� � ���� ������ ��: ' +
      dmIS.qAgID_ITEM.AsString + ' - ' + dmIS.qAgNAME.AsString +
      '. �������� ������ �� �����������?', '�������� �� ���� AXAPTA') = id_no)
        then
      exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    // ��.����
    NewUrAgent;
    //�����
    if not qACC.IsEmpty then
    begin
      qACC.First;
      while not qACC.Eof do
      begin
        NewAccount;
        qACC.Next;
      end;
    end;
    //��������

    if not qDOG.IsEmpty then
    begin
      qDOG.First;
      while not qDOG.Eof do
      begin
        NewDog;
        qDOG.Next;
      end;
    end;

    OpenUrAgents;
    Screen.Cursor := crDefault;
  except
    Screen.Cursor := crDefault;
    MsgError('������ ��� ������ ���������� � ����������� ' +
      qURAGNAME.AsString + ' - ��� Axapta: ' + qURAGID_PARTNER.AsString,
      '������ ������');
  end;
end;

procedure TfmACli.NewUrAgent;
begin
  if qURAG.IsEmpty then
    exit;
  if not ((qURAGID_IS.IsNull) or (qURAGID_IS.AsString = '')) then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select I.ID_ITEM from ITEMS I');
    if (PRT_TYPE = 0) then
      Add('join BR_ITEMS(13,0) B')
    else
      Add('join BR_ITEMS(15,0) B');
    Add('on B.ID=I.ID_ITEM where (I.STATUS <> 3) and I.ID_AX = :ax1');
    ParamByName('ax1').AsString := qURAGID_PARTNER.AsString;
    Open;
    Last;
    First;
    if dmIS.qIN.RecordCount > 1 then
    begin
      MsgError('� ���� ������ ��������� ������������ � ����� AXAPTA - ' +
        qURAGID_PARTNER.AsString, '�������� ������������ ���� AXAPTA');
      exit;
    end;
  end;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select id_mpk from NEW_AX_URAGENT(:id_type, :id_ax, :id_pvg, :name,');
    Add(':inn, :adres1, :adres2, :fiofirm, :fiobyx, :tel, :dolfirm, :dolbyx,');
    Add(':okohx, :okpo, :kpp, :ogrn, :okved, :mark, :okud, :name_urag)');
    ParamByName('id_type').AsInteger := qURAGID_PARTNERTYPE.AsInteger;
    ParamByName('id_ax').AsString := qURAGID_PARTNER.AsString;
    if qURAGID_PVG.IsNull then
      ParamByName('id_pvg').Clear
    else
      ParamByName('id_pvg').AsInteger := qURAGID_PVG.AsInteger;
    if qURAGNAME_ALIAS.IsNull then
      ParamByName('name').Clear
    else
      ParamByName('name').AsString := Trim(qURAGNAME_ALIAS.AsString);
    if qURAGINN.IsNull then
      ParamByName('inn').Clear
    else
      ParamByName('inn').AsString := Trim(qURAGINN.AsString);
    if qURAGADRES1.IsNull then
      ParamByName('adres1').Clear
    else
      ParamByName('adres1').AsString := Trim(qURAGRealAddress.AsString);
    if qURAGADRES2.IsNull then
      ParamByName('adres2').Clear
    else
      ParamByName('adres2').AsString := Trim(qURAGADRES2.AsString);
    if qURAGFIOFIRM.IsNull then
      ParamByName('fiofirm').Clear
    else
      ParamByName('fiofirm').AsString := Trim(qURAGFIOFIRM.AsString);
    if qURAGFIOBYX.IsNull then
      ParamByName('fiobyx').Clear
    else
      ParamByName('fiobyx').AsString := Trim(qURAGFIOBYX.AsString);
    if qURAGTEL.IsNull then
      ParamByName('tel').Clear
    else
      ParamByName('tel').AsString := Trim(qURAGTEL.AsString);
    if qURAGDOLFIRM.IsNull then
      ParamByName('dolfirm').Clear
    else
      ParamByName('dolfirm').AsString := Trim(qURAGDOLFIRM.AsString);
    if qURAGDOLBYX.IsNull then
      ParamByName('dolbyx').Clear
    else
      ParamByName('dolbyx').AsString := Trim(qURAGDOLBYX.AsString);
    if qURAGOKOHX.IsNull then
      ParamByName('okohx').Clear
    else
      ParamByName('okohx').AsString := Trim(qURAGOKOHX.AsString);
    if qURAGOKPO.IsNull then
      ParamByName('okpo').Clear
    else
      ParamByName('okpo').AsString := Trim(qURAGOKPO.AsString);
    if qURAGKPP.IsNull then
      ParamByName('kpp').Clear
    else
      ParamByName('kpp').AsString := Trim(qURAGKPP.AsString);
    if qURAGOGRN.IsNull then
      ParamByName('ogrn').Clear
    else
      ParamByName('ogrn').AsString := Trim(qURAGOGRN.AsString);
    if qURAGOKVED.IsNull then
      ParamByName('okved').Clear
    else
      ParamByName('okved').AsString := Trim(qURAGOKVED.AsString);
    if qURAGMARK.IsNull then
      ParamByName('mark').Clear
    else
      ParamByName('mark').AsInteger := qURAGMARK.AsInteger;
    if qURAGOKUD.IsNull then
      ParamByName('okud').Clear
    else
      ParamByName('okud').AsString := Trim(qURAGOKUD.AsString);
    if qURAGNAME.IsNull then
      ParamByName('name_urag').Clear
    else
      ParamByName('name_urag').AsString := Trim(qURAGNAME.AsString);
    try
      Open;
      if not IsEmpty then
        N_AGENT := FieldByName('ID_MPK').AsInteger
      else
        N_AGENT := -1;
      if (N_AGENT > 0) then
        with qAUP, qAUP.SQL do
        begin
          Close;
          Clear;
          Add('update IsLinks set ID_IS = :idmpk where Id_Object = :ob1');
          Add('and Id_ExTable = 1 and Id_InfoSystem = :ifs');
          Parameters.ParamByName('idmpk').Value := N_AGENT;
          Parameters.ParamByName('ob1').Value := qURAGId_Object.Value;
          Parameters.ParamByName('ifs').Value := SysVars.IdFil;
          ExecSQL;
        end;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmACli.NewAccount;
var
  id_mpk: integer;
begin
  if qACC.IsEmpty then
    exit;
  //If not (qACCID_ISMPK.IsNull or (qAccID_ISMPK.AsString = '')) Then exit;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select id_mpk from NEW_ACCOUNT(:inn, :rch, :bik, :name_bik, :korch, :filial)');
    ParamByName('inn').AsString := Trim(qACCINN.AsString);
    ParamByName('rch').AsString := Trim(qACCRCH.AsString);
    if qACCBIK.IsNull then
      ParamByName('bik').Clear
    else
      ParamByName('bik').AsString := Trim(qACCBIK.AsString);
    if qACCNAME_BIK.IsNull then
      ParamByName('name_bik').Clear
    else
      ParamByName('name_bik').AsString := Trim(qACCNAME_BIK.AsString);
    if qACCKORCH.IsNull then
      ParamByName('korch').Clear
    else
      ParamByName('korch').AsString := Trim(qACCKORCH.AsString);
    if qACCFILIAL.IsNull then
      ParamByName('filial').Clear
    else
      ParamByName('filial').AsString := Trim(qACCFILIAL.AsString);
    try
      Open;
      if not IsEmpty then
        ID_MPK := FieldByName('ID_MPK').AsInteger
      else
        ID_MPK := -1;
      if (ID_MPK > 0) then
        with qAUP, qAUP.SQL do
        begin
          Close;
          Clear;
          Add('update IsLinks set ID_IS = :idmpk where Id_Object = :ob1');
          Add('and Id_ExTable = 2 and Id_InfoSystem = :ifs');
          Parameters.ParamByName('idmpk').Value := ID_MPK;
          Parameters.ParamByName('ob1').Value := qACCId_Object.Value;
          Parameters.ParamByName('ifs').Value := SysVars.IdFil;
          ExecSQL;
        end;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmACli.NewDOG;
var
  id_mpk: integer;
begin
  if qDOG.IsEmpty then
    exit;
  if not (qDOGID_ISMPK.IsNull or (qDOGID_ISMPK.AsString = '')) then
    exit;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select id_mpk from NEW_DOG(:id_ax, :id_pvg, :inn,:dog_date, :dog_date_in');
    Add(', :dog_date_out, :dog_number_, :curr, :id_agent)');
    ParamByName('id_ax').AsString := qDOGID_CONTRACT.AsString;
    ParamByName('id_agent').AsInteger := N_AGENT;
    if qDOGID_PVG.IsNull then
      ParamByName('id_pvg').Clear
    else
      ParamByName('id_pvg').AsInteger := qDOGID_PVG.AsInteger;
    if qDOGINN.IsNull then
      ParamByName('inn').Clear
    else
      ParamByName('inn').AsString := qDOGINN.AsString;

    if qDOGDOG_DATE.IsNull or (qDOGDOG_DATE.AsFloat < 3) then
      ParamByName('dog_date').Clear
    else
      ParamByName('dog_date').AsDate := qDOGDOG_DATE.AsDateTime;

    if qDOGDOG_DATE_IN.IsNull or (qDOGDOG_DATE_IN.AsFloat < 3) then
      ParamByName('dog_date_in').Clear
    else
      ParamByName('dog_date_in').AsDate := qDOGDOG_DATE_IN.AsDateTime;
    if qDOGDOG_DATE_OUT.IsNull or (qDOGDOG_DATE_OUT.AsFloat < 3) then
      ParamByName('dog_date_out').Clear
    else
      ParamByName('dog_date_out').AsDate := qDOGDOG_DATE_OUT.AsDateTime;
    if qDOGDOG_NUMBER_.IsNull then
      ParamByName('dog_number_').Clear
    else
      ParamByName('dog_number_').AsString := qDOGDOG_NUMBER_.AsString;
    if qDOGCURRENCY.IsNull then
      ParamByName('curr').Clear
    else
      ParamByName('curr').AsString := qDOGCURRENCY.AsString;
    try
      Open;
      if not IsEmpty then
        ID_MPK := FieldByName('ID_MPK').AsInteger
      else
        ID_MPK := -1;
      if (ID_MPK > 0) then
        with qAUP, qAUP.SQL do
        begin
          Close;
          Clear;
          Add('update IsLinks set ID_IS = :idmpk where Id_Object = :ob1');
          Add('and Id_ExTable = 3 and Id_InfoSystem = :ifs');
          Parameters.ParamByName('idmpk').Value := ID_MPK;
          Parameters.ParamByName('ob1').Value := qDOGId_Object.Value;
          Parameters.ParamByName('ifs').Value := SysVars.IdFil;
          ExecSQL;
        end;
      if Transaction.Active then
        Transaction.Commit;
    except
      if Transaction.Active then
        Transaction.Rollback;
    end;
  end;
end;

procedure TfmACli.OpenUrAgents;
begin
  with qURAG, qURAG.SQL do
  begin
    if Active then
      C_URAG := qURAGID_PARTNER.AsInteger;
    Close;
    Clear;
    Add('select distinct P.*, L.Id_IS from PARTNER P join CONTRACT C');
    Add('on C.id_partnertype = P.id_partnertype and C.id_partner = P.id_partner');
    Add('and C.company = ''' + SComp + '''');
    Add('join ISLinks L on L.Id_ExTable = 1 and L.Id_InfoSystem = ' +
      IntToStr(SysVars.IdFil));
    Add('and L.Id_Object = P.Id_Object');
    Add('where P.id_partnertype = ' + IntToStr(PRT_TYPE));
    if tb1.Down then
      Add('and L.ID_IS is null');
    if tb2.Down then
      Add('and P.ID_IS = -2');
    Add(OrderByFields(dbg1));
    //  ShowMessage(Text);
    Open;
    Locate('ID_PARTNER', C_URAG, []);
  end;
  qDOG.Close;
  qDOG.Parameters.ParamByName('sc1').Value := SComp;
  qDOG.Open;
  qACC.Close;
  qACC.Open;
end;

procedure TfmACli.FormShow(Sender: TObject);
begin
  case PRT_TYPE of
    0: fmACli.Caption := '������� (AXAPTA)';
    1: fmACli.Caption := '���������� (AXAPTA)';
  end;
  with dmIS.qIM, dmIS.qIM.SQL do
  begin
    Close;
    Clear;
    Add('select AX_COMPANY, NAME from SELFFIRMS where MARK = ''*''');
    Open;
    SComp := FieldByName('AX_COMPANY').AsString;
    NSF := FieldByName('NAME').AsString;
  end;
  try
    Screen.Cursor := crHourGlass;
    if not ac2.Connected then
      ac2.Connected := True;
    OpenUrAgents;
    Screen.Cursor := crDefault;
    fmACli.Caption := fmACli.Caption + ' ����������� - ' + NSF;
  except
    Screen.Cursor := crDefault;
    MsgError('��� ����� � ����� ������ ������������ AXAPTA',
      '������ ����������');
    fmACli.Close;
  end;
end;

procedure TfmACli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qURAG.Close;
  qDOG.Close;
  qACC.Close;
  ac2.Connected := False;
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Write(Self, iniForm);
    Write(p1, iniRect);
  finally
    Free;
  end;
end;

procedure TfmACli.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p1, iniRect);
  finally
    Free;
  end;
  PRT_TYPE := 0;
  pc1.ActivePage := ts1;
end;

procedure TfmACli.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_PARTNER');
end;

procedure TfmACli.tb0Click(Sender: TObject);
begin
  OpenUrAgents;
end;

procedure TfmACli.tb4Click(Sender: TObject);
var
  i: integer;
  s: string;
begin
  if qURAG.IsEmpty then
    exit;
  if dbg1.SelectedRows.Count > 0 then
    s := ' ��������� ������ '
  else
    s := ' ��� ������ ';
  if MsgQuestion(s + '�� ����������� ������������ ����� ������������� ' +
    '� �������� ���� ������. ' + SysVars.NReg + ', ��������� ��������?',
    '������ ������������') = id_yes then
    if dbg1.SelectedRows.Count > 0 then
      for i := 0 to dbg1.SelectedRows.Count - 1 do
      begin
        qURAG.GotoBookmark(pointer(dbg1.SelectedRows.Items[i]));
        if not qURAGId_IS.IsNull then
        ExportCLient2XML(dmIS.dbIS, qURAGId_IS.AsInteger);
        NewClient;
      end
    else
    begin
      qURAG.First;
      while not qURAG.EOF do
      begin
        if not qURAGId_IS.IsNull then
        ExportCLient2XML(dmIS.dbIS, qURAGId_IS.AsInteger);
        NewClient;
        qURAG.Next;
      end;
    end;
  OpenUrAgents;
end;

procedure TfmACli.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenUrAgents;
end;

procedure TfmACli.FormActivate(Sender: TObject);
begin
  tb4.Enabled := fmMain.UF16;
  tb5.Enabled := fmMain.UF16;
end;

procedure TfmACli.tb5Click(Sender: TObject);
begin
  if qURAG.IsEmpty then
    exit;
  if MsgQuestion('� ����������� ' + qURAGNAME_ALIAS.AsString +
    ' ����� ���� ��� ��. ' + SysVars.NReg + ', ��������� ��������?',
    '������� ���� ��') = id_yes then
    with qAUP, qAUP.SQL do
    begin
      Close;
      Clear;
      Add('update IsLinks set ID_IS = NULL where Id_Object = :ob1');
      Add('and Id_ExTable = 1 and L.Id_InfoSystem = :ifs');
      Parameters.ParamByName('ob1').Value := qURAGId_Object.Value;
      Parameters.ParamByName('ifs').Value := SysVars.IdFil;
      ExecSQL;
    end;
  OpenUrAgents;
end;

end.
