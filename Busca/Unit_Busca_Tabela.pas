unit Unit_Busca_Tabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  uniBasicGrid, uniDBGrid, uniPanel, uniEdit, uniGUIBaseClasses, uniLabel;

type
  TForm_Busca_Tabela = class(TUniForm)
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    QR_TABELA: TIBQuery;
    DataSource_Tabela: TDataSource;
    QR_TABELACODIGO: TIBStringField;
    QR_TABELADESCRICAO: TIBStringField;
    procedure Edit_PesqChange(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form_Busca_Tabela: TForm_Busca_Tabela;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_Tabela: TForm_Busca_Tabela;
begin
  Result := TForm_Busca_Tabela(UniMainModule.GetFormInstance(TForm_Busca_Tabela));
end;

procedure TForm_Busca_Tabela.Edit_PesqChange(Sender: TObject);
begin
  with QR_TABELA do
    begin
      Close;
      SQL.Text := 'select codigo, descricao from tbtabela where deletado = ''N'' ';
      SQL.Add(' and chave = ''' + UniMainModule.vChaveTabela + ''' ');

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add(' and upper(descricao) like upper(''' + Trim(Edit_Pesq.Text) + '%'') ');

      SQL.Add(' order by descricao');
      Open;
    end;
end;

procedure TForm_Busca_Tabela.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm_Busca_Tabela.UniFormShow(Sender: TObject);
begin
  Edit_Pesq.SetFocus;
  Edit_Pesq.Clear;

  with QR_TABELA do
    begin
      Close;
      SQL.Text := 'select codigo, descricao from tbtabela where deletado = ''N'' ';
      SQL.Add(' and chave = ''' + UniMainModule.vChaveTabela + ''' ');
      SQL.Add(' order by descricao');
      Open;
    end;
end;

end.
