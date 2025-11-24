unit Unit_Busca_CondPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_Busca_CondPagto = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    QR_CONDPAGTO: TIBQuery;
    QR_CONDPAGTOCONDPAGTO_ID: TIntegerField;
    QR_CONDPAGTOERP_CODIGO: TIBStringField;
    QR_CONDPAGTOCONDICAO: TIBStringField;
    QR_CONDPAGTOCONDICAO_DESCRICAO: TIBStringField;
    QR_CONDPAGTODATA_INC: TDateTimeField;
    QR_CONDPAGTOUSAURIO_I: TIntegerField;
    QR_CONDPAGTOUSUARIONOME_I: TIBStringField;
    QR_CONDPAGTODATA_ALT: TDateTimeField;
    QR_CONDPAGTOUSUARIO_A: TIntegerField;
    QR_CONDPAGTOUSUARIONOME_A: TIBStringField;
    QR_CONDPAGTODATA_DEL: TDateTimeField;
    QR_CONDPAGTOUSUARIO_D: TIntegerField;
    QR_CONDPAGTOUSUARIONOME_D: TIBStringField;
    QR_CONDPAGTODELETADO: TIBStringField;
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

function Form_Busca_CondPagto: TForm_Busca_CondPagto;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_CondPagto: TForm_Busca_CondPagto;
begin
  Result := TForm_Busca_CondPagto(UniMainModule.GetFormInstance(TForm_Busca_CondPagto));
end;

procedure TForm_Busca_CondPagto.Edit_PesqChange(Sender: TObject);
begin
  with QR_CONDPAGTO do
    begin
      Close;
      SQL.Text := 'select * from tbcondpagto where deletado = ''N'' ';

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add('and condicao_descricao like ''' + Trim(Edit_Pesq.Text) + '%'' ');
      Open;
    end;
end;

procedure TForm_Busca_CondPagto.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_CONDPAGTO.Next;

  If Key = VK_UP Then
    QR_CONDPAGTO.Prior;
end;

procedure TForm_Busca_CondPagto.Edit_PesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
    UniDBGrid1DblClick(Sender);
end;


procedure TForm_Busca_CondPagto.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  Close;
end;

procedure TForm_Busca_CondPagto.UniFormShow(Sender: TObject);
begin
  with QR_CONDPAGTO do
    begin
      Close;
      SQL.Text := 'select * from tbcondpagto where deletado = ''N'' ';
      Open;
    end;

  Edit_Pesq.SetFocus;
end;

end.
