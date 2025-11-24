object Form_Busca_EndEntrega: TForm_Busca_EndEntrega
  Left = 0
  Top = 0
  ClientHeight = 345
  ClientWidth = 766
  Caption = 'Consulta Endere'#231'o de Entrega do Cliente'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
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
    Top = 118
    Width = 750
    Height = 219
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Color = 12287488
    Font.Name = 'Verdana'
    ParentFont = False
    TabOrder = 0
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'ERP_CLIENTE'
        Title.Caption = 'C'#243'digo'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 58
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 372
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'UF'
        Title.Caption = 'UF'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 32
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'TIPOCLIENTE'
        Title.Caption = 'Tipo de Cliente'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 122
        Font.Color = 12287488
        Font.Name = 'Verdana'
        ReadOnly = True
      end
      item
        FieldName = 'CIDADE'
        Title.Caption = 'Munic'#237'pio'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 214
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere'#231'o'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 424
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 214
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'COMPLEMENTO'
        Title.Caption = 'Complemento'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 354
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CEP'
        Title.Caption = 'CEP'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 71
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CPFCNPJ'
        Title.Caption = 'CPF/CNPJ'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 120
        Font.Color = 12287488
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 99
        Font.Color = 12287488
        Font.Name = 'Verdana'
        ReadOnly = True
      end>
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 71
    Width = 136
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Nome'
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
    OnKeyPress = Edit_PesqKeyPress
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 3
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
    object Label_Pedido: TUniLabel
      Left = 81
      Top = 13
      Width = 134
      Height = 21
      Hint = ''
      Caption = 'Consulta de Cliente'
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
      Width = 129
      Height = 13
      Hint = ''
      Caption = 'Visualiza'#231#227'o dos Clientes'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Segoe UI'
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = QR_ENTREGA
    Left = 456
    Top = 16
  end
  object QR_ENTREGA: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'e.erp_cliente, e.nome, e.uf, e.tipocliente_id, e.tipocliente,'
      'e.cidade, e.bairro, e.complemento, e.cep,'
      
        'e.cpfcnpj, e.telefone, e.email, e.compra_ultima, e.compra_numero' +
        ','
      'e.tipopessoa, e.endereco'
      'from tbcliente_entrega e where deletado = '#39'N'#39)
    Left = 560
    Top = 40
    object QR_ENTREGAERP_CLIENTE: TIBStringField
      FieldName = 'ERP_CLIENTE'
      Origin = '"TBCLIENTE_ENTREGA"."ERP_CLIENTE"'
      Size = 10
    end
    object QR_ENTREGANOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TBCLIENTE_ENTREGA"."NOME"'
      Size = 80
    end
    object QR_ENTREGAUF: TIBStringField
      FieldName = 'UF'
      Origin = '"TBCLIENTE_ENTREGA"."UF"'
      Size = 2
    end
    object QR_ENTREGATIPOCLIENTE_ID: TIntegerField
      FieldName = 'TIPOCLIENTE_ID'
      Origin = '"TBCLIENTE_ENTREGA"."TIPOCLIENTE_ID"'
    end
    object QR_ENTREGATIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = '"TBCLIENTE_ENTREGA"."TIPOCLIENTE"'
      Size = 60
    end
    object QR_ENTREGACIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"TBCLIENTE_ENTREGA"."CIDADE"'
      Size = 40
    end
    object QR_ENTREGABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"TBCLIENTE_ENTREGA"."BAIRRO"'
      Size = 40
    end
    object QR_ENTREGACOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"TBCLIENTE_ENTREGA"."COMPLEMENTO"'
      Size = 60
    end
    object QR_ENTREGACEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"TBCLIENTE_ENTREGA"."CEP"'
      Size = 10
    end
    object QR_ENTREGACPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = '"TBCLIENTE_ENTREGA"."CPFCNPJ"'
      Size = 18
    end
    object QR_ENTREGATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"TBCLIENTE_ENTREGA"."TELEFONE"'
      Size = 14
    end
    object QR_ENTREGAEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TBCLIENTE_ENTREGA"."EMAIL"'
      Size = 100
    end
    object QR_ENTREGACOMPRA_ULTIMA: TDateField
      FieldName = 'COMPRA_ULTIMA'
      Origin = '"TBCLIENTE_ENTREGA"."COMPRA_ULTIMA"'
    end
    object QR_ENTREGACOMPRA_NUMERO: TIntegerField
      FieldName = 'COMPRA_NUMERO'
      Origin = '"TBCLIENTE_ENTREGA"."COMPRA_NUMERO"'
    end
    object QR_ENTREGATIPOPESSOA: TIBStringField
      FieldName = 'TIPOPESSOA'
      Origin = '"TBCLIENTE_ENTREGA"."TIPOPESSOA"'
      Size = 10
    end
    object QR_ENTREGAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"TBCLIENTE_ENTREGA"."ENDERECO"'
      Size = 80
    end
  end
end
