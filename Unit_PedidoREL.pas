unit Unit_PedidoREL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniLabel, uniEdit, uniGUIBaseClasses,
  uniDateTimePicker, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, uniMemo, uniMultiItem,
  uniComboBox, uniHTMLFrame, uniBitBtn, uniPanel, uniScreenMask;

type
  TForm_PedidoREL = class(TUniForm)
    DI: TUniDateTimePicker;
    DF: TUniDateTimePicker;
    Edit_PedidoI: TUniEdit;
    Edit_PedidoF: TUniEdit;
    Edit_PesqCliente: TUniEdit;
    Edit_Cliente: TUniEdit;
    Edit_PesqVendedor: TUniEdit;
    Edit_Vendedor: TUniEdit;
    Edit_PesqUsuario: TUniEdit;
    Edit_Usuario: TUniEdit;
    Edit_PesqProduto: TUniEdit;
    Edit_Produto: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    btn_Cliente: TUniButton;
    btn_Vendedor: TUniButton;
    btn_Usuario: TUniButton;
    btn_Produto: TUniButton;
    QR_PEDIDO: TIBQuery;
    QR_PEDIDOPEDIDOS: TWideMemoField;
    ComboBox_UF: TUniComboBox;
    Panel_Bottom: TUniPanel;
    btn_Visualizar: TUniBitBtn;
    btn_Auditoria: TUniBitBtn;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    ComboBox_Layout: TUniComboBox;
    UniLabel12: TUniLabel;
    UniScreenMask1: TUniScreenMask;
    procedure btn_ClienteClick(Sender: TObject);
    procedure Edit_PesqClienteChange(Sender: TObject);
    procedure Edit_PesqClienteExit(Sender: TObject);
    procedure btn_ProdutoClick(Sender: TObject);
    procedure Edit_PesqProdutoChange(Sender: TObject);
    procedure Edit_PesqProdutoExit(Sender: TObject);
    procedure btn_UsuarioClick(Sender: TObject);
    procedure Edit_PesqUsuarioChange(Sender: TObject);
    procedure Edit_PesqUsuarioExit(Sender: TObject);
    procedure Edit_PesqVendedorChange(Sender: TObject);
    procedure Edit_PesqVendedorExit(Sender: TObject);
    procedure btn_VendedorClick(Sender: TObject);
    procedure btn_AuditoriaClick(Sender: TObject);
    procedure btn_VisualizarClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form_PedidoREL: TForm_PedidoREL;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_Busca_Cliente, Unit_Busca_Produto,
  Unit_Busca_Usuario, ServerModule, Unit_Busca_Vendedor, UFiltrosPedidoOnline;

function Form_PedidoREL: TForm_PedidoREL;
begin
  Result := TForm_PedidoREL(UniMainModule.GetFormInstance(TForm_PedidoREL));
end;

procedure TForm_PedidoREL.btn_ProdutoClick(Sender: TObject);
begin
  Form_Busca_Produto.ShowModal;
  if Form_Busca_Produto.ModalResult = mrOk then
    begin
      Edit_PesqProduto.Text := Trim(Form_Busca_Produto.QR_PRODUTOREFERENCIA.AsString);
      Edit_Produto.Text     := Trim(Form_Busca_Produto.QR_PRODUTODESCRICAO.AsString);
    end;
end;

procedure TForm_PedidoREL.btn_UsuarioClick(Sender: TObject);
begin
  Form_Busca_Usuario.ShowModal;
  if Form_Busca_Usuario.ModalResult = mrOk then
    begin
      Edit_PesqUsuario.Text := Trim(Form_Busca_Usuario.QR_USUARIOUSUARIO_ID.AsString);
      Edit_Usuario.Text     := Trim(Form_Busca_Usuario.QR_USUARIONOME.AsString);
    end;
end;

procedure TForm_PedidoREL.btn_VendedorClick(Sender: TObject);
begin
  Form_Busca_Vendedor.ShowModal;
  if Form_Busca_Vendedor.ModalResult = mrOk then
    begin
      Edit_PesqVendedor.Text := Trim(Form_Busca_Vendedor.QR_VENDEDORERP_VENDEDOR.AsString);
      Edit_Vendedor.Text     := Trim(Form_Busca_Vendedor.QR_VENDEDORNOME.AsString);
    end;
end;

procedure TForm_PedidoREL.Edit_PesqClienteChange(Sender: TObject);
begin
  if Trim(Edit_PesqCliente.Text) = '' then
    Edit_Cliente.Clear;
end;

procedure TForm_PedidoREL.Edit_PesqClienteExit(Sender: TObject);
var
  vlQuery : TIBQuery;
begin
  if Trim(Edit_PesqCliente.Text) <> '' then
    begin
      vlQuery := TIBQuery.Create(Owner);
      with vlQuery do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select';
          SQL.Add(' c.erp_cliente, c.nome from tbcliente c');
          SQL.Add(' where c.deletado = ''N'' ');
          SQL.Add(' and c.erp_cliente  = ''' + Trim(Edit_PesqCliente.Text) + ''' ');

          if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'CLI_FULL') = False then
            SQL.Add(' and c.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

          Open;
        end;

      if not vlQuery.IsEmpty then
        begin
          Edit_PesqCliente.Text := vlQuery.FieldByName('ERP_CLIENTE').AsString;
          Edit_Cliente.Text     := vlQuery.FieldByName('NOME').AsString;
        end
      else
        begin
          MessageDlg('Cliente não encontrado! Tente novamente', mtinformation, [mbok]);
          Edit_PesqCliente.SetFocus;
          Edit_PesqCliente.Clear;
          Edit_Cliente.Clear;
        end;

      vlQuery.Free;
    end;
end;

procedure TForm_PedidoREL.Edit_PesqProdutoChange(Sender: TObject);
begin
  if Trim(Edit_PesqProduto.Text) = '' then
    Edit_Produto.Clear;
end;

procedure TForm_PedidoREL.Edit_PesqProdutoExit(Sender: TObject);
var
  vlQuery : TIBQuery;
begin
  if Trim(Edit_PesqProduto.Text) <> '' then
    begin
      vlQuery := TIBQuery.Create(Owner);
      with vlQuery do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select';
          SQL.Add(' p.referencia, p.descricao from tbprodutos p');
          SQL.Add(' where p.deletado = ''N'' ');
          SQL.Add(' and p.referencia  = ''' + Trim(Edit_PesqProduto.Text) + ''' ');
          Open;
        end;

      if not vlQuery.IsEmpty then
        begin
          Edit_PesqProduto.Text := vlQuery.FieldByName('REFERENCIA').AsString;
          Edit_Produto.Text     := vlQuery.FieldByName('DESCRICAO').AsString;
        end
      else
        begin
          MessageDlg('Produto não encontrado! Tente novamente', mtinformation, [mbok]);
          Edit_PesqProduto.SetFocus;
          Edit_PesqProduto.Clear;
          Edit_Produto.Clear;
        end;

      vlQuery.Free;
    end;
end;

procedure TForm_PedidoREL.Edit_PesqUsuarioChange(Sender: TObject);
begin
  if Trim(Edit_PesqUsuario.Text) = '' then
    Edit_Usuario.Clear;
end;

procedure TForm_PedidoREL.Edit_PesqUsuarioExit(Sender: TObject);
var
  vlQuery : TIBQuery;
begin
  if Trim(Edit_PesqUsuario.Text) <> '' then
    begin
      vlQuery := TIBQuery.Create(Owner);
      with vlQuery do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select';
          SQL.Add(' u.usuario_id, u.nome from tbusuario u');
          SQL.Add(' where u.deletado = ''N'' ');
          SQL.Add(' and u.usuario_id  = ''' + Trim(Edit_PesqUsuario.Text) + ''' ');
          Open;
        end;

      if not vlQuery.IsEmpty then
        begin
          Edit_PesqUsuario.Text := vlQuery.FieldByName('USUARIO_ID').AsString;
          Edit_Usuario.Text     := vlQuery.FieldByName('NOME').AsString;
        end
      else
        begin
          MessageDlg('Usuário não encontrado! Tente novamente', mtinformation, [mbok]);
          Edit_PesqUsuario.SetFocus;
          Edit_PesqUsuario.Clear;
          Edit_Usuario.Clear;
        end;

      vlQuery.Free;
    end;
end;

procedure TForm_PedidoREL.Edit_PesqVendedorChange(Sender: TObject);
begin
  if Trim(Edit_PesqVendedor.Text) = '' then
    Edit_Vendedor.Clear;
end;

procedure TForm_PedidoREL.Edit_PesqVendedorExit(Sender: TObject);
var
  vlQuery : TIBQuery;
begin
  if Trim(Edit_PesqVendedor.Text) <> '' then
    begin
      vlQuery := TIBQuery.Create(Owner);
      with vlQuery do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;
          Close;
          SQL.Text := 'select';
          SQL.Add(' v.erp_vendedor, v.nome from tbvendedor v');
          SQL.Add(' where v.deletado = ''N'' ');
          SQL.Add(' and v.erp_vendedor = ''' + Trim(Edit_PesqVendedor.Text) + ''' ');
          Open;
        end;

      if not vlQuery.IsEmpty then
        begin
          Edit_PesqVendedor.Text := vlQuery.FieldByName('ERP_VENDEDOR').AsString;
          Edit_Vendedor.Text     := vlQuery.FieldByName('NOME').AsString;
        end
      else
        begin
          MessageDlg('Vendedor não encontrado! Tente novamente', mtinformation, [mbok]);
          Edit_PesqVendedor.SetFocus;
          Edit_PesqVendedor.Clear;
          Edit_Vendedor.Clear;
        end;

      vlQuery.Free;
    end;
end;

procedure TForm_PedidoREL.UniFormCreate(Sender: TObject);
begin
  DI.Text := FormatDateTime('01/MM/YYYY', Date);
  DF.DateTime := Date;
end;

procedure TForm_PedidoREL.UniFormShow(Sender: TObject);
begin
  if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
    begin
      Edit_PesqVendedor.Text    := UniMainModule.vVendedorID;
      Edit_Vendedor.Text        := UniMainModule.vVendedorNome;
      Edit_PesqUsuario.Text     := UniMainModule.vUsuarioID;
      Edit_Usuario.Text         := UniMainModule.vUsuario;

      Edit_PesqVendedor.Enabled := False;
      Edit_Vendedor.Enabled     := False;
      Edit_PesqUsuario.Enabled  := False;
      Edit_Usuario.Enabled      := False;
      btn_Vendedor.Enabled      := False;
      btn_Usuario.Enabled       := False;
    end;
end;

procedure TForm_PedidoREL.btn_AuditoriaClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_PedidoREL.btn_ClienteClick(Sender: TObject);
begin
  Form_Busca_Cliente.ShowModal;
  if Form_Busca_Cliente.ModalResult = mrOk then
    begin
      Edit_PesqCliente.Text := Trim(Form_Busca_Cliente.QR_CLIENTEERP_CLIENTE.AsString);
      Edit_Cliente.Text     := Trim(Form_Busca_Cliente.QR_CLIENTENOME.AsString);
    end;
end;

procedure TForm_PedidoREL.btn_VisualizarClick(Sender: TObject);
var
  vFiltros: TFiltrosPedidoOnline;
begin
    btn_Visualizar.ScreenMask.Enabled := True;
    btn_Visualizar.ScreenMask.Message := 'Aguarde, gerando relatório...';
    btn_Visualizar.Enabled := False;

  try
    vFiltros               := TFiltrosPedidoOnline.Create;
    vFiltros.PedidoID      := Trim(Edit_PedidoI.Text);
    vFiltros.PedidoI       := Trim(Edit_PedidoI.Text);
    vFiltros.PedidoF       := Trim(Edit_PedidoF.Text);
//    vFiltros.ClienteID     := Trim(Form_Busca_Cliente.QR_CLIENTECLIENTE_ID.AsString);
    vFiltros.ErpCliente    := Trim(Edit_PesqCliente.Text);
    vFiltros.ErpVendedor   := Trim(Edit_PesqVendedor.Text);
    vFiltros.UsuarioID     := Trim(Edit_PesqUsuario.Text);
//    vFiltros.ProdutoID     := Trim(Form_Busca_Produto.QR_PRODUTOPRODUTO_ID.AsString);
    vFiltros.ErpProduto    := Trim(Edit_PesqProduto.Text);
    vFiltros.UF            := ComboBox_UF.Text;
    vFiltros.DataInclusaoI := DI.DateTime;
    vFiltros.DataInclusaoF := DF.DateTime;

    if ComboBox_Layout.ItemIndex = 0 then
      UniMainModule.pGeraRelatorioPedido(vFiltros, 'Multiplo', 'Detalhado');

    if ComboBox_Layout.ItemIndex = 1 then
      UniMainModule.pGeraRelatorioPedido(vFiltros, 'Multiplo', 'Resumido');

    if ComboBox_Layout.ItemIndex = 2 then
      UniMainModule.pGeraRelatorioPedido(vFiltros, 'Multiplo', 'ResumidoCliente');

    if ComboBox_Layout.ItemIndex = 3 then
      UniMainModule.pGeraRelatorioPedido(vFiltros, 'Multiplo', 'ResumidoVendedor');

    if ComboBox_Layout.ItemIndex = 4 then
      UniMainModule.pGeraRelatorioPedido(vFiltros, 'Multiplo', 'ResumidoProduto');

  finally
    vFiltros.Free;
  end;

  btn_Visualizar.ScreenMask.Enabled := False;
  btn_Visualizar.Enabled := True;

end;

end.
