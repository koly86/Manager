unit unKOrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShrFunc, unMainForm, ExtCtrls, Menus, ComCtrls, ToolWin,
  DBCtrls, Grids, DBGridEh, StdCtrls, DB, IBCustomDataSet, IBQuery, Buttons;

type
  TfmKOrd = class(TMainForm)
    clb1: TCoolBar;
    tlb1: TToolBar;
    tb1: TToolButton;
    PopupMenu1: TPopupMenu;
    p1: TPanel;
    p2: TPanel;
    Splitter1: TSplitter;
    p3: TPanel;
    dbg4: TDBGridEh;
    dbn3: TDBNavigator;
    Splitter2: TSplitter;
    dbg3: TDBGridEh;
    Label6: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    DBText4: TDBText;
    Label2: TLabel;
    Label8: TLabel;
    DBText6: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Bevel1: TBevel;
    Label10: TLabel;
    DBText8: TDBText;
    Label12: TLabel;
    DBText11: TDBText;
    Label13: TLabel;
    Label15: TLabel;
    DBText13: TDBText;
    DBText19: TDBText;
    Label11: TLabel;
    DBText9: TDBText;
    Label20: TLabel;
    DBText10: TDBText;
    Label21: TLabel;
    DBText20: TDBText;
    DBText12: TDBText;
    Label24: TLabel;
    DBText15: TDBText;
    Label31: TLabel;
    DBText22: TDBText;
    Label3: TLabel;
    DBText16: TDBText;
    DBText5: TDBText;
    DBText14: TDBText;
    DBText17: TDBText;
    Label4: TLabel;
    DBText18: TDBText;
    Label14: TLabel;
    Label16: TLabel;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    ToolButton1: TToolButton;
    tb2: TToolButton;
    tb3: TToolButton;
    N1: TMenuItem;
    N3: TMenuItem;
    Label5: TLabel;
    DBText26: TDBText;
    DBText27: TDBText;
    pc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    dbm1: TDBMemo;
    dbn2: TDBNavigator;
    dbg2: TDBGridEh;
    cb1: TCheckBox;
    cb2: TCheckBox;
    Label17: TLabel;
    DBText28: TDBText;
    DBText29: TDBText;
    Label18: TLabel;
    DBText30: TDBText;
    TabSheet1: TTabSheet;
    qPL_SH: TIBQuery;
    qPL_SHID_PLAN_SHIPP: TIntegerField;
    qPL_SHID_ORDER: TIntegerField;
    qPL_SHD_PLANING: TDateField;
    qPL_SHAMOUNT: TFloatField;
    qPL_SHSUMMA: TFloatField;
    qPL_SHPLAN_TYPE: TIntegerField;
    qPL_SHD_FIX: TDateTimeField;
    qPL_SHID_FIX: TIntegerField;
    qPL_SHID_C: TIntegerField;
    qPL_SHIN_PLAN: TIntegerField;
    qPL_SHFLAG: TIntegerField;
    qPL_SHADRESS: TMemoField;
    qPL_SHkol_day: TIntegerField;
    qPL_SHO_D: TDateField;
    dsPL_SH: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    ToolButton2: TToolButton;
    Label19: TLabel;
    Label22: TLabel;
    DBText21: TDBText;
    DBText31: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure tb2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    procedure OpenCard;
    { Private declarations }
  public
    C_ORD: integer;
    { Public declarations }
  end;

var
  fmKOrd: TfmKOrd;

implementation
uses unMain, unIS, unREP, uAll, ufmDetail;

const
  id_Form = 24;

{$R *.dfm}

procedure TfmKOrd.OpenCard;
begin
  if dmIS.mT.Active then
    dmIS.mT.CommitRetaining;
  cb1.Checked := dmIS.qP_ORDSIS_CHARGE.AsInteger = 1;
  cb2.Checked := dmIS.qP_ORDSIS_OS.AsInteger = 1;
  with dmIS.qOrd_PF do
  begin
    Close;
    DataSource := dmIS.dsP_ORDS;
    Open;
  end;
  with dmIS.qOrd_S do
  begin
    Close;
    DataSource := dmIS.dsP_ORDS;
    Open;
  end;
  with dmIS.qORD_POS do
  begin
    Close;
    UpdateObject := nil;
    ParamByName('ID_ORDER').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
    Open;
  end;
  qPL_SH.close;
  qPL_SH.ParamByName('ID_ORDER').AsInteger := dmIS.qP_ORDSID_ORDER.AsInteger;
  qPL_SH.open;
end;

procedure TfmKOrd.FormCreate(Sender: TObject);
begin
  with TUserSettings.Create(dmIS.dbIS, id_Form) do
  try
    Read(Self, iniForm);
  finally
    Free;
  end;
end;

procedure TfmKOrd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dmIS.dbIS.Connected then
  begin
    dmIS.qORD_POS.Close;
    dmIS.qOrd_PF.Close;
    dmIS.qOrd_S.Close;
    with TUserSettings.Create(dmIS.dbIS, id_Form) do
    try
      Write(Self, iniForm);
    finally
      Free;
    end;
  end;
end;

procedure TfmKOrd.FormShow(Sender: TObject);
begin
  N3.Visible := fmMain.UF64 and not dmIS.qP_ORDSID_ESTIMATE.IsNull;
  N1.Visible := not dmIS.qP_ORDSID_DOC.IsNull;
  pc1.ActivePage := ts1;
  OpenCard;
end;

procedure TfmKOrd.tb3Click(Sender: TObject);
var
  d_id: integer;
begin
  //If dmIS.qHEst.IsEmpty Then exit;
  d_id := 0;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select ID_DOC FROM PRODUCT_DOCS');
    Add('where ID_PRODUCT = :idp and ID_OBJECT = 0');
    ParamByName('idp').AsInteger := dmIS.qP_ORDSID_PRODUCT.AsInteger;
    Open;
    if not IsEmpty then
      d_id := FieldByName('ID_DOC').AsInteger;
    if d_id = 0 then
      exit;
    {  if not dmIS.dbDOC.Connected then
      try
        dmIS.dbDOC.Connected := True;
      except
        MsgError('Нет связи с хранилищем документов', 'Ошибка подключения');
      end;   }
    try
      //fmMain.StoreDoc(0,d_id,'',dmIS.qS_BODY);
      if not Assigned(fmAll) then
        Application.CreateForm(TfmAll, fmAll);
      Old_DocBody(d_id, 0, ''); // переход на новую базу документов
      // fmAll.StoreDoc_r(d_id);
    except
      MsgError('Ошибка вывода документа', 'Ошибка');
    end;
  end;
end;

procedure TfmKOrd.tb2Click(Sender: TObject);
var
  iddr: integer;
begin
  iddr := 0;
  if dmIS.qP_ORDSID_DOC.IsNull then
    exit;
  with dmIS.qIN, dmIS.qIN.SQL do
  begin
    Close;
    Clear;
    Add('select ID_DRAFT from PROJECT_DOCS where ID_PROJECT_DOC = :d1');
    ParamByName('d1').AsInteger := dmIS.qP_ORDSID_DOC.AsInteger;
    Open;
    if not IsEmpty then
    begin
      iddr := FieldByName('ID_DRAFT').AsInteger;
      //fmMain.StoreDoc(0,iddr,'',dmIS.qR_BODY);
      if not Assigned(fmAll) then
        Application.CreateForm(TfmAll, fmAll);
      Old_DocBody(iddr, 0, '');
      // fmAll.StoreDoc_r(iddr);
    end;
    Close;
  end;
end;

procedure TfmKOrd.N1Click(Sender: TObject);
begin
  if dmIS.qP_ORDSID_DOC.IsNull then
    exit;
  if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  fmRep.PrintMainDoc(dmIS.qP_ORDSID_DOC.AsInteger);
  // fmAll.PrintMainDoc(dmIS.qP_ORDSID_DOC.AsInteger,1);
end;

procedure TfmKOrd.N3Click(Sender: TObject);
begin
  if not fmMain.UF64 then
    exit;
  if dmIS.qP_ORDSID_ESTIMATE.IsNull then
  begin
    MsgInformation('Отсутствует смета, связанная с заказом', 'Проверка');
    exit;
  end;
  {not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);  }
  {with fmREP do begin
   qEstim.Close;
   qEstim.ParamByName('est1').asInteger := dmIS.qP_ORDSID_ESTIMATE.AsInteger;
   qEstim.Open;
   rEstim.ShowReport;
  end;
  }
 fmAll.GetEstRep(dmIS.qP_ORDSID_ESTIMATE.AsInteger, 1, fmMain.S19);
 { if not Assigned(fmRep) then
    Application.CreateForm(TfmRep, fmRep);
  with fmREP do
  begin
    qR_EST.Close;
    qR_EST.ParamByName('id_estimate').asInteger :=
      dmIS.qP_ORDSID_ESTIMATE.AsInteger;
    qR_EST.ParamByName('obj_kind').Clear;
    qR_EST.Open;
    rR_EST.Script.Variables['Est_Title'] := 'Смета';
    rR_EST.ShowReport;
  end; }

end;

procedure TfmKOrd.dbg4GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (dmIS.qOrd_PFC_D.AsDateTime < Date) then
    Background := clSkyBlue;
end;

procedure TfmKOrd.SpeedButton1Click(Sender: TObject);
begin
  GridToExcel(dbg2);
end;

procedure TfmKOrd.ToolButton2Click(Sender: TObject);
var
  id_batch: integer;
begin

  //   with dmIs.

  if not Assigned(fmDetail) then
    {with TFmDetail.Create(self) do
    begin
      qProd_Obj.Close;
      qProd_Obj.SQL.Clear;
      qProd_Obj_tree.Close;
      qProd_Obj_tree.SQL.Clear;
      qProd_Obj.SQL.Add('select * from GET_OBJ_VER_KD(:id_version)'); //ПО КД
      qProd_Obj_tree.SQL.Add('select distinct g.id_parent, g.id_object, g.obj_name from GET_OBJ_VER_KD(:id_version) g');
      qProd_Obj.ParamByName('id_version').AsInteger := DBText9.Field.AsInteger;
      qProd_Obj_tree.ParamByName('id_version').AsInteger := DBText9.Field.AsInteger;
      qProd_Obj.Open;
      qProd_Obj_tree.Open;
      dxTr.FullExpand;
      id_vers := DBText9.Field.AsInteger;
      label1.Font.Color := clRed;
      caption := 'Без заказа';
      label1.Caption := ' ';
      label2.Font.Color := clBlue;
      label2.Caption := 'Версия: ' + inttostr(DBText9.Field.AsInteger);
      rg1.ItemIndex := 1;
      rg1.Enabled := false;
      show;
    end }

    with TFmDetail.Create(self) do
    begin
      with dmIs.qIM, dmIs.qIM.sql do
      begin
        close;
        clear;
        add('select id_batch from project_ords where id_order = :ido');
        parambyname('ido').AsInteger := C_ORD;
        Open;
        if not fieldbyname('id_batch').IsNull then
          id_batch := fieldbyname('id_batch').AsInteger
        else
        begin
          showmessage('У заказа не указан код партии!');
        end;
      end;

      qProd_Obj.Close;
      qProd_Obj.ParamByName('id_version').AsInteger := DBText9.Field.AsInteger;
      qProd_Obj.ParamByName('idbatch').AsInteger := id_batch;
      qProd_Obj.Open;

      qProd_Obj_tree.Close;
      qProd_Obj_tree.ParamByName('id_version').AsInteger :=
        DBText9.Field.AsInteger;
      qProd_Obj.ParamByName('idbatch').AsInteger := DBText9.Field.AsInteger;
      qProd_Obj_tree.Open;
      dxTr.FullExpand;
      id_vers := DBText9.Field.AsInteger;
      label1.Font.Color := clGreen;
      Caption := 'Заказ: ' + DBText3.Field.AsString;
      //label1.Caption := 'Заказ: ' + ceOrders.Text;
      label2.Font.Color := clBlue;
      label2.Caption := 'Версия: ' + inttostr(DBText9.Field.AsInteger);
      rg1.ItemIndex := 0;
      rg1.Enabled := true;
      show;
    end
  else
  begin
    with dmIs.qIM, dmIs.qIM.sql do
    begin
      close;
      clear;
      add('select id_batch from project_ords where id_order = :ido');
      parambyname('ido').AsInteger := C_ORD;
      Open;
      if not fieldbyname('id_batch').IsNull then
        id_batch := fieldbyname('id_batch').AsInteger
      else
      begin
        showmessage('У заказа не указан код партии!');
      end;
    end;

    fmDetail.qProd_Obj.Close;
    fmDetail.qProd_Obj.ParamByName('id_version').AsInteger :=
      DBText9.Field.AsInteger;
    fmDetail.qProd_Obj.ParamByName('idbatch').AsInteger := id_batch;
    fmDetail.qProd_Obj.Open;

    fmDetail.qProd_Obj_tree.Close;
    fmDetail.qProd_Obj_tree.ParamByName('id_version').AsInteger :=
      DBText9.Field.AsInteger;
    fmDetail.qProd_Obj.ParamByName('idbatch').AsInteger :=
      DBText9.Field.AsInteger;
    fmDetail.qProd_Obj_tree.Open;
    fmDetail.dxTr.FullExpand;
    fmDetail.id_vers := DBText9.Field.AsInteger;
    fmDetail.label1.Font.Color := clGreen;
    fmDetail.Caption := 'Заказ: ' + DBText3.Field.AsString;
    //label1.Caption := 'Заказ: ' + ceOrders.Text;
    fmDetail.label2.Font.Color := clBlue;
    fmDetail.label2.Caption := 'Версия: ' + inttostr(DBText9.Field.AsInteger);
    fmDetail.rg1.ItemIndex := 0;
    fmDetail.rg1.Enabled := true;
    fmDetail.Show;
  end;

end;
//end;

end.
