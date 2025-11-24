unit Unit_BuscaOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery, uniImageList, Vcl.Imaging.pngimage, uniImage,
  uniMultiItem, uniComboBox, uniBitBtn, frxClass, frxDBSet, frxExportPDF,
  uniHTMLFrame;

type
  TForm_BuscaOrcamento = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    UniLabel2: TUniLabel;
    pCampo: TUniComboBox;
    qOrcamento: TIBQuery;
    qOrcamentoORCAMENTO_ID: TIntegerField;
    qOrcamentoEMISSAO: TDateField;
    qOrcamentoCLIENTE: TIBStringField;
    qOrcamentoCLI_CIDADE: TIBStringField;
    qOrcamentoCLI_UF: TIBStringField;
    qOrcamentoCLI_CPFCNPJ: TIBStringField;
    qOrcamentoCLI_TIPO: TIBStringField;
    qOrcamentoVR_CONTABIL: TIBBCDField;
    qOrcamentoSHIFT: TBooleanField;
    qOrcamentoSTATUS: TIBStringField;
    qContraproposta: TIBQuery;
    qOrcamentoCONDICAO: TIBStringField;
    btn_Consultar: TUniButton;
    qOrcamentoUSUARIONOME_I: TIBStringField;
    REL: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    UniHTMLFrame1: TUniHTMLFrame;
    UniImageList1: TUniImageList;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    UniImage3: TUniImage;
    UniImage4: TUniImage;
    UniButton1: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure Edit_PesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_ConsultarClick(Sender: TObject);
    procedure Edit_PesqChange(Sender: TObject);
    procedure RELGetValue(const VarName: string; var Value: Variant);
    procedure UniFormAfterShow(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniButton1Click(Sender: TObject);
  private
    procedure pFiltrarPor(campo : String);
    procedure pCarregaValoresOrcamento;
  public

  end;

function Form_BuscaOrcamento: TForm_BuscaOrcamento;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_dmProtheus, Unit_BuscaItensOrcamento,
  ServerModule, Unit_Aprovar, Unit_Orcamento_Auditoria;

function Form_BuscaOrcamento: TForm_BuscaOrcamento;
begin
  Result := TForm_BuscaOrcamento(UniMainModule.GetFormInstance(TForm_BuscaOrcamento));
end;

procedure TForm_BuscaOrcamento.btn_ConsultarClick(Sender: TObject);
begin
  if pCampo.ItemIndex = 0 then
    pFiltrarPor('ORCAMENTO_ID');

  if pCampo.ItemIndex = 1 then
    pFiltrarPor('UPPER(STATUS)');

  if pCampo.ItemIndex = 2 then
    pFiltrarPor('CLIENTE');

  if pCampo.ItemIndex = 3 then
    pFiltrarPor('CLI_CIDADE');

  if pCampo.ItemIndex = 4 then
    pFiltrarPor('CLI_UF');
end;

procedure TForm_BuscaOrcamento.Edit_PesqChange(Sender: TObject);
begin
  btn_ConsultarClick(sender);
end;

procedure TForm_BuscaOrcamento.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    qOrcamento.Next;

  If Key = VK_UP Then
    qOrcamento.Prior;
end;

procedure TForm_BuscaOrcamento.pCarregaValoresOrcamento;
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.DB_SICFAR;
      Transaction := UniMainModule.IBTransaction1;
      Close;
      SQL.Text := 'select sum(o.vr_contabil) as valor';
      SQL.Add(' from tborcamento o where deletado = ''N'' ');
      Open;
    end;

  UniSession.JSCode('document.getElementById("totalOrcado").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');

  with vlQuerySIC do
    begin
      Close;
      SQL.Text := 'select sum(o.vr_contabil) as valor';
      SQL.Add(' from tborcamento o where deletado = ''N'' ');
      SQL.Add(' and o.status like ''Aprovado%'' ');
      Open;
    end;

  UniSession.JSCode('document.getElementById("totalAprovado").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');

  with vlQuerySIC do
    begin
      Close;
      SQL.Text := 'select sum(o.vr_contabil) as valor';
      SQL.Add(' from tborcamento o where deletado = ''N'' ');
      SQL.Add('and o.status like ''N%'' or o.status like ''Aprovação%'' or o.status = ''Aberto''');
      Open;
    end;

  UniSession.JSCode('document.getElementById("totalAnalise").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');

  with vlQuerySIC do
    begin
      Close;
      SQL.Text := 'select (sum(o.vr_contabil) / count(*)) as valor';
      SQL.Add(' from tborcamento o where deletado = ''N'' ');
      Open;
    end;

  UniSession.JSCode('document.getElementById("totalMedio").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');
  FreeAndNil(vlQuerySIC);
end;

procedure TForm_BuscaOrcamento.pFiltrarPor(campo: String);
begin
  with qOrcamento do
    begin
      Close;
      SQL.Text := 'select orcamento_id, status, emissao,(erp_codigo||''-''||cliente) as Cliente, cli_cidade, ';
      SQL.Add(' cli_uf, cli_cpfcnpj, cli_tipo, vr_contabil, (erp_condpagto||''-''||condpagto) as CONDICAO,');
      SQL.Add(' usuarionome_i');
      SQL.Add(' from tborcamento where deletado = ''N'' ');

      if Edit_Pesq.Text <> '' then
        SQL.Add(' and ' + campo + ' like ''' + Edit_Pesq.Text + '%'' ');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'ORC_FULL') = False then
        SQL.Add(' and usuario_i = ''' + UniMainModule.vUsuarioID + ''' ');

      SQL.Add(' order by orcamento_id desc');

      Open;
    end;
end;

procedure TForm_BuscaOrcamento.RELGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'USUARIO' then
    Value := UniMainModule.vUsuario;
end;

procedure TForm_BuscaOrcamento.UniButton1Click(Sender: TObject);
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

      frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', 'Relação dos Orçamentos - '
        + FormatDateTime('DDMMYYYYHHMMSS', Now), '', AUrl);
      frxPDFExport1.DefaultPath := '';

      PrepareReport;
      Export(frxPDFExport1);

      UniSession.AddJS('var newWin = window.open("'+AUrl+'","mywindow","width=800,height=600");newWin.moveTo((screen.width - 800) / 2, (screen.height - 600) / 2);' +
                          'if(!newWin || newWin.closed || typeof newWin.closed==''undefined'') '+
                           '{ alert(''Atenção, os pop-ups para esta página estão bloqueados!'');} ');

    end;
end;

procedure TForm_BuscaOrcamento.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    begin
      if ((qOrcamentoSTATUS.AsString = 'Aprovado')or(qOrcamentoSTATUS.AsString = 'Aprovado Parcial')) then
        UniMainModule.pGeraRelatorio(qOrcamentoORCAMENTO_ID.AsString, 'Aprovado', 'S')
      else
        begin
          if qOrcamentoSTATUS.AsString = 'Reprovado' then
            UniMainModule.pGeraRelatorio(qOrcamentoORCAMENTO_ID.AsString, 'Reprovado', 'S')
          else
            UniMainModule.pGeraRelatorio(qOrcamentoORCAMENTO_ID.AsString, 'Todos', 'S');
        end;
    end;

  if Column.Index = 1 then
    begin
      UniMainModule.vOrcamento_ID := qOrcamentoORCAMENTO_ID.AsString;
      Form_Aprovar.ShowModal;
      //Form_BuscaOrcamento.OnShow(Sender);
      if pCampo.ItemIndex = 0 then
        pFiltrarPor('ORCAMENTO_ID');

      if pCampo.ItemIndex = 1 then
        pFiltrarPor('UPPER(STATUS)');

      if pCampo.ItemIndex = 2 then
        pFiltrarPor('CLIENTE');

      if pCampo.ItemIndex = 3 then
        pFiltrarPor('CLI_CIDADE');

      if pCampo.ItemIndex = 4 then
        pFiltrarPor('CLI_UF');
    end;

  if Column.Index = 2 then
    begin
      UniMainModule.vOrcamento_ID := qOrcamentoORCAMENTO_ID.AsString;
      Form_BuscaItensOrcamento.ShowModal;
    end;

  if Column.Index = 3 then
    begin
      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'WEB_ORC_AUDITORIA') = False then
        begin
          MessageDlg(pchar(UniMainModule.vUsuario + ', você não tem permissão para Visualizar Auditoria. WEB_ORC_AUDITORIA'), mtinformation, [mbok]);
          Exit;
        end;
      UniMainModule.vERP_Produto := '';
      UniMainModule.vOrcamento_ID := qOrcamentoORCAMENTO_ID.AsString;
      Form_Orcamento_Auditoria.ShowModal;
    end;
end;

procedure TForm_BuscaOrcamento.UniDBGrid1FieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
var PNG: TPngImage;
begin
  {if ((Column.FieldName = 'SHIFT')and(Column.Tag = 0)) then
    begin
      PNG:=TPngImage.Create;
      try
        UniImageList1.GetPNG(0, PNG);
        OutImage:=PNG;
      finally
      end;
    end;}

{  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 1)) then
    begin
      PNG:=TPngImage.Create;
      try
        UniImageList1.GetPNG(1, PNG);
        OutImage:=PNG;
      finally
      end;
    end;

  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 2)) then
    begin
      PNG:=TPngImage.Create;
      try
        UniImageList1.GetPNG(2, PNG);
        OutImage:=PNG;
      finally
      end;
    end;

  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 3)) then
    begin
      PNG:=TPngImage.Create;
      try
        UniImageList1.GetPNG(4, PNG);
        OutImage:=PNG;
      finally
      end;
    end; }

  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 1)) then
    begin
      DoNotDispose := True; // we provide an static image so do not free it.
      OutImage := UniImage1.Picture.Graphic;
    end;

  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 2)) then
    begin
      DoNotDispose := True; // we provide an static image so do not free it.
      OutImage := UniImage2.Picture.Graphic;
    end;

  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 3)) then
    begin
      DoNotDispose := True; // we provide an static image so do not free it.
      OutImage := UniImage3.Picture.Graphic;
    end;

  if ((Column.FieldName = 'SHIFT')and(Column.Tag = 4)) then
    begin
      DoNotDispose := True; // we provide an static image so do not free it.
      OutImage := UniImage4.Picture.Graphic;
    end;

end;

procedure TForm_BuscaOrcamento.UniFormAfterShow(Sender: TObject);
begin
  pCarregaValoresOrcamento;
end;

procedure TForm_BuscaOrcamento.UniFormShow(Sender: TObject);
begin
  pFiltrarPor('CLIENTE');

  UniMainModule.vOrcamento_ID := '';
  Edit_Pesq.SetFocus;
end;

end.
