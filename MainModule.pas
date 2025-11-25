unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, frxClass, frxIBXComponents, frxExportPDF,
  frxDBSet, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, uniGUITypes,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, uniGUIDialogs,
  IdSSLOpenSSL, IdMessage, IniFiles, IdText, idSmtp, IdExplicitTLSClientServerBase,
  IdAttachmentFile, frxExportBaseDialog, uniGUIForm, Vcl.ExtCtrls, UFiltrosPedidoOnline;

type
  TUniMainModule = class(TUniGUIMainModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    qOrcamento: TIBQuery;
    DB_Orcamento: TfrxDBDataset;
    REL: TfrxReport;
    frxIBXComponents: TfrxIBXComponents;
    QR_PARAMETROEMAIL: TIBQuery;
    QR_PARAMETROEMAILPARAMETRO_ID: TIntegerField;
    QR_PARAMETROEMAILPARAMETRO: TIBStringField;
    QR_PARAMETROEMAILCONTEUDO: TIBStringField;
    REL_Pedido: TfrxReport;
    qPedido: TIBQuery;
    DB_Pedido: TfrxDBDataset;
    qCliente: TIBQuery;
    qOrcamentoERP_REPRESENTANTE: TIBStringField;
    qOrcamentoERP_REPRESENTANTE_NOME: TIBStringField;
    qOrcamentoERP_VENDEDOR: TIBStringField;
    qOrcamentoERP_VENDEDOR_NOME: TIBStringField;
    qOrcamentoORCAMENTO_ID: TIntegerField;
    qOrcamentoEMISSAO: TDateField;
    qOrcamentoPESSOA_ID: TIntegerField;
    qOrcamentoERP_CODIGO: TIBStringField;
    qOrcamentoENTREGAR: TDateField;
    qOrcamentoHORA_EMISSAO: TTimeField;
    qOrcamentoCLIENTE: TIBStringField;
    qOrcamentoCLI_ENDERECO: TIBStringField;
    qOrcamentoCLI_BAIRRO: TIBStringField;
    qOrcamentoCLI_CIDADE: TIBStringField;
    qOrcamentoCLI_CEP: TIBStringField;
    qOrcamentoCLI_UF: TIBStringField;
    qOrcamentoCLI_COMPLEMENTO: TIBStringField;
    qOrcamentoCLI_TELEFONE: TIBStringField;
    qOrcamentoCLI_TIPO: TIBStringField;
    qOrcamentoCLI_CPFCNPJ: TIBStringField;
    qOrcamentoCLI_IE: TIBStringField;
    qOrcamentoENT_ERP_CODIGO: TIBStringField;
    qOrcamentoENT_CONTATO: TIBStringField;
    qOrcamentoENT_ENDERECO: TIBStringField;
    qOrcamentoENT_BAIRRO: TIBStringField;
    qOrcamentoENT_CIDADE: TIBStringField;
    qOrcamentoENT_CEP: TIBStringField;
    qOrcamentoENT_UF: TIBStringField;
    qOrcamentoENT_COMPLEMENTO: TIBStringField;
    qOrcamentoENT_TELEFONE: TIBStringField;
    qOrcamentoENT_CPFCNPJ: TIBStringField;
    qOrcamentoENT_IE: TIBStringField;
    qOrcamentoERP_CONDPAGTO: TIBStringField;
    qOrcamentoCONDPAGTO_ID: TIntegerField;
    qOrcamentoCONDPAGTO: TIBStringField;
    qOrcamentoVR_CONTABIL: TIBBCDField;
    qOrcamentoDATA_INC: TDateTimeField;
    qOrcamentoUSUARIO_I: TIntegerField;
    qOrcamentoUSUARIONOME_I: TIBStringField;
    qOrcamentoEMPRESA_ID: TIntegerField;
    qOrcamentoSTATUS: TIBStringField;
    qOrcamentoOBS: TBlobField;
    qOrcamentoSTATUS1: TIBStringField;
    qOrcamentoITEM: TIBStringField;
    qOrcamentoPRODUTO: TIBStringField;
    qOrcamentoQUANTIDADE: TFloatField;
    qOrcamentoVALOR: TFloatField;
    qOrcamentoSUBTOTAL: TFloatField;
    qOrcamentoVALOR_FINAL: TFloatField;
    qOrcamentoSUBTOTAL_FINAL: TFloatField;
    qOrcamentoQUANTIDADE_FINAL: TFloatField;
    qOrcamentoSTATUS_ITEM: TIBStringField;
    Parametro: TIBQuery;
    Perfil: TIBQuery;
    qOrcamentoCODIGO: TIBStringField;
    qPedidoPEDIDO_ID: TIntegerField;
    qPedidoPEDIDO_NUM: TIBStringField;
    qPedidoEMISSAO: TDateField;
    qPedidoVALIDADE: TDateField;
    qPedidoHORA: TTimeField;
    qPedidoVALOR_PEDIDO: TIBBCDField;
    qPedidoPESSOA_ID: TIntegerField;
    qPedidoERP_CLIENTE: TIBStringField;
    qPedidoCLI_NOME: TIBStringField;
    qPedidoCLI_ENDERECO: TIBStringField;
    qPedidoCLI_TIPO: TIBStringField;
    qPedidoCLI_BAIRRO: TIBStringField;
    qPedidoCLI_CIDADE: TIBStringField;
    qPedidoCLI_UF: TIBStringField;
    qPedidoCLI_CEP: TIBStringField;
    qPedidoCLI_CPFCNPJ: TIBStringField;
    qPedidoCLI_RGCGF: TIBStringField;
    qPedidoCLI_TELEFONE: TIBStringField;
    qPedidoUSUARIO_ID: TIntegerField;
    qPedidoPROCESSO: TIBStringField;
    qPedidoEMPENHO: TIBStringField;
    qPedidoOBS: TWideMemoField;
    qPedidoENT_NOME: TIBStringField;
    qPedidoENT_ENDERECO: TIBStringField;
    qPedidoENT_BAIRRO: TIBStringField;
    qPedidoENT_CIDADE: TIBStringField;
    qPedidoENT_UF: TIBStringField;
    qPedidoENT_CEP: TIBStringField;
    qPedidoENT_TELEFONE: TIBStringField;
    qPedidoERP_ENTREGA: TIBStringField;
    qPedidoCONDPAGTO: TIBStringField;
    qPedidoERP_CONDPAGTO: TIntegerField;
    qPedidoCONDPAGTO_ID: TIntegerField;
    qPedidoIMPRESSO: TIBStringField;
    qPedidoSITUACAO: TIBStringField;
    qPedidoDATA_SITUACAO: TDateField;
    qPedidoHPRINT: TDateTimeField;
    qPedidoPROCESSO1: TIBStringField;
    qPedidoEMPENHO1: TIBStringField;
    qPedidoPEDIDOITEM_ID: TIntegerField;
    qPedidoPEDIDO_ID1: TIntegerField;
    qPedidoPRODUTO_ID: TIntegerField;
    qPedidoPRODUTO: TIBStringField;
    qPedidoQUANTIDADE: TIBBCDField;
    qPedidoPRECO: TFMTBCDField;
    qPedidoDATA: TDateField;
    qPedidoSUBTOTAL: TIBBCDField;
    qPedidoITEM: TIBStringField;
    qPedidoPESSOA_ID1: TIntegerField;
    qPedidoUSUARIO_ID1: TIntegerField;
    qPedidoERP_PRODUTO: TIBStringField;
    qPedidoCODIGO: TIBStringField;
    qPedidoERP_VENDEDOR: TIBStringField;
    qPedidoERP_VENDEDOR_NOME: TIBStringField;
    qPedidoSTATUS: TIBStringField;
    qPedidoENTREGA_PEDIDO: TDateField;
    qPedidoSTATUS_ITEM: TIBStringField;
    frxPDFExport1: TfrxPDFExport;
    DS_PedidoStatus: TIBDataSet;
    DS_PedidoStatusPEDIDOSTATUS_ID: TIntegerField;
    DS_PedidoStatusPEDIDO_ID: TIntegerField;
    DS_PedidoStatusSTATUS: TIBStringField;
    DS_PedidoStatusDATA: TDateTimeField;
    DS_PedidoStatusUSUARIO_ID: TIntegerField;
    DS_PedidoStatusUSUARIO: TIBStringField;
    DS_PedidoStatusLOG: TIBStringField;
    DS_PedidoStatusOBS: TWideMemoField;
    DS_PedidoStatusPRODUTO_ID: TIntegerField;
    DS_PedidoStatusERP_PRODUTO: TIBStringField;
    DS_PedidoStatusPRODUTO: TIBStringField;
    DS_PedidoStatusMOTIVO_ID: TIntegerField;
    DS_PedidoStatusMOTIVO: TIBStringField;
    DS_PedidoStatusDELETADO: TIBStringField;
    qPedidoUSUARIONOME_I: TIBStringField;
    qPedidoEMPENHO_ANO: TIBStringField;
    Timer1: TTimer;
    DB_PedidoResumido: TfrxDBDataset;
    qPedidoResumido: TIBQuery;
    qPedidoResumidoPEDIDO_ID: TIntegerField;
    qPedidoResumidoCODIGO: TIBStringField;
    qPedidoResumidoEMISSAO: TDateField;
    qPedidoResumidoCLI_NOME: TIBStringField;
    qPedidoResumidoCLI_UF: TIBStringField;
    qPedidoResumidoCLI_CPFCNPJ: TIBStringField;
    qPedidoResumidoVALOR_PEDIDO: TIBBCDField;
    qPedidoResumidoERP_VENDEDOR_NOME: TIBStringField;
    qPedidoResumidoERP_VENDEDOR: TIBStringField;
    qPedidoAgrupado: TIBQuery;
    qPedidoAgrupadoCODIGO: TIBStringField;
    qPedidoAgrupadoDESCRICAO: TIBStringField;
    qPedidoAgrupadoQUANTIDADE: TIBBCDField;
    qPedidoAgrupadoTOTAL: TIBBCDField;
    qPedidoAgrupadoPRECO: TFMTBCDField;
    DB_PedidoAgrupado: TfrxDBDataset;
    qPedidoAgrupadoCAMPO: TIBStringField;
    qPedidoAgrupadoCAMPO2: TIBStringField;
    procedure RELGetValue(const VarName: string; var Value: Variant);
    procedure IBDatabase1AfterConnect(Sender: TObject);
    procedure REL_PedidoGetValue(const VarName: string; var Value: Variant);
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    procedure LeIni(var Caminho, Usuario, Senha, Dataware: String);
  public
    vClienteTotvsID, vChaveTabela: String;

    vDocConsulta, vDocConsultaParametro, vDocCaption :String;

    //Representante e Vendedor
    vRepresentanteID, vRepresentanteNome : String;
    vVendedorID, vVendedorNome : string;

    vUsuarioID, vUsuario, vDataware : string;

    //Email Usuário Logado
    vEmailUsuario, UsuarioConexao : string;

    vOrcamento_ID           : string;
    vPedido_ID              : string;
    vPedido_Codigo          : string;
    vAprovar                : string;
    vERP_Produto            : string;
    vModoPedido             : string;
    vAvisoPedidoParametro   : TDate;

    procedure pGeraRelatorio(prOrcamento, prStatus, prImprimir : String);

    procedure pGeraRelatorioPedido(prFiltros: TFiltrosPedidoOnline; prTipo, prLayout : string);

    procedure pCapturaClienteID(prClienteID : String);
    procedure pSalvaPedidoStatus(prPedidoID, prStatus, prMotivoID,
              prMotivo, prOBS, prLog: string);

    function fEnviaEmailOrcamentoComercial(const AAssunto: string; const ADestino: string; const AAnexo: string; prOrcamentoID, prStatus: string): Boolean;
    function fEnviaEmailOrcamento(const AAssunto: string; const ADestino: string; const AAnexo: string; prOrcamentoID, prStatus: string): Boolean;

    function fEnviaEmailPedido(const AAssunto, ADestino, AAnexo: String): Boolean;
    function fEnviaEmailPedidoUsuario(const AAssunto, ADestino, AAnexo: String): Boolean;

    function fEnviaEmailCadastroCliente(const AAssunto, ADestino, AAnexo: String): Boolean;
    function fPerfilRotina(prUsuarioID, prRotina: string): Boolean;

    function fRetornaUltimoPreco(prERP_Cliente,  prERP_Produto : String): Currency;
    function fRetornaDataUltimoPreco(prERP_Cliente, prERP_Produto: String): String;

    function fRetornaMaxOrcamentoUsuario(prUsuarioID : String): Integer;
    function fRetornaMaxPedidoUsuario(prUsuarioID : String): Integer;
    function fImagemGrid(prImage, prTitle: string): string;
    function fImagemTipoArquivo(prExtensao: string): string;
    function fRetornaCampoTabela(prCampo, prTabela, prCampoWhere, prValorWhere: String): String;
    function fRetornaCampoParametro(prParametro, prCampo: string): string;
  end;

function UniMainModule: TUniMainModule;

var

// Email da TBPARAMETROS
vEmailPara, vEmailParaPedido : string;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

{TUniMainModule}

function TUniMainModule.fRetornaCampoParametro(prParametro, prCampo: string): string;
var
  qConsulta : TIBQuery;
begin
  qConsulta := TIBQuery.Create(Owner);
  with qConsulta do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'select ' + prCampo + ' from tbparametros';
      SQL.Add(' where parametro = ''' + prParametro + ''' ');

      Open;
    end;

  Result := qConsulta.FieldByName('CONTEUDO').AsString;

  FreeAndNil(qConsulta);
end;

function TUniMainModule.fRetornaCampoTabela(prCampo, prTabela, prCampoWhere, prValorWhere: String): String;
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'select ' + prCampo + ' from ' + prTabela;
      SQL.Add(' where deletado = ''N'' ');
      SQL.Add(' and ' + prCampoWhere + ' = ''' + prValorWhere + ''' ');
      Open;
    end;

  Result := vlQuerySIC.FieldByName(prCampo).AsString;

  FreeAndNil(vlQuerySIC);
end;

function TUniMainModule.fRetornaMaxOrcamentoUsuario(prUsuarioID : String): Integer;
var
  qQuery : TIBQuery;
begin
  qQuery := TIBQuery.Create(Owner);
  with qQuery do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;
    end;

  with qQuery do
    begin
      Close;
      SQL.Text := 'select coalesce(max(substring(codigo from 7 for 12)),0) as maximo from tborcamento';
      SQl.Add(' where deletado = ''N'' ');
      SQL.Add(' and usuario_i  = ''' + prUsuarioID + ''' ');
      Open;
    end;

  Result := qQuery.FieldByName('MAXIMO').AsInteger + 1;

  FreeAndNil(qQuery);
end;

function TUniMainModule.fRetornaMaxPedidoUsuario(prUsuarioID : String): Integer;
var
  qQuery : TIBQuery;
begin
  qQuery := TIBQuery.Create(Owner);
  with qQuery do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;
    end;

  with qQuery do
    begin
      Close;
      SQL.Text := 'select coalesce(max(substring(codigo from 7 for 12)),0) as maximo from tbpedido';
      SQl.Add(' where deletado = ''N'' ');
      SQL.Add(' and usuario_i  = ''' + prUsuarioID + ''' ');
      Open;
    end;

  Result := qQuery.FieldByName('MAXIMO').AsInteger + 1;

  FreeAndNil(qQuery);
end;

function TUniMainModule.fEnviaEmailOrcamentoComercial(const AAssunto: string; const ADestino: string; const AAnexo: string; prOrcamentoID, prStatus: string): Boolean;
var
  vTotalItens          :double;
  vTotalPreco          :double;
  vTotalSubtotal       :double;

  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  vEmail               : String;
  vSenhaEmail          : String;

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin
  with Parametro do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE'' ';
      Open;
      vEmail := Parametro.FieldByName('CONTEUDO').AsString;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE_S'' ';
      Open;
      vSenhaEmail := Parametro.FieldByName('CONTEUDO').AsString;
    end;

    with qOrcamento do
      begin
        Close;
        SQL.Text := 'select';
        SQL.Add(' o.erp_representante, o.erp_representante_nome,');
        SQL.Add(' o.erp_vendedor, o.erp_vendedor_nome,');
        SQL.Add(' o.orcamento_id, o.emissao, o.pessoa_id, o.erp_codigo, o.entregar,');
        SQL.Add(' o.hora_emissao, o.cliente, o.cli_endereco, o.cli_bairro,');
        SQL.Add(' o.cli_cidade, o.cli_cep, o.cli_uf, o.cli_complemento, o.cli_telefone, o.cli_tipo,');
        SQL.Add(' o.cli_cpfcnpj, o.cli_ie, o.ent_erp_codigo, o.ent_contato, o.ent_endereco, o.ent_bairro,');
        SQL.Add(' o.ent_cidade, o.ent_cep, o.ent_uf, o.ent_complemento, o.ent_telefone, o.ent_cpfcnpj,');
        SQL.Add(' o.ent_ie, o.erp_condpagto, o.condpagto_id, o.condpagto, o.vr_contabil,o.data_inc, o.usuario_i,');
        SQL.Add(' o.usuarionome_i, o.empresa_id, o.status, o.obs, i.status, i.item, i.produto, i.quantidade, i.valor, i.subtotal,');
        SQL.Add(' i.valor_final, i.subtotal_final, i.quantidade_final,');
        SQL.Add(' i.status as status_item, o.codigo');
        SQL.Add(' from tborcamento o');
        SQL.Add(' inner join tborcamento_item i on i.orcamento_id = o.orcamento_id and i.deletado = ''N'' ');
        SQL.Add(' where o.deletado = ''N'' ');

        SQL.Add(' and o.orcamento_id = ''' + prOrcamentoID + ''' ');

        if prStatus <> 'Todos' then
          begin
            SQL.Add(' and i.status like ''' + prStatus + '%'' ');
            SQL.Add(' and i.status not in (''Reprovado'',''Reprovado Parcial'',''Cancelado'')');
          end;

        SQL.Add(' order by o.orcamento_id, i.item');

        Open;
      end;

    vTotalItens    := 0;
    vTotalPreco    := 0;
    vTotalSubtotal := 0;

    sHost          :='smtp.farmace.com.br';
    iPort          :=465;

   try
    try
      //Configura os parâmetros necessários para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode  := sslmClient;

      //Variável referente a mensagem
      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'SAC - FARMACE';
      idMsg.From.Address               := vEmail;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;

      //Add Destinatário(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;

      //Variável do texto
      IdText := TIdText.Create(idMsg.MessageParts);
      IdText.Body.Add('<html>');

      IdText.Body.Add('<head>');
      IdText.Body.Add('<link rel="stylesheet" type="text/css" '+
      'href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u">');
      IdText.Body.Add('</head>');

      IdText.Body.Add('<body>');
      idText.Body.Add('<img src="https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/12019185122/original/1Tsfmwb6Jl2oFV2n1VPPq95aaXgxdvM8TA.png?1495211856"/>');
      IdText.Body.Add('<h3><font color=''00A9C7''>');
      IdText.Body.Add('Orçamento - ['+ qOrcamento.FieldByName('ORCAMENTO_ID').AsString+'] - ' +
                      qOrcamento.FieldByName('STATUS').asstring);
      IdText.Body.Add('</font></h3> <br>');


      IdText.Body.Add('<div class="container" style="font-size: 11px; font-family: verdana;">');
      IdText.Body.Add('<p>O cliente '+ qOrcamento.FieldByName('CLIENTE').asstring +' gerou um novo orçamento. <br><br>');
      IdText.Body.Add('Segue em anexo o orçamento</p><br><br>');

      IdText.Body.Add('<p><b>Orçamento ID: '+ qOrcamento.FieldByName('ORCAMENTO_ID').AsString + '</b><br>');
      IdText.Body.Add('Emissao: ' + qOrcamento.FieldByName('EMISSAO').AsString + '<br>');
      IdText.Body.Add('<b>Total: R$ ' +formatfloat('###,###,###,###,##0.00', qOrcamento.FieldByName('VR_CONTABIL').AsCurrency) + '</b></p>');

      IdText.Body.Add('<hr>');
      IdText.Body.Add('<p>Cliente: '+ qOrcamento.FieldByName('CLIENTE').AsString +'<br>');

      IdText.Body.Add('CNPJ: '+ qOrcamento.FieldByName('CLI_CPFCNPJ').AsString +'<br>');

      IdText.Body.Add('Endereço:'+ qOrcamento.FieldByName('CLI_ENDERECO').AsString +
                      ', '+ qOrcamento.FieldByName('CLI_BAIRRO').AsString +
                      ', '+ qOrcamento.FieldByName('CLI_CIDADE').AsString +
                      '-'+ qOrcamento.FieldByName('CLI_UF').AsString +'<br>');

      IdText.Body.Add('Telefone: '+ qOrcamento.FieldByName('CLI_TELEFONE').AsString +'<br>');

      IdText.Body.Add('Tipo: '+ qOrcamento.FieldByName('CLI_TIPO').AsString +'<br>');
      IdText.Body.Add('<hr></p>');

      IdText.Body.Add('<p>Observação: <br>');
      IdText.Body.Add(qOrcamento.FieldByName('OBS').AsString +'<br>');
      IdText.Body.Add('<hr></p>');

      IdText.Body.Add('</div>');

      IdText.Body.Add('<div class="container">');

	    IdText.Body.Add('<table class="table table-sm" style="font-size: 11px; font-family: verdana;">');

		  IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Item</th>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Produto</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Quantidade</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Preço</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Total</th>');
			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

      qOrcamento.First;
      while not qOrcamento.Eof do
        begin
          IdText.Body.Add('<tr>');
          IdText.Body.Add('<td style="text-align: left;">'+qOrcamento.FieldByName('ITEM').AsString+'</td>');
          IdText.Body.Add('<td style="text-align: left;">'+qOrcamento.FieldByName('PRODUTO').AsString+'</td>');
          IdText.Body.Add('<td style="text-align: right;">'+qOrcamento.FieldByName('QUANTIDADE_FINAL').AsString+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.0000', qOrcamento.FieldByName('VALOR_FINAL').AsCurrency)+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.00', qOrcamento.FieldByName('SUBTOTAL_FINAL').AsCurrency)+'</td>');

          IdText.Body.Add('</tr>');

          vTotalItens    := vTotalItens    + qOrcamento.FieldByName('QUANTIDADE_FINAL').AsCurrency;
          vTotalPreco    := vTotalPreco    + qOrcamento.FieldByName('VALOR_FINAL').AsCurrency;
          vTotalSubtotal := vTotalSubtotal + qOrcamento.FieldByName('SUBTOTAL_FINAL').AsCurrency;

          qOrcamento.Next;
        end;

      IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<td scope="col" style="text-align: left;"></td>');
			IdText.Body.Add('<td scope="col" style="text-align: right;">Total dos Itens -></td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,###', vTotalItens)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
       FormatFloat('###,###,###,###,##0.0000', vTotalPreco)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,##0.00', vTotalSubtotal)+'</td>');

			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

	    IdText.Body.Add('</table>');
      IdText.Body.Add('</div>');

      IdText.Body.Add('</body>');
      IdText.Body.Add('</html>');
      IdText.ContentType := 'text/html; charset=iso-8859-1';

      //Prepara o Servidor
      IdSMTP                           := TIdSMTP.Create(Self);
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := sHost;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := iPort;
      IdSMTP.Username                  := vEmail;
      IdSMTP.Password                  := vSenhaEmail;

      //Conecta e Autentica
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      //Se a conexão foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
        begin
          try
            IdSMTP.Send(idMsg);
          except on E:Exception do
            begin
              //messageDLG('Erro ao tentar enviar: ' + E.Message);
            end;
          end;
        end;

      // Depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally
      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;
end;

function TUniMainModule.fEnviaEmailCadastroCliente(const AAssunto, ADestino, AAnexo: String): Boolean;
var
  vTotalItens          :double;
  vTotalPreco          :double;
  vTotalSubtotal       :double;

  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  vEmail               : String;
  vSenhaEmail          : String;

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin
  with Parametro do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE'' ';
      Open;
      vEmail := Parametro.FieldByName('CONTEUDO').AsString;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE_S'' ';
      Open;
      vSenhaEmail := Parametro.FieldByName('CONTEUDO').AsString;
    end;

  vTotalItens    := 0;
  vTotalPreco    := 0;
  vTotalSubtotal := 0;

  sHost          := 'smtp.farmace.com.br';
  iPort          := 465;

  try
    try
      //Configura os parâmetros necessários para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode  := sslmClient;

      //Variável referente a mensagem
      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'SAC - FARMACE';
      idMsg.From.Address               := vEmail;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;

      //Add Destinatário(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;

      //Variável do texto
      IdText := TIdText.Create(idMsg.MessageParts);
      IdText.Body.Add('<html>');

      IdText.Body.Add('<head>');
      IdText.Body.Add('<link rel="stylesheet" type="text/css" '+
      'href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u">');
      IdText.Body.Add('</head>');

      IdText.Body.Add('<body>');
      idText.Body.Add('<img src="https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/12019185122/original/1Tsfmwb6Jl2oFV2n1VPPq95aaXgxdvM8TA.png?1495211856"/>');
      IdText.Body.Add('<h3><font color=''00A9C7''>');
      IdText.Body.Add('Cadastro Nº ['+ qCliente.FieldByName('PESSOA_ID').AsString  + ']');
      IdText.Body.Add('</font></h3> <br>');


      IdText.Body.Add('<div class="container" style="font-size: 11px; font-family: verdana;">');
      IdText.Body.Add('<p>Prezado(a) '+ qCliente.FieldByName('NOME').asstring +', <br><br>');

      IdText.Body.Add('</div>');

      IdText.Body.Add('</body>');
      IdText.Body.Add('</html>');
      IdText.ContentType := 'text/html; charset=iso-8859-1';

      //Prepara o Servidor
      IdSMTP                           := TIdSMTP.Create(Self);
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := sHost;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := iPort;
      IdSMTP.Username                  := vEmail;
      IdSMTP.Password                  := vSenhaEmail;

      //Conecta e Autentica
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      //Se a conexão foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
        except on E:Exception do
          begin
            //messageDLG('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;

end;

function TUniMainModule.fEnviaEmailPedido(const AAssunto, ADestino,
  AAnexo: String): Boolean;
var
  vTotalItens          :double;
  vTotalPreco          :double;
  vTotalSubtotal       :double;

  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  vEmail               : String;
  vSenhaEmail          : String;

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;

  qDoc : TIBQuery;
begin
  with Parametro do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE'' ';
      Open;
      vEmail := Parametro.FieldByName('CONTEUDO').AsString;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE_S'' ';
      Open;
      vSenhaEmail := Parametro.FieldByName('CONTEUDO').AsString;
    end;

    vTotalItens    := 0;
    vTotalPreco    := 0;
    vTotalSubtotal := 0;

    sHost          := 'smtp.farmace.com.br';
    iPort          := 465;

  try
    try

      //Configura os parâmetros necessários para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode   := sslmClient;

      //Variável referente a mensagem
      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'SAC - FARMACE';
      idMsg.From.Address               := vEmail;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;

      //Add Destinatário(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;

      //Variável do texto
      IdText := TIdText.Create(idMsg.MessageParts);
      IdText.Body.Add('<html>');

      IdText.Body.Add('<head>');
      IdText.Body.Add('<link rel="stylesheet" type="text/css" '+
      'href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u">');
      IdText.Body.Add('</head>');

      IdText.Body.Add('<body>');
      idText.Body.Add('<img src="https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/12019185122/original/1Tsfmwb6Jl2oFV2n1VPPq95aaXgxdvM8TA.png?1495211856"/>');
      IdText.Body.Add('<h3><font color=''00A9C7''>');
      IdText.Body.Add('Pedido - ['+ qPedido.FieldByName('PEDIDO_ID').AsString  + '] -') ;
                      {qPedido.FieldByName('STATUS').asstring);}
      IdText.Body.Add('</font></h3> <br>');


      IdText.Body.Add('<div class="container" style="font-size: 11px; font-family: verdana;">');
      IdText.Body.Add('<p>Prezado(a) '+ qPedido.FieldByName('CLI_NOME').asstring +', <br><br>');
      IdText.Body.Add('Segue em anexo seu Pedido</p><br><br>');

      IdText.Body.Add('Texto</p><br><br>');

      IdText.Body.Add('<p><b>Pedido Nº: '+ qPedido.FieldByName('Pedido_ID').AsString + '</b><br>');
      IdText.Body.Add('Emissao: ' + qPedido.FieldByName('EMISSAO').AsString + '<br>');
      IdText.Body.Add('<b>Total: R$ ' +formatfloat('###,###,###,###,##0.00', qPedido.FieldByName('VALOR_PEDIDO').AsCurrency) + '</b></p>');

      IdText.Body.Add('<hr>');
      IdText.Body.Add('<p>Cliente: '+ qPedido.FieldByName('CLI_NOME').AsString +'<br>');

      IdText.Body.Add('CNPJ: '+ qPedido.FieldByName('CLI_CPFCNPJ').AsString +'<br>');

      IdText.Body.Add('Endereço:'+ qPedido.FieldByName('CLI_ENDERECO').AsString +
                      ', '+ qPedido.FieldByName('CLI_BAIRRO').AsString +
                      ', '+ qPedido.FieldByName('CLI_CIDADE').AsString +
                      '-'+ qPedido.FieldByName('CLI_UF').AsString +'<br>');

      IdText.Body.Add('Telefone: '+ qPedido.FieldByName('CLI_TELEFONE').AsString +'<br>');

      IdText.Body.Add('Tipo: '+ qPedido.FieldByName('CLI_TIPO').AsString +'<br>');
      IdText.Body.Add('<hr></p>');
      IdText.Body.Add('</div>');

      IdText.Body.Add('<div class="container">');

	    IdText.Body.Add('<table class="table table-sm" style="font-size: 11px; font-family: verdana;">');

		  IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Item</th>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Produto</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Quantidade</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Preço</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Total</th>');
			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

      qPedido.First;
      while not qPedido.Eof do
        begin
          IdText.Body.Add('<tr>');
          IdText.Body.Add('<td style="text-align: left;">'+qPedido.FieldByName('ITEM').AsString+'</td>');
          IdText.Body.Add('<td style="text-align: left;">'+qPedido.FieldByName('PRODUTO').AsString+'</td>');
          IdText.Body.Add('<td style="text-align: right;">'+qPedido.FieldByName('QUANTIDADE').AsString+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.0000', qPedido.FieldByName('Preco').AsCurrency)+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.00', qPedido.FieldByName('SUBTOTAL').AsCurrency)+'</td>');

          IdText.Body.Add('</tr>');

          vTotalItens    := vTotalItens    + qPedido.FieldByName('QUANTIDADE').AsCurrency;
          vTotalPreco    := vTotalPreco    + qPedido.FieldByName('PRECO').AsCurrency;
          vTotalSubtotal := vTotalSubtotal + qPedido.FieldByName('SUBTOTAL').AsCurrency;

          qPedido.Next;
        end;

      IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<td scope="col" style="text-align: left;"></td>');
			IdText.Body.Add('<td scope="col" style="text-align: right;">Total dos Itens -></td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,###', vTotalItens)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
       FormatFloat('###,###,###,###,##0.0000', vTotalPreco)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,##0.00', vTotalSubtotal)+'</td>');

			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

	    IdText.Body.Add('</table>');

      IdText.Body.Add('<br>');
      IdText.Body.Add('Observação: <br>');

      IdText.Body.Add(qPedido.FieldByName('OBS').AsWideString);

      IdText.Body.Add('</div>');

      qDoc := TIBQuery.Create(Owner);
      with qDoc do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select * from tbdoc where deletado = ''N'' ';
          SQL.Add(' and pedido_codigo = ''' + qPedido.FieldByName('CODIGO').AsString + ''' ');
          Open;
        end;

      if not qDoc.IsEmpty then
        begin
          IdText.Body.Add('Arquivos Enviados');
          IdText.Body.Add('<table class="table table-sm" style="font-size: 11px; font-family: verdana;">');

          IdText.Body.Add('<tr>');
          IdText.Body.Add('<thead>');
          IdText.Body.Add('<th scope="col" style="text-align: left;">.....</th>');
          IdText.Body.Add('<th scope="col" style="text-align: left;">Anexo(s)</th>');
          IdText.Body.Add('</thead>');
          IdText.Body.Add('</tr>');

          qDoc.First;
          while not qDoc.Eof do
            begin
              IdText.Body.Add('<tr>');
              IdText.Body.Add('<td style="text-align: left;">'+qDoc.FieldByName('ITEM').AsString+'</td>');
              IdText.Body.Add('<td style="text-align: left;">'+qDoc.FieldByName('NOME_ARQUIVO').AsString+'</td>');
              IdText.Body.Add('</tr>');

              qDoc.Next;
            end;
          IdText.Body.Add('</table>');
        end;

      IdText.Body.Add('</body>');
      IdText.Body.Add('</html>');
      IdText.ContentType := 'text/html; charset=iso-8859-1';

      //Prepara o Servidor
      IdSMTP                           := TIdSMTP.Create(Self);
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := sHost;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := iPort;
      IdSMTP.Username                  := vEmail;
      IdSMTP.Password                  := vSenhaEmail;

      //Conecta e Autentica
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      //Se a conexão foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
        except on E:Exception do
          begin
            //messageDLG('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
      FreeAndNil(qDoc);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;
end;

function TUniMainModule.fEnviaEmailPedidoUsuario(const AAssunto, ADestino,
  AAnexo: String): Boolean;
var
  vTotalItens          :double;
  vTotalPreco          :double;
  vTotalSubtotal       :double;

  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  vEmail               : String;
  vSenhaEmail          : String;

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
  qDOC : TIBQuery;
begin

  with Parametro do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE'' ';
      Open;
      vEmail := Parametro.FieldByName('CONTEUDO').AsString;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE_S'' ';
      Open;
      vSenhaEmail := Parametro.FieldByName('CONTEUDO').AsString;
    end;

    vTotalItens    := 0;
    vTotalPreco    := 0;
    vTotalSubtotal := 0;

    sHost          :='smtp.farmace.com.br';
    iPort          :=465;

   try
    try
      //Configura os parâmetros necessários para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode  := sslmClient;

      //Variável referente a mensagem
      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'SAC - FARMACE';
      idMsg.From.Address               := vEmail;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;

      //Add Destinatário(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;

      //Variável do texto
      IdText := TIdText.Create(idMsg.MessageParts);
      IdText.Body.Add('<html>');

      IdText.Body.Add('<head>');
      IdText.Body.Add('<link rel="stylesheet" type="text/css" '+
      'href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u">');
      IdText.Body.Add('</head>');

      IdText.Body.Add('<body>');
      idText.Body.Add('<img src="https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/12019185122/original/1Tsfmwb6Jl2oFV2n1VPPq95aaXgxdvM8TA.png?1495211856"/>');
      IdText.Body.Add('<h3><font color=''00A9C7''>');
      IdText.Body.Add('Pedido - ['+ qPedido.FieldByName('PEDIDO_ID').AsString  + '] -') ;
                      {qPedido.FieldByName('STATUS').asstring);}
      IdText.Body.Add('</font></h3> <br>');


      IdText.Body.Add('<div class="container" style="font-size: 11px; font-family: verdana;">');
      IdText.Body.Add('<p>Prezado(a) '+ qPedido.FieldByName('CLI_NOME').asstring +', <br><br>');
      IdText.Body.Add('Segue em anexo seu Pedido</p><br><br>');

      IdText.Body.Add('Texto do usuário</p><br><br>');

      IdText.Body.Add('<p><b>Pedido Nº: '+ qPedido.FieldByName('Pedido_ID').AsString + '</b><br>');
      IdText.Body.Add('Emissao: ' + qPedido.FieldByName('EMISSAO').AsString + '<br>');
      IdText.Body.Add('<b>Total: R$ ' +formatfloat('###,###,###,###,##0.00', qPedido.FieldByName('VALOR_PEDIDO').AsCurrency) + '</b></p>');

      IdText.Body.Add('<hr>');
      IdText.Body.Add('<p>Cliente: '+ qPedido.FieldByName('CLI_NOME').AsString +'<br>');

      IdText.Body.Add('CNPJ: '+ qPedido.FieldByName('CLI_CPFCNPJ').AsString +'<br>');

      IdText.Body.Add('Endereço:'+ qPedido.FieldByName('CLI_ENDERECO').AsString +
                      ', '+ qPedido.FieldByName('CLI_BAIRRO').AsString +
                      ', '+ qPedido.FieldByName('CLI_CIDADE').AsString +
                      '-'+ qPedido.FieldByName('CLI_UF').AsString +'<br>');

      IdText.Body.Add('Telefone: '+ qPedido.FieldByName('CLI_TELEFONE').AsString +'<br>');

      IdText.Body.Add('Tipo: '+ qPedido.FieldByName('CLI_TIPO').AsString +'<br>');
      IdText.Body.Add('<hr></p>');
      IdText.Body.Add('</div>');

      IdText.Body.Add('<div class="container">');

	    IdText.Body.Add('<table class="table table-sm" style="font-size: 11px; font-family: verdana;">');

		  IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Item</th>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Produto</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Quantidade</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Preço</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Total</th>');
			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

      qPedido.First;
      while not qPedido.Eof do
        begin
          IdText.Body.Add('<tr>');
          IdText.Body.Add('<td style="text-align: left;">'+qPedido.FieldByName('ITEM').AsString+'</td>');
          IdText.Body.Add('<td style="text-align: left;">'+qPedido.FieldByName('PRODUTO').AsString+'</td>');
          IdText.Body.Add('<td style="text-align: right;">'+qPedido.FieldByName('QUANTIDADE').AsString+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.0000', qPedido.FieldByName('Preco').AsCurrency)+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.00', qPedido.FieldByName('SUBTOTAL').AsCurrency)+'</td>');

          IdText.Body.Add('</tr>');

          vTotalItens    := vTotalItens    + qPedido.FieldByName('QUANTIDADE').AsCurrency;
          vTotalPreco    := vTotalPreco    + qPedido.FieldByName('PRECO').AsCurrency;
          vTotalSubtotal := vTotalSubtotal + qPedido.FieldByName('SUBTOTAL').AsCurrency;

          qPedido.Next;
        end;

      IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<td scope="col" style="text-align: left;"></td>');
			IdText.Body.Add('<td scope="col" style="text-align: right;">Total dos Itens -></td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,###', vTotalItens)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
       FormatFloat('###,###,###,###,##0.0000', vTotalPreco)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,##0.00', vTotalSubtotal)+'</td>');

			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

	    IdText.Body.Add('</table>');

      IdText.Body.Add('<br>');
      IdText.Body.Add('Observação: <br>');

      IdText.Body.Add(qPedido.FieldByName('OBS').AsWideString);

      qDoc := TIBQuery.Create(Owner);
      with qDoc do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select * from tbdoc where deletado = ''N'' ';
          SQL.Add(' and pedido_codigo = ''' + qPedido.FieldByName('CODIGO').AsString + ''' ');
          Open;
        end;

      if not qDoc.IsEmpty then
        begin
          IdText.Body.Add('Arquivos Enviados');
          IdText.Body.Add('<table class="table table-sm" style="font-size: 11px; font-family: verdana;">');

          IdText.Body.Add('<tr>');
          IdText.Body.Add('<thead>');
          IdText.Body.Add('<th scope="col" style="text-align: left;">.....</th>');
          IdText.Body.Add('<th scope="col" style="text-align: left;">Anexo(s)</th>');
          IdText.Body.Add('</thead>');
          IdText.Body.Add('</tr>');

          qDoc.First;
          while not qDoc.Eof do
            begin
              IdText.Body.Add('<tr>');
              IdText.Body.Add('<td style="text-align: left;">'+qDoc.FieldByName('ITEM').AsString+'</td>');
              IdText.Body.Add('<td style="text-align: left;">'+qDoc.FieldByName('NOME_ARQUIVO').AsString+'</td>');
              IdText.Body.Add('</tr>');

              qDoc.Next;
            end;
          IdText.Body.Add('</table>');
        end;

      IdText.Body.Add('</div>');

      IdText.Body.Add('</body>');
      IdText.Body.Add('</html>');
      IdText.ContentType := 'text/html; charset=iso-8859-1';

      //Prepara o Servidor
      IdSMTP                           := TIdSMTP.Create(Self);
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := sHost;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := iPort;
      IdSMTP.Username                  := vEmail;
      IdSMTP.Password                  := vSenhaEmail;

      //Conecta e Autentica
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      //Se a conexão foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
        except on E:Exception do
          begin
            //messageDLG('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
      FreeAndNil(qDOC);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;
end;

function TUniMainModule.fImagemGrid(prImage, prTitle: string): string;
begin
  // 04/04/2020 as 21h22min
  // Fonte: http://forums.unigui.com/index.php?/topic/4546-unidbgrid-picture-from-url/
  Result := '<div style="width: 20px;">' +
            '<img width="20px" height="20px" title="' + prTitle + '" src="img/' + prImage + '"/>' +
            '</div>';
end;

function TUniMainModule.fImagemTipoArquivo(prExtensao: string): string;
begin
  if Trim(prExtensao) <> '' then
    begin
      if Trim(prExtensao) = '.pdf' then
        begin
          Result := '<div style="width: 20px;">' +
                    '<img width="20px" height="20px" title="Tipo do Arquivo" src="img/pdf.png"/>' +
                    '</div>';
        end
      else
        begin
          if ((Trim(prExtensao) = '.doc') or (Trim(prExtensao) = '.docx')) then
            begin
              Result := '<div style="width: 20px;">' +
                        '<img width="20px" height="20px" title="Tipo do Arquivo" src="img/word.png"/>' +
                        '</div>';
            end
          else
            begin
              if ((Trim(prExtensao) = '.xls') or (Trim(prExtensao) = '.xlsx')) then
                begin
                  Result := '<div style="width: 20px;">' +
                            '<img width="20px" height="20px" title="Tipo do Arquivo" src="img/excel.png"/>' +
                            '</div>';
                end
              else
                begin
                  if ((Trim(prExtensao) = '.png') or (Trim(prExtensao) = '.jpg') or (Trim(prExtensao) = '.jpeg') or (Trim(prExtensao) = '.bmp')) then
                    begin
                      Result := '<div style="width: 20px;">' +
                                '<img width="20px" height="20px" title="Tipo do Arquivo" src="img/image.png"/>' +
                                '</div>';
                    end
                  else
                    begin
                      Result := '<div style="width: 20px;">' +
                                '<img width="20px" height="20px" title="Tipo do Arquivo" src="img/file-eye.png"/>' +
                                '</div>';
                    end;
                end;
            end;
        end;
    end;
end;

function TUniMainModule.fEnviaEmailOrcamento(const AAssunto: string; const ADestino: string; const AAnexo: string; prOrcamentoID, prStatus: string): Boolean;
var
  vTotalItens          :double;
  vTotalPreco          :double;
  vTotalSubtotal       :double;

  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  vEmail               : String;
  vSenhaEmail          : String;

  idMsg                : TIdMessage;
  IdText               : TIdText;
  idSMTP               : TIdSMTP;
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin
  with Parametro do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE'' ';
      Open;
      vEmail := Parametro.FieldByName('CONTEUDO').AsString;

      Close;
      SQL.Text := 'select parametro, conteudo from tbparametros where parametro = ''EMAIL_ORCAMENTO_DE_S'' ';
      Open;
      vSenhaEmail := Parametro.FieldByName('CONTEUDO').AsString;
    end;

    with qOrcamento do
      begin
        Close;
        SQL.Text := 'select';
        SQL.Add(' o.erp_representante, o.erp_representante_nome,');
        SQL.Add(' o.erp_vendedor, o.erp_vendedor_nome,');
        SQL.Add(' o.orcamento_id, o.emissao, o.pessoa_id, o.erp_codigo, o.entregar,');
        SQL.Add(' o.hora_emissao, o.cliente, o.cli_endereco, o.cli_bairro,');
        SQL.Add(' o.cli_cidade, o.cli_cep, o.cli_uf, o.cli_complemento, o.cli_telefone, o.cli_tipo,');
        SQL.Add(' o.cli_cpfcnpj, o.cli_ie, o.ent_erp_codigo, o.ent_contato, o.ent_endereco, o.ent_bairro,');
        SQL.Add(' o.ent_cidade, o.ent_cep, o.ent_uf, o.ent_complemento, o.ent_telefone, o.ent_cpfcnpj,');
        SQL.Add(' o.ent_ie, o.erp_condpagto, o.condpagto_id, o.condpagto, o.vr_contabil,o.data_inc, o.usuario_i,');
        SQL.Add(' o.usuarionome_i, o.empresa_id, o.status, o.obs, i.status, i.item, i.produto, i.quantidade, i.valor, i.subtotal,');
        SQL.Add(' i.valor_final, i.subtotal_final, i.quantidade_final,');
        SQL.Add(' i.status as status_item, o.codigo');
        SQL.Add(' from tborcamento o');
        SQL.Add(' inner join tborcamento_item i on i.orcamento_id = o.orcamento_id and i.deletado = ''N'' ');
        SQL.Add(' where o.deletado = ''N'' ');

        SQL.Add(' and o.orcamento_id = ''' + prOrcamentoID + ''' ');

        if prStatus <> 'Todos' then
          begin
            SQL.Add(' and i.status like ''' + prStatus + '%'' ');
            SQL.Add(' and i.status not in (''Reprovado'',''Reprovado Parcial'',''Cancelado'')');
          end;

        SQL.Add(' order by o.orcamento_id, i.item');

        Open;
      end;

    vTotalItens    := 0;
    vTotalPreco    := 0;
    vTotalSubtotal := 0;

    sHost          := 'smtp.farmace.com.br';
    iPort          := 465;
   try
    try

      //Configura os parâmetros necessários para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode   := sslmClient;

      //Variável referente a mensagem
      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'SAC - FARMACE';
      idMsg.From.Address               := vEmail;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;

      //Add Destinatário(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;

      //Variável do texto
      IdText := TIdText.Create(idMsg.MessageParts);
      IdText.Body.Add('<html>');

      IdText.Body.Add('<head>');
      IdText.Body.Add('<link rel="stylesheet" type="text/css" '+
      'href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u">');
      IdText.Body.Add('</head>');

      IdText.Body.Add('<body>');
      idText.Body.Add('<img src="https://s3.amazonaws.com/cdn.freshdesk.com/data/helpdesk/attachments/production/12019185122/original/1Tsfmwb6Jl2oFV2n1VPPq95aaXgxdvM8TA.png?1495211856"/>');
      IdText.Body.Add('<h3><font color=''00A9C7''>');
      IdText.Body.Add('Orçamento - ['+ qOrcamento.FieldByName('CODIGO').AsString+'] - ' +
                      qOrcamento.FieldByName('STATUS').asstring);
      IdText.Body.Add('</font></h3> <br>');

      IdText.Body.Add('<div class="container" style="font-size: 11px; font-family: verdana;">');
      IdText.Body.Add('Emissao: '     + qOrcamento.FieldByName('EMISSAO').AsString + '<br>');

      IdText.Body.Add('<p>Cliente: '+ qOrcamento.FieldByName('CLIENTE').AsString +'<br>');
      IdText.Body.Add('CPF/CNPJ: '  + qOrcamento.FieldByName('CLI_CPFCNPJ').AsString +'<br>');
      IdText.Body.Add('Endereço: '  + qOrcamento.FieldByName('CLI_ENDERECO').AsString +
                      ', '+ qOrcamento.FieldByName('CLI_BAIRRO').AsString +
                      ', '+ qOrcamento.FieldByName('CLI_CIDADE').AsString +
                      '-' + qOrcamento.FieldByName('CLI_UF').AsString +'<br>');
      IdText.Body.Add('Telefone: ' + qOrcamento.FieldByName('CLI_TELEFONE').AsString +'<br>');
      IdText.Body.Add('Tipo de Cliente: '+ qOrcamento.FieldByName('CLI_TIPO').AsString +'<br>');
      IdText.Body.Add('<br>Total do Orçamento: <b>R$ '+ FormatFloat('###,###,###,###,##0.00',qOrcamento.FieldByName('VR_CONTABIL').AsCurrency) +'<b><br><br>');
      IdText.Body.Add('</div>');

      IdText.Body.Add('<p>Observação: <br>');
      IdText.Body.Add(qOrcamento.FieldByName('OBS').AsString +'<br>');
      IdText.Body.Add('<hr></p>');

      IdText.Body.Add('<div class="container">');
	    IdText.Body.Add('<table class="table table-sm" style="font-size: 11px; font-family: verdana;">');

		  IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Item</th>');
			IdText.Body.Add('<th scope="col" style="text-align: left;">Produto</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Quantidade</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Preço</th>');
			IdText.Body.Add('<th scope="col" style="text-align: right;">Total</th>');
			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

      qOrcamento.First;
      while not qOrcamento.Eof do
        begin
          if ((qOrcamento.FieldByName('STATUS_ITEM').AsString = 'Reprovado') or
              (qOrcamento.FieldByName('STATUS_ITEM').AsString = 'Cancelado')) then
            IdText.Body.Add('<tr style = "color:red;text-decoration: line-through;">')
          else
            IdText.Body.Add('<tr>');

          IdText.Body.Add('<td style="text-align: left;">' + qOrcamento.FieldByName('ITEM').AsString    +'</td>');
          IdText.Body.Add('<td style="text-align: left;">' + qOrcamento.FieldByName('PRODUTO').AsString +'</td>');
          IdText.Body.Add('<td style="text-align: right;">'+ qOrcamento.FieldByName('QUANTIDADE_FINAL').AsString +'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.0000', qOrcamento.FieldByName('VALOR_FINAL').AsCurrency)+'</td>');

          IdText.Body.Add('<td style="text-align: right;">'+
            FormatFloat('###,###,###,###,##0.00', qOrcamento.FieldByName('SUBTOTAL_FINAL').AsCurrency)+'</td>');

          IdText.Body.Add('</tr>');

          vTotalItens    := vTotalItens    + qOrcamento.FieldByName('QUANTIDADE_FINAL').AsCurrency;
          vTotalPreco    := vTotalPreco    + qOrcamento.FieldByName('VALOR_FINAL').AsCurrency;
          vTotalSubtotal := vTotalSubtotal + qOrcamento.FieldByName('SUBTOTAL_FINAL').AsCurrency;

          qOrcamento.Next;
        end;

      IdText.Body.Add('<tr>');
			IdText.Body.Add('<thead>');
			IdText.Body.Add('<td scope="col" style="text-align: left;"></td>');
			IdText.Body.Add('<td scope="col" style="text-align: right;">Total dos Itens -></td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,###', vTotalItens)+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
       {FormatFloat('###,###,###,###,##0.0000', vTotalPreco)}''+'</td>');

			IdText.Body.Add('<td scope="col" style="text-align: right;">'+
      FormatFloat('###,###,###,###,##0.00', vTotalSubtotal)+'</td>');

			IdText.Body.Add('</thead>');
		  IdText.Body.Add('</tr>');

	    IdText.Body.Add('</table>');
      IdText.Body.Add('</div>');

      IdText.Body.Add('</body>');
      IdText.Body.Add('</html>');
      IdText.ContentType := 'text/html; charset=iso-8859-1';

      //Prepara o Servidor
      IdSMTP                           := TIdSMTP.Create(Self);
      IdSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      IdSMTP.UseTLS                    := utUseImplicitTLS;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Host                      := sHost;
      IdSMTP.AuthType                  := satDefault;
      IdSMTP.Port                      := iPort;
      IdSMTP.Username                  := vEmail;
      IdSMTP.Password                  := vSenhaEmail;

      //Conecta e Autentica
      IdSMTP.Connect;
      IdSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, AAnexo);

      //Se a conexão foi bem sucedida, envia a mensagem
      if IdSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
        except on E:Exception do
          begin
            //messageDLG('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if IdSMTP.Connected then
        IdSMTP.Disconnect;

      Result := True;
    finally

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;
end;

function TUniMainModule.fPerfilRotina(prUsuarioID, prRotina: string): Boolean;
begin
  with Perfil do
    begin
      Database    := IBDatabase1;
      Transaction := IBTransaction1;

      Close;
      SQL.Text := 'select';
      SQL.Add(' p.perfil_id,  p.rotina, u.usuario_id, p.acesso');
      SQL.Add(' from tbperfil_rotina p');
      SQL.Add(' inner join tbusuario u on u.perfil_id = p.perfil_id and u.deletado = ''N'' ');
      SQL.Add(' where p.deletado = ''N'' ');

      SQL.Add(' and u.usuario_id = ''' + prUsuarioID + ''' ');

      SQL.Add(' and p.rotina = ''' + prRotina + ''' ');

      Open;
    end;

  if Perfil.FieldByName('ACESSO').AsString <> 'S' then
    Result := False
  else
    Result := True;
end;

function TUniMainModule.fRetornaDataUltimoPreco(prERP_Cliente,
  prERP_Produto: String): String;
var
  vlQuerySIC   : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'select first 1';
      SQL.Add(' cast(i.data_alt as date) as ultima_compra');
      SQL.Add(' from tborcamento_item i inner join tborcamento o');
      SQL.Add(' on o.orcamento_id = i.orcamento_id and o.deletado = ''N'' ');
      SQL.Add(' where i.deletado = ''N'' ');
      SQL.Add(' and o.erp_codigo = ''' + prERP_Cliente + ''' ');
      SQL.Add(' and i.erp_produto = ''' + prERP_Produto + ''' ');
      SQL.Add(' and i.status = ''Aprovado'' ');
      SQL.Add(' order by i.data_alt desc');
      Open;
    end;

  Result := vlQuerySIC.FieldByName('ULTIMA_COMPRA').AsString;

  FreeAndNil(vlQuerySIC);
end;

function TUniMainModule.fRetornaUltimoPreco(prERP_Cliente,
  prERP_Produto: String): Currency;
var
  vlQuerySIC   : TIBQuery;
begin

  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Text := 'select first 1';
      SQL.Add(' i.valor_final as ultimo_preco');
      SQL.Add(' from tborcamento_item i inner join tborcamento o');
      SQL.Add(' on o.orcamento_id = i.orcamento_id and o.deletado = ''N'' ');
      SQL.Add(' where i.deletado  = ''N'' ');
      SQL.Add(' and o.erp_codigo  = ''' + prERP_Cliente + ''' ');
      SQL.Add(' and i.erp_produto = ''' + prERP_Produto + ''' ');
      SQL.Add(' and i.status = ''Aprovado'' ');
      SQL.Add(' order by i.data_alt desc');
      Open;
    end;

  Result := vlQuerySIC.FieldByName('ULTIMO_PRECO').AsCurrency;
  FreeAndNil(vlQuerySIC);
end;

procedure TUniMainModule.IBDatabase1AfterConnect(Sender: TObject);
begin
  with QR_PARAMETROEMAIL do
    begin
      Close;
      SQL.Text := 'select * from tbparametros where parametro = ''EMAIL_ORCAMENTO_PARA'' ';
      Open;
    end;

  vEmailPara := QR_PARAMETROEMAILCONTEUDO.AsString;

  with QR_PARAMETROEMAIL do
    begin
      Close;
      SQL.Text := 'select * from tbparametros where parametro = ''EMAIL_PEDIDO_PARA'' ';
      Open;
    end;

  vEmailParaPedido := QR_PARAMETROEMAILCONTEUDO.AsString;
end;

procedure TUniMainModule.LeIni(var Caminho, Usuario, Senha, Dataware: String);
begin
  with TMemIniFile.Create(UniServerModule.StartPath + '\BaseSIC.ini') do
    begin
      Caminho      := ReadString  ('SIC', 'Caminho' , Caminho);
      Usuario      := ReadString  ('SIC', 'Usuario' , Usuario);
      Senha        := ReadString  ('SIC', 'Senha'   , Senha);
      Dataware     := ReadString  ('SIC', 'Dataware', Dataware);
      Free;
    end;
end;

procedure TUniMainModule.pCapturaClienteID(prClienteID: String);
begin
with qCliente do
    begin
     Close;
     SQL.Text := 'select' ;
     SQL.Add(' p.pessoa_id, p.nome');
     SQL.Add(' from tbpessoas p');
     SQL.Add(' where p.pessoa_id = ''' + prClienteID + ''' ');
     Open;
    end;
end;

procedure TUniMainModule.pGeraRelatorio(prOrcamento, prStatus, prImprimir: String);
var
  AUrl : string;
begin
  with qOrcamento do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' o.erp_representante, o.erp_representante_nome,');
      SQL.Add(' o.erp_vendedor, o.erp_vendedor_nome,');
      SQL.Add(' o.orcamento_id, o.emissao, o.pessoa_id, o.erp_codigo, o.entregar,');
      SQL.Add(' o.hora_emissao, o.cliente, o.cli_endereco, o.cli_bairro,');
      SQL.Add(' o.cli_cidade, o.cli_cep, o.cli_uf, o.cli_complemento, o.cli_telefone, o.cli_tipo,');
      SQL.Add(' o.cli_cpfcnpj, o.cli_ie, o.ent_erp_codigo, o.ent_contato, o.ent_endereco, o.ent_bairro,');
      SQL.Add(' o.ent_cidade, o.ent_cep, o.ent_uf, o.ent_complemento, o.ent_telefone, o.ent_cpfcnpj,');
      SQL.Add(' o.ent_ie, o.erp_condpagto, o.condpagto_id, o.condpagto, o.vr_contabil,o.data_inc, o.usuario_i,');
      SQL.Add(' o.usuarionome_i, o.empresa_id, o.status, o.obs, i.status, i.item, i.produto, i.quantidade, i.valor, i.subtotal,');
      SQL.Add(' i.valor_final, i.subtotal_final, i.quantidade_final,');
      SQL.Add(' i.status as status_item, o.codigo');
      SQL.Add(' from tborcamento o');
      SQL.Add(' inner join tborcamento_item i on i.orcamento_id = o.orcamento_id and i.deletado = ''N'' ');
      SQL.Add(' where o.deletado = ''N'' ');

      SQL.Add(' and o.orcamento_id = ''' + prOrcamento + ''' ');

      if prStatus <> 'Todos' then
        begin
          SQL.Add(' and i.status like ''' + prStatus + '%'' ');
          SQL.Add(' and i.status not in (''Reprovado'',''Reprovado Parcial'',''Cancelado'')');
        end;

      SQL.Add(' order by o.orcamento_id, i.item');

      Open;
    end;

  DB_Orcamento.Close;
  DB_Orcamento.Open;

  with REL do
    begin
     EngineOptions.SilentMode := True;
      EngineOptions.EnableThreadSafe := True;
      EngineOptions.DestroyForms := False;
      EngineOptions.UseGlobalDataSetList := False;

      PrintOptions.ShowDialog    := False;
      ShowProgress               := False;
      PreviewOptions.AllowEdit   := False;

      frxPDFExport1.Background   := True;
      frxPDFExport1.ShowProgress := False;
      frxPDFExport1.ShowDialog   := False;

      frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', 'OrcamentoFarmace-'
        +qOrcamento.FieldByName('CODIGO').AsString + '-' +
         qOrcamento.FieldByName('STATUS').AsString + '-' + FormatDateTime('DDMMYYYYHHMMSS', Now), '', AUrl);
      frxPDFExport1.DefaultPath := '';

      PrepareReport;
      Export(frxPDFExport1);

      if prImprimir = 'S' then
        UniSession.AddJS('var newWin = window.open("'+AUrl+'","mywindow","width=800,height=600");newWin.moveTo((screen.width - 800) / 2, (screen.height - 600) / 2);' +
                          'if(!newWin || newWin.closed || typeof newWin.closed==''undefined'') '+
                           '{ alert(''Atenção, os pop-ups para esta página estão bloqueados!'');} ');
    end;
end;

procedure TUniMainModule.pGeraRelatorioPedido(prFiltros: TFiltrosPedidoOnline; prTipo, prLayout : string);
var
  AUrl : string;
begin
  if prLayout = 'Detalhado' then
    begin
      with qPedido do
        begin
          Close;
          SQL.Text := 'select';
          SQL.Add(' p.pedido_id, p.pedido_num, p.emissao, p.validade, p.hora,');
          SQL.Add(' p.valor_pedido, p.pessoa_id, p.erp_cliente, p.cli_nome, p.cli_endereco, p.cli_tipo,');
          SQL.Add(' p.cli_bairro, p.cli_cidade, p.cli_uf, p.cli_cep, p.cli_cpfcnpj,');
          SQL.Add(' p.cli_rgcgf, p.cli_telefone, p.usuario_id, p.processo, p.empenho,');
          SQL.Add(' p.obs, p.ent_nome, p.ent_endereco, p.ent_bairro, p.ent_cidade,');
          SQL.Add(' p.ent_uf, p.ent_cep, p.ent_telefone, p.erp_entrega, p.condpagto, p.erp_condpagto, p.condpagto_id,');
          SQL.Add(' p.impresso, p.situacao, p.data_situacao, p.hprint, p.processo, p.empenho, p.empenho_ano,');
          SQL.Add(' i.pedidoitem_id, i.pedido_id, i.produto_id, i.produto, i.quantidade,');
          SQL.Add(' i.preco, i.data, i.subtotal, i.item, p.status, p.entrega_pedido, i.status as status_item,');
          SQL.Add(' i.pessoa_id, i.usuario_id, i.erp_produto, p.codigo, p.erp_vendedor, p.erp_vendedor_nome, p.usuarionome_i ');
          SQL.Add(' from tbpedido p ');
          SQL.Add(' inner join tbpedido_item i on i.pedido_id = p.pedido_id and i.deletado = ''N'' ');

          SQL.Add(prFiltros.GetFiltros);

          SQL.Add(' order by p.pedido_id, i.item');

//          messagedlg(SQL.Text, mtinformation, [mbok]);

          Open;
        end;
    end
  else
    begin
      if prLayout = 'Resumido' then
        begin
          with qPedidoResumido do
            begin
              Close;
              SQL.Text := 'select';
              SQL.Add(' p.pedido_id, p.codigo, p.emissao,');
              SQL.Add(' p.cli_nome, p.cli_uf, p.cli_cpfcnpj,');
              SQL.Add(' p.valor_pedido, p.erp_vendedor_nome, p.erp_vendedor');
              SQL.Add(' from tbpedido p');

              SQL.Add(prFiltros.GetFiltros);

              SQL.Add(' order by p.erp_vendedor, p.pedido_id');

//              messagedlg(SQL.Text, mtinformation, [mbok]);

              Open;
            end;
        end
      else
        begin
          with qPedidoAgrupado do
            begin
              Close;
              SQL.Text := 'select';

              if prLayout = 'ResumidoCliente' then
                SQL.Add(' p.erp_cliente as campo, p.cli_nome as campo2,');

              if prLayout = 'ResumidoVendedor' then
                SQL.Add(' p.erp_vendedor  as campo, p.erp_vendedor_nome as campo2,');

              if prLayout = 'ResumidoProduto' then
                SQL.Add(' i.erp_produto as campo, i.produto as campo2,');

              SQL.Add(' c.erp_cliente as codigo, c.nome as descricao,');
              SQL.Add(' sum(i.quantidade) as quantidade, sum(i.subtotal) as total,');
              SQL.Add(' (sum(i.subtotal) / sum(i.quantidade)) as preco');

              SQL.Add(' from tbpedido p');
              SQL.Add(' inner join tbpedido_item i on i.pedido_id = p.pedido_id-- and i.deletado = ''N'' ');
              SQL.Add(' inner join tbcliente c on c.erp_cliente = p.erp_cliente');

              SQL.Add(prFiltros.GetFiltros);

              if prLayout = 'ResumidoCliente' then
                SQL.Add(' group by p.erp_cliente, p.cli_nome, c.erp_cliente, c.nome');

              if prLayout = 'ResumidoVendedor' then
                SQL.Add(' group by p.erp_vendedor, p.erp_vendedor_nome, c.erp_cliente, c.nome');

              if prLayout = 'ResumidoProduto' then
                SQL.Add(' group by i.erp_produto, i.produto, c.erp_cliente, c.nome');

//              messagedlg(SQL.Text, mtinformation, [mbok]);

              Open;
            end;
        end;
    end;

  with REL_Pedido do
    begin
      if prLayout = 'Detalhado' then
        begin
          Pages[1].Visible := True;
          Pages[2].Visible := False;
          Pages[3].Visible := False;
        end
      else
        begin
          if prLayout = 'Resumido' then
            begin
              Pages[1].Visible := False;
              Pages[2].Visible := True;
              Pages[3].Visible := False;
            end
          else
            begin
              Pages[1].Visible := False;
              Pages[2].Visible := False;
              Pages[3].Visible := True;
            end;
        end;

//      FindObject('MemoParametros') as TfrxMemoView).Memo.text := ('Layout: ' + prLayout);

//      messagedlg(qPedido.SQL.Text, mtinformation, [mbok]);

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

      if prTipo = 'Individual' then
        begin
          frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', 'PedidoFarmace-'
            + prFiltros.PedidoID + '-' + FormatDateTime('DDMMYYYYHHMMSS', Now), '', AUrl);
        end
      else
        begin
          frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', 'PedidosFarmace-'
            + FormatDateTime('DDMMYYYYHHMMSS', Now), '', AUrl);
        end;

      frxPDFExport1.DefaultPath := '';

      PrepareReport;
      Export(frxPDFExport1);

      UniSession.AddJS('var newWin = window.open("' + AUrl + '","mywindow","width=800,height=600");newWin.moveTo((screen.width - 800) / 2, (screen.height - 600) / 2);' +
                       'if(!newWin || newWin.closed || typeof newWin.closed==''undefined'') '+
                       '{ alert(''Atenção, os pop-ups para esta página estão bloqueados!'');} ');
    end;
end;

procedure TUniMainModule.pSalvaPedidoStatus(prPedidoID, prStatus, prMotivoID,
  prMotivo, prOBS, prLog: string);
begin
  with DS_PedidoStatus do
    begin
      Close;
      SelectSQL.Text := 'select * from tbpedido_status where pedidostatus_id = 0';
      Open;
    end;

  DS_PedidoStatus.Insert;

  DS_PedidoStatusPEDIDO_ID.AsString  := prPedidoID;
  DS_PedidoStatusSTATUS.AsString     := prStatus;
  DS_PedidoStatusMOTIVO_ID.AsString  := prMotivoID;
  DS_PedidoStatusMOTIVO.AsString     := prMotivo;
  DS_PedidoStatusOBS.AsString        := prOBS;
  DS_PedidoStatusDATA.AsDateTime     := Now;
  DS_PedidoStatusUSUARIO_ID.AsString := UniMainModule.vUsuarioID;
  DS_PedidoStatusUSUARIO.AsString    := UniMainModule.vUsuario;
  DS_PedidoStatusDELETADO.AsString   := 'N';

  DS_PedidoStatus.Post;
  DS_PedidoStatus.Transaction.CommitRetaining;
end;

procedure TUniMainModule.RELGetValue(const VarName: string; var Value: Variant);
begin
  if VarName = 'USUARIO' then
    Value := vUsuario;
end;

procedure TUniMainModule.REL_PedidoGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'CATEGORIA' then
    Value := qPedido.FieldByName('CLI_TIPO').AsString;

  if VarName = 'USUARIO' then
    Value := UniMainModule.vUsuario;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  caminho, usuario, senha : string;
begin
  with IBDatabase1 do
    begin
      Connected := False;
      IBTransaction1.Active := False;

      LeIni(caminho,usuario,senha,vDataware);

      DatabaseName := caminho;
      Params.Clear;
      Params.Add('user_name=' + usuario);
      Params.Add('password='  + senha);
      Params.Add('lc_ctype=WIN1252');
      SQLDialect := 3;

      try
        Connected  := True;
        IBTransaction1.Active := True;
      except on ex : exception do
        begin
          //MessageDlgN('Erro ao conectar a base de dados! ('+ex.Message+')', mtWarning, [mbOK], 0);
          Close;
        end;
      end;
    end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
