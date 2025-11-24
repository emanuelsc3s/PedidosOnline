object Form_Pedido_Status: TForm_Pedido_Status
  Left = 0
  Top = 0
  ClientHeight = 342
  ClientWidth = 621
  Caption = 'Status do Pedido'
  OnShow = UniFormShow
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  Font.Name = 'Verdana'
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 61
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    TabOrder = 0
    BorderStyle = ubsNone
    Alignment = taLeftJustify
    Caption = ''
    Color = 12477460
    object Label_Topo: TUniLabel
      Left = 24
      Top = 19
      Width = 190
      Height = 23
      Hint = ''
      Caption = 'Status do Pedido '
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TabOrder = 1
    end
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 67
    Width = 41
    Height = 13
    Hint = ''
    Caption = 'Status:'
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 8
    Top = 114
    Width = 42
    Height = 13
    Hint = ''
    Caption = 'Motivo:'
    TabOrder = 2
  end
  object UniLabel3: TUniLabel
    Left = 8
    Top = 161
    Width = 73
    Height = 13
    Hint = ''
    Caption = 'Observa'#231#227'o:'
    TabOrder = 3
  end
  object btn_CondPagto: TUniButton
    Left = 103
    Top = 131
    Width = 25
    Height = 24
    Hint = ''
    Caption = ''
    TabOrder = 4
    Images = UniImageList1
    ImageIndex = 0
    OnClick = btn_CondPagtoClick
  end
  object UniPanel4: TUniPanel
    Left = 0
    Top = 303
    Width = 621
    Height = 39
    Hint = ''
    Align = alBottom
    TabOrder = 5
    Caption = ''
    object btn_Aplicar: TUniButton
      Left = 6
      Top = 7
      Width = 100
      Height = 25
      Hint = ''
      Caption = '<i class="fa fa-save"></i>  Salvar'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoAzul'#39');'#13#10'}')
      OnClick = btn_AplicarClick
    end
  end
  object Edit_PesqMotivo: TUniEdit
    Left = 8
    Top = 133
    Width = 89
    Hint = ''
    Text = ''
    TabOrder = 6
    OnChange = Edit_PesqMotivoChange
    OnExit = Edit_PesqMotivoExit
  end
  object Edit_Motivo: TUniEdit
    Left = 134
    Top = 133
    Width = 479
    Hint = ''
    Text = ''
    TabOrder = 7
  end
  object Memo_OBS: TUniMemo
    Left = 8
    Top = 180
    Width = 605
    Height = 117
    Hint = ''
    TabOrder = 8
  end
  object ComboBox_Status: TUniComboBox
    Left = 8
    Top = 86
    Width = 120
    Hint = ''
    Style = csDropDownList
    Text = ''
    Items.Strings = (
      'Aberto'
      'Aprovado'
      'Cancelado')
    TabOrder = 9
    IconItems = <>
  end
  object UniImageList1: TUniImageList
    Left = 512
    Top = 69
  end
  object DS_STATUS: TIBDataSet
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TBPEDIDO_STATUS'
      'where'
      '  PEDIDOSTATUS_ID = :OLD_PEDIDOSTATUS_ID and'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    InsertSQL.Strings = (
      'insert into TBPEDIDO_STATUS'
      
        '  (PEDIDOSTATUS_ID, PEDIDO_ID, STATUS, DATA, USUARIO_ID, USUARIO' +
        ', LOG, '
      
        '   OBS, PRODUTO_ID, ERP_PRODUTO, PRODUTO, MOTIVO_ID, MOTIVO, DEL' +
        'ETADO)'
      'values'
      
        '  (:PEDIDOSTATUS_ID, :PEDIDO_ID, :STATUS, :DATA, :USUARIO_ID, :U' +
        'SUARIO, '
      
        '   :LOG, :OBS, :PRODUTO_ID, :ERP_PRODUTO, :PRODUTO, :MOTIVO_ID, ' +
        ':MOTIVO, '
      '   :DELETADO)')
    RefreshSQL.Strings = (
      'Select '
      '  PEDIDOSTATUS_ID,'
      '  PEDIDO_ID,'
      '  STATUS,'
      '  DATA,'
      '  USUARIO_ID,'
      '  USUARIO,'
      '  LOG,'
      '  OBS,'
      '  PRODUTO_ID,'
      '  ERP_PRODUTO,'
      '  PRODUTO,'
      '  MOTIVO_ID,'
      '  MOTIVO,'
      '  DELETADO'
      'from TBPEDIDO_STATUS '
      'where'
      '  PEDIDOSTATUS_ID = :PEDIDOSTATUS_ID and'
      '  PEDIDO_ID = :PEDIDO_ID')
    SelectSQL.Strings = (
      'select * from TBPEDIDO_STATUS')
    ModifySQL.Strings = (
      'update TBPEDIDO_STATUS'
      'set'
      '  PEDIDOSTATUS_ID = :PEDIDOSTATUS_ID,'
      '  PEDIDO_ID = :PEDIDO_ID,'
      '  STATUS = :STATUS,'
      '  DATA = :DATA,'
      '  USUARIO_ID = :USUARIO_ID,'
      '  USUARIO = :USUARIO,'
      '  LOG = :LOG,'
      '  OBS = :OBS,'
      '  PRODUTO_ID = :PRODUTO_ID,'
      '  ERP_PRODUTO = :ERP_PRODUTO,'
      '  PRODUTO = :PRODUTO,'
      '  MOTIVO_ID = :MOTIVO_ID,'
      '  MOTIVO = :MOTIVO,'
      '  DELETADO = :DELETADO'
      'where'
      '  PEDIDOSTATUS_ID = :OLD_PEDIDOSTATUS_ID and'
      '  PEDIDO_ID = :OLD_PEDIDO_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'PEDIDOSTATUS_ID'
    GeneratorField.Generator = 'GEN_TBPEDIDO_STATUS_ID'
    Left = 432
    Top = 64
    object DS_STATUSPEDIDOSTATUS_ID: TIntegerField
      FieldName = 'PEDIDOSTATUS_ID'
      Origin = '"TBPEDIDO_STATUS"."PEDIDOSTATUS_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DS_STATUSPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Origin = '"TBPEDIDO_STATUS"."PEDIDO_ID"'
    end
    object DS_STATUSSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"TBPEDIDO_STATUS"."STATUS"'
      Size = 30
    end
    object DS_STATUSDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"TBPEDIDO_STATUS"."DATA"'
    end
    object DS_STATUSUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBPEDIDO_STATUS"."USUARIO_ID"'
    end
    object DS_STATUSUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"TBPEDIDO_STATUS"."USUARIO"'
      Size = 30
    end
    object DS_STATUSLOG: TIBStringField
      FieldName = 'LOG'
      Origin = '"TBPEDIDO_STATUS"."LOG"'
      Size = 2000
    end
    object DS_STATUSOBS: TWideMemoField
      FieldName = 'OBS'
      Origin = '"TBPEDIDO_STATUS"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
    object DS_STATUSPRODUTO_ID: TIntegerField
      FieldName = 'PRODUTO_ID'
      Origin = '"TBPEDIDO_STATUS"."PRODUTO_ID"'
    end
    object DS_STATUSERP_PRODUTO: TIBStringField
      FieldName = 'ERP_PRODUTO'
      Origin = '"TBPEDIDO_STATUS"."ERP_PRODUTO"'
      Size = 10
    end
    object DS_STATUSPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"TBPEDIDO_STATUS"."PRODUTO"'
      Size = 80
    end
    object DS_STATUSMOTIVO_ID: TIntegerField
      FieldName = 'MOTIVO_ID'
      Origin = '"TBPEDIDO_STATUS"."MOTIVO_ID"'
    end
    object DS_STATUSMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"TBPEDIDO_STATUS"."MOTIVO"'
      Size = 300
    end
    object DS_STATUSDELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBPEDIDO_STATUS"."DELETADO"'
      FixedChar = True
      Size = 1
    end
  end
  object qUpdate: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 280
    Top = 96
  end
end
