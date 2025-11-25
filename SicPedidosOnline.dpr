program SicPedidosOnline;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Unit_Login in 'Unit_Login.pas' {Form_Login: TUniLoginForm},
  Unit_Pedido in 'Unit_Pedido.pas' {Form_Pedido: TUniForm},
  Unit_Busca_Cliente in 'Busca\Unit_Busca_Cliente.pas' {Form_Busca_Cliente: TUniForm},
  Unit_Busca_EndEntrega in 'Busca\Unit_Busca_EndEntrega.pas' {Form_Busca_EndEntrega: TUniForm},
  Unit_BuscaPedido in 'Busca\Unit_BuscaPedido.pas' {Form_BuscaPedido: TUniForm},
  Unit_BuscaItensPedido in 'Busca\Unit_BuscaItensPedido.pas' {Form_BuscaItensPedido: TUniForm},
  Unit_Busca_CondPagto in 'Busca\Unit_Busca_CondPagto.pas' {Form_Busca_CondPagto: TUniForm},
  Unit_Orcamento in 'Unit_Orcamento.pas' {Form_Orcamento: TUniForm},
  Unit_BuscaOrcamento in 'Busca\Unit_BuscaOrcamento.pas' {Form_BuscaOrcamento: TUniForm},
  Unit_BuscaItensOrcamento in 'Busca\Unit_BuscaItensOrcamento.pas' {Form_BuscaItensOrcamento: TUniForm},
  Unit_Aprovar in 'Unit_Aprovar.pas' {Form_Aprovar: TUniForm},
  Unit_Busca_Produto in 'Busca\Unit_Busca_Produto.pas' {Form_Busca_Produto: TUniForm},
  Unit_Busca_Orcamento_Item_Preco in 'Busca\Unit_Busca_Orcamento_Item_Preco.pas' {Form_Busca_Orcamento_Item_Preco: TUniForm},
  Unit_Orcamento_Auditoria in 'Unit_Orcamento_Auditoria.pas' {Form_Orcamento_Auditoria: TUniForm},
  Unit_Pedido_Status in 'Unit_Pedido_Status.pas' {Form_Pedido_Status: TUniForm},
  Unit_Busca_Tabela in 'Busca\Unit_Busca_Tabela.pas' {Form_Busca_Tabela: TUniForm},
  Unit_PedidoREL in 'Unit_PedidoREL.pas' {Form_PedidoREL: TUniForm},
  Unit_Busca_Usuario in 'Busca\Unit_Busca_Usuario.pas' {Form_Busca_Usuario: TUniForm},
  Unit_Busca_Vendedor in 'Busca\Unit_Busca_Vendedor.pas' {Form_Busca_Vendedor: TUniForm},
  Biblioteca in 'Biblioteca.pas',
  UFiltrosPedidoOnline in 'UFiltrosPedidoOnline.pas',
  Unit_Pedido_Auditoria in 'Unit_Pedido_Auditoria.pas' {Form_Pedido_Auditoria: TUniForm},
  Unit_Busca_DOC in 'Busca\Unit_Busca_DOC.pas' {Form_Busca_Doc: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
