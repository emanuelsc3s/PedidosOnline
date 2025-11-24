unit Unit_Orcamento_Auditoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniPanel, uniLabel, uniButton,
  uniGUIBaseClasses, uniImageList, uniDateTimePicker, uniBasicGrid, uniDBGrid,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, uniCheckBox, frxClass, frxDBSet,
  frxExportPDF;

type
  TForm_Orcamento_Auditoria = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    DI: TUniDateTimePicker;
    DF: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniPanel1: TUniPanel;
    Edit_Produto: TUniEdit;
    DataSource1: TDataSource;
    QR_ORCAMENTO: TIBQuery;
    QR_ORCAMENTOORCAMENTOSTATUS_ID: TIntegerField;
    QR_ORCAMENTOORCAMENTO_ID: TIntegerField;
    QR_ORCAMENTOSTATUS: TIBStringField;
    QR_ORCAMENTODATA: TDateTimeField;
    QR_ORCAMENTOUSUARIO_ID: TIntegerField;
    QR_ORCAMENTOUSUARIO: TIBStringField;
    QR_ORCAMENTOLOG: TIBStringField;
    QR_ORCAMENTOERP_PRODUTO: TIBStringField;
    QR_ORCAMENTOPRODUTO_ID: TIntegerField;
    QR_ORCAMENTOPRODUTO: TIBStringField;
    btn_Consultar: TUniButton;
    UniButton1: TUniButton;
    REL: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    procedure UniFormShow(Sender: TObject);
    procedure btn_ConsultarClick(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure RELGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form_Orcamento_Auditoria: TForm_Orcamento_Auditoria;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function Form_Orcamento_Auditoria: TForm_Orcamento_Auditoria;
begin
  Result := TForm_Orcamento_Auditoria(UniMainModule.GetFormInstance(TForm_Orcamento_Auditoria));
end;

procedure TForm_Orcamento_Auditoria.btn_ConsultarClick(Sender: TObject);
begin
  with QR_ORCAMENTO do
    begin
      Close;
      SQL.Text := 'select * from tborcamento_status';
      SQL.Add(' where orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      SQL.Add(' and data between ''' + FormatDateTime('DD.MM.YYYY 00:00:00', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY 23:59:59', DF.DateTime) + ''' ');

      if Trim(Edit_Produto.Text) <> '' then
        SQL.Add(' and erp_produto = ''' + Trim(Edit_Produto.Text) + ''' ');

      SQL.Add(' order by data desc');

      Open;
    end;
end;

procedure TForm_Orcamento_Auditoria.RELGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'ORCAMENTO' then
    Value := UniMainModule.vOrcamento_ID;

  if VarName = 'USUARIO' then
    Value := UniMainModule.vUsuario;

end;

procedure TForm_Orcamento_Auditoria.UniButton1Click(Sender: TObject);
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

procedure TForm_Orcamento_Auditoria.UniFormShow(Sender: TObject);
begin
  if UniMainModule.vERP_Produto <> '' then
    Edit_Produto.Text := UniMainModule.vERP_Produto;

  DI.DateTime := StrToDateTime('01/01/2000');
  DF.DateTime := StrToDateTime('31/012/2050');
  btn_ConsultarClick(Sender);
end;

end.
