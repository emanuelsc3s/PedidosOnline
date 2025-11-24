object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 565
  ClientWidth = 877
  Caption = 'MainForm'
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAfterShow = UniFormAfterShow
  OnAjaxEvent = UniFormAjaxEvent
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 0
    Top = 0
    Width = 877
    Height = 565
    Hint = ''
    HTML.Strings = (
      '<!doctype html>'
      '<html lang="pt-br">'
      '<head>'
      '  <title>SICFAR Online</title>'
      '  <!-- Required meta tags -->'
      '  <meta charset="utf-8">'
      
        '  <meta name="viewport" content="width=device-width, initial-sca' +
        'le=1, shrink-to-fit=no">'
      ''
      '  <!-- Bootstrap CSS -->'
      '  <link rel="stylesheet" href="pagina/css/bootstrap.css">'
      
        '  <link rel="stylesheet" type="text/css" href="pagina/css/style.' +
        'css">'
      ''
      '  <!-- Font icons -->'
      '  <link rel="stylesheet" href="pagina/css/font-awesome.min.css">'
      ''
      '</head>'
      '<body>'
      '  <header class="container">'
      '    <nav class="navbar navbar-expand-lg navbar-light bg-light">'
      
        '      <a class="navbar-brand d-block d-md-none" href="#">Menu Pr' +
        'incipal</a>'
      
        '      <button class="navbar-toggler" type="button" data-toggle="' +
        'collapse" data-target="#menuSuperior" aria-controls="menuSuperio' +
        'r" aria-expanded="false" aria-label="Toggle navigation">'
      '        <span class="navbar-toggler-icon"></span>'
      '      </button>'
      '      <div class="collapse navbar-collapse" id="menuSuperior">'
      '        <ul class="navbar-nav">'
      '          '
      '          <li class="nav-item dropdown">'
      
        '            <a class="nav-link dropdown-toggle" href="#" id="con' +
        'sultas" data-toggle="dropdown" aria-haspopup="true" aria-expande' +
        'd="false">'
      
        '              <i class="fa fa-search" aria-hidden="true"></i> Co' +
        'nsultas'
      '            </a>'
      
        '             <div class="dropdown-menu" aria-labelledby="consult' +
        'as">'
      
        '              <a class="dropdown-item" href="#" onClick="ajaxReq' +
        'uest(MainForm.UniHTMLFrame1, ['#39'ConsultaPedidos'#39'], { });">Consult' +
        'a de Pedidos</a>'
      '            </div>'
      '          </li>'
      ''
      '         <!-- <li class="nav-item dropdown">'
      
        '            <a class="nav-link dropdown-toggle" href="#" id="fer' +
        'ramentas" data-toggle="dropdown" aria-haspopup="true" aria-expan' +
        'ded="false">'
      
        '              <i class="fa fa-gavel" aria-hidden="true"></i> Fer' +
        'ramentas'
      '            </a>'
      
        '            <div class="dropdown-menu" aria-labelledby="ferramen' +
        'tas">'
      
        '              <a class="dropdown-item" href="#">Primeiro link</a' +
        '>'
      '              <a class="dropdown-item" href="#">Segundo link</a>'
      
        '              <a class="dropdown-item" href="#">Terceiro link</a' +
        '>'
      '            </div>'
      '          </li> -->'
      ''
      '          <li class="nav-item dropdown">'
      
        '            <a class="nav-link dropdown-toggle" href="#" id="rel' +
        'atorios" data-toggle="dropdown" aria-haspopup="true" aria-expand' +
        'ed="false">'
      
        '              <i class="fa fa-bar-chart" aria-hidden="true"></i>' +
        ' Relat'#243'rios'
      '            </a>'
      
        '            <div class="dropdown-menu" aria-labelledby="relatori' +
        'os">'
      
        '              <a class="dropdown-item" onClick="ajaxRequest(Main' +
        'Form.UniHTMLFrame1, ['#39'RelatorioPedidos'#39'], { });" href="#">Relat'#243 +
        'rio de Pedidos</a>'
      
        '              <!--<a class="dropdown-item" href="#">Segundo link' +
        '</a>'
      
        '              <a class="dropdown-item" href="#">Terceiro link</a' +
        '>-->'
      '            </div>'
      '          </li>'
      ''
      '          <li class="nav-item dropdown">'
      
        '            <a class="nav-link dropdown-toggle" href="#" id="aju' +
        'daMenu" data-toggle="dropdown" aria-haspopup="true" aria-expande' +
        'd="false">'
      
        '              <i class="fa fa-question-circle" aria-hidden="true' +
        '"></i> Ajuda'
      '            </a>'
      
        '            <!--<div class="dropdown-menu" aria-labelledby="ajud' +
        'aMenu">'
      
        '              <a class="dropdown-item" href="#">Primeiro link</a' +
        '>'
      '              <a class="dropdown-item" href="#">Segundo link</a>'
      
        '              <a class="dropdown-item" href="#">Terceiro link</a' +
        '> '
      '            </div>  -->'
      '          </li>'
      ''
      '          <li class="nav-item">'
      
        '            <a class="nav-link" onClick="ajaxRequest(MainForm.Un' +
        'iHTMLFrame1, ['#39'logout'#39'], { });" href="#" id="ajudaMenu" data-tog' +
        'gle="dropdown" aria-haspopup="true" aria-expanded="false">'
      
        '              <i class="fa fa-share" aria-hidden="true"></i> Sai' +
        'r'
      '            </a>'
      '          </li>'
      ''
      '        </ul>'
      '      </div>'
      
        '      <i class="fa fa-user-circle fa-3x" aria-hidden="true" styl' +
        'e="color: white"></i>'
      
        '      <label class="nav-item" id="labelUsuario" style="color: wh' +
        'ite; margin-left: 20px"></label>'
      '    </nav>'
      '  </header>'
      ''
      '  <div class="container principal">'
      '    <div class="row">'
      '      <div class="col-12 col-md-3 lateral">'
      
        '        <div class="accordionLateral" id="accordion" role="tabli' +
        'st">'
      '          '
      '          <div class="card">'
      
        '            <div class="card-header collapsed" role="tab" id="he' +
        'adingClientes" data-toggle="collapse" href="#cliente" aria-expan' +
        'ded="false" aria-controls="cliente">'
      '              <p class="mb-0 tamanho">'
      '                Clientes'
      '              </p>'
      '            </div>'
      
        '            <div id="cliente" role="tabpanel" aria-labelledby="h' +
        'eadingClientes" data-parent="#accordion" style="line-height: 140' +
        'px;">'
      
        '              <div align="center" id="logomarca" class="col-md-1' +
        '2"> <!-- precisa de "lateralImg" aqui! -->'
      '                '
      
        '                <!-- imagem aqui com a class "img-fluid" para se' +
        'r responsivo -->'
      '                <ul class="Espacamento">'
      '                '
      
        '                  <li><a href= "http://www.farmace.com.br" ><img' +
        ' src="pagina/img/logomarca.png" class="img-fluid"></a></li>'
      '                '
      '                </ul>  '
      ''
      '              </div>'
      '            </div>'
      '          </div>'
      ''
      ''
      '          <div class="card">'
      
        '            <div class="card-header collapsed" role="tab" id="he' +
        'adingCadastro" data-toggle="collapse" href="#cadastro" aria-expa' +
        'nded="false" aria-controls="cadastro">'
      '              <p class="mb-0 tamanho">'
      '                Cadastro'
      '              </p>'
      '            </div>'
      
        '            <div id="cadastro" class="collapse" role="tabpanel" ' +
        'aria-labelledby="headingCadastro" data-parent="#accordion">'
      '              <div class="card-body">'
      ''
      '                <!-- LISTA DE LINKS -->'
      '                <ul class="EspacamentoTamanho">'
      ''
      '                  <li><a href="#Link">Usu'#225'rios</a></li>'
      '                  <li><a href="#Link">Produtos</a></li>'
      
        '                  <li><a href="#Link" onClick="ajaxRequest(MainF' +
        'orm.UniHTMLFrame1, ['#39'formCliente'#39'], { });">Clientes</a></li>'
      '                  '
      '                </ul>'
      '                <!-- ############## -->'
      ''
      '              </div>'
      '            </div>'
      '          </div>'
      ''
      '          <div class="card">'
      
        '            <div class="card-header collapsed" role="tab" id="he' +
        'adingFaturamento" data-toggle="collapse" href="#faturamento" ari' +
        'a-expanded="false" aria-controls="faturamento">'
      '              <p class="mb-0 tamanho">'
      '                Faturamento'
      '              </p>'
      '            </div>'
      
        '            <div id="faturamento" class="collapse" role="tabpane' +
        'l" aria-labelledby="headingFaturamento" data-parent="#accordion"' +
        '>'
      '              <div class="card-body">'
      '                '
      '                <!-- LISTA DE LINKS -->'
      '                <ul class="EspacamentoTamanho">'
      
        '                  <li><a href="#NovoOrcamento" onClick="ajaxRequ' +
        'est(MainForm.UniHTMLFrame1, ['#39'formOrcamento'#39'], { });">Novo Or'#231'am' +
        'ento</a></li>'
      
        '                  <li><a href="#ConsultaOrcamento" onClick="ajax' +
        'Request(MainForm.UniHTMLFrame1, ['#39'formBuscaOrcamento'#39'], { });">C' +
        'onsulta Or'#231'amento</a></li>'
      
        '                  <li><a href="#Link" onClick="ajaxRequest(MainF' +
        'orm.UniHTMLFrame1, ['#39'formPedido'#39'], { });">Novo Pedido</a></li>'
      
        '                  <li><a href="#Link" onClick="ajaxRequest(MainF' +
        'orm.UniHTMLFrame1, ['#39'formBuscaPedido'#39'], { });">Consulta Pedido</' +
        'a></li>'
      '                </ul>'
      '                <!-- ############## -->'
      ''
      '              </div>'
      '            </div>'
      '          </div>'
      ''
      ''
      '          <div class="card">'
      
        '            <div class="card-header collapsed" role="tab" id="he' +
        'adingAjuda" data-toggle="collapse" href="#ajudaLateral" aria-exp' +
        'anded="false" aria-controls="ajudaLateral">'
      '              <p class="mb-0 tamanho">'
      '                Ajuda'
      '              </p>'
      '            </div>'
      
        '            <div id="ajudaLateral" class="collapse" role="tabpan' +
        'el" aria-labelledby="headingAjuda" data-parent="#accordion">'
      '              <div class="card-body">'
      '                '
      '                <!-- LISTA DE LINKS -->'
      '                <ul class="EspacamentoTamanho">'
      '                  <li><a href="#Link">Op'#231#227'o aqui</a></li>'
      ''
      '                </ul>'
      '                <!-- ############## -->'
      ''
      '              </div>'
      '            </div>'
      '          </div>'
      ''
      '        </div>'
      '      </div>'
      ''
      '      <div class="col-12 col-md-9 conteudoPrincipal">'
      '        <div class="painelAvisos">'
      
        '          <a href="#link">Painel de Aviso <i class="fa fa-exclam' +
        'ation-circle" aria-hidden="true"></i></a>'
      '        </div>'
      '        <div class="conteudo">'
      '          <h5>Pedidos</h5>'
      '          <ul style=" font-size: 12px; line-height: 18px;">'
      
        '            <li><a href="#" onClick="ajaxRequest(MainForm.UniHTM' +
        'LFrame1, ['#39'PedidoQTDDia'#39'], { });"    id="QTDDia"></a></li>'
      
        '            <li><a href="#" onClick="ajaxRequest(MainForm.UniHTM' +
        'LFrame1, ['#39'PedidoQTDSemana'#39'], { });" id="QTDSemana"></a></li>'
      
        '            <li><a href="#" onClick="ajaxRequest(MainForm.UniHTM' +
        'LFrame1, ['#39'PedidoQTD15Dias'#39'], { });" id="QTD15Dias"></a></li>'
      
        '            <li><a href="#" onClick="ajaxRequest(MainForm.UniHTM' +
        'LFrame1, ['#39'PedidoQTDMes'#39'], { });"    id="QTDMes"></a></li>'
      '          </ul>'
      '        </div>'
      '      </div>'
      '    </div>'
      '  </div>'
      ''
      '  <!-- Optional JavaScript -->'
      '  <!-- jQuery first, then Popper.js, then Bootstrap JS -->'
      
        '  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"' +
        ' integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDM' +
        'VNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>'
      
        '  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/' +
        '1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7' +
        'oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anony' +
        'mous"></script>'
      '  <script src="pagina/js/bootstrap.min.js"></script>'
      '</body>'
      '</html>')
    Align = alClient
    OnAjaxEvent = UniHTMLFrame1AjaxEvent
  end
end
