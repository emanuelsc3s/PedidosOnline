unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, shellapi, dialogs;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleBeforeInit(Sender: TObject);
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure UniGUIServerModuleException(Sender: TUniGUIMainModule;
      AException: Exception; var Handled: Boolean);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIConst;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  // Fonte: http://www.sql.ru/forum/1264360-3/primenenie-unigui
  InitServerModule(Self);

  _OutS := 'ail=x' + #13#10#13#10#9 + 'dW5pU3luY09iai5zZXRUaW1lSW50KDB4MDA3NTc1MEYpOw==';//uniSyncObj.setTimeInt(0x0075750F);
end;




procedure ExploreWeb(page:PChar);
var Returnvalue: integer;
begin
  ReturnValue := ShellExecute(0, 'open', page, nil, nil, 1);
  if ReturnValue <= 32 then
     begin
     case Returnvalue of
          0 : Showmessage('Erro: Sem memória');
          2:  Showmessage('Erro: Arquivo não achado');
          3:  Showmessage('Erro: Diretório não achado');
          11: Showmessage('Erro: Arquivo corrompido ou inválido');
     else
          Showmessage(PChar('Erro Nr: '+IntToStr(Returnvalue)+' Na execução do aplicativo servidor.'))
     end;
  end;
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
begin
ExploreWeb('http://localhost:8077'); //auto start browser
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
  // Extensões de Arquivos para baixar
  MimeTable.AddMimeType('rtf', 'text');

  // Para usar Font-awesome
  MimeTable.AddMimeType('woff', 'application/font', False);
  MimeTable.AddMimeType('woff2', 'application/font', False);
  MimeTable.AddMimeType('ttf', 'application/font', False);
end;

procedure TUniServerModule.UniGUIServerModuleException(
  Sender: TUniGUIMainModule; AException: Exception; var Handled: Boolean);
//var
//  CapturaExcecoes: TCapturaExcecoes;
begin
//  if Assigned(Sender) then
//  begin
//      // Cria a classe de captura de exceções
//      CapturaExcecoes := TCapturaExcecoes.Create;
//      try
//        // Invoca o método de captura, informando os parâmetros
//        CapturaExcecoes.CapturarExcecao(Sender, AException);
//
//        Handled := True;
//      finally
//        CapturaExcecoes.Free;
//      end;
//  end;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
