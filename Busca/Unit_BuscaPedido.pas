unit Unit_BuscaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery, uniImageList, Vcl.Imaging.pngimage, uniImage,
  uniMultiItem, uniComboBox, uniBitBtn, uniDateTimePicker, uniHTMLFrame;

type
  TForm_BuscaPedido = class(TUniForm)
    UniDBGridConsulta: TUniDBGrid;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniLabel2: TUniLabel;
    pCampo: TUniComboBox;
    qPedido: TIBQuery;
    qContraproposta: TIBQuery;
    qPedidoORCAMENTO_ID: TIntegerField;
    qPedidoEMISSAO: TDateField;
    qPedidoCLIENTE: TIBStringField;
    qPedidoCLI_CIDADE: TIBStringField;
    qPedidoCLI_UF: TIBStringField;
    qPedidoCLI_CPFCNPJ: TIBStringField;
    qPedidoCLI_TIPO: TIBStringField;
    qPedidoVALOR_PEDIDO: TIBBCDField;
    btn_Consultarold: TUniButton;
    qPedidoSITUACAO: TIBStringField;
    qPedidoCODIGO: TIBStringField;
    qPedidoUSUARIONOME_I: TIBStringField;
    DI: TUniDateTimePicker;
    DF: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    qPedidoPEDIDO_ID: TIntegerField;
    qPedidoSTATUS: TIBStringField;
    qPedidoPRINT: TStringField;
    qPedidoITENS: TStringField;
    qPedidoALTERAR: TStringField;
    qPedidoANEXO: TStringField;
    qPedidoAPROVAR: TWideStringField;
    UniHTMLFrame1: TUniHTMLFrame;
    btn_Imprimirold: TUniButton;
    Panel_Bottom: TUniPanel;
    btn_Consultar: TUniBitBtn;
    btn_Auditoria: TUniBitBtn;
    btn_Imprimir: TUniBitBtn;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniDBGridConsultaCellClick(Column: TUniDBGridColumn);
    procedure qPedidoCalcFields(DataSet: TDataSet);
    procedure UniFormAfterShow(Sender: TObject);
    procedure btn_ConsultarClick(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure btn_AuditoriaClick(Sender: TObject);
  private
    procedure pFiltrarPor(campo : String);
    procedure pAprovarPedido(Sender: TComponent; Result: Integer);
    procedure pCarregaIndicadores;
  public

  end;

function Form_BuscaPedido: TForm_BuscaPedido;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_BuscaItensPedido, Unit_Busca_DOC,
  Unit_Pedido, Unit_Pedido_Status, Unit_PedidoREL, UFiltrosPedidoOnline,
  Unit_Pedido_Auditoria;

function Form_BuscaPedido: TForm_BuscaPedido;
begin
  Result := TForm_BuscaPedido(UniMainModule.GetFormInstance(TForm_BuscaPedido));
end;

procedure TForm_BuscaPedido.btn_AuditoriaClick(Sender: TObject);
begin
  if not qPedido.IsEmpty then
    begin
      UniMainModule.vPedido_ID := qPedidoPEDIDO_ID.AsString;
      Form_Pedido_Auditoria.ShowModal;
    end
  else
    begin
      MessageDlgN('Nenhum Pedido selecionado. Clique na Linha de um Pedido antes e tente novamente.', mtInformation, [mbOK]);
    end;
end;

procedure TForm_BuscaPedido.btn_ConsultarClick(Sender: TObject);
begin
  UniMainModule.vAvisoPedidoParametro := Date + 1;

  if pCampo.ItemIndex = 0 then
    pFiltrarPor('PEDIDO_ID');

  if pCampo.ItemIndex = 1 then
    pFiltrarPor('CODIGO');

  if pCampo.ItemIndex = 2 then
    pFiltrarPor('STATUS');

  if pCampo.ItemIndex = 3 then
    pFiltrarPor('CLI_NOME');

  if pCampo.ItemIndex = 4 then
    pFiltrarPor('CLI_CPFCNPJ');

  if pCampo.ItemIndex = 5 then
    pFiltrarPor('CLI_CIDADE');

  if pCampo.ItemIndex = 6 then
    pFiltrarPor('CLI_UF');

  if pCampo.ItemIndex = 7 then
    pFiltrarPor('USUARIONOME_I');

  pCarregaIndicadores;
end;

procedure TForm_BuscaPedido.pAprovarPedido(Sender: TComponent; Result: Integer);
var
  vlUpdate : TIBQuery;
begin
  if Result = mrYes then
    begin
      vlUpdate := TIBQuery.Create(Owner);
      with vlUpdate do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;

          Close;
          SQL.Text := 'update tbpedido p set';
          SQL.Add(' status = ''Aprovado'',');
          SQL.Add(' obs    = obs||:pOBS');
          SQL.Add(' where pedido_id = ''' + qPedidoPEDIDO_ID.AsString + ''' ');

          ParamByName('pOBS').AsString := ' Aprovado por ' + UniMainModule.vUsuario + ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);

          ExecSQL;
          Transaction.CommitRetaining;
        end;
      FreeAndNil(vlUpdate);

      btn_ConsultarClick(Sender);
    end;
end;

procedure TForm_BuscaPedido.pCarregaIndicadores;
var
  vlQuerySIC: TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'select sum(p.valor_pedido) as valor';
      SQL.Add(' from tbpedido p where p.deletado = ''N'' ');

      SQL.Add(' and cast(p.data_inc as date) between ''' + FormatDateTime('DD.MM.YYYY', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY', DF.DateTime) + ''' ');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and p.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("TotalPedido").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');

  with vlQuerySIC do
    begin
      Close;
      SQL.Text := 'select sum(p.valor_pedido) as valor';
      SQL.Add(' from tbpedido p where deletado = ''N'' ');
      SQL.Add(' and p.status like ''Aprovado%'' ');

      SQL.Add(' and cast(p.data_inc as date) between ''' + FormatDateTime('DD.MM.YYYY', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY', DF.DateTime) + ''' ');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and p.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("totalAprovado").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');

  with vlQuerySIC do
    begin
      Close;
      SQL.Text := 'select sum(p.valor_pedido) as valor';
      SQL.Add(' from tbpedido p where deletado = ''N'' ');
      SQL.Add('and p.status = ''Aberto'' ');

      SQL.Add(' and cast(p.data_inc as date) between ''' + FormatDateTime('DD.MM.YYYY', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY', DF.DateTime) + ''' ');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and p.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("totalAnalise").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');

  with vlQuerySIC do
    begin
      Close;
      SQL.Text := 'select (sum(p.valor_pedido) / count(*)) as valor';
      SQL.Add(' from tbpedido p where p.deletado = ''N'' ');

      SQL.Add(' and cast(p.data_inc as date) between ''' + FormatDateTime('DD.MM.YYYY', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY', DF.DateTime) + ''' ');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and p.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("totalMedio").innerHTML = "R$ ' + FormatFloat('###,###,###,###,##0.00', vlQuerySIC.FieldByName('VALOR').AsCurrency) +'";');
  vlQuerySIC.Free;
end;

procedure TForm_BuscaPedido.pFiltrarPor(campo: String);
begin
  with qPedido do
    begin
      Close;
      SQL.Text := 'select codigo, orcamento_id, situacao, emissao,(erp_cliente||''-''||cli_nome) as Cliente,';
      SQL.Add(' cli_cidade,  cli_uf, cli_cpfcnpj, cli_tipo, valor_pedido, pedido_id, usuarionome_i, status');
      SQL.Add(' from tbpedido where deletado = ''N'' ');

      SQL.Add(' and cast(data_inc as date) between ''' + FormatDateTime('DD.MM.YYYY', DI.DateTime) + ''' ');
      SQL.Add(' and ''' + FormatDateTime('DD.MM.YYYY', DF.DateTime) + ''' ');

      if Edit_Pesq.Text <> '' then
        SQL.Add(' and upper(' + campo + ') like ''%' + Edit_Pesq.Text + '%'' ');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      SQL.Add(' order by pedido_id desc');

      Open;
    end;
end;

procedure TForm_BuscaPedido.qPedidoCalcFields(DataSet: TDataSet);
begin
  qPedidoPRINT.AsString   := UniMainModule.fImagemGrid('printer.png','Imprimir Pedido');
  qPedidoITENS.AsString   := UniMainModule.fImagemGrid('Lista.png','Visualizar Itens');
  qPedidoALTERAR.AsString := UniMainModule.fImagemGrid('Edit.png','Alterar Pedido');
  qPedidoAPROVAR.AsString := UniMainModule.fImagemGrid('aprovar.png','Aprovar Pedido');
  qPedidoANEXO.AsString   := UniMainModule.fImagemGrid('anexo-gray.png','Visualizar Anexo(s)');
end;

procedure TForm_BuscaPedido.btn_ImprimirClick(Sender: TObject);
begin
  Form_PedidoREL.ShowModal;
end;

procedure TForm_BuscaPedido.UniButton3Click(Sender: TObject);
begin
  UniMainModule.vPedido_ID := qPedidoPEDIDO_ID.AsString;
  Form_BuscaItensPedido.ShowModal;
end;

procedure TForm_BuscaPedido.UniDBGridConsultaCellClick(Column: TUniDBGridColumn);
var
  vLog     : string;
  vFiltros : TFiltrosPedidoOnline;
begin
  if Column.Index = 0 then
    begin
      vLog := 'Pedido [' + qPedidoPEDIDO_ID.AsString + '] impresso por ' + UniMainModule.vUsuario;

      UniMainModule.pSalvaPedidoStatus(qPedidoPEDIDO_ID.AsString,UniMainModule.fRetornaCampoTabela('STATUS','TBPEDIDO','PEDIDO_ID',qPedido.FieldByName('PEDIDO_ID').AsString),
        '','Impressão', vLog, vLog);

      try
        vFiltros := TFiltrosPedidoOnline.Create;
        vFiltros.PedidoID    := qPedidoPEDIDO_ID.AsString;
        vFiltros.ErpVendedor := UniMainModule.vVendedorID;

        UniMainModule.pGeraRelatorioPedido(vFiltros, 'Individual', 'Detalhado');
      finally
        vFiltros.Free;
      end;
    end;

  if Column.Index = 1 then
    begin
      UniMainModule.vPedido_ID := qPedidoPEDIDO_ID.AsString;
      Form_BuscaItensPedido.ShowModal;
    end;

  if Column.Index = 2 then
    begin
      if UniMainModule.fRetornaCampoTabela('STATUS','TBPEDIDO','PEDIDO_ID',qPedido.FieldByName('PEDIDO_ID').AsString) = 'Aberto' then
        begin
          UniMainModule.vPedido_ID  := qPedidoPEDIDO_ID.AsString;
          UniMainModule.vModoPedido := 'Alterando';
          Form_Pedido.ShowModal;
          btn_ConsultarClick(Owner);
        end
      else
        MessageDlgN('Alteração Bloqueada. Pedido já Processado. Solicite ao Comercial', mtInformation, [mbOK]);
    end;

  if Column.Index = 3 then
    begin
      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_APROVAR') = False then
        begin
          MessageDlgN(UniMainModule.vUsuario + ', você não tem permissão para Aprovar Pedido. PED_APROVAR', mtInformation, [mbOK]);
          Abort;
        end
      else
        begin
//          qStatus := TIBQuery.Create(Owner);
//          with qStatus do
//            begin
//              Database    := UniMainModule.IBDatabase1;
//              Transaction := UniMainModule.IBTransaction1;
//
//              Close;
//              SQL.Text := 'select status from tbpedido';
//              SQL.Add(' where deletado = ''N'' ');
//              SQL.Add(' and pedido_id = ''' + qPedidoPEDIDO_ID.AsString + ''' ');
//              Open;
//            end;

          UniMainModule.vPedido_ID := qPedidoPEDIDO_ID.AsString;
          Form_Pedido_Status.ShowModal;
        end;
    end;

  if Column.Index = 4 then  // Anexos
    begin
      UniMainModule.vPedido_ID            := qPedidoPEDIDO_ID.AsString;

      UniMainModule.vDocConsulta          := 'PEDIDO_ID;PEDIDO_CODIGO;';
      UniMainModule.vDocConsultaParametro := qPedidoPEDIDO_ID.AsString +';' + qPedidoCODIGO.AsString+';';
      UniMainModule.vDocCaption           := 'Arquivos Anexados do Pedido ' + qPedidoCODIGO.AsString;

      Form_Busca_Doc.ShowModal;
    end;
end;

procedure TForm_BuscaPedido.UniFormAfterShow(Sender: TObject);
begin
  btn_ConsultarClick(Sender);
  pCarregaIndicadores;
end;

procedure TForm_BuscaPedido.UniFormCreate(Sender: TObject);
begin
  DI.DateTime := Date - 30;
  DF.DateTime := Date;
end;

procedure TForm_BuscaPedido.UniFormShow(Sender: TObject);
begin
  if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
    UniDBGridConsulta.Columns[11].Visible := False
  else
    UniDBGridConsulta.Columns[11].Visible := True;

  if UniMainModule.vAvisoPedidoParametro <= Date then
    begin
      DI.DateTime := UniMainModule.vAvisoPedidoParametro;
      DF.DateTime := Date;
    end;

  // O erro estava aqui
  //pFiltrarPor('CLIENTE');

  Edit_Pesq.SetFocus;
end;

end.
