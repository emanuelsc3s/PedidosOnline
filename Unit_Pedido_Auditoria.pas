unit Unit_Pedido_Auditoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniPanel, uniLabel, uniButton,
  uniGUIBaseClasses, uniImageList, uniDateTimePicker, uniBasicGrid, uniDBGrid,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, uniCheckBox, frxClass, frxDBSet,
  frxExportPDF, frxExportBaseDialog, uniMultiItem, uniComboBox, uniBitBtn;

type
  TForm_Pedido_Auditoria = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    DI: TUniDateTimePicker;
    DF: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    Edit_Pesquisa: TUniEdit;
    DataSource1: TDataSource;
    QR_STATUS: TIBQuery;
    btn_Consultar: TUniButton;
    UniButton1: TUniButton;
    REL: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    QR_STATUSPEDIDOSTATUS_ID: TIntegerField;
    QR_STATUSPEDIDO_ID: TIntegerField;
    QR_STATUSSTATUS: TIBStringField;
    QR_STATUSDATA: TDateTimeField;
    QR_STATUSUSUARIO_ID: TIntegerField;
    QR_STATUSUSUARIO: TIBStringField;
    QR_STATUSLOG: TIBStringField;
    QR_STATUSOBS: TWideMemoField;
    QR_STATUSPRODUTO_ID: TIntegerField;
    QR_STATUSERP_PRODUTO: TIBStringField;
    QR_STATUSPRODUTO: TIBStringField;
    QR_STATUSMOTIVO_ID: TIntegerField;
    QR_STATUSMOTIVO: TIBStringField;
    QR_STATUSDELETADO: TIBStringField;
    QR_STATUSOBSERVACAO: TStringField;
    UniLabel4: TUniLabel;
    pCampo: TUniComboBox;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    Label_Pedido: TUniLabel;
    UniLabel11: TUniLabel;
    procedure UniFormShow(Sender: TObject);
    procedure btn_ConsultarClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure RELGetValue(const VarName: string; var Value: Variant);
    procedure QR_STATUSCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form_Pedido_Auditoria: TForm_Pedido_Auditoria;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function Form_Pedido_Auditoria: TForm_Pedido_Auditoria;
begin
  Result := TForm_Pedido_Auditoria(UniMainModule.GetFormInstance(TForm_Pedido_Auditoria));
end;

procedure TForm_Pedido_Auditoria.btn_ConsultarClick(Sender: TObject);
begin
  with QR_STATUS do
    begin
      Close;
      SQL.Text := 'select * from tbpedido_status';
      SQL.Add(' where pedido_id = ''' + UniMainModule.vPedido_ID + ''' ');
      SQL.Add(' and data between ''' + FormatDateTime('DD.MM.YYYY 00:00:00', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY 23:59:59', DF.DateTime) + ''' ');

      if Trim(Edit_Pesquisa.Text) <> '' then
        begin
          if pCampo.ItemIndex = 0 then
            SQL.Add(' and upper(usuario) like upper(''%' + Trim(Edit_Pesquisa.Text) + '%'') ');

          if pCampo.ItemIndex = 1 then
            SQL.Add(' and upper(status) like upper(''%' + Trim(Edit_Pesquisa.Text) + '%'') ');

          if pCampo.ItemIndex = 2 then
            SQL.Add(' and upper(motivo) like upper(''%' + Trim(Edit_Pesquisa.Text) + '%'') ');

          if pCampo.ItemIndex = 3 then
            SQL.Add(' and upper(obs) like upper(''%' + Trim(Edit_Pesquisa.Text) + '%'') ');
        end;

      SQL.Add(' order by data desc');

      Open;
    end;
end;

procedure TForm_Pedido_Auditoria.QR_STATUSCalcFields(DataSet: TDataSet);
begin
  QR_STATUSOBSERVACAO.AsString := Copy(QR_STATUSOBS.AsString, 1, 1000);
end;

procedure TForm_Pedido_Auditoria.RELGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'ORCAMENTO' then
    Value := UniMainModule.vOrcamento_ID;

  if VarName = 'USUARIO' then
    Value := UniMainModule.vUsuario;

end;

procedure TForm_Pedido_Auditoria.UniButton1Click(Sender: TObject);
var
  AUrl : String;
begin
  with REL do
    begin
      EngineOptions.SilentMode := True;
      EngineOptions.EnableThreadSafe := True;
      EngineOptions.DestroyForms := False;
      EngineOptions.UseGlobalDataSetList := False;

      PrintOptions.ShowDialog := False;
      ShowProgress := False;
      PreviewOptions.AllowEdit := False;

      frxPDFExport1.Background := True;
      frxPDFExport1.ShowProgress := False;
      frxPDFExport1.ShowDialog := False;

      frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', 'Trilha de Auditoria - '+
      'Orcamento [' + UniMainModule.vOrcamento_ID + '] - ' + FormatDateTime('DDMMYYYYHHMMSS', Now), '', AUrl);
      frxPDFExport1.DefaultPath := '';

      PrepareReport;
      Export(frxPDFExport1);

      UniSession.AddJS('var newWin = window.open("'+AUrl+'","mywindow","width=800,height=600");newWin.moveTo((screen.width - 800) / 2, (screen.height - 600) / 2);' +
                          'if(!newWin || newWin.closed || typeof newWin.closed==''undefined'') '+
                           '{ alert(''Atenção, os pop-ups para esta página estão bloqueados!'');} ');

    end;
end;

procedure TForm_Pedido_Auditoria.UniFormShow(Sender: TObject);
begin
  DI.DateTime := StrToDateTime('01/01/2000');
  DF.DateTime := StrToDateTime('31/012/2050');
  btn_ConsultarClick(Sender);
end;

end.
