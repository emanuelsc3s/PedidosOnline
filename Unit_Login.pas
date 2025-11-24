unit Unit_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, uniButton;

type
  TForm_Login = class(TUniLoginForm)
    QR_LOGIN: TIBQuery;
    QR_LOGINUSUARIO_ID: TIntegerField;
    QR_LOGINNOME: TIBStringField;
    QR_LOGINSENHA: TIBStringField;
    QR_LOGINPERFIL_ID: TIntegerField;
    QR_LOGINDELETADO: TIBStringField;
    QR_LOGINDATA_INC: TDateTimeField;
    QR_LOGINUSUARIO_I: TIntegerField;
    QR_LOGINUSUARIONOME_I: TIBStringField;
    QR_LOGINDATA_ALT: TDateTimeField;
    QR_LOGINUSUARIO_A: TIntegerField;
    QR_LOGINUSUARIONOME_A: TIBStringField;
    QR_LOGINDATA_DEL: TDateTimeField;
    QR_LOGINUSUARIO_D: TIntegerField;
    QR_LOGINUSUARIONOME_D: TIBStringField;
    QR_LOGINEMAIL: TIBStringField;
    QR_LOGINRAMAL: TIBStringField;
    QR_LOGINERP_VENDEDOR: TIBStringField;
    QR_LOGINERP_REPRESENTANTE: TIBStringField;
    QR_LOGINGRUPO_PRODUTO: TIBStringField;
    QR_LOGINVENDEDOR_ID: TIntegerField;
    QR_LOGINREPRESENTANTE_ID: TIntegerField;
    QR_LOGINBANCOS: TIBStringField;
    QR_LOGINDEPARTAMENTO_ID: TIntegerField;
    QR_LOGINDEPARTAMENTO: TIBStringField;
    QR_LOGINNOME_FANTASIA: TIBStringField;
    QR_LOGINEXPIRACAO: TDateField;
    QR_LOGINERP_VENDEDOR_NOME: TIBStringField;
    QR_LOGINERP_REPRESENTANTE_NOME: TIBStringField;
    QR_LOGINBLOQUEADO: TIBStringField;
    UniHTMLFrame1: TUniHTMLFrame;
    procedure UniHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniLoginFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure pSalvaConexao(prUsuarioID, prUsuario: string);
  public

  end;

function Form_Login: TForm_Login;


implementation

{$R *.dfm}

uses
  MidasLib, uniGUIVars, MainModule, uniGUIApplication, Main,
  idHashMessageDigest;

function Form_Login: TForm_Login;
begin
  Result := TForm_Login(UniMainModule.GetFormInstance(TForm_Login));
end;

procedure TForm_Login.pSalvaConexao(prUsuarioID, prUsuario: string);
var
  qConexao : TIBQuery;
begin
  qConexao := TIBQuery.Create(self);
  with qConexao do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Clear;
      SQL.Add('select current_connection from rdb$database');
      Open;

      UniMainModule.UsuarioConexao := qConexao.FieldByName('current_connection').AsString;
    end;

  with qConexao do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;

      Close;
      SQL.Clear;
      SQL.Add('insert into tbusuario_conexao');
      SQL.Add('(conexao, usuario_id, usuario, data_inc, versao)');
      SQL.Add('values');
      SQL.Add('(:conexao, :usuario_id, :usuario, :data_inc, :versao)');

      ParamByName('conexao').AsString    := UniMainModule.UsuarioConexao;
      ParamByName('usuario_id').AsString := prUsuarioID;
      ParamByName('usuario').AsString    := prUsuario;
      ParamByName('data_inc').AsDateTime := Now;
      ParamByName('versao').AsString     := '2.0';

      ExecSQL;
      Transaction.CommitRetaining;
    end;

  qConexao.Free;
end;

procedure TForm_Login.UniHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  user, password, Msg : String;
  vQuery : TIBQuery;
  MD5    : TidHashMessageDigest5;
  vlNomeForm : String;
begin
  if EventName = 'login' then
    begin
      try
        user     := Params.Values['user'];
        password := Params.Values['password'];

        MD5 := TIdHashMessageDigest5.Create;

        vQuery := TIBQuery.Create(Owner);
        with vQuery do
          begin
            Database    := UniMainModule.IBDatabase1;
            Transaction := UniMainModule.IBTransaction1;

            Close;
            SQL.Text := 'select usuario_id, nome from tbusuario where deletado = ''N'' ';
            SQL.Add(' and nome = ''' + Trim(user) + ''' ');
            Open;
            UniMainModule.vUsuarioID := vQuery.FieldByName('USUARIO_ID').AsString;
          end;

        with QR_LOGIN do
          begin
            Close;
            SQL.Text := 'select * from tbusuario u';
            SQL.Add(' WHERE u.deletado = ''N'' ');
            SQL.Add(' AND NOME  = :NOME');
            SQL.Add(' AND SENHA = :SENHA');

            QR_LOGIN.ParamByName('NOME').AsString  := Trim(user);
            QR_LOGIN.ParamByName('SENHA').AsString := MD5.HashStringAsHex(UniMainModule.vUsuarioID + Trim(password));

            QR_LOGIN.Open;
          end;

        if not QR_LOGIN.IsEmpty then // Se não for Vazio
          begin
            UniMainModule.vUsuarioID         := QR_LOGIN.FieldByName('USUARIO_ID').AsString;
            UniMainModule.vUsuario           := QR_LOGIN.FieldByName('NOME').AsString;
            UniMainModule.vEmailUsuario      := QR_LOGIN.FieldByName('EMAIL').AsString;

            // Representante e Vendedor
            UniMainModule.vRepresentanteID   := QR_LOGINERP_REPRESENTANTE.AsString;
            UniMainModule.vRepresentanteNome := QR_LOGINERP_REPRESENTANTE_NOME.AsString;
            UniMainModule.vVendedorID        := QR_LOGINERP_VENDEDOR.AsString;
            UniMainModule.vVendedorNome      := QR_LOGINERP_VENDEDOR_NOME.AsString;

            pSalvaConexao(UniMainModule.vUsuarioID, UniMainModule.vUsuario);

            Hide;
            MainForm.ShowModal;
          end
        else
          begin
            Msg := 'O Nome ou a Senha do Usuário estão inválidos.' + #13 + #13
              + 'Se você esqueceu sua senha, Consulte' + #13
              + 'o Administrador do Sistema ou tente novamente.';

            MessageDlg(Msg, mtError, [mbOk]);
          end;
      finally
        FreeAndNil(MD5);
        FreeAndNil(vQuery);
      end;
    end;
end;

procedure TForm_Login.UniLoginFormCreate(Sender: TObject);
begin
  //UniHTMLFrame1.HTML.LoadFromFile('C:\Users\Administrador\Dropbox (C3Soft)\C3S\uniGUI\PedidosOnline\Win32\login.html');
end;

initialization
  RegisterAppFormClass(TForm_Login);

end.
