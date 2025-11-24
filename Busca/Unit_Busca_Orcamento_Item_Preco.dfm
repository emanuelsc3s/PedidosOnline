object Form_Busca_Orcamento_Item_Preco: TForm_Busca_Orcamento_Item_Preco
  Left = 0
  Top = 0
  ClientHeight = 345
  ClientWidth = 1008
  Caption = 'Hist'#243'rico de Altera'#231#227'o de Pre'#231'o'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  KeyPreview = True
  MonitoredKeys.Keys = <>
  FreeOnClose = False
  Font.Name = 'Verdana'
  OnCreate = UniFormCreate
  DesignSize = (
    1008
    345)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 41
    Width = 992
    Height = 296
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'DATA_INC'
        Title.Caption = 'Alterado em'
        Title.Font.Color = 12287488
        Width = 161
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'ERP_PRODUTO'
        Title.Caption = 'Produto'
        Title.Font.Color = 12287488
        Width = 74
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'PRODUTO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Color = 12287488
        Width = 300
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'VALOR_ANTIGO'
        Title.Caption = 'Pen'#250'ltimo Pre'#231'o'
        Title.Font.Color = 12287488
        Width = 100
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'VALOR_ATUAL'
        Title.Caption = #218'ltimo Pre'#231'o'
        Title.Font.Color = 12287488
        Width = 100
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'USUARIONOME_I'
        Title.Caption = 'Alterado por'
        Title.Font.Color = 12287488
        Width = 169
        Font.Name = 'Verdana'
      end>
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 35
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Color = 9856100
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 1
    Alignment = taRightJustify
    Caption = 'Hist'#243'rico de Altera'#231#227'o de Pre'#231'o'
  end
  object DataSource1: TDataSource
    DataSet = qOrcamentoItem_Preco
    Left = 368
    Top = 8
  end
  object qOrcamentoItem_Preco: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'orcamento_id, item, erp_produto, produto, valor_antigo,'
      'valor_atual, data_inc, usuarionome_i'
      'from tborcamento_item_preco where deletado = '#39'N'#39)
    Left = 216
    Top = 8
    object qOrcamentoItem_PrecoORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."ORCAMENTO_ID"'
    end
    object qOrcamentoItem_PrecoITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."ITEM"'
      Size = 10
    end
    object qOrcamentoItem_PrecoERP_PRODUTO: TIBStringField
      FieldName = 'ERP_PRODUTO'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."ERP_PRODUTO"'
      Size = 10
    end
    object qOrcamentoItem_PrecoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."PRODUTO"'
      Size = 100
    end
    object qOrcamentoItem_PrecoVALOR_ANTIGO: TIBBCDField
      FieldName = 'VALOR_ANTIGO'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."VALOR_ANTIGO"'
      DisplayFormat = '###,###,###,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object qOrcamentoItem_PrecoVALOR_ATUAL: TIBBCDField
      FieldName = 'VALOR_ATUAL'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."VALOR_ATUAL"'
      DisplayFormat = '###,###,###,###,##0.0000'
      Precision = 18
      Size = 4
    end
    object qOrcamentoItem_PrecoDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."DATA_INC"'
    end
    object qOrcamentoItem_PrecoUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBORCAMENTO_ITEM_PRECO"."USUARIONOME_I"'
      Size = 30
    end
  end
end
