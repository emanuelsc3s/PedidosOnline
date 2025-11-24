object Form_PedidoREL: TForm_PedidoREL
  Left = 0
  Top = 0
  ClientHeight = 509
  ClientWidth = 682
  Caption = 'Relat'#243'rio de Pedidos'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  Font.Charset = ANSI_CHARSET
  Font.Height = -12
  Font.Name = 'Segoe UI'
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object DI: TUniDateTimePicker
    Left = 14
    Top = 92
    Width = 120
    Hint = ''
    DateTime = 44791.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 0
  end
  object DF: TUniDateTimePicker
    Left = 140
    Top = 92
    Width = 120
    Hint = ''
    DateTime = 44791.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 1
  end
  object Edit_PedidoI: TUniEdit
    Left = 14
    Top = 141
    Width = 120
    Hint = ''
    Text = ''
    TabOrder = 2
  end
  object Edit_PedidoF: TUniEdit
    Left = 140
    Top = 141
    Width = 120
    Hint = ''
    Text = ''
    TabOrder = 3
  end
  object Edit_PesqCliente: TUniEdit
    Left = 14
    Top = 190
    Width = 92
    Hint = ''
    Text = ''
    TabOrder = 4
    OnChange = Edit_PesqClienteChange
    OnExit = Edit_PesqClienteExit
  end
  object Edit_Cliente: TUniEdit
    Left = 140
    Top = 190
    Width = 410
    Hint = ''
    Text = ''
    TabOrder = 5
    ReadOnly = True
  end
  object Edit_PesqVendedor: TUniEdit
    Left = 14
    Top = 239
    Width = 92
    Hint = ''
    Text = ''
    TabOrder = 6
    OnChange = Edit_PesqVendedorChange
    OnExit = Edit_PesqVendedorExit
  end
  object Edit_Vendedor: TUniEdit
    Left = 140
    Top = 239
    Width = 525
    Hint = ''
    Text = ''
    TabOrder = 7
    ReadOnly = True
  end
  object Edit_PesqUsuario: TUniEdit
    Left = 14
    Top = 288
    Width = 92
    Hint = ''
    Text = ''
    TabOrder = 8
    OnChange = Edit_PesqUsuarioChange
    OnExit = Edit_PesqUsuarioExit
  end
  object Edit_Usuario: TUniEdit
    Left = 140
    Top = 288
    Width = 525
    Hint = ''
    Text = ''
    TabOrder = 9
    ReadOnly = True
  end
  object Edit_PesqProduto: TUniEdit
    Left = 14
    Top = 337
    Width = 92
    Hint = ''
    Text = ''
    TabOrder = 10
    OnChange = Edit_PesqProdutoChange
    OnExit = Edit_PesqProdutoExit
  end
  object Edit_Produto: TUniEdit
    Left = 140
    Top = 337
    Width = 525
    Hint = ''
    Text = ''
    TabOrder = 11
    ReadOnly = True
  end
  object UniLabel1: TUniLabel
    Left = 14
    Top = 71
    Width = 62
    Height = 15
    Hint = ''
    Caption = 'Emiss'#227'o de:'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
    Font.Name = 'Segoe UI'
    TabOrder = 12
  end
  object UniLabel2: TUniLabel
    Left = 140
    Top = 71
    Width = 65
    Height = 15
    Hint = ''
    Caption = 'Emiss'#227'o at'#233':'
    TabOrder = 13
  end
  object UniLabel3: TUniLabel
    Left = 14
    Top = 120
    Width = 56
    Height = 15
    Hint = ''
    Caption = 'Pedido de:'
    TabOrder = 14
  end
  object UniLabel4: TUniLabel
    Left = 140
    Top = 120
    Width = 59
    Height = 15
    Hint = ''
    Caption = 'Pedido at'#233':'
    TabOrder = 15
  end
  object UniLabel5: TUniLabel
    Left = 556
    Top = 169
    Width = 14
    Height = 15
    Hint = ''
    Caption = 'UF'
    TabOrder = 16
  end
  object UniLabel6: TUniLabel
    Left = 14
    Top = 169
    Width = 40
    Height = 15
    Hint = ''
    Caption = 'Cliente:'
    TabOrder = 17
  end
  object UniLabel7: TUniLabel
    Left = 14
    Top = 218
    Width = 53
    Height = 15
    Hint = ''
    Caption = 'Vendedor:'
    TabOrder = 18
  end
  object UniLabel8: TUniLabel
    Left = 14
    Top = 316
    Width = 46
    Height = 15
    Hint = ''
    Caption = 'Produto:'
    TabOrder = 19
  end
  object UniLabel9: TUniLabel
    Left = 14
    Top = 267
    Width = 43
    Height = 15
    Hint = ''
    Caption = 'Usu'#225'rio:'
    TabOrder = 20
  end
  object btn_Cliente: TUniButton
    Left = 112
    Top = 190
    Width = 22
    Height = 22
    Hint = ''
    Caption = ''
    TabOrder = 21
    OnClick = btn_ClienteClick
  end
  object btn_Vendedor: TUniButton
    Left = 112
    Top = 239
    Width = 22
    Height = 22
    Hint = ''
    Caption = ''
    TabOrder = 22
    OnClick = btn_VendedorClick
  end
  object btn_Usuario: TUniButton
    Left = 112
    Top = 288
    Width = 22
    Height = 22
    Hint = ''
    Caption = ''
    TabOrder = 23
    OnClick = btn_UsuarioClick
  end
  object btn_Produto: TUniButton
    Left = 112
    Top = 337
    Width = 22
    Height = 22
    Hint = ''
    Caption = ''
    TabOrder = 24
    OnClick = btn_ProdutoClick
  end
  object ComboBox_UF: TUniComboBox
    Left = 556
    Top = 190
    Width = 109
    Height = 23
    Hint = ''
    Style = csDropDownList
    Text = 'Todos'
    Items.Strings = (
      'Todos'
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
    ItemIndex = 0
    TabOrder = 25
    IconItems = <>
  end
  object Panel_Bottom: TUniPanel
    Left = 0
    Top = 438
    Width = 682
    Height = 71
    Hint = ''
    Align = alBottom
    TabOrder = 26
    Caption = ''
    object btn_Visualizar: TUniBitBtn
      Left = 14
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = 
        '<i class="fa fa-print fa-2x" style="vertical-align: middle;"></i' +
        '>   Visualizar'
      ParentFont = False
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_VisualizarClick
    end
    object btn_Auditoria: TUniBitBtn
      Left = 140
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = 
        '<i class="fa fa-window-close fa-2x" style="vertical-align: middl' +
        'e;"></i> Fechar'
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
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 27
    BorderStyle = ubsNone
    Caption = ''
    Color = 12477460
    object UniBitBtn1: TUniBitBtn
      Left = 14
      Top = 4
      Width = 61
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-search fa-2x"></i>'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzulClaro'#39');'#13#10'}')
    end
    object UniLabel10: TUniLabel
      Left = 81
      Top = 13
      Width = 142
      Height = 21
      Hint = ''
      Caption = 'Relat'#243'rio de Pedidos'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      TabOrder = 2
    end
    object UniLabel11: TUniLabel
      Left = 81
      Top = 35
      Width = 345
      Height = 13
      Hint = ''
      Caption = 'Permite imprimir pedidos de acordo com os par'#226'metros informados'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Segoe UI'
      TabOrder = 3
    end
  end
  object ComboBox_Layout: TUniComboBox
    Left = 14
    Top = 386
    Width = 651
    Height = 23
    Hint = ''
    Style = csDropDownList
    Text = 'Detalhado'
    Items.Strings = (
      'Detalhado'
      'Resumido'
      'Resumido por Cliente'
      'Resumido por Vendedor'
      'Resumido por Produto')
    ItemIndex = 0
    TabOrder = 28
    IconItems = <>
  end
  object UniLabel12: TUniLabel
    Left = 14
    Top = 365
    Width = 103
    Height = 15
    Hint = ''
    Caption = 'Layout do Relat'#243'rio'
    TabOrder = 29
  end
  object QR_PEDIDO: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      ' distinct list(pedido_id) as pedidos'
      ''
      'from tbpedido')
    Left = 395
    Top = 103
    object QR_PEDIDOPEDIDOS: TWideMemoField
      FieldName = 'PEDIDOS'
      ProviderFlags = []
      BlobType = ftWideMemo
      Size = 8
    end
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = True
    Left = 472
    Top = 120
  end
end
