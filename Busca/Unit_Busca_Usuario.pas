unit Unit_Busca_Usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, Data.DB, Data.Win.ADODB, uniPanel, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, activex,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_Busca_Usuario = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    Edit_Pesq: TUniEdit;
    DataSource1: TDataSource;
    UniPanel1: TUniPanel;
    QR_USUARIO: TIBQuery;
    QR_USUARIOUSUARIO_ID: TIntegerField;
    QR_USUARIONOME: TIBStringField;
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

function Form_Busca_Usuario: TForm_Busca_Usuario;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function Form_Busca_Usuario: TForm_Busca_Usuario;
begin
  Result := TForm_Busca_Usuario(UniMainModule.GetFormInstance(TForm_Busca_Usuario));
end;

procedure TForm_Busca_Usuario.Edit_PesqChange(Sender: TObject);
begin
  with QR_USUARIO do
    begin
      Close;
      SQL.Text := 'select usuario_id, nome from tbusuario';
      SQL.Add(' where deletado = ''N'' ');

      if Trim(Edit_Pesq.Text) <> '' then
        SQL.Add(' and upper(nome) like upper(''' + Trim(Edit_Pesq.Text) + '%'') ');

      Open;
    end;
end;

procedure TForm_Busca_Usuario.Edit_PesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_DOWN Then // Setas
    QR_USUARIO.Next;

  If Key = VK_UP Then
    QR_USUARIO.Prior;
end;

procedure TForm_Busca_Usuario.Edit_PesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    UniDBGrid1DblClick(Sender);
end;


procedure TForm_Busca_Usuario.UniDBGrid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  Close;
end;

procedure TForm_Busca_Usuario.UniFormShow(Sender: TObject);
begin
  with QR_USUARIO do
    begin
      Close;
      Close;
      SQL.Text := 'select usuario_id, nome from tbusuario';
      SQL.Add(' where deletado = ''N'' ');
      Open;
    end;

  Edit_Pesq.SetFocus;
end;

end.
