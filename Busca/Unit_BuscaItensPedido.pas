unit Unit_BuscaItensPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery, uniBitBtn;

type
  TForm_BuscaItensPedido = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniButton1: TUniButton;
    qPedidoItem: TIBQuery;
    qPedidoItemITEM: TIBStringField;
    qPedidoItemPRODUTO: TIBStringField;
    qPedidoItemQUANTIDADE: TIBBCDField;
    qPedidoItemPRECO: TFloatField;
    qPedidoItemSUBTOTAL: TIBBCDField;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    Label_Pedido: TUniLabel;
    UniLabel11: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure Edit_PesqChange(Sender: TObject);
    procedure Edit_PesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Campo : String;
  public

  end;

function Form_BuscaItensPedido: TForm_BuscaItensPedido;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_BuscaItensPedido: TForm_BuscaItensPedido;
begin
  Result := TForm_BuscaItensPedido(UniMainModule.GetFormInstance(TForm_BuscaItensPedido));
end;

procedure TForm_BuscaItensPedido.Edit_PesqChange(Sender: TObject);
begin
    {if Edit_Pesq.Text <> '' then
    begin
      qSA1.Filtered := False;
      qSA1.Filter   := 'A1_NOME LIKE '''+ Edit_Pesq.Text +'%'' ';
      qSA1.Filtered := True;
    end
  else
    qSA1.Filtered := False;}
end;

procedure TForm_BuscaItensPedido.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    qPedidoItem.Next;

  If Key = VK_UP Then
    qPedidoItem.Prior;
end;

procedure TForm_BuscaItensPedido.UniFormCreate(Sender: TObject);
begin
  Coinitialize(Nil);
end;

procedure TForm_BuscaItensPedido.UniFormShow(Sender: TObject);
begin
  Label_Pedido.Caption := 'Itens do Pedido Nº ' + UniMainModule.vPedido_ID;
  with qPedidoItem do
    begin
      Close;
      SQL.Text := 'select item, erp_produto||''-''||produto as produto, quantidade, preco, subtotal';
      SQL.Add(' from tbpedido_item where pedido_id = ''' + UniMainModule.vPedido_ID + ''' ');
      Open;
    end;
end;

end.
