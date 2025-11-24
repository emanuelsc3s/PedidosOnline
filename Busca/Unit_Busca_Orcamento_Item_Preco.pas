unit Unit_Busca_Orcamento_Item_Preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_Busca_Orcamento_Item_Preco = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    qOrcamentoItem_Preco: TIBQuery;
    qOrcamentoItem_PrecoORCAMENTO_ID: TIntegerField;
    qOrcamentoItem_PrecoITEM: TIBStringField;
    qOrcamentoItem_PrecoERP_PRODUTO: TIBStringField;
    qOrcamentoItem_PrecoPRODUTO: TIBStringField;
    qOrcamentoItem_PrecoVALOR_ANTIGO: TIBBCDField;
    qOrcamentoItem_PrecoVALOR_ATUAL: TIBBCDField;
    qOrcamentoItem_PrecoDATA_INC: TDateTimeField;
    qOrcamentoItem_PrecoUSUARIONOME_I: TIBStringField;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure Edit_PesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Campo : String;
  public

  end;

function Form_Busca_Orcamento_Item_Preco: TForm_Busca_Orcamento_Item_Preco;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_Aprovar;

function Form_Busca_Orcamento_Item_Preco: TForm_Busca_Orcamento_Item_Preco;
begin
  Result := TForm_Busca_Orcamento_Item_Preco(UniMainModule.GetFormInstance(TForm_Busca_Orcamento_Item_Preco));
end;

procedure TForm_Busca_Orcamento_Item_Preco.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    qOrcamentoItem_Preco.Next;

  If Key = VK_UP Then
    qOrcamentoItem_Preco.Prior;
end;

procedure TForm_Busca_Orcamento_Item_Preco.UniFormCreate(Sender: TObject);
begin
  Coinitialize(Nil);
end;

procedure TForm_Busca_Orcamento_Item_Preco.UniFormShow(Sender: TObject);
begin
  with qOrcamentoItem_Preco do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' orcamento_id, item, erp_produto, produto, valor_antigo,');
      SQL.Add(' valor_atual, data_inc, usuarionome_i');
      SQL.Add(' from tborcamento_item_preco where deletado = ''N'' ');
      SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      SQL.Add(' and item = ''' + Form_Aprovar.cdsItensOrcamentoITEM.AsString + ''' ');
      SQL.Add(' and erp_produto = ''' + Form_Aprovar.cdsItensOrcamentoERP_PRODUTO.AsString + ''' ');
      SQL.Add(' order by data_inc desc');
      Open;
    end;
end;

end.
