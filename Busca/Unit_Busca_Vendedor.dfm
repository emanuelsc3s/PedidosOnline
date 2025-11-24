object Form_Busca_Vendedor: TForm_Busca_Vendedor
  Left = 0
  Top = 0
  ClientHeight = 345
  ClientWidth = 766
  Caption = 'Consulta de Vendedores'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  KeyPreview = True
  MonitoredKeys.Keys = <>
  FreeOnClose = False
  Font.Name = 'Verdana'
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
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'ERP_VENDEDOR'
        Title.Caption = 'C'#243'digo'
        Width = 109
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 599
        Font.Name = 'Verdana'
      end>
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 41
    Width = 136
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Nome'
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
    OnKeyPress = Edit_PesqKeyPress
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 35
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = 9856100
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 3
    Alignment = taRightJustify
    Caption = 'Consulta Vendedores'
  end
  object DataSource1: TDataSource
    DataSet = QR_VENDEDOR
    Left = 536
    Top = 40
  end
  object QR_VENDEDOR: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'v.erp_vendedor, v.nome'
      'from tbvendedor v'
      'where v.deletado = '#39'N'#39)
    Left = 560
    Top = 128
    object QR_VENDEDORERP_VENDEDOR: TIBStringField
      FieldName = 'ERP_VENDEDOR'
      Origin = '"TBVENDEDOR"."ERP_VENDEDOR"'
      Size = 10
    end
    object QR_VENDEDORNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TBVENDEDOR"."NOME"'
      Size = 80
    end
  end
end
