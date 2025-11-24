object Form_InserirItem: TForm_InserirItem
  Left = 0
  Top = 0
  ClientHeight = 238
  ClientWidth = 800
  Caption = 'Inserir Itens'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel21: TUniLabel
    Left = 4
    Top = 3
    Width = 38
    Height = 13
    Hint = ''
    Caption = 'Produto'
    TabOrder = 0
  end
  object Edit_Produto: TUniEdit
    Left = 4
    Top = 22
    Width = 520
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 1
    OnChange = Edit_ProdutoChange
    OnKeyDown = Edit_ProdutoKeyDown
    OnKeyPress = Edit_ProdutoKeyPress
  end
  object UniDBGrid1: TUniDBGrid
    Left = 4
    Top = 50
    Width = 790
    Height = 160
    Hint = ''
    DataSource = DataSource_cdsProdutos
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    TabOrder = 2
    ParentColor = False
    Color = clWhite
    OnCellClick = UniDBGrid1CellClick
    OnFieldImage = UniDBGrid1FieldImage
    Columns = <
      item
        FieldName = 'IMG'
        Title.Caption = '...'
        Width = 29
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
        ImageOptions.Visible = True
      end
      item
        FieldName = 'ITEM'
        Title.Caption = 'Item'
        Width = 45
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 69
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 392
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'QUANTIDADE'
        Title.Caption = 'Quantidade'
        Width = 82
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'VALOR'
        Title.Caption = 'Pre'#231'o'
        Width = 76
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'SUBTOTAL'
        Title.Caption = 'Sub-Total'
        Width = 76
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end>
  end
  object Edit_Qtde: TUniNumberEdit
    Left = 530
    Top = 22
    Width = 107
    Hint = ''
    TabOrder = 3
    Value = 1.000000000000000000
    DecimalSeparator = ','
    OnExit = Edit_QtdeExit
  end
  object Edit_Preco: TUniNumberEdit
    Left = 643
    Top = 22
    Width = 69
    Hint = ''
    TabOrder = 4
    DecimalPrecision = 4
    DecimalSeparator = ','
  end
  object bt_Adicionar_Produto: TUniButton
    Left = 718
    Top = 20
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Adicionar'
    TabOrder = 5
    OnClick = bt_Adicionar_ProdutoClick
  end
  object LabelTotal: TUniLabel
    Left = 3
    Top = 218
    Width = 164
    Height = 14
    Hint = ''
    Caption = 'Total do Pedido: R$ 0,00'
    Align = alCustom
    ParentFont = False
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 6
  end
  object UniLabel22: TUniLabel
    Left = 572
    Top = 3
    Width = 56
    Height = 13
    Hint = ''
    Caption = 'Quantidade'
    TabOrder = 7
  end
  object UniLabel23: TUniLabel
    Left = 680
    Top = 3
    Width = 27
    Height = 13
    Hint = ''
    Caption = 'Pre'#231'o'
    TabOrder = 8
  end
  object DBGrid_Produto: TUniDBGrid
    Left = 770
    Top = 32
    Width = 520
    Height = 160
    Hint = ''
    Visible = False
    DataSource = DataSource_Produto
    ReadOnly = True
    WebOptions.PageSize = 5
    LoadMask.Message = 'Loading data...'
    TabOrder = 9
    OnDblClick = DBGrid_ProdutoDblClick
    Columns = <
      item
        FieldName = 'B1_COD'
        Title.Caption = 'C'#243'digo'
        Width = 75
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'B1_DESC'
        Title.Caption = 'Descri'#231#227'o'
        Width = 423
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
      end>
  end
  object UniImage2: TUniImage
    Left = 216
    Top = 8
    Width = 16
    Height = 15
    Hint = ''
    RTL = True
    ParentRTL = False
    Visible = False
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
      001008060000001FF3FF610000000473424954080808087C0864880000000970
      48597300000B1300000B1301009A9C180000010F4944415478DA6364A010300E
      5E03DED9996431FE67FC06E3FF0722A1C3A717123280D1D0C424F1DF3FC67F61
      ACFFFC3EFD657C0793E06464E45EFF97612713D3FF1FE7CF9C5981D5002D2D2D
      1E0E2EDEA8FF7F7FEDC4E5B2FF8C2CFE17CE9D9E84D30B06C6A61540F78AFDFF
      CFF813D3C3FF4481C4FE8BE74E2FC56980BEB15900C39F9F070EF0712A091E3E
      71EEBD9D89A1E0A133E741B4FD3786DFCC7F1939CE9F3F7D860803D802040F9F
      5EF0DED6340146DB7FFF7F660819B0978FC359E4F0C9B56F6CCD8361B4D3F7BF
      37091A60606CECC5F88FE5FEBF7F3F9E6344022BAB09D3BF7F2FCF9D3B7719A7
      01F6F6F62C1FBF7C71FBCFC0CC866100E3BF2F17CE9CD9CB004E98380C201550
      6C000052B6A61136133D0B0000000049454E44AE426082}
  end
  object DataSource_Produto: TDataSource
    DataSet = qProduto
    Left = 457
    Top = 121
  end
  object qProduto: TADOQuery
    Connection = dmProtheus.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT B1_COD, B1_DESC FROM SB1010'
      '  WHERE D_E_L_E_T_ <> '#39'*'#39
      '  AND B1_TIPO = '#39'07'#39
      '  AND B1_MSBLQL <> '#39'1'#39
      '  ORDER BY B1_DESC')
    Left = 305
    Top = 40
    object qProdutoB1_COD: TStringField
      FieldName = 'B1_COD'
      Size = 15
    end
    object qProdutoB1_DESC: TStringField
      FieldName = 'B1_DESC'
      Size = 50
    end
  end
  object qAuxiliar: TADOQuery
    Connection = dmProtheus.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT B1_CONV FROM SB1010 (NOLOCK) where B1_COD = '#39'0'#39)
    Left = 348
    Top = 112
    object qAuxiliarB1_CONV: TFloatField
      FieldName = 'B1_CONV'
    end
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      C10000009619E0BD010000001800000007000000000003000000C10003494D47
      04004B0000000100075355425459504502004900090047726170686963730004
      4954454D010049000000010005574944544802000200030006434F4449474F01
      00490000000100055749445448020002000A000944455343524943414F010049
      00000001000557494454480200020064000A5155414E54494441444508000400
      000000000556414C4F52080004000000000008535542544F54414C0800040000
      0000000000}
    Active = True
    Aggregates = <>
    Params = <>
    BeforeInsert = cdsProdutosBeforeInsert
    Left = 473
    Top = 70
    object cdsProdutosIMG: TGraphicField
      FieldName = 'IMG'
      BlobType = ftGraphic
    end
    object cdsProdutosITEM: TStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object cdsProdutosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutosQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsProdutosVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,###,##0.0000'
    end
    object cdsProdutosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,###,###,##0.00'
    end
  end
  object DataSource_cdsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 825
    Top = 28
  end
end
