object Form_Login: TForm_Login
  Left = 0

  Top = 0
  ClientHeight = 474
  ClientWidth = 504
  Caption = 'SICFAR - Online'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object QR_LOGIN: TIBQuery
    Database = UniMainModule.IBDatabase1
    Transaction = UniMainModule.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TBUSUARIO U'
      '  WHERE u.deletado = '#39'N'#39
      '  and NOME = :NOME'
      '  and SENHA = :SENHA')
    Left = 80
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENHA'
        ParamType = ptUnknown
      end>
    object QR_LOGINUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = '"TBUSUARIO"."USUARIO_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QR_LOGINNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"TBUSUARIO"."NOME"'
      Size = 30
    end
    object QR_LOGINSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"TBUSUARIO"."SENHA"'
      Size = 32
    end
    object QR_LOGINPERFIL_ID: TIntegerField
      FieldName = 'PERFIL_ID'
      Origin = '"TBUSUARIO"."PERFIL_ID"'
    end
    object QR_LOGINDELETADO: TIBStringField
      FieldName = 'DELETADO'
      Origin = '"TBUSUARIO"."DELETADO"'
      FixedChar = True
      Size = 1
    end
    object QR_LOGINDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
      Origin = '"TBUSUARIO"."DATA_INC"'
    end
    object QR_LOGINUSUARIO_I: TIntegerField
      FieldName = 'USUARIO_I'
      Origin = '"TBUSUARIO"."USUARIO_I"'
    end
    object QR_LOGINUSUARIONOME_I: TIBStringField
      FieldName = 'USUARIONOME_I'
      Origin = '"TBUSUARIO"."USUARIONOME_I"'
      Size = 30
    end
    object QR_LOGINDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
      Origin = '"TBUSUARIO"."DATA_ALT"'
    end
    object QR_LOGINUSUARIO_A: TIntegerField
      FieldName = 'USUARIO_A'
      Origin = '"TBUSUARIO"."USUARIO_A"'
    end
    object QR_LOGINUSUARIONOME_A: TIBStringField
      FieldName = 'USUARIONOME_A'
      Origin = '"TBUSUARIO"."USUARIONOME_A"'
      Size = 30
    end
    object QR_LOGINDATA_DEL: TDateTimeField
      FieldName = 'DATA_DEL'
      Origin = '"TBUSUARIO"."DATA_DEL"'
    end
    object QR_LOGINUSUARIO_D: TIntegerField
      FieldName = 'USUARIO_D'
      Origin = '"TBUSUARIO"."USUARIO_D"'
    end
    object QR_LOGINUSUARIONOME_D: TIBStringField
      FieldName = 'USUARIONOME_D'
      Origin = '"TBUSUARIO"."USUARIONOME_D"'
      Size = 30
    end
    object QR_LOGINEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TBUSUARIO"."EMAIL"'
      Size = 100
    end
    object QR_LOGINRAMAL: TIBStringField
      FieldName = 'RAMAL'
      Origin = '"TBUSUARIO"."RAMAL"'
      Size = 4
    end
    object QR_LOGINERP_VENDEDOR: TIBStringField
      FieldName = 'ERP_VENDEDOR'
      Origin = '"TBUSUARIO"."ERP_VENDEDOR"'
      Size = 10
    end
    object QR_LOGINERP_REPRESENTANTE: TIBStringField
      FieldName = 'ERP_REPRESENTANTE'
      Origin = '"TBUSUARIO"."ERP_REPRESENTANTE"'
      Size = 10
    end
    object QR_LOGINGRUPO_PRODUTO: TIBStringField
      FieldName = 'GRUPO_PRODUTO'
      Origin = '"TBUSUARIO"."GRUPO_PRODUTO"'
      Size = 300
    end
    object QR_LOGINVENDEDOR_ID: TIntegerField
      FieldName = 'VENDEDOR_ID'
      Origin = '"TBUSUARIO"."VENDEDOR_ID"'
    end
    object QR_LOGINREPRESENTANTE_ID: TIntegerField
      FieldName = 'REPRESENTANTE_ID'
      Origin = '"TBUSUARIO"."REPRESENTANTE_ID"'
    end
    object QR_LOGINBANCOS: TIBStringField
      FieldName = 'BANCOS'
      Origin = '"TBUSUARIO"."BANCOS"'
      Size = 255
    end
    object QR_LOGINDEPARTAMENTO_ID: TIntegerField
      FieldName = 'DEPARTAMENTO_ID'
      Origin = '"TBUSUARIO"."DEPARTAMENTO_ID"'
    end
    object QR_LOGINDEPARTAMENTO: TIBStringField
      FieldName = 'DEPARTAMENTO'
      Origin = '"TBUSUARIO"."DEPARTAMENTO"'
      Size = 40
    end
    object QR_LOGINNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"TBUSUARIO"."NOME_FANTASIA"'
      Size = 30
    end
    object QR_LOGINEXPIRACAO: TDateField
      FieldName = 'EXPIRACAO'
      Origin = '"TBUSUARIO"."EXPIRACAO"'
    end
    object QR_LOGINERP_VENDEDOR_NOME: TIBStringField
      FieldName = 'ERP_VENDEDOR_NOME'
      Origin = '"TBUSUARIO"."ERP_VENDEDOR_NOME"'
      Size = 80
    end
    object QR_LOGINERP_REPRESENTANTE_NOME: TIBStringField
      FieldName = 'ERP_REPRESENTANTE_NOME'
      Origin = '"TBUSUARIO"."ERP_REPRESENTANTE_NOME"'
      Size = 80
    end
    object QR_LOGINBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"TBUSUARIO"."BLOQUEADO"'
      Size = 1
    end
  end
end
