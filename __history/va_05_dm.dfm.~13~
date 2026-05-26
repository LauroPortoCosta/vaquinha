object DM: TDM
  Height = 537
  Width = 425
  object RESTClient_grupo: TRESTClient
    Accept = 'application/json, text/plain;q=0.9, text/html;q=0.8'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://vaquinha-8e06e-default-rtdb.firebaseio.com'
    Params = <>
    SynchronizedEvents = False
    Left = 248
    Top = 48
  end
  object RESTRequest_grupo: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient_grupo
    Params = <
      item
        Name = 'auth'
        Value = 'AIzaSyBVLql1yRfz_h9yenkJYdH8VJl-JlPcnCI'
      end>
    Resource = 'tab_grupo/cod_grupo/'
    ResourceSuffix = '.json?'
    Response = RESTResponse_grupo
    SynchronizedEvents = False
    Left = 256
    Top = 216
  end
  object RESTResponse_grupo: TRESTResponse
    ContentType = 'application/json'
    Left = 248
    Top = 120
  end
  object RESTResponseDataSetAdapter_grupo: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable_grupo
    FieldDefs = <>
    Response = RESTResponse_grupo
    TypesMode = Rich
    Left = 256
    Top = 416
  end
  object FDMemTable_grupo: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'credor'
        DataType = ftFloat
      end
      item
        Name = 'data'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'descricao'
        DataType = ftWideString
        Size = 60
      end
      item
        Name = 'devedor'
        DataType = ftFloat
      end
      item
        Name = 'id_grupo'
        DataType = ftFloat
      end
      item
        Name = 'parcela'
        DataType = ftFloat
      end
      item
        Name = 'participantes'
        DataType = ftFloat
      end
      item
        Name = 'status'
        DataType = ftWideString
        Size = 1
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 256
    Top = 320
    object FDMemTable_grupocredor: TFloatField
      FieldName = 'credor'
    end
    object FDMemTable_grupodata: TWideStringField
      FieldName = 'data'
      Size = 10
    end
    object FDMemTable_grupodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 60
    end
    object FDMemTable_grupodevedor: TFloatField
      FieldName = 'devedor'
    end
    object FDMemTable_grupoid_grupo: TFloatField
      FieldName = 'id_grupo'
    end
    object FDMemTable_grupoparcela: TFloatField
      FieldName = 'parcela'
    end
    object FDMemTable_grupoparticipantes: TFloatField
      FieldName = 'participantes'
    end
    object FDMemTable_grupostatus: TWideStringField
      FieldName = 'status'
      Size = 1
    end
  end
  object RESTClient_usuario: TRESTClient
    Accept = 'application/json, text/plain;q=0.9, text/html;q=0.8'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://vaquinha-8e06e-default-rtdb.firebaseio.com'
    Params = <>
    SynchronizedEvents = False
    Left = 72
    Top = 56
  end
  object RESTRequest_usuario: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient_usuario
    Params = <
      item
        Name = 'auth'
        Value = 'AIzaSyBVLql1yRfz_h9yenkJYdH8VJl-JlPcnCI'
      end>
    Resource = 'tab_usuario/cod_usuario/.json?'
    Response = RESTResponse_usuario
    SynchronizedEvents = False
    Left = 56
    Top = 144
  end
  object RESTResponse_usuario: TRESTResponse
    ContentType = 'application/json'
    Left = 64
    Top = 256
  end
  object RESTResponseDataSetAdapter_usuario: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable_usuario
    FieldDefs = <>
    Response = RESTResponse_usuario
    TypesMode = Rich
    Left = 64
    Top = 352
  end
  object FDMemTable_usuario: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'data'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'email'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'id'
        DataType = ftFloat
      end
      item
        Name = 'nome'
        DataType = ftWideString
        Size = 26
      end
      item
        Name = 'senha'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'status'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'telefone'
        DataType = ftWideString
        Size = 12
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 64
    Top = 432
  end
end
