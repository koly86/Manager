unit unClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ComCtrls, ToolWin, ExtCtrls, DBCtrls,
  Grids, DBGridEh, StdCtrls, IBQuery, DB, IBCustomDataSet, Buttons, ImgList;

type
  TfmClients = class(TMainForm)
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    clb1: TCoolBar;
    tlb1: TToolBar;
    tb0: TToolButton;
    dbg1: TDBGridEh;
    dbn1: TDBNavigator;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    dbg2: TDBGridEh;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    Label10: TLabel;
    ed1: TEdit;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label2: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    Label11: TLabel;
    dbg3: TDBGridEh;
    ToolButton2: TToolButton;
    tb2: TToolButton;
    tb1: TToolButton;
    ToolButton3: TToolButton;
    TabSheet1: TTabSheet;
    qDoc: TIBQuery;
    DBGridEh1: TDBGridEh;
    dsDoc: TDataSource;
    qDocID_ITEM_DOC: TIntegerField;
    qDocID_ITEM: TIntegerField;
    qDocINN: TIBStringField;
    qDocNAME: TIBStringField;
    qDocD_EDIT: TDateTimeField;
    qDocID_EDIT: TIntegerField;
    qDocID_DOC: TIntegerField;
    qDocFILENAME: TIBStringField;
    qDocREM: TMemoField;
    qDocSTATUS: TIntegerField;
    qDocFIO: TIBStringField;
    DBMemo1: TDBMemo;
    Splitter2: TSplitter;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    imgMonButton: TImageList;
    pnDoc: TPanel;
    GroupBox1: TGroupBox;
    Panel9: TPanel;
    SpeedButton1: TSpeedButton;
    lbFname: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel10: TPanel;
    Label12: TLabel;
    edDOcName: TEdit;
    GroupBox2: TGroupBox;
    edRem: TMemo;
    od1: TOpenDialog;
    qIN: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tb0Click(Sender: TObject);
    procedure dbg1SortMarkingChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbg2SortMarkingChanged(Sender: TObject);
    procedure dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbg3SortMarkingChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure dbg3DblClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    mode: byte;
    fname: string;
    procedure OpenAccounts;
    procedure OpenContracts;
    { Private declarations }
  public
    C_Agent, C_DOG, kop: integer;
    up_Dog: integer; // �������� �������
    procedure OpenAgents;
    { Public declarations }
  end;

var
  fmClients: TfmClients;

implementation
uses unMain, unIS, unACli, unKOrder, unCliOrds, unNewOrd, uAll;

const
  id_Form = 30;

{$R *.dfm}

procedure TfmClients.OpenAgents;
begin
  Screen.Cursor := crHourGlass;
  with dmIS.qAg, dmIS.qAg.SQL do
  begin
    if Active then
      C_Agent := dmIS.qAgID_ITEM.AsInteger;

    Close;
    Clear;
    if kop = 0 then
    begin
      Add('select I.ID_ITEM, I.NAME, I.ID_C, I.ID_AX from ITEMS I');
      if rb1.Checked then
        Add('join BR_ITEMS(13,0) B')
      else
        Add('join BR_ITEMS(15,0) B');
      Add('on B.ID=I.ID_ITEM where I.STATUS <> 3');
      case SysVars.ServType of
        0: Add(OrderBy(dbg1));
        1: Add(OrderByFields(dbg1));
      end;
    end
    else
    begin
      add('select * from items where id_item =:idi');
      parambyname('idi').AsInteger := c_agent;
    end;
    // add(OrdBy(dbg1));
    Open;
    Locate('ID_ITEM', C_Agent, []);
  end;

  OpenAccounts;
  with dmIS.qUrAg do
  begin
    Close;
    Open;
  end;
  OpenContracts;
  qDoc.Close;
  qDoc.Open;
  Screen.Cursor := crDefault;
end;

procedure TfmClients.OpenAccounts;
begin
  with dmIS.qAINN, dmIS.qAINN.SQL do
  begin
    Close;
    Clear;
    Add('select i.id_item, i.inn, i.def_account, a.id_accounts, a.rch,');
    Add('a.bik, a.name_bik, a.korch, a.filial');
    Add('from items_uragents i left join accounts a on a.inn = i.inn');
    Add('where i.id_item = :id_item');
    case SysVars.ServType of
      0: Add(OrderBy(dbg2));
      1: Add(OrderByFields(dbg2));
    end;
    Open;
  end;
end;

procedure TfmClients.OpenContracts;
begin
  with dmIS.qContr, dmIS.qContr.SQL do
  begin
    if Active then
      C_DOG := dmIS.qContrID_DOGOVOR.AsInteger;
    Close;
    Clear;
    Add('select D.* , T.Name, c.name cname');
    Add('from DOGOVOR D left join DOGOVOR_TYPES T');
    Add('on T.ID_DOGOVOR_TYPES = D.ID_DOGOVOR_TYPES');
    Add('left join currency c on c.id_currency = d.id_currency');
    Add('where D.ID_AGENT = :id_item');
    case SysVars.ServType of
      0: Add(OrderBy(dbg3));
      1: Add(OrderByFields(dbg3));
    end;
    Open;
    Locate('ID_DOGOVOR', C_DOG, []);
  end;
end;

procedure TfmClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  C_Agent := 0;
  kop := 0;
  try
    if dmIS.dbIS.Connected then
    begin
      dmIS.qContr.Close;
      dmIS.qAg.Close;
      dmIS.qAINN.Close;
      dmIS.qUrAg.Close;
      with TUserSettings.Create(dmIS.dbIS, id_Form) do
      try
        Write(Self, iniForm);
        Write(p2, iniRect);
        Write(dbg1, iniGridEh);
      finally
        Free;
      end;
    end;
  except
  end;
end;

procedure TfmClients.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
    Read(p2, iniRect);
    ReadEh(dbg1, id_Form);
  finally
    Free;
  end;
  pc1.ActivePage := ts2;
  C_Agent := 0;
  kop := 0;
end;

procedure TfmClients.tb0Click(Sender: TObject);
begin
  OpenAgents;
end;

procedure TfmClients.dbg1SortMarkingChanged(Sender: TObject);
begin
  OpenAgents;
end;

procedure TfmClients.FormShow(Sender: TObject);
begin
  OpenAgents;
end;

procedure TfmClients.ed1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FindGridValue(dbg1, ed1, Key, 'ID_ITEM');
end;

procedure TfmClients.dbg2SortMarkingChanged(Sender: TObject);
begin
  OpenAccounts;
end;

procedure TfmClients.dbg2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (dmIS.qAINNDEF_ACCOUNT.AsInteger > 0) and
    (dmIS.qAINNDEF_ACCOUNT.AsInteger = dmIS.qAINNID_ACCOUNTS.AsInteger) then
    AFont.Color := clBlue;
end;

procedure TfmClients.dbg3SortMarkingChanged(Sender: TObject);
begin
  OpenContracts;
end;

procedure TfmClients.FormActivate(Sender: TObject);
begin
  tb1.Enabled := fmMain.UF16;
  tb2.Enabled := fmMain.UF16;
end;

procedure TfmClients.tb1Click(Sender: TObject);
begin
  if not Assigned(fmACli) then
    Application.CreateForm(TfmACli, fmACli);
  if rb2.Checked then
    fmACli.PRT_TYPE := 1
  else
    fmACli.PRT_TYPE := 0;
  fmACli.Show;
end;

procedure TfmClients.tb2Click(Sender: TObject);
begin
  if dmIS.qAg.IsEmpty then
    exit;

  // ������
  if rb1.Checked then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT ID_ORDER FROM PROJECT_ORDS WHERE ID_AGENT = ' +
        dmIS.qAgID_ITEM.AsString);
      Open;
      if not IsEmpty then
      begin
        MsgInformation('������ ����� ��. �������� ���������',
          '������ ��������');
        exit;
      end;
      Close;
      Clear;
      Add('SELECT ID_PROJECT FROM PROJECTS WHERE ID_AGENT = ' +
        dmIS.qAgID_ITEM.AsString);
      Open;
      if not IsEmpty then
      begin
        MsgInformation('� �������� ������� �������. �������� ���������',
          '������ ��������');
        exit;
      end;
    end;
  end;

  // ���������
  if rb2.Checked then
  begin
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('SELECT ID_PORDER FROM PORDERS WHERE ID_AGENT = ' +
        dmIS.qAgID_ITEM.AsString);
      Open;
      if not IsEmpty then
      begin
        MsgInformation('��������� ����� PO. �������� ���������',
          '������ ��������');
        exit;
      end;
    end;
  end;

  if MsgQuestion(SysVars.NReg + ', �� ������������� ������ ������� - ' +
    dmIS.qAgNAME.AsString + ' ?', '�������� ������') = id_yes then
    with dmIS.qIN, dmIS.qIN.SQL do
    begin
      Close;
      Clear;
      Add('DELETE FROM ITEMS WHERE ID_ITEM = ' + dmIS.qAgID_ITEM.AsString);
      try
        ExecSQL;
        OpenAgents;
        if dmIS.mT.Active then
          dmIS.mT.CommitRetaining;
      except;
        if dmIS.mT.Active then
          dmIS.mT.RollbackRetaining;
      end;
    end;

end;

procedure TfmClients.rb1Click(Sender: TObject);
begin
  OpenAgents;
end;

procedure TfmClients.dbg3DblClick(Sender: TObject);
begin
  try
    if up_dog = 1 then
    begin
      f_KOrder[fmMain.NF_KOrder].lbNomDog.Caption :=
        dmIS.qContrID_DOGOVOR.AsString;
      f_KOrder[fmMain.NF_KOrder].edDog.Text := dmIS.qContrDOG_NUMBER.AsString;
      up_dog := 0;
      fmClients.Close;
    end;
    if up_dog = 2 then
    begin
      fmNewOrd.lbNomDog.Caption := dmIS.qContrID_DOGOVOR.AsString;
      fmNewOrd.edDog.Text := dmIS.qContrDOG_NUMBER.AsString;
      up_dog := 0;
      fmClients.Close;
    end;
  except
  end;
end;

procedure TfmClients.ToolButton3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if dbg1.Focused then
    GridToExcel(dbg1);
  if dbg2.Focused then
    GridToExcel(dbg2);
  if dbg3.Focused then
    GridToExcel(dbg3);
  Screen.Cursor := crDefault;
end;

procedure TfmClients.DBGridEh1DblClick(Sender: TObject);
begin
  if qDocID_DOC.AsInteger > 0 then
    Old_DocBody(qDocID_DOC.AsInteger, 0, '');
      // ������� ��� ����� ���� ����������
  //  fmAll.StoreDoc_r(qDocID_DOC.AsInteger);
end;

procedure TfmClients.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not qDocINN.IsNull then
    AFont.Style := [fsBold]; //Background. := clSilver;
end;

procedure TfmClients.BitBtn2Click(Sender: TObject);
begin
  fmAll.AddDocToAgent(mode, dmIS.qAgID_ITEM.asinteger,
    qDocID_ITEM_DOC.AsInteger,
    dmIS.qAINNINN.AsString, FNAME, edRem.Text, edDOcName.Text);

  qDoc.Transaction.CommitRetaining;
  qDoc.Close;
  qDoc.Open;
  pnDoc.Visible := false;
end;

procedure TfmClients.SpeedButton1Click(Sender: TObject);
begin
  if od1.Execute then
  begin
    fname := od1.FileName;
    lbFname.Caption := od1.FileName;
  end;
end;

procedure TfmClients.ToolButton4Click(Sender: TObject);
begin
  mode := 0;
  pnDoc.Visible := true;
  edDOcName.Text := '';
  edRem.Text := '';
  lbFname.Caption := '';
  if od1.Execute then
  begin
    fname := od1.FileName;
    lbFname.Caption := od1.FileName;
  end;
end;

procedure TfmClients.ToolButton5Click(Sender: TObject);
begin
  mode := 1;
  pnDoc.Visible := true;
  edDOcName.Text := '';
  edRem.Text := '';
  lbFname.Caption := '';
  if od1.Execute then
  begin
    fname := od1.FileName;
    lbFname.Caption := od1.FileName;
  end;
end;

procedure TfmClients.ToolButton6Click(Sender: TObject);
begin
  pnDoc.Visible := true;
  edDOcName.Text := qDocNAME.AsString;
  edRem.Text := qDocREM.AsString;
  lbFname.Caption := qDocFILENAME.AsString;
  fname := qDocFILENAME.AsString;
  mode := 3;
end;

procedure TfmClients.ToolButton7Click(Sender: TObject);
begin
  if qDocID_EDIT.AsInteger <> SysVars.RegTN then
  begin
    showmessage('�� �� ������ ������� ����� ��������!');
    exit;
  end;
  if MsgQuestion('�� ������������� ������ ������� ��������?',
    '�������� ���������') = id_yes then
    with qIn, qIN.sql do
    begin
      close;
      clear;
      add('update item_docs set status = 3');
      add('where (id_item_doc = :id_item_doc)');
      parambyname('id_item_doc').AsInteger := qDocID_ITEM_DOC.AsInteger;
      ExecSQL;
      Transaction.Commit;
      qDoc.Close;
      qDoc.Open;
    end;
end;

procedure TfmClients.BitBtn3Click(Sender: TObject);
begin
  pnDoc.Visible := false;
end;

end.
