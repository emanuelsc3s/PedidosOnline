unit UFiltrosPedidoOnline;

interface

uses
  System.SysUtils, System.Classes, System.Variants, Dialogs;

type
  TFiltrosPedidoOnline = class
  private
    FPedidoID:      string;
    FPedidoI:       string;
    FPedidoF:       string;
    FClienteID:     string;
    FErpCliente:    string;
    FVendedorID:    string;
    FErpVendedor:   string;
    FUsuarioID:     string;
    FProdutoID:     string;
    FErpProduto:    string;
    FUF:            string;
    FDataEmissaoI:  Variant;
    FDataEmissaoF:  Variant;
    FDataInclusaoI: Variant;
    FDataInclusaoF: Variant;

  public
    constructor Create;

    procedure Clear;
    function GetFiltros: string;

    property PedidoID:      string  read FPedidoID      write FPedidoID;
    property PedidoI:       string  read FPedidoI       write FPedidoI;
    property PedidoF:       string  read FPedidoF       write FPedidoF;
    property ClienteID:     string  read FClienteID     write FClienteID;
    property ErpCliente:    string  read FErpCliente    write FErpCliente;
    property VendedorID:    string  read FVendedorID    write FVendedorID;
    property ErpVendedor:   string  read FErpVendedor   write FErpVendedor;
    property UsuarioID:     string  read FUsuarioID     write FUsuarioID;
    property ProdutoID:     string  read FProdutoID     write FProdutoID;
    property ErpProduto:    string  read FErpProduto    write FErpProduto;
    property UF:            string  read FUF            write FUF;

    property EmissaoI:      Variant read FDataEmissaoI  write FDataEmissaoI;
    property EmissaoF:      Variant read FDataEmissaoF  write FDataEmissaoF;
    property DataInclusaoI: Variant read FDataInclusaoI write FDataInclusaoI;
    property DataInclusaoF: Variant read FDataInclusaoF write FDataInclusaoF;
  end;

implementation

uses MainModule;

constructor TFiltrosPedidoOnline.Create;
begin
  Clear;
end;

procedure TFiltrosPedidoOnline.Clear;
begin
  FPedidoID      := '';
  FPedidoI       := '';
  FPedidoF       := '';
  FClienteID     := '';
  FErpCliente    := '';
  FVendedorID    := '';
  FErpVendedor   := '';
  FUsuarioID     := '';
  FProdutoID     := '';
  FUF            := '';
  FDataEmissaoI  := Null;
  FDataEmissaoF  := Null;
  FDataInclusaoI := Null;
  FDataInclusaoF := Null;
end;

function TFiltrosPedidoOnline.GetFiltros: string;
var
  SQL: TStringList;
begin
  SQL := TStringList.Create;

  try
    SQL.Add(' where p.deletado = ''N'' ');

    if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
      SQL.Add(' and p.erp_vendedor = ''' + FErpVendedor + ''' ');

    if (Trim(FPedidoID) <> '')  then
      SQL.Add(' and p.pedido_id = ''' + Trim(FPedidoID) + ''' ');

    if ((Trim(FPedidoI) <> '') and (Trim(FPedidoF) <> '')) then
      SQL.Add(' and p.pedido_id between ''' + Trim(FPedidoI) + ''' and ''' + Trim(FPedidoF) + '''');

    if Trim(FErpCliente) <> '' then
      SQL.Add(' and p.erp_cliente = ''' + Trim(FErpCliente) + '''');

    if Trim(FErpVendedor) <> '' then
      SQL.Add(' and p.erp_vendedor = ''' + Trim(FErpVendedor) + '''');

    if Trim(FUsuarioID) <> '' then
      SQL.Add(' and p.usuario_i = ''' + Trim(FUsuarioID) + '''');

    if Trim(FProdutoID) <> '' then
      SQL.Add(' and i.erp_produto = ''' + Trim(FProdutoID) + '''');

    if ((FUF <> 'Todos') and (FUF <> '')) then
      SQL.Add(' and p.cli_uf = ''' + Trim(FUF) + ''' ');

    if not VarIsNull(FDataEmissaoI) then
      SQL.Add(' and p.emissao >= ''' + FormatDateTime('dd.mm.yyyy',FDataEmissaoI) + ''' ') ;

    if not VarIsNull(FDataEmissaoF) then
      SQL.Add(' and p.emissao <= ''' + FormatDateTime('dd.mm.yyyy',FDataEmissaoF) + ''' ') ;

    if not VarIsNull(FDataInclusaoI) then
      SQL.Add(' and cast(p.data_inc as date) >= ''' + FormatDateTime('dd.mm.yyyy',FDataInclusaoI) + ''' ') ;

    if not VarIsNull(FDataInclusaoF) then
      SQL.Add(' and cast(p.data_inc as date) <= ''' + FormatDateTime('dd.mm.yyyy',FDataInclusaoF) + ''' ') ;

    Result := SQL.Text;
  finally
    SQL.Free;
  end;
end;

end.

