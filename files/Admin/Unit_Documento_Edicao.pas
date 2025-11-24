unit Unit_Documento_Edicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, System.ImageList, Vcl.ImgList, RzPanel,
  RzButton;

type
  TForm_Documento_Edicao = class(TForm)
    Panel2: TPanel;
    DS_EDICAO: TIBDataSet;
    DS_EDICAODOCEDICAO_ID: TLargeintField;
    DS_EDICAODOC_ID: TLargeintField;
    DS_EDICAOARQUIVO: TBlobField;
    DS_EDICAOREVISAO: TIBStringField;
    DS_EDICAODATA: TDateField;
    DS_EDICAODATA_INC: TDateTimeField;
    DS_EDICAOUSUARIO_I: TIntegerField;
    DS_EDICAOUSUARIONOME_I: TIBStringField;
    DS_EDICAODELETADO: TIBStringField;
    DS_EDICAORESPONSAVEL_ID: TIntegerField;
    DS_EDICAORESPONSAVEL: TIBStringField;
    DS_EDICAOITEM: TIBStringField;
    DS_EDICAOHISTORICO: TWideMemoField;
    RzToolbar2: TRzToolbar;
    btn_Historico: TRzToolButton;
    btn_Salvar: TRzToolButton;
    RzSpacer1: TRzSpacer;
    imageCad: TImageList;
    btn_Fechar: TRzToolButton;
    RzSpacer2: TRzSpacer;
    btn_Referencia: TRzToolButton;
    RzSpacer3: TRzSpacer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Memo_HistoricoEnter(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure btn_HistoricoClick(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btn_ReferenciaClick(Sender: TObject);
  private
    { Private declarations }
    function fRetornaRevisao : Integer;
  public
    { Public declarations }

  end;

var
  Form_Documento_Edicao: TForm_Documento_Edicao;

implementation

{$R *.dfm}

uses
 Unit_WordExcel, Unit_DM1, Biblioteca, Unit_Documento_EdicaoHistorico,
  Unit_Activity, Unit_Documento_Referencia;

procedure TForm_Documento_Edicao.btn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TForm_Documento_Edicao.btn_SalvarClick(Sender: TObject);
var
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  if Form_Documento_EdicaoHistorico = Nil then
    Application.CreateForm(TForm_Documento_EdicaoHistorico, Form_Documento_EdicaoHistorico);

  if Trim(Form_Documento_EdicaoHistorico.Memo_Historico.Text) = '' then
    begin
      if Application.MessageBox(PChar('Não há alteração informada. Deseja inserir alguma informação?'), 'Informação', MB_YESNO+MB_ICONWARNING) = mrYes then
        begin
          Form_Documento_EdicaoHistorico.ShowModal;
          Exit;
        end;
    end;

  with DS_EDICAO do
    begin
      Close;
      SelectSQL.Text := 'select * from tbdoc_edicao where deletado = ''N'' and docedicao_id = 0';
      Open;
    end;

  try
    if FileExists(ExtractFilePath(Application.ExeName) + 'GED\DE'+vDocumentoID+'TEMP'+vDocumentoExtensao) then
      DeleteFile(ExtractFilePath(Application.ExeName) + 'GED\DE'+vDocumentoID+'TEMP'+vDocumentoExtensao);

    Form_WORDEXCEL.OleContainer1.OleObject.SaveAs(ExtractFilePath(Application.ExeName) + 'GED\DE'+vDocumentoID+'TEMP'+vDocumentoExtensao);
    Form_WORDEXCEL.OleContainer1.OleObject.Saved := True;

    DS_EDICAO.Insert;

    FileStream := TFileStream.create(ExtractFilePath(Application.ExeName) + 'GED\DE'+vDocumentoID+'TEMP'+vDocumentoExtensao, fmOpenRead, fmShareDenyWrite);
    BlobStream := DS_EDICAO.CreateBlobStream(DS_EDICAOARQUIVO, bmWrite);
    BlobStream.CopyFrom(FileStream, FileStream.Size);
    FileStream.Free;
    BlobStream.Free;

    DS_EDICAODOC_ID.AsString         := vDocumentoID;
    DS_EDICAOREVISAO.AsString        := vDocumentoVersao;
    DS_EDICAOITEM.AsString           := PreencherZero(fRetornaRevisao, '0',3);
    DS_EDICAORESPONSAVEL_ID.AsString := UsuarioID;
    DS_EDICAORESPONSAVEL.AsString    := Usuario;
    DS_EDICAOHISTORICO.AsString      := Form_Documento_EdicaoHistorico.Memo_Historico.Text;
    DS_EDICAODATA.AsDateTime         := Now;
    DS_EDICAODATA_INC.AsDateTime     := Now;
    DS_EDICAOUSUARIO_I.AsString      := UsuarioID;
    DS_EDICAOUSUARIONOME_I.AsString  := Usuario;
    DS_EDICAODELETADO.AsString       := 'N';

    DS_EDICAO.Post;
    DS_EDICAO.Transaction.CommitRetaining;

    Application.MessageBox('Gravação realizada com sucesso', 'Informação', MB_OK+MB_ICONINFORMATION);

    Form_Documento_EdicaoHistorico.Memo_Historico.Clear;

    Screen.Cursor := crHourGlass;
    Form_WORDEXCEL.OleContainer1.CreateObjectFromFile(ExtractFilePath(Application.ExeName) + 'GED\DE'+vDocumentoID+'TEMP'+vDocumentoExtensao, false);
    Screen.Cursor := crArrow;
    Form_WORDEXCEL.Parent := Panel2;
    Form_WORDEXCEL.Show;
    Form_WORDEXCEL.OleContainer1.SetFocus;

  except on e : Exception do
    begin
      DS_EDICAO.Transaction.RollbackRetaining;
      Application.MessageBox(PChar('Erro ao salvar documento: ' + e.Message), 'Erro', MB_OK+MB_ICONERROR);
    end;
  end;
end;

procedure TForm_Documento_Edicao.btn_HistoricoClick(Sender: TObject);
begin
  if Form_Documento_EdicaoHistorico = Nil then
    Application.CreateForm(TForm_Documento_EdicaoHistorico, Form_Documento_EdicaoHistorico);

  Form_Documento_EdicaoHistorico.ShowModal;
  //Form_WORDEXCEL.OleContainer1.DoVerb(-1);
end;

procedure TForm_Documento_Edicao.btn_ReferenciaClick(Sender: TObject);
begin
  if not Assigned(Form_Documento_Referencia) then
    Application.CreateForm(TForm_Documento_Referencia, Form_Documento_Referencia);

  Form_Documento_Referencia.ShowModal;
end;

procedure TForm_Documento_Edicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(Form_WORDEXCEL);
end;

procedure TForm_Documento_Edicao.FormResize(Sender: TObject);
begin
  Form_WORDEXCEL.WindowState := wsNormal;
  Form_WORDEXCEL.WindowState := wsMaximized;
end;

procedure TForm_Documento_Edicao.FormShow(Sender: TObject);
begin
  try
    Form_Activity.Show;
    Form_Activity.Repaint;

    Form_Activity.Label_Status.Caption := 'Aguarde, abrindo edição do arquivo...';
    Form_Activity.BringToFront;
    Form_Activity.Repaint;
    Form_Activity.Show;
    Form_Activity.Refresh;

    if not Assigned(Form_WORDEXCEL) then
      Application.CreateForm(TForm_WORDEXCEL, Form_WORDEXCEL);

    Screen.Cursor := crHourGlass;
    Form_WORDEXCEL.OleContainer1.CreateObjectFromFile(vArquivo, false);
    Screen.Cursor := crArrow;
    Form_WORDEXCEL.Parent := Panel2;
    Form_WORDEXCEL.Show;
    Form_WORDEXCEL.OleContainer1.DoVerb(0);
  finally
    Form_Activity.Close;
  end;
end;

function TForm_Documento_Edicao.fRetornaRevisao: Integer;
var
  vlQuerySIC : TIBQuery;
begin
  vlQuerySIC := TIBQuery.Create(Owner);
  with vlQuerySIC do
    begin
      Database    := dm1.IBDatabase1;
      Transaction := dm1.IBTransaction1;
      Close;
      SQL.Text := 'select coalesce(max(item), 0) as maximo from tbdoc_edicao';
      SQL.Add(' where deletado = ''N'' ');
      SQl.Add(' and doc_id = ''' + vDocumentoID + ''' ');
      Open;
    end;

  Result := vlQuerySIC.FieldByName('MAXIMO').AsInteger + 1;

  FreeAndNil(vlQuerySIC);
end;

procedure TForm_Documento_Edicao.Memo_HistoricoEnter(Sender: TObject);
begin
  Form_WORDEXCEL.OleContainer1.Enabled := false;
end;

end.
