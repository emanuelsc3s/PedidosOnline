object Form_Busca_Cliente: TForm_Busca_Cliente
  Left = 0
  Top = 0
  ClientHeight = 393
  ClientWidth = 766
  Caption = 'Consulta de Cliente'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  KeyPreview = True
  MonitoredKeys.Keys = <>
  FreeOnClose = False
  Font.Name = 'Verdana'
  DesignSize = (
    766
    393)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 118
    Width = 750
    Height = 267
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'ERP_CLIENTE'
        Title.Caption = 'C'#243'digo'
        Width = 58
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 372
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'UF'
        Title.Caption = 'UF'
        Width = 32
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'TIPOCLIENTE'
        Title.Caption = 'Tipo de Cliente'
        Width = 122
        Font.Name = 'Verdana'
        ReadOnly = True
      end
      item
        FieldName = 'CIDADE'
        Title.Caption = 'Munic'#237'pio'
        Width = 214
        Font.Name = 'Verdana'
      end
      item
        Title.Caption = 'Endere'#231'o'
        Width = 424
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'BAIRRO'
        Title.Caption = 'Bairro'
        Width = 214
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'COMPLEMENTO'
        Title.Caption = 'Complemento'
        Width = 354
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CEP'
        Title.Caption = 'CEP'
        Width = 71
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CPFCNPJ'
        Title.Caption = 'CPF/CNPJ'
        Width = 120
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 99
        Font.Name = 'Verdana'
        ReadOnly = True
      end
      item
        FieldName = 'EMAIL'
        Title.Caption = 'Email'
        Width = 704
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'COMPRA_ULTIMA'
        Title.Caption = #218'ltima Compra'
        Width = 85
        Font.Name = 'Verdana'
        ReadOnly = True
      end
      item
        FieldName = 'COMPRA_NUMERO'
        Title.Caption = 'N'#186' Compras'
        Width = 80
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'TIPOPESSOA'
        Title.Caption = 'Pessoa'
        Width = 63
        Font.Name = 'Verdana'
        ReadOnly = True
      end>
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 71
    Width = 214
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Nome ou CPF/CNPJ'
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
    DataSet = QR_CLIENTE
    Left = 360
    Top = 152
  end
  object QR_CLIENTE: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'c.cliente_id, c.erp_cliente, c.nome,  c.cidade_id, c.cidade,'
      'c.uf, c.bairro, c.complemento, c.cep, c.cpfcnpj, c.telefone,'
      'c.email, c.compra_ultima, c.compra_numero, c.tipocliente_id,'
      'c.tipocliente, c.tipopessoa, c.endereco'
      'from tbcliente c where c.deletado = '#39'N'#39)
    Left = 440
    Top = 151
    object QR_CLIENTECLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = '"TBCLIENTE"."CLIENTE_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_CLIENTEERP_CLIENTE: TIBStringField
      FieldName = 'ERP_CLIENTE'
      Origin = '"TBCLIENTE"."ERP_CLIENTE"'
      Size = 10
    end
    object QR_CLIENTENOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TBCLIENTE"."NOME"'
      Size = 80
    end
    object QR_CLIENTECIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Origin = '"TBCLIENTE"."CIDADE_ID"'
    end
    object QR_CLIENTECIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"TBCLIENTE"."CIDADE"'
      Size = 40
    end
    object QR_CLIENTEUF: TIBStringField
      FieldName = 'UF'
      Origin = '"TBCLIENTE"."UF"'
      Size = 2
    end
    object QR_CLIENTEBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"TBCLIENTE"."BAIRRO"'
      Size = 40
    end
    object QR_CLIENTECEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"TBCLIENTE"."CEP"'
      Size = 10
    end
    object QR_CLIENTECPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = '"TBCLIENTE"."CPFCNPJ"'
      Size = 18
    end
    object QR_CLIENTETELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"TBCLIENTE"."TELEFONE"'
      Size = 14
    end
    object QR_CLIENTEEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TBCLIENTE"."EMAIL"'
      Size = 100
    end
    object QR_CLIENTECOMPRA_ULTIMA: TDateField
      FieldName = 'COMPRA_ULTIMA'
      Origin = '"TBCLIENTE"."COMPRA_ULTIMA"'
    end
    object QR_CLIENTECOMPRA_NUMERO: TIntegerField
      FieldName = 'COMPRA_NUMERO'
      Origin = '"TBCLIENTE"."COMPRA_NUMERO"'
    end
    object QR_CLIENTETIPOCLIENTE_ID: TIntegerField
      FieldName = 'TIPOCLIENTE_ID'
      Origin = '"TBCLIENTE"."TIPOCLIENTE_ID"'
    end
    object QR_CLIENTETIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = '"TBCLIENTE"."TIPOCLIENTE"'
      Size = 60
    end
    object QR_CLIENTETIPOPESSOA: TIBStringField
      FieldName = 'TIPOPESSOA'
      Origin = '"TBCLIENTE"."TIPOPESSOA"'
      Size = 10
    end
    object QR_CLIENTEENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"TBCLIENTE"."ENDERECO"'
      Size = 80
    end
    object QR_CLIENTECOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"TBCLIENTE"."COMPLEMENTO"'
      Size = 60
    end
  end
end
