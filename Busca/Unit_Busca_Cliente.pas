unit Unit_Busca_Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery, uniBitBtn;

type
  TForm_Busca_Cliente = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    QR_CLIENTE: TIBQuery;
    QR_CLIENTECLIENTE_ID: TIntegerField;
    QR_CLIENTEERP_CLIENTE: TIBStringField;
    QR_CLIENTENOME: TIBStringField;
    QR_CLIENTECIDADE_ID: TIntegerField;
    QR_CLIENTECIDADE: TIBStringField;
    QR_CLIENTEUF: TIBStringField;
    QR_CLIENTEBAIRRO: TIBStringField;
    QR_CLIENTECEP: TIBStringField;
    QR_CLIENTECPFCNPJ: TIBStringField;
    QR_CLIENTETELEFONE: TIBStringField;
    QR_CLIENTEEMAIL: TIBStringField;
    QR_CLIENTECOMPRA_ULTIMA: TDateField;
    QR_CLIENTECOMPRA_NUMERO: TIntegerField;
    QR_CLIENTETIPOCLIENTE_ID: TIntegerField;
    QR_CLIENTETIPOCLIENTE: TIBStringField;
    QR_CLIENTETIPOPESSOA: TIBStringField;
    QR_CLIENTEENDERECO: TIBStringField;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    Label_Pedido: TUniLabel;
    UniLabel11: TUniLabel;
    QR_CLIENTECOMPLEMENTO: TIBStringField;
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure Edit_PesqChange(Sender: TObject);
    procedure Edit_PesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_PesqKeyPress(Sender: TObject; var Key: Char);
  private
    Campo : String;
  public

  end;

function Form_Busca_Cliente: TForm_Busca_Cliente;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_Cliente: TForm_Busca_Cliente;
begin
  Result := TForm_Busca_Cliente(UniMainModule.GetFormInstance(TForm_Busca_Cliente));
end;

procedure TForm_Busca_Cliente.Edit_PesqChange(Sender: TObject);
begin
  with QR_CLIENTE do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' c.cliente_id, c.erp_cliente, c.nome,  c.cidade_id, c.cidade,');
      SQL.Add(' c.uf, c.bairro, c.complemento, c.cep, c.cpfcnpj, c.telefone,');
      SQL.Add(' c.email, c.compra_ultima, c.compra_numero, c.tipocliente_id,');
      SQL.Add(' c.tipocliente, c.tipopessoa, c.endereco');
      SQL.Add(' from tbcliente c ');
      SQL.Add(' where c.deletado = ''N'' ');

      //if UniMainModule.vUsuario <> 'Admin' then
      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'CLI_FULL') = False then
        SQL.Add(' and c.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add(' and ((upper(c.nome) like upper(''' + Trim(Edit_Pesq.Text) + '%'')) or (c.cpfcnpj like ''' + Trim(Edit_Pesq.Text) + '%''))');

      Open;
    end;
end;

procedure TForm_Busca_Cliente.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_CLIENTE.Next;

  If Key = VK_UP Then
    QR_CLIENTE.Prior;
end;

procedure TForm_Busca_Cliente.Edit_PesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
    UniDBGrid1DblClick(Sender);
end;


procedure TForm_Busca_Cliente.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  Close;
end;

procedure TForm_Busca_Cliente.UniFormShow(Sender: TObject);
begin
  with QR_CLIENTE do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' c.cliente_id, c.erp_cliente, c.nome,  c.cidade_id, c.cidade,');
      SQL.Add(' c.uf, c.bairro, c.complemento, c.cep, c.cpfcnpj, c.telefone,');
      SQL.Add(' c.email, c.compra_ultima, c.compra_numero, c.tipocliente_id,');
      SQL.Add(' c.tipocliente, c.tipopessoa, c.endereco');
      SQL.Add(' from tbcliente c');
      SQL.Add(' where c.deletado = ''N'' ');

      //if UniMainModule.vUsuario <> 'Admin' then
      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'CLI_FULL') = False then
        SQL.Add(' and c.erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  Edit_Pesq.SetFocus;
end;

end.
