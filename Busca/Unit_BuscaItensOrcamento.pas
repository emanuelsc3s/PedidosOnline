unit Unit_BuscaItensOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_BuscaItensOrcamento = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    qOrcamentoItem: TIBQuery;
    qOrcamentoItemITEM: TIBStringField;
    qOrcamentoItemPRODUTO: TIBStringField;
    qOrcamentoItemVALOR_FINAL: TFloatField;
    qOrcamentoItemSUBTOTAL_FINAL: TFloatField;
    qOrcamentoItemQUANTIDADE_FINAL: TFloatField;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure Edit_PesqChange(Sender: TObject);
    procedure Edit_PesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Campo : String;
  public

  end;

function Form_BuscaItensOrcamento: TForm_BuscaItensOrcamento;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_BuscaItensOrcamento: TForm_BuscaItensOrcamento;
begin
  Result := TForm_BuscaItensOrcamento(UniMainModule.GetFormInstance(TForm_BuscaItensOrcamento));
end;

procedure TForm_BuscaItensOrcamento.Edit_PesqChange(Sender: TObject);
begin
    if Edit_Pesq.Text <> '' then
      begin
        with qOrcamentoItem do
          begin
            Close;
            SQL.Text := 'select i.item, i.erp_produto||''-''||i.produto as produto, i.quantidade_final, i.valor_final, i.subtotal_final';
            SQL.Add(' from tborcamento_item i where i.deletado = ''N'' ');
            SQL.Add(' and i.orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
            SQL.Add(' and i.produto like ''' + Edit_Pesq.Text + '%'' ');
            Open;
          end;
      end
    else
      begin
        with qOrcamentoItem do
          begin
            Close;
            SQL.Text := 'select item, erp_produto||''-''||produto as produto, quantidade_final, valor_final, subtotal_final';
            SQL.Add(' from tborcamento_item where deletado = ''N'' ');
            SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
            Open;
          end;
      end;
end;

procedure TForm_BuscaItensOrcamento.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    qOrcamentoItem.Next;

  If Key = VK_UP Then
    qOrcamentoItem.Prior;
end;

procedure TForm_BuscaItensOrcamento.UniFormCreate(Sender: TObject);
begin
  Coinitialize(Nil);
end;

procedure TForm_BuscaItensOrcamento.UniFormShow(Sender: TObject);
begin
  with qOrcamentoItem do
    begin
      Close;
      SQL.Text := 'select item, erp_produto||''-''||produto as produto, quantidade_final, valor_final, subtotal_final';
      SQL.Add(' from tborcamento_item where deletado = ''N'' ');
      SQL.Add(' and orcamento_id = ''' + UniMainModule.vOrcamento_ID + ''' ');
      Open;
    end;
end;

end.
