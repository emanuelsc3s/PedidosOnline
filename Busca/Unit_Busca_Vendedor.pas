unit Unit_Busca_Vendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_Busca_Vendedor = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    QR_VENDEDOR: TIBQuery;
    QR_VENDEDORERP_VENDEDOR: TIBStringField;
    QR_VENDEDORNOME: TIBStringField;
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

function Form_Busca_Vendedor: TForm_Busca_Vendedor;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_Vendedor: TForm_Busca_Vendedor;
begin
  Result := TForm_Busca_Vendedor(UniMainModule.GetFormInstance(TForm_Busca_Vendedor));
end;

procedure TForm_Busca_Vendedor.Edit_PesqChange(Sender: TObject);
begin
  with QR_VENDEDOR do
    begin
      Close;
      SQL.Text := 'select v.erp_vendedor, v.nome from tbvendedor v';
      SQL.Add(' where v.deletado = ''N'' ');

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add(' and upper(v.nome) like upper(''' + Trim(Edit_Pesq.Text) + '%'') ');

      Open;
    end;
end;

procedure TForm_Busca_Vendedor.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_VENDEDOR.Next;

  If Key = VK_UP Then
    QR_VENDEDOR.Prior;
end;

procedure TForm_Busca_Vendedor.Edit_PesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    UniDBGrid1DblClick(Sender);
end;


procedure TForm_Busca_Vendedor.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  Close;
end;

procedure TForm_Busca_Vendedor.UniFormShow(Sender: TObject);
begin
  with QR_VENDEDOR do
    begin
      Close;
      Close;
      SQL.Text := 'select v.erp_vendedor, v.nome from tbvendedor v';
      SQL.Add(' where v.deletado = ''N'' ');
      Open;
    end;

  Edit_Pesq.SetFocus;
end;

end.
