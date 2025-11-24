object Form_Busca_CondPagto: TForm_Busca_CondPagto
  Left = 0
  Top = 0
  ClientHeight = 361
  ClientWidth = 684
  Caption = 'Condi'#231#245'es de Pagamento'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMaximize]
  KeyPreview = True
  MonitoredKeys.Keys = <>
  FreeOnClose = False
  Font.Name = 'Verdana'
  DesignSize = (
    684
    361)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 90
    Width = 668
    Height = 263
    Hint = ''
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'ERP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 68
        Font.Name = 'Verdana'
      end
      item
        FieldName = 'CONDICAO_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 564
        Font.Name = 'Verdana'
      end>
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 41
    Width = 159
    Height = 13
    Hint = ''
    Caption = 'Pesquisando por: Descri'#231#227'o'
    TabOrder = 1
  end
  object Edit_Pesq: TUniEdit
    Left = 8
    Top = 60
    Width = 377
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
    Width = 684
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
    Caption = 'Condi'#231#245'es de Pagamento    '
  end
  object DataSource1: TDataSource
    DataSet = QR_CONDPAGTO
    Left = 456
    Top = 16
  end
  object QR_CONDPAGTO: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TBCONDPAGTO')
    Left = 552
    Top = 40
    object QR_CONDPAGTOCONDPAGTO_ID: TIntegerField
      FieldName = 'CONDPAGTO_ID'
      Origin = '"TBCONDPAGTO"."CONDPAGTO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_CONDPAGTOERP_CODIGO: TIBStringField
      FieldName = 'ERP_CODIGO'
      Origin = '"TBCONDPAGTO"."ERP_CODIGO"'
      Size = 10
    end
    object QR_CONDPAGTOCONDICAO: TIBStringField
      FieldName = 'CONDICAO'
      Origin = '"TBCONDPAGTO"."CONDICAO"'
      Size = 40
    end
    object QR_CONDPAGTOCONDICAO_DESCRICAO: TIBStringField
      FieldName = 'CONDICAO_DESCRICAO'
      Origin = '"TBCONDPAGTO"."CONDICAO_DESCRICAO"'
      Size = 30
    end
    object QR_CONDPAGTODATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBCONDPAGTO"."DATA_INC"'
    end
    object QR_CONDPAGTOUSAURIO_I: TIntegerField
      FieldName = 'USAURIO_I'
      Origin = '"TBCONDPAGTO"."USAURIO_I"'
    end
    object QR_CONDPAGTOUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBCONDPAGTO"."USUARIONOME_I"'
      Size = 30
    end
    object QR_CONDPAGTODATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Origin = '"TBCONDPAGTO"."DATA_ALT"'
    end
    object QR_CONDPAGTOUSUARIO_A: TIntegerField
      FieldName = 'USUARIO_A'
      Origin = '"TBCONDPAGTO"."USUARIO_A"'
    end
    object QR_CONDPAGTOUSUARIONOME_A: TIBStringField
      FieldName = 'USUARIONOME_A'
      Origin = '"TBCONDPAGTO"."USUARIONOME_A"'
      Size = 30
    end
    object QR_CONDPAGTODATA_DEL: TDateTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBCONDPAGTO"."DATA_DEL"'
    end
    object QR_CONDPAGTOUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBCONDPAGTO"."USUARIO_D"'
    end
    object QR_CONDPAGTOUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBCONDPAGTO"."USUARIONOME_D"'
      Size = 30
    end
    object QR_CONDPAGTODELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBCONDPAGTO"."DELETADO"'
      FixedChar = True
      Size = 1
    end
  end
end
