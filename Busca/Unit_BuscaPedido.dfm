object Form_BuscaPedido: TForm_BuscaPedido
  Left = 0
  Top = 0
  ClientHeight = 580
  ClientWidth = 951
  Caption = 'Consulta de Pedido'
  OnShow = UniFormShow
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  KeyPreview = True
  MonitoredKeys.Keys = <>
  FreeOnClose = False
  Font.Name = 'Verdana'
  OnAfterShow = UniFormAfterShow
  OnCreate = UniFormCreate
  DesignSize = (
    951
    580)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGridConsulta: TUniDBGrid
    Left = 8
    Top = 212
    Width = 935
    Height = 291
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Aguarde, processando...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Color = 12477450
    Font.Name = 'Verdana'
    ParentFont = False
    TabOrder = 0
    OnCellClick = UniDBGridConsultaCellClick
    Columns = <
      item
        FieldName = 'PRINT'
        Title.Alignment = taCenter
        Title.Caption = '...'
        Width = 32
        Font.Color = 12477450
        Font.Name = 'Verdana'
        CheckBoxField.Enabled = False
        ImageOptions.Visible = True
      end
      item
        FieldName = 'ITENS'
        Title.Alignment = taCenter
        Title.Caption = '...'
        Width = 32
        Font.Color = 12477450
        Font.Name = 'Verdana'
        CheckBoxField.Enabled = False
        ImageOptions.Visible = True
      end
      item
        FieldName = 'ALTERAR'
        Title.Alignment = taCenter
        Title.Caption = '...'
        Width = 32
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'APROVAR'
        Title.Alignment = taCenter
        Title.Caption = '...'
        Width = 32
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'ANEXO'
        Title.Alignment = taCenter
        Title.Caption = '...'
        Width = 32
        Font.Color = 12477450
        Font.Name = 'Verdana'
        CheckBoxField.AutoPost = True
        CheckBoxField.Enabled = False
        ImageOptions.Visible = True
      end
      item
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 88
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'PEDIDO_ID'
        Title.Caption = 'Pedido'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 80
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 100
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'STATUS'
        Title.Caption = 'Status Pedido'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 120
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'ORCAMENTO_ID'
        Title.Caption = 'Or'#231'amento'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 90
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'USUARIONOME_I'
        Title.Caption = 'Emitente'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 214
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'VALOR_PEDIDO'
        Title.Alignment = taRightJustify
        Title.Caption = 'R$ Valor'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 92
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 454
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CLI_TIPO'
        Title.Caption = 'Tipo de Cliente'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 147
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CLI_CIDADE'
        Title.Caption = 'Cidade'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 190
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CLI_UF'
        Title.Caption = 'UF'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 43
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CLI_CPFCNPJ'
        Title.Caption = 'CNPJ'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 130
        Font.Color = 12477450
        Font.Name = 'Verdana'
      end>
  end
  object Edit_Pesq: TUniEdit
    Left = 371
    Top = 183
    Width = 318
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 220
    Top = 164
    Width = 83
    Height = 13
    Hint = ''
    Caption = 'Pesquisar por:'
    TabOrder = 2
  end
  object pCampo: TUniComboBox
    Left = 220
    Top = 183
    Width = 145
    Hint = ''
    Style = csDropDownList
    Text = 'Pedido'
    Items.Strings = (
      'Pedido'
      'C'#243'digo'
      'Status'
      'Cliente'
      'CPF/CNPJ'
      'Cidade'
      'UF'
      'Emitente')
    ItemIndex = 0
    TabOrder = 3
    IconItems = <>
  end
  object btn_Consultarold: TUniButton
    Left = 709
    Top = 181
    Width = 100
    Height = 25
    Hint = ''
    Visible = False
    Caption = '<i class="fa fa-search"></i>  Consultar'
    ParentFont = False
    Font.Color = clWhite
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 4
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoAzul'#39');'#13#10'}')
  end
  object DI: TUniDateTimePicker
    Left = 8
    Top = 183
    Width = 100
    Hint = ''
    DateTime = 43673.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 5
  end
  object DF: TUniDateTimePicker
    Left = 114
    Top = 183
    Width = 100
    Hint = ''
    DateTime = 43673.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 6
  end
  object UniLabel3: TUniLabel
    Left = 8
    Top = 164
    Width = 21
    Height = 13
    Hint = ''
    Caption = 'De:'
    TabOrder = 7
  end
  object UniLabel4: TUniLabel
    Left = 114
    Top = 165
    Width = 24
    Height = 13
    Hint = ''
    Caption = 'At'#233':'
    TabOrder = 8
  end
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 8
    Top = 0
    Width = 935
    Height = 161
    Hint = ''
    HTML.Strings = (
      '<!DOCTYPE html>'
      '<html lang="en">'
      '   '
      '   <head>'
      '      <meta charset="utf-8">'
      '      <meta http-equiv="X-UA-Compatible" content="IE=edge">'
      
        '      <meta name="viewport" content="width=device-width, initial' +
        '-scale=1, shrink-to-fit=no">'
      '      <meta name="description" content="">'
      '      <meta name="author" content="">'
      ''
      '      <!-- Custom fonts for this template-->'
      
        '      <link href="cards-faturamento/vendor/fontawesome-free/css/' +
        'all.min.css" rel="stylesheet" type="text/css">'
      ''
      '      <!-- Custom styles for this template-->'
      
        '      <link href="cards-faturamento/css/sb-admin-2.css" rel="sty' +
        'lesheet">'
      ''
      '   </head>'
      ''
      '   <body id="page-top">'
      '      <div id="header">'
      '         <div id="logo">'
      
        '             <h1 style="margin-top: 6px !important;">SIC PDV - C' +
        'onsulta Pedidos de Venda</h1>'
      '         </div>'
      '      </div>'
      '      <br>'
      '      '
      '      <!-- Page Wrapper -->'
      '      <div id="wrapper">'
      ''
      '         <!-- Content Wrapper -->'
      '         <div id="content-wrapper" class="d-flex flex-column">'
      ''
      '            <!-- Main Content -->'
      '            <div id="content">'
      ''
      '               <!-- Page Content -->'
      '               <div class="container-fluid">'
      ''
      '                  <!-- Content Row -->'
      '                  <div class="row">'
      ''
      '                     <!-- Total Pedido -->'
      '                     <div class="col-xl-3 col-md-3">'
      
        '                        <div class="card border-left-custom-blue' +
        ' shadow h-100 py-2">'
      '                           <div class="card-body">'
      
        '                              <div class="row no-gutters align-i' +
        'tems-center">'
      '                                 <div class="col mr-2">'
      
        '                                    <div id ="TotalPedido" class' +
        '="h2 mb-0 font-weight-bold text-custom-blue">R$ 0,00</div>'
      
        '                                    <div style='#39'font-size: 12px;' +
        #39' class="text-xs font-weight-bold text-custom-blue text-uppercas' +
        'e mb-0">Total Pedido</div>'
      '                                 </div>'
      '                                 <div class="col-auto">'
      
        '                                    <i class="fas fa-clipboard-l' +
        'ist fa-2x text-gray-300"></i>'
      '                                 </div>'
      '                              </div>'
      '                           </div>'
      '                        </div>'
      '                     </div>'
      '                     <!-- Total Or'#231'ado -->'
      ''
      '                     <!-- Total Aprovado -->'
      '                     <div class="col-xl-3 col-md-3">'
      
        '                        <div class="card border-left-custom-blue' +
        ' shadow h-100 py-2">'
      '                           <div class="card-body">'
      
        '                              <div class="row no-gutters align-i' +
        'tems-center">'
      '                                 <div class="col mr-2">'
      
        '                                    <div id ="totalAprovado" cla' +
        'ss="h2 mb-0 font-weight-bold text-custom-blue">R$ 0,00</div>'
      
        '                                    <div style='#39'font-size: 12px;' +
        #39' class="text-xs font-weight-bold text-custom-blue text-uppercas' +
        'e mb-0">TOTAL APROVADO</div>'
      '                                 </div>'
      '                                 <div class="col-auto">'
      
        '                                    <i class="fas fa-clipboard-c' +
        'heck fa-2x text-gray-300"></i>'
      '                                 </div>'
      '                              </div>'
      '                           </div>'
      '                        </div>'
      '                     </div>'
      '                     <!-- Total Aprovado -->'
      ''
      '                     <!-- Total em An'#225'lise -->'
      '                     <div class="col-xl-3 col-md-3">'
      
        '                        <div class="card border-left-custom-blue' +
        ' shadow h-100 py-2">'
      '                           <div class="card-body">'
      
        '                              <div class="row no-gutters align-i' +
        'tems-center">'
      '                                 <div class="col mr-2">'
      
        '                                    <div id ="totalAnalise" clas' +
        's="h2 mb-0 font-weight-bold text-custom-blue">R$ 0,00</div>'
      
        '                                    <div style='#39'font-size: 12px;' +
        #39' class="text-xs font-weight-bold text-custom-blue text-uppercas' +
        'e mb-0">TOTAL EM AN'#193'LISE</div>'
      '                                 </div>'
      '                                 <div class="col-auto">'
      
        '                                    <i class="fas fa-file-invoic' +
        'e-dollar fa-2x text-gray-300"></i>'
      '                                 </div>'
      '                              </div>'
      '                           </div>'
      '                        </div>'
      '                     </div>'
      '                     <!-- Total em An'#225'lise -->'
      ''
      '                     <!-- Pre'#231'o M'#233'dio -->'
      '                     <div class="col-xl-3 col-md-3">'
      
        '                        <div class="card border-left-custom-blue' +
        ' shadow h-100 py-2">'
      '                           <div class="card-body">'
      
        '                              <div class="row no-gutters align-i' +
        'tems-center">'
      '                                 <div class="col mr-2">'
      
        '                                    <div id ="totalMedio" class=' +
        '"h2 mb-0 font-weight-bold text-custom-blue">R$ 0,00</div>'
      
        '                                    <div style='#39'font-size: 12px;' +
        #39' class="text-xs font-weight-bold text-custom-blue text-uppercas' +
        'e mb-0">VALOR M'#201'DIO</div>'
      '                                 </div>'
      '                                 <div class="col-auto">'
      
        '                                    <i class="fas fa-tags fa-2x ' +
        'text-gray-300"></i>'
      '                                 </div>'
      '                              </div>'
      '                           </div>'
      '                        </div>'
      '                     </div>'
      '                     <!-- Pre'#231'o M'#233'dio -->'
      '                  '
      '                  </div>'
      '                  <!-- Content Row -->'
      '               '
      '               </div>'
      '               <!-- Page Content -->'
      ''
      '            </div>'
      '            <!-- Main Content -->'
      ''
      '         </div>'
      '         <!-- Content Wrapper -->'
      ''
      '      </div>'
      '      <!-- Page Wrapper -->'
      '      '
      '   </body>'
      ''
      '</html>')
    Anchors = [akLeft, akTop, akRight]
  end
  object btn_Imprimirold: TUniButton
    Left = 827
    Top = 181
    Width = 100
    Height = 25
    Hint = ''
    Visible = False
    Caption = '<i class="fa fa-print"></i>  Imprimir'
    ParentFont = False
    Font.Color = clWhite
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 10
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoAzul'#39');'#13#10'}')
  end
  object Panel_Bottom: TUniPanel
    Left = 0
    Top = 509
    Width = 951
    Height = 71
    Hint = ''
    Align = alBottom
    TabOrder = 11
    Caption = ''
    object btn_Consultar: TUniBitBtn
      Left = 14
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-search fa-2x"></i> Consultar'
      ParentFont = False
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_ConsultarClick
    end
    object btn_Auditoria: TUniBitBtn
      Left = 266
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-book fa-2x"></i> Auditoria'
      ParentFont = False
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_AuditoriaClick
    end
    object btn_Imprimir: TUniBitBtn
      Left = 140
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-print fa-2x"></i> Imprimir'
      ParentFont = False
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_ImprimirClick
    end
  end
  object DataSource1: TDataSource
    DataSet = qPedido
    Left = 376
    Top = 296
  end
  object qPedido: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    OnCalcFields = qPedidoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      
        ' codigo, orcamento_id, situacao, emissao,(erp_cliente||'#39'-'#39'||cli_' +
        'nome) as Cliente,'
      
        ' cli_cidade,  cli_uf, cli_cpfcnpj, cli_tipo, valor_pedido, pedid' +
        'o_id,'
      ' usuarionome_i, status'
      'from tbpedido order by emissao desc')
    Left = 295
    Top = 295
    object qPedidoPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBPEDIDO"."PEDIDO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedidoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TBPEDIDO"."CODIGO"'
    end
    object qPedidoSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TBPEDIDO"."STATUS"'
      Size = 10
    end
    object qPedidoORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBPEDIDO"."ORCAMENTO_ID"'
    end
    object qPedidoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"TBPEDIDO"."EMISSAO"'
    end
    object qPedidoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 91
    end
    object qPedidoCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"TBPEDIDO"."CLI_CIDADE"'
      Size = 40
    end
    object qPedidoCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"TBPEDIDO"."CLI_UF"'
      Size = 2
    end
    object qPedidoCLI_CPFCNPJ: TIBStringField
      FieldName = 'CLI_CPFCNPJ'
      Origin = '"TBPEDIDO"."CLI_CPFCNPJ"'
      Size = 18
    end
    object qPedidoCLI_TIPO: TIBStringField
      FieldName = 'CLI_TIPO'
      Origin = '"TBPEDIDO"."CLI_TIPO"'
      Size = 30
    end
    object qPedidoVALOR_PEDIDO: TIBBCDField
      FieldName = 'VALOR_PEDIDO'
      Origin = '"TBPEDIDO"."VALOR_PEDIDO"'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qPedidoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"TBPEDIDO"."SITUACAO"'
    end
    object qPedidoUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBPEDIDO"."USUARIONOME_I"'
      Size = 30
    end
    object qPedidoPRINT: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRINT'
      Size = 1000
      Calculated = True
    end
    object qPedidoITENS: TStringField
      FieldKind = fkCalculated
      FieldName = 'ITENS'
      Size = 1000
      Calculated = True
    end
    object qPedidoALTERAR: TStringField
      FieldKind = fkCalculated
      FieldName = 'ALTERAR'
      Size = 1000
      Calculated = True
    end
    object qPedidoANEXO: TStringField
      FieldKind = fkCalculated
      FieldName = 'ANEXO'
      Size = 1000
      Calculated = True
    end
    object qPedidoAPROVAR: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'APROVAR'
      Size = 1000
      Calculated = True
    end
  end
  object qContraproposta: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from tborcamento_status')
    Left = 464
    Top = 297
  end
end
