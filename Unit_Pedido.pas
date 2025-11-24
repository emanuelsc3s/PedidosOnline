unit Unit_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniMemo, uniEdit, uniBasicGrid, uniDBGrid,
  uniPageControl, uniMultiItem, uniComboBox, uniGUIBaseClasses, uniImageList,
  uniPanel, uniButton, uniLabel, uniDateTimePicker, Vcl.Imaging.pngimage,
  uniImage, Data.Win.ADODB, uniFileUpload, Data.DB, Datasnap.DBClient,
  IBX.IBCustomDataSet, IBX.IBQuery, uniBitBtn, uniScrollBox;

type
  TForm_Pedido = class(TUniForm)
    btNovoPedido: TUniButton;
    btFinalizarPedido: TUniButton;
    UniPanel5: TUniPanel;
    DataSource_cdsProdutos: TDataSource;
    cdsProdutos: TClientDataSet;
    cdsProdutosITEM: TStringField;
    cdsProdutosCODIGO: TStringField;
    cdsProdutosDESCRICAO: TStringField;
    cdsProdutosQUANTIDADE: TFloatField;
    cdsProdutosVALOR: TFloatField;
    cdsProdutosSUBTOTAL: TFloatField;
    DataSource_cdsArquivos: TDataSource;
    cdsArquivos: TClientDataSet;
    cdsArquivosITEM: TStringField;
    cdsArquivosORIGEM: TStringField;
    cdsArquivosTAMANHO: TIntegerField;
    cdsArquivosEXTENSAO: TStringField;
    cdsArquivosARQUIVO: TBlobField;
    cdsArquivosNOME_ARQUIVO: TStringField;
    UniFileUpload1: TUniFileUpload;
    DataSource_Produto: TDataSource;
    DS_Pedidos: TIBDataSet;
    DS_PedidosItem: TIBDataSet;
    QR_PRODUTO: TIBQuery;
    QR_PRODUTOPRODUTO_ID: TIntegerField;
    QR_PRODUTOREFERENCIA: TIBStringField;
    QR_PRODUTODESCRICAO: TIBStringField;
    DS_PedidosPEDIDO_ID: TIntegerField;
    DS_PedidosPEDIDO_NUM: TIBStringField;
    DS_PedidosORCAMENTO_ID: TIntegerField;
    DS_PedidosEMISSAO: TDateField;
    DS_PedidosVALIDADE: TDateField;
    DS_PedidosHORA: TTimeField;
    DS_PedidosSC_ID: TIntegerField;
    DS_PedidosCOTACAO_ID: TIntegerField;
    DS_PedidosCC_ID: TIntegerField;
    DS_PedidosENTRADA_SAIDA: TIBStringField;
    DS_PedidosPESSOA_ID: TIntegerField;
    DS_PedidosPESSOA_VR: TIntegerField;
    DS_PedidosVALOR_PEDIDO: TIBBCDField;
    DS_PedidosVALOR_FRETE: TIBBCDField;
    DS_PedidosVALOR_DESPESAS: TIBBCDField;
    DS_PedidosVALOR_DESCONTO: TIBBCDField;
    DS_PedidosVALOR_ICMS: TIBBCDField;
    DS_PedidosBASE_ICMS: TIBBCDField;
    DS_PedidosVALOR_IPI: TIBBCDField;
    DS_PedidosBASE_IPI: TIBBCDField;
    DS_PedidosTRANSPORTADOR_ID: TIntegerField;
    DS_PedidosVEICULO_ID: TIntegerField;
    DS_PedidosDATA_INC: TDateTimeField;
    DS_PedidosUSUARIO_I: TIntegerField;
    DS_PedidosUSUARIONOME_I: TIBStringField;
    DS_PedidosDATA_ALT: TDateTimeField;
    DS_PedidosUSUARIO_A: TIntegerField;
    DS_PedidosUSUARIONOME_A: TIBStringField;
    DS_PedidosDATA_DEL: TDateTimeField;
    DS_PedidosUSUARIO_D: TIntegerField;
    DS_PedidosUSUARIONOME_D: TIBStringField;
    DS_PedidosUSUARIO_ID: TIntegerField;
    DS_PedidosEMPRESA_ID: TIntegerField;
    DS_PedidosDELETADO: TIBStringField;
    DS_PedidosIDENTIFICACAO_PEDIDO: TIBStringField;
    DS_PedidosCONDPAGTO_ID: TIntegerField;
    DS_PedidosERP_CONDPAGTO: TIntegerField;
    DS_PedidosCONDPAGTO: TIBStringField;
    DS_PedidosTIPO_FRETE: TIBStringField;
    DS_PedidosVALOR_ITENS: TIBBCDField;
    DS_PedidosOBS_PEDIDO: TIBStringField;
    DS_PedidosENTREGA_PEDIDO: TDateField;
    DS_PedidosID: TIntegerField;
    DS_PedidosANO: TIBStringField;
    DS_PedidosREPLICADO: TIBStringField;
    DS_PedidosCLIENTE_ID: TIntegerField;
    DS_PedidosIMOVEL_ID: TIntegerField;
    DS_PedidosWEB_SESSION_ID: TIBStringField;
    DS_PedidosFORNECEDOR_ID: TIntegerField;
    DS_PedidosREPRESENTADA_ID: TIntegerField;
    DS_PedidosREPRESENTADA: TIBStringField;
    DS_PedidosCLI_NOME: TIBStringField;
    DS_PedidosERP_CLIENTE: TIBStringField;
    DS_PedidosCLI_ENDERECO: TIBStringField;
    DS_PedidosCLI_COMPLEMENTO: TIBStringField;
    DS_PedidosCLI_BAIRRO: TIBStringField;
    DS_PedidosCLI_CEP: TIBStringField;
    DS_PedidosCLI_CIDADE: TIBStringField;
    DS_PedidosCLI_UF: TIBStringField;
    DS_PedidosCLI_TELEFONE: TIBStringField;
    DS_PedidosCLI_EMAIL: TIBStringField;
    DS_PedidosCLI_TIPO: TIBStringField;
    DS_PedidosCLI_CPFCNPJ: TIBStringField;
    DS_PedidosCLI_IE: TIBStringField;
    DS_PedidosCLI_RGCGF: TIBStringField;
    DS_PedidosERP_ENTREGA: TIBStringField;
    DS_PedidosENT_CPFCNPJ: TIBStringField;
    DS_PedidosENT_NOME: TIBStringField;
    DS_PedidosENT_CONTATO: TIBStringField;
    DS_PedidosENT_ENDERECO: TIBStringField;
    DS_PedidosENT_COMPLEMENTO: TIBStringField;
    DS_PedidosENT_BAIRRO: TIBStringField;
    DS_PedidosENT_CEP: TIBStringField;
    DS_PedidosENT_CIDADE: TIBStringField;
    DS_PedidosENT_UF: TIBStringField;
    DS_PedidosENT_TELEFONE: TIBStringField;
    DS_PedidosENT_EMAIL: TIBStringField;
    DS_PedidosENT_RGCGF: TIBStringField;
    DS_PedidosEMPENHO: TIBStringField;
    DS_PedidosPROCESSO: TIBStringField;
    DS_PedidosORIGEM: TIBStringField;
    DS_PedidosIMPRESSO: TIBStringField;
    DS_PedidosSITUACAO: TIBStringField;
    DS_PedidosDATA_SITUACAO: TDateField;
    DS_PedidosHPRINT: TDateTimeField;
    DS_PedidosERP_VENDEDOR: TIBStringField;
    DS_PedidosERP_VENDEDOR_NOME: TIBStringField;
    DS_PedidosERP_REPRESENTANTE: TIBStringField;
    DS_PedidosERP_REPRESENTANTE_NOME: TIBStringField;
    DS_PedidosCODIGO: TIBStringField;
    DS_PedidosOBS: TWideMemoField;
    DS_PedidosItemPEDIDOITEM_ID: TIntegerField;
    DS_PedidosItemPEDIDO_ID: TIntegerField;
    DS_PedidosItemPRODUTO_ID: TIntegerField;
    DS_PedidosItemORCAMENTO_ID: TIntegerField;
    DS_PedidosItemORCAMENTOITEM_ID: TIntegerField;
    DS_PedidosItemPESSOA_ID: TIntegerField;
    DS_PedidosItemDATA: TDateField;
    DS_PedidosItemITEM: TIBStringField;
    DS_PedidosItemERP_PRODUTO: TIBStringField;
    DS_PedidosItemPRODUTO: TIBStringField;
    DS_PedidosItemQUANTIDADE: TIBBCDField;
    DS_PedidosItemIPI: TIBBCDField;
    DS_PedidosItemICMS: TIBBCDField;
    DS_PedidosItemPRECO: TFMTBCDField;
    DS_PedidosItemSUBTOTAL: TIBBCDField;
    DS_PedidosItemBASE_ICMS: TIBBCDField;
    DS_PedidosItemBASE_IPI: TIBBCDField;
    DS_PedidosItemVALOR_ICMS: TIBBCDField;
    DS_PedidosItemVALOR_IPI: TIBBCDField;
    DS_PedidosItemESTOQUE_ID: TIntegerField;
    DS_PedidosItemCOMISSAO: TIBBCDField;
    DS_PedidosItemVALOR_DESCONTO: TIBBCDField;
    DS_PedidosItemVALOR_ACRESCIMO: TIBBCDField;
    DS_PedidosItemCC_ID: TIntegerField;
    DS_PedidosItemAPLICACAO_ID: TIntegerField;
    DS_PedidosItemCOTACAO_ID: TIntegerField;
    DS_PedidosItemDEPARTAMENTO_ID: TIntegerField;
    DS_PedidosItemSC_ID: TIntegerField;
    DS_PedidosItemITEMSC_ID: TIntegerField;
    DS_PedidosItemDATA_INC: TDateTimeField;
    DS_PedidosItemUSUARIO_I: TIntegerField;
    DS_PedidosItemUSUARIONOME_I: TIBStringField;
    DS_PedidosItemDATA_ALT: TDateTimeField;
    DS_PedidosItemUSUARIO_A: TIntegerField;
    DS_PedidosItemUSUARIONOME_A: TIBStringField;
    DS_PedidosItemDATA_DEL: TDateTimeField;
    DS_PedidosItemUSUARIO_D: TIntegerField;
    DS_PedidosItemUSUARIONOME_D: TIBStringField;
    DS_PedidosItemUSUARIO_ID: TIntegerField;
    DS_PedidosItemEMPRESA_ID: TIntegerField;
    DS_PedidosItemDELETADO: TIBStringField;
    DS_PedidosItemPRAZO: TIntegerField;
    DS_PedidosItemMARCA: TIBStringField;
    DS_PedidosItemCOTACAOITEM_ID: TIntegerField;
    DS_PedidosItemENTREGA_PEDITEM: TDateField;
    DS_PedidosItemREPLICADO: TIBStringField;
    DS_PedidosItemTOTAL: TIBBCDField;
    DS_PedidosItemWEB_SESSION_ID: TIBStringField;
    DS_PedidosItemFORNECEDOR_ID: TIntegerField;
    DS_PedidosItemQTDE_ENTREGA: TIBBCDField;
    DS_PedidosItemGERA_ESTOQUE: TIBStringField;
    qCliente: TIBQuery;
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
    DS_Doc: TIBDataSet;
    DS_PedidosItemPEDIDO_CODIGO: TIBStringField;
    DS_PedidosINTEGRADO: TIBStringField;
    DS_PedidosItemINTEGRADO: TIBStringField;
    DS_PedidosINTEGRADO_DATA: TDateTimeField;
    DS_PedidosSTATUS: TIBStringField;
    DS_PedidosIMPRESSAO_ULTIMA: TDateTimeField;
    DS_PedidosIMPRESSAO_USUARIO: TIBStringField;
    DS_DocDOC_ID: TIntegerField;
    DS_DocPEDIDO_ID: TIntegerField;
    DS_DocPEDIDO_CODIGO: TIBStringField;
    DS_DocNOME_ARQUIVO: TIBStringField;
    DS_DocTAMANHO: TIntegerField;
    DS_DocEXTENSAO: TIBStringField;
    DS_DocITEM: TIBStringField;
    DS_DocCAMINHO: TIBStringField;
    DS_DocUSUARIO_I: TIntegerField;
    DS_DocUSUARIONOME_I: TIBStringField;
    DS_DocDATA_INC: TDateTimeField;
    DS_DocDELETADO: TIBStringField;
    DS_DocARQUIVO: TBlobField;
    cdsProdutosEXCLUIR: TStringField;
    DS_PedidosDATAWARE: TIBStringField;
    DS_PedidosItemDATAWARE: TIBStringField;
    DS_PedidosItemQTDE: TIBBCDField;
    DS_PedidosItemINTEGRADO_DATA: TDateTimeField;
    DS_PedidosItemSTATUS: TIBStringField;
    DS_PedidosItemLOTE: TIBStringField;
    DS_PedidosItemOBS: TWideMemoField;
    DS_PedidosItemNEW_ID: TIntegerField;
    DS_DocDATAWARE: TIBStringField;
    DS_DocDOCUMENTO: TIBStringField;
    UniImageList1: TUniImageList;
    cdsArquivosCAMINHO: TWideStringField;
    cdsArquivosEXCLUIR: TWideStringField;
    cdsArquivosIMG: TWideStringField;
    cdsProdutosPEDIDOITEM_ID: TIntegerField;
    cdsProdutosDELETADO: TStringField;
    cdsArquivosDOC_ID: TIntegerField;
    DS_DocUSUARIO_D: TIntegerField;
    DS_DocUSUARIONOME_D: TIBStringField;
    DS_DocDATA_DEL: TDateTimeField;
    DS_DocUSUARIO_A: TIntegerField;
    DS_DocUSUARIONOME_A: TIBStringField;
    DS_DocDATA_ALT: TDateTimeField;
    cdsArquivosDELETADO: TStringField;
    cdsProdutosBusca: TClientDataSet;
    cdsProdutosBuscaPRODUTO_ID: TIntegerField;
    cdsProdutosBuscaERP_PRODUTO: TStringField;
    cdsProdutosBuscaPRODUTO: TStringField;
    DS_PedidosEMPENHO_ANO: TIBStringField;
    DS_PedidosEMPENHO_COMPLETO: TIBStringField;
    UniPanel6: TUniPanel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniScrollBox1: TUniScrollBox;
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
    Edit_Tipo: TUniEdit;
    Edit_IE: TUniEdit;
    Edit_Cidade: TUniEdit;
    Edit_Telefone: TUniEdit;
    Edit_CEP: TUniEdit;
    Edit_Bairro: TUniEdit;
    Edit_Endereco: TUniEdit;
    Edit_Cliente: TUniEdit;
    Edit_Codigo: TUniEdit;
    UniLabel11: TUniLabel;
    Edit_Processo: TUniEdit;
    Edit_Empenho: TUniEdit;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    ComboBox_Empenho: TUniComboBox;
    Edit_UF: TUniEdit;
    UniPanel1: TUniPanel;
    Edit_CNPJ_Entrega: TUniEdit;
    UniLabel15: TUniLabel;
    bt_Pesq_EndEntrega: TUniButton;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    Edit_IE_Entrega: TUniEdit;
    Edit_Cidade_Entrega: TUniEdit;
    Edit_Telefone_Entrega: TUniEdit;
    Edit_CEP_Entrega: TUniEdit;
    Edit_Bairro_Entrega: TUniEdit;
    Edit_Endereco_Entrega: TUniEdit;
    Edit_Contato_Entrega: TUniEdit;
    Edit_Codigo_Entrega: TUniEdit;
    UniLabel24: TUniLabel;
    Edit_CondPagto: TUniEdit;
    btn_CondPagto: TUniButton;
    Edit_PesqCondPagto: TUniEdit;
    Edit_UF_Entrega: TUniEdit;
    UniPanel2: TUniPanel;
    PageControl_Orcamento: TUniPageControl;
    Tab_Produtos: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    Edit_Produto: TUniEdit;
    bt_Adicionar_Produto: TUniButton;
    DBGrid_Produto: TUniDBGrid;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    LabelTotal: TUniLabel;
    Edit_Preco: TUniNumberEdit;
    Edit_Qtde: TUniNumberEdit;
    Tab_Documentos: TUniTabSheet;
    bt_Selecionar: TUniButton;
    UniPanel3: TUniPanel;
    DBGridArquivo: TUniDBGrid;
    UniPanel4: TUniPanel;
    Memo_OBS: TUniMemo;
    procedure bt_PesqClick(Sender: TObject);
    procedure bt_Pesq_EndEntregaClick(Sender: TObject);
    procedure Edit_ProdutoChange(Sender: TObject);
    procedure DBGrid_ProdutoDblClick(Sender: TObject);
    procedure bt_Adicionar_ProdutoClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure Edit_ProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btNovoPedidoClick(Sender: TObject);
    procedure btFinalizarPedidoClick(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure cdsProdutosBeforeInsert(DataSet: TDataSet);
    procedure btn_CondPagtoClick(Sender: TObject);
    procedure Edit_CliCNPJExit(Sender: TObject);
    procedure bt_SelecionarClick(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure cdsArquivosBeforeInsert(DataSet: TDataSet);
    procedure DBGridArquivoCellClick(Column: TUniDBGridColumn);
    procedure cdsProdutosCalcFields(DataSet: TDataSet);
    procedure Edit_QtdeExit(Sender: TObject);
  private
    procedure CallBack(Sender: TComponent; Result: Integer);

    procedure pNovoPedido(Sender: TComponent; Result: Integer);
    procedure pFinalizarPedido(Sender: TComponent; Result: Integer);

    procedure pDeletarPedido(prPedido : String);

    procedure pBuscaCliente(prCNPJ : string);
    procedure pExcluirArquivo(Sender: TComponent; Result: Integer);
    procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
    procedure pCarregaProdutosBusca;
    function  pCaixaFechada(prProdutoID: string): Double;

    var
    vlItem        : string;
    vlItemArquivo : Integer;
    vlTotal       : Double;

  public
    { Public declarations }
  end;

function Form_Pedido: TForm_Pedido;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_Busca_Cliente, Biblioteca,
  Unit_Busca_CondPagto, Unit_Busca_EndEntrega, ServerModule, Main,
  UFiltrosPedidoOnline;//, Unit_Busca_EndEntrega;

function TForm_Pedido.pCaixaFechada(prProdutoID: string): Double;
var
  vResto     : Integer;
  qAuxiliar  : TIBQuery;
begin
  try
    try
      qAuxiliar := TIBQuery.Create(self);
      with qAuxiliar do
       begin
         Database    := UniMainModule.IBDatabase1;
         Transaction := UniMainModule.IBTransaction1;

         Close;
         SQL.Text := 'select qtde_caixa from tbprodutos';
         SQL.Add(' WHERE produto_id = '''+ prProdutoID +''' ');
         Open;
       end;

      vResto := Edit_Qtde.Value mod qAuxiliar.FieldByName('qtde_caixa').Value;

      Result := vResto;

//      if vResto = 0 then
//        Result := vResto // Caixa Fechada
//      else
//        begin
//          Result := False;
//  //        MessageDlg('A quantidade informada não é caixa fechada.' + #13 +
//  //          'Quantidade fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
//        end;

    finally
      qAuxiliar.Free;
    end;
  except

  end;
end;

function Form_Pedido: TForm_Pedido;
begin
  Result := TForm_Pedido(UniMainModule.GetFormInstance(TForm_Pedido));
end;

procedure TForm_Pedido.btFinalizarPedidoClick(Sender: TObject);
begin
  if Trim(Edit_Cliente.Text) = '' then
    begin
      MessageDlg('Selecione um Cliente.',mtError, [mbOK]);
      Abort;
    end;

  if Trim(Edit_PesqCondPagto.Text) = '' then
    begin
      MessageDlg('Selecione uma Condição de Pagamento.', mtError, [mbOK]);
      Edit_PesqCondPagto.SetFocus;
      Abort;
    end;

  if cdsProdutos.IsEmpty then
    begin
      MessageDlg('Não há produto adicionado.', mtError, [mbOK]);
      Abort;
    end;

  MessageDlg('Deseja finalizar o Pedido?', mtConfirmation, mbYesNo, pFinalizarPedido);
end;

procedure TForm_Pedido.PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
    begin
      // UniMemo1.Visible := True;
      // UniMemo1.Lines.Clear;
      // UniMemo1.Lines.Add(AText);
    end;
end;

procedure TForm_Pedido.btNovoPedidoClick(Sender: TObject);
begin
  messageDLG('Deseja realmente abandonar o pedido atual e iniciar um novo?',
              mtInformation, mbYesNo, pNovoPedido);
end;

procedure TForm_Pedido.btn_CondPagtoClick(Sender: TObject);
begin
  Form_Busca_CondPagto.ShowModal;

  if Form_Busca_CondPagto.ModalResult = mrOk then
    begin
      Edit_PesqCondPagto.Text := Trim(Form_Busca_CondPagto.QR_CONDPAGTOERP_CODIGO.AsString);
      Edit_CondPagto.Text     := Trim(Form_Busca_CondPagto.QR_CONDPAGTOCONDICAO_DESCRICAO.AsString);
    end;
end;

procedure TForm_Pedido.bt_Adicionar_ProdutoClick(Sender: TObject);
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  if Trim(Edit_Produto.Text) <> '' then
    begin
      with vlQuerySIC do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select * from tbprodutos';
          SQL.Add(' where deletado = ''N'' ');
          SQL.Add(' and referencia = ''' + Copy(Trim(Edit_Produto.Text), 1, 8) + ''' ');
          Open;
        end;
    end;

  if ((vlQuerySIC.IsEmpty) or (Trim(Edit_Produto.Text) = '')) then
    begin
      MessageDlgN('Verifique se o produto foi inserido corretamente',mtError, [mbOK]);
      Edit_Produto.SetFocus;
      Abort;
    end;

  FreeAndNil(vlQuerySIC);

  if ((Edit_Qtde.Value <= 0) or (Edit_Preco.Value <= 0)) then
    begin
      MessageDlg('Verifique se foi informado quantidade e preço unitário',mtError, [mbOK]);
      Abort;
    end;

  vlItem := IntToStr(StrToInt(vlItem )+1);

  cdsProdutos.Insert;
  cdsProdutosITEM.AsString         := FormatFloat('000', StrToInt(vlItem));
  cdsProdutosCODIGO.AsString       := Copy(Edit_Produto.Text, 1, 8);
  cdsProdutosDESCRICAO.AsString    := Copy(Edit_Produto.Text, 10, length(Trim(Edit_Produto.Text)));
  cdsProdutosVALOR.AsCurrency      := Edit_Preco.Value;
  cdsProdutosQUANTIDADE.AsCurrency := Edit_Qtde.Value;
  cdsProdutosSUBTOTAL.AsCurrency   := Edit_Preco.Value * Edit_Qtde.Value;
  cdsProdutosDELETADO.AsString     := 'N';
  cdsProdutos.Post;

  vlTotal            := vlTotal + cdsProdutosSUBTOTAL.AsCurrency;
  LabelTotal.Caption := 'Total do Pedido: R$ ' + FormatFloat('###,###,###,###,##0.00',vltotal);

//  pCaixaFechada;

  Edit_Produto.Clear;
  Edit_Qtde.Value := 1;
  Edit_Preco.Value:= 0.0000;

  DBGrid_Produto.Hide;
  Edit_Produto.SetFocus;
end;

procedure TForm_Pedido.bt_PesqClick(Sender: TObject);
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
      //Edit_IE.Text := Trim(Form_Busca_SA1.qSA1A1_NOME.AsString);
      Edit_Cidade.Text   := Trim(Form_Busca_Cliente.QR_CLIENTECIDADE.AsString);
      Edit_UF.Text       := Trim(Form_Busca_Cliente.QR_CLIENTEUF.AsString);
      Edit_Tipo.Text     := Trim(Form_Busca_Cliente.QR_CLIENTETIPOCLIENTE.AsString);
      Edit_Telefone.Text := Trim(Form_Busca_Cliente.QR_CLIENTETELEFONE.AsString);

      UniMainModule.vClienteTotvsID := Trim(Form_Busca_Cliente.QR_CLIENTEERP_CLIENTE.AsString);
    end;
end;

procedure TForm_Pedido.bt_Pesq_EndEntregaClick(Sender: TObject);
begin
  Form_Busca_EndEntrega.ShowModal;

  if Form_Busca_EndEntrega.ModalResult = mrOk then
    begin
      Edit_Codigo_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGAERP_CLIENTE.AsString);
      Edit_Contato_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGANOME.AsString);
      Edit_CNPJ_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGACPFCNPJ.AsString);
      Edit_Endereco_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGAENDERECO.AsString);
      Edit_Bairro_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGABAIRRO.AsString);
      Edit_CEP_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGACEP.AsString);
      //Edit_IE_Entrega.Text := Trim(Form_Busca_EndEntrega.qSA1A1_NOME.AsString);
      Edit_Cidade_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGACIDADE.AsString);
      Edit_UF_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGAUF.AsString);
      Edit_Telefone_Entrega.Text := Trim(Form_Busca_EndEntrega.QR_ENTREGATELEFONE.AsString);
    end;
end;

procedure TForm_Pedido.bt_SelecionarClick(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TForm_Pedido.CallBack(Sender: TComponent; Result: Integer);
begin
  if Result = mrYes then
    begin
      vlTotal := vlTotal - cdsProdutosSUBTOTAL.AsCurrency;
      LabelTotal.Caption := 'Total do Pedido: R$ ' + FormatFloat('###,###,###,###,##0.00',vltotal);

      cdsProdutos.Edit;
      cdsProdutosDELETADO.AsString := 'S';
      cdsProdutos.Post;

      if UniMainModule.vModoPedido = 'Incluindo' then
        begin
          vlItem := '0';

          cdsProdutos.First;
          while not cdsProdutos.Eof do
            begin
              vlItem := IntToStr(StrToInt(vlItem )+1);

              cdsProdutos.Edit;
              cdsProdutosITEM.AsString := FormatFloat('000', StrToInt(vlItem));
              cdsProdutos.Post;

              cdsProdutos.Next;
            end;
        end;

      cdsProdutos.Filtered := False;
      cdsProdutos.Filter   := 'DELETADO = ''N'' ';
      cdsProdutos.Filtered := True;
    end;
end;

procedure TForm_Pedido.cdsArquivosBeforeInsert(DataSet: TDataSet);
begin
  cdsArquivos.IndexFieldNames := 'ITEM';
end;

procedure TForm_Pedido.cdsProdutosCalcFields(DataSet: TDataSet);
begin
  cdsProdutosEXCLUIR.Value := UniMainModule.fImagemGrid('delete.png','Excluir Produto');
end;

procedure TForm_Pedido.cdsProdutosBeforeInsert(DataSet: TDataSet);
begin
  cdsProdutos.IndexFieldNames := 'ITEM';
end;

procedure TForm_Pedido.DBGrid_ProdutoDblClick(Sender: TObject);
begin
  Edit_Produto.Text := Trim(cdsProdutosBuscaERP_PRODUTO.AsString) +
  '-' + Trim(cdsProdutosBuscaPRODUTO.AsString);

  DBGrid_Produto.Hide;
  Edit_Qtde.SetFocus;
end;

procedure TForm_Pedido.Edit_CliCNPJExit(Sender: TObject);
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
      Edit_Cidade.Text   := Trim(qClienteCIDADE.AsString);
      Edit_UF.Text       := Trim(qClienteUF.AsString);
      Edit_Tipo.Text     := Trim(qClienteTIPOCLIENTE.AsString);
      Edit_Telefone.Text := Trim(qClienteTELEFONE.AsString);
      //Edit_Email.Text    := Trim(qClienteEMAIL.AsString);

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

procedure TForm_Pedido.Edit_ProdutoChange(Sender: TObject);
begin
  if Trim(Edit_Produto.Text) <> '' then
    begin
      DBGrid_Produto.Left := 4;
      DBGrid_Produto.Top := 50;
      DBGrid_Produto.Show;

      cdsProdutosBusca.Filter := 'upper(PRODUTO) like ' + UpperCase(QuotedStr('%' + Edit_Produto.Text + '%'));
      cdsProdutosBusca.Filtered := True;
    end
  else
    begin
      DBGrid_Produto.Hide;
      cdsProdutosBusca.Filtered := False;
    end;
end;

procedure TForm_Pedido.Edit_ProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_PRODUTO.Next;

  If Key = VK_UP Then
    QR_PRODUTO.Prior;
end;

procedure TForm_Pedido.Edit_ProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
    DBGrid_ProdutoDblClick(Sender);
end;

procedure TForm_Pedido.Edit_QtdeExit(Sender: TObject);
var
  vResto : Double;
  vPedCaixa : string;
begin
  if Edit_Qtde.Value > 0 then
    begin
      vResto := pCaixaFechada(cdsProdutosBuscaPRODUTO_ID.AsString);

      vPedCaixa := UniMainModule.fRetornaCampoParametro('PED_CAIXA','CONTEUDO');

      if ((vPedCaixa = 'A') or (vPedCaixa = '')) then
        begin
          if vResto <> 0 then
            begin
              MessageDlg('A quantidade informada não é Caixa Fechada.' + #13 +
               'Quantidade Fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
            end;
        end
      else
        begin
          if (vPedCaixa = 'F') then
            begin
              if vResto <> 0 then
                begin
                  MessageDlg('A quantidade informada não é Caixa Fechada. Somente Caixa Fechada está permitido.' + #13 +
                   'Quantidade Fracionada = ' +  FloatToStr(vResto), mtInformation, [mbok]);
                  Edit_Qtde.Clear;
                  Edit_Qtde.SetFocus;
                end;
            end;
        end;
    end;
end;

procedure TForm_Pedido.pBuscaCliente(prCNPJ: string);
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
      SQL.Add(' and c.cpfcnpj  = ''' + prCNPJ + ''' ');

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

procedure TForm_Pedido.pCarregaProdutosBusca;
var
  qProdutos : TIBQuery;
begin
  qProdutos := TIBQuery.Create(Owner);
  with qProdutos do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'SELECT PRODUTO_ID, REFERENCIA, DESCRICAO FROM TBPRODUTOS';
      SQL.Add(' WHERE DELETADO = ''N'' ');
      SQL.Add(' AND   SUBGRUPO_ID IN (''07'',''40'')');
      SQL.Add(' ORDER BY DESCRICAO');
      Open;
    end;

  cdsProdutosBusca.EmptyDataSet;
  cdsProdutosBusca.Close;
  cdsProdutosBusca.Open;

  qProdutos.First;
  while not qProdutos.Eof do
    begin
      cdsProdutosBusca.Insert;
      cdsProdutosBuscaPRODUTO_ID.AsInteger := qProdutos.FieldByName('PRODUTO_ID').AsInteger;
      cdsProdutosBuscaERP_PRODUTO.AsString := qProdutos.FieldByName('REFERENCIA').AsString;
      cdsProdutosBuscaPRODUTO.AsString     := qProdutos.FieldByName('DESCRICAO').AsString;
      cdsProdutosBusca.Post;

      qProdutos.Next;
    end;

  FreeAndNil(qProdutos);
end;

procedure TForm_Pedido.pDeletarPedido(prPedido: String);
var
  vlQuery : TIBQuery;
begin
  vlQuery := TIBQuery.Create(Owner);
  with vlQuery do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;
      Close;

      SQL.Text := 'update tbpedido set';
      SQL.Add(' deletado = ''S'' ');
      SQL.Add(' where deletado = ''N'' ');
      SQL.Add(' and pedido_id = ''' + prPedido + ''' ');

      ExecSQL;
      Transaction.CommitRetaining;
    end;

  with vlQuery do
    begin
      Close;

      SQL.Text := 'update tbpedido_item set';
      SQL.Add(' deletado = ''S'' ');
      SQL.Add(' where deletado = ''N'' ');
      SQL.Add(' and pedido_id = ''' + prPedido + ''' ');

      ExecSQL;
      Transaction.CommitRetaining;
    end;

  vlQuery.Free;
end;

procedure TForm_Pedido.pExcluirArquivo(Sender: TComponent; Result: Integer);
begin
  if Result = mrYes then
    begin
      cdsArquivos.Edit;
      cdsArquivosDELETADO.AsString := 'S';
      cdsArquivos.Post;

      cdsArquivos.Filtered := False;
      cdsArquivos.Filter   := 'DELETADO = ''N'' ';
      cdsArquivos.Filtered := True;

      //cdsArquivos.Delete;
      cdsArquivos.Close;
      cdsArquivos.Open;
    end;
end;

procedure TForm_Pedido.pFinalizarPedido(Sender: TComponent; Result: Integer);
var
  i             : integer;
  FileStream    : TFileStream;
  BlobStream    : TStream;
  vFiltros      : TFiltrosPedidoOnline;
begin
  if Result = mrYes then
    begin
      try
        DS_Pedidos.Close;
        DS_Pedidos.SelectSQL.Text := 'SELECT * FROM TBPEDIDO WHERE DELETADO = ''N'' ';
        DS_Pedidos.SelectSQL.Add(' and pedido_id = ''' + UniMainModule.vPedido_ID + ''' ');

        // Prompt('SQL', DS_Pedidos.SelectSQL.Text, mtInformation, mbOKCancel, PromptCallBack);

        DS_Pedidos.Open;

        if DS_Pedidos.IsEmpty then
          begin
            DS_Pedidos.Insert; // Inclui Pedido
            DS_PedidosPEDIDO_ID.AsString     := DS_PedidosPEDIDO_ID.AsString + UniMainModule.vDataware;
            DS_PedidosDATAWARE.AsString      := UniMainModule.vDataware;
            DS_PedidosDATA_INC.AsDateTime    := Now;
            DS_PedidosUSUARIO_I.AsString     := UniMainModule.vUsuarioID;
            DS_PedidosUSUARIONOME_I.AsString := UniMainModule.vUsuario;

            DS_PedidosID.AsInteger           := UniMainModule.fRetornaMaxPedidoUsuario(UniMainModule.vUsuarioID);
            DS_PedidosANO.AsString           := FormatDateTime('YYYY',Now);

            DS_PedidosCODIGO.AsString        := 'P' + PreencherZero(StrToInt(UniMainModule.vUsuarioID),'0',4)+
                                                '-' + PreencherZero(UniMainModule.fRetornaMaxPedidoUsuario(UniMainModule.vUsuarioID),'0',6);
          end
        else
          begin
            if UniMainModule.fRetornaCampoTabela('STATUS','TBPEDIDO','PEDIDO_ID',DS_PedidosPEDIDO_ID.AsString) <> 'Aberto' then
              begin
                MessageDlgN('Alteração Bloqueada. Pedido já Processado. Solicite ao Comercial', mtInformation, [mbOK]);
                Abort;
              end;

            DS_Pedidos.Edit; // Altera Pedido
            DS_PedidosDATA_ALT.AsDateTime     := Now;
            DS_PedidosUSUARIO_A.AsString      := UniMainModule.vUsuarioID;
            DS_PedidosUSUARIONOME_A.AsString  := UniMainModule.vUsuario;
          end;


        if UniMainModule.vVendedorID = '' then
          begin
            DS_PedidosERP_VENDEDOR.AsString           := '000017';
            DS_PedidosERP_VENDEDOR_NOME.AsString      := 'DEPARTAMENTO COMERCIAL';
          end
        else
          begin
            DS_PedidosERP_VENDEDOR.AsString           := UniMainModule.vVendedorID;
            DS_PedidosERP_VENDEDOR_NOME.AsString      := UniMainModule.vVendedorNome;
          end;

        DS_PedidosERP_REPRESENTANTE.AsString      := UniMainModule.vRepresentanteID;
        DS_PedidosERP_REPRESENTANTE_NOME.AsString := UniMainModule.vRepresentanteNome;

        //Cliente
        DS_PedidosEMISSAO.AsDateTime        := Now;
        DS_PedidosHORA.AsDateTime           := Now;
        DS_PedidosCLI_CPFCNPJ.AsString      := Edit_CliCNPJ.Text;
        DS_PedidosCLI_NOME.AsString         := Edit_Cliente.Text;
        DS_PedidosCLI_ENDERECO.AsString     := Edit_Endereco.Text;
        DS_PedidosCLI_BAIRRO.AsString       := Edit_Bairro.Text;
        DS_PedidosERP_CLIENTE.AsString      := Edit_Codigo.Text;
        DS_PedidosPESSOA_ID.AsString        := '';
        DS_PedidosCLI_CEP.AsString          := Edit_CEP.Text;
        DS_PedidosCLI_RGCGF.AsString        := Edit_IE.Text;
        DS_PedidosCLI_CIDADE.AsString       := Edit_Cidade.Text;
        DS_PedidosCLI_UF.AsString           := Edit_UF.Text;
        DS_PedidosCLI_TIPO.AsString         := Edit_Tipo.Text;
        DS_PedidosCLI_TELEFONE.AsString     := Edit_Telefone.Text;
        DS_PedidosPROCESSO.AsString         := Edit_Processo.Text;
        DS_PedidosEMPENHO.AsString          := Edit_Empenho.Text;
        DS_PedidosEMPENHO_ANO.AsString      := ComboBox_Empenho.Text;
        DS_PedidosEMPENHO_COMPLETO.AsString := Edit_Empenho.Text+'/'+ComboBox_Empenho.Text;
        DS_PedidosOBS.AsString              := Memo_OBS.Text;

        //Entrega
        DS_PedidosENTREGA_PEDIDO.AsDateTime := dtp_Entregar.DateTime;
        DS_PedidosENT_CPFCNPJ.AsString      := Edit_CNPJ_Entrega.Text;
        DS_PedidosENT_NOME.AsString         := Edit_Contato_Entrega.Text;
        DS_PedidosENT_ENDERECO.AsString     := Edit_Endereco_Entrega.Text;
        DS_PedidosENT_BAIRRO.AsString       := Edit_Bairro_Entrega.Text;
        DS_PedidosERP_ENTREGA.AsString      := Edit_Codigo_Entrega.Text;
        DS_PedidosENT_CEP.AsString          := Edit_CEP_Entrega.Text;
        DS_PedidosENT_CIDADE.AsString       := Edit_Cidade_Entrega.Text;
        DS_PedidosENT_UF.AsString           := Edit_UF_Entrega.Text;
        DS_PedidosENT_TELEFONE.AsString     := Edit_Telefone_Entrega.Text;

        DS_PedidosERP_CONDPAGTO.AsString    := Trim(Edit_PesqCondPagto.Text);
        DS_PedidosCONDPAGTO_ID.AsString     := '';
        DS_PedidosCONDPAGTO.AsString        := Trim(Edit_CondPagto.Text);

        DS_PedidosVALOR_PEDIDO.AsFloat      := vlTotal;

        DS_PedidosDELETADO.AsString         := 'N';
        DS_PedidosINTEGRADO.AsString        := 'N';
        DS_PedidosSTATUS.AsString           := 'Aberto';
        DS_PedidosSITUACAO.AsString         := 'Aberto';

        DS_Pedidos.Post;
        DS_Pedidos.Transaction.CommitRetaining;

        cdsProdutos.Filtered := False;
        cdsProdutos.First;
        while not cdsProdutos.Eof do
          begin
            DS_PedidosItem.Close;
            DS_PedidosItem.SelectSQL.Clear;
            DS_PedidosItem.SelectSQL.Text := 'SELECT * FROM TBPEDIDO_ITEM WHERE DELETADO = ''N'' ';
            DS_PedidosItem.SelectSQL.Add(' and pedido_id     = ''' + UniMainModule.vPedido_ID + ''' ');

            if Trim(cdsProdutosPEDIDOITEM_ID.AsString) <> '' then
              DS_PedidosItem.SelectSQL.Add(' and pedidoitem_id = ''' + cdsProdutosPEDIDOITEM_ID.AsString + ''' ')
            else
              DS_PedidosItem.SelectSQL.Add(' and pedidoitem_id = 0');

            DS_PedidosItem.Open;
            if DS_PedidosItem.IsEmpty then
              begin
                DS_PedidosItem.Insert;
                DS_PedidosItemPEDIDOITEM_ID.AsString  := DS_PedidosItemPEDIDOITEM_ID.AsString + UniMainModule.vDataware;
                DS_PedidosItemPEDIDO_ID.AsString      := DS_PedidosPEDIDO_ID.AsString;
                DS_PedidosItemDATAWARE.AsString       := UniMainModule.vDataware;
                DS_PedidosItemDATA_INC.AsDateTime     := DS_PedidosDATA_INC.AsDateTime;
                DS_PedidosItemUSUARIO_I.AsString      := DS_PedidosUSUARIO_I.AsString;
                DS_PedidosItemUSUARIONOME_I.AsString  := DS_PedidosUSUARIONOME_I.AsString;
                DS_PedidosItemDELETADO.AsString       := cdsProdutosDELETADO.AsString;
              end
            else
              begin
                DS_PedidosItem.Edit;

                if cdsProdutosDELETADO.AsString = 'N' then
                  begin
                    DS_PedidosItemDATA_ALT.AsDateTime     := Now;
                    DS_PedidosItemUSUARIO_A.AsString      := UniMainModule.vUsuarioID;
                    DS_PedidosItemUSUARIONOME_A.AsString  := UniMainModule.vUsuario;
                  end
                else
                 begin
                   DS_PedidosItemDATA_DEL.AsDateTime     := Now;
                   DS_PedidosItemUSUARIO_D.AsString      := UniMainModule.vUsuarioID;
                   DS_PedidosItemUSUARIONOME_D.AsString  := UniMainModule.vUsuario;
                   DS_PedidosItemDELETADO.AsString       := 'S';
                 end;
              end;

            DS_PedidosItemPRODUTO_ID.AsString     := '';
            DS_PedidosItemITEM.AsString           := cdsProdutosITEM.AsString;
            DS_PedidosItemERP_PRODUTO.AsString    := cdsProdutosCODIGO.AsString;
            DS_PedidosItemPRODUTO.AsString        := cdsProdutosDESCRICAO.AsString;
            DS_PedidosItemQUANTIDADE.AsString     := cdsProdutosQUANTIDADE.AsString;
            DS_PedidosItemPRECO.AsString          := cdsProdutosVALOR.AsString;
            DS_PedidosItemSUBTOTAL.AsString       := cdsProdutosSUBTOTAL.AsString;
            DS_PedidosItemPEDIDO_CODIGO.AsString  := DS_PedidosCODIGO.AsString;
            DS_PedidosItemINTEGRADO.AsString      := 'N';

            DS_PedidosItem.Post;
            DS_PedidosItem.Transaction.CommitRetaining;

            cdsProdutos.Next;
          end;

      cdsArquivos.Filtered := False;
      cdsArquivos.Filter   := 'DELETADO = ''N'' ';
      cdsArquivos.Filtered := True;

      cdsArquivos.First;
      while not cdsArquivos.Eof do
        begin
          DS_Doc.Close;
          DS_Doc.SelectSQl.Text := 'select doc_id, pedido_id, pedido_codigo, nome_arquivo, tamanho,';
          DS_Doc.SelectSQL.Add(' extensao, item, caminho, usuario_i, usuarionome_i, data_inc,');
          DS_Doc.SelectSQL.Add(' deletado, arquivo, dataware, documento, usuario_d,');
          DS_Doc.SelectSQL.Add(' usuarionome_d, data_del, usuario_a, usuarionome_a, data_alt');
          DS_Doc.SelectSQL.Add(' from tbdoc');

          DS_Doc.SelectSQL.Add(' where doc_id = ''' + cdsArquivosDOC_ID.AsString + ''' ');

          DS_Doc.Open;

          if DS_Doc.IsEmpty then
            begin
              DS_Doc.Insert;

              FileStream := TFileStream.Create(cdsArquivosCAMINHO.AsString + cdsArquivosNOME_ARQUIVO.AsString + cdsArquivosEXTENSAO.AsString, fmOpenRead, fmShareDenyWrite);
              BlobStream := DS_DOC.CreateBlobStream(DS_DOCARQUIVO, bmWrite);

              BlobStream.CopyFrom(FileStream, FileStream.Size);

              DS_DocDOC_ID.AsString        := DS_DocDOC_ID.AsString + UniMainModule.vDataware;
              DS_DocDATAWARE.AsString      := UniMainModule.vDataware;
              DS_DOCUSUARIO_I.AsString     := UniMainModule.vUsuarioID;
              DS_DocUSUARIONOME_I.AsString := UniMainModule.vUsuario;
              DS_DOCDATA_INC.AsDateTime    := Now;
              DS_DocDELETADO.AsString      := 'N';
            end
          else
            begin
              DS_Doc.Edit;

              if cdsArquivosDELETADO.AsString = 'N' then
                begin
                  DS_DocUSUARIO_A.AsString     := UniMainModule.vUsuarioID;
                  DS_DocUSUARIONOME_A.AsString := UniMainModule.vUsuario;
                  DS_DocDATA_ALT.AsDateTime    := Now;
                end
              else
                begin
                  DS_DocUSUARIO_D.AsString     := UniMainModule.vUsuarioID;
                  DS_DocUSUARIONOME_D.AsString := UniMainModule.vUsuario;
                  DS_DocDATA_DEL.AsDateTime    := Now;
                  DS_DocDELETADO.AsString      := 'S';
                end;
            end;

          DS_DocPEDIDO_CODIGO.AsString := DS_PedidosCODIGO.AsString;
          DS_DocPEDIDO_ID.AsString     := DS_PedidosPEDIDO_ID.AsString;

          DS_DocNOME_ARQUIVO.AsString  := Copy(cdsArquivosNOME_ARQUIVO.AsString,1,60);
          DS_DocEXTENSAO.AsString      := cdsArquivosEXTENSAO.AsString;
          DS_DOCNOME_ARQUIVO.AsString  := StringReplace(DS_DOCNOME_ARQUIVO.AsString,DS_DOCEXTENSAO.AsString,'',[rfReplaceAll, rfIgnoreCase]);

          DS_DocCAMINHO.AsString       := cdsArquivosCAMINHO.AsString;
          DS_DocTAMANHO.Asinteger      := cdsArquivosTAMANHO.AsInteger;
          DS_DocITEM.AsString          := cdsArquivosITEM.AsString;
          DS_DocCAMINHO.AsString       := cdsArquivosCAMINHO.AsString;

          DS_Doc.Post;
          DS_Doc.Transaction.CommitRetaining;

          cdsArquivos.Next;
        end;

        FreeAndNil(FileStream);
        FreeAndNil(BlobStream);

        for i := 0 to ComponentCount -1 do
          if Components[i] is TUniEdit then
            TUniEdit(Components[i]).Clear;

        ComboBox_Empenho.Text := '';

        Memo_OBS.Clear;

        LabelTotal.Caption := 'Total do Pedido: R$ 0,00';

        vlTotal       := 0;
        vlItem        := '0';
        vlItemArquivo := 0;

        PageControl_Orcamento.ActivePageIndex := 0;

        cdsProdutos.EmptyDataSet;
        cdsProdutos.Close;
        cdsProdutos.Open;

        cdsArquivos.EmptyDataSet;
        cdsArquivos.Close;
        cdsArquivos.Open;

        if UniMainModule.vModoPedido = 'Incluindo' then
          MessageDlgN('Pedido Gerado com Sucesso!', mtInformation, [mbOK])
        else
          MessageDlgN('Pedido Alterado com Sucesso!', mtInformation, [mbOK]);

        try
          vFiltros             := TFiltrosPedidoOnline.Create;
          vFiltros.PedidoID    := DS_PedidosPEDIDO_ID.AsString;
          vFiltros.ErpVendedor := UniMainModule.vVendedorID;

          UniMainModule.pGeraRelatorioPedido(vFiltros, 'Individual', 'Detalhado');
        finally
          vFiltros.Free;
        end;

        if Trim(vEmailParaPedido) <> '' then
          begin
            UnimainModule.fEnviaEmailPedido('Pedido Farmace [' + UniMainModule.qPedido.FieldByName('PEDIDO_ID').AsString + ']' ,
              vEmailParaPedido,UniMainModule.frxPDFExport1.FileName);
          end;

        if Trim(UniMainModule.vEmailUsuario) <> '' then
          begin
            UnimainModule.fEnviaEmailPedidoUsuario('Pedido Farmace [' + UniMainModule.qPedido.FieldByName('PEDIDO_ID').AsString + ']' ,
              UniMainModule.vEmailUsuario,UniMainModule.frxPDFExport1.FileName);
          end;

        if UniMainModule.vModoPedido = 'Alterando' then
          begin
            UniMainModule.vModoPedido := 'Incluindo';
            UniMainModule.vPedido_ID := '0';
            Form_Pedido.OnShow(Sender);
          end;

      except on e:Exception do
        begin
          if UniMainModule.vModoPedido = 'Incluindo' then
            begin
              MessageDlgN('Erro ao gerar Pedido: ' + e.Message, mtError, [mbOK]);
              pDeletarPedido(DS_PedidosPEDIDO_ID.AsString);
            end
          else
            MessageDlgN('Erro ao alterar Pedido: ' + e.Message, mtError, [mbOK]);
        end;
      end;
    end;
end;

procedure TForm_Pedido.pNovoPedido;
var
  i : integer;
begin
  if Result = mrYes then
    begin
      UniMainModule.vPedido_ID := '0';

      for i := 0 to ComponentCount -1 do
        if Components[i] is TUniEdit then
          TUniEdit(Components[i]).Clear;

      Memo_OBS.Clear;

      LabelTotal.Caption := 'Total do Pedido: R$ 0,00';

      vlTotal       := 0;
      vlItem        := '0';
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

procedure TForm_Pedido.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    MessageDlg(pchar('Deseja realmente excluir o Produto: ' + cdsProdutosDESCRICAO.AsString +' ?'), mtConfirmation, mbYesNo, CallBack);
end;

procedure TForm_Pedido.DBGridArquivoCellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    begin
      if not cdsArquivos.IsEmpty then
        MessageDlg('Deseja realmente excluir o arquivo: ' + cdsArquivosNOME_ARQUIVO.AsString + ' ?', mtConfirmation, mbYesNo, pExcluirArquivo);
    end;
end;

procedure TForm_Pedido.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
var
  DestName   : string;
  DestFolder : string;
  BlobStream : TStream;
  FileStream : TFileStream;
begin
  DestFolder := UniServerModule.StartPath + 'files\' + UniMainModule.vUsuario + '\';

  if not DirectoryExists(DestFolder) then
    ForceDirectories(DestFolder);

  vlItemArquivo := vlItemArquivo + 1;

  DestName := DestFolder + ExtractFileName(UniFileUpload1.FileName);
  CopyFile(PChar(AStream.FileName), PChar(DestName), False);

  try
    cdsArquivos.Insert;

    Filestream := TFileStream.Create(destname, fmOpenRead, fmShareDenyWrite);
    BlobStream := cdsArquivos.CreateBlobStream(cdsArquivosARQUIVO, bmWrite);

    BlobStream.CopyFrom(FileStream, FileStream.Size);

    cdsArquivosDOC_ID.AsInteger      := 0;
    cdsArquivosITEM.AsString         := FormatFloat('000', vlItemArquivo);
    cdsArquivosNOME_ARQUIVO.AsString := ExtractFileName(UniFileUpload1.FileName);
    cdsArquivosEXTENSAO.AsString     := ExtractFileExt(UniFileUpload1.FileName);
    cdsArquivosNOME_ARQUIVO.AsString := StringReplace(cdsArquivosNOME_ARQUIVO.AsString,cdsArquivosEXTENSAO.AsString,'',[rfReplaceAll, rfIgnoreCase]);
    cdsArquivosTAMANHO.AsString      := IntToStr(FileStream.Size);
    cdsArquivosCAMINHO.AsString      := DestFolder;
    cdsArquivosDELETADO.AsString     := 'N';

    cdsArquivosEXCLUIR.AsString  := UniMainModule.fImagemGrid('delete.png','Excluir Anexo');
    cdsArquivosIMG.AsString      := UniMainModule.fImagemTipoArquivo(cdsArquivosEXTENSAO.AsString);

    cdsArquivos.Post;

    cdsArquivos.Filtered := False;
    cdsArquivos.Filter   := 'DELETADO = ''N'' ';
    cdsArquivos.Filtered := True;
  finally
    FreeAndNil(FileStream);
    FreeAndNil(BlobStream);
  end;
end;

procedure TForm_Pedido.UniFormShow(Sender: TObject);
var
  vAnoAtual, I : integer;
begin
  pCarregaProdutosBusca;

  cdsArquivos.EmptyDataSet;
  cdsArquivos.Close;
  cdsArquivos.Open;

  cdsProdutos.EmptyDataSet;
  cdsProdutos.Close;
  cdsProdutos.Open;

  if UniMainModule.vModoPedido = 'Incluindo' then
    begin
      btFinalizarPedido.Caption := 'Finalizar Pedido';

      dtp_Entregar.Text := '';
      vlItem            := '0';
      vlTotal           := 0;
      vlItemArquivo     := 0;

      vAnoAtual := StrToInt(FormatDateTime('yyyy', Date ));
      ComboBox_Empenho.Clear;

      for I := 0 to 5 do
        begin
          ComboBox_Empenho.Items.Add(IntToStr(vAnoAtual-i))
        end;
    end;

  if UniMainModule.vModoPedido = 'Alterando' then
    begin
      btFinalizarPedido.Caption := 'Alterar Pedido';

      DS_Pedidos.Close;
      DS_Pedidos.SelectSQL.Text := 'SELECT * FROM TBPEDIDO WHERE PEDIDO_ID = ''' + UniMainModule.vPedido_ID + ''' ';
      DS_Pedidos.Open;

      //Cliente
      Edit_CliCNPJ.Text     := DS_PedidosCLI_CPFCNPJ.AsString;
      Edit_Cliente.Text     := DS_PedidosCLI_NOME.AsString;
      Edit_Endereco.Text    := DS_PedidosCLI_ENDERECO.AsString;
      Edit_Bairro.Text      := DS_PedidosCLI_BAIRRO.AsString;
      Edit_Codigo.Text      := DS_PedidosERP_CLIENTE.AsString;
      Edit_CEP.Text         := DS_PedidosCLI_CEP.AsString;
      Edit_IE.Text          := DS_PedidosCLI_RGCGF.AsString;
      Edit_Cidade.Text      := DS_PedidosCLI_CIDADE.AsString;
      Edit_UF.Text          := DS_PedidosCLI_UF.AsString;
      Edit_Tipo.Text        := DS_PedidosCLI_TIPO.AsString;
      Edit_Telefone.Text    := DS_PedidosCLI_TELEFONE.AsString;
      Edit_Processo.Text    := DS_PedidosPROCESSO.AsString;
      Edit_Empenho.Text     := DS_PedidosEMPENHO.AsString;
      ComboBox_Empenho.Text := DS_PedidosEMPENHO_ANO.AsString;
      Memo_OBS.Text         := DS_PedidosOBS.AsString;

      //Entrega
      dtp_Entregar.DateTime      := DS_PedidosENTREGA_PEDIDO.AsDateTime;
      Edit_CNPJ_Entrega.Text     := DS_PedidosENT_CPFCNPJ.AsString;
      Edit_Contato_Entrega.Text  := DS_PedidosENT_NOME.AsString;
      Edit_Endereco_Entrega.Text := DS_PedidosENT_ENDERECO.AsString;
      Edit_Bairro_Entrega.Text   := DS_PedidosENT_BAIRRO.AsString;
      Edit_Codigo_Entrega.Text   := DS_PedidosERP_ENTREGA.AsString;
      Edit_CEP_Entrega.Text      := DS_PedidosENT_CEP.AsString;
      Edit_Cidade_Entrega.Text   := DS_PedidosENT_CIDADE.AsString;
      Edit_UF_Entrega.Text       := DS_PedidosENT_UF.AsString;
      Edit_Telefone_Entrega.Text := DS_PedidosENT_TELEFONE.AsString;

      Edit_PesqCondPagto.Text    := DS_PedidosERP_CONDPAGTO.AsString;
      Edit_CondPagto.Text        := DS_PedidosCONDPAGTO.AsString;

      DS_PedidosItem.Close;
      DS_PedidosItem.SelectSQL.Text := 'SELECT * FROM TBPEDIDO_ITEM WHERE DELETADO = ''N'' AND PEDIDO_ID = ''' + UniMainModule.vPedido_ID + ''' ORDER BY ITEM';
      DS_PedidosItem.Open;

      DS_PedidosItem.First;
      while not DS_PedidosItem.Eof do
        begin
          cdsProdutos.Insert;
          cdsProdutosPEDIDOITEM_ID.AsString := DS_PedidosItemPEDIDOITEM_ID.AsString;
          cdsProdutosITEM.AsString          := DS_PedidosItemITEM.AsString;
          cdsProdutosCODIGO.AsString        := DS_PedidosItemERP_PRODUTO.AsString;
          cdsProdutosDESCRICAO.AsString     := DS_PedidosItemPRODUTO.AsString;

          cdsProdutosVALOR.AsCurrency       := DS_PedidosItemPRECO.AsCurrency;
          cdsProdutosQUANTIDADE.AsCurrency  := DS_PedidosItemQUANTIDADE.AsCurrency;
          cdsProdutosSUBTOTAL.AsCurrency    := DS_PedidosItemSUBTOTAL.AsCurrency;
          cdsProdutosDELETADO.AsString      := DS_PedidosItemDELETADO.AsString;
          cdsProdutos.Post;

          vlItem  := DS_PedidosItemITEM.AsString;

          DS_PedidosItem.Next;
        end;

      vlTotal            := DS_PedidosVALOR_PEDIDO.AsCurrency;
      LabelTotal.Caption := 'Total do Pedido: R$ ' + FormatFloat('###,###,###,###,##0.00', vlTotal);
      cdsProdutos.First;

      DS_Doc.Close;
      DS_Doc.SelectSQL.Clear;
      DS_Doc.SelectSQl.Text := 'select doc_id, pedido_id, pedido_codigo, nome_arquivo, tamanho,';
      DS_Doc.SelectSQL.Add(' extensao, item, caminho, usuario_i, usuarionome_i, data_inc,');
      DS_Doc.SelectSQL.Add(' deletado, arquivo, dataware, documento, usuario_d,');
      DS_Doc.SelectSQL.Add(' usuarionome_d, data_del, usuario_a, usuarionome_a, data_alt');
      DS_Doc.SelectSQL.Add(' from tbdoc');
      DS_Doc.SelectSQL.Add(' where deletado = ''N'' and pedido_id = ''' + UniMainModule.vPedido_ID + ''' ');
      DS_Doc.SelectSQL.Add(' order by item');

      // Prompt('SQL', DS_Doc.SelectSQL.Text, mtInformation, mbOKCancel, PromptCallBack);

      DS_Doc.Open;

      DS_Doc.First;
      while not DS_Doc.Eof do
        begin
          cdsArquivos.Insert;
          cdsArquivosDOC_ID.AsString       := DS_Doc.FieldByName('DOC_ID').AsString;
          cdsArquivosITEM.AsString         := DS_Doc.FieldByName('ITEM').AsString;
          cdsArquivosNOME_ARQUIVO.AsString := DS_Doc.FieldByName('NOME_ARQUIVO').AsString;
          cdsArquivosEXTENSAO.AsString     := DS_Doc.FieldByName('EXTENSAO').AsString;
          cdsArquivosTAMANHO.AsString      := DS_Doc.FieldByName('TAMANHO').AsString;
          cdsArquivosCAMINHO.AsString      := DS_Doc.FieldByName('CAMINHO').AsString;
          cdsArquivosDELETADO.AsString     := DS_Doc.FieldByName('DELETADO').AsString;

          cdsArquivosEXCLUIR.AsString      := UniMainModule.fImagemGrid('delete.png','Excluir Anexo');
          cdsArquivosIMG.AsString          := UniMainModule.fImagemTipoArquivo(cdsArquivosEXTENSAO.AsString);

          cdsArquivos.Post;
          vlItemArquivo := DS_Doc.FieldByName('ITEM').AsInteger;

          DS_Doc.Next;
        end;
      cdsArquivos.First;

      cdsProdutos.Filtered := False;
      cdsProdutos.Filter   := 'DELETADO = ''N'' ';
      cdsProdutos.Filtered := True;
    end;
end;

end.
