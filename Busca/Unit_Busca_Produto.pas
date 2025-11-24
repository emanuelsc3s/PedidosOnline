unit Unit_Busca_Produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_Busca_Produto = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    QR_PRODUTO: TIBQuery;
    QR_PRODUTOREFERENCIA: TIBStringField;
    QR_PRODUTODESCRICAO: TIBStringField;
    QR_PRODUTOPRODUTO_ID: TIntegerField;
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

function Form_Busca_Produto: TForm_Busca_Produto;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_Produto: TForm_Busca_Produto;
begin
  Result := TForm_Busca_Produto(UniMainModule.GetFormInstance(TForm_Busca_Produto));
end;

procedure TForm_Busca_Produto.Edit_PesqChange(Sender: TObject);
begin
  with QR_PRODUTO do
    begin
      Close;
      SQL.Text := 'select produto_id, referencia, descricao from tbprodutos';
      SQL.Add(' where deletado = ''N'' ');

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add(' and descricao like ''' + Trim(Edit_Pesq.Text) + '%'' ');

      Open;
    end;
end;

procedure TForm_Busca_Produto.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_PRODUTO.Next;

  If Key = VK_UP Then
    QR_PRODUTO.Prior;
end;

procedure TForm_Busca_Produto.Edit_PesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    UniDBGrid1DblClick(Sender);
end;


procedure TForm_Busca_Produto.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  Close;
end;

procedure TForm_Busca_Produto.UniFormShow(Sender: TObject);
begin
  with QR_PRODUTO do
    begin
      Close;
      Close;
      SQL.Text := 'select produto_id, referencia, descricao from tbprodutos';
      SQL.Add(' where deletado = ''N'' ');
      Open;
    end;

  Edit_Pesq.SetFocus;
end;

end.
