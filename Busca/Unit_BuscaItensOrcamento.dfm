object Form_BuscaItensOrcamento: TForm_BuscaItensOrcamento
  Left = 0
  Top = 0
  ClientHeight = 345
  ClientWidth = 766
  Caption = 'Consulta de Itens do Or'#231'amento'
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
    Top = 90
    Width = 750
    Height = 247
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
      end
      item
        FieldName = 'QUANTIDADE_FINAL'
        Title.Caption = 'Quantidade'
        Width = 74
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'VALOR_FINAL'
        Title.Caption = 'Pre'#231'o'
        Width = 99
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'SUBTOTAL_FINAL'
        Title.Caption = 'Total'
        Width = 94
        Font.Name = 'Verdana'
      end>
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 41
    Width = 147
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Produto'
    TabOrder = 1
  end
  object Edit_Pesq: TUniEdit
    Left = 8
    Top = 60
    Width = 465
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 2
    OnChange = Edit_PesqChange
    OnKeyDown = Edit_PesqKeyDown
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 35
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Color = 9856100
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 3
    Alignment = taRightJustify
    Caption = 'Consulta Itens do Or'#231'amento  '
  end
  object DataSource1: TDataSource
    DataSet = qOrcamentoItem
    Left = 368
    Top = 8
  end
  object qOrcamentoItem: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'item, erp_produto||'#39'-'#39'||produto as produto, quantidade_final, '
      'valor_final, subtotal_final'
      'from tborcamento_item where deletado = '#39'n'#39)
    Left = 216
    Top = 8
    object qOrcamentoItemITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBORCAMENTO_ITEM"."ITEM"'
      Size = 3
    end
    object qOrcamentoItemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 111
    end
    object qOrcamentoItemVALOR_FINAL: TFloatField
      FieldName = 'VALOR_FINAL'
      Origin = '"TBORCAMENTO_ITEM"."VALOR_FINAL"'
      DisplayFormat = '###,###,###,###,##0.0000'
    end
    object qOrcamentoItemSUBTOTAL_FINAL: TFloatField
      FieldName = 'SUBTOTAL_FINAL'
      Origin = '"TBORCAMENTO_ITEM"."SUBTOTAL_FINAL"'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object qOrcamentoItemQUANTIDADE_FINAL: TFloatField
      FieldName = 'QUANTIDADE_FINAL'
      Origin = '"TBORCAMENTO_ITEM"."QUANTIDADE_FINAL"'
      DisplayFormat = '###,###,###,###'
    end
  end
end
