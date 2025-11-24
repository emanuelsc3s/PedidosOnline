object Form_Busca_Doc: TForm_Busca_Doc
  Left = 0
  Top = 0
  ClientHeight = 368
  ClientWidth = 859
  Caption = 'Consulta de Documentos'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 71
    Width = 843
    Height = 242
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Carregando Dados...'
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnCellClick = UniDBGrid1CellClick
    Columns = <
      item
        FieldName = 'EXCLUIR'
        Title.Caption = '...'
        Width = 32
        CheckBoxField.Enabled = False
        ImageOptions.Visible = True
      end
      item
        FieldName = 'VISUALIZAR'
        Title.Caption = '...'
        Width = 32
        CheckBoxField.Enabled = False
        ImageOptions.Visible = True
      end
      item
        FieldName = 'ITEM'
        Title.Caption = 'Item'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 56
        Font.Color = 12287488
      end
      item
        FieldName = 'DELETADO'
        Title.Caption = 'Status'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 88
        Font.Color = 12287488
      end
      item
        FieldName = 'NOME_ARQUIVO'
        Title.Caption = 'Nome do Arquivo'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 318
        Font.Color = 12287488
      end
      item
        FieldName = 'IMG'
        Title.Alignment = taCenter
        Title.Caption = '...'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 32
        Font.Color = 12287488
      end
      item
        FieldName = 'TAMANHO'
        Title.Caption = 'Tamanho'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 77
        Font.Color = 12287488
      end
      item
        FieldName = 'DATA_INC'
        Title.Caption = 'Inclus'#227'o'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 150
        Font.Color = 12287488
      end
      item
        FieldName = 'DATA_DEL'
        Title.Caption = 'Deletado em:'
        Title.Font.Color = 12287488
        Title.Font.Name = 'Verdana'
        Width = 150
        Font.Color = 12287488
      end>
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 320
    Width = 859
    Height = 48
    Hint = ''
    Align = alBottom
    ParentFont = False
    Font.Color = 9856100
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    TabOrder = 1
    Alignment = taRightJustify
    Caption = ''
    object btn_Consultar: TUniButton
      Left = 8
      Top = 13
      Width = 100
      Height = 25
      Hint = ''
      Caption = '<i class="fa fa-file"></i>  Inserir'
      ParentFont = False
      Font.Color = clWhite
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_ConsultarClick
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 65
    Hint = ''
    Align = alTop
    TabOrder = 2
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
      Width = 174
      Height = 21
      Hint = ''
      Caption = 'Consulta de Documentos'
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
      Width = 274
      Height = 13
      Hint = ''
      Caption = 'Permite Visualizar, Inserir e Excluir Arquivos Anexados'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Name = 'Segoe UI'
      TabOrder = 3
    end
  end
  object DS_DOC: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    OnCalcFields = DS_DOCCalcFields
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
        'O, USUARIO_D, '
      
        '   USUARIONOME_D, DATA_DEL, DATAWARE, DOCUMENTO, ORCAMENTO_CODIG' +
        'O, ORCAMENTO_ID)'
      'values'
      
        '  (:DOC_ID, :PEDIDO_ID, :PEDIDO_CODIGO, :NOME_ARQUIVO, :TAMANHO,' +
        ' :EXTENSAO, '
      
        '   :ITEM, :CAMINHO, :USUARIO_I, :USUARIONOME_I, :DATA_INC, :DELE' +
        'TADO, :ARQUIVO, '
      
        '   :USUARIO_D, :USUARIONOME_D, :DATA_DEL, :DATAWARE, :DOCUMENTO,' +
        ' :ORCAMENTO_CODIGO, '
      '   :ORCAMENTO_ID)')
    RefreshSQL.Strings = (
      'Select *'
      'from tbdoc '
      'where'
      '  DOC_ID = :DOC_ID')
    SelectSQL.Strings = (
      'select doc_id, pedido_id, pedido_codigo, nome_arquivo, tamanho,'
      '  extensao, item, caminho, usuario_i, usuarionome_i, data_inc,'
      
        '  deletado, arquivo, usuario_d, usuarionome_d, data_del, datawar' +
        'e, '
      ' documento, orcamento_codigo, orcamento_id'
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
      '  USUARIO_D = :USUARIO_D,'
      '  USUARIONOME_D = :USUARIONOME_D,'
      '  DATA_DEL = :DATA_DEL,'
      '  DATAWARE = :DATAWARE,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  ORCAMENTO_CODIGO = :ORCAMENTO_CODIGO,'
      '  ORCAMENTO_ID = :ORCAMENTO_ID'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'DOC_ID'
    GeneratorField.Generator = 'GEN_TBDOC'
    Left = 392
    Top = 64
    object DS_DOCDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = '"TBDOC"."DOC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_DOCPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBDOC"."PEDIDO_ID"'
    end
    object DS_DOCPEDIDO_CODIGO: TIBStringField
      FieldName = 'PEDIDO_CODIGO'
      Origin = '"TBDOC"."PEDIDO_CODIGO"'
    end
    object DS_DOCNOME_ARQUIVO: TIBStringField
      FieldName = 'NOME_ARQUIVO'
      Origin = '"TBDOC"."NOME_ARQUIVO"'
      Size = 60
    end
    object DS_DOCTAMANHO: TIntegerField
      FieldName = 'TAMANHO'
      Origin = '"TBDOC"."TAMANHO"'
    end
    object DS_DOCEXTENSAO: TIBStringField
      FieldName = 'EXTENSAO'
      Origin = '"TBDOC"."EXTENSAO"'
      Size = 10
    end
    object DS_DOCITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = '"TBDOC"."ITEM"'
      Size = 3
    end
    object DS_DOCCAMINHO: TIBStringField
      FieldName = 'CAMINHO'
      Origin = '"TBDOC"."CAMINHO"'
      Size = 255
    end
    object DS_DOCUSUARIO_I: TIntegerField
      FieldName = 'USUARIO_I'
      Origin = '"TBDOC"."USUARIO_I"'
    end
    object DS_DOCUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBDOC"."USUARIONOME_I"'
      Size = 30
    end
    object DS_DOCDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBDOC"."DATA_INC"'
    end
    object DS_DOCDELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBDOC"."DELETADO"'
      OnGetText = DS_DOCDELETADOGetText
      FixedChar = True
      Size = 1
    end
    object DS_DOCARQUIVO: TBlobField
      FieldName = 'ARQUIVO'
      Origin = '"TBDOC"."ARQUIVO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object DS_DOCUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBDOC"."USUARIO_D"'
    end
    object DS_DOCUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBDOC"."USUARIONOME_D"'
      Size = 30
    end
    object DS_DOCDATA_DEL: TDateTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBDOC"."DATA_DEL"'
    end
    object DS_DOCEXCLUIR: TStringField
      FieldKind = fkCalculated
      FieldName = 'EXCLUIR'
      Size = 1000
      Calculated = True
    end
    object DS_DOCVISUALIZAR: TStringField
      FieldKind = fkCalculated
      FieldName = 'VISUALIZAR'
      Size = 1000
      Calculated = True
    end
    object DS_DOCDATAWARE: TIBStringField
      FieldName = 'DATAWARE'
      Origin = '"TBDOC"."DATAWARE"'
      Size = 2
    end
    object DS_DOCIMG: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'IMG'
      Size = 1000
      Calculated = True
    end
    object DS_DOCDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"TBDOC"."DOCUMENTO"'
      Size = 200
    end
    object DS_DOCORCAMENTO_CODIGO: TIBStringField
      FieldName = 'ORCAMENTO_CODIGO'
      Origin = '"TBDOC"."ORCAMENTO_CODIGO"'
    end
    object DS_DOCORCAMENTO_ID: TIntegerField
      FieldName = 'ORCAMENTO_ID'
      Origin = '"TBDOC"."ORCAMENTO_ID"'
    end
  end
  object DataSource1: TDataSource
    DataSet = DS_DOC
    Left = 392
    Top = 120
  end
  object UniFileUpload1: TUniFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Enviando...'
    Messages.PleaseWait = 'Aguarde, enviando...'
    Messages.Cancel = 'Cancelar'
    Messages.Processing = 'Processando...'
    Messages.UploadError = 'Erro ao Enviar...'
    Messages.Upload = 'Enviar'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Procurar...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    OnCompleted = UniFileUpload1Completed
    Left = 56
    Top = 96
  end
end
