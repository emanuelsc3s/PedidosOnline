unit Unit_Pedido_Status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniMemo, uniDBMemo, uniMultiItem, uniComboBox,
  uniDBComboBox, uniGUIBaseClasses, uniImageList, uniButton, uniEdit, uniDBEdit,
  uniLabel, uniPanel, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TForm_Pedido_Status = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    btn_CondPagto: TUniButton;
    UniImageList1: TUniImageList;
    UniPanel4: TUniPanel;
    btn_Aplicar: TUniButton;
    DS_STATUS: TIBDataSet;
    DS_STATUSPEDIDOSTATUS_ID: TIntegerField;
    DS_STATUSPEDIDO_ID: TIntegerField;
    DS_STATUSSTATUS: TIBStringField;
    DS_STATUSDATA: TDateTimeField;
    DS_STATUSUSUARIO_ID: TIntegerField;
    DS_STATUSUSUARIO: TIBStringField;
    DS_STATUSLOG: TIBStringField;
    DS_STATUSOBS: TWideMemoField;
    DS_STATUSPRODUTO_ID: TIntegerField;
    DS_STATUSERP_PRODUTO: TIBStringField;
    DS_STATUSPRODUTO: TIBStringField;
    DS_STATUSMOTIVO_ID: TIntegerField;
    DS_STATUSMOTIVO: TIBStringField;
    DS_STATUSDELETADO: TIBStringField;
    Edit_PesqMotivo: TUniEdit;
    Edit_Motivo: TUniEdit;
    Memo_OBS: TUniMemo;
    ComboBox_Status: TUniComboBox;
    Label_Topo: TUniLabel;
    qUpdate: TIBQuery;
    procedure btn_CondPagtoClick(Sender: TObject);
    procedure btn_AplicarClick(Sender: TObject);
    procedure Edit_PesqMotivoChange(Sender: TObject);
    procedure Edit_PesqMotivoExit(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Form_Pedido_Status: TForm_Pedido_Status;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Unit_Busca_Tabela;

function Form_Pedido_Status: TForm_Pedido_Status;
begin
  Result := TForm_Pedido_Status(UniMainModule.GetFormInstance(TForm_Pedido_Status));
end;

procedure TForm_Pedido_Status.btn_AplicarClick(Sender: TObject);
begin
  if ComboBox_Status.ItemIndex = -1 then
    begin
      MessageDlg('Preencha o campo Status', mtWarning, [mbOk]);
      ComboBox_Status.SetFocus;
      Abort;
    end;

  if Trim(Edit_PesqMotivo.Text) = '' then
    begin
      MessageDlg('Preencha o campo Motivo', mtWarning, [mbOk]);
      Edit_PesqMotivo.SetFocus;
      Abort;
    end;

  try
    with DS_STATUS do
      begin
        Close;
        SelectSQL.Text := 'select * from tbpedido_status where pedidostatus_id = 0';
        Open;
      end;

    DS_STATUS.Insert;

    DS_STATUSPEDIDO_ID.AsString  := UniMainModule.vPedido_ID;
    DS_STATUSSTATUS.AsString     := ComboBox_Status.Text;
    DS_STATUSMOTIVO_ID.AsString  := Trim(Edit_PesqMotivo.Text);
    DS_STATUSMOTIVO.AsString     := Trim(Edit_Motivo.Text);
    DS_STATUSOBS.AsString        := Trim(Memo_OBS.Lines.Text);
    DS_STATUSDATA.AsDateTime     := Now;
    DS_STATUSUSUARIO_ID.AsString := UniMainModule.vUsuarioID;
    DS_STATUSUSUARIO.AsString    := UniMainModule.vUsuario;
    DS_STATUSDELETADO.AsString   := 'N';

    DS_STATUS.Post;
    DS_STATUS.Transaction.CommitRetaining;

    with qUpdate do
      begin
        Close;
        SQL.Text := 'update tbpedido set';
        SQL.Add(' status         = ''' + ComboBox_Status.Text + ''', ');
        SQL.Add(' situacao       = ''' + ComboBox_Status.Text + ''', ');
        SQL.Add(' data_situacao  = ''' + FormatDateTime('DD.MM.YYYY', Date) + ''' ');
        SQL.Add(' where deletado = ''N'' ');
        SQL.Add(' and pedido_id  = ''' + UniMainModule.vPedido_ID + ''' ');
        ExecSQL;
        Transaction.CommitRetaining;
      end;

    with qUpdate do
      begin
        Close;
        SQL.Text := 'update tbpedido_item set';
        SQL.Add(' status         = ''' + ComboBox_Status.Text + ''' ');
        SQL.Add(' where deletado = ''N'' ');
        SQL.Add(' and pedido_id  = ''' + UniMainModule.vPedido_ID + ''' ');
        ExecSQL;
        Transaction.CommitRetaining;
      end;

    MessageDlg('Status atualizado com sucesso', mtInformation, [mbOk]);
    Form_Pedido_Status.OnShow(Sender);
  except on e: exception do
    begin
      DS_STATUS.Transaction.Rollback;
      MessageDlg('Erro ao salvar: ' + e.Message, mtError, []);
    end;
  end;
end;

procedure TForm_Pedido_Status.btn_CondPagtoClick(Sender: TObject);
begin
  UniMainModule.vChaveTabela := 'PED_MOT_ST';
  Form_Busca_Tabela.ShowModal;

  if  Form_Busca_Tabela.ModalResult = mrOk then
    begin
      Edit_PesqMotivo.Text := Form_Busca_Tabela.QR_TABELACODIGO.AsString;
      Edit_Motivo.Text     := Form_Busca_Tabela.QR_TABELADESCRICAO.AsString;
    end;
end;

procedure TForm_Pedido_Status.Edit_PesqMotivoChange(Sender: TObject);
begin
  if Trim(Edit_PesqMotivo.Text) = '' then
    Edit_Motivo.Clear;
end;

procedure TForm_Pedido_Status.Edit_PesqMotivoExit(Sender: TObject);
var
  vlQuerySIC: TIBQuery;
begin
  if Trim(Edit_PesqMotivo.Text) <> '' then
    begin
      vlQuerySIC := TIBQuery.Create(Owner);
      with vlQuerySIC do
        begin
          Database    := UniMainModule.IBDatabase1;
          Transaction := UniMainModule.IBTransaction1;

          Close;
          SQL.Text := 'select codigo, descricao from tbtabela';
          SQL.Add(' where deletado = ''N'' ');
          SQL.Add(' and chave = ''PED_MOT_ST'' ');
          SQL.Add(' and codigo = ''' + Trim(Edit_PesqMotivo.Text) + ''' ');
          Open;
        end;

      if not vlQuerySIC.IsEmpty then
        begin
          Edit_PesqMotivo.Text  := vlQuerySIC.FieldByName('CODIGO').AsString;
          Edit_Motivo.Text      := vlQuerySIC.FieldByName('DESCRICAO').AsString;
        end
      else
        begin
          MessageDlg('Motivo não encontrado!', mtWarning, [mbOK]);
          Edit_PesqMotivo.SetFocus;
          Exit;
        end;
      FreeAndNil(vlQuerySIC);
    end;
end;

procedure TForm_Pedido_Status.UniFormShow(Sender: TObject);
begin
  ComboBox_Status.ItemIndex := -1;
  Edit_PesqMotivo.Clear;
  Edit_Motivo.Clear;
  Memo_OBS.Clear;
  Label_Topo.Caption := 'Status do Pedido ' + UniMainModule.vPedido_ID;
end;

end.
