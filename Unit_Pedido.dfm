object Form_Pedido: TForm_Pedido
  Left = 0
  Top = 0
  Width = 1035
  Height = 600
  VertScrollBar.Visible = False
  Caption = 'Emiss'#227'o de Pedido de Venda'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  AutoScroll = True
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniScrollBox1: TUniScrollBox
    Left = 109
    Top = 67
    Width = 827
    Height = 434
    Hint = ''
    TabOrder = 4
    ScrollHeight = 797
    ScrollWidth = 804
    ScrollY = 365
    object Edit_CliCNPJ: TUniEdit
      Left = 98
      Top = -303
      Width = 205
      Hint = ''
      Text = ''
      TabOrder = 0
      OnExit = Edit_CliCNPJExit
    end
    object dtp_Entregar: TUniDateTimePicker
      Left = 98
      Top = -331
      Width = 120
      Hint = ''
      DateTime = 43923.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      ClearButton = True
    end
    object UniLabel1: TUniLabel
      Left = 3
      Top = -327
      Width = 79
      Height = 13
      Hint = ''
      Caption = 'Data de Entrega'
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 3
      Top = -298
      Width = 76
      Height = 13
      Hint = ''
      Caption = 'CNPJ do Cliente'
      TabOrder = 3
    end
    object bt_Pesq: TUniButton
      Left = 309
      Top = -305
      Width = 25
      Height = 25
      Hint = ''
      Caption = ''
      TabOrder = 4
      Images = UniImageList1
      ImageIndex = 0
      OnClick = bt_PesqClick
    end
    object UniLabel3: TUniLabel
      Left = 340
      Top = -298
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'C'#243'digo'
      TabOrder = 5
    end
    object UniLabel4: TUniLabel
      Left = 530
      Top = -298
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'I.E.'
      TabOrder = 6
    end
    object UniLabel5: TUniLabel
      Left = 3
      Top = -269
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'Cliente'
      TabOrder = 7
    end
    object UniLabel6: TUniLabel
      Left = 530
      Top = -269
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'Cidade'
      TabOrder = 8
    end
    object UniLabel7: TUniLabel
      Left = 3
      Top = -242
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Endere'#231'o'
      TabOrder = 9
    end
    object UniLabel8: TUniLabel
      Left = 3
      Top = -214
      Width = 28
      Height = 13
      Hint = ''
      Caption = 'Bairro'
      TabOrder = 10
    end
    object UniLabel9: TUniLabel
      Left = 379
      Top = -214
      Width = 19
      Height = 13
      Hint = ''
      Caption = 'CEP'
      TabOrder = 11
    end
    object UniLabel10: TUniLabel
      Left = 530
      Top = -214
      Width = 42
      Height = 13
      Hint = ''
      Caption = 'Telefone'
      TabOrder = 12
    end
    object Panel_TopOrcamento: TUniPanel
      Left = 3
      Top = -362
      Width = 801
      Height = 25
      Hint = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 13
      Alignment = taLeftJustify
      TitlePosition = tpLeft
      Caption = '     Emiss'#227'o de Pedido'
      Color = 12477460
    end
    object UniLabel33: TUniLabel
      Left = 530
      Top = -242
      Width = 20
      Height = 13
      Hint = ''
      Caption = 'Tipo'
      TabOrder = 14
    end
    object Edit_Tipo: TUniEdit
      Left = 586
      Top = -247
      Width = 218
      Hint = ''
      Text = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 11170560
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 15
      ReadOnly = True
    end
    object Edit_IE: TUniEdit
      Left = 586
      Top = -303
      Width = 218
      Hint = ''
      Text = ''
      TabOrder = 16
      ReadOnly = True
    end
    object Edit_Cidade: TUniEdit
      Left = 586
      Top = -274
      Width = 185
      Hint = ''
      Text = ''
      TabOrder = 17
      ReadOnly = True
    end
    object Edit_Telefone: TUniEdit
      Left = 586
      Top = -219
      Width = 218
      Hint = ''
      Text = ''
      TabOrder = 18
      ReadOnly = True
    end
    object Edit_CEP: TUniEdit
      Left = 404
      Top = -219
      Width = 120
      Hint = ''
      Text = ''
      TabOrder = 19
      ReadOnly = True
    end
    object Edit_Bairro: TUniEdit
      Left = 98
      Top = -219
      Width = 275
      Hint = ''
      Text = ''
      TabOrder = 20
      ReadOnly = True
    end
    object Edit_Endereco: TUniEdit
      Left = 98
      Top = -247
      Width = 426
      Hint = ''
      Text = ''
      TabOrder = 21
      ReadOnly = True
    end
    object Edit_Cliente: TUniEdit
      Left = 98
      Top = -274
      Width = 426
      Hint = ''
      Text = ''
      TabOrder = 22
      ReadOnly = True
    end
    object Edit_Codigo: TUniEdit
      Left = 379
      Top = -303
      Width = 145
      Hint = ''
      Text = ''
      TabOrder = 23
      ReadOnly = True
    end
    object UniLabel11: TUniLabel
      Left = 3
      Top = -186
      Width = 43
      Height = 13
      Hint = ''
      Caption = 'Processo'
      TabOrder = 24
    end
    object Edit_Processo: TUniEdit
      Left = 98
      Top = -191
      Width = 706
      Hint = ''
      Text = ''
      TabOrder = 25
    end
    object Edit_Empenho: TUniEdit
      Left = 117
      Top = -163
      Width = 103
      Hint = ''
      Text = ''
      TabOrder = 26
    end
    object UniLabel12: TUniLabel
      Left = 226
      Top = -159
      Width = 4
      Height = 13
      Hint = ''
      Caption = '/'
      TabOrder = 27
    end
    object UniLabel13: TUniLabel
      Left = 3
      Top = -159
      Width = 44
      Height = 13
      Hint = ''
      Caption = 'Empenho'
      TabOrder = 28
    end
    object UniLabel14: TUniLabel
      Left = 98
      Top = -159
      Width = 13
      Height = 13
      Hint = ''
      Caption = 'NE'
      TabOrder = 29
    end
    object ComboBox_Empenho: TUniComboBox
      Left = 236
      Top = -163
      Width = 137
      Hint = ''
      Text = ''
      TabOrder = 30
      IconItems = <>
    end
    object Edit_UF: TUniEdit
      Left = 776
      Top = -275
      Width = 28
      Hint = ''
      Text = ''
      TabOrder = 31
      ReadOnly = True
    end
    object UniPanel1: TUniPanel
      Left = 3
      Top = -135
      Width = 801
      Height = 25
      Hint = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 32
      Alignment = taLeftJustify
      TitlePosition = tpLeft
      Caption = '     Endere'#231'o de Entrega'
      Color = 12477460
    end
    object Edit_CNPJ_Entrega: TUniEdit
      Left = 98
      Top = -101
      Width = 205
      Hint = ''
      Text = ''
      TabOrder = 33
    end
    object UniLabel15: TUniLabel
      Left = 3
      Top = -98
      Width = 81
      Height = 13
      Hint = ''
      Caption = 'CNPJ da Entrega'
      TabOrder = 34
    end
    object bt_Pesq_EndEntrega: TUniButton
      Left = 309
      Top = -104
      Width = 25
      Height = 25
      Hint = ''
      Caption = ''
      TabOrder = 35
      ImageIndex = 0
      OnClick = bt_Pesq_EndEntregaClick
    end
    object UniLabel16: TUniLabel
      Left = 340
      Top = -98
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'C'#243'digo'
      TabOrder = 36
    end
    object UniLabel17: TUniLabel
      Left = 530
      Top = -98
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'I.E.'
      TabOrder = 37
    end
    object UniLabel18: TUniLabel
      Left = 3
      Top = -69
      Width = 39
      Height = 13
      Hint = ''
      Caption = 'Contato'
      TabOrder = 38
    end
    object UniLabel19: TUniLabel
      Left = 530
      Top = -69
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'Cidade'
      TabOrder = 39
    end
    object UniLabel20: TUniLabel
      Left = 3
      Top = -41
      Width = 45
      Height = 13
      Hint = ''
      Caption = 'Endere'#231'o'
      TabOrder = 40
    end
    object UniLabel21: TUniLabel
      Left = 3
      Top = -13
      Width = 28
      Height = 13
      Hint = ''
      Caption = 'Bairro'
      TabOrder = 41
    end
    object UniLabel22: TUniLabel
      Left = 379
      Top = -13
      Width = 19
      Height = 13
      Hint = ''
      Caption = 'CEP'
      TabOrder = 42
    end
    object UniLabel23: TUniLabel
      Left = 530
      Top = -41
      Width = 42
      Height = 13
      Hint = ''
      Caption = 'Telefone'
      TabOrder = 43
    end
    object Edit_IE_Entrega: TUniEdit
      Left = 602
      Top = -101
      Width = 202
      Hint = ''
      Text = ''
      TabOrder = 44
      ReadOnly = True
    end
    object Edit_Cidade_Entrega: TUniEdit
      Left = 602
      Top = -73
      Width = 168
      Hint = ''
      Text = ''
      TabOrder = 45
      ReadOnly = True
    end
    object Edit_Telefone_Entrega: TUniEdit
      Left = 602
      Top = -45
      Width = 202
      Hint = ''
      Text = ''
      TabOrder = 46
      ReadOnly = True
    end
    object Edit_CEP_Entrega: TUniEdit
      Left = 404
      Top = -17
      Width = 120
      Hint = ''
      Text = ''
      TabOrder = 47
      ReadOnly = True
    end
    object Edit_Bairro_Entrega: TUniEdit
      Left = 98
      Top = -17
      Width = 275
      Hint = ''
      Text = ''
      TabOrder = 48
      ReadOnly = True
    end
    object Edit_Endereco_Entrega: TUniEdit
      Left = 98
      Top = -45
      Width = 426
      Hint = ''
      Text = ''
      TabOrder = 49
      ReadOnly = True
    end
    object Edit_Contato_Entrega: TUniEdit
      Left = 98
      Top = -73
      Width = 426
      Hint = ''
      Text = ''
      TabOrder = 50
      ReadOnly = True
    end
    object Edit_Codigo_Entrega: TUniEdit
      Left = 379
      Top = -101
      Width = 145
      Hint = ''
      Text = ''
      TabOrder = 51
      ReadOnly = True
    end
    object UniLabel24: TUniLabel
      Left = 530
      Top = -13
      Width = 64
      Height = 13
      Hint = ''
      Caption = 'Cond. Pagto.'
      TabOrder = 52
    end
    object Edit_CondPagto: TUniEdit
      Left = 672
      Top = -17
      Width = 132
      Hint = ''
      Text = ''
      TabOrder = 53
      ReadOnly = True
    end
    object btn_CondPagto: TUniButton
      Left = 641
      Top = -18
      Width = 25
      Height = 24
      Hint = ''
      Caption = ''
      TabOrder = 54
      Images = UniImageList1
      ImageIndex = 0
      OnClick = btn_CondPagtoClick
    end
    object Edit_PesqCondPagto: TUniEdit
      Left = 602
      Top = -17
      Width = 33
      Hint = ''
      Text = ''
      TabOrder = 55
      ReadOnly = True
    end
    object Edit_UF_Entrega: TUniEdit
      Left = 776
      Top = -73
      Width = 28
      Hint = ''
      Text = ''
      TabOrder = 56
      ReadOnly = True
    end
    object UniPanel2: TUniPanel
      Left = 3
      Top = 11
      Width = 801
      Height = 25
      Hint = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 57
      Alignment = taLeftJustify
      TitlePosition = tpLeft
      Caption = '     Itens do Pedido'
      Color = 12477460
    end
    object PageControl_Orcamento: TUniPageControl
      Left = 3
      Top = 42
      Width = 801
      Height = 268
      Hint = ''
      ActivePage = Tab_Produtos
      TabOrder = 58
      object Tab_Produtos: TUniTabSheet
        Hint = ''
        Caption = 'Produtos'
        object UniDBGrid1: TUniDBGrid
          Left = 4
          Top = 50
          Width = 790
          Height = 160
          Hint = ''
          DataSource = DataSource_cdsProdutos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          TabOrder = 0
          ParentColor = False
          Color = clWhite
          OnCellClick = UniDBGrid1CellClick
          Columns = <
            item
              FieldName = 'EXCLUIR'
              Title.Caption = '...'
              Width = 32
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Verdana'
              ImageOptions.Visible = True
              ImageOptions.Width = 20
              ImageOptions.Height = 20
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
        object Edit_Produto: TUniEdit
          Left = 4
          Top = 22
          Width = 520
          Hint = ''
          CharCase = ecUpperCase
          Text = ''
          TabOrder = 1
          CheckChangeDelay = 500
          ClearButton = True
          OnChange = Edit_ProdutoChange
          OnKeyDown = Edit_ProdutoKeyDown
          OnKeyPress = Edit_ProdutoKeyPress
        end
        object bt_Adicionar_Produto: TUniButton
          Left = 718
          Top = 20
          Width = 75
          Height = 25
          Hint = ''
          Caption = 'Adicionar'
          TabOrder = 2
          OnClick = bt_Adicionar_ProdutoClick
        end
        object DBGrid_Produto: TUniDBGrid
          Left = 196
          Top = 65
          Width = 520
          Height = 160
          Hint = ''
          Visible = False
          DataSource = DataSource_Produto
          ReadOnly = True
          WebOptions.PageSize = 5
          LoadMask.Message = 'Loading data...'
          TabOrder = 3
          OnDblClick = DBGrid_ProdutoDblClick
          Columns = <
            item
              FieldName = 'ERP_PRODUTO'
              Title.Caption = 'C'#243'digo'
              Width = 75
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Verdana'
            end
            item
              FieldName = 'PRODUTO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 423
              Font.Charset = ANSI_CHARSET
              Font.Name = 'Verdana'
            end>
        end
        object UniLabel25: TUniLabel
          Left = 4
          Top = 3
          Width = 38
          Height = 13
          Hint = ''
          Caption = 'Produto'
          TabOrder = 4
        end
        object UniLabel26: TUniLabel
          Left = 572
          Top = 3
          Width = 56
          Height = 13
          Hint = ''
          Caption = 'Quantidade'
          TabOrder = 5
        end
        object UniLabel27: TUniLabel
          Left = 680
          Top = 3
          Width = 27
          Height = 13
          Hint = ''
          Caption = 'Pre'#231'o'
          TabOrder = 6
        end
        object LabelTotal: TUniLabel
          Left = 4
          Top = 218
          Width = 53
          Height = 13
          Hint = ''
          Caption = 'Total: 0,00'
          ParentFont = False
          Font.Color = 11761664
          TabOrder = 7
        end
        object Edit_Preco: TUniNumberEdit
          Left = 643
          Top = 22
          Width = 69
          Hint = ''
          TabOrder = 9
          DecimalPrecision = 4
          DecimalSeparator = ','
        end
        object Edit_Qtde: TUniNumberEdit
          Left = 530
          Top = 22
          Width = 107
          Hint = ''
          TabOrder = 8
          Value = 1.000000000000000000
          DecimalSeparator = ','
          OnExit = Edit_QtdeExit
        end
      end
      object Tab_Documentos: TUniTabSheet
        Hint = ''
        Caption = 'Documentos'
        object bt_Selecionar: TUniButton
          Left = 3
          Top = 5
          Width = 142
          Height = 25
          Hint = ''
          Caption = '  Selecionar Arquivo...'
          TabOrder = 0
          Images = UniImageList1
          ImageIndex = 2
          OnClick = bt_SelecionarClick
        end
        object UniPanel3: TUniPanel
          Left = 3
          Top = 34
          Width = 783
          Height = 25
          Hint = ''
          ParentFont = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          TabOrder = 1
          Alignment = taLeftJustify
          TitlePosition = tpLeft
          Caption = '     Arquivos Enviados'
          Color = clHighlight
        end
        object DBGridArquivo: TUniDBGrid
          Left = 3
          Top = 65
          Width = 782
          Height = 172
          Hint = ''
          DataSource = DataSource_cdsArquivos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
          LoadMask.Message = 'Loading data...'
          TabOrder = 2
          OnCellClick = DBGridArquivoCellClick
          Columns = <
            item
              FieldName = 'EXCLUIR'
              Title.Alignment = taCenter
              Title.Caption = '...'
              Width = 32
              CheckBoxField.Enabled = False
              ImageOptions.Visible = True
            end
            item
              FieldName = 'ITEM'
              Title.Caption = 'Item'
              Title.Font.Name = 'Verdana'
              Width = 47
              Font.Charset = ANSI_CHARSET
              Font.Color = 12287488
              Font.Name = 'Verdana'
            end
            item
              FieldName = 'NOME_ARQUIVO'
              Title.Caption = 'Arquivo'
              Title.Font.Name = 'Verdana'
              Width = 551
              Font.Charset = ANSI_CHARSET
              Font.Color = 12287488
              Font.Name = 'Verdana'
            end
            item
              FieldName = 'IMG'
              Title.Alignment = taCenter
              Title.Caption = '...'
              Width = 32
              Font.Name = 'Verdana'
            end
            item
              FieldName = 'TAMANHO'
              Title.Caption = 'Tamanho'
              Title.Font.Name = 'Verdana'
              Width = 74
              Font.Color = 12287488
              Font.Name = 'Verdana'
            end>
        end
      end
    end
    object UniPanel4: TUniPanel
      Left = 3
      Top = 312
      Width = 801
      Height = 25
      Hint = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 59
      Alignment = taLeftJustify
      TitlePosition = tpLeft
      Caption = '     Observa'#231#245'es'
      Color = 12477460
    end
    object Memo_OBS: TUniMemo
      Left = 4
      Top = 343
      Width = 800
      Height = 89
      Hint = ''
      ScrollBars = ssVertical
      TabOrder = 60
    end
  end
  object btNovoPedido: TUniButton
    Left = 240
    Top = 507
    Width = 110
    Height = 25
    Hint = ''
    Caption = 'Novo Pedido'
    TabOrder = 0
    OnClick = btNovoPedidoClick
  end
  object btFinalizarPedido: TUniButton
    Left = 112
    Top = 507
    Width = 122
    Height = 25
    Hint = ''
    Caption = 'Finalizar Pedido'
    TabOrder = 1
    OnClick = btFinalizarPedidoClick
  end
  object UniPanel5: TUniPanel
    Left = 112
    Top = 538
    Width = 801
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 2
    Alignment = taRightJustify
    TitlePosition = tpLeft
    Caption = 'Emiss'#227'o de Pedidos Online'
    Color = 12477460
  end
  object UniPanel6: TUniPanel
    Left = 0
    Top = 0
    Width = 1029
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 3
    BorderStyle = ubsNone
    Caption = ''
    Color = 12477460
    object UniLabel28: TUniLabel
      Left = 182
      Top = 13
      Width = 115
      Height = 21
      Hint = ''
      Caption = 'Pedido de Venda'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      TabOrder = 1
    end
    object UniLabel29: TUniLabel
      Left = 182
      Top = 35
      Width = 370
      Height = 13
      Hint = ''
      Caption = 
        'Emiss'#227'o de Pedidos de Venda com possibilidade de anexo de arquiv' +
        'os...'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Segoe UI'
      TabOrder = 2
    end
    object UniBitBtn1: TUniBitBtn
      Left = 112
      Top = 4
      Width = 61
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-shopping-cart fa-2x"></i>'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzulClaro'#39');'#13#10'}')
    end
  end
  object DataSource_cdsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 849
    Top = 810
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      D10000009619E0BD010000001800000008000000000003000000D10004495445
      4D010049000000010005574944544802000200030006434F4449474F01004900
      00000100055749445448020002000A000944455343524943414F010049000000
      01000557494454480200020064000A5155414E54494441444508000400000000
      000556414C4F52080004000000000008535542544F54414C0800040000000000
      0D50454449444F4954454D5F494404000100000000000844454C455441444F01
      004900000001000557494454480200020001000000}
    Active = True
    Aggregates = <>
    Params = <>
    BeforeInsert = cdsProdutosBeforeInsert
    OnCalcFields = cdsProdutosCalcFields
    Left = 42
    Top = 688
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
    object cdsProdutosEXCLUIR: TStringField
      FieldKind = fkCalculated
      FieldName = 'EXCLUIR'
      Size = 1000
      Calculated = True
    end
    object cdsProdutosPEDIDOITEM_ID: TIntegerField
      FieldName = 'PEDIDOITEM_ID'
    end
    object cdsProdutosDELETADO: TStringField
      FieldName = 'DELETADO'
      Size = 1
    end
  end
  object DataSource_cdsArquivos: TDataSource
    DataSet = cdsArquivos
    Left = 388
    Top = 492
  end
  object cdsArquivos: TClientDataSet
    PersistDataPacket.Data = {
      3D0100009619E0BD01000000180000000B0000000000030000003D0104495445
      4D0100490000000100055749445448020002000300064F524947454D02004900
      0000010005574944544802000200B80B0754414D414E484F0400010000000000
      08455854454E53414F0100490000000100055749445448020002000A00074152
      515549564F04004B0000000100075355425459504502004900070042696E6172
      79000C4E4F4D455F4152515549564F0100490000000100055749445448020002
      00C8000743414D494E484F02004A000000010005574944544802000200B00407
      4558434C55495202004A000000010005574944544802000200D00703494D4702
      004A000000010005574944544802000200D00706444F435F4944040001000000
      00000844454C455441444F010049000000010005574944544802000200010000
      00}
    Active = True
    Aggregates = <>
    Params = <>
    BeforeInsert = cdsArquivosBeforeInsert
    Left = 43
    Top = 437
    object cdsArquivosITEM: TStringField
      DisplayWidth = 5
      FieldName = 'ITEM'
      Size = 3
    end
    object cdsArquivosORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3000
    end
    object cdsArquivosTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
    end
    object cdsArquivosEXTENSAO: TStringField
      FieldName = 'EXTENSAO'
      Size = 10
    end
    object cdsArquivosARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
    end
    object cdsArquivosNOME_ARQUIVO: TStringField
      FieldName = 'NOME_ARQUIVO'
      Size = 200
    end
    object cdsArquivosCAMINHO: TWideStringField
      FieldName = 'CAMINHO'
      Size = 600
    end
    object cdsArquivosEXCLUIR: TWideStringField
      FieldName = 'EXCLUIR'
      Size = 1000
    end
    object cdsArquivosIMG: TWideStringField
      FieldName = 'IMG'
      Size = 1000
    end
    object cdsArquivosDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object cdsArquivosDELETADO: TStringField
      FieldName = 'DELETADO'
      Size = 1
    end
  end
  object UniFileUpload1: TUniFileUpload
    Title = 'Enviar Arquivo'
    Messages.Uploading = 'Enviando...'
    Messages.PleaseWait = 'Por favor, aguarde!'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro ao enviar!'
    Messages.Upload = 'Enviar'
    Messages.NoFileError = 'Por favor, selecione um arquivo!'
    Messages.BrowseText = 'Procurar...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    OnCompleted = UniFileUpload1Completed
    Left = 276
    Top = 431
  end
  object DataSource_Produto: TDataSource
    DataSet = cdsProdutosBusca
    Left = 657
    Top = 764
  end
  object DS_Pedidos: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TBPEDIDO'
      'where'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    InsertSQL.Strings = (
      'insert into TBPEDIDO'
      
        '  (PEDIDO_ID, DATAWARE, PEDIDO_NUM, ORCAMENTO_ID, EMISSAO, VALID' +
        'ADE, HORA, '
      
        '   SC_ID, COTACAO_ID, CC_ID, ENTRADA_SAIDA, PESSOA_ID, PESSOA_VR' +
        ', VALOR_PEDIDO, '
      
        '   VALOR_FRETE, VALOR_DESPESAS, VALOR_DESCONTO, VALOR_ICMS, BASE' +
        '_ICMS, '
      
        '   VALOR_IPI, BASE_IPI, TRANSPORTADOR_ID, VEICULO_ID, DATA_INC, ' +
        'USUARIO_I, '
      
        '   USUARIONOME_I, DATA_ALT, USUARIO_A, USUARIONOME_A, DATA_DEL, ' +
        'USUARIO_D, '
      
        '   USUARIONOME_D, USUARIO_ID, EMPRESA_ID, DELETADO, IDENTIFICACA' +
        'O_PEDIDO, '
      
        '   CONDPAGTO_ID, ERP_CONDPAGTO, CONDPAGTO, TIPO_FRETE, VALOR_ITE' +
        'NS, OBS_PEDIDO, '
      
        '   ENTREGA_PEDIDO, ID, ANO, REPLICADO, CLIENTE_ID, IMOVEL_ID, WE' +
        'B_SESSION_ID, '
      
        '   FORNECEDOR_ID, REPRESENTADA_ID, REPRESENTADA, CLI_NOME, ERP_C' +
        'LIENTE, '
      
        '   CLI_ENDERECO, CLI_COMPLEMENTO, CLI_BAIRRO, CLI_CEP, CLI_CIDAD' +
        'E, CLI_UF, '
      
        '   CLI_TELEFONE, CLI_EMAIL, CLI_TIPO, CLI_CPFCNPJ, CLI_IE, CLI_R' +
        'GCGF, ERP_ENTREGA, '
      
        '   ENT_CPFCNPJ, ENT_NOME, ENT_CONTATO, ENT_ENDERECO, ENT_COMPLEM' +
        'ENTO, ENT_BAIRRO, '
      
        '   ENT_CEP, ENT_CIDADE, ENT_UF, ENT_TELEFONE, ENT_EMAIL, ENT_RGC' +
        'GF, EMPENHO, '
      
        '   EMPENHO_ANO, EMPENHO_COMPLETO, PROCESSO, ORIGEM, IMPRESSO, SI' +
        'TUACAO, '
      
        '   DATA_SITUACAO, HPRINT, ERP_VENDEDOR, ERP_VENDEDOR_NOME, ERP_R' +
        'EPRESENTANTE, '
      
        '   ERP_REPRESENTANTE_NOME, CODIGO, OBS, INTEGRADO, INTEGRADO_DAT' +
        'A, STATUS, '
      '   IMPRESSAO_ULTIMA, IMPRESSAO_USUARIO)'
      'values'
      
        '  (:PEDIDO_ID, :DATAWARE, :PEDIDO_NUM, :ORCAMENTO_ID, :EMISSAO, ' +
        ':VALIDADE, '
      
        '   :HORA, :SC_ID, :COTACAO_ID, :CC_ID, :ENTRADA_SAIDA, :PESSOA_I' +
        'D, :PESSOA_VR, '
      
        '   :VALOR_PEDIDO, :VALOR_FRETE, :VALOR_DESPESAS, :VALOR_DESCONTO' +
        ', :VALOR_ICMS, '
      
        '   :BASE_ICMS, :VALOR_IPI, :BASE_IPI, :TRANSPORTADOR_ID, :VEICUL' +
        'O_ID, :DATA_INC, '
      
        '   :USUARIO_I, :USUARIONOME_I, :DATA_ALT, :USUARIO_A, :USUARIONO' +
        'ME_A, :DATA_DEL, '
      
        '   :USUARIO_D, :USUARIONOME_D, :USUARIO_ID, :EMPRESA_ID, :DELETA' +
        'DO, :IDENTIFICACAO_PEDIDO, '
      
        '   :CONDPAGTO_ID, :ERP_CONDPAGTO, :CONDPAGTO, :TIPO_FRETE, :VALO' +
        'R_ITENS, '
      
        '   :OBS_PEDIDO, :ENTREGA_PEDIDO, :ID, :ANO, :REPLICADO, :CLIENTE' +
        '_ID, :IMOVEL_ID, '
      
        '   :WEB_SESSION_ID, :FORNECEDOR_ID, :REPRESENTADA_ID, :REPRESENT' +
        'ADA, :CLI_NOME, '
      
        '   :ERP_CLIENTE, :CLI_ENDERECO, :CLI_COMPLEMENTO, :CLI_BAIRRO, :' +
        'CLI_CEP, '
      
        '   :CLI_CIDADE, :CLI_UF, :CLI_TELEFONE, :CLI_EMAIL, :CLI_TIPO, :' +
        'CLI_CPFCNPJ, '
      
        '   :CLI_IE, :CLI_RGCGF, :ERP_ENTREGA, :ENT_CPFCNPJ, :ENT_NOME, :' +
        'ENT_CONTATO, '
      
        '   :ENT_ENDERECO, :ENT_COMPLEMENTO, :ENT_BAIRRO, :ENT_CEP, :ENT_' +
        'CIDADE, '
      
        '   :ENT_UF, :ENT_TELEFONE, :ENT_EMAIL, :ENT_RGCGF, :EMPENHO, :EM' +
        'PENHO_ANO, '
      
        '   :EMPENHO_COMPLETO, :PROCESSO, :ORIGEM, :IMPRESSO, :SITUACAO, ' +
        ':DATA_SITUACAO, '
      
        '   :HPRINT, :ERP_VENDEDOR, :ERP_VENDEDOR_NOME, :ERP_REPRESENTANT' +
        'E, :ERP_REPRESENTANTE_NOME, '
      
        '   :CODIGO, :OBS, :INTEGRADO, :INTEGRADO_DATA, :STATUS, :IMPRESS' +
        'AO_ULTIMA, '
      '   :IMPRESSAO_USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  PEDIDO_ID,'
      '  DATAWARE,'
      '  PEDIDO_NUM,'
      '  ORCAMENTO_ID,'
      '  EMISSAO,'
      '  VALIDADE,'
      '  HORA,'
      '  SC_ID,'
      '  COTACAO_ID,'
      '  CC_ID,'
      '  ENTRADA_SAIDA,'
      '  PESSOA_ID,'
      '  PESSOA_VR,'
      '  VALOR_PEDIDO,'
      '  VALOR_FRETE,'
      '  VALOR_DESPESAS,'
      '  VALOR_DESCONTO,'
      '  VALOR_ICMS,'
      '  BASE_ICMS,'
      '  VALOR_IPI,'
      '  BASE_IPI,'
      '  TRANSPORTADOR_ID,'
      '  VEICULO_ID,'
      '  DATA_INC,'
      '  USUARIO_I,'
      '  USUARIONOME_I,'
      '  DATA_ALT,'
      '  USUARIO_A,'
      '  USUARIONOME_A,'
      '  DATA_DEL,'
      '  USUARIO_D,'
      '  USUARIONOME_D,'
      '  USUARIO_ID,'
      '  EMPRESA_ID,'
      '  DELETADO,'
      '  IDENTIFICACAO_PEDIDO,'
      '  CONDPAGTO_ID,'
      '  ERP_CONDPAGTO,'
      '  CONDPAGTO,'
      '  TIPO_FRETE,'
      '  VALOR_ITENS,'
      '  OBS_PEDIDO,'
      '  ENTREGA_PEDIDO,'
      '  ID,'
      '  ANO,'
      '  REPLICADO,'
      '  CLIENTE_ID,'
      '  IMOVEL_ID,'
      '  WEB_SESSION_ID,'
      '  FORNECEDOR_ID,'
      '  REPRESENTADA_ID,'
      '  REPRESENTADA,'
      '  CLI_NOME,'
      '  ERP_CLIENTE,'
      '  CLI_ENDERECO,'
      '  CLI_COMPLEMENTO,'
      '  CLI_BAIRRO,'
      '  CLI_CEP,'
      '  CLI_CIDADE,'
      '  CLI_UF,'
      '  CLI_TELEFONE,'
      '  CLI_EMAIL,'
      '  CLI_TIPO,'
      '  CLI_CPFCNPJ,'
      '  CLI_IE,'
      '  CLI_RGCGF,'
      '  ERP_ENTREGA,'
      '  ENT_CPFCNPJ,'
      '  ENT_NOME,'
      '  ENT_CONTATO,'
      '  ENT_ENDERECO,'
      '  ENT_COMPLEMENTO,'
      '  ENT_BAIRRO,'
      '  ENT_CEP,'
      '  ENT_CIDADE,'
      '  ENT_UF,'
      '  ENT_TELEFONE,'
      '  ENT_EMAIL,'
      '  ENT_RGCGF,'
      '  EMPENHO,'
      '  EMPENHO_ANO,'
      '  EMPENHO_COMPLETO,'
      '  PROCESSO,'
      '  ORIGEM,'
      '  IMPRESSO,'
      '  SITUACAO,'
      '  DATA_SITUACAO,'
      '  HPRINT,'
      '  ERP_VENDEDOR,'
      '  ERP_VENDEDOR_NOME,'
      '  ERP_REPRESENTANTE,'
      '  ERP_REPRESENTANTE_NOME,'
      '  CODIGO,'
      '  OBS,'
      '  INTEGRADO,'
      '  INTEGRADO_DATA,'
      '  STATUS,'
      '  IMPRESSAO_ULTIMA,'
      '  IMPRESSAO_USUARIO,'
      '  NEW_ID,'
      '  OLD_ID'
      'from TBPEDIDO '
      'where'
      '  PEDIDO_ID = :PEDIDO_ID')
    SelectSQL.Strings = (
      'select * from TBPEDIDO')
    ModifySQL.Strings = (
      'update TBPEDIDO'
      'set'
      '  PEDIDO_ID = :PEDIDO_ID,'
      '  DATAWARE = :DATAWARE,'
      '  PEDIDO_NUM = :PEDIDO_NUM,'
      '  ORCAMENTO_ID = :ORCAMENTO_ID,'
      '  EMISSAO = :EMISSAO,'
      '  VALIDADE = :VALIDADE,'
      '  HORA = :HORA,'
      '  SC_ID = :SC_ID,'
      '  COTACAO_ID = :COTACAO_ID,'
      '  CC_ID = :CC_ID,'
      '  ENTRADA_SAIDA = :ENTRADA_SAIDA,'
      '  PESSOA_ID = :PESSOA_ID,'
      '  PESSOA_VR = :PESSOA_VR,'
      '  VALOR_PEDIDO = :VALOR_PEDIDO,'
      '  VALOR_FRETE = :VALOR_FRETE,'
      '  VALOR_DESPESAS = :VALOR_DESPESAS,'
      '  VALOR_DESCONTO = :VALOR_DESCONTO,'
      '  VALOR_ICMS = :VALOR_ICMS,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  BASE_IPI = :BASE_IPI,'
      '  TRANSPORTADOR_ID = :TRANSPORTADOR_ID,'
      '  VEICULO_ID = :VEICULO_ID,'
      '  DATA_INC = :DATA_INC,'
      '  USUARIO_I = :USUARIO_I,'
      '  USUARIONOME_I = :USUARIONOME_I,'
      '  DATA_ALT = :DATA_ALT,'
      '  USUARIO_A = :USUARIO_A,'
      '  USUARIONOME_A = :USUARIONOME_A,'
      '  DATA_DEL = :DATA_DEL,'
      '  USUARIO_D = :USUARIO_D,'
      '  USUARIONOME_D = :USUARIONOME_D,'
      '  USUARIO_ID = :USUARIO_ID,'
      '  EMPRESA_ID = :EMPRESA_ID,'
      '  DELETADO = :DELETADO,'
      '  IDENTIFICACAO_PEDIDO = :IDENTIFICACAO_PEDIDO,'
      '  CONDPAGTO_ID = :CONDPAGTO_ID,'
      '  ERP_CONDPAGTO = :ERP_CONDPAGTO,'
      '  CONDPAGTO = :CONDPAGTO,'
      '  TIPO_FRETE = :TIPO_FRETE,'
      '  VALOR_ITENS = :VALOR_ITENS,'
      '  OBS_PEDIDO = :OBS_PEDIDO,'
      '  ENTREGA_PEDIDO = :ENTREGA_PEDIDO,'
      '  ID = :ID,'
      '  ANO = :ANO,'
      '  REPLICADO = :REPLICADO,'
      '  CLIENTE_ID = :CLIENTE_ID,'
      '  IMOVEL_ID = :IMOVEL_ID,'
      '  WEB_SESSION_ID = :WEB_SESSION_ID,'
      '  FORNECEDOR_ID = :FORNECEDOR_ID,'
      '  REPRESENTADA_ID = :REPRESENTADA_ID,'
      '  REPRESENTADA = :REPRESENTADA,'
      '  CLI_NOME = :CLI_NOME,'
      '  ERP_CLIENTE = :ERP_CLIENTE,'
      '  CLI_ENDERECO = :CLI_ENDERECO,'
      '  CLI_COMPLEMENTO = :CLI_COMPLEMENTO,'
      '  CLI_BAIRRO = :CLI_BAIRRO,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CIDADE = :CLI_CIDADE,'
      '  CLI_UF = :CLI_UF,'
      '  CLI_TELEFONE = :CLI_TELEFONE,'
      '  CLI_EMAIL = :CLI_EMAIL,'
      '  CLI_TIPO = :CLI_TIPO,'
      '  CLI_CPFCNPJ = :CLI_CPFCNPJ,'
      '  CLI_IE = :CLI_IE,'
      '  CLI_RGCGF = :CLI_RGCGF,'
      '  ERP_ENTREGA = :ERP_ENTREGA,'
      '  ENT_CPFCNPJ = :ENT_CPFCNPJ,'
      '  ENT_NOME = :ENT_NOME,'
      '  ENT_CONTATO = :ENT_CONTATO,'
      '  ENT_ENDERECO = :ENT_ENDERECO,'
      '  ENT_COMPLEMENTO = :ENT_COMPLEMENTO,'
      '  ENT_BAIRRO = :ENT_BAIRRO,'
      '  ENT_CEP = :ENT_CEP,'
      '  ENT_CIDADE = :ENT_CIDADE,'
      '  ENT_UF = :ENT_UF,'
      '  ENT_TELEFONE = :ENT_TELEFONE,'
      '  ENT_EMAIL = :ENT_EMAIL,'
      '  ENT_RGCGF = :ENT_RGCGF,'
      '  EMPENHO = :EMPENHO,'
      '  EMPENHO_ANO = :EMPENHO_ANO,'
      '  EMPENHO_COMPLETO = :EMPENHO_COMPLETO,'
      '  PROCESSO = :PROCESSO,'
      '  ORIGEM = :ORIGEM,'
      '  IMPRESSO = :IMPRESSO,'
      '  SITUACAO = :SITUACAO,'
      '  DATA_SITUACAO = :DATA_SITUACAO,'
      '  HPRINT = :HPRINT,'
      '  ERP_VENDEDOR = :ERP_VENDEDOR,'
      '  ERP_VENDEDOR_NOME = :ERP_VENDEDOR_NOME,'
      '  ERP_REPRESENTANTE = :ERP_REPRESENTANTE,'
      '  ERP_REPRESENTANTE_NOME = :ERP_REPRESENTANTE_NOME,'
      '  CODIGO = :CODIGO,'
      '  OBS = :OBS,'
      '  INTEGRADO = :INTEGRADO,'
      '  INTEGRADO_DATA = :INTEGRADO_DATA,'
      '  STATUS = :STATUS,'
      '  IMPRESSAO_ULTIMA = :IMPRESSAO_ULTIMA,'
      '  IMPRESSAO_USUARIO = :IMPRESSAO_USUARIO'
      'where'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PEDIDO_ID'
    GeneratorField.Generator = 'GEN_TBPEDIDO'
    Left = 42
    Top = 588
    object DS_PedidosPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBPEDIDO"."PEDIDO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_PedidosPEDIDO_NUM: TIBStringField
      FieldName = 'PEDIDO_NUM'
      Origin = '"TBPEDIDO"."PEDIDO_NUM"'
    end
    object DS_PedidosORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBPEDIDO"."ORCAMENTO_ID"'
    end
    object DS_PedidosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"TBPEDIDO"."EMISSAO"'
    end
    object DS_PedidosVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = '"TBPEDIDO"."VALIDADE"'
    end
    object DS_PedidosHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"TBPEDIDO"."HORA"'
    end
    object DS_PedidosSC_ID: TIntegerField
      FieldName = 'SC_ID'
      Origin = '"TBPEDIDO"."SC_ID"'
    end
    object DS_PedidosCOTACAO_ID: TIntegerField
      FieldName = 'COTACAO_ID'
      Origin = '"TBPEDIDO"."COTACAO_ID"'
    end
    object DS_PedidosCC_ID: TIntegerField
      FieldName = 'CC_ID'
      Origin = '"TBPEDIDO"."CC_ID"'
    end
    object DS_PedidosENTRADA_SAIDA: TIBStringField
      FieldName = 'ENTRADA_SAIDA'
      Origin = '"TBPEDIDO"."ENTRADA_SAIDA"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Origin = '"TBPEDIDO"."PESSOA_ID"'
    end
    object DS_PedidosPESSOA_VR: TIntegerField
      FieldName = 'PESSOA_VR'
      Origin = '"TBPEDIDO"."PESSOA_VR"'
    end
    object DS_PedidosVALOR_PEDIDO: TIBBCDField
      FieldName = 'VALOR_PEDIDO'
      Origin = '"TBPEDIDO"."VALOR_PEDIDO"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosVALOR_FRETE: TIBBCDField
      FieldName = 'VALOR_FRETE'
      Origin = '"TBPEDIDO"."VALOR_FRETE"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosVALOR_DESPESAS: TIBBCDField
      FieldName = 'VALOR_DESPESAS'
      Origin = '"TBPEDIDO"."VALOR_DESPESAS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosVALOR_DESCONTO: TIBBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = '"TBPEDIDO"."VALOR_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Origin = '"TBPEDIDO"."VALOR_ICMS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"TBPEDIDO"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Origin = '"TBPEDIDO"."VALOR_IPI"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = '"TBPEDIDO"."BASE_IPI"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosTRANSPORTADOR_ID: TIntegerField
      FieldName = 'TRANSPORTADOR_ID'
      Origin = '"TBPEDIDO"."TRANSPORTADOR_ID"'
    end
    object DS_PedidosVEICULO_ID: TIntegerField
      FieldName = 'VEICULO_ID'
      Origin = '"TBPEDIDO"."VEICULO_ID"'
    end
    object DS_PedidosDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBPEDIDO"."DATA_INC"'
    end
    object DS_PedidosUSUARIO_I: TIntegerField
      FieldName = 'USUARIO_I'
      Origin = '"TBPEDIDO"."USUARIO_I"'
    end
    object DS_PedidosUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBPEDIDO"."USUARIONOME_I"'
      Size = 30
    end
    object DS_PedidosDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Origin = '"TBPEDIDO"."DATA_ALT"'
    end
    object DS_PedidosUSUARIO_A: TIntegerField
      FieldName = 'USUARIO_A'
      Origin = '"TBPEDIDO"."USUARIO_A"'
    end
    object DS_PedidosUSUARIONOME_A: TIBStringField
      FieldName = 'USUARIONOME_A'
      Origin = '"TBPEDIDO"."USUARIONOME_A"'
      Size = 30
    end
    object DS_PedidosDATA_DEL: TDateTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBPEDIDO"."DATA_DEL"'
    end
    object DS_PedidosUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBPEDIDO"."USUARIO_D"'
    end
    object DS_PedidosUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBPEDIDO"."USUARIONOME_D"'
      Size = 30
    end
    object DS_PedidosUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBPEDIDO"."USUARIO_ID"'
    end
    object DS_PedidosEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Origin = '"TBPEDIDO"."EMPRESA_ID"'
    end
    object DS_PedidosDELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBPEDIDO"."DELETADO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosIDENTIFICACAO_PEDIDO: TIBStringField
      FieldName = 'IDENTIFICACAO_PEDIDO'
      Origin = '"TBPEDIDO"."IDENTIFICACAO_PEDIDO"'
      Size = 30
    end
    object DS_PedidosCONDPAGTO_ID: TIntegerField
      FieldName = 'CONDPAGTO_ID'
      Origin = '"TBPEDIDO"."CONDPAGTO_ID"'
    end
    object DS_PedidosERP_CONDPAGTO: TIntegerField
      FieldName = 'ERP_CONDPAGTO'
      Origin = '"TBPEDIDO"."ERP_CONDPAGTO"'
    end
    object DS_PedidosCONDPAGTO: TIBStringField
      FieldName = 'CONDPAGTO'
      Origin = '"TBPEDIDO"."CONDPAGTO"'
      Size = 50
    end
    object DS_PedidosTIPO_FRETE: TIBStringField
      FieldName = 'TIPO_FRETE'
      Origin = '"TBPEDIDO"."TIPO_FRETE"'
      Size = 3
    end
    object DS_PedidosVALOR_ITENS: TIBBCDField
      FieldName = 'VALOR_ITENS'
      Origin = '"TBPEDIDO"."VALOR_ITENS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosOBS_PEDIDO: TIBStringField
      FieldName = 'OBS_PEDIDO'
      Origin = '"TBPEDIDO"."OBS_PEDIDO"'
      Size = 300
    end
    object DS_PedidosENTREGA_PEDIDO: TDateField
      FieldName = 'ENTREGA_PEDIDO'
      Origin = '"TBPEDIDO"."ENTREGA_PEDIDO"'
    end
    object DS_PedidosID: TIntegerField
      FieldName = 'ID'
      Origin = '"TBPEDIDO"."ID"'
    end
    object DS_PedidosANO: TIBStringField
      FieldName = 'ANO'
      Origin = '"TBPEDIDO"."ANO"'
      Size = 4
    end
    object DS_PedidosREPLICADO: TIBStringField
      FieldName = 'REPLICADO'
      Origin = '"TBPEDIDO"."REPLICADO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = '"TBPEDIDO"."CLIENTE_ID"'
    end
    object DS_PedidosIMOVEL_ID: TIntegerField
      FieldName = 'IMOVEL_ID'
      Origin = '"TBPEDIDO"."IMOVEL_ID"'
    end
    object DS_PedidosWEB_SESSION_ID: TIBStringField
      FieldName = 'WEB_SESSION_ID'
      Origin = '"TBPEDIDO"."WEB_SESSION_ID"'
      Size = 30
    end
    object DS_PedidosFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = '"TBPEDIDO"."FORNECEDOR_ID"'
    end
    object DS_PedidosREPRESENTADA_ID: TIntegerField
      FieldName = 'REPRESENTADA_ID'
      Origin = '"TBPEDIDO"."REPRESENTADA_ID"'
    end
    object DS_PedidosREPRESENTADA: TIBStringField
      FieldName = 'REPRESENTADA'
      Origin = '"TBPEDIDO"."REPRESENTADA"'
      Size = 80
    end
    object DS_PedidosCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"TBPEDIDO"."CLI_NOME"'
      Size = 80
    end
    object DS_PedidosERP_CLIENTE: TIBStringField
      FieldName = 'ERP_CLIENTE'
      Origin = '"TBPEDIDO"."ERP_CLIENTE"'
      Size = 10
    end
    object DS_PedidosCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"TBPEDIDO"."CLI_ENDERECO"'
      Size = 80
    end
    object DS_PedidosCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Origin = '"TBPEDIDO"."CLI_COMPLEMENTO"'
      Size = 60
    end
    object DS_PedidosCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"TBPEDIDO"."CLI_BAIRRO"'
      Size = 40
    end
    object DS_PedidosCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"TBPEDIDO"."CLI_CEP"'
      Size = 10
    end
    object DS_PedidosCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"TBPEDIDO"."CLI_CIDADE"'
      Size = 40
    end
    object DS_PedidosCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"TBPEDIDO"."CLI_UF"'
      Size = 2
    end
    object DS_PedidosCLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
      Origin = '"TBPEDIDO"."CLI_TELEFONE"'
      Size = 14
    end
    object DS_PedidosCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Origin = '"TBPEDIDO"."CLI_EMAIL"'
      Size = 100
    end
    object DS_PedidosCLI_TIPO: TIBStringField
      FieldName = 'CLI_TIPO'
      Origin = '"TBPEDIDO"."CLI_TIPO"'
      Size = 30
    end
    object DS_PedidosCLI_CPFCNPJ: TIBStringField
      FieldName = 'CLI_CPFCNPJ'
      Origin = '"TBPEDIDO"."CLI_CPFCNPJ"'
      Size = 18
    end
    object DS_PedidosCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"TBPEDIDO"."CLI_IE"'
      Size = 18
    end
    object DS_PedidosCLI_RGCGF: TIBStringField
      FieldName = 'CLI_RGCGF'
      Origin = '"TBPEDIDO"."CLI_RGCGF"'
    end
    object DS_PedidosERP_ENTREGA: TIBStringField
      FieldName = 'ERP_ENTREGA'
      Origin = '"TBPEDIDO"."ERP_ENTREGA"'
      Size = 10
    end
    object DS_PedidosENT_CPFCNPJ: TIBStringField
      FieldName = 'ENT_CPFCNPJ'
      Origin = '"TBPEDIDO"."ENT_CPFCNPJ"'
      Size = 18
    end
    object DS_PedidosENT_NOME: TIBStringField
      FieldName = 'ENT_NOME'
      Origin = '"TBPEDIDO"."ENT_NOME"'
      Size = 80
    end
    object DS_PedidosENT_CONTATO: TIBStringField
      FieldName = 'ENT_CONTATO'
      Origin = '"TBPEDIDO"."ENT_CONTATO"'
      Size = 80
    end
    object DS_PedidosENT_ENDERECO: TIBStringField
      FieldName = 'ENT_ENDERECO'
      Origin = '"TBPEDIDO"."ENT_ENDERECO"'
      Size = 80
    end
    object DS_PedidosENT_COMPLEMENTO: TIBStringField
      FieldName = 'ENT_COMPLEMENTO'
      Origin = '"TBPEDIDO"."ENT_COMPLEMENTO"'
      Size = 60
    end
    object DS_PedidosENT_BAIRRO: TIBStringField
      FieldName = 'ENT_BAIRRO'
      Origin = '"TBPEDIDO"."ENT_BAIRRO"'
      Size = 40
    end
    object DS_PedidosENT_CEP: TIBStringField
      FieldName = 'ENT_CEP'
      Origin = '"TBPEDIDO"."ENT_CEP"'
      Size = 10
    end
    object DS_PedidosENT_CIDADE: TIBStringField
      FieldName = 'ENT_CIDADE'
      Origin = '"TBPEDIDO"."ENT_CIDADE"'
      Size = 40
    end
    object DS_PedidosENT_UF: TIBStringField
      FieldName = 'ENT_UF'
      Origin = '"TBPEDIDO"."ENT_UF"'
      Size = 2
    end
    object DS_PedidosENT_TELEFONE: TIBStringField
      FieldName = 'ENT_TELEFONE'
      Origin = '"TBPEDIDO"."ENT_TELEFONE"'
      Size = 14
    end
    object DS_PedidosENT_EMAIL: TIBStringField
      FieldName = 'ENT_EMAIL'
      Origin = '"TBPEDIDO"."ENT_EMAIL"'
      Size = 100
    end
    object DS_PedidosENT_RGCGF: TIBStringField
      FieldName = 'ENT_RGCGF'
      Origin = '"TBPEDIDO"."ENT_RGCGF"'
    end
    object DS_PedidosEMPENHO: TIBStringField
      FieldName = 'EMPENHO'
      Origin = '"TBPEDIDO"."EMPENHO"'
      Size = 14
    end
    object DS_PedidosPROCESSO: TIBStringField
      FieldName = 'PROCESSO'
      Origin = '"TBPEDIDO"."PROCESSO"'
      Size = 80
    end
    object DS_PedidosORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"TBPEDIDO"."ORIGEM"'
      Size = 10
    end
    object DS_PedidosIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = '"TBPEDIDO"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"TBPEDIDO"."SITUACAO"'
    end
    object DS_PedidosDATA_SITUACAO: TDateField
      FieldName = 'DATA_SITUACAO'
      Origin = '"TBPEDIDO"."DATA_SITUACAO"'
    end
    object DS_PedidosHPRINT: TDateTimeField
      FieldName = 'HPRINT'
      Origin = '"TBPEDIDO"."HPRINT"'
    end
    object DS_PedidosERP_VENDEDOR: TIBStringField
      FieldName = 'ERP_VENDEDOR'
      Origin = '"TBPEDIDO"."ERP_VENDEDOR"'
      Size = 10
    end
    object DS_PedidosERP_VENDEDOR_NOME: TIBStringField
      FieldName = 'ERP_VENDEDOR_NOME'
      Origin = '"TBPEDIDO"."ERP_VENDEDOR_NOME"'
      Size = 80
    end
    object DS_PedidosERP_REPRESENTANTE: TIBStringField
      FieldName = 'ERP_REPRESENTANTE'
      Origin = '"TBPEDIDO"."ERP_REPRESENTANTE"'
      Size = 10
    end
    object DS_PedidosERP_REPRESENTANTE_NOME: TIBStringField
      FieldName = 'ERP_REPRESENTANTE_NOME'
      Origin = '"TBPEDIDO"."ERP_REPRESENTANTE_NOME"'
      Size = 80
    end
    object DS_PedidosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TBPEDIDO"."CODIGO"'
    end
    object DS_PedidosOBS: TWideMemoField
      FieldName = 'OBS'
      Origin = '"TBPEDIDO"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object DS_PedidosINTEGRADO: TIBStringField
      FieldName = 'INTEGRADO'
      Origin = '"TBPEDIDO"."INTEGRADO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosINTEGRADO_DATA: TDateTimeField
      FieldName = 'INTEGRADO_DATA'
      Origin = '"TBPEDIDO"."INTEGRADO_DATA"'
    end
    object DS_PedidosSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TBPEDIDO"."STATUS"'
      Size = 10
    end
    object DS_PedidosIMPRESSAO_ULTIMA: TDateTimeField
      FieldName = 'IMPRESSAO_ULTIMA'
      Origin = '"TBPEDIDO"."IMPRESSAO_ULTIMA"'
    end
    object DS_PedidosIMPRESSAO_USUARIO: TIBStringField
      FieldName = 'IMPRESSAO_USUARIO'
      Origin = '"TBPEDIDO"."IMPRESSAO_USUARIO"'
      Size = 30
    end
    object DS_PedidosDATAWARE: TIBStringField
      FieldName = 'DATAWARE'
      Origin = '"TBPEDIDO"."DATAWARE"'
      Size = 2
    end
    object DS_PedidosEMPENHO_ANO: TIBStringField
      FieldName = 'EMPENHO_ANO'
      Origin = '"TBPEDIDO"."EMPENHO_ANO"'
      Size = 4
    end
    object DS_PedidosEMPENHO_COMPLETO: TIBStringField
      FieldName = 'EMPENHO_COMPLETO'
      Origin = '"TBPEDIDO"."EMPENHO_COMPLETO"'
    end
  end
  object DS_PedidosItem: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TBPEDIDO_ITEM'
      'where'
      '  PEDIDOITEM_ID = :OLD_PEDIDOITEM_ID and'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    InsertSQL.Strings = (
      'insert into TBPEDIDO_ITEM'
      
        '  (PEDIDOITEM_ID, DATAWARE, PEDIDO_ID, PRODUTO_ID, IPI, ICMS, PR' +
        'ECO, BASE_ICMS, '
      
        '   BASE_IPI, VALOR_ICMS, VALOR_IPI, ESTOQUE_ID, COMISSAO, VALOR_' +
        'DESCONTO, '
      
        '   VALOR_ACRESCIMO, CC_ID, APLICACAO_ID, COTACAO_ID, DEPARTAMENT' +
        'O_ID, SC_ID, '
      
        '   ITEMSC_ID, DATA_INC, DATA_ALT, USUARIO_ID, EMPRESA_ID, DELETA' +
        'DO, PRAZO, '
      
        '   MARCA, COTACAOITEM_ID, ENTREGA_PEDITEM, REPLICADO, TOTAL, WEB' +
        '_SESSION_ID, '
      
        '   FORNECEDOR_ID, QTDE, QTDE_ENTREGA, GERA_ESTOQUE, ORCAMENTO_ID' +
        ', ORCAMENTOITEM_ID, '
      
        '   PESSOA_ID, DATA, ITEM, ERP_PRODUTO, PRODUTO, QUANTIDADE, SUBT' +
        'OTAL, USUARIO_I, '
      
        '   USUARIONOME_I, USUARIO_A, USUARIONOME_A, DATA_DEL, USUARIO_D,' +
        ' USUARIONOME_D, '
      
        '   INTEGRADO, INTEGRADO_DATA, PEDIDO_CODIGO, STATUS, LOTE, OBS, ' +
        'NEW_ID)'
      'values'
      
        '  (:PEDIDOITEM_ID, :DATAWARE, :PEDIDO_ID, :PRODUTO_ID, :IPI, :IC' +
        'MS, :PRECO, '
      
        '   :BASE_ICMS, :BASE_IPI, :VALOR_ICMS, :VALOR_IPI, :ESTOQUE_ID, ' +
        ':COMISSAO, '
      
        '   :VALOR_DESCONTO, :VALOR_ACRESCIMO, :CC_ID, :APLICACAO_ID, :CO' +
        'TACAO_ID, '
      
        '   :DEPARTAMENTO_ID, :SC_ID, :ITEMSC_ID, :DATA_INC, :DATA_ALT, :' +
        'USUARIO_ID, '
      
        '   :EMPRESA_ID, :DELETADO, :PRAZO, :MARCA, :COTACAOITEM_ID, :ENT' +
        'REGA_PEDITEM, '
      
        '   :REPLICADO, :TOTAL, :WEB_SESSION_ID, :FORNECEDOR_ID, :QTDE, :' +
        'QTDE_ENTREGA, '
      
        '   :GERA_ESTOQUE, :ORCAMENTO_ID, :ORCAMENTOITEM_ID, :PESSOA_ID, ' +
        ':DATA, '
      
        '   :ITEM, :ERP_PRODUTO, :PRODUTO, :QUANTIDADE, :SUBTOTAL, :USUAR' +
        'IO_I, :USUARIONOME_I, '
      
        '   :USUARIO_A, :USUARIONOME_A, :DATA_DEL, :USUARIO_D, :USUARIONO' +
        'ME_D, :INTEGRADO, '
      
        '   :INTEGRADO_DATA, :PEDIDO_CODIGO, :STATUS, :LOTE, :OBS, :NEW_I' +
        'D)')
    RefreshSQL.Strings = (
      'Select '
      '  PEDIDOITEM_ID,'
      '  DATAWARE,'
      '  PEDIDO_ID,'
      '  PRODUTO_ID,'
      '  IPI,'
      '  ICMS,'
      '  PRECO,'
      '  BASE_ICMS,'
      '  BASE_IPI,'
      '  VALOR_ICMS,'
      '  VALOR_IPI,'
      '  ESTOQUE_ID,'
      '  COMISSAO,'
      '  VALOR_DESCONTO,'
      '  VALOR_ACRESCIMO,'
      '  CC_ID,'
      '  APLICACAO_ID,'
      '  COTACAO_ID,'
      '  DEPARTAMENTO_ID,'
      '  SC_ID,'
      '  ITEMSC_ID,'
      '  DATA_INC,'
      '  DATA_ALT,'
      '  USUARIO_ID,'
      '  EMPRESA_ID,'
      '  DELETADO,'
      '  PRAZO,'
      '  MARCA,'
      '  COTACAOITEM_ID,'
      '  ENTREGA_PEDITEM,'
      '  REPLICADO,'
      '  TOTAL,'
      '  WEB_SESSION_ID,'
      '  FORNECEDOR_ID,'
      '  QTDE,'
      '  QTDE_ENTREGA,'
      '  GERA_ESTOQUE,'
      '  ORCAMENTO_ID,'
      '  ORCAMENTOITEM_ID,'
      '  PESSOA_ID,'
      '  DATA,'
      '  ITEM,'
      '  ERP_PRODUTO,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  SUBTOTAL,'
      '  USUARIO_I,'
      '  USUARIONOME_I,'
      '  USUARIO_A,'
      '  USUARIONOME_A,'
      '  DATA_DEL,'
      '  USUARIO_D,'
      '  USUARIONOME_D,'
      '  INTEGRADO,'
      '  INTEGRADO_DATA,'
      '  PEDIDO_CODIGO,'
      '  STATUS,'
      '  LOTE,'
      '  OBS,'
      '  NEW_ID'
      'from TBPEDIDO_ITEM '
      'where'
      '  PEDIDOITEM_ID = :PEDIDOITEM_ID and'
      '  PEDIDO_ID = :PEDIDO_ID')
    SelectSQL.Strings = (
      'select * from TBPEDIDO_ITEM')
    ModifySQL.Strings = (
      'update TBPEDIDO_ITEM'
      'set'
      '  PEDIDOITEM_ID = :PEDIDOITEM_ID,'
      '  DATAWARE = :DATAWARE,'
      '  PEDIDO_ID = :PEDIDO_ID,'
      '  PRODUTO_ID = :PRODUTO_ID,'
      '  IPI = :IPI,'
      '  ICMS = :ICMS,'
      '  PRECO = :PRECO,'
      '  BASE_ICMS = :BASE_ICMS,'
      '  BASE_IPI = :BASE_IPI,'
      '  VALOR_ICMS = :VALOR_ICMS,'
      '  VALOR_IPI = :VALOR_IPI,'
      '  ESTOQUE_ID = :ESTOQUE_ID,'
      '  COMISSAO = :COMISSAO,'
      '  VALOR_DESCONTO = :VALOR_DESCONTO,'
      '  VALOR_ACRESCIMO = :VALOR_ACRESCIMO,'
      '  CC_ID = :CC_ID,'
      '  APLICACAO_ID = :APLICACAO_ID,'
      '  COTACAO_ID = :COTACAO_ID,'
      '  DEPARTAMENTO_ID = :DEPARTAMENTO_ID,'
      '  SC_ID = :SC_ID,'
      '  ITEMSC_ID = :ITEMSC_ID,'
      '  DATA_INC = :DATA_INC,'
      '  DATA_ALT = :DATA_ALT,'
      '  USUARIO_ID = :USUARIO_ID,'
      '  EMPRESA_ID = :EMPRESA_ID,'
      '  DELETADO = :DELETADO,'
      '  PRAZO = :PRAZO,'
      '  MARCA = :MARCA,'
      '  COTACAOITEM_ID = :COTACAOITEM_ID,'
      '  ENTREGA_PEDITEM = :ENTREGA_PEDITEM,'
      '  REPLICADO = :REPLICADO,'
      '  TOTAL = :TOTAL,'
      '  WEB_SESSION_ID = :WEB_SESSION_ID,'
      '  FORNECEDOR_ID = :FORNECEDOR_ID,'
      '  QTDE = :QTDE,'
      '  QTDE_ENTREGA = :QTDE_ENTREGA,'
      '  GERA_ESTOQUE = :GERA_ESTOQUE,'
      '  ORCAMENTO_ID = :ORCAMENTO_ID,'
      '  ORCAMENTOITEM_ID = :ORCAMENTOITEM_ID,'
      '  PESSOA_ID = :PESSOA_ID,'
      '  DATA = :DATA,'
      '  ITEM = :ITEM,'
      '  ERP_PRODUTO = :ERP_PRODUTO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SUBTOTAL = :SUBTOTAL,'
      '  USUARIO_I = :USUARIO_I,'
      '  USUARIONOME_I = :USUARIONOME_I,'
      '  USUARIO_A = :USUARIO_A,'
      '  USUARIONOME_A = :USUARIONOME_A,'
      '  DATA_DEL = :DATA_DEL,'
      '  USUARIO_D = :USUARIO_D,'
      '  USUARIONOME_D = :USUARIONOME_D,'
      '  INTEGRADO = :INTEGRADO,'
      '  INTEGRADO_DATA = :INTEGRADO_DATA,'
      '  PEDIDO_CODIGO = :PEDIDO_CODIGO,'
      '  STATUS = :STATUS,'
      '  LOTE = :LOTE,'
      '  OBS = :OBS,'
      '  NEW_ID = :NEW_ID'
      'where'
      '  PEDIDOITEM_ID = :OLD_PEDIDOITEM_ID and'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PEDIDOITEM_ID'
    GeneratorField.Generator = 'GEN_TBPEDIDO_ITEM'
    Left = 42
    Top = 641
    object DS_PedidosItemPEDIDOITEM_ID: TIntegerField
      FieldName = 'PEDIDOITEM_ID'
      Origin = '"TBPEDIDO_ITEM"."PEDIDOITEM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_PedidosItemPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBPEDIDO_ITEM"."PEDIDO_ID"'
    end
    object DS_PedidosItemPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = '"TBPEDIDO_ITEM"."PRODUTO_ID"'
    end
    object DS_PedidosItemORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBPEDIDO_ITEM"."ORCAMENTO_ID"'
    end
    object DS_PedidosItemORCAMENTOITEM_ID: TIntegerField
      FieldName = 'ORCAMENTOITEM_ID'
      Origin = '"TBPEDIDO_ITEM"."ORCAMENTOITEM_ID"'
    end
    object DS_PedidosItemPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Origin = '"TBPEDIDO_ITEM"."PESSOA_ID"'
    end
    object DS_PedidosItemDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TBPEDIDO_ITEM"."DATA"'
    end
    object DS_PedidosItemITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBPEDIDO_ITEM"."ITEM"'
      Size = 3
    end
    object DS_PedidosItemERP_PRODUTO: TIBStringField
      FieldName = 'ERP_PRODUTO'
      Origin = '"TBPEDIDO_ITEM"."ERP_PRODUTO"'
      Size = 10
    end
    object DS_PedidosItemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"TBPEDIDO_ITEM"."PRODUTO"'
      Size = 100
    end
    object DS_PedidosItemQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"TBPEDIDO_ITEM"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object DS_PedidosItemIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"TBPEDIDO_ITEM"."IPI"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = '"TBPEDIDO_ITEM"."ICMS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = '"TBPEDIDO_ITEM"."PRECO"'
      Precision = 18
      Size = 7
    end
    object DS_PedidosItemSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = '"TBPEDIDO_ITEM"."SUBTOTAL"'
      Precision = 18
      Size = 4
    end
    object DS_PedidosItemBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = '"TBPEDIDO_ITEM"."BASE_ICMS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = '"TBPEDIDO_ITEM"."BASE_IPI"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Origin = '"TBPEDIDO_ITEM"."VALOR_ICMS"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Origin = '"TBPEDIDO_ITEM"."VALOR_IPI"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemESTOQUE_ID: TIntegerField
      FieldName = 'ESTOQUE_ID'
      Origin = '"TBPEDIDO_ITEM"."ESTOQUE_ID"'
    end
    object DS_PedidosItemCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = '"TBPEDIDO_ITEM"."COMISSAO"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemVALOR_DESCONTO: TIBBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = '"TBPEDIDO_ITEM"."VALOR_DESCONTO"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemVALOR_ACRESCIMO: TIBBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Origin = '"TBPEDIDO_ITEM"."VALOR_ACRESCIMO"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemCC_ID: TIntegerField
      FieldName = 'CC_ID'
      Origin = '"TBPEDIDO_ITEM"."CC_ID"'
    end
    object DS_PedidosItemAPLICACAO_ID: TIntegerField
      FieldName = 'APLICACAO_ID'
      Origin = '"TBPEDIDO_ITEM"."APLICACAO_ID"'
    end
    object DS_PedidosItemCOTACAO_ID: TIntegerField
      FieldName = 'COTACAO_ID'
      Origin = '"TBPEDIDO_ITEM"."COTACAO_ID"'
    end
    object DS_PedidosItemDEPARTAMENTO_ID: TIntegerField
      FieldName = 'DEPARTAMENTO_ID'
      Origin = '"TBPEDIDO_ITEM"."DEPARTAMENTO_ID"'
    end
    object DS_PedidosItemSC_ID: TIntegerField
      FieldName = 'SC_ID'
      Origin = '"TBPEDIDO_ITEM"."SC_ID"'
    end
    object DS_PedidosItemITEMSC_ID: TIntegerField
      FieldName = 'ITEMSC_ID'
      Origin = '"TBPEDIDO_ITEM"."ITEMSC_ID"'
    end
    object DS_PedidosItemDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBPEDIDO_ITEM"."DATA_INC"'
    end
    object DS_PedidosItemUSUARIO_I: TIntegerField
      FieldName = 'USUARIO_I'
      Origin = '"TBPEDIDO_ITEM"."USUARIO_I"'
    end
    object DS_PedidosItemUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBPEDIDO_ITEM"."USUARIONOME_I"'
      Size = 30
    end
    object DS_PedidosItemDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Origin = '"TBPEDIDO_ITEM"."DATA_ALT"'
    end
    object DS_PedidosItemUSUARIO_A: TIntegerField
      FieldName = 'USUARIO_A'
      Origin = '"TBPEDIDO_ITEM"."USUARIO_A"'
    end
    object DS_PedidosItemUSUARIONOME_A: TIBStringField
      FieldName = 'USUARIONOME_A'
      Origin = '"TBPEDIDO_ITEM"."USUARIONOME_A"'
      Size = 30
    end
    object DS_PedidosItemDATA_DEL: TDateTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBPEDIDO_ITEM"."DATA_DEL"'
    end
    object DS_PedidosItemUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBPEDIDO_ITEM"."USUARIO_D"'
    end
    object DS_PedidosItemUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBPEDIDO_ITEM"."USUARIONOME_D"'
      Size = 30
    end
    object DS_PedidosItemUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBPEDIDO_ITEM"."USUARIO_ID"'
    end
    object DS_PedidosItemEMPRESA_ID: TIntegerField
      FieldName = 'EMPRESA_ID'
      Origin = '"TBPEDIDO_ITEM"."EMPRESA_ID"'
    end
    object DS_PedidosItemDELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBPEDIDO_ITEM"."DELETADO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosItemPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = '"TBPEDIDO_ITEM"."PRAZO"'
    end
    object DS_PedidosItemMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"TBPEDIDO_ITEM"."MARCA"'
      Size = 30
    end
    object DS_PedidosItemCOTACAOITEM_ID: TIntegerField
      FieldName = 'COTACAOITEM_ID'
      Origin = '"TBPEDIDO_ITEM"."COTACAOITEM_ID"'
    end
    object DS_PedidosItemENTREGA_PEDITEM: TDateField
      FieldName = 'ENTREGA_PEDITEM'
      Origin = '"TBPEDIDO_ITEM"."ENTREGA_PEDITEM"'
    end
    object DS_PedidosItemREPLICADO: TIBStringField
      FieldName = 'REPLICADO'
      Origin = '"TBPEDIDO_ITEM"."REPLICADO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosItemTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"TBPEDIDO_ITEM"."TOTAL"'
      Precision = 18
      Size = 2
    end
    object DS_PedidosItemWEB_SESSION_ID: TIBStringField
      FieldName = 'WEB_SESSION_ID'
      Origin = '"TBPEDIDO_ITEM"."WEB_SESSION_ID"'
      Size = 30
    end
    object DS_PedidosItemFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
      Origin = '"TBPEDIDO_ITEM"."FORNECEDOR_ID"'
    end
    object DS_PedidosItemQTDE_ENTREGA: TIBBCDField
      FieldName = 'QTDE_ENTREGA'
      Origin = '"TBPEDIDO_ITEM"."QTDE_ENTREGA"'
      Precision = 18
      Size = 4
    end
    object DS_PedidosItemGERA_ESTOQUE: TIBStringField
      FieldName = 'GERA_ESTOQUE'
      Origin = '"TBPEDIDO_ITEM"."GERA_ESTOQUE"'
      Size = 1
    end
    object DS_PedidosItemPEDIDO_CODIGO: TIBStringField
      FieldName = 'PEDIDO_CODIGO'
      Origin = '"TBPEDIDO_ITEM"."PEDIDO_CODIGO"'
    end
    object DS_PedidosItemINTEGRADO: TIBStringField
      FieldName = 'INTEGRADO'
      Origin = '"TBPEDIDO_ITEM"."INTEGRADO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidosItemDATAWARE: TIBStringField
      FieldName = 'DATAWARE'
      Origin = '"TBPEDIDO_ITEM"."DATAWARE"'
      Size = 2
    end
    object DS_PedidosItemQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"TBPEDIDO_ITEM"."QTDE"'
      Precision = 18
      Size = 4
    end
    object DS_PedidosItemINTEGRADO_DATA: TDateTimeField
      FieldName = 'INTEGRADO_DATA'
      Origin = '"TBPEDIDO_ITEM"."INTEGRADO_DATA"'
    end
    object DS_PedidosItemSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TBPEDIDO_ITEM"."STATUS"'
      Size = 10
    end
    object DS_PedidosItemLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"TBPEDIDO_ITEM"."LOTE"'
      Size = 10
    end
    object DS_PedidosItemOBS: TWideMemoField
      FieldName = 'OBS'
      Origin = '"TBPEDIDO_ITEM"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object DS_PedidosItemNEW_ID: TIntegerField
      FieldName = 'NEW_ID'
      Origin = '"TBPEDIDO_ITEM"."NEW_ID"'
    end
  end
  object QR_PRODUTO: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      'produto_id, referencia, descricao'
      'from tbprodutos where deletado = '#39'N'#39)
    Left = 42
    Top = 736
    object QR_PRODUTOPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = '"TBPRODUTOS"."PRODUTO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_PRODUTOREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"TBPRODUTOS"."REFERENCIA"'
    end
    object QR_PRODUTODESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"TBPRODUTOS"."DESCRICAO"'
      Size = 80
    end
  end
  object qCliente: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      ' c.erp_cliente, c.nome, c.uf, c.tipocliente_id, c.tipocliente,'
      'c.cidade, c.bairro, c.complemento, c.cep, c.endereco,'
      
        'c.cpfcnpj, c.telefone, c.email, c.compra_ultima, c.compra_numero' +
        ','
      'c.tipopessoa'
      'from tbcliente c'
      'where deletado = '#39'N'#39)
    Left = 43
    Top = 491
    object qClienteERP_CLIENTE: TIBStringField
      FieldName = 'ERP_CLIENTE'
      Origin = '"TBCLIENTE"."ERP_CLIENTE"'
      Size = 10
    end
    object qClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TBCLIENTE"."NOME"'
      Size = 80
    end
    object qClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"TBCLIENTE"."UF"'
      Size = 2
    end
    object qClienteTIPOCLIENTE_ID: TIntegerField
      FieldName = 'TIPOCLIENTE_ID'
      Origin = '"TBCLIENTE"."TIPOCLIENTE_ID"'
    end
    object qClienteTIPOCLIENTE: TIBStringField
      FieldName = 'TIPOCLIENTE'
      Origin = '"TBCLIENTE"."TIPOCLIENTE"'
      Size = 60
    end
    object qClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"TBCLIENTE"."CIDADE"'
      Size = 40
    end
    object qClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"TBCLIENTE"."BAIRRO"'
      Size = 40
    end
    object qClienteCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"TBCLIENTE"."COMPLEMENTO"'
      Size = 40
    end
    object qClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"TBCLIENTE"."CEP"'
      Size = 10
    end
    object qClienteCPFCNPJ: TIBStringField
      FieldName = 'CPFCNPJ'
      Origin = '"TBCLIENTE"."CPFCNPJ"'
      Size = 18
    end
    object qClienteTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"TBCLIENTE"."TELEFONE"'
      Size = 14
    end
    object qClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TBCLIENTE"."EMAIL"'
      Size = 100
    end
    object qClienteCOMPRA_ULTIMA: TDateField
      FieldName = 'COMPRA_ULTIMA'
      Origin = '"TBCLIENTE"."COMPRA_ULTIMA"'
    end
    object qClienteCOMPRA_NUMERO: TIntegerField
      FieldName = 'COMPRA_NUMERO'
      Origin = '"TBCLIENTE"."COMPRA_NUMERO"'
    end
    object qClienteTIPOPESSOA: TIBStringField
      FieldName = 'TIPOPESSOA'
      Origin = '"TBCLIENTE"."TIPOPESSOA"'
      Size = 10
    end
    object qClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"TBCLIENTE"."ENDERECO"'
      Size = 80
    end
  end
  object DS_Doc: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from tbdoc'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    InsertSQL.Strings = (
      'insert into tbdoc'
      
        '  (DOC_ID, PEDIDO_ID, PEDIDO_CODIGO, NOME_ARQUIVO, TAMANHO, EXTE' +
        'NSAO, ITEM, '
      
        '   CAMINHO, USUARIO_I, USUARIONOME_I, DATA_INC, DELETADO, ARQUIV' +
        'O, DATAWARE, '
      
        '   DOCUMENTO, USUARIO_D, USUARIONOME_D, DATA_DEL, USUARIO_A, USU' +
        'ARIONOME_A, '
      '   DATA_ALT)'
      'values'
      
        '  (:DOC_ID, :PEDIDO_ID, :PEDIDO_CODIGO, :NOME_ARQUIVO, :TAMANHO,' +
        ' :EXTENSAO, '
      
        '   :ITEM, :CAMINHO, :USUARIO_I, :USUARIONOME_I, :DATA_INC, :DELE' +
        'TADO, :ARQUIVO, '
      
        '   :DATAWARE, :DOCUMENTO, :USUARIO_D, :USUARIONOME_D, :DATA_DEL,' +
        ' :USUARIO_A, '
      '   :USUARIONOME_A, :DATA_ALT)')
    SelectSQL.Strings = (
      'select doc_id, pedido_id, pedido_codigo, nome_arquivo, tamanho,'
      '  extensao, item, caminho, usuario_i, usuarionome_i, data_inc,'
      '  deletado, arquivo, dataware, documento, usuario_d, '
      '  usuarionome_d, data_del, usuario_a, usuarionome_a, data_alt'
      'from tbdoc'
      '  where doc_id = 0')
    ModifySQL.Strings = (
      'update tbdoc'
      'set'
      '  DOC_ID = :DOC_ID,'
      '  PEDIDO_ID = :PEDIDO_ID,'
      '  PEDIDO_CODIGO = :PEDIDO_CODIGO,'
      '  NOME_ARQUIVO = :NOME_ARQUIVO,'
      '  TAMANHO = :TAMANHO,'
      '  EXTENSAO = :EXTENSAO,'
      '  ITEM = :ITEM,'
      '  CAMINHO = :CAMINHO,'
      '  USUARIO_I = :USUARIO_I,'
      '  USUARIONOME_I = :USUARIONOME_I,'
      '  DATA_INC = :DATA_INC,'
      '  DELETADO = :DELETADO,'
      '  ARQUIVO = :ARQUIVO,'
      '  DATAWARE = :DATAWARE,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  USUARIO_D = :USUARIO_D,'
      '  USUARIONOME_D = :USUARIONOME_D,'
      '  DATA_DEL = :DATA_DEL,'
      '  USUARIO_A = :USUARIO_A,'
      '  USUARIONOME_A = :USUARIONOME_A,'
      '  DATA_ALT = :DATA_ALT'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'DOC_ID'
    GeneratorField.Generator = 'GEN_TBDOC'
    Left = 42
    Top = 785
    object DS_DocDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TBDOC"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_DocPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBDOC"."PEDIDO_ID"'
    end
    object DS_DocPEDIDO_CODIGO: TIBStringField
      FieldName = 'PEDIDO_CODIGO'
      Origin = '"TBDOC"."PEDIDO_CODIGO"'
    end
    object DS_DocNOME_ARQUIVO: TIBStringField
      FieldName = 'NOME_ARQUIVO'
      Origin = '"TBDOC"."NOME_ARQUIVO"'
      Size = 60
    end
    object DS_DocTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
      Origin = '"TBDOC"."TAMANHO"'
    end
    object DS_DocEXTENSAO: TIBStringField
      FieldName = 'EXTENSAO'
      Origin = '"TBDOC"."EXTENSAO"'
      Size = 10
    end
    object DS_DocITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBDOC"."ITEM"'
      Size = 3
    end
    object DS_DocCAMINHO: TIBStringField
      FieldName = 'CAMINHO'
      Origin = '"TBDOC"."CAMINHO"'
      Size = 255
    end
    object DS_DocUSUARIO_I: TIntegerField
      FieldName = 'USUARIO_I'
      Origin = '"TBDOC"."USUARIO_I"'
    end
    object DS_DocUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBDOC"."USUARIONOME_I"'
      Size = 30
    end
    object DS_DocDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBDOC"."DATA_INC"'
    end
    object DS_DocDELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBDOC"."DELETADO"'
      FixedChar = True
      Size = 1
    end
    object DS_DocARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
      Origin = '"TBDOC"."ARQUIVO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object DS_DocDATAWARE: TIBStringField
      FieldName = 'DATAWARE'
      Origin = '"TBDOC"."DATAWARE"'
      Size = 2
    end
    object DS_DocDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"TBDOC"."DOCUMENTO"'
      Size = 200
    end
    object DS_DocUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBDOC"."USUARIO_D"'
    end
    object DS_DocUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBDOC"."USUARIONOME_D"'
      Size = 30
    end
    object DS_DocDATA_DEL: TDateTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBDOC"."DATA_DEL"'
    end
    object DS_DocUSUARIO_A: TIntegerField
      FieldName = 'USUARIO_A'
      Origin = '"TBDOC"."USUARIO_A"'
    end
    object DS_DocUSUARIONOME_A: TIBStringField
      FieldName = 'USUARIONOME_A'
      Origin = '"TBDOC"."USUARIONOME_A"'
      Size = 30
    end
    object DS_DocDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Origin = '"TBDOC"."DATA_ALT"'
    end
  end
  object UniImageList1: TUniImageList
    Left = 606
    Top = 510
    Bitmap = {
      494C010103000500200010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000015555556000000000000000005D5D5DAC000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4A4A4A540000
      0000000000000000000000000000000000003C7C9BC865CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF397693C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0203464646FF515151FF5E5E5E6C000000005D5D5DAC000000FF000000000000
      00000000000000000000000000000000000000000000000000FF4A4A4A540000
      00000000000000000000000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202034646
      46FF515151FF474747FF02020203000000005D5D5DAC000000FF000000000000
      00000000000000000000000000000000000000000000000000FF4A4A4A540000
      00000000000000000000000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020203464646FF5151
      51FF474747FF0505050600000000000000005D5D5DAC000000FF000000000000
      00000000000000000000000000000000000000000000000000FF4A4A4A540000
      00000000000000000000000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020203464646FF515151FF4747
      47FF050505060000000000000000000000005D5D5DAC000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2DE43535353800000000000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000464646FF515151FF474747FF0505
      0506000000000000000000000000000000005D5D5DAC000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000006060
      609E000000FF35353538000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E1F4140
      40FF875822FF895921FF424140FF8E8E8EBFCDCDCDFF474747FF050505060000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      0000000000004A4A4A544A4A4A544A4A4A544A4A4A544A4A4A544A4A4A544A4A
      4A54393939DA000000FF353535380000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C1D765329FFE78C
      1DFFF19B31FFF29C32FFE88E1FFF865723FF8C8B8BBF00000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF191919F10000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000404041FFE78C1CFFFCAB
      47FFFFAF4CFFFFAF4CFFFDAC49FFE88E1FFF424140FF00000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0102000000FF171717F2000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000775329FFF7CF9FFFFFAF
      4CFFFFAF4CFFFFAF4CFFFFAF4CFFF29C32FF895921FF00000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF171717F200000000000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF63C7F7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000755229FFF8CC98FFFFAF
      4CFFFFAF4CFFFFAF4CFFFFAF4CFFF19B31FF875822FF00000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      000000000000000000000000000000000000000000004A4A4A541A1A1A1B2626
      26270000000000000000000000000000000065CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65C8FBFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000404040FDE68A1AFFFDDB
      B1FFFFAF4CFFFFAF4CFFFCAB47FFE78C1DFF414040FF00000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      00000000000000000000000000000000000000000000000000FF4A4A4A540000
      00000000000000000000000000000000000060C4F4FF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CCFFFF65CC
      FFFF65CCFFFF65CCFFFF65CCFFFF60BFF0FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131314694E2FFFE68A
      1AFFF7CC99FFF19D37FFE78C1CFF765329FF1E1E1E1F00000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000000000
      00000000000000000000000000000000000000000000000000FF4A4A4A540000
      00000000000000000000000000000000000051A3CCFFDCEDF5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDAEBF4FF4D9DC7FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000131313144040
      40FD755229FF775329FF404041FF1C1C1C1D0000000000000000000000000000
      0000000000000000000000000000000000005D5D5DAC000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF4A4A4A540000
      00000000000000000000000000000000000051A3CCFF51A3CCFF54A4CDFF54A4
      CDFF54A4CDFF54A4CDFF54A4CDFF54A4CDFF54A4CDFF54A4CDFF54A4CDFF54A4
      CDFF54A4CDFF54A4CDFF51A3CCFF31627AC60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B5B5B735D5D5DAC5D5D5DAC5D5D
      5DAC5D5D5DAC5D5D5DAC5D5D5DAC5D5D5DAC5D5D5DAC5D5D5DAC353535380000
      00000000000000000000000000000000000033657FC951A3CCFF51A3CCFF51A3
      CCFF51A3CCFF31617BC700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFF3001F00000000
      FFE13F9F00000000FFC13F9F00000000FF833F9F00000000FF073FE700000000
      FF0F3FE300000000C01F380100000000807F380100000000807F3FE300000000
      807F3FE700000000807F3F8F00000000807F3F9F00000000807F3F9F00000000
      C0FF001F00000000FFFF001F0000000000000000000000000000000000000000
      000000000000}
  end
  object cdsProdutosBusca: TClientDataSet
    PersistDataPacket.Data = {
      690000009619E0BD01000000180000000300000000000300000069000A50524F
      4455544F5F494404000100000000000B4552505F50524F4455544F0100490000
      000100055749445448020002000A000750524F4455544F010049000000010005
      57494454480200020064000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 843
    object cdsProdutosBuscaPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
    end
    object cdsProdutosBuscaERP_PRODUTO: TStringField
      FieldName = 'ERP_PRODUTO'
      Size = 10
    end
    object cdsProdutosBuscaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
  end
end
