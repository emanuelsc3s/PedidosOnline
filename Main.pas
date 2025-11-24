unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniURLFrame, uniLabel, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  Vcl.ExtCtrls, uniTimer;

type
  TMainForm = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
    procedure UniHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormAfterShow(Sender: TObject);
  private
    { Private declarations }
    procedure pAtualizaAvisos;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  MidasLib, uniGUIVars, MainModule, uniGUIApplication, Unit_Pedido,
  Unit_BuscaPedido, Unit_BuscaOrcamento, Unit_Orcamento, Unit_PedidoREL;//, Unit_BuscaOrcamento,
  //Unit_Orcamento, Unit_Cliente;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.pAtualizaAvisos;
var
  vlQuery : TIBQuery;
begin
  vlQuery := TIBQuery.Create(Owner);
  with vlQuery do
    begin
      Database    := UniMainModule.IBDatabase1;
      Transaction := UniMainModule.IBTransaction1;
      Close;
      SQL.Text := 'select';
      SQL.Add(' count(p.pedido_id) as quantidade');
      SQL.Add(' from tbpedido p');
      SQL.Add(' where p.deletado = ''N'' ');
      SQL.Add(' and p.status <> ''Cancelado'' ');
      SQL.Add(' and cast(p.data_inc as date) = current_date');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("QTDDia").innerHTML    = "Pedidos Emitidos Hoje (' + vlQuery.FieldByName('QUANTIDADE').AsString + ')";');

  with vlQuery do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' count(p.pedido_id) as quantidade');
      SQL.Add(' from tbpedido p');
      SQL.Add(' where p.deletado = ''N'' ');
      SQL.Add(' and p.status <> ''Cancelado'' ');
      SQL.Add(' and cast(p.data_inc as date) between current_date - extract(weekday from current_date) and current_date');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("QTDSemana").innerHTML = "Pedidos Emitidos da Semana (' + vlQuery.FieldByName('QUANTIDADE').AsString + ')";');

  with vlQuery do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' count(p.pedido_id) as quantidade');
      SQL.Add(' from tbpedido p');
      SQL.Add(' where p.deletado = ''N'' ');
      SQL.Add(' and p.status <> ''Cancelado'' ');
      SQL.Add(' and cast(p.data_inc as date) between current_date - 15 and current_date');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("QTD15Dias").innerHTML = "Pedidos Emitidos dos Últimos 15 Dias (' + vlQuery.FieldByName('QUANTIDADE').AsString + ')";');

  with vlQuery do
    begin
      Close;
      SQL.Text := 'select';
      SQL.Add(' count(p.pedido_id) as quantidade');
      SQL.Add(' from tbpedido p');
      SQL.Add(' where p.deletado = ''N'' ');
      SQL.Add(' and p.status <> ''Cancelado'' ');
      SQL.Add(' and cast(p.data_inc as date) between ''' + FormatDateTime('01.MM.YYYY', Date) + ''' ');
      SQl.Add(' and current_date');

      if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID,'PED_FULL') = False then
        SQL.Add(' and erp_vendedor = ''' + UniMainModule.vVendedorID + ''' ');

      Open;
    end;

  UniSession.JSCode('document.getElementById("QTDMes").innerHTML    = "Pedidos Emitidos do Mês (' + vlQuery.FieldByName('QUANTIDADE').AsString + ')";');

  vlQuery.Free;
end;

procedure TMainForm.UniFormAfterShow(Sender: TObject);
begin
  pAtualizaAvisos;
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  UniSession.JSCode('document.getElementById("labelUsuario").innerHTML = "Bem-vindo, ' + UniMainModule.vUsuario+'";');
  //UniSession.AddJS('carregarNome("Bem-vindo, ' + UniMainModule.vUsuario+'")');
end;

procedure TMainForm.UniHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
   if EventName = 'logout' then
    Close;

//   if EventName = 'formCliente' then
//    Form_Cliente.ShowModal;

   if EventName = 'formBuscaOrcamento' then
     Form_BuscaOrcamento.ShowModal;

   if EventName = 'formOrcamento' then
     begin
       if UniMainModule.fPerfilRotina(UniMainModule.vUsuarioID, 'ORC001') = False then
         begin
           MessageDlg(pchar(UniMainModule.vUsuario + ', você não tem permissão para Orçamento. ORC001.'), mtinformation, [mbok]);
           Abort;
         end
       else
         Form_Orcamento.ShowModal;
     end;

   if EventName = 'formPedido' then
     begin
       try
         UniMainModule.vModoPedido := 'Incluindo';
         UniMainModule.vPedido_ID  := '0';

         Form_Pedido.ShowModal;
       finally
         pAtualizaAvisos;
       end;
     end;

   if EventName = 'formBuscaPedido' then
    begin
      try
        UniMainModule.vAvisoPedidoParametro := Date + 1;
        Form_BuscaPedido.ShowModal;
      finally
        pAtualizaAvisos;
      end;
    end;

   if EventName = 'ConsultaPedidos' then
    begin
      UniMainModule.vAvisoPedidoParametro := Date + 1;
      Form_BuscaPedido.ShowModal;
    end;

   if EventName = 'RelatorioPedidos' then
     Form_PedidoREL.ShowModal;

   if EventName = 'PedidoQTDDia' then
    begin
      UniMainModule.vAvisoPedidoParametro := Date;
      Form_BuscaPedido.ShowModal;
    end;

   if EventName = 'PedidoQTDSemana' then
    begin
      UniMainModule.vAvisoPedidoParametro := Date - DayOfWeek(Date) + 1;
      Form_BuscaPedido.ShowModal;
    end;

   if EventName = 'PedidoQTD15Dias' then
    begin
      UniMainModule.vAvisoPedidoParametro := Date - 15;
      Form_BuscaPedido.ShowModal;
    end;

   if EventName = 'PedidoQTDMes' then
    begin
      UniMainModule.vAvisoPedidoParametro := StrToDate(FormatDateTime('01/MM/YYYY', Date));
      Form_BuscaPedido.ShowModal;
    end;

  // A mensagem acima dispara para qualquer click no menu que tem o evento OnClick declarado.
  // note que você pode deixar alguns itens do menu apontando diretamente para uma URL externa ou outra página em seu site.
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  pAtualizaAvisos;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
