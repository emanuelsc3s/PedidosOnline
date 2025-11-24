object Form_Busca_Usuario: TForm_Busca_Usuario
  Left = 0
  Top = 0
  ClientHeight = 345
  ClientWidth = 766
  Caption = 'Consulta de Usu'#225'rios'
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
        FieldName = 'USUARIO_ID'
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
    Caption = 'Consulta Usu'#225'rios'
  end
  object DataSource1: TDataSource
    DataSet = QR_USUARIO
    Left = 536
    Top = 40
  end
  object QR_USUARIO: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select usuario_id, nome from tbusuario')
    Left = 560
    Top = 128
    object QR_USUARIOUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBUSUARIO"."USUARIO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_USUARIONOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TBUSUARIO"."NOME"'
      Size = 30
    end
  end
end
