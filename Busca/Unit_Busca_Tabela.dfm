object Form_Busca_Tabela: TForm_Busca_Tabela
  Left = 0
  Top = 0
  ClientHeight = 357
  ClientWidth = 659
  Caption = 'Tabelas Cadastradas'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Name = 'Verdana'
  DesignSize = (
    659
    357)
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 8
    Top = 48
    Width = 159
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Descri'#231#227'o'
    TabOrder = 0
  end
  object Edit_Pesq: TUniEdit
    Left = 8
    Top = 67
    Width = 449
    Hint = ''
    Text = ''
    TabOrder = 1
    OnChange = Edit_PesqChange
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 35
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Color = 9856100
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 2
    Alignment = taRightJustify
    Caption = 'Consulta Tabelas  '
  end
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 95
    Width = 643
    Height = 254
    Hint = ''
    DataSource = DataSource_Tabela
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 550
        Font.Name = 'Verdana'
      end>
  end
  object QR_TABELA: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select codigo, descricao from TBTABELA WHERE DELETADO = '#39'N'#39)
    Left = 488
    Top = 40
    object QR_TABELACODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TBTABELA"."CODIGO"'
      Size = 10
    end
    object QR_TABELADESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TBTABELA"."DESCRICAO"'
      Size = 300
    end
  end
  object DataSource_Tabela: TDataSource
    DataSet = QR_TABELA
    Left = 552
    Top = 40
  end
end
