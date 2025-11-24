object Form_Aprovar: TForm_Aprovar
  Left = 0
  Top = 0
  ClientHeight = 638
  ClientWidth = 1008
  Caption = 'Alterar Or'#231'amento'
  OnShow = UniFormShow
  OldCreateOrder = False
  OnClose = UniFormClose
  BorderIcons = [biSystemMenu, biMaximize]
  KeyPreview = True
  MonitoredKeys.Keys = <>
  Font.Name = 'Verdana'
  ScreenMask.Target = Owner
  OnAfterShow = UniFormAfterShow
  OnCreate = UniFormCreate
  DesignSize = (
    1008
    638)
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 14
    Top = 305
    Width = 147
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Produto'
    TabOrder = 0
  end
  object Edit_Pesq: TUniEdit
    Left = 14
    Top = 321
    Width = 296
    Hint = ''
    CharCase = ecUpperCase
    Text = ''
    TabOrder = 1
    OnChange = Edit_PesqChange
    OnKeyDown = Edit_PesqKeyDown
  end
  object Panel_Top: TUniPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 35
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = 9856100
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 2
    Alignment = taRightJustify
    Caption = 'Avalia'#231#227'o do Or'#231'amento'
  end
  object ComboBoxStatus: TUniComboBox
    Left = 318
    Top = 321
    Width = 145
    Hint = ''
    Style = csDropDownList
    Text = ''
    Items.Strings = (
      'Negocia'#231#227'o Comercial'
      'Aprova'#231#227'o Comercial'
      'Cancelar')
    TabOrder = 3
    IconItems = <>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 840
    Top = 99
    Width = 160
    Height = 119
    Hint = ''
    Visible = True
    object Edit_Preco: TUniNumberEdit
      Left = 24
      Top = 21
      Width = 121
      Hint = ''
      TabOrder = 1
      DecimalPrecision = 4
      DecimalSeparator = ','
    end
    object Edit_Quantidade: TUniNumberEdit
      Left = 24
      Top = 48
      Width = 121
      Hint = ''
      TabOrder = 2
      DecimalSeparator = ','
    end
    object UniComboBox1: TUniComboBox
      Left = 24
      Top = 77
      Width = 120
      Hint = ''
      Text = 'UniComboBox1'
      TabOrder = 3
      Triggers = <
        item
          ButtonId = 1
          IconCls = 'x-form-search-trigger'
          HandleClicks = True
        end>
      IconItems = <>
      OnTriggerEvent = UniComboBox1TriggerEvent
    end
  end
  object UniLabel2: TUniLabel
    Left = 318
    Top = 306
    Width = 36
    Height = 13
    Hint = ''
    Caption = 'Status'
    TabOrder = 5
  end
  object btn_Aplicar: TUniButton
    Left = 469
    Top = 319
    Width = 100
    Height = 25
    Hint = ''
    Caption = '<i class="fa fa-check-square fa-2px"></i> Aplicar'
    ParentFont = False
    Font.Color = clWhite
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 6
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoAzul'#39');'#13#10'}')
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Aguarde, processando...'
    OnClick = btn_AplicarClick
  end
  object MemoOBS: TUniMemo
    Left = 13
    Top = 230
    Width = 496
    Height = 70
    Hint = ''
    TabOrder = 7
  end
  object UniLabel3: TUniLabel
    Left = 516
    Top = 212
    Width = 195
    Height = 13
    Hint = ''
    Caption = 'Observa'#231#227'o Privada ao Comercial'
    TabOrder = 8
  end
  object MemoOBS_Privada: TUniMemo
    Left = 516
    Top = 231
    Width = 478
    Height = 70
    Hint = ''
    TabOrder = 9
  end
  object UniLabel4: TUniLabel
    Left = 13
    Top = 212
    Width = 224
    Height = 13
    Hint = ''
    Caption = 'Observa'#231#227'o P'#250'blica - Vis'#237'vel ao Cliente'
    TabOrder = 10
  end
  object Panel_Bottom: TUniPanel
    Left = 0
    Top = 567
    Width = 1008
    Height = 71
    Hint = ''
    Align = alBottom
    TabOrder = 11
    Caption = ''
    object btn_Inserir: TUniBitBtn
      Left = 14
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-plus-square fa-2x"></i> Adicionar'
      ParentFont = False
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_InserirClick
    end
    object btn_Auditoria: TUniBitBtn
      Left = 140
      Top = 5
      Width = 120
      Height = 57
      Hint = ''
      Caption = '<i class="fa fa-book fa-2x"></i> Auditoria'
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
  object UniLabel5: TUniLabel
    Left = 17
    Top = 74
    Width = 91
    Height = 13
    Hint = ''
    Caption = 'CNPJ do Cliente'
    TabOrder = 12
  end
  object UniLabel6: TUniLabel
    Left = 351
    Top = 74
    Width = 40
    Height = 13
    Hint = ''
    Caption = 'C'#243'digo'
    TabOrder = 13
  end
  object UniLabel7: TUniLabel
    Left = 550
    Top = 74
    Width = 20
    Height = 13
    Hint = ''
    Caption = 'I.E.'
    TabOrder = 14
  end
  object UniLabel8: TUniLabel
    Left = 17
    Top = 103
    Width = 40
    Height = 13
    Hint = ''
    Caption = 'Cliente'
    TabOrder = 15
  end
  object UniLabel9: TUniLabel
    Left = 550
    Top = 103
    Width = 40
    Height = 13
    Hint = ''
    Caption = 'Cidade'
    TabOrder = 16
  end
  object UniLabel10: TUniLabel
    Left = 17
    Top = 131
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Endere'#231'o'
    TabOrder = 17
  end
  object UniLabel11: TUniLabel
    Left = 17
    Top = 159
    Width = 35
    Height = 13
    Hint = ''
    Caption = 'Bairro'
    TabOrder = 18
  end
  object UniLabel12: TUniLabel
    Left = 392
    Top = 159
    Width = 23
    Height = 13
    Hint = ''
    Caption = 'CEP'
    TabOrder = 19
  end
  object UniLabel13: TUniLabel
    Left = 550
    Top = 159
    Width = 48
    Height = 13
    Hint = ''
    Caption = 'Telefone'
    TabOrder = 20
  end
  object UniLabel33: TUniLabel
    Left = 550
    Top = 131
    Width = 24
    Height = 13
    Hint = ''
    Caption = 'Tipo'
    TabOrder = 21
  end
  object UniLabel26: TUniLabel
    Left = 17
    Top = 187
    Width = 36
    Height = 13
    Hint = ''
    Caption = 'E-mail'
    TabOrder = 22
  end
  object UniLabel14: TUniLabel
    Left = 17
    Top = 47
    Width = 93
    Height = 13
    Hint = ''
    Caption = 'Data de Entrega'
    TabOrder = 23
  end
  object Edit_CliCNPJ: TUniDBEdit
    Left = 111
    Top = 71
    Width = 236
    Height = 22
    Hint = ''
    DataField = 'CLI_CPFCNPJ'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 24
  end
  object Edit_Cliente: TUniDBEdit
    Left = 111
    Top = 99
    Width = 426
    Height = 22
    Hint = ''
    DataField = 'CLIENTE'
    DataSource = DataSource_OrcamentoItem
    ParentFont = False
    Font.Color = 12287488
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 25
  end
  object Edit_Endereco: TUniDBEdit
    Left = 111
    Top = 127
    Width = 426
    Height = 22
    Hint = ''
    DataField = 'CLI_ENDERECO'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 26
  end
  object Edit_Bairro: TUniDBEdit
    Left = 111
    Top = 155
    Width = 275
    Height = 22
    Hint = ''
    DataField = 'CLI_BAIRRO'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 27
  end
  object Edit_Email: TUniDBEdit
    Left = 111
    Top = 183
    Width = 426
    Height = 22
    Hint = ''
    DataField = 'EMAIL_CLIENTE'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 28
  end
  object Edit_CEP: TUniDBEdit
    Left = 421
    Top = 155
    Width = 116
    Height = 22
    Hint = ''
    DataField = 'CLI_CEP'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 29
  end
  object Edit_Codigo: TUniDBEdit
    Left = 397
    Top = 71
    Width = 140
    Height = 22
    Hint = ''
    DataField = 'ERP_CODIGO'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 30
  end
  object Edit_Telefone: TUniDBEdit
    Left = 624
    Top = 155
    Width = 193
    Height = 22
    Hint = ''
    DataField = 'CLI_TELEFONE'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 31
  end
  object Edit_Tipo: TUniDBEdit
    Left = 624
    Top = 127
    Width = 193
    Height = 22
    Hint = ''
    DataField = 'CLI_TIPO'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 32
  end
  object Edit_Cidade: TUniDBEdit
    Left = 624
    Top = 99
    Width = 159
    Height = 22
    Hint = ''
    DataField = 'CLI_CIDADE'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 33
  end
  object Edit_UF: TUniDBEdit
    Left = 789
    Top = 99
    Width = 28
    Height = 22
    Hint = ''
    DataField = 'CLI_UF'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 34
  end
  object Edit_IE: TUniDBEdit
    Left = 624
    Top = 71
    Width = 193
    Height = 22
    Hint = ''
    DataField = 'CLI_IE'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 35
  end
  object Edit_Entregar: TUniDBEdit
    Left = 111
    Top = 43
    Width = 114
    Height = 22
    Hint = ''
    DataField = 'ENTREGAR'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 36
  end
  object UniPageControl1: TUniPageControl
    Left = 15
    Top = 347
    Width = 981
    Height = 214
    Hint = ''
    ActivePage = TabSheet_Itens
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 37
    object TabSheet_Itens: TUniTabSheet
      Hint = ''
      Caption = 'Itens do Or'#231'amento'
      DesignSize = (
        973
        186)
      object UniDBGrid1: TUniDBGrid
        Left = -711
        Top = -57
        Width = 1684
        Height = 243
        Hint = ''
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
        LoadMask.Message = 'Carregando dados...'
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Name = 'Verdana'
        ParentFont = False
        TabOrder = 0
        OnTitleClick = UniDBGrid1TitleClick
        Columns = <
          item
            FieldName = 'SHIFT'
            Title.Alignment = taCenter
            Title.Caption = '...'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 30
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Alignment = taCenter
            CheckBoxField.AutoPost = True
          end
          item
            FieldName = 'ITEM'
            Title.Caption = 'Item'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 49
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Title.Font.Color = 12287488
            Width = 156
            Font.Color = 12287488
            Font.Name = 'Verdana'
          end
          item
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 317
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'QUANTIDADE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quantidade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 95
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'PRECO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 70
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'QUANTIDADE_A'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtde Final'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 103
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Editor = Edit_Quantidade
            CheckBoxField.AutoPost = True
          end
          item
            FieldName = 'ULTIMO_PRECO'
            Title.Alignment = taRightJustify
            Title.Caption = #218'lt. Pre'#231'o'
            Title.Font.Color = 12287488
            Width = 70
            Font.Color = clRed
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'PRECO_A'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o Final'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Editor = Edit_Preco
            CheckBoxField.AutoPost = True
          end
          item
            FieldName = 'TOTAL_A'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total Final'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 83
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
            CheckBoxField.AutoPost = True
          end>
      end
      object UniDBGrid2: TUniDBGrid
        Left = 0
        Top = 0
        Width = 973
        Height = 186
        Hint = ''
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.PageSize = 999
        LoadMask.Message = 'Carregando dados...'
        Align = alClient
        TabOrder = 1
        Summary.Align = taBottom
        Summary.Enabled = True
        OnCellClick = UniDBGrid2CellClick
        OnFieldImage = UniDBGrid2FieldImage
        OnTitleClick = UniDBGrid1TitleClick
        OnDrawColumnCell = UniDBGrid2DrawColumnCell
        OnColumnSummary = UniDBGrid2ColumnSummary
        OnColumnSummaryResult = UniDBGrid2ColumnSummaryResult
        Columns = <
          item
            FieldName = 'IMG'
            Title.Alignment = taCenter
            Title.Caption = '...'
            Title.Font.Color = 12287488
            Width = 30
            Font.Name = 'Verdana'
            ImageOptions.Visible = True
            Locked = True
          end
          item
            FieldName = 'SHIFT'
            Title.Alignment = taCenter
            Title.Caption = '...'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 30
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Alignment = taCenter
            CheckBoxField.AutoPost = True
            Locked = True
          end
          item
            FieldName = 'ITEM'
            Title.Caption = 'Item'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 49
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
            Locked = True
          end
          item
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 156
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
            Locked = True
          end
          item
            FieldName = 'ERP_PRODUTO'
            Title.Caption = 'C'#243'digo Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 110
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Editor = UniComboBox1
            CheckBoxField.AutoPost = True
            Locked = True
          end
          item
            FieldName = 'PRODUTO'
            Title.Caption = 'Produto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 317
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
            CheckBoxField.AutoPost = True
            Locked = True
          end
          item
            FieldName = 'QUANTIDADE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quantidade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
            ShowSummary = True
          end
          item
            FieldName = 'PRECO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'QUANTIDADE_A'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtde Final'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Editor = Edit_Quantidade
            CheckBoxField.AutoPost = True
            ShowSummary = True
          end
          item
            FieldName = 'IMG_LUPA'
            Title.Alignment = taCenter
            Title.Caption = '...'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Name = 'Verdana'
            ImageOptions.Visible = True
          end
          item
            FieldName = 'PRECO_A'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o Final'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = 12287488
            Font.Name = 'Verdana'
            Editor = Edit_Preco
            CheckBoxField.AutoPost = True
          end
          item
            FieldName = 'TOTAL_A'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total Final'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = 12287488
            Font.Name = 'Verdana'
            ReadOnly = True
            CheckBoxField.AutoPost = True
            ShowSummary = True
          end
          item
            FieldName = 'ULTIMO_PRECO'
            Title.Alignment = taRightJustify
            Title.Caption = #218'lt. Pre'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 90
            Font.Color = clRed
            Font.Name = 'Verdana'
            ReadOnly = True
          end
          item
            FieldName = 'DATA_ULTPRECO'
            Title.Caption = 'Data '#218'lt. Pre'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 12287488
            Title.Font.Name = 'Verdana'
            Width = 100
            Font.Color = clRed
            Font.Name = 'Verdana'
            ReadOnly = True
          end>
      end
    end
  end
  object UniImage1: TUniImage
    Left = 72
    Top = 423
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
    Transparent = True
  end
  object UniImage2: TUniImage
    Left = 71
    Top = 447
    Width = 16
    Height = 16
    Hint = ''
    Visible = False
    Stretch = True
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
      001008060000001FF3FF61000000097048597300000B1200000B1201D2DD7EFC
      00000A4F6943435050686F746F73686F70204943432070726F66696C65000078
      DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A21
      09104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807E4
      21A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C
      9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173FD
      230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42995C
      01808401C07491384B08801400407A8E42A600404601809D98265300A0040060
      CB6362E300502D0060277FE6D300809DF8997B01005B94211501A09100201365
      884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0B7
      00C0CE100BB200080C00305188852900047B0060C8232378008499001446F257
      3CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE49172B
      14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE0E
      AECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2F
      B31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370F8
      7E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3C
      FCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB7
      0BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525D2
      FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F700
      00F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E44
      242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC6036
      844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C051
      688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA8801
      628A58238E08179985F821C14804128B2420C9881451224B91354831528A5420
      55481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB543
      B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F
      3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB056
      AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A820
      1C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C23
      D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E5223
      E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE421
      F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52DD
      A8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D31A
      681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D861583
      C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F99
      6F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB54
      8FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67A8
      6F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B
      0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352
      F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB931
      655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A
      275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477
      BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806
      B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E184
      91B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE
      9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDF
      B7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB346
      AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806
      DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D
      5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613
      CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BD
      E44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E
      593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F91
      57ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8
      B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02FB
      F87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC
      90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557863F
      8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3E
      AA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDF
      FCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96404C
      884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8435C
      2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A
      9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC6585
      B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B26765
      5766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A586
      4B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD54F
      ABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D
      4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCABF
      99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40D
      DF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A4
      54F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB
      5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203
      FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D55
      8D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A
      429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794A
      F354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F
      6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6D
      EA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4
      BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727
      EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7
      068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA743
      CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5
      FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE4
      7C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB000002DF49
      44415478DA7D935D48935118C7FFE77DB7A99B737E371B321A5A9AA617CDD0B2
      98BBB022B4B208522CC98C0CA1C0E8228388128A6E84A86E24D128C208B32EBC
      F0C20FA60DCAACD0CAB49A8A663A3F369DBAB6BD6FCFBB5A69840FFC39EF79CE
      39BFF37C9C9789A288801D3C765247C315523E29E6B77B82D444BA4C9AC20A6B
      6AA8050B000A4A4E158982703B384CA7516BD310AC8E83200858768E6361B20F
      EEF9F129995C516E2CAC7962AD3FB31A40379F651C5F1393B81BBAA4EDC83546
      C0181F04D05AB76D192D96114C7EEDC59CAD9DA0DE223AFBF00FE04071698252
      ADEE0F5D9FAD88DDB80B86C4081CDA224318FF2BCC392FD060756374680CD35F
      BAF063A6D7E5723A13A4D402805B5A434A45547211D4D1E1F07A7DF078BC107C
      221803388E03C73370F4EDF86687C3D644D1F45513E052003098B4E368822A3E
      0B8228C0BDECF1E7BECA882497F3E0A85C4BDF5FE353D7831EF21A0300AF31AF
      92671A03165D4BF05104FF33B982234810BC8E31BC6BB9217523D60F387CE2B4
      3B23FF9C42546E80C7EB21F920630218C5ECF309908291D208512A282D1EC2C2
      185E3EAD965A1BE707149494BD49C9294E8FDF9C8559A7802019A0503178285E
      5110C1BBE187101172198FE1B7560C58EE7590C71448E19A6E535A95B9B0C2DF
      36271D98A555DA0BAA23A2C82793AA49C683E1D9DDAB70CD8C5EA0E9CD002092
      2683C6BCB2C80CF33628950C8E259152A1DB290D958260049A99033A9B9FC366
      6D8472E485D965C8695BF990F611A439D55CCCA79B7662AB8E2146CE20BDD1E9
      79119D23407F572B062D8D50D92C30E9EDE8FC80ACFA5776AB1401328FDF013D
      CF3DB4BF2E44A3D546EBD310B64EEF2FDEFCD430ECC37D589C188472AC0772D7
      67D47674A3AE7C2F4AEFDB991FB0C2424992438A484BF2057EA6D0A1D601BD7C
      B45D6432A42446627FE5753CAA3E8F7F016BDAACE5B129316AB12D96BA94DBF0
      11178F14FCFD1BD732C658320D1A52786A9C3A3B53B754F59E4FF1AFFD044365
      394158712C650000000049454E44AE426082}
    Transparent = True
  end
  object Edit_PesqCondPagto: TUniEdit
    Left = 624
    Top = 183
    Width = 33
    Hint = ''
    Text = ''
    TabOrder = 40
    ReadOnly = True
  end
  object btn_CondPagto: TUniButton
    Left = 663
    Top = 182
    Width = 25
    Height = 24
    Hint = ''
    Caption = ''
    TabOrder = 41
    Images = UniImageList1
    ImageIndex = 0
    OnClick = btn_CondPagtoClick
  end
  object Edit_CondPagto: TUniEdit
    Left = 694
    Top = 183
    Width = 123
    Hint = ''
    Text = ''
    TabOrder = 42
    ReadOnly = True
  end
  object UniLabel20: TUniLabel
    Left = 550
    Top = 188
    Width = 74
    Height = 13
    Hint = ''
    Caption = 'Cond. Pagto.'
    TabOrder = 43
  end
  object Edit_Emitente: TUniDBEdit
    Left = 287
    Top = 43
    Width = 250
    Height = 22
    Hint = ''
    DataField = 'USUARIONOME_I'
    DataSource = DataSource_OrcamentoItem
    TabOrder = 44
  end
  object UniLabel16: TUniLabel
    Left = 231
    Top = 47
    Width = 50
    Height = 13
    Hint = ''
    Caption = 'Emitente'
    TabOrder = 45
  end
  object UniLabel15: TUniLabel
    Left = 549
    Top = 47
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Total R$'
    ParentFont = False
    Font.Color = 12287488
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 46
  end
  object Edit_Total: TUniEdit
    Left = 624
    Top = 43
    Width = 193
    Hint = ''
    Alignment = taRightJustify
    Text = ''
    ParentFont = False
    Font.Color = 12287488
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 47
    ReadOnly = True
  end
  object cdsItensOrcamento: TClientDataSet
    PersistDataPacket.Data = {
      0E0200009619E0BD0100000018000000140000000000030000000E0203494D47
      04004B0000000100075355425459504502004900090047726170686963730005
      53484946540200030000000000044954454D0100490000000100055749445448
      0200020003000750524F4455544F010049000000010005574944544802000200
      64000A5155414E544944414445080004000000000005505245434F0800040000
      00000005544F54414C080004000000000007505245434F5F4108000400000000
      000C4F5243414D454E544F5F494404000100000000000C5155414E5449444144
      455F410800040000000000065354415455530100490000000100055749445448
      0200020064000C554C54494D4F5F505245434F08000400000000000D55535541
      52494F5F454D41494C010049000000010005574944544802000200C8000D454D
      41494C5F434C49454E5445010049000000010005574944544802000200C8000D
      444154415F554C54505245434F04000600000000000B4552505F50524F445554
      4F0100490000000100055749445448020002000A00084954454D4E4F564F0100
      490000000100055749445448020002000100104F5243414D454E544F4954454D
      5F4944040001000000000008494D475F4C55504104004B000000010007535542
      5459504502004900090047726170686963730008444553544151554501004900
      000001000557494454480200020001000000}
    Active = True
    Aggregates = <>
    Params = <>
    BeforeInsert = cdsItensOrcamentoBeforeInsert
    OnCalcFields = cdsItensOrcamentoCalcFields
    Left = 456
    Top = 399
    object cdsItensOrcamentoIMG: TGraphicField
      FieldName = 'IMG'
      BlobType = ftGraphic
    end
    object cdsItensOrcamentoSHIFT: TBooleanField
      FieldName = 'SHIFT'
    end
    object cdsItensOrcamentoITEM: TStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object cdsItensOrcamentoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object cdsItensOrcamentoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,###,###,###'
    end
    object cdsItensOrcamentoPRECO: TFloatField
      FieldName = 'PRECO'
      DisplayFormat = '###,###,###,###,##0.0000'
    end
    object cdsItensOrcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsItensOrcamentoPRECO_A: TFloatField
      FieldName = 'PRECO_A'
      DisplayFormat = '###,###,###,###,##0.0000'
      currency = True
    end
    object cdsItensOrcamentoTOTAL_A: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_A'
      DisplayFormat = '###,###,###,###,##0.00'
      Calculated = True
    end
    object cdsItensOrcamentoORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
    end
    object cdsItensOrcamentoQUANTIDADE_A: TFloatField
      FieldName = 'QUANTIDADE_A'
      DisplayFormat = '###,###,###,###,###'
    end
    object cdsItensOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 100
    end
    object cdsItensOrcamentoULTIMO_PRECO: TFloatField
      FieldName = 'ULTIMO_PRECO'
      DisplayFormat = '###,###,###,###,##0.0000'
    end
    object cdsItensOrcamentoUSUARIO_EMAIL: TStringField
      FieldName = 'USUARIO_EMAIL'
      Size = 200
    end
    object cdsItensOrcamentoEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 200
    end
    object cdsItensOrcamentoDATA_ULTPRECO: TDateField
      FieldName = 'DATA_ULTPRECO'
    end
    object cdsItensOrcamentoERP_PRODUTO: TStringField
      FieldName = 'ERP_PRODUTO'
      Size = 10
    end
    object cdsItensOrcamentoITEMNOVO: TStringField
      FieldName = 'ITEMNOVO'
      Size = 1
    end
    object cdsItensOrcamentoORCAMENTOITEM_ID: TIntegerField
      FieldName = 'ORCAMENTOITEM_ID'
    end
    object cdsItensOrcamentoIMG_LUPA: TGraphicField
      FieldName = 'IMG_LUPA'
      BlobType = ftGraphic
    end
    object cdsItensOrcamentoDESTAQUE: TStringField
      FieldName = 'DESTAQUE'
      Size = 1
    end
    object cdsItensOrcamentoTOTAL_ITENS: TAggregateField
      FieldName = 'TOTAL_ITENS'
      currency = True
      DisplayName = ''
    end
  end
  object qOrcamentoItem: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select'
      
        ' i.orcamento_id, i.item, i.erp_produto,i.produto, i.orcamentoite' +
        'm_id,'
      
        ' i.quantidade, i.quantidade_final, i.valor, i.valor_final, i.sub' +
        'total,'
      ' i.status, o.usuario_email, o.email_cliente, erp_codigo,'
      
        'o.cli_cpfcnpj, o.cli_ie, o.cliente, o.cli_cidade, o.cli_uf, o.cl' +
        'i_endereco,'
      
        'o.cli_tipo, o.cli_bairro, o.cli_cep, o.cli_telefone, o.entregar,' +
        ' o.obs, o.obs_privada,'
      
        'o.erp_condpagto, o.condpagto, i.alteracao_destaque, o.usuarionom' +
        'e_i,'
      'o.codigo'
      'from tborcamento_item i'
      
        'inner join tborcamento o on o.orcamento_id = i.orcamento_id and ' +
        'o.deletado = '#39'N'#39
      'where i.deletado = '#39'N'#39)
    Left = 374
    Top = 415
    object qOrcamentoItemORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBORCAMENTO_ITEM"."ORCAMENTO_ID"'
    end
    object qOrcamentoItemITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBORCAMENTO_ITEM"."ITEM"'
      Size = 3
    end
    object qOrcamentoItemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object qOrcamentoItemQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"TBORCAMENTO_ITEM"."QUANTIDADE"'
    end
    object qOrcamentoItemVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"TBORCAMENTO_ITEM"."VALOR"'
    end
    object qOrcamentoItemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = '"TBORCAMENTO_ITEM"."SUBTOTAL"'
    end
    object qOrcamentoItemQUANTIDADE_FINAL: TFloatField
      FieldName = 'QUANTIDADE_FINAL'
      Origin = '"TBORCAMENTO_ITEM"."QUANTIDADE_FINAL"'
    end
    object qOrcamentoItemVALOR_FINAL: TFloatField
      FieldName = 'VALOR_FINAL'
      Origin = '"TBORCAMENTO_ITEM"."VALOR_FINAL"'
    end
    object qOrcamentoItemSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TBORCAMENTO_ITEM"."STATUS"'
    end
    object qOrcamentoItemUSUARIO_EMAIL: TIBStringField
      FieldName = 'USUARIO_EMAIL'
      Origin = '"TBORCAMENTO"."USUARIO_EMAIL"'
      Size = 100
    end
    object qOrcamentoItemEMAIL_CLIENTE: TIBStringField
      FieldName = 'EMAIL_CLIENTE'
      Origin = '"TBORCAMENTO"."EMAIL_CLIENTE"'
      Size = 500
    end
    object qOrcamentoItemERP_PRODUTO: TIBStringField
      FieldName = 'ERP_PRODUTO'
      Origin = '"TBORCAMENTO_ITEM"."ERP_PRODUTO"'
      Size = 10
    end
    object qOrcamentoItemERP_CODIGO: TIBStringField
      FieldName = 'ERP_CODIGO'
      Origin = '"TBORCAMENTO"."ERP_CODIGO"'
      Size = 10
    end
    object qOrcamentoItemCLI_CPFCNPJ: TIBStringField
      FieldName = 'CLI_CPFCNPJ'
      Origin = '"TBORCAMENTO"."CLI_CPFCNPJ"'
      Size = 18
    end
    object qOrcamentoItemCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"TBORCAMENTO"."CLI_IE"'
      Size = 18
    end
    object qOrcamentoItemCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"TBORCAMENTO"."CLIENTE"'
      Size = 80
    end
    object qOrcamentoItemCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"TBORCAMENTO"."CLI_CIDADE"'
      Size = 40
    end
    object qOrcamentoItemCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"TBORCAMENTO"."CLI_UF"'
      Size = 2
    end
    object qOrcamentoItemCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"TBORCAMENTO"."CLI_ENDERECO"'
      Size = 80
    end
    object qOrcamentoItemCLI_TIPO: TIBStringField
      FieldName = 'CLI_TIPO'
      Origin = '"TBORCAMENTO"."CLI_TIPO"'
      Size = 30
    end
    object qOrcamentoItemCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"TBORCAMENTO"."CLI_BAIRRO"'
      Size = 40
    end
    object qOrcamentoItemCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"TBORCAMENTO"."CLI_CEP"'
      Size = 10
    end
    object qOrcamentoItemCLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
      Origin = '"TBORCAMENTO"."CLI_TELEFONE"'
      Size = 14
    end
    object qOrcamentoItemENTREGAR: TDateField
      FieldName = 'ENTREGAR'
      Origin = '"TBORCAMENTO"."ENTREGAR"'
    end
    object qOrcamentoItemOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"TBORCAMENTO"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qOrcamentoItemORCAMENTOITEM_ID: TIntegerField
      FieldName = 'ORCAMENTOITEM_ID'
      Origin = '"TBORCAMENTO_ITEM"."ORCAMENTOITEM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOrcamentoItemOBS_PRIVADA: TWideMemoField
      FieldName = 'OBS_PRIVADA'
      Origin = '"TBORCAMENTO"."OBS_PRIVADA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object qOrcamentoItemERP_CONDPAGTO: TIBStringField
      FieldName = 'ERP_CONDPAGTO'
      Origin = '"TBORCAMENTO"."ERP_CONDPAGTO"'
      Size = 10
    end
    object qOrcamentoItemCONDPAGTO: TIBStringField
      FieldName = 'CONDPAGTO'
      Origin = '"TBORCAMENTO"."CONDPAGTO"'
      Size = 30
    end
    object qOrcamentoItemALTERACAO_DESTAQUE: TIBStringField
      FieldName = 'ALTERACAO_DESTAQUE'
      Origin = '"TBORCAMENTO_ITEM"."ALTERACAO_DESTAQUE"'
      FixedChar = True
      Size = 1
    end
    object qOrcamentoItemUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBORCAMENTO"."USUARIONOME_I"'
      Size = 30
    end
    object qOrcamentoItemCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TBORCAMENTO"."CODIGO"'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsItensOrcamento
    Left = 526
    Top = 414
  end
  object qUpdate: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 670
    Top = 392
  end
  object DS_OrcamentoStatus: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TBORCAMENTO_STATUS'
      'where'
      '  ORCAMENTOSTATUS_ID = :OLD_ORCAMENTOSTATUS_ID')
    InsertSQL.Strings = (
      'insert into TBORCAMENTO_STATUS'
      
        '  (ORCAMENTOSTATUS_ID, ORCAMENTO_ID, STATUS, DATA, USUARIO_ID, U' +
        'SUARIO, '
      '   LOG, ERP_PRODUTO, PRODUTO_ID, PRODUTO)'
      'values'
      
        '  (:ORCAMENTOSTATUS_ID, :ORCAMENTO_ID, :STATUS, :DATA, :USUARIO_' +
        'ID, :USUARIO, '
      '   :LOG, :ERP_PRODUTO, :PRODUTO_ID, :PRODUTO)')
    RefreshSQL.Strings = (
      'Select '
      '  ORCAMENTOSTATUS_ID,'
      '  ORCAMENTO_ID,'
      '  STATUS,'
      '  DATA,'
      '  USUARIO_ID,'
      '  USUARIO,'
      '  LOG,'
      '  ERP_PRODUTO,'
      '  PRODUTO_ID,'
      '  PRODUTO'
      'from TBORCAMENTO_STATUS '
      'where'
      '  ORCAMENTOSTATUS_ID = :ORCAMENTOSTATUS_ID')
    SelectSQL.Strings = (
      'select * from TBORCAMENTO_STATUS')
    ModifySQL.Strings = (
      'update TBORCAMENTO_STATUS'
      'set'
      '  ORCAMENTOSTATUS_ID = :ORCAMENTOSTATUS_ID,'
      '  ORCAMENTO_ID = :ORCAMENTO_ID,'
      '  STATUS = :STATUS,'
      '  DATA = :DATA,'
      '  USUARIO_ID = :USUARIO_ID,'
      '  USUARIO = :USUARIO,'
      '  LOG = :LOG,'
      '  ERP_PRODUTO = :ERP_PRODUTO,'
      '  PRODUTO_ID = :PRODUTO_ID,'
      '  PRODUTO = :PRODUTO'
      'where'
      '  ORCAMENTOSTATUS_ID = :OLD_ORCAMENTOSTATUS_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ORCAMENTOSTATUS_ID'
    GeneratorField.Generator = 'GEN_TBORCAMENTO_STATUS'
    Left = 817
    Top = 535
    object DS_OrcamentoStatusORCAMENTOSTATUS_ID: TIntegerField
      FieldName = 'ORCAMENTOSTATUS_ID'
      Origin = '"TBORCAMENTO_STATUS"."ORCAMENTOSTATUS_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_OrcamentoStatusORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBORCAMENTO_STATUS"."ORCAMENTO_ID"'
    end
    object DS_OrcamentoStatusSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TBORCAMENTO_STATUS"."STATUS"'
      Size = 30
    end
    object DS_OrcamentoStatusLOG: TIBStringField
      FieldName = 'LOG'
      Origin = '"TBORCAMENTO_STATUS"."LOG"'
      Size = 2000
    end
    object DS_OrcamentoStatusDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"TBORCAMENTO_STATUS"."DATA"'
    end
    object DS_OrcamentoStatusUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBORCAMENTO_STATUS"."USUARIO_ID"'
    end
    object DS_OrcamentoStatusUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"TBORCAMENTO_STATUS"."USUARIO"'
      Size = 30
    end
    object DS_OrcamentoStatusERP_PRODUTO: TIBStringField
      FieldName = 'ERP_PRODUTO'
      Origin = '"TBORCAMENTO_STATUS"."ERP_PRODUTO"'
      Size = 10
    end
    object DS_OrcamentoStatusPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = '"TBORCAMENTO_STATUS"."PRODUTO_ID"'
    end
    object DS_OrcamentoStatusPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"TBORCAMENTO_STATUS"."PRODUTO"'
      Size = 80
    end
  end
  object DS_Pedido: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TBONLINE_PEDIDO'
      'where'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    InsertSQL.Strings = (
      'insert into TBONLINE_PEDIDO'
      
        '  (PEDIDO_ID, PEDIDO_NUM, ORCAMENTO_ID, EMISSAO, VALIDADE, HORA,' +
        ' VR_CONTABIL, '
      
        '   PESSOA_ID, ERP_CODIGO, CLI_NOME, CLI_ENDERECO, CLI_BAIRRO, CL' +
        'I_CIDADE, '
      
        '   CLI_UF, CLI_CEP, CLI_CPFCNPJ, CLI_RGCGF, CLI_TELEFONE, CLI_TI' +
        'PO, USUARIO_ID, '
      
        '   PROCESSO, EMPENHO, OBS, ENT_NOME, ENT_ENDERECO, ENT_BAIRRO, E' +
        'NT_CIDADE, '
      
        '   ENT_UF, ENT_CEP, ENT_TELEFONE, ERP_CONDPAGTO, CONDPAGTO_ID, C' +
        'ONDPAGTO, '
      
        '   MEIOPAGTO, IMPRESSO, SITUACAO, DATA_SITUACAO, HPRINT, DATA_IN' +
        'C, USUARIO_I, '
      
        '   USUARIONOME_I, DATA_ALT, USUARIO_A, USUARIONOME_A, DATA_DEL, ' +
        'USUARIO_D, '
      
        '   USUARIONOME_D, ERP_REPRESENTANTE, ERP_REPRESENTANTE_NOME, ERP' +
        '_VENDEDOR, '
      '   ERP_VENDEDOR_NOME)'
      'values'
      
        '  (:PEDIDO_ID, :PEDIDO_NUM, :ORCAMENTO_ID, :EMISSAO, :VALIDADE, ' +
        ':HORA, '
      
        '   :VR_CONTABIL, :PESSOA_ID, :ERP_CODIGO, :CLI_NOME, :CLI_ENDERE' +
        'CO, :CLI_BAIRRO, '
      
        '   :CLI_CIDADE, :CLI_UF, :CLI_CEP, :CLI_CPFCNPJ, :CLI_RGCGF, :CL' +
        'I_TELEFONE, '
      
        '   :CLI_TIPO, :USUARIO_ID, :PROCESSO, :EMPENHO, :OBS, :ENT_NOME,' +
        ' :ENT_ENDERECO, '
      
        '   :ENT_BAIRRO, :ENT_CIDADE, :ENT_UF, :ENT_CEP, :ENT_TELEFONE, :' +
        'ERP_CONDPAGTO, '
      
        '   :CONDPAGTO_ID, :CONDPAGTO, :MEIOPAGTO, :IMPRESSO, :SITUACAO, ' +
        ':DATA_SITUACAO, '
      
        '   :HPRINT, :DATA_INC, :USUARIO_I, :USUARIONOME_I, :DATA_ALT, :U' +
        'SUARIO_A, '
      
        '   :USUARIONOME_A, :DATA_DEL, :USUARIO_D, :USUARIONOME_D, :ERP_R' +
        'EPRESENTANTE, '
      '   :ERP_REPRESENTANTE_NOME, :ERP_VENDEDOR, :ERP_VENDEDOR_NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  PEDIDO_ID,'
      '  PEDIDO_NUM,'
      '  ORCAMENTO_ID,'
      '  EMISSAO,'
      '  VALIDADE,'
      '  HORA,'
      '  VR_CONTABIL,'
      '  PESSOA_ID,'
      '  ERP_CODIGO,'
      '  CLI_NOME,'
      '  CLI_ENDERECO,'
      '  CLI_BAIRRO,'
      '  CLI_CIDADE,'
      '  CLI_UF,'
      '  CLI_CEP,'
      '  CLI_CPFCNPJ,'
      '  CLI_RGCGF,'
      '  CLI_TELEFONE,'
      '  CLI_TIPO,'
      '  USUARIO_ID,'
      '  PROCESSO,'
      '  EMPENHO,'
      '  OBS,'
      '  ENT_NOME,'
      '  ENT_ENDERECO,'
      '  ENT_BAIRRO,'
      '  ENT_CIDADE,'
      '  ENT_UF,'
      '  ENT_CEP,'
      '  ENT_TELEFONE,'
      '  ERP_CONDPAGTO,'
      '  CONDPAGTO_ID,'
      '  CONDPAGTO,'
      '  MEIOPAGTO,'
      '  IMPRESSO,'
      '  SITUACAO,'
      '  DATA_SITUACAO,'
      '  HPRINT,'
      '  DATA_INC,'
      '  USUARIO_I,'
      '  USUARIONOME_I,'
      '  DATA_ALT,'
      '  USUARIO_A,'
      '  USUARIONOME_A,'
      '  DATA_DEL,'
      '  USUARIO_D,'
      '  USUARIONOME_D,'
      '  ERP_REPRESENTANTE,'
      '  ERP_REPRESENTANTE_NOME,'
      '  ERP_VENDEDOR,'
      '  ERP_VENDEDOR_NOME'
      'from TBONLINE_PEDIDO '
      'where'
      '  PEDIDO_ID = :PEDIDO_ID')
    SelectSQL.Strings = (
      'select * from TBONLINE_PEDIDO')
    ModifySQL.Strings = (
      'update TBONLINE_PEDIDO'
      'set'
      '  PEDIDO_ID = :PEDIDO_ID,'
      '  PEDIDO_NUM = :PEDIDO_NUM,'
      '  ORCAMENTO_ID = :ORCAMENTO_ID,'
      '  EMISSAO = :EMISSAO,'
      '  VALIDADE = :VALIDADE,'
      '  HORA = :HORA,'
      '  VR_CONTABIL = :VR_CONTABIL,'
      '  PESSOA_ID = :PESSOA_ID,'
      '  ERP_CODIGO = :ERP_CODIGO,'
      '  CLI_NOME = :CLI_NOME,'
      '  CLI_ENDERECO = :CLI_ENDERECO,'
      '  CLI_BAIRRO = :CLI_BAIRRO,'
      '  CLI_CIDADE = :CLI_CIDADE,'
      '  CLI_UF = :CLI_UF,'
      '  CLI_CEP = :CLI_CEP,'
      '  CLI_CPFCNPJ = :CLI_CPFCNPJ,'
      '  CLI_RGCGF = :CLI_RGCGF,'
      '  CLI_TELEFONE = :CLI_TELEFONE,'
      '  CLI_TIPO = :CLI_TIPO,'
      '  USUARIO_ID = :USUARIO_ID,'
      '  PROCESSO = :PROCESSO,'
      '  EMPENHO = :EMPENHO,'
      '  OBS = :OBS,'
      '  ENT_NOME = :ENT_NOME,'
      '  ENT_ENDERECO = :ENT_ENDERECO,'
      '  ENT_BAIRRO = :ENT_BAIRRO,'
      '  ENT_CIDADE = :ENT_CIDADE,'
      '  ENT_UF = :ENT_UF,'
      '  ENT_CEP = :ENT_CEP,'
      '  ENT_TELEFONE = :ENT_TELEFONE,'
      '  ERP_CONDPAGTO = :ERP_CONDPAGTO,'
      '  CONDPAGTO_ID = :CONDPAGTO_ID,'
      '  CONDPAGTO = :CONDPAGTO,'
      '  MEIOPAGTO = :MEIOPAGTO,'
      '  IMPRESSO = :IMPRESSO,'
      '  SITUACAO = :SITUACAO,'
      '  DATA_SITUACAO = :DATA_SITUACAO,'
      '  HPRINT = :HPRINT,'
      '  DATA_INC = :DATA_INC,'
      '  USUARIO_I = :USUARIO_I,'
      '  USUARIONOME_I = :USUARIONOME_I,'
      '  DATA_ALT = :DATA_ALT,'
      '  USUARIO_A = :USUARIO_A,'
      '  USUARIONOME_A = :USUARIONOME_A,'
      '  DATA_DEL = :DATA_DEL,'
      '  USUARIO_D = :USUARIO_D,'
      '  USUARIONOME_D = :USUARIONOME_D,'
      '  ERP_REPRESENTANTE = :ERP_REPRESENTANTE,'
      '  ERP_REPRESENTANTE_NOME = :ERP_REPRESENTANTE_NOME,'
      '  ERP_VENDEDOR = :ERP_VENDEDOR,'
      '  ERP_VENDEDOR_NOME = :ERP_VENDEDOR_NOME'
      'where'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PEDIDO_ID'
    GeneratorField.Generator = 'GEN_TBONLINE_PEDIDO'
    Left = 878
    Top = 381
    object DS_PedidoPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBONLINE_PEDIDO"."PEDIDO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_PedidoPEDIDO_NUM: TIBStringField
      FieldName = 'PEDIDO_NUM'
      Origin = '"TBONLINE_PEDIDO"."PEDIDO_NUM"'
      Size = 10
    end
    object DS_PedidoORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBONLINE_PEDIDO"."ORCAMENTO_ID"'
    end
    object DS_PedidoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"TBONLINE_PEDIDO"."EMISSAO"'
    end
    object DS_PedidoVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = '"TBONLINE_PEDIDO"."VALIDADE"'
    end
    object DS_PedidoHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"TBONLINE_PEDIDO"."HORA"'
    end
    object DS_PedidoVR_CONTABIL: TFloatField
      FieldName = 'VR_CONTABIL'
      Origin = '"TBONLINE_PEDIDO"."VR_CONTABIL"'
    end
    object DS_PedidoPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Origin = '"TBONLINE_PEDIDO"."PESSOA_ID"'
    end
    object DS_PedidoERP_CODIGO: TIBStringField
      FieldName = 'ERP_CODIGO'
      Origin = '"TBONLINE_PEDIDO"."ERP_CODIGO"'
      Size = 10
    end
    object DS_PedidoCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"TBONLINE_PEDIDO"."CLI_NOME"'
      Size = 60
    end
    object DS_PedidoCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"TBONLINE_PEDIDO"."CLI_ENDERECO"'
      Size = 60
    end
    object DS_PedidoCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"TBONLINE_PEDIDO"."CLI_BAIRRO"'
      Size = 30
    end
    object DS_PedidoCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"TBONLINE_PEDIDO"."CLI_CIDADE"'
      Size = 30
    end
    object DS_PedidoCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"TBONLINE_PEDIDO"."CLI_UF"'
      Size = 2
    end
    object DS_PedidoCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"TBONLINE_PEDIDO"."CLI_CEP"'
      Size = 10
    end
    object DS_PedidoCLI_CPFCNPJ: TIBStringField
      FieldName = 'CLI_CPFCNPJ'
      Origin = '"TBONLINE_PEDIDO"."CLI_CPFCNPJ"'
    end
    object DS_PedidoCLI_RGCGF: TIBStringField
      FieldName = 'CLI_RGCGF'
      Origin = '"TBONLINE_PEDIDO"."CLI_RGCGF"'
    end
    object DS_PedidoCLI_TELEFONE: TIBStringField
      FieldName = 'CLI_TELEFONE'
      Origin = '"TBONLINE_PEDIDO"."CLI_TELEFONE"'
    end
    object DS_PedidoCLI_TIPO: TIBStringField
      FieldName = 'CLI_TIPO'
      Origin = '"TBONLINE_PEDIDO"."CLI_TIPO"'
      Size = 30
    end
    object DS_PedidoUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBONLINE_PEDIDO"."USUARIO_ID"'
    end
    object DS_PedidoPROCESSO: TIBStringField
      FieldName = 'PROCESSO'
      Origin = '"TBONLINE_PEDIDO"."PROCESSO"'
      Size = 100
    end
    object DS_PedidoEMPENHO: TIBStringField
      FieldName = 'EMPENHO'
      Origin = '"TBONLINE_PEDIDO"."EMPENHO"'
      Size = 100
    end
    object DS_PedidoOBS: TWideMemoField
      FieldName = 'OBS'
      Origin = '"TBONLINE_PEDIDO"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object DS_PedidoENT_NOME: TIBStringField
      FieldName = 'ENT_NOME'
      Origin = '"TBONLINE_PEDIDO"."ENT_NOME"'
      Size = 60
    end
    object DS_PedidoENT_ENDERECO: TIBStringField
      FieldName = 'ENT_ENDERECO'
      Origin = '"TBONLINE_PEDIDO"."ENT_ENDERECO"'
      Size = 60
    end
    object DS_PedidoENT_BAIRRO: TIBStringField
      FieldName = 'ENT_BAIRRO'
      Origin = '"TBONLINE_PEDIDO"."ENT_BAIRRO"'
      Size = 30
    end
    object DS_PedidoENT_CIDADE: TIBStringField
      FieldName = 'ENT_CIDADE'
      Origin = '"TBONLINE_PEDIDO"."ENT_CIDADE"'
      Size = 30
    end
    object DS_PedidoENT_UF: TIBStringField
      FieldName = 'ENT_UF'
      Origin = '"TBONLINE_PEDIDO"."ENT_UF"'
      FixedChar = True
      Size = 2
    end
    object DS_PedidoENT_CEP: TIBStringField
      FieldName = 'ENT_CEP'
      Origin = '"TBONLINE_PEDIDO"."ENT_CEP"'
      Size = 10
    end
    object DS_PedidoENT_TELEFONE: TIBStringField
      FieldName = 'ENT_TELEFONE'
      Origin = '"TBONLINE_PEDIDO"."ENT_TELEFONE"'
    end
    object DS_PedidoERP_CONDPAGTO: TIntegerField
      FieldName = 'ERP_CONDPAGTO'
      Origin = '"TBONLINE_PEDIDO"."ERP_CONDPAGTO"'
    end
    object DS_PedidoCONDPAGTO_ID: TIntegerField
      FieldName = 'CONDPAGTO_ID'
      Origin = '"TBONLINE_PEDIDO"."CONDPAGTO_ID"'
    end
    object DS_PedidoCONDPAGTO: TIBStringField
      FieldName = 'CONDPAGTO'
      Origin = '"TBONLINE_PEDIDO"."CONDPAGTO"'
      Size = 30
    end
    object DS_PedidoMEIOPAGTO: TIBStringField
      FieldName = 'MEIOPAGTO'
      Origin = '"TBONLINE_PEDIDO"."MEIOPAGTO"'
      Size = 30
    end
    object DS_PedidoIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = '"TBONLINE_PEDIDO"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object DS_PedidoSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"TBONLINE_PEDIDO"."SITUACAO"'
      Size = 30
    end
    object DS_PedidoDATA_SITUACAO: TDateField
      FieldName = 'DATA_SITUACAO'
      Origin = '"TBONLINE_PEDIDO"."DATA_SITUACAO"'
    end
    object DS_PedidoHPRINT: TTimeField
      FieldName = 'HPRINT'
      Origin = '"TBONLINE_PEDIDO"."HPRINT"'
    end
    object DS_PedidoDATA_INC: TTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBONLINE_PEDIDO"."DATA_INC"'
    end
    object DS_PedidoUSUARIO_I: TIntegerField
      FieldName = 'USUARIO_I'
      Origin = '"TBONLINE_PEDIDO"."USUARIO_I"'
    end
    object DS_PedidoUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBONLINE_PEDIDO"."USUARIONOME_I"'
      Size = 30
    end
    object DS_PedidoDATA_ALT: TTimeField
      FieldName = 'DATA_ALT'
      Origin = '"TBONLINE_PEDIDO"."DATA_ALT"'
    end
    object DS_PedidoUSUARIO_A: TIntegerField
      FieldName = 'USUARIO_A'
      Origin = '"TBONLINE_PEDIDO"."USUARIO_A"'
    end
    object DS_PedidoUSUARIONOME_A: TIBStringField
      FieldName = 'USUARIONOME_A'
      Origin = '"TBONLINE_PEDIDO"."USUARIONOME_A"'
      Size = 30
    end
    object DS_PedidoDATA_DEL: TTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBONLINE_PEDIDO"."DATA_DEL"'
    end
    object DS_PedidoUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBONLINE_PEDIDO"."USUARIO_D"'
    end
    object DS_PedidoUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBONLINE_PEDIDO"."USUARIONOME_D"'
      Size = 30
    end
    object DS_PedidoERP_REPRESENTANTE: TIBStringField
      FieldName = 'ERP_REPRESENTANTE'
      Origin = '"TBONLINE_PEDIDO"."ERP_REPRESENTANTE"'
      Size = 10
    end
    object DS_PedidoERP_REPRESENTANTE_NOME: TIBStringField
      FieldName = 'ERP_REPRESENTANTE_NOME'
      Origin = '"TBONLINE_PEDIDO"."ERP_REPRESENTANTE_NOME"'
      Size = 80
    end
    object DS_PedidoERP_VENDEDOR: TIBStringField
      FieldName = 'ERP_VENDEDOR'
      Origin = '"TBONLINE_PEDIDO"."ERP_VENDEDOR"'
      Size = 10
    end
    object DS_PedidoERP_VENDEDOR_NOME: TIBStringField
      FieldName = 'ERP_VENDEDOR_NOME'
      Origin = '"TBONLINE_PEDIDO"."ERP_VENDEDOR_NOME"'
      Size = 80
    end
  end
  object qAuxiliar: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from tborcamento')
    Left = 910
    Top = 318
  end
  object DS_PedidoItem: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TBONLINE_PEDIDO_ITEM'
      'where'
      '  PEDIDOITEM_ID = :OLD_PEDIDOITEM_ID')
    InsertSQL.Strings = (
      'insert into TBONLINE_PEDIDO_ITEM'
      
        '  (PEDIDOITEM_ID, PEDIDO_ID, PRODUTO_ID, ORCAMENTO_ID, ORCAMENTO' +
        'ITEM_ID, '
      
        '   ITEM, ERP_PRODUTO, PRODUTO, QUANTIDADE, PRECO, DATA, SUBTOTAL' +
        ', PESSOA_ID, '
      
        '   USUARIO_ID, ERP_REPRESENTANTE, ERP_REPRESENTANTE_NOME, ERP_VE' +
        'NDEDOR, '
      '   ERP_VENDEDOR_NOME)'
      'values'
      
        '  (:PEDIDOITEM_ID, :PEDIDO_ID, :PRODUTO_ID, :ORCAMENTO_ID, :ORCA' +
        'MENTOITEM_ID, '
      
        '   :ITEM, :ERP_PRODUTO, :PRODUTO, :QUANTIDADE, :PRECO, :DATA, :S' +
        'UBTOTAL, '
      
        '   :PESSOA_ID, :USUARIO_ID, :ERP_REPRESENTANTE, :ERP_REPRESENTAN' +
        'TE_NOME, '
      '   :ERP_VENDEDOR, :ERP_VENDEDOR_NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  PEDIDOITEM_ID,'
      '  PEDIDO_ID,'
      '  PRODUTO_ID,'
      '  ORCAMENTO_ID,'
      '  ORCAMENTOITEM_ID,'
      '  ITEM,'
      '  ERP_PRODUTO,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  PRECO,'
      '  DATA,'
      '  SUBTOTAL,'
      '  PESSOA_ID,'
      '  USUARIO_ID,'
      '  ERP_REPRESENTANTE,'
      '  ERP_REPRESENTANTE_NOME,'
      '  ERP_VENDEDOR,'
      '  ERP_VENDEDOR_NOME'
      'from TBONLINE_PEDIDO_ITEM '
      'where'
      '  PEDIDOITEM_ID = :PEDIDOITEM_ID')
    SelectSQL.Strings = (
      'select * from TBONLINE_PEDIDO_ITEM')
    ModifySQL.Strings = (
      'update TBONLINE_PEDIDO_ITEM'
      'set'
      '  PEDIDOITEM_ID = :PEDIDOITEM_ID,'
      '  PEDIDO_ID = :PEDIDO_ID,'
      '  PRODUTO_ID = :PRODUTO_ID,'
      '  ORCAMENTO_ID = :ORCAMENTO_ID,'
      '  ORCAMENTOITEM_ID = :ORCAMENTOITEM_ID,'
      '  ITEM = :ITEM,'
      '  ERP_PRODUTO = :ERP_PRODUTO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRECO = :PRECO,'
      '  DATA = :DATA,'
      '  SUBTOTAL = :SUBTOTAL,'
      '  PESSOA_ID = :PESSOA_ID,'
      '  USUARIO_ID = :USUARIO_ID,'
      '  ERP_REPRESENTANTE = :ERP_REPRESENTANTE,'
      '  ERP_REPRESENTANTE_NOME = :ERP_REPRESENTANTE_NOME,'
      '  ERP_VENDEDOR = :ERP_VENDEDOR,'
      '  ERP_VENDEDOR_NOME = :ERP_VENDEDOR_NOME'
      'where'
      '  PEDIDOITEM_ID = :OLD_PEDIDOITEM_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PEDIDOITEM_ID'
    GeneratorField.Generator = 'GEN_TBONLINE_PEDIDO_ITEM'
    Left = 838
    Top = 320
    object DS_PedidoItemPEDIDOITEM_ID: TIntegerField
      FieldName = 'PEDIDOITEM_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."PEDIDOITEM_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_PedidoItemPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."PEDIDO_ID"'
    end
    object DS_PedidoItemPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."PRODUTO_ID"'
    end
    object DS_PedidoItemORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ORCAMENTO_ID"'
    end
    object DS_PedidoItemORCAMENTOITEM_ID: TIntegerField
      FieldName = 'ORCAMENTOITEM_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ORCAMENTOITEM_ID"'
    end
    object DS_PedidoItemITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ITEM"'
      Size = 3
    end
    object DS_PedidoItemERP_PRODUTO: TIntegerField
      FieldName = 'ERP_PRODUTO'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ERP_PRODUTO"'
    end
    object DS_PedidoItemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"TBONLINE_PEDIDO_ITEM"."PRODUTO"'
      Size = 100
    end
    object DS_PedidoItemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"TBONLINE_PEDIDO_ITEM"."QUANTIDADE"'
    end
    object DS_PedidoItemPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = '"TBONLINE_PEDIDO_ITEM"."PRECO"'
    end
    object DS_PedidoItemDATA: TDateField
      FieldName = 'DATA'
      Origin = '"TBONLINE_PEDIDO_ITEM"."DATA"'
    end
    object DS_PedidoItemSUBTOTAL: TIBBCDField
      FieldName = 'SUBTOTAL'
      Origin = '"TBONLINE_PEDIDO_ITEM"."SUBTOTAL"'
      Precision = 18
      Size = 2
    end
    object DS_PedidoItemPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."PESSOA_ID"'
    end
    object DS_PedidoItemUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBONLINE_PEDIDO_ITEM"."USUARIO_ID"'
    end
    object DS_PedidoItemERP_REPRESENTANTE: TIBStringField
      FieldName = 'ERP_REPRESENTANTE'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ERP_REPRESENTANTE"'
      Size = 10
    end
    object DS_PedidoItemERP_REPRESENTANTE_NOME: TIBStringField
      FieldName = 'ERP_REPRESENTANTE_NOME'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ERP_REPRESENTANTE_NOME"'
      Size = 80
    end
    object DS_PedidoItemERP_VENDEDOR: TIBStringField
      FieldName = 'ERP_VENDEDOR'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ERP_VENDEDOR"'
      Size = 10
    end
    object DS_PedidoItemERP_VENDEDOR_NOME: TIBStringField
      FieldName = 'ERP_VENDEDOR_NOME'
      Origin = '"TBONLINE_PEDIDO_ITEM"."ERP_VENDEDOR_NOME"'
      Size = 80
    end
  end
  object DataSource_OrcamentoItem: TDataSource
    DataSet = qOrcamentoItem
    Left = 223
    Top = 408
  end
  object UniImageList1: TUniImageList
    Left = 726
    Top = 545
    Bitmap = {
      494C010103000500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
  object InsereNovoPreco: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 605
    Top = 400
  end
  object InserirItem: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 130
    Top = 485
  end
  object UpdateItem: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 254
    Top = 586
  end
  object Parametro: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 398
    Top = 586
  end
end
