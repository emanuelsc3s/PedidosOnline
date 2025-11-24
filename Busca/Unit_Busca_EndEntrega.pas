unit Unit_Busca_EndEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery, uniBitBtn;

type
  TForm_Busca_EndEntrega = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    QR_ENTREGA: TIBQuery;
    QR_ENTREGAERP_CLIENTE: TIBStringField;
    QR_ENTREGANOME: TIBStringField;
    QR_ENTREGAUF: TIBStringField;
    QR_ENTREGATIPOCLIENTE_ID: TIntegerField;
    QR_ENTREGATIPOCLIENTE: TIBStringField;
    QR_ENTREGACIDADE: TIBStringField;
    QR_ENTREGABAIRRO: TIBStringField;
    QR_ENTREGACOMPLEMENTO: TIBStringField;
    QR_ENTREGACEP: TIBStringField;
    QR_ENTREGACPFCNPJ: TIBStringField;
    QR_ENTREGATELEFONE: TIBStringField;
    QR_ENTREGAEMAIL: TIBStringField;
    QR_ENTREGACOMPRA_ULTIMA: TDateField;
    QR_ENTREGACOMPRA_NUMERO: TIntegerField;
    QR_ENTREGATIPOPESSOA: TIBStringField;
    QR_ENTREGAENDERECO: TIBStringField;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    Label_Pedido: TUniLabel;
    UniLabel11: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
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

function Form_Busca_EndEntrega: TForm_Busca_EndEntrega;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_EndEntrega: TForm_Busca_EndEntrega;
begin
  Result := TForm_Busca_EndEntrega(UniMainModule.GetFormInstance(TForm_Busca_EndEntrega));
end;

procedure TForm_Busca_EndEntrega.Edit_PesqChange(Sender: TObject);
begin
  with QR_ENTREGA do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' e.erp_cliente, e.nome, e.uf, e.tipocliente_id, e.tipocliente,');
      SQL.Add(' e.cidade, e.bairro, e.complemento, e.cep,');
      SQL.Add(' e.cpfcnpj, e.telefone, e.email, e.compra_ultima, e.compra_numero,');
      SQL.Add(' e.tipopessoa, e.endereco');
      SQL.Add(' from tbcliente_entrega e where deletado = ''N'' ');
      SQL.Add(' and e.cliente_pri = ''' + UniMainModule.vClienteTotvsID + ''' ');

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add(' and e.nome like ''' + Trim(Edit_Pesq.Text) + '%'' ');
      Open;
    end;
end;

procedure TForm_Busca_EndEntrega.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_ENTREGA.Next;

  If Key = VK_UP Then
    QR_ENTREGA.Prior;
end;

procedure TForm_Busca_EndEntrega.Edit_PesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    UniDBGrid1DblClick(Sender);
end;

procedure TForm_Busca_EndEntrega.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  Close;
end;

procedure TForm_Busca_EndEntrega.UniFormCreate(Sender: TObject);
begin
  Coinitialize(Nil);
end;

procedure TForm_Busca_EndEntrega.UniFormShow(Sender: TObject);
begin
  if UniMainModule.vClienteTotvsID <> '' then
    begin
      with QR_ENTREGA do
        begin
          Close;
          SQL.Text := 'select';
          SQL.Add(' e.erp_cliente, e.nome, e.uf, e.tipocliente_id, e.tipocliente,');
          SQL.Add(' e.cidade, e.bairro, e.complemento, e.cep,');
          SQL.Add(' e.cpfcnpj, e.telefone, e.email, e.compra_ultima, e.compra_numero,');
          SQL.Add(' e.tipopessoa, e.endereco');
          SQL.Add(' from tbcliente_entrega e where deletado = ''N'' ');
          SQL.Add(' and e.cliente_pri = ''' + UniMainModule.vClienteTotvsID + ''' ');
          Open;
        end;
    end;
end;

end.
