unit Unit_Orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Imaging.pngimage,
  uniGUIBaseClasses, uniImage, uniImageList, uniPanel, uniDBEdit, uniButton,
  uniLabel, uniDateTimePicker, uniEdit, activex, uniMultiItem, uniComboBox,
  uniBasicGrid, uniDBGrid, uniSpinEdit, Data.DB, Data.Win.ADODB, IBX.IBQuery,
  Datasnap.DBClient, Vcl.Imaging.jpeg, uniPageControl, uniFileUpload,
  Vcl.Dialogs, IBX.IBCustomDataSet, frxClass, frxExportPDF, IdBaseComponent,
  IdComponent, uniMemo, uniCheckBox;

type
  TForm_Orcamento = class(TUniForm)
    UniImage1: TUniImage;
    Edit_CliCNPJ: TUniEdit;
    dtp_Entregar: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    bt_Pesq: TUniButton;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    Panel_TopOrcamento: TUniPanel;
    UniLabel33: TUniLabel;
    UniImageList1: TUniImageList;
    Edit_Tipo: TUniEdit;
    Edit_IE: TUniEdit;
    Edit_Cidade: TUniEdit;
    Edit_UF: TUniEdit;
    Edit_Telefone: TUniEdit;
    Edit_CEP: TUniEdit;
    Edit_Bairro: TUniEdit;
    Edit_Endereco: TUniEdit;
    Edit_Cliente: TUniEdit;
    Edit_Codigo: TUniEdit;
    UniPanel1: TUniPanel;
    Edit_CNPJ_Entrega: TUniEdit;
    UniLabel11: TUniLabel;
    bt_Pesq_EndEntrega: TUniButton;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    Edit_IE_Entrega: TUniEdit;
    Edit_Cidade_Entrega: TUniEdit;
    Edit_UF_Entrega: TUniEdit;
    Edit_Telefone_Entrega: TUniEdit;
    Edit_CEP_Entrega: TUniEdit;
    Edit_Bairro_Entrega: TUniEdit;
    Edit_Endereco_Entrega: TUniEdit;
    Edit_Contato_Entrega: TUniEdit;
    Edit_Codigo_Entrega: TUniEdit;
    UniLabel20: TUniLabel;
    UniPanel2: TUniPanel;
    UniImage2: TUniImage;
    PageControl_Orcamento: TUniPageControl;
    Tab_Produtos: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Edit_Produto: TUniEdit;
    bt_Adicionar_Produto: TUniButton;
    DBGrid_Produto: TUniDBGrid;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    DataSource_Produto: TDataSource;
    DataSource_cdsProdutos: TDataSource;
    cdsProdutos: TClientDataSet;
    cdsProdutosIMG: TGraphicField;
    cdsProdutosITEM: TStringField;
    cdsProdutosCODIGO: TStringField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosQUANTIDADE: TFloatField;
    cdsProdutosVALOR: TFloatField;
    cdsProdutosSUBTOTAL: TFloatField;
    LabelTotal: TUniLabel;
    Tab_Documentos: TUniTabSheet;
    UniFileUpload1: TUniFileUpload;
    bt_Selecionar: TUniButton;
    UniPanel3: TUniPanel;
    UniDBGrid2: TUniDBGrid;
    cdsArquivos: TClientDataSet;
    cdsArquivosITEM: TStringField;
    DataSource_cdsArquivos: TDataSource;
    cdsArquivosORIGEM: TStringField;
    DS_Orcamento: TIBDataSet;
    DS_OrcamentoItem: TIBDataSet;
    DS_Doc: TIBDataSet;
    Edit_Preco: TUniNumberEdit;
    Edit_Qtde: TUniNumberEdit;
    UniPanel4: TUniPanel;
    btNovoOrcamento: TUniButton;
    btFinalizarOrcamento: TUniButton;
    DS_DocDOC_ID: TIntegerField;
    DS_DocPESSOA_ID: TIntegerField;
    DS_DocDOCUMENTO: TIBStringField;
    DS_DocVENCIMENTO: TDateField;
    DS_DocEMISSAO: TDateField;
    DS_DocRENOVACAO: TDateField;
    DS_DocDIAS_AVISO: TIntegerField;
    DS_DocARQUIVO: TBlobField;
    DS_DocPROCEDIMENTO: TWideMemoField;
    DS_DocDOC_NECESSARIO: TIntegerField;
    DS_DocTAMANHO: TIntegerField;
    DS_DocUSUARIO_I: TIntegerField;
    DS_DocUSUARIO_A: TIntegerField;
    DS_DocUSUARIO_D: TIntegerField;
    DS_DocDATA_ALT: TDateTimeField;
    DS_DocDATA_INC: TDateTimeField;
    DS_DocDELETADO: TIBStringField;
    DS_DocDATA_DEL: TDateTimeField;
    DS_DocTIPODOC_ID: TIntegerField;
    DS_DocEXTENSAO: TIBStringField;
    DS_DocNOME_ARQUIVO: TIBStringField;
    DS_DocCAMINHO: TIBStringField;
    DS_DocDEPARTAMENTO_ID: TIntegerField;
    DS_DocDIGITADOR_ID: TIntegerField;
    DS_DocDATA_VIGOR: TDateField;
    DS_DocELABORADOR_ID: TIntegerField;
    DS_DocCONFERIDOR_ID: TIntegerField;
    DS_DocREVISOR_ID: TIntegerField;
    DS_DocAPROVADOR_ID: TIntegerField;
    DS_DocDATA_ELABORACAO: TDateField;
    DS_DocDATA_DIGITACAO: TDateField;
    DS_DocDATA_CONFERENCIA: TDateField;
    DS_DocDATA_REVISAO: TDateField;
    DS_DocDATA_APROVACAO: TDateField;
    DS_DocMERCADORIA_ID: TIntegerField;
    DS_DocLICITACAO_ID: TIntegerField;
    DS_DocCONTRATO_ID: TIntegerField;
    cdsArquivosTAMANHO: TIntegerField;
    cdsArquivosEXTENSAO: TStringField;
    DS_Status: TIBDataSet;
    DS_StatusORCAMENTOSTATUS_ID: TIntegerField;
    DS_StatusORCAMENTO_ID: TIntegerField;
    DS_StatusSTATUS: TIBStringField;
    DS_DocORCAMENTO_ID: TIntegerField;
    DS_DocITEM: TIBStringField;
    cdsArquivosARQUIVO: TBlobField;
    cdsArquivosNOME_ARQUIVO: TStringField;
    Memo_Descricao: TUniMemo;
    UniLabel24: TUniLabel;
    DS_OrcamentoItemORCAMENTOITEM_ID: TIntegerField;
    DS_OrcamentoItemORCAMENTO_ID: TIntegerField;
    DS_OrcamentoItemITEM: TIBStringField;
    DS_OrcamentoItemPRODUTO_ID: TIntegerField;
    DS_OrcamentoItemERP_PRODUTO: TIBStringField;
    DS_OrcamentoItemPRODUTO: TIBStringField;
    DS_OrcamentoItemQUANTIDADE: TFloatField;
    DS_OrcamentoItemQUANTIDADE_FINAL: TFloatField;
    DS_OrcamentoItemVALOR: TFloatField;
    DS_OrcamentoItemSUBTOTAL: TFloatField;
    DS_OrcamentoItemVALOR_FINAL: TFloatField;
    DS_OrcamentoItemSUBTOTAL_FINAL: TFloatField;
    DS_OrcamentoItemDATA_INC: TDateTimeField;
    DS_OrcamentoItemUSUARIO_I: TIntegerField;
    DS_OrcamentoItemUSUARIONOME_I: TIBStringField;
    DS_OrcamentoItemDATA_ALT: TDateTimeField;
    DS_OrcamentoItemUSUARIO_A: TIntegerField;
    DS_OrcamentoItemUSUARIONOME_A: TIBStringField;
    DS_OrcamentoItemDATA_DEL: TDateTimeField;
    DS_OrcamentoItemUSUARIO_D: TIntegerField;
    DS_OrcamentoItemUSUARIONOME_D: TIBStringField;
    DS_OrcamentoItemEMPRESA_ID: TIntegerField;
    DS_OrcamentoItemDELETADO: TIBStringField;
    DS_OrcamentoItemENTREGAR: TDateField;
    DS_OrcamentoItemSTATUS: TIBStringField;
    DS_OrcamentoItemERP_REPRESENTANTE: TIBStringField;
    DS_OrcamentoItemERP_REPRESENTANTE_NOME: TIBStringField;
    DS_OrcamentoItemERP_VENDEDOR: TIBStringField;
    DS_OrcamentoItemERP_VENDEDOR_NOME: TIBStringField;
    DS_OrcamentoORCAMENTO_ID: TIntegerField;
    DS_OrcamentoEMISSAO: TDateField;
    DS_OrcamentoHORA_EMISSAO: TTimeField;
    DS_OrcamentoENTREGAR: TDateField;
    DS_OrcamentoPESSOA_ID: TIntegerField;
    DS_OrcamentoERP_CODIGO: TIBStringField;
    DS_OrcamentoCLIENTE: TIBStringField;
    DS_OrcamentoCLI_ENDERECO: TIBStringField;
    DS_OrcamentoCLI_BAIRRO: TIBStringField;
    DS_OrcamentoCLI_CIDADE: TIBStringField;
    DS_OrcamentoCLI_CEP: TIBStringField;
    DS_OrcamentoCLI_UF: TIBStringField;
    DS_OrcamentoCLI_COMPLEMENTO: TIBStringField;
    DS_OrcamentoCLI_TELEFONE: TIBStringField;
    DS_OrcamentoCLI_TIPO: TIBStringField;
    DS_OrcamentoCLI_CPFCNPJ: TIBStringField;
    DS_OrcamentoCLI_IE: TIBStringField;
    DS_OrcamentoENT_ERP_CODIGO: TIBStringField;
    DS_OrcamentoENT_CONTATO: TIBStringField;
    DS_OrcamentoENT_ENDERECO: TIBStringField;
    DS_OrcamentoENT_BAIRRO: TIBStringField;
    DS_OrcamentoENT_CIDADE: TIBStringField;
    DS_OrcamentoENT_CEP: TIBStringField;
    DS_OrcamentoENT_UF: TIBStringField;
    DS_OrcamentoENT_COMPLEMENTO: TIBStringField;
    DS_OrcamentoENT_TELEFONE: TIBStringField;
    DS_OrcamentoENT_CPFCNPJ: TIBStringField;
    DS_OrcamentoENT_IE: TIBStringField;
    DS_OrcamentoERP_CONDPAGTO: TIBStringField;
    DS_OrcamentoCONDPAGTO_ID: TIntegerField;
    DS_OrcamentoCONDPAGTO: TIBStringField;
    DS_OrcamentoVR_CONTABIL: TIBBCDField;
    DS_OrcamentoDATA_INC: TDateTimeField;
    DS_OrcamentoUSUARIO_I: TIntegerField;
    DS_OrcamentoUSUARIONOME_I: TIBStringField;
    DS_OrcamentoDATA_ALT: TDateTimeField;
    DS_OrcamentoUSUARIO_A: TIntegerField;
    DS_OrcamentoUSUARIONOME_A: TIBStringField;
    DS_OrcamentoDATA_DEL: TDateTimeField;
    DS_OrcamentoUSUARIO_D: TIntegerField;
    DS_OrcamentoUSUARIONOME_D: TIBStringField;
    DS_OrcamentoEMPRESA_ID: TIntegerField;
    DS_OrcamentoDELETADO: TIBStringField;
    DS_OrcamentoSTATUS: TIBStringField;
    DS_OrcamentoOBS: TBlobField;
    DS_OrcamentoERP_REPRESENTANTE: TIBStringField;
    DS_OrcamentoERP_REPRESENTANTE_NOME: TIBStringField;
    DS_OrcamentoERP_VENDEDOR: TIBStringField;
    DS_OrcamentoERP_VENDEDOR_NOME: TIBStringField;
    CheckBox_Comercial: TUniCheckBox;
    CheckBox_Cliente: TUniCheckBox;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    Edit_Email: TUniEdit;
    DS_OrcamentoEMAIL_CLIENTE: TIBStringField;
    DS_OrcamentoUSUARIO_EMAIL: TIBStringField;
    btn_CondPagto: TUniButton;
    Edit_PesqCondPagto: TUniEdit;
    Edit_CondPagto: TUniEdit;
    DS_StatusDATA: TDateTimeField;
    DS_StatusUSUARIO_ID: TIntegerField;
    DS_StatusUSUARIO: TIBStringField;
    DS_StatusLOG: TIBStringField;
    DS_StatusERP_PRODUTO: TIBStringField;
    DS_StatusPRODUTO_ID: TIntegerField;
    DS_StatusPRODUTO: TIBStringField;
    qCliente: TIBQuery;
    qProduto: TIBQuery;
    DS_OrcamentoCODIGO: TIBStringField;
    qProdutoREFERENCIA: TIBStringField;
    qProdutoDESCRICAO: TIBStringField;
    qClienteERP_CLIENTE: TIBStringField;
    qClienteNOME: TIBStringField;
    qClienteUF: TIBStringField;
    qClienteTIPOCLIENTE_ID: TIntegerField;
    qClienteTIPOCLIENTE: TIBStringField;
    qClienteCIDADE: TIBStringField;
    qClienteBAIRRO: TIBStringField;
    qClienteCOMPLEMENTO: TIBStringField;
    qClienteCEP: TIBStringField;
    qClienteCPFCNPJ: TIBStringField;
    qClienteTELEFONE: TIBStringField;
    qClienteEMAIL: TIBStringField;
    qClienteCOMPRA_ULTIMA: TDateField;
    qClienteCOMPRA_NUMERO: TIntegerField;
    qClienteTIPOPESSOA: TIBStringField;
    qClienteENDERECO: TIBStringField;
    DS_DocORCAMENTO_CODIGO: TIBStringField;
    DS_OrcamentoItemORCAMENTO_CODIGO: TIBStringField;
    DS_OrcamentoOBS_PRIVADA: TWideMemoField;
    DS_OrcamentoANALISE_USUARIO_ID: TIntegerField;
    DS_OrcamentoANALISE_USUARIO: TIBStringField;
    DS_OrcamentoINTEGRADO: TIBStringField;
    DS_OrcamentoINTEGRADO_DATA: TDateTimeField;
    DS_OrcamentoID: TLargeintField;
    DS_OrcamentoANO: TIBStringField;
    DS_OrcamentoItemALTERACAO_DESTAQUE: TIBStringField;
    DS_OrcamentoItemINTEGRADO: TIBStringField;
    DS_OrcamentoItemINTEGRADO_DATA: TDateTimeField;
    DS_OrcamentoDATAWARE: TIBStringField;
    DS_OrcamentoItemDATAWARE: TIBStringField;
    DS_DocDATAWARE: TIBStringField;
    procedure UniFormShow(Sender: TObject);
    procedure bt_PesqClick(Sender: TObject);
    procedure bt_Pesq_EndEntregaClick(Sender: TObject);
    procedure Edit_ProdutoExit(Sender: TObject);
    procedure Edit_ProdutoChange(Sender: TObject);
    procedure Edit_ProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ProdutoDblClick(Sender: TObject);
    procedure bt_Adicionar_ProdutoClick(Sender: TObject);
    procedure bt_SelecionarClick(Sender: TObject);
    procedure UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure cdsProdutosBeforeInsert(DataSet: TDataSet);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure cdsArquivosBeforeInsert(DataSet: TDataSet);
    procedure UniFileUpload2Completed(Sender: TObject; AStream: TFileStream);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure btNovoOrcamentoClick(Sender: TObject);
    procedure btFinalizarOrcamentoClick(Sender: TObject);
    procedure Edit_CliCNPJExit(Sender: TObject);
    procedure Edit_QtdeExit(Sender: TObject);
    procedure btn_CondPagtoClick(Sender: TObject);
  private
    procedure CallBack(Sender: TComponent; Result: Integer);
    procedure pNovoOrcamento(Sender: TComponent; Result: Integer);
    procedure pFinalizarOrcamento(Sender: TComponent; Result: Integer);

    procedure pBuscaCliente(prCNPJ : string);

    procedure pCaixaFechada;

    var
    vlItem  : integer;
    vlItemArquivo  : integer;
    vlTotal : Double;
    vEmailCliente : string;
  public
    { Public declarations }
  end;

//var

function Form_Orcamento: TForm_Orcamento;

implementation


{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit_Busca_Cliente,
  Unit_Busca_EndEntrega, ServerModule, Unit_Login, Unit_Busca_CondPagto,
  Biblioteca;

function Form_Orcamento: TForm_Orcamento;
begin
  Result := TForm_Orcamento(UniMainModule.GetFormInstance(TForm_Orcamento));
end;

procedure TForm_Orcamento.btFinalizarOrcamentoClick(Sender: TObject);
begin
  if Trim(Edit_Cliente.Text) = '' then
    begin
      MessageDlg('Selecione um Cliente.',mtError, [mbOK]);
      Exit;
    end;

  if Trim(Edit_PesqCondPagto.Text) = '' then
    begin
      MessageDlg('Selecione uma Condição de Pagamento.', mtError, [mbOK]);
      Exit;
    end;

  if cdsProdutos.IsEmpty then
    begin
      MessageDlg('Não há produto adicionado.', mtError, [mbOK]);
      Exit;
    end;

  MessageDlg('Deseja finalizar o orçamento?', mtConfirmation, mbYesNo, pFinalizarOrcamento);
end;

procedure TForm_Orcamento.btNovoOrcamentoClick(Sender: TObject);
begin
  messageDLG('Deseja realmente abandonar o orçamento atual e iniciar um novo?',
              mtInformation, mbYesNo, pNovoOrcamento);
end;

procedure TForm_Orcamento.bt_Adicionar_ProdutoClick(Sender: TObject);
var vQtdeCaixa: double; vResto : integer;
begin
  if (Edit_Qtde.Value <= 0) then
    begin
      MessageDlg('Verifique se foi informado a quantidade',mtError, [mbOK]);
      Exit;
    end;

  cdsProdutos.Filtered := False;
  cdsProdutos.Filter   := 'CODIGO <> '''' ';
  cdsProdutos.Filtered := True;

  if ((Edit_Produto.Text <> '') and (not qProduto.IsEmpty)) then
    begin
      vlItem := vlItem +1;

      cdsProdutos.Insert;
      cdsProdutosIMG.AsString          := 'img';
      cdsProdutosITEM.AsString         := FormatFloat('000', vlItem);
      cdsProdutosCODIGO.AsString       := qProdutoREFERENCIA.AsString; //Copy(Edit_Produto.Text, 1, 8);
      cdsProdutosDESCRICAO.AsString    := qProdutoDESCRICAO.AsString;//Copy(Edit_Produto.Text, 10, length(Trim(Edit_Produto.Text)));
      cdsProdutosVALOR.AsCurrency      := Edit_Preco.Value;
      cdsProdutosQUANTIDADE.AsCurrency := Edit_Qtde.Value;
      cdsProdutosSUBTOTAL.AsCurrency   := Edit_Preco.Value * Edit_Qtde.Value;
      cdsProdutos.Post;

      vlTotal := vlTotal + cdsProdutosSUBTOTAL.AsCurrency;
      LabelTotal.Caption := 'Total: ' + FormatFloat('###,###,###,###,##0.00',vltotal);

      pCaixaFechada;

      //Verifica se a quantidade é caixa fechada
      {with qAuxiliar do
        begin
          Close;
          SQL.Text := 'SELECT B1_CONV FROM SB1010 (NOLOCK)';
          SQL.Add(' WHERE B1_COD = '''+ cdsProdutosCODIGO.AsString +''' ');
          Open;
        end;

      vResto := cdsProdutosQUANTIDADE.Value mod qAuxiliar.FieldByName('B1_CONV').Value;

      if vResto = 0 then
        begin
          //MessageDlg('Caixa fechada', mtInformation, [mbok]);
        end
      else
        begin
          MessageDlg('A quantidade informada não é caixa fechada' + #13 +
            'Quantidade fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
        end;

       vQtdeCaixa := 0;}


      Edit_Produto.Clear;
      Edit_Qtde.Value := 1;
      Edit_Preco.Value:= 0.0000;

      DBGrid_Produto.Hide;
      Edit_Produto.SetFocus;
    end;
end;

procedure TForm_Orcamento.bt_PesqClick(Sender: TObject);
begin
  Form_Busca_Cliente.ShowModal;

  if Form_Busca_Cliente.ModalResult = mrOK then
    begin
      Edit_CliCNPJ.Text  := Trim(Form_Busca_Cliente.QR_CLIENTECPFCNPJ.AsString);
      Edit_Cliente.Text  := Trim(Form_Busca_Cliente.QR_CLIENTENOME.AsString);
      Edit_Endereco.Text := Trim(Form_Busca_Cliente.QR_CLIENTEENDERECO.AsString);
      Edit_Bairro.Text   := Trim(Form_Busca_Cliente.QR_CLIENTEBAIRRO.AsString);
      Edit_Codigo.Text   := Trim(Form_Busca_Cliente.QR_CLIENTEERP_CLIENTE.AsString);
      Edit_CEP.Text      := Trim(Form_Busca_Cliente.QR_CLIENTECEP.AsString);
      Edit_Cidade.Text   := Trim(Form_Busca_Cliente.QR_CLIENTECIDADE.AsString);
      Edit_UF.Text       := Trim(Form_Busca_Cliente.QR_CLIENTEUF.AsString);
      Edit_Tipo.Text     := Trim(Form_Busca_Cliente.QR_CLIENTETIPOCLIENTE.AsString);
      Edit_Telefone.Text := Trim(Form_Busca_Cliente.QR_CLIENTETELEFONE.AsString);
      Edit_Email.Text    := Trim(Form_Busca_Cliente.QR_CLIENTEEMAIL.AsString);

      UniMainModule.vClienteTotvsID := Trim(Form_Busca_Cliente.QR_CLIENTEERP_CLIENTE.AsString);
    end;
end;

procedure TForm_Orcamento.bt_Pesq_EndEntregaClick(Sender: TObject);
begin
  Form_Busca_EndEntrega.ShowModal;

  if Form_Busca_EndEntrega.ModalResult = mrOk then
    begin
      Edit_CNPJ_Entrega.Text     := Trim(Form_Busca_EndEntrega.QR_ENTREGACPFCNPJ.AsString);
      Edit_Contato_Entrega.Text  := Trim(Form_Busca_EndEntrega.QR_ENTREGANOME.AsString);
      Edit_Endereco_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGAENDERECO.AsString);
      Edit_Bairro_Entrega.Text   := Trim(Form_Busca_EndEntrega.QR_ENTREGABAIRRO.AsString);
      Edit_Codigo_Entrega.Text   := Trim(Form_Busca_EndEntrega.QR_ENTREGAERP_CLIENTE.AsString);
      Edit_CEP_Entrega.Text      := Trim(Form_Busca_EndEntrega.QR_ENTREGACEP.AsString);
      //Edit_IE_Entrega.Text     := Trim(Form_Busca_EndEntrega.qSA1A1_NOME.AsString);
      Edit_Cidade_Entrega.Text   := Trim(Form_Busca_EndEntrega.QR_ENTREGACIDADE.AsString);
      Edit_UF_Entrega.Text       := Trim(Form_Busca_EndEntrega.QR_ENTREGAUF.AsString);
      Edit_Telefone_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGATELEFONE.AsString);
    end;
end;

procedure TForm_Orcamento.CallBack(Sender: TComponent; Result: Integer);
begin
  if Result = mrYes then
    begin
      vlTotal := vlTotal - cdsProdutosSUBTOTAL.AsCurrency;
      LabelTotal.Caption := 'Total: ' + FormatFloat('###,###,###,###,##0.00',vltotal);;

      cdsProdutos.Delete;
      vlItem := 0;
      cdsProdutos.First;

      while not cdsProdutos.Eof do
        begin
          vlItem := vlItem + 1;

          cdsProdutos.Edit;
          cdsProdutosITEM.AsString := FormatFloat('000', vlItem);
          cdsProdutos.Post;
          cdsProdutos.Next;
        end;
    end;
end;

procedure TForm_Orcamento.cdsArquivosBeforeInsert(DataSet: TDataSet);
begin
  cdsArquivos.IndexFieldNames := 'ITEM';
end;

procedure TForm_Orcamento.cdsProdutosBeforeInsert(DataSet: TDataSet);
begin
  cdsProdutos.IndexFieldNames := 'ITEM';
end;

procedure TForm_Orcamento.Edit_CliCNPJExit(Sender: TObject);
begin
  if Edit_CliCNPJ.Text <> '' then
    begin
      pBuscaCliente(trim(Edit_CliCNPJ.Text));

      Edit_CliCNPJ.Text  := Trim(qClienteCPFCNPJ.AsString);
      Edit_Cliente.Text  := Trim(qClienteNOME.AsString);
      Edit_Endereco.Text := Trim(qClienteENDERECO.AsString);
      Edit_Bairro.Text   := Trim(qClienteBAIRRO.AsString);
      Edit_Codigo.Text   := Trim(qClienteERP_CLIENTE.AsString);
      Edit_CEP.Text      := Trim(qClienteCEP.AsString);
      //Edit_IE.Text     := Trim(qClienteA1_NOME.AsString);
      Edit_Cidade.Text   := Trim(qClienteCIDADE.AsString);
      Edit_UF.Text       := Trim(qClienteUF.AsString);
      Edit_Tipo.Text     := Trim(qClienteTIPOCLIENTE.AsString);
      Edit_Telefone.Text := Trim(qClienteTELEFONE.AsString);
      Edit_Email.Text    := Trim(qClienteEMAIL.AsString);

      UniMainModule.vClienteTotvsID := Trim(qClienteERP_CLIENTE.AsString);

      Edit_CNPJ_Entrega.Clear;
      Edit_Codigo_Entrega.Clear;
      Edit_IE_Entrega.Clear;
      Edit_Contato_Entrega.Clear;
      Edit_Cidade_Entrega.Clear;
      Edit_UF_Entrega.Clear;
      Edit_Endereco_Entrega.Clear;
      Edit_Telefone_Entrega.Clear;
      Edit_Bairro_Entrega.Clear;
      Edit_CEP_Entrega.Clear;
    end;
end;

procedure TForm_Orcamento.Edit_ProdutoChange(Sender: TObject);
begin
  if Trim(Edit_Produto.Text) <> '' then
    begin
      DBGrid_Produto.Left := 4;
      DBGrid_Produto.Top := 50;
      DBGrid_Produto.Show;

      with qProduto do
        begin
          Close;
          SQL.Text := 'select referencia, descricao from tbprodutos';
          SQL.Add(' where deletado = ''N'' ');
          SQL.Add(' and subgrupo_id = ''07'' ');
          SQL.Add(' and descricao like ''%'+ Trim(Edit_Produto.Text) +'%'' ');
          SQL.Add(' order by descricao');

          Open;
        end;
    end
  else
    DBGrid_Produto.Hide;
end;

procedure TForm_Orcamento.Edit_ProdutoExit(Sender: TObject);
begin
  {if not DBGrid_Produto.Focused then
    begin
      DBGrid_Produto.Visible := false;
    end
  else
    begin
      ShowMessage('Com foco');
    end;}
end;

procedure TForm_Orcamento.Edit_ProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    qProduto.Next;

  If Key = VK_UP Then
    qProduto.Prior;
end;

procedure TForm_Orcamento.Edit_ProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
  DBGrid_ProdutoDblClick(Sender);
end;

procedure TForm_Orcamento.Edit_QtdeExit(Sender: TObject);
begin
  pCaixaFechada;

end;

procedure TForm_Orcamento.pBuscaCliente(prCNPJ: string);
var i : integer;
begin
  with qCliente do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' c.erp_cliente, c.nome, c.uf, c.tipocliente_id, c.tipocliente,');
      SQL.Add(' c.cidade, c.bairro, c.complemento, c.cep, c.endereco,');
      SQL.Add(' c.cpfcnpj, c.telefone, c.email, c.compra_ultima, c.compra_numero,');
      SQL.Add(' c.tipopessoa');
      SQL.Add(' from tbcliente c');
      SQL.Add(' where deletado = ''N'' ');  
      SQL.Add(' and c.cpfcnpj = ''' + prCNPJ + ''' ');

      //if UniMainModule.vUsuario <> 'Admin' then
      //  SQL.Add(' and c.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');
        
      SQL.Add(' order by c.nome');
      Open;
    end;

  if qCliente.IsEmpty then
    begin
      MessageDlg('Cliente não encontrado! Por motivos de segurança o orçamento será zerado', mtinformation, [mbok]);
      Edit_CliCNPJ.SetFocus;

      for i := 0 to ComponentCount -1 do
        if Components[i] is TUniEdit then
          TUniEdit(Components[i]).Clear;
    end;
end;

procedure TForm_Orcamento.pCaixaFechada;
var vQtdeCaixa: double; vresto : integer;
begin

 { try
   if qProduto.RecordCount > 0 then
     begin
      with qAuxiliar do
        begin
          Close;
          SQL.Text := 'SELECT B1_CONV FROM SB1010 (NOLOCK)';
          SQL.Add(' WHERE B1_COD = '''+ qProdutoB1_COD.AsString +''' ');
          Open;
        end;

      vResto := Edit_Qtde.Value mod qAuxiliar.FieldByName('B1_CONV').Value;

      if vResto = 0 then
        begin
          //MessageDlg('Caixa fechada', mtInformation, [mbok]);
        end
      else
        begin
          MessageDlg('A quantidade informada não é caixa fechada.' + #13 +
            'Quantidade fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
        end;

        vQtdeCaixa := 0;
     end;

  except

  end;}

end;

procedure TForm_Orcamento.pFinalizarOrcamento(Sender: TComponent;
  Result: Integer);
var
  i : integer;
  vlEmailDestino : string;
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  if Result = mrYes then
    begin
      DS_Orcamento.Close;
      DS_Orcamento.SelectSQL.Text := 'SELECT * FROM TBORCAMENTO WHERE ORCAMENTO_ID = 0';
      DS_Orcamento.Open;

      DS_OrcamentoItem.Close;
      DS_OrcamentoItem.SelectSQL.Text := 'SELECT * FROM TBORCAMENTO_ITEM WHERE ORCAMENTO_ID = 0';
      DS_OrcamentoItem.Open;

      Try
        DS_Orcamento.Open;
        DS_Orcamento.Insert;

        DS_OrcamentoORCAMENTO_ID.AsString := DS_OrcamentoORCAMENTO_ID.AsString + UniMainModule.vDataware;
        DS_OrcamentoDATAWARE.AsString     := UniMainModule.vDataware;

        // Representante e Vendedor
        if UniMainModule.vVendedorID = '' then
          begin
            DS_OrcamentoERP_VENDEDOR.AsString       := '000017';
            DS_OrcamentoERP_VENDEDOR_NOME.AsString  := 'DEPARTAMENTO COMERCIAL';
          end
        else
          begin
            DS_OrcamentoERP_VENDEDOR.AsString       := UniMainModule.vVendedorID;
            DS_OrcamentoERP_VENDEDOR_NOME.AsString  := UniMainModule.vVendedorNome;
          end;

        DS_OrcamentoERP_REPRESENTANTE.AsString      := UniMainModule.vRepresentanteID;
        DS_OrcamentoERP_REPRESENTANTE_NOME.AsString := UniMainModule.vRepresentanteNome;

        //Cliente
        DS_OrcamentoEMISSAO.AsDateTime      := Now;
        DS_OrcamentoHORA_EMISSAO.AsDateTime := Now;
        DS_OrcamentoENTREGAR.AsDateTime     := dtp_Entregar.DateTime;
        DS_OrcamentoCLI_CPFCNPJ.AsString    := Edit_CliCNPJ.Text;
        DS_OrcamentoCLIENTE.AsString        := Edit_Cliente.Text;
        DS_OrcamentoCLI_ENDERECO.AsString   := Edit_Endereco.Text;
        DS_OrcamentoCLI_BAIRRO.AsString     := Edit_Bairro.Text;
        DS_OrcamentoERP_CODIGO.AsString     := Edit_Codigo.Text;
        DS_OrcamentoPESSOA_ID.AsString      := '';
        DS_OrcamentoCLI_CEP.AsString        := Edit_CEP.Text;
        DS_OrcamentoCLI_IE.AsString         := Edit_IE.Text;
        DS_OrcamentoCLI_CIDADE.AsString     := Edit_Cidade.Text;
        DS_OrcamentoCLI_UF.AsString         := Edit_UF.Text;
        DS_OrcamentoCLI_TIPO.AsString       := Edit_Tipo.Text;
        DS_OrcamentoCLI_TELEFONE.AsString   := Edit_Telefone.Text;
        DS_OrcamentoEMAIL_CLIENTE.AsString  := Edit_Email.Text;

        //Entrega
        DS_OrcamentoENT_CPFCNPJ.AsString    := Edit_CNPJ_Entrega.Text;
        DS_OrcamentoENT_CONTATO.AsString    := Edit_Contato_Entrega.Text;
        DS_OrcamentoENT_ENDERECO.AsString   := Edit_Endereco_Entrega.Text;
        DS_OrcamentoENT_BAIRRO.AsString     := Edit_Bairro_Entrega.Text;
        DS_OrcamentoENT_ERP_CODIGO.AsString := Edit_Codigo_Entrega.Text;
        DS_OrcamentoENT_CEP.AsString        := Edit_CEP_Entrega.Text;
        DS_OrcamentoENT_IE.AsString         := Edit_IE_Entrega.Text;
        DS_OrcamentoENT_CIDADE.AsString     := Edit_Cidade_Entrega.Text;
        DS_OrcamentoENT_UF.AsString         := Edit_UF_Entrega.Text;
        DS_OrcamentoENT_TELEFONE.AsString   := Edit_Telefone_Entrega.Text;

        DS_OrcamentoERP_CONDPAGTO.AsString  := Trim(Edit_PesqCondPagto.Text); //Copy(ComboBox_Cond_Pgto.Text, 1, 3);
        DS_OrcamentoCONDPAGTO_ID.AsString   := '';
        DS_OrcamentoCONDPAGTO.AsString      := Trim(Edit_CondPagto.Text); //Copy(ComboBox_Cond_Pgto.Text, 5, length(ComboBox_Cond_Pgto.Text)-1);

        DS_OrcamentoVR_CONTABIL.AsFloat     := vlTotal;

        DS_OrcamentoDATA_INC.AsDateTime     := Now;
        DS_OrcamentoUSUARIO_I.AsString      := UniMainModule.vUsuarioID;
        DS_OrcamentoUSUARIONOME_I.AsString  := UniMainModule.vUsuario;
        DS_OrcamentoDELETADO.AsString       := 'N';
        DS_OrcamentoINTEGRADO.AsString      := 'N';
        DS_OrcamentoSTATUS.AsString         := 'Aberto';

        DS_OrcamentoOBS.AsString            := Memo_Descricao.Text;
        DS_OrcamentoUSUARIO_EMAIL.AsString  := UniMainModule.vEmailUsuario;
        UniMainModule.vOrcamento_ID         := DS_OrcamentoORCAMENTO_ID.AsString;

        DS_OrcamentoID.AsInteger            := UniMainModule.fRetornaMaxOrcamentoUsuario(UniMainModule.vUsuarioID);
        DS_OrcamentoANO.AsString            := FormatDateTime('YYYY',Now);
        DS_OrcamentoCODIGO.AsString         := 'C' + PreencherZero(StrToInt(UniMainModule.vUsuarioID), '0', 4) +
                                               '-' + PreencherZero(UniMainModule.fRetornaMaxOrcamentoUsuario(UniMainModule.vUsuarioID),'0',6);

        DS_Orcamento.Post;
        DS_Orcamento.Transaction.CommitRetaining;

        with DS_Status do
          begin
            Close;
            SelectSQL.Text := 'select * from tborcamento_status where orcamentostatus_id = 0';
            Open;
          end;

        cdsProdutos.First;
        while not cdsProdutos.Eof do
          begin
            // Salva TBORCAMENTO_STATUS------------------------------ Início
            DS_Status.Insert;

            DS_StatusORCAMENTO_ID.AsString := DS_OrcamentoORCAMENTO_ID.AsString;
            DS_StatusSTATUS.AsString       := 'Aberto';
            DS_StatusDATA.AsDateTime       := Now;
            DS_StatusUSUARIO_ID.AsString   := UniMainModule.vUsuarioID;
            DS_StatusUSUARIO.AsString      := UniMainModule.vUsuario;
            DS_StatusERP_PRODUTO.AsString  := cdsProdutosCODIGO.AsString;
            DS_StatusPRODUTO.AsString      := cdsProdutosDESCRICAO.AsString;
            DS_StatusLOG.AsString          := 'Quantidade ['+ FormatFloat('###,###,###,###0',     cdsProdutosQUANTIDADE.AsInteger) + '] ' +
                                              'Preço ['     + FormatFloat('###,###,###,##0.0000', cdsProdutosVALOR.AsCurrency)     + '] ' +
                                              'SubTotal ['  + FormatFloat('###,###,###,##0.0000', cdsProdutosSUBTOTAL.AsCurrency)  + ']';

            DS_Status.Post;
            DS_Status.Transaction.CommitRetaining;
            // Salva TBORCAMENTO_STATUS------------------------------ Fim

            DS_OrcamentoItem.Open;
            DS_OrcamentoItem.Insert;

            DS_OrcamentoItemORCAMENTOITEM_ID.AsString       := DS_OrcamentoItemORCAMENTOITEM_ID.AsString + UniMainModule.vDataware;
            DS_OrcamentoItemDATAWARE.AsString               := UniMainModule.vDataware;
            DS_OrcamentoItemORCAMENTO_ID.AsString           := DS_OrcamentoORCAMENTO_ID.AsString;
            DS_OrcamentoItemSTATUS.AsString                 := 'Aberto';
            DS_OrcamentoItemERP_REPRESENTANTE.AsString      := DS_OrcamentoERP_REPRESENTANTE.AsString;
            DS_OrcamentoItemERP_REPRESENTANTE_NOME.AsString := DS_OrcamentoERP_REPRESENTANTE_NOME.AsString;
            DS_OrcamentoItemERP_VENDEDOR.AsString           := DS_OrcamentoERP_VENDEDOR.AsString;
            DS_OrcamentoItemERP_VENDEDOR_NOME.AsString      := DS_OrcamentoERP_VENDEDOR_NOME.AsString;
            DS_OrcamentoItemPRODUTO_ID.AsString             := '';
            DS_OrcamentoItemITEM.AsString                   := cdsProdutosITEM.AsString;
            DS_OrcamentoItemERP_PRODUTO.AsString            := cdsProdutosCODIGO.AsString;
            DS_OrcamentoItemPRODUTO.AsString                := cdsProdutosDESCRICAO.AsString;
            DS_OrcamentoItemQUANTIDADE.AsString             := cdsProdutosQUANTIDADE.AsString;
            DS_OrcamentoItemQUANTIDADE_FINAL.AsString       := cdsProdutosQUANTIDADE.AsString;
            DS_OrcamentoItemVALOR.AsString                  := cdsProdutosVALOR.AsString;
            DS_OrcamentoItemSUBTOTAL.AsString               := cdsProdutosSUBTOTAL.AsString;
            DS_OrcamentoItemVALOR_FINAL.AsString            := cdsProdutosVALOR.AsString;
            DS_OrcamentoItemSUBTOTAL_FINAL.AsString         := cdsProdutosSUBTOTAL.AsString;
            DS_OrcamentoItemDATA_INC.AsDateTime             := Now;
            DS_OrcamentoItemDELETADO.AsString               := 'N';
            DS_OrcamentoItemENTREGAR.AsDateTime             := DS_OrcamentoENTREGAR.AsDateTime;
            DS_OrcamentoItemUSUARIO_I.AsString              := UniMainModule.vUsuarioID;
            DS_OrcamentoItemUSUARIONOME_I.AsString          := UniMainModule.vUsuario;
            DS_OrcamentoItemORCAMENTO_CODIGO.AsString       := DS_OrcamentoCODIGO.AsString;
            DS_OrcamentoItemINTEGRADO.AsString              := 'N';

            DS_OrcamentoItem.Post;
            DS_OrcamentoItem.Transaction.CommitRetaining;

            cdsProdutos.Next;
          end;

      DS_Doc.Close;
      DS_Doc.SelectSQl.Text := 'select * from tbdoc where doc_id = 0';
      DS_Doc.Open;

      cdsArquivos.First;

      while not cdsArquivos.Eof do
        begin
          DS_Doc.Insert;

          FileStream := TFileStream.create(cdsArquivosARQUIVO.AsString, fmOpenRead, fmShareDenyWrite);
          BlobStream := DS_DOC.CreateBlobStream(DS_DOCARQUIVO, bmWrite);

          BlobStream.CopyFrom(FileStream, FileStream.Size);

          DS_DocDOC_ID.AsString           := DS_DocDOC_ID.AsString + UniMainModule.vDataware;
          DS_DocNOME_ARQUIVO.AsString     := cdsArquivosNOME_ARQUIVO.AsString;
          DS_DocTAMANHO.Asinteger         := cdsArquivosTAMANHO.AsInteger;
          DS_DocEXTENSAO.AsString         := cdsArquivosEXTENSAO.AsString;
          DS_DocITEM.AsString             := cdsArquivosITEM.AsString;
          DS_DocCAMINHO.AsString          := cdsArquivosARQUIVO.AsString;
          DS_DocORCAMENTO_CODIGO.AsString := DS_OrcamentoCODIGO.AsString;
          DS_DocORCAMENTO_ID.AsString     := DS_OrcamentoORCAMENTO_ID.AsString;
          DS_DOCUSUARIO_I.AsString        := UniMainModule.vUsuarioID;
          DS_DOCDATA_INC.AsDateTime       := Now;
          DS_DocDELETADO.AsString         := 'N';
          DS_DOCDATAWARE.AsString         := UniMainModule.vDataware;

          DS_Doc.Post;
          ds_doc.Transaction.CommitRetaining;

          cdsArquivos.Next;
        end;

        //Verifica se o Cliente receberá e-mail (alimenta uma variável)
        if CheckBox_Cliente.Checked = true then
          begin
            vEmailCliente := Trim(Edit_Email.Text);
          end;

        for i := 0 to ComponentCount -1 do
            if Components[i] is TUniEdit then
              TUniEdit(Components[i]).Clear;

        Memo_Descricao.Clear;

        LabelTotal.Caption := 'Total 0,00';

        vlTotal       := 0;
        vlItem        := 0;
        vlItemArquivo := 0;

        PageControl_Orcamento.ActivePageIndex := 0;

        cdsProdutos.EmptyDataSet;
        cdsProdutos.Close;
        cdsProdutos.Open;

        cdsArquivos.EmptyDataSet;
        cdsArquivos.Close;
        cdsArquivos.Open;

        messageDLG('Orçamento Gerado com Sucesso, Relatório exibido em seguida!', mtInformation, [mbOK]);

        UniMainModule.pGeraRelatorio(DS_OrcamentoORCAMENTO_ID.AsString, 'Todos', 'S');

        // Envia e-mail para Emitente
        UnimainModule.fEnviaEmailOrcamento('Orçamento Farmace [' + UniMainModule.vOrcamento_ID + '] - Aberto',
                      UniMainModule.vEmailUsuario,UniMainModule.frxPDFExport1.FileName,UniMainModule.vOrcamento_ID,'Todos');

        // Envia e-mail para o Cliente
        if CheckBox_Cliente.Checked then
          begin
            if Trim(vEmailCliente) <> '' then
              begin
                UnimainModule.fEnviaEmailOrcamento('Orçamento Farmace [' + UniMainModule.vOrcamento_ID + '] - Aberto',
                              Trim(vEmailCliente),UniMainModule.frxPDFExport1.FileName,UniMainModule.vOrcamento_ID,'Todos');
              end;
          end;

        // Verifica se o e-mail será enviado para o e-mail da tbparametro
        if CheckBox_Comercial.Checked then
          begin
            UnimainModule.fEnviaEmailOrcamentoComercial('Orçamento Farmace [' + UniMainModule.vOrcamento_ID + '] - Aberto',
                          vEmailPara,UniMainModule.frxPDFExport1.FileName,UniMainModule.vOrcamento_ID,'Todos');
          end;

        vEmailCliente              := '';
        CheckBox_Comercial.Checked := False;
        CheckBox_Cliente.Checked   := True;

      except
        messageDLG('Erro ao gerar orçamento!', mtError, [mbOK]);
      end;
    end;
end;


procedure TForm_Orcamento.pNovoOrcamento(Sender: TComponent; Result: Integer);
var i : integer;
begin
  if Result = mrYes then
    begin
      for i := 0 to ComponentCount -1 do
        if Components[i] is TUniEdit then
          TUniEdit(Components[i]).Clear;

      LabelTotal.Caption := 'Total 0,00';

      vlTotal := 0;
      vlItem := 0;
      vlItemArquivo := 0;

      PageControl_Orcamento.ActivePageIndex := 0;

      cdsProdutos.EmptyDataSet;
      cdsProdutos.Close;
      cdsProdutos.Open;

      cdsArquivos.EmptyDataSet;
      cdsArquivos.Close;
      cdsArquivos.Open;
    end;
end;

procedure TForm_Orcamento.DBGrid_ProdutoDblClick(Sender: TObject);
begin
  Edit_Produto.Text := Trim(qProdutoREFERENCIA.AsString) +
  '-' + Trim(qProdutoDESCRICAO.AsString);
  DBGrid_Produto.Hide;
  Edit_Qtde.SetFocus;
end;

procedure TForm_Orcamento.bt_SelecionarClick(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TForm_Orcamento.btn_CondPagtoClick(Sender: TObject);
begin
  Form_Busca_CondPagto.ShowModal;

  if Form_Busca_CondPagto.ModalResult = mrOk then
    begin
      Edit_PesqCondPagto.Text := Trim(Form_Busca_CondPagto.QR_CONDPAGTOERP_CODIGO.AsString);
      Edit_CondPagto.Text     := Trim(Form_Busca_CondPagto.QR_CONDPAGTOCONDICAO_DESCRICAO.AsString);
    end;
end;

procedure TForm_Orcamento.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    messageDLG('Deseja realmente excluir o item?', mtConfirmation, mbYesNo, CallBack);
end;

procedure TForm_Orcamento.UniDBGrid1FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'IMG') then
  begin
    DoNotDispose := True; // we provide an static image so do not free it.
    if AField.AsString = 'img' then
    begin
      OutImage := UniImage2.Picture.Graphic;
    end
  end;
end;


procedure TForm_Orcamento.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
  var
  DestName : string;
  DestFolder : string;
  BlobStream : TStream;
  FileStream : TFileStream;

begin
  DestFolder:= UniServerModule.StartPath + 'files\' + UniMainModule.vUsuario +'\';
  if not DirectoryExists(DestFolder) then
    ForceDirectories(DestFolder);

  vlItemArquivo := vlItemArquivo + 1;

  DestName:=DestFolder+ExtractFileName(UniFileUpload1.FileName);

  CopyFile(PChar(AStream.FileName), PChar(DestName), False);

  Filestream := TFileStream.Create(destname, fmOpenRead, fmShareDenyWrite);

  cdsArquivos.Insert;

  BlobStream := cdsArquivos.CreateBlobStream(cdsArquivosARQUIVO, bmWrite);
  try
    BlobStream.CopyFrom(FileStream, FileStream.Size);

    cdsArquivosITEM.AsString         := FormatFloat('000', vlItemArquivo);
    cdsArquivosNOME_ARQUIVO.AsString := ExtractFileName(UniFileUpload1.FileName);
    cdsArquivosTAMANHO.AsString      := IntToStr(FileStream.Size);
    cdsArquivosEXTENSAO.AsString     := ExtractFileExt(UniFileUpload1.FileName);
    cdsArquivosARQUIVO.AsString      := DestName;

    cdsArquivos.Post;
  finally
    FileStream.Free;
    BlobStream.Free;
  end;
end;

procedure TForm_Orcamento.UniFileUpload2Completed(Sender: TObject;
  AStream: TFileStream);
  var
  DestName : string;
  DestFolder : string;
  begin
  cdsProdutos.First;
  while not cdsArquivos.Eof do
    begin
      DestFolder:= UniServerModule.StartPath+'files\';
      DestName:=DestFolder+ExtractFileName(cdsArquivosARQUIVO.AsString);
      CopyFile(PChar(AStream.FileName), PChar(DestName), False);

      cdsArquivos.Next;
    end;
end;

procedure TForm_Orcamento.UniFormShow(Sender: TObject);
begin
  vlItem        := 0;
  vlTotal       := 0;
  vlItemArquivo := 0;
  vEmailCliente := '';
  dtp_Entregar.DateTime := now;

  CheckBox_Comercial.Checked := True;
  CheckBox_Cliente.Checked   := False;
end;

initialization
  RegisterAppFormClass(TForm_Orcamento);

end.
