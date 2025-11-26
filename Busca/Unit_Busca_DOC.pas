unit Unit_Busca_DOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, Vcl.Imaging.pngimage, uniImage, Data.DB, IBX.IBCustomDataSet,
  uniButton, uniFileUpload, uniMemo, uniLabel, uniBitBtn, uniMultiItem,
  uniComboBox, uniEdit;

type
  TForm_Busca_Doc = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    DS_DOC: TIBDataSet;
    DataSource1: TDataSource;
    btn_Consultar: TUniButton;
    UniFileUpload1: TUniFileUpload;
    DS_DOCDOC_ID: TIntegerField;
    DS_DOCPEDIDO_ID: TIntegerField;
    DS_DOCPEDIDO_CODIGO: TIBStringField;
    DS_DOCNOME_ARQUIVO: TIBStringField;
    DS_DOCTAMANHO: TIntegerField;
    DS_DOCEXTENSAO: TIBStringField;
    DS_DOCITEM: TIBStringField;
    DS_DOCCAMINHO: TIBStringField;
    DS_DOCUSUARIO_I: TIntegerField;
    DS_DOCUSUARIONOME_I: TIBStringField;
    DS_DOCDATA_INC: TDateTimeField;
    DS_DOCDELETADO: TIBStringField;
    DS_DOCARQUIVO: TBlobField;
    DS_DOCUSUARIO_D: TIntegerField;
    DS_DOCUSUARIONOME_D: TIBStringField;
    DS_DOCDATA_DEL: TDateTimeField;
    DS_DOCEXCLUIR: TStringField;
    DS_DOCVISUALIZAR: TStringField;
    DS_DOCDATAWARE: TIBStringField;
    DS_DOCIMG: TWideStringField;
    DS_DOCDOCUMENTO: TIBStringField;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    Label_Pedido: TUniLabel;
    UniLabel11: TUniLabel;
    DS_DOCORCAMENTO_CODIGO: TIBStringField;
    DS_DOCORCAMENTO_ID: TIntegerField;
    DS_DOCCOMERCIAL: TIBStringField;
    DS_DOCACESSO: TStringField;
    UniPanel3: TUniPanel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    pAcesso: TUniComboBox;
    Edit_Pesq: TUniEdit;
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure btn_ConsultarClick(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure DS_DOCDELETADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DS_DOCCalcFields(DataSet: TDataSet);
    procedure Edit_PesqChange(Sender: TObject);
    procedure pAcessoSelect(Sender: TObject);
  private
    { Private declarations }
    procedure pCarregaArquivos;
    procedure pVisualizarArquivo(Sender: TComponent; Result: Integer);
    procedure pExcluirArquivo(Sender: TComponent; Result: Integer);
    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
    procedure pAnexarDocComercial(Sender: TComponent; Result: Integer);
    var
    vlItemArquivo  : integer;
  public
    { Public declarations }
  end;

function Form_Busca_Doc: TForm_Busca_Doc;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Biblioteca,
  uniGUIDialogs,  uniGUIVars, uniGUIFrame, uniGUIRegClasses;

procedure TForm_Busca_Doc.PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
    begin
      // UniMemo1.Visible := True;
      // UniMemo1.Lines.Clear;
      // UniMemo1.Lines.Add(AText);
    end;
end;

procedure TForm_Busca_Doc.pVisualizarArquivo;
var
  vlArquivo, vlCaminho, AUrl : string;
begin
  if Result = mrYes then
    begin
      vlCaminho := UniServerModule.NewCacheFileUrl(False,'pdf',FormatDateTime('DDMMYYYYHHMMSS', Now) + '_' + DS_DOCNOME_ARQUIVO.AsString,'', AUrl);

      if not DirectoryExists(ExtractFileDir(UniServerModule.StartPath + AUrl)) then
        ForceDirectories(ExtractFileDir(UniServerModule.StartPath + AUrl));

      if Trim(DS_DOCEXTENSAO.AsString) = '.pdf' then
        begin
          DS_DOCARQUIVO.SaveToFile(UniServerModule.StartPath + AUrl);

          UniSession.AddJS('var newWin = window.open("'+ AUrl +'","mywindow","width=800,height=600");newWin.moveTo((screen.width - 800) / 2, (screen.height - 600) / 2);' +
                           'if(!newWin || newWin.closed || typeof newWin.closed==''undefined'') '+
                           '{ alert(''Atenção, os pop-ups para esta página estão bloqueados!'');} ');
        end
      else
        begin
          if not DirectoryExists(UniServerModule.StartPath + 'files\' + UniMainModule.vUsuario) then
            ForceDirectories(UniServerModule.StartPath + 'files\' + UniMainModule.vUsuario);

          vlArquivo := UniServerModule.StartPath + 'files\' + UniMainModule.vUsuario + '\' + DS_DOCDOC_ID.AsString + DS_DOCEXTENSAO.AsString;

          DS_DOCARQUIVO.SaveToFile(vlArquivo);

          UniSession.SendFile(vlArquivo);
        end;
    end;
end;

function Form_Busca_Doc: TForm_Busca_Doc;
begin
  Result := TForm_Busca_Doc(UniMainModule.GetFormInstance(TForm_Busca_Doc));
end;

procedure TForm_Busca_Doc.btn_ConsultarClick(Sender: TObject);
begin
  if Pos('PEDIDO', UniMainModule.vDocConsulta) > 0 then
    begin
      if UniMainModule.fRetornaCampoTabela('STATUS','TBPEDIDO','PEDIDO_ID',UniMainModule.vPedido_ID) <> 'Aberto' then
        begin
          if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_DOC_COM') = False then
            begin
              MessageDlgN('Alteração Bloqueada. Pedido já Processado. Solicite ao Comercial', mtInformation, [mbOK]);
              Abort;
            end;
        end;
    end
  else
    begin
      if UniMainModule.fRetornaCampoTabela('STATUS','TBORCAMENTO','ORCAMENTO_ID',UniMainModule.vOrcamento_ID) <> 'Aberto' then
        begin
          MessageDlgN('Alteração Bloqueada. Orçamento já Processado. Solicite ao Comercial', mtInformation, [mbOK]);
          Abort;
        end;
    end;

  if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_DOC_COM') = True then
    MessageDlg('Deseja Inserir Arquivo Exclusivo Para o Comercial?', mtConfirmation, mbYesNo, pAnexarDocComercial);

  UniFileUpload1.Execute;
  UniMainModule.vDocConsulta          := 'PEDIDO_ID;PEDIDO_CODIGO;';
  UniMainModule.vDocConsultaParametro := UniMainModule.vPedido_ID +';' + UniMainModule.vPedido_Codigo + ';';
  pCarregaArquivos;
end;

procedure TForm_Busca_Doc.DS_DOCCalcFields(DataSet: TDataSet);
begin
  DS_DOCEXCLUIR.AsString    := UniMainModule.fImagemGrid('delete.png','Excluir Anexo');

  DS_DOCVISUALIZAR.AsString := UniMainModule.fImagemGrid('search-file.png','Visualizar Arquivo');

  DS_DOCIMG.AsString        := UniMainModule.fImagemTipoArquivo(DS_DOCEXTENSAO.AsString);

  if Trim(DS_DOCCOMERCIAL.AsString) = '' then
    DS_DOCACESSO.AsString := 'Todos'
  else
    DS_DOCACESSO.AsString := 'Comercial';
end;

procedure TForm_Busca_Doc.DS_DOCDELETADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (DisplayText) then
    begin
      if Sender.Value = 'N' then
        Text := 'Incluído'
      else
        Text := 'Deletado';
    end;
end;

procedure TForm_Busca_Doc.Edit_PesqChange(Sender: TObject);
begin
  pCarregaArquivos;
end;

procedure TForm_Busca_Doc.pAcessoSelect(Sender: TObject);
begin
  pCarregaArquivos;
end;

procedure TForm_Busca_Doc.pAnexarDocComercial(Sender: TComponent;
  Result: Integer);
begin
  if Result = mrYes then
    begin
      UniMainModule.vDocConsulta          := 'PEDIDO_ID;PEDIDO_CODIGO;COMERCIAL;';
      UniMainModule.vDocConsultaParametro := UniMainModule.vPedido_ID +';' + UniMainModule.vPedido_Codigo + ';S;';
    end
  else
    begin
      UniMainModule.vDocConsulta          := 'PEDIDO_ID;PEDIDO_CODIGO;';
      UniMainModule.vDocConsultaParametro := UniMainModule.vPedido_ID +';' + UniMainModule.vPedido_Codigo + ';';
    end;
end;

procedure TForm_Busca_Doc.pCarregaArquivos;
var
  i, vlquant : integer;
  vlCampo, vlCampoAux, vlParametro, vlParametroAux : String;
begin
  vlquant := 0;

  for i := 1 to Length(UniMainModule.vDocConsulta) do
    begin
      if (UniMainModule.vDocConsulta[i] = ';') then
        vlquant := vlquant + 1;
    end;

  vlCampoAux     := UniMainModule.vDocConsulta;
  vlParametroAux := UniMainModule.vDocConsultaParametro;

  with DS_DOC do
    begin
      Close;
      SelectSQL.Clear;
      SelectSQl.Text := 'select doc_id, pedido_id, pedido_codigo, nome_arquivo, tamanho,';
      SelectSQL.Add(' extensao, item, caminho, usuario_i, usuarionome_i, data_inc,');
      SelectSQL.Add(' deletado, arquivo, usuario_d, usuarionome_d, data_del, dataware, ');
      SelectSQL.Add(' documento, orcamento_codigo, orcamento_id, comercial');
      SelectSQL.Add(' from tbdoc');
      SelectSQL.Add(' where 1=1');

      if Trim(Edit_Pesq.Text) <> '' then
        SelectSQL.Add(' and upper(nome_arquivo) like upper(''%' + Trim(Edit_Pesq.Text) + '%'') ');

      if pAcesso.ItemIndex = 0 then
        SelectSQL.Add(' and comercial is null');

      if pAcesso.ItemIndex = 1 then
        SelectSQL.Add(' and comercial = ''S'' ');

      for i := 1 to vlquant do
        begin
          vlCampo        := Copy(vlCampoAux, 1, pos(';', vlCampoAux) -1);
          vlCampoAux     := copy(vlCampoAux, pos(';', vlCampoAux) + 1, length(vlCampoAux));
          vlParametro    := Copy(vlParametroAux, 1, pos(';', vlParametroAux) -1);
          vlParametroAux := copy(vlParametroAux, pos(';', vlParametroAux) + 1, length(vlParametroAux));

          if vlParametro = 'NULL' then
            SelectSQL.Add(' and ' + vlCampo + ' is null ')
          else
            SelectSQL.Add(' and ' + vlCampo + ' = ''' + vlParametro + ''' ');
        end;

      SelectSQL.Add(' order by item');

      //Prompt('SQL', SelectSQL.Text, mtInformation, mbOKCancel, PromptCallBack);

      Open;
    end;
end;

procedure TForm_Busca_Doc.pExcluirArquivo(Sender: TComponent;
  Result: Integer);
begin
  if Result = mrYes then
    begin
      try
        if not DS_DOC.IsEmpty then
          begin
            DS_DOC.Edit;
            DS_DOCDELETADO.AsString      := 'S';
            DS_DOCDATA_DEL.AsDateTime    := Now;
            DS_DOCUSUARIO_D.AsString     := UniMainModule.vUsuarioID;
            DS_DOCUSUARIONOME_D.AsString := UniMainModule.vUsuario;
            DS_DOC.Post;
            DS_DOC.Transaction.CommitRetaining;

            MessageDlg('Arquivo excluído com sucesso.', mtInformation, [mbOk]);
            pCarregaArquivos;
          end;
      except
        DS_DOC.Transaction.RollbackRetaining;
        MessageDLG('Não foi possível excluir o arquivo, Tente mais tarde!',mtInformation, [mbOk]);
      end;
    end;
end;

procedure TForm_Busca_Doc.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    begin
      if DS_DOCDELETADO.AsString = 'S' then
        begin
          MessageDlg('Arquivo já deletado.', mtInformation, [mbOK]);
          Exit;
        end;

      if not DS_DOC.IsEmpty then
        MessageDlg('Deseja realmente excluir o arquivo?', mtConfirmation, mbYesNo, pExcluirArquivo);
    end;

  if Column.Index = 1 then
    begin
      if DS_DOCDELETADO.AsString = 'S' then
        begin
          MessageDlg('Arquivo já deletado.', mtInformation, [mbOK]);
          Exit;
        end;

      MessageDlg('Deseja Visualizar o Anexo?', mtConfirmation, mbYesNo, pVisualizarArquivo);
    end;
end;

procedure TForm_Busca_Doc.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
var
  DestName   : string;
  DestFolder : string;
  FileStream : TFileStream;
  BlobStream : TStream;
  i, vlquant, vlItem : integer;
  vlCampo, vlCampoAux, vlParametro, vlParametroAux : String;
begin
  DestFolder := UniServerModule.StartPath + 'files\' + UniMainModule.vUsuario+'\';

  if not DirectoryExists(DestFolder) then
    ForceDirectories(DestFolder);

  DestName := DestFolder + ExtractFileName(UniFileUpload1.FileName);
  CopyFile(PChar(AStream.FileName), PChar(DestName), False);

  try
    vlquant := 0;

    for i := 1 to Length(UniMainModule.vDocConsulta) do
      begin
        if (UniMainModule.vDocConsulta[i] = ';') then
          vlquant := vlquant + 1;
      end;

    vlCampoAux     := UniMainModule.vDocConsulta;
    vlParametroAux := UniMainModule.vDocConsultaParametro;

    DS_Doc.Close;
    DS_Doc.SelectSQl.Text := 'select doc_id, pedido_id, pedido_codigo, nome_arquivo, tamanho,';
    DS_Doc.SelectSQL.Add(' extensao, item, caminho, usuario_i, usuarionome_i, data_inc,');
    DS_Doc.SelectSQL.Add(' deletado, arquivo, usuario_d, usuarionome_d, data_del, dataware, ');
    DS_DOC.SelectSQL.Add(' documento, orcamento_codigo, orcamento_id, comercial');
    DS_Doc.SelectSQL.Add(' from tbdoc');
    DS_Doc.SelectSQL.Add(' where 0 = 0');

    for i := 1 to vlquant do
      begin
        vlCampo        := Copy(vlCampoAux, 1, pos(';', vlCampoAux) -1);
        vlCampoAux     := copy(vlCampoAux, pos(';', vlCampoAux) + 1, length(vlCampoAux));
        vlParametro    := Copy(vlParametroAux, 1, pos(';', vlParametroAux) -1);
        vlParametroAux := copy(vlParametroAux, pos(';', vlParametroAux) + 1, length(vlParametroAux));

        if vlParametro = 'NULL' then
          DS_Doc.SelectSQL.Add(' and ' + vlCampo + ' is null ')
        else
          DS_Doc.SelectSQL.Add(' and ' + vlCampo + ' = ''' + vlParametro + ''' ');
      end;

    DS_Doc.Open;

    if not DS_DOC.IsEmpty then
      begin
        DS_DOC.Last;
        vlItem := DS_DOCITEM.AsInteger + 1;
      end
    else
      vlItem := 1;

    DS_Doc.Insert;

    Filestream := TFileStream.Create(destname, fmOpenRead, fmShareDenyWrite);
    BlobStream := DS_DOC.CreateBlobStream(DS_DOCARQUIVO, bmWrite);

    BlobStream.CopyFrom(FileStream, FileStream.Size);

    DS_DocDOC_ID.AsString        := DS_DocDOC_ID.AsString + UniMainModule.vDataware;
    DS_DOCDATAWARE.AsString      := UniMainModule.vDataware;

    DS_DOCNOME_ARQUIVO.AsString  := Copy(ExtractFileName(UniFileUpload1.FileName),1,60);
    DS_DOCEXTENSAO.AsString      := ExtractFileExt(UniFileUpload1.FileName);
    DS_DOCNOME_ARQUIVO.AsString  := Copy(StringReplace(DS_DOCNOME_ARQUIVO.AsString,DS_DOCEXTENSAO.AsString,'',[rfReplaceAll, rfIgnoreCase]),1,60);

    DS_DOCCAMINHO.AsString       := DestFolder;
    DS_DOCTAMANHO.AsInteger      := FileStream.Size;
    DS_DOCITEM.AsString          := FormatFloat('000', vlItem);
    DS_DocCAMINHO.AsString       := ExtractFileDir(UniFileUpload1.FileName);
    DS_DOCUSUARIO_I.AsString     := UniMainModule.vUsuarioID;
    DS_DOCDATA_INC.AsDateTime    := Now;
    DS_DOCDELETADO.AsString      := 'N';
    DS_DOCUSUARIO_I.AsString     := UniMainModule.vUsuarioID;
    DS_DOCUSUARIONOME_I.AsString := UniMainModule.vUsuario;
    DS_DOCDATA_INC.AsDateTime    := Now;
    DS_DocDELETADO.AsString      := 'N';

    // GRAVA PEDIDO_ID e PEDIDO_CODIGO Informados na Unit_BuscaPedido
    vlCampoAux     := UniMainModule.vDocConsulta;
    vlParametroAux := UniMainModule.vDocConsultaParametro;

    vlquant := 0;
    for i := 1 to Length(UniMainModule.vDocConsulta) do
      begin
        if (UniMainModule.vDocConsulta[i] = ';') then
          vlquant := vlquant + 1;
      end;

    for i := 1 to vlquant do
      begin
        vlCampo        := Copy(vlCampoAux, 1, pos(';', vlCampoAux) -1);
        vlCampoAux     := copy(vlCampoAux, pos(';', vlCampoAux) + 1, length(vlCampoAux));
        vlParametro    := Copy(vlParametroAux, 1, pos(';', vlParametroAux) -1);
        vlParametroAux := copy(vlParametroAux, pos(';', vlParametroAux) + 1, length(vlParametroAux));

        if vlParametro <> 'NULL' then
          DS_DOC.FieldByName(vlCampo).Value := vlParametro;
      end;

    DS_DOC.Post;
    DS_DOC.Transaction.CommitRetaining;
  finally
    FreeAndNil(FileStream);
    FreeAndNil(BlobStream);

    UniMainModule.vDocConsulta          := 'PEDIDO_ID;PEDIDO_CODIGO;';
    UniMainModule.vDocConsultaParametro := UniMainModule.vPedido_ID +';' + UniMainModule.vPedido_Codigo + ';';
    pCarregaArquivos;
  end;
end;

procedure TForm_Busca_Doc.UniFormShow(Sender: TObject);
begin
  pAcesso.ItemIndex := 0;
  Edit_Pesq.SetFocus;
  Edit_Pesq.Clear;

  if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_DOC_COM') = True then
    pAcesso.Enabled := True
  else
    pAcesso.Enabled := False;

//  UniPanel1.Caption := UniMainModule.vDocCaption;
  Label_Pedido.Caption := 'Consulta de Documentos - ' + UniMainModule.vDocCaption;
  pCarregaArquivos;
end;

end.
