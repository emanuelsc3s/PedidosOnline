object Form_BuscaItensPedido: TForm_BuscaItensPedido
  Left = 0
  Top = 0
  ClientHeight = 345
  ClientWidth = 766
  Caption = 'Consulta de Itens do Pedido'
  OnShow = UniFormShow
  OldCreateOrder = False
  KeyPreview = True
  MonitoredKeys.Keys = <>
  FreeOnClose = False
  Font.Name = 'Verdana'
  OnCreate = UniFormCreate
  DesignSize = (
    766
    345)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 121
    Width = 750
    Height = 216
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'ITEM'
        Title.Caption = 'Item'
        Width = 53
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 373
        Font.Name = 'Verdana'
        ReadOnly = True
      end
      item
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
        Width = 74
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'PRECO'
        Title.Caption = 'Pre'#231'o'
        Width = 99
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'SUBTOTAL'
        Title.Caption = 'Total'
        Width = 94
        Font.Name = 'Verdana'
      end>
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 71
    Width = 147
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Produto'
    TabOrder = 1
  end
  object Edit_Pesq: TUniEdit
    Left = 8
    Top = 90
    Width = 465
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 2
    OnChange = Edit_PesqChange
    OnKeyDown = Edit_PesqKeyDown
  end
  object UniButton1: TUniButton
    Left = 479
    Top = 90
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Filtrar'
    TabOrder = 3
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 4
    BorderStyle = ubsNone
    Caption = ''
    Color = 12477460
    ExplicitWidth = 682
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
    object Label_Pedido: TUniLabel
      Left = 81
      Top = 13
      Width = 133
      Height = 21
      Hint = ''
      Caption = 'Itens do Pedido N'#186' '
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
      Width = 169
      Height = 13
      Hint = ''
      Caption = 'Visualiza'#231#227'o dos Itens do Pedido'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Segoe UI'
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = qPedidoItem
    Left = 384
    Top = 64
  end
  object qPedidoItem: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'item, erp_produto||'#39'-'#39'||produto as produto, quantidade, '
      'preco, subtotal'
      'from tbpedido_item')
    Left = 304
    Top = 64
    object qPedidoItemITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBPEDIDO_ITEM"."ITEM"'
      Size = 3
    end
    object qPedidoItemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 111
    end
    object qPedidoItemQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"TBPEDIDO_ITEM"."QUANTIDADE"'
      DisplayFormat = '###,###,###,###,###'
      Precision = 18
      Size = 4
    end
    object qPedidoItemPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = '"TBPEDIDO_ITEM"."PRECO"'
      DisplayFormat = '###,###,###,####0.0000'
    end
    object qPedidoItemSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = '"TBPEDIDO_ITEM"."SUBTOTAL"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
end
