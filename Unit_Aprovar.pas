unit Unit_Aprovar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery, Datasnap.DBClient, uniMultiItem, uniComboBox,
  uniMemo, uniScreenMask, uniBitBtn, uniDBEdit, uniDateTimePicker,
  uniDBDateTimePicker, uniPageControl, uniImageList, Vcl.Imaging.pngimage,
  uniImage, dxGDIPlusClasses;

type
  TForm_Aprovar = class(TUniForm)
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    Panel_Top: TUniPanel;
    cdsItensOrcamento: TClientDataSet;
    cdsItensOrcamentoITEM: TStringField;
    cdsItensOrcamentoPRODUTO: TStringField;
    cdsItensOrcamentoQUANTIDADE: TFloatField;
    cdsItensOrcamentoPRECO: TFloatField;
    cdsItensOrcamentoTOTAL: TFloatField;
    cdsItensOrcamentoPRECO_A: TFloatField;
    cdsItensOrcamentoTOTAL_A: TFloatField;
    qOrcamentoItem: TIBQuery;
    ComboBoxStatus: TUniComboBox;
    qOrcamentoItemITEM: TIBStringField;
    qOrcamentoItemPRODUTO: TIBStringField;
    qOrcamentoItemQUANTIDADE: TFloatField;
    UniHiddenPanel1: TUniHiddenPanel;
    Edit_Preco: TUniNumberEdit;
    DataSource1: TDataSource;
    cdsItensOrcamentoSHIFT: TBooleanField;
    UniLabel2: TUniLabel;
    btn_Aplicar: TUniButton;
    qUpdate: TIBQuery;
    cdsItensOrcamentoORCAMENTO_ID: TIntegerField;
    qOrcamentoItemORCAMENTO_ID: TIntegerField;
    MemoOBS: TUniMemo;
    UniLabel3: TUniLabel;
    qOrcamentoItemVALOR: TFloatField;
    qOrcamentoItemSUBTOTAL: TFloatField;
    Edit_Quantidade: TUniNumberEdit;
    qOrcamentoItemQUANTIDADE_FINAL: TFloatField;
    cdsItensOrcamentoQUANTIDADE_A: TFloatField;
    qOrcamentoItemVALOR_FINAL: TFloatField;
    DS_OrcamentoStatus: TIBDataSet;
    DS_OrcamentoStatusORCAMENTOSTATUS_ID: TIntegerField;
    DS_OrcamentoStatusORCAMENTO_ID: TIntegerField;
    DS_OrcamentoStatusSTATUS: TIBStringField;
    DS_Pedido: TIBDataSet;
    qAuxiliar: TIBQuery;
    DS_PedidoItem: TIBDataSet;
    DS_PedidoItemPEDIDOITEM_ID: TIntegerField;
    DS_PedidoItemPEDIDO_ID: TIntegerField;
    DS_PedidoItemPRODUTO_ID: TIntegerField;
    DS_PedidoItemORCAMENTO_ID: TIntegerField;
    DS_PedidoItemORCAMENTOITEM_ID: TIntegerField;
    DS_PedidoItemITEM: TIBStringField;
    DS_PedidoItemERP_PRODUTO: TIntegerField;
    DS_PedidoItemPRODUTO: TIBStringField;
    DS_PedidoItemQUANTIDADE: TIntegerField;
    DS_PedidoItemPRECO: TFloatField;
    DS_PedidoItemDATA: TDateField;
    DS_PedidoItemSUBTOTAL: TIBBCDField;
    DS_PedidoItemPESSOA_ID: TIntegerField;
    DS_PedidoItemUSUARIO_ID: TIntegerField;
    DS_PedidoItemERP_REPRESENTANTE: TIBStringField;
    DS_PedidoItemERP_REPRESENTANTE_NOME: TIBStringField;
    DS_PedidoItemERP_VENDEDOR: TIBStringField;
    DS_PedidoItemERP_VENDEDOR_NOME: TIBStringField;
    DS_PedidoPEDIDO_ID: TIntegerField;
    DS_PedidoPEDIDO_NUM: TIBStringField;
    DS_PedidoORCAMENTO_ID: TIntegerField;
    DS_PedidoEMISSAO: TDateField;
    DS_PedidoVALIDADE: TDateField;
    DS_PedidoHORA: TTimeField;
    DS_PedidoVR_CONTABIL: TFloatField;
    DS_PedidoPESSOA_ID: TIntegerField;
    DS_PedidoERP_CODIGO: TIBStringField;
    DS_PedidoCLI_NOME: TIBStringField;
    DS_PedidoCLI_ENDERECO: TIBStringField;
    DS_PedidoCLI_BAIRRO: TIBStringField;
    DS_PedidoCLI_CIDADE: TIBStringField;
    DS_PedidoCLI_UF: TIBStringField;
    DS_PedidoCLI_CEP: TIBStringField;
    DS_PedidoCLI_CPFCNPJ: TIBStringField;
    DS_PedidoCLI_RGCGF: TIBStringField;
    DS_PedidoCLI_TELEFONE: TIBStringField;
    DS_PedidoCLI_TIPO: TIBStringField;
    DS_PedidoUSUARIO_ID: TIntegerField;
    DS_PedidoPROCESSO: TIBStringField;
    DS_PedidoEMPENHO: TIBStringField;
    DS_PedidoOBS: TWideMemoField;
    DS_PedidoENT_NOME: TIBStringField;
    DS_PedidoENT_ENDERECO: TIBStringField;
    DS_PedidoENT_BAIRRO: TIBStringField;
    DS_PedidoENT_CIDADE: TIBStringField;
    DS_PedidoENT_UF: TIBStringField;
    DS_PedidoENT_CEP: TIBStringField;
    DS_PedidoENT_TELEFONE: TIBStringField;
    DS_PedidoERP_CONDPAGTO: TIntegerField;
    DS_PedidoCONDPAGTO_ID: TIntegerField;
    DS_PedidoCONDPAGTO: TIBStringField;
    DS_PedidoMEIOPAGTO: TIBStringField;
    DS_PedidoIMPRESSO: TIBStringField;
    DS_PedidoSITUACAO: TIBStringField;
    DS_PedidoDATA_SITUACAO: TDateField;
    DS_PedidoHPRINT: TTimeField;
    DS_PedidoDATA_INC: TTimeField;
    DS_PedidoUSUARIO_I: TIntegerField;
    DS_PedidoUSUARIONOME_I: TIBStringField;
    DS_PedidoDATA_ALT: TTimeField;
    DS_PedidoUSUARIO_A: TIntegerField;
    DS_PedidoUSUARIONOME_A: TIBStringField;
    DS_PedidoDATA_DEL: TTimeField;
    DS_PedidoUSUARIO_D: TIntegerField;
    DS_PedidoUSUARIONOME_D: TIBStringField;
    DS_PedidoERP_REPRESENTANTE: TIBStringField;
    DS_PedidoERP_REPRESENTANTE_NOME: TIBStringField;
    DS_PedidoERP_VENDEDOR: TIBStringField;
    DS_PedidoERP_VENDEDOR_NOME: TIBStringField;
    cdsItensOrcamentoSTATUS: TStringField;
    cdsItensOrcamentoULTIMO_PRECO: TFloatField;
    qOrcamentoItemSTATUS: TIBStringField;
    cdsItensOrcamentoUSUARIO_EMAIL: TStringField;
    qOrcamentoItemUSUARIO_EMAIL: TIBStringField;
    cdsItensOrcamentoEMAIL_CLIENTE: TStringField;
    qOrcamentoItemEMAIL_CLIENTE: TIBStringField;
    qOrcamentoItemERP_PRODUTO: TIBStringField;
    qOrcamentoItemERP_CODIGO: TIBStringField;
    MemoOBS_Privada: TUniMemo;
    UniLabel4: TUniLabel;
    Panel_Bottom: TUniPanel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel33: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel14: TUniLabel;
    Edit_CliCNPJ: TUniDBEdit;
    Edit_Cliente: TUniDBEdit;
    Edit_Endereco: TUniDBEdit;
    Edit_Bairro: TUniDBEdit;
    Edit_Email: TUniDBEdit;
    Edit_CEP: TUniDBEdit;
    Edit_Codigo: TUniDBEdit;
    Edit_Telefone: TUniDBEdit;
    Edit_Tipo: TUniDBEdit;
    Edit_Cidade: TUniDBEdit;
    Edit_UF: TUniDBEdit;
    Edit_IE: TUniDBEdit;
    qOrcamentoItemCLI_CPFCNPJ: TIBStringField;
    qOrcamentoItemCLI_IE: TIBStringField;
    qOrcamentoItemCLIENTE: TIBStringField;
    qOrcamentoItemCLI_CIDADE: TIBStringField;
    qOrcamentoItemCLI_UF: TIBStringField;
    qOrcamentoItemCLI_ENDERECO: TIBStringField;
    qOrcamentoItemCLI_TIPO: TIBStringField;
    qOrcamentoItemCLI_BAIRRO: TIBStringField;
    qOrcamentoItemCLI_CEP: TIBStringField;
    qOrcamentoItemCLI_TELEFONE: TIBStringField;
    DataSource_OrcamentoItem: TDataSource;
    qOrcamentoItemENTREGAR: TDateField;
    Edit_Entregar: TUniDBEdit;
    UniPageControl1: TUniPageControl;
    TabSheet_Itens: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    btn_Inserir: TUniBitBtn;
    qOrcamentoItemOBS: TBlobField;
    cdsItensOrcamentoDATA_ULTPRECO: TDateField;
    cdsItensOrcamentoERP_PRODUTO: TStringField;
    UniComboBox1: TUniComboBox;
    cdsItensOrcamentoIMG: TGraphicField;
    cdsItensOrcamentoITEMNOVO: TStringField;
    qOrcamentoItemORCAMENTOITEM_ID: TIntegerField;
    cdsItensOrcamentoORCAMENTOITEM_ID: TIntegerField;
    cdsItensOrcamentoIMG_LUPA: TGraphicField;
    UniImageList1: TUniImageList;
    UniImage1: TUniImage;
    UniImage2: TUniImage;
    qOrcamentoItemOBS_PRIVADA: TWideMemoField;
    Edit_PesqCondPagto: TUniEdit;
    btn_CondPagto: TUniButton;
    Edit_CondPagto: TUniEdit;
    UniLabel20: TUniLabel;
    qOrcamentoItemERP_CONDPAGTO: TIBStringField;
    qOrcamentoItemCONDPAGTO: TIBStringField;
    DS_OrcamentoStatusLOG: TIBStringField;
    DS_OrcamentoStatusDATA: TDateTimeField;
    DS_OrcamentoStatusUSUARIO_ID: TIntegerField;
    DS_OrcamentoStatusUSUARIO: TIBStringField;
    DS_OrcamentoStatusERP_PRODUTO: TIBStringField;
    DS_OrcamentoStatusPRODUTO_ID: TIntegerField;
    DS_OrcamentoStatusPRODUTO: TIBStringField;
    InsereNovoPreco: TIBQuery;
    InserirItem: TIBQuery;
    UpdateItem: TIBQuery;
    Parametro: TIBQuery;
    btn_Auditoria: TUniBitBtn;
    cdsItensOrcamentoDESTAQUE: TStringField;
    qOrcamentoItemALTERACAO_DESTAQUE: TIBStringField;
    Edit_Emitente: TUniDBEdit;
    UniLabel16: TUniLabel;
    qOrcamentoItemUSUARIONOME_I: TIBStringField;
    qOrcamentoItemCODIGO: TIBStringField;
    cdsItensOrcamentoTOTAL_ITENS: TAggregateField;
    UniLabel15: TUniLabel;
    Edit_Total: TUniEdit;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure Edit_PesqChange(Sender: TObject);
    procedure Edit_PesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsItensOrcamentoBeforeInsert(DataSet: TDataSet);
    procedure cdsItensOrcamentoCalcFields(DataSet: TDataSet);
    procedure btn_AplicarClick(Sender: TObject);
    procedure UniDBGrid1TitleClick(Column: TUniDBGridColumn);
    procedure btn_InserirClick(Sender: TObject);
    procedure UniComboBox1TriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
    procedure UniDBGrid2FieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure UniDBGrid2CellClick(Column: TUniDBGridColumn);
    procedure btn_CondPagtoClick(Sender: TObject);
    procedure btn_AuditoriaClick(Sender: TObject);
    procedure UniDBGrid2DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniFormAfterShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniDBGrid2ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid2ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);

  private
    Campo : String;
    vlEmailCliente, vlEmailEmitente : string;
    vlOBS : string;
    vlItemASerInserido : Integer;
    procedure pInserirItem;
    procedure CallBack(Sender: TComponent; Result: Integer);
    procedure pInsereNovoPreco(prOrcamento, prItem : String);
    procedure pAplicarStatus;
    procedure pGeraRelatorioPedido;
    function fStatusOrcamento(prOrcamentoID: string): string;
    function fTrocaVirgulaPPonto(Valor: string): String;

    procedure pGravaOrcamentoStatus(prStatus : String);
    procedure pLimpaDestaqueItem;
    function fRetornaOrcamentoEmAnalise : String;
  public

  end;

function Form_Aprovar: TForm_Aprovar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_InserirItens, Unit_Busca_Produto,
  Unit_Orcamento_Auditoria, Unit_Busca_CondPagto,
  Unit_Busca_Orcamento_Item_Preco, UFiltrosPedidoOnline;

function Form_Aprovar: TForm_Aprovar;
begin
  Result := TForm_Aprovar(UniMainModule.GetFormInstance(TForm_Aprovar));
end;

procedure TForm_Aprovar.pAplicarStatus();
var
  vStatus : String;
  vTotalOrcamento : double;
begin
  if cdsItensOrcamento.State in [dsInsert, dsEdit] then
    cdsItensOrcamento.Post;

  vTotalOrcamento := 0;
  pLimpaDestaqueItem;

  cdsItensOrcamento.Filtered := false;
  cdsItensOrcamento.Filter   := 'SHIFT = true';
  cdsItensOrcamento.Filtered := true;

  if ((ComboBoxStatus.ItemIndex = 0) or (ComboBoxStatus.ItemIndex = 1)) then // Alterar - Negociação
    begin
      vStatus := Trim(ComboBoxStatus.Text);
      cdsItensOrcamento.First;
      while not cdsItensOrcamento.Eof do
        begin
          if cdsItensOrcamentoITEMNOVO.AsString = 'S' then
            pInserirItem;

          With qUpdate do
            begin
              Close;
              SQL.Text := 'update tborcamento_item set';
              SQL.Add(' integrado = ''N'',');

              if cdsItensOrcamentoTOTAL_A.AsCurrency > 0 then
                SQL.Add(' status = ''' + vStatus + ''' ,')
              else
                SQL.Add(' status = ''Reprovado'',');

              SQL.Add(' quantidade_final = ''' + fTrocaVirgulaPPonto(cdsItensOrcamentoQUANTIDADE_A.AsString) + ''',');
              SQL.Add(' valor_final      = ''' + fTrocaVirgulaPPonto(cdsItensOrcamentoPRECO_A.AsString) + ''',');
              SQL.Add(' subtotal_final   = ''' + fTrocaVirgulaPPonto(cdsItensOrcamentoTOTAL_A.AsString) + ''',');

              if ((cdsItensOrcamentoPRECO_A.NewValue <> cdsItensOrcamentoPRECO_A.OldValue) or
                  (cdsItensOrcamentoQUANTIDADE_A.NewValue <> cdsItensOrcamentoQUANTIDADE_A.OldValue))  then
                SQL.Add(' alteracao_destaque = ''S'', ');

              SQL.Add(' data_alt      = ''' + FormatDateTime('DD.MM.YYYY hh:mm:ss', Now) + ''',');
              SQL.Add(' usuario_a     = ''' + UniMainModule.vUsuarioID + ''',');
              SQL.Add(' usuarionome_a = ''' + UniMainModule.vUsuario + ''' ');

              SQL.Add(' where orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
              SQL.Add(' and item           = ''' + cdsItensOrcamentoITEM.AsString + ''' ');
              SQL.Add(' and deletado       = ''N'' ');

              vTotalOrcamento := vTotalOrcamento + cdsItensOrcamentoTOTAL_A.AsCurrency;

              ExecSQL;
              Transaction.CommitRetaining;
            end;

          cdsItensOrcamento.Next;
        end;
    end;

  if ComboBoxStatus.ItemIndex = 2 then // Cancelar Item
    begin
      if qOrcamentoItem.RecordCount > cdsItensOrcamento.RecordCount then
        vStatus := 'Cancelado Parcial'
      else
        vStatus := 'Cancelado';

      cdsItensOrcamento.First;
      while not cdsItensOrcamento.Eof do
        begin
          if cdsItensOrcamentoITEMNOVO.AsString = 'S' then
            pInserirItem;

          With qUpdate do
            begin
              Close;
              SQL.Text := 'update tborcamento_item set';
              SQL.Add(' integrado = ''N'',');

              if cdsItensOrcamentoTOTAL_A.AsCurrency > 0 then
                SQL.Add(' status = ''Cancelado'',')
              else
                SQL.Add(' status = ''Reprovado'',');

              SQL.Add(' quantidade_final   = ''' + fTrocaVirgulaPPonto(cdsItensOrcamentoQUANTIDADE_A.AsString)+ ''',');
              SQL.Add(' valor_final        = ''' + fTrocaVirgulaPPonto(cdsItensOrcamentoPRECO_A.AsString) + ''',');
              SQL.Add(' subtotal_final     = ''' + fTrocaVirgulaPPonto(cdsItensOrcamentoTOTAL_A.AsString) + ''',');
              SQL.Add(' data_alt           = ''' + FormatDateTime('DD.MM.YYYY hh:mm:ss', Now) + ''', ');
              SQL.Add(' usuario_a          = ''' + UniMainModule.vUsuarioID + ''', ');
              SQL.Add(' usuarionome_a      = ''' + UniMainModule.vUsuario + ''' ');

              SQL.Add(' where orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
              SQL.Add(' and item           = ''' + cdsItensOrcamentoITEM.AsString + ''' ');
              SQL.Add(' and deletado       = ''N'' ');

              vTotalOrcamento := vTotalOrcamento + cdsItensOrcamentoTOTAL_A.AsCurrency;

              ExecSQL;
              Transaction.CommitRetaining;
            end;

          cdsItensOrcamento.Next;
        end;
    end;

  // Finalizando

  //Salva novo preço dos itens do Orçamento - Início -----------------------
  cdsItensOrcamento.First;
  while not cdsItensOrcamento.Eof do
    begin
      if cdsItensOrcamentoPRECO_A.NewValue <> cdsItensOrcamentoPRECO_A.OldValue then
        pInsereNovoPreco(qOrcamentoItemORCAMENTO_ID.AsString, cdsItensOrcamentoITEM.AsString);

      pGravaOrcamentoStatus(vStatus);

      cdsItensOrcamento.Next;
    end;
  //Salva novo preço dos itens do Orçamento - Fim --------------------------

  // Finaliza o Status, envia e-mails e Gera Relatórios
  With qUpdate do
    begin
      Close;
      SQL.Text := 'update tborcamento set';
      SQL.Add(' integrado = ''N'',');
      SQL.Add(' status    = ''' + vStatus + ''',');

      if Trim(vlOBS) <> Trim(MemoOBS.Lines.Text) then
        SQL.Add(' obs            = ''' + MemoOBS.Lines.Text + ''',');

      if Trim(vlOBS) <> Trim(MemoOBS.Lines.Text) then
        SQL.Add(' obs_privada    = ''' + MemoOBS_Privada.Lines.Text + ''',');

      if Trim(qOrcamentoItemERP_PRODUTO.AsString) <> Trim(Edit_PesqCondPagto.Text) then
        begin
          SQL.Add(' erp_condpagto = ''' + Trim(Edit_PesqCondPagto.Text) + ''',');
          SQL.Add(' condpagto     = ''' + Trim(Edit_CondPagto.Text) + ''',');
        end;

      SQL.Add(' data_alt         = :pAlteracao,');
      SQL.Add(' usuario_a        = :pUsuario_a,');
      SQL.Add(' usuarionome_a    = :pUsuarioNome_a');
      SQL.Add(' where deletado   = ''N'' ');
      SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');

      ParamByName('pAlteracao').AsDateTime   := Now;
      ParamByName('pUsuario_a').AsString     := UniMainModule.vUsuarioID;
      ParamByName('pUsuarioNome_a').AsString := UniMainModule.vUsuario;

      ExecSQL;
      Transaction.CommitRetaining;
    end;

   UniMainModule.pGeraRelatorio(UniMainModule.vOrcamento_ID, 'Todos', 'N');

  if ((ComboBoxStatus.ItemIndex = 0) or (ComboBoxStatus.ItemIndex = 1)) then // Alterar - Negociação
    begin
      // Envia email do Orçamento para Usuario Emitente
      if Trim(vlEmailEmitente) <> '' then
        begin
          UnimainModule.fEnviaEmailOrcamento('Orçamento Farmace [' + UniMainModule.vOrcamento_ID + ']' + ' - Atualizado',
                        vlEmailEmitente,UniMainModule.frxPDFExport1.FileName,UniMainModule.vOrcamento_ID,'Todos');
        end;

    end;

  MemoOBS.Clear;
  UniMainModule.vAprovar := '';

  Form_Aprovar.OnShow(Owner);
end;

procedure TForm_Aprovar.pGeraRelatorioPedido;
var
  vFiltros : TFiltrosPedidoOnline;
begin
  try
    vFiltros          := TFiltrosPedidoOnline.Create;
    vFiltros.PedidoID := DS_PedidoPEDIDO_ID.AsString;

    UniMainModule.pGeraRelatorioPedido(vFiltros, 'Individual', 'Detalhado');
  finally
    vFiltros.Free;
  end;

  UnimainModule.fEnviaEmailPedido('Pedido Farmace [' + DS_PedidoPEDIDO_ID.AsString + ']' ,
    vEmailPara,UniMainModule.frxPDFExport1.FileName);

  UnimainModule.fEnviaEmailPedidoUsuario('Pedido Farmace [' + DS_PedidoPEDIDO_ID.AsString + ']' ,
    UniMainModule.vEmailUsuario,UniMainModule.frxPDFExport1.FileName);
end;

procedure TForm_Aprovar.pGravaOrcamentoStatus(prStatus : String);
begin
  with DS_OrcamentoStatus do
    begin
      Close;
      SelectSQL.Text := 'select * from tborcamento_status where orcamentostatus_id = 0';
      Open;
    end;

  DS_OrcamentoStatus.Insert;
  DS_OrcamentoStatusORCAMENTO_ID.AsString := UniMainModule.vOrcamento_ID;

  if cdsItensOrcamentoTOTAL_A.AsCurrency > 0 then
    DS_OrcamentoStatusSTATUS.AsString       := prStatus
  else
    DS_OrcamentoStatusSTATUS.AsString       := 'Reprovado';

  if Trim(qOrcamentoItemERP_CONDPAGTO.AsString) <> Trim(Edit_PesqCondPagto.Text) then
    DS_OrcamentoStatusLOG.AsString := 'Alteração da Condição de Pagamento: De ['+
      Trim(qOrcamentoItemERP_CONDPAGTO.AsString) +'-'+Trim(qOrcamentoItemCONDPAGTO.AsString) +
       '] Para [' + Trim(Edit_PesqCondPagto.Text)+'-'+Trim(Edit_CondPagto.Text) + ']; ';

  if cdsItensOrcamentoTOTAL_A.AsCurrency <= 0 then
    DS_OrcamentoStatusLOG.AsString := DS_OrcamentoStatusLOG.AsString + 'Item Reprovado; ';

  if cdsItensOrcamentoPRECO_A.NewValue <> cdsItensOrcamentoPRECO_A.OldValue then
    begin
      DS_OrcamentoStatusLOG.AsString := DS_OrcamentoStatusLOG.AsString +
      'Alteração do Preço: De ['+ FormatFloat('###,###,###,###,##0.0000', cdsItensOrcamentoPRECO_A.OldValue) + '] '+
      'Para [' + FormatFloat('###,###,###,###,##0.0000', cdsItensOrcamentoPRECO_A.NewValue) + ']; ';
    end;

  if cdsItensOrcamentoQUANTIDADE_A.NewValue <> cdsItensOrcamentoQUANTIDADE_A.OldValue then
    begin
      DS_OrcamentoStatusLOG.AsString := DS_OrcamentoStatusLOG.AsString +
      'Alteração da Quantidade: De ['+ FormatFloat('###,###,###,###,###', cdsItensOrcamentoQUANTIDADE_A.OldValue) + '] '+
      'Para [' + FormatFloat('###,###,###,###,###', cdsItensOrcamentoQUANTIDADE_A.NewValue) + ']; ';
    end;

  if prStatus = 'Excluído' then
    begin
      DS_OrcamentoStatusLOG.AsString := 'Item excluído';
    end;

  DS_OrcamentoStatusDATA.AsDateTime      := Now;
  DS_OrcamentoStatusUSUARIO_ID.AsString  := UniMainModule.vUsuarioID;
  DS_OrcamentoStatusUSUARIO.AsString     := UniMainModule.vUsuario;
  DS_OrcamentoStatusERP_PRODUTO.AsString := cdsItensOrcamentoERP_PRODUTO.AsString;
  DS_OrcamentoStatusPRODUTO.AsString     := cdsItensOrcamentoPRODUTO.AsString;

  DS_OrcamentoStatus.Post;
  DS_OrcamentoStatus.Transaction.CommitRetaining;
end;

procedure TForm_Aprovar.pInsereNovoPreco(prOrcamento, prItem : string);
begin
  with InsereNovoPreco do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'insert into tborcamento_item_preco';
      SQL.Add(' (orcamento_id, orcamentoitem_id, valor_antigo, valor_atual,');
      SQL.Add(' item, erp_produto, produto, data_inc, ');
      SQL.Add(' usuario_i, usuarionome_i, deletado)');
      SQL.Add(' values(');
      SQL.Add(' :pOrcamento_ID,');
      SQL.Add(' :pOrcamentoItem_ID,');
      SQL.Add(' :pValor_Antigo,');
      SQL.Add(' :pValor_Atual,');
      SQL.Add(' :pItem,');
      SQL.Add(' :pERP_Produto,');
      SQL.Add(' :pProduto,');
      SQL.Add(' :pData_Inc,');
      SQL.Add(' :pUsuario_I,');
      SQL.Add(' :pUsuarioNome_I,');
      SQL.Add(' :pDeletado');
      SQL.Add(')');

      ParamByName('pOrcamento_ID').AsString     := qOrcamentoItemORCAMENTO_ID.AsString;
      ParamByName('pOrcamentoItem_ID').AsString := cdsItensOrcamentoORCAMENTOITEM_ID.AsString;
      ParamByName('pValor_Antigo').AsCurrency   := cdsItensOrcamentoPRECO_A.OldValue;
      ParamByName('pValor_Atual').AsCurrency    := cdsItensOrcamentoPRECO_A.NewValue;
      ParamByName('pItem').AsString             := cdsItensOrcamentoITEM.AsString;
      ParamByName('pERP_Produto').AsString      := cdsItensOrcamentoERP_PRODUTO.AsString;
      ParamByName('pProduto').AsString          := cdsItensOrcamentoPRODUTO.AsString;
      ParamByName('pData_Inc').AsDateTime       := Now;
      ParamByName('pUsuario_I').AsString        := UniMainModule.vUsuarioID;
      ParamByName('pUsuarioNome_I').AsString    := UniMainModule.vUsuario;
      ParamByName('pDeletado').AsString         := 'N';

      ExecSQL;
      Transaction.CommitRetaining;
    end;
end;

procedure TForm_Aprovar.pInserirItem;
begin
  with InserirItem do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'insert into tborcamento_item';
      SQL.Add(' (orcamento_id, item, erp_produto, produto, quantidade,');
      SQL.Add(' quantidade_final, valor, subtotal, valor_final, subtotal_final,');
      SQL.Add(' data_inc, usuario_i, usuarionome_i, deletado, dataware)');
      SQL.Add(' values(');
      SQL.Add(' :pOrcamento_ID,');
      SQL.Add(' :pItem,');
      SQL.Add(' :pERP_Produto,');
      SQL.Add(' :pProduto,');
      SQL.Add(' :pQuantidade,');
      SQL.Add(' :pQuantidade_Final,');
      SQL.Add(' :pValor,');
      SQL.Add(' :pValor_Final,');
      SQL.Add(' :pSubtotal,');
      SQL.Add(' :pSubtotal_Final,');
      SQL.Add(' :pData_Inc,');
      SQL.Add(' :pUsuario_I,');
      SQL.Add(' :pUsuarioNomeI,');
      SQL.Add(' :pDeletado,');
      SQL.Add(' :pDataware');
      SQl.Add(' )');

      ParamByName('pOrcamento_ID').AsString       := qOrcamentoItemORCAMENTO_ID.AsString;
      ParamByName('pItem').AsString               := cdsItensOrcamentoITEM.AsString;
      ParamByName('pERP_Produto').AsString        := cdsItensOrcamentoERP_PRODUTO.AsString;
      ParamByName('pProduto').AsString            := cdsItensOrcamentoPRODUTO.AsString;
      ParamByName('pQuantidade').AsCurrency       := cdsItensOrcamentoQUANTIDADE.AsCurrency;
      ParamByName('pQuantidade_Final').AsCurrency := cdsItensOrcamentoQUANTIDADE_A.AsCurrency;
      ParamByName('pValor').AsCurrency            := cdsItensOrcamentoPRECO.AsCurrency;
      ParamByName('pValor_Final').AsCurrency      := cdsItensOrcamentoPRECO_A.AsCurrency;
      ParamByName('pSubtotal').AsCurrency         := cdsItensOrcamentoTOTAL.AsCurrency;
      ParamByName('pSubtotal_Final').AsCurrency   := cdsItensOrcamentoTOTAL_A.AsCurrency;
      ParamByName('pData_Inc').AsDateTime         := Now;
      ParamByName('pUsuario_I').AsString          := UniMainModule.vUsuarioID;
      ParamByName('pUsuarioNomeI').AsString       := UniMainModule.vUsuario;
      ParamByName('pDeletado').AsString           := 'N';
      ParamByName('pDataware').AsString           := UniMainModule.vDataware;

      ExecSQL;
      Transaction.CommitRetaining;
    end;

  pGravaOrcamentoStatus('Incluído');
end;

procedure TForm_Aprovar.pLimpaDestaqueItem;
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;
      Close;
      SQL.Text := 'update tborcamento_item set';
      SQL.Add(' alteracao_destaque = null');
      SQL.Add(' where deletado = ''N'' ');
      SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      ExecSQL;
      Transaction.CommitRetaining;
    end;

  FreeAndNil(vlQuerySIC);
end;

procedure TForm_Aprovar.btn_AplicarClick(Sender: TObject);
var
  vQuery : TIBQuery;
  vPerfil_ID, vPerfil_ID_Rotina : String;
begin
  if ComboBoxStatus.ItemIndex <> -1 then
    begin
      pAplicarStatus;
      cdsItensOrcamento.Filtered := false;
    end
  else
    begin
      MessageDlg('Selecione uma opção para aplicar o Status', mtInformation, [mbOk]);
      ComboBoxStatus.SetFocus;
    end;
end;

procedure TForm_Aprovar.btn_AuditoriaClick(Sender: TObject);
begin
  if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'WEB_ORC_AUDITORIA') = False then
    begin
      MessageDlg(pchar(UniMainModule.vUsuario + ', você não tem permissão para Visualizar Auditoria. WEB_ORC_AUDITORIA'), mtinformation, [mbok]);
      Exit;
    end;
  UniMainModule.vERP_Produto := cdsItensOrcamentoERP_PRODUTO.AsString;
  Form_Orcamento_Auditoria.ShowModal;
end;

procedure TForm_Aprovar.btn_CondPagtoClick(Sender: TObject);
begin
  Form_Busca_CondPagto.ShowModal;

  if Form_Busca_CondPagto.ModalResult = mrOk then
    begin
      Edit_PesqCondPagto.Text := Trim(Form_Busca_CondPagto.QR_CONDPAGTOERP_CODIGO.AsString);
      Edit_CondPagto.Text     := Trim(Form_Busca_CondPagto.QR_CONDPAGTOCONDICAO_DESCRICAO.AsString);
    end;
end;

procedure TForm_Aprovar.btn_InserirClick(Sender: TObject);
begin
  //Form_InserirItem.ShowModal;
  cdsItensOrcamento.Last;
  vlItemASerInserido := cdsItensOrcamentoITEM.AsInteger + 1;
  cdsItensOrcamento.Insert;
end;

procedure TForm_Aprovar.CallBack(Sender: TComponent; Result: Integer);
var
  vlItem : Integer;
begin
  if Result = mrYes then
    begin
      if cdsItensOrcamentoORCAMENTOITEM_ID.AsInteger <> 0 then
        begin
          with UpdateItem do
            begin
              Database    := UniMainModule.IBDatabase1;
              Transaction := UniMainModule.IBTransaction1;

              Close;
              SQL.Text := 'update tborcamento_item set';
              SQL.Add(' deletado = ''S'', ');
              SQL.Add(' data_del = ''' + FormatDateTime('DD.MM.YYYY HH:MM:SS', Now) + ''', ');
              SQL.Add(' usuario_d = ''' + UniMainModule.vUsuarioID + ''', ');
              SQL.Add(' usuarionome_d = ''' + UniMainModule.vUsuario + ''', ');
              SQL.Add(' status = ''Excluído'' ');
              SQL.Add(' where orcamentoitem_id = ''' + cdsItensOrcamentoORCAMENTOITEM_ID.AsString + ''' ');
              SQL.Add(' and orcamento_id = ''' + qOrcamentoItemORCAMENTO_ID.AsString + ''' ');
              ExecSQL;
              Transaction.CommitRetaining;
            end;
        end;

      pGravaOrcamentoStatus('Excluído');

      cdsItensOrcamento.Edit;
      cdsItensOrcamentoSTATUS.AsString := 'Excluído';
      cdsItensOrcamentoSHIFT.AsBoolean := False;
      cdsItensOrcamento.Post;
    end;
end;

procedure TForm_Aprovar.cdsItensOrcamentoBeforeInsert(DataSet: TDataSet);
begin
  cdsItensOrcamento.IndexFieldNames := 'ITEM';
end;

procedure TForm_Aprovar.cdsItensOrcamentoCalcFields(DataSet: TDataSet);
begin
  cdsItensOrcamentoTOTAL_A.AsCurrency :=
    cdsItensOrcamentoPRECO_A.AsCurrency * cdsItensOrcamentoQUANTIDADE_A.AsCurrency;
end;

procedure TForm_Aprovar.Edit_PesqChange(Sender: TObject);
begin
    if Edit_Pesq.Text <> '' then
    begin
      cdsItensOrcamento.Filtered := False;
      cdsItensOrcamento.Filter   := 'PRODUTO LIKE ''%'+ Edit_Pesq.Text +'%'' ';
      cdsItensOrcamento.Filtered := True;
    end
  else
    cdsItensOrcamento.Filtered := False;
end;

procedure TForm_Aprovar.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    cdsItensOrcamento.Next;

  If Key = VK_UP Then
    cdsItensOrcamento.Prior;
end;


function TForm_Aprovar.fRetornaOrcamentoEmAnalise: String;
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;
      Close;
      SQL.Text := 'select analise_usuario from tborcamento where deletado = ''N'' ';
      SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      Open;
    end;

  Result := vlQuerySIC.FieldByName('ANALISE_USUARIO').AsString;

  FreeAndNil(vlQuerySIC);
end;

function TForm_Aprovar.fStatusOrcamento(prOrcamentoID: string): string;
begin
  Result := '';
end;

function TForm_Aprovar.fTrocaVirgulaPPonto(Valor: string): String;
begin
  Result := trim(StringReplace(Valor,',','.',[rfReplaceall]));
end;

procedure TForm_Aprovar.UniComboBox1TriggerEvent(Sender: TUniCustomComboBox;
  AButtonId: Integer);
var
  vlqTOTVS : TADOQuery;
  vlQuerySIC : TIBQuery;
begin
  {if Trim(cdsItensOrcamentoSTATUS.AsString) = 'Excluído' then
    Exit; }

  if AButtonId = 1 then
    begin
      Form_Busca_Produto.ShowModal;
      if Form_Busca_Produto.ModalResult = mrOk then
        begin
          cdsItensOrcamentoITEMNOVO.AsString          := 'S';
          cdsItensOrcamentoIMG.AsString               := 'img';
          cdsItensOrcamentoERP_PRODUTO.AsString       := Trim(Form_Busca_Produto.QR_PRODUTOREFERENCIA.AsString);
          cdsItensOrcamentoPRODUTO.AsString           := Trim(Form_Busca_Produto.QR_PRODUTODESCRICAO.AsString);
          cdsItensOrcamentoITEM.AsString              := FormatFloat('000',vlItemASerInserido); //FormatFloat('000', vlQuerySIC.FieldByName('MAX').AsInteger + 1);
          cdsItensOrcamentoQUANTIDADE.AsCurrency      := 0;
          cdsItensOrcamentoPRECO.AsCurrency           := 0;
          cdsItensOrcamentoTOTAL.AsCurrency           := 0;
          cdsItensOrcamentoQUANTIDADE_A.AsCurrency    := 0;
          cdsItensOrcamentoPRECO_A.AsCurrency         := 0;
          cdsItensOrcamentoTOTAL_A.AsCurrency         := 0;
          cdsItensOrcamentoSHIFT.AsBoolean            := true;
          cdsItensOrcamentoSTATUS.AsString            := 'Aberto';
          cdsItensOrcamentoULTIMO_PRECO.AsCurrency    := UniMainModule.fRetornaUltimoPreco(qOrcamentoItemERP_CODIGO.AsString, Trim(Form_Busca_Produto.QR_PRODUTOREFERENCIA.AsString));

          if UniMainModule.fRetornaDataUltimoPreco(qOrcamentoItemERP_CODIGO.AsString, Trim(Form_Busca_Produto.QR_PRODUTOREFERENCIA.AsString)) <> '' then
            cdsItensOrcamentoDATA_ULTPRECO.AsDateTime := StrToDate(UniMainModule.fRetornaDataUltimoPreco(qOrcamentoItemERP_CODIGO.AsString, Trim(Form_Busca_Produto.QR_PRODUTOREFERENCIA.AsString)));

          cdsItensOrcamento.Post;
          cdsItensOrcamento.Edit;
        end;
    end;
end;

procedure TForm_Aprovar.UniDBGrid1TitleClick(Column: TUniDBGridColumn);
begin
  If Column.FieldName = 'SHIFT' then
    begin
      cdsItensOrcamento.First;

      while not cdsItensOrcamento.eof do
        begin
          cdsItensOrcamento.Edit;

          if cdsItensOrcamentoSHIFT.AsBoolean = True then
            cdsItensOrcamentoSHIFT.AsBoolean := False
          else
            cdsItensOrcamentoSHIFT.AsBoolean := False;

          cdsItensOrcamento.Post;

          cdsItensOrcamento.Next;
        end;
    end;
end;

procedure TForm_Aprovar.UniDBGrid2CellClick(Column: TUniDBGridColumn);
begin
  if Column.Index = 0 then
    messageDLG('Deseja realmente excluir o item?', mtConfirmation, mbYesNo, CallBack);

  if Column.Index = 9 then
    begin
      Form_Busca_Orcamento_Item_Preco.ShowModal;
    end;
end;

procedure TForm_Aprovar.UniDBGrid2ColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
begin
  // Trata o SummaryResult para quando Null
  if SameText(Column.FieldName, 'TOTAL_A') then
    begin
      if Column.AuxValue = NULL then Column.AuxValue := 0;
        Column.AuxValue := Column.AuxValue + Column.Field.AsCurrency;
    end;

  if SameText(Column.FieldName, 'QUANTIDADE_A') then
    begin
      if Column.AuxValue = NULL then Column.AuxValue := 0;
        Column.AuxValue := Column.AuxValue + Column.Field.AsCurrency;
    end;

  if SameText(Column.FieldName, 'QUANTIDADE') then
    begin
      if Column.AuxValue = NULL then Column.AuxValue := 0;
        Column.AuxValue := Column.AuxValue + Column.Field.AsCurrency;
    end;
end;

procedure TForm_Aprovar.UniDBGrid2ColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
var
  F : Real;
begin
  if SameText(Column.FieldName, 'TOTAL_A') then
    begin
      F                  := Column.AuxValue;
      Result             := FormatFloat('###,###,###,###,##0.00', F);
      Edit_Total.Text    := FormatFloat('###,###,###,###,##0.00', F);
      Attribs.Font.Style := [fsBold];
      Attribs.Font.Color := clNavy;
    end;

//  Column.AuxValue := NULL;

  if SameText(Column.FieldName, 'QUANTIDADE_A') then
    begin
      F          := Column.AuxValue;
      Result     := FormatFloat('###,###,###,###,##0.00', F);
      Attribs.Font.Style := [fsBold];
      Attribs.Font.Color := clNavy;
    end;

//  Column.AuxValue := NULL;

  if SameText(Column.FieldName, 'QUANTIDADE') then
    begin
      F          := Column.AuxValue;
      Result     := FormatFloat('###,###,###,###,##0.00', F);
      Attribs.Font.Style := [fsBold];
      Attribs.Font.Color := clNavy;
    end;

  Column.AuxValue := NULL;
end;

procedure TForm_Aprovar.UniDBGrid2DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if cdsItensOrcamentoDESTAQUE.AsString = 'S' then
    Attribs.Font.Color:=clRed
end;

procedure TForm_Aprovar.UniDBGrid2FieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'IMG') then
  begin
    DoNotDispose := True; // we provide an static image so do not free it.
    if AField.AsString = 'img' then
    begin
      OutImage := UniImage1.Picture.Graphic;
    end
  end;

  if SameText(AField.FieldName, 'IMG_LUPA') then
    begin
      DoNotDispose := True; // we provide an static image so do not free it.

      if AField.AsString = 'img' then
        begin
          OutImage := UniImage2.Picture.Graphic;
        end;
    end;
end;

procedure TForm_Aprovar.UniFormAfterShow(Sender: TObject);
var
  vlQuerySIC : TIBQuery;
begin
  if fRetornaOrcamentoEmAnalise <> '' then
    begin
      MessageDlg('Orçamento já em análise pelo operador ' + fRetornaOrcamentoEmAnalise, mtWarning, [mbOk]);
      Close;
    end
  else
    begin
      vlQuerySIC := TIBQuery.Create(Owner);
      with vlQuerySIC do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'update tborcamento set';
          SQL.Add(' analise_usuario_id = ''' + UniMainModule.vUsuarioID + ''', ');
          SQL.Add(' analise_usuario    = ''' + UniMainModule.vUsuario + ''' ');
          SQL.Add(' where deletado = ''N'' ');
          SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
          ExecSQL;
          Transaction.CommitRetaining;
        end;
      FreeAndNil(vlQuerySIC);
    end;

end;

procedure TForm_Aprovar.UniFormClose(Sender: TObject; var Action: TCloseAction);
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;
      Close;
      SQL.Text := 'update tborcamento set';
      SQL.Add(' analise_usuario_id = null,');
      SQL.Add(' analise_usuario    = null');
      SQL.Add(' where deletado = ''N'' ');
      SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      SQL.Add(' and analise_usuario_id = ''' + UniMainModule.vUsuarioID + ''' ');
      ExecSQL;
      Transaction.CommitRetaining;
    end;
  FreeAndNil(vlQuerySIC);
end;

procedure TForm_Aprovar.UniFormCreate(Sender: TObject);
begin
  Coinitialize(Nil);
end;

procedure TForm_Aprovar.UniFormShow(Sender: TObject);
begin
  ComboBoxStatus.ItemIndex := -1;

  with qOrcamentoItem do
    begin
      Close;
      SQL.Text := 'select i.orcamento_id, i.item, i.erp_produto, i.produto, i.quantidade, i.orcamentoitem_id,';
      SQL.Add(' i.status, o.usuario_email, i.quantidade_final, i.valor, i.valor_final, i.subtotal, o.email_cliente,');
      SQL.Add(' o.erp_codigo, o.cli_cpfcnpj, o.cli_ie, o.cliente, o.cli_cidade, o.cli_uf,');
      SQL.Add(' o.cli_endereco, o.cli_tipo, o.cli_bairro, o.cli_cep, o.cli_telefone, o.entregar, o.obs, o.obs_privada,');
      SQL.Add(' o.erp_condpagto, o.condpagto, i.alteracao_destaque, o.usuarionome_i, o.codigo');
      SQL.Add(' from tborcamento_item i');
      SQL.Add(' inner join tborcamento o on o.orcamento_id = i.orcamento_id and o.deletado = ''N'' ');
      //SQL.Add(' where i.deletado   = ''N'' ');
      SQL.Add(' where i.orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      Open;
    end;

  Edit_PesqCondPagto.Text := Trim(qOrcamentoItemERP_CONDPAGTO.AsString);
  Edit_CondPagto.Text     := Trim(qOrcamentoItemCONDPAGTO.AsString);

  MemoOBS.Clear;
  MemoOBS.Lines.Add(qOrcamentoItem.FieldByName('OBS').AsString);
  vlOBS := qOrcamentoItem.FieldByName('OBS').AsString;

  MemoOBS_Privada.Clear;
  MemoOBS_Privada.Lines.Add(qOrcamentoItem.FieldByName('OBS_PRIVADA').AsString);

  vlEmailCliente  := qOrcamentoItem.FieldByName('EMAIL_CLIENTE').AsString;
  vlEmailEmitente := qOrcamentoItem.FieldByName('USUARIO_EMAIL').AsString;

  if not cdsItensOrcamento.IsEmpty then
    begin
      cdsItensOrcamento.EmptyDataSet;
      cdsItensOrcamento.Close;
      cdsItensOrcamento.Open;
    end;

  with Parametro do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'select CONTEUDO from tbparametros where parametro = ''CFOP_VENDA'' ';
      Open;
    end;

  qOrcamentoItem.First;
  while not qOrcamentoItem.Eof do
    begin
      cdsItensOrcamento.Insert;

      cdsItensOrcamentoITEMNOVO.AsString          := 'N';
      cdsItensOrcamentoORCAMENTOITEM_ID.AsInteger := qOrcamentoItemORCAMENTOITEM_ID.AsInteger;
      cdsItensOrcamentoIMG.AsString               := 'img';
      cdsItensOrcamentoIMG_LUPA.AsString          := 'img';

      if ((qOrcamentoItemSTATUS.AsString <> 'Cancelado') and (qOrcamentoItemSTATUS.AsString <> 'Reprovado') and
          (qOrcamentoItemSTATUS.AsString <> 'Excluído')) then
        cdsItensOrcamentoSHIFT.AsBoolean            := True
      else
        cdsItensOrcamentoSHIFT.AsBoolean            := False;

      cdsItensOrcamentoORCAMENTO_ID.AsString      := qOrcamentoItemORCAMENTO_ID.asstring;
      cdsItensOrcamentoITEM.AsString              := qOrcamentoItemITEM.asstring;
      cdsItensOrcamentoERP_PRODUTO.AsString       := qOrcamentoItemERP_PRODUTO.AsString;
      cdsItensOrcamentoPRODUTO.AsString           := qOrcamentoItemPRODUTO.AsString;
      cdsItensOrcamentoQUANTIDADE.AsCurrency      := qOrcamentoItemQUANTIDADE.AsCurrency;
      cdsItensOrcamentoQUANTIDADE_A.AsCurrency    := qOrcamentoItemQUANTIDADE_FINAL.AsCurrency;
      cdsItensOrcamentoPRECO.AsCurrency           := qOrcamentoItemVALOR.AsCurrency;
      cdsItensOrcamentoPRECO_A.AsCurrency         := qOrcamentoItemVALOR_FINAL.AsCurrency;
      cdsItensOrcamentoTOTAL.AsCurrency           := qOrcamentoItemSUBTOTAL.AsCurrency;
      cdsItensOrcamentoSTATUS.AsString            := qOrcamentoItemSTATUS.AsString;
      cdsItensOrcamentoUSUARIO_EMAIL.AsString     := qOrcamentoItemUSUARIO_EMAIL.AsString;
      cdsItensOrcamentoEMAIL_CLIENTE.AsString     := qOrcamentoItemEMAIL_CLIENTE.AsString;
      cdsItensOrcamentoDESTAQUE.AsString          := qOrcamentoItemALTERACAO_DESTAQUE.AsString;

      cdsItensOrcamentoULTIMO_PRECO.AsCurrency  := UniMainModule.fRetornaUltimoPreco(Trim(qOrcamentoItem.FieldByName('ERP_CODIGO').AsString), Trim(qOrcamentoItem.FieldByName('ERP_PRODUTO').AsString));

      if UniMainModule.fRetornaDataUltimoPreco(Trim(qOrcamentoItem.FieldByName('ERP_CODIGO').AsString), Trim(qOrcamentoItem.FieldByName('ERP_PRODUTO').AsString)) <> '' then
        cdsItensOrcamentoDATA_ULTPRECO.AsDateTime := StrToDate(UniMainModule.fRetornaDataUltimoPreco(Trim(qOrcamentoItem.FieldByName('ERP_CODIGO').AsString), Trim(qOrcamentoItem.FieldByName('ERP_PRODUTO').AsString)));

      cdsItensOrcamento.Post;
      qOrcamentoItem.Next;
    end;

  cdsItensOrcamento.First;

  Panel_Top.Caption := 'Avaliação do Orçamento: [' + qOrcamentoItemCODIGO.AsString + ']';
end;

end.
