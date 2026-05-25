object DM: TDM
  Height = 537
  Width = 451
  object RESTClient_login: TRESTClient
    Authenticator = OAuth1Authenticator_grupo
    Accept = 'application/json, text/plain;q=0.9, text/html;q=0.8'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://laurolivro-606860-default-rtdb.firebaseio.com'
    Params = <>
    SynchronizedEvents = False
    Left = 64
    Top = 40
  end
  object RESTRequest_login: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient_login
    Params = <
      item
        Name = 'acesso'
        Value = 'gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg'
      end>
    Resource = 'tab_usuario/cod_usuario/'
    ResourceSuffix = '.json?auth=gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg'
    Response = RESTResponse_login
    SynchronizedEvents = False
    Left = 64
    Top = 120
  end
  object RESTResponse_login: TRESTResponse
    ContentType = 'application/json'
    Left = 64
    Top = 216
  end
  object RESTResponseDataSetAdapter_login: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable_login
    FieldDefs = <>
    Response = RESTResponse_login
    TypesMode = Rich
    Left = 72
    Top = 304
  end
  object FDMemTable_login: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'aptx'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'campo1'
        DataType = ftWideString
        Size = 22
      end
      item
        Name = 'campo2'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'campo3'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'campo4'
        DataType = ftWideString
        Size = 16
      end
      item
        Name = 'email'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'foto_base64'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'fotourl'
        DataType = ftWideString
        Size = 144
      end
      item
        Name = 'id'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'nivel'
        DataType = ftWideString
        Size = 12
      end
      item
        Name = 'nomex'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'senha'
        DataType = ftWideString
        Size = 9
      end
      item
        Name = 'sequencia'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'statusx'
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
    Left = 72
    Top = 400
  end
  object RESTClient_grupo: TRESTClient
    Authenticator = OAuth1Authenticator_grupo
    Accept = 'application/json, text/plain;q=0.9, text/html;q=0.8'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://laurolivro-606860-default-rtdb.firebaseio.com'
    Params = <>
    SynchronizedEvents = False
    Left = 264
    Top = 424
  end
  object RESTRequest_grupo: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient_grupo
    Params = <
      item
        Name = 'auth'
        Value = 'gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg'
      end>
    Resource = 'tab_grupo/cod_grupo/'
    ResourceSuffix = '.json?'
    Response = RESTResponse_grupo
    SynchronizedEvents = False
    Left = 272
    Top = 344
  end
  object RESTResponse_grupo: TRESTResponse
    ContentType = 'application/json'
    Left = 288
    Top = 256
  end
  object RESTResponseDataSetAdapter_grupo: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable_grupo
    FieldDefs = <>
    Response = RESTResponse_grupo
    TypesMode = Rich
    Left = 288
    Top = 184
  end
  object FDMemTable_grupo: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'data'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'descricao'
        DataType = ftWideString
        Size = 44
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
        Name = 'saldo_credor'
        DataType = ftFloat
      end
      item
        Name = 'saldo_devedor'
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
    Left = 280
    Top = 104
    object FDMemTable_grupodata: TWideStringField
      FieldName = 'data'
      Size = 10
    end
    object FDMemTable_grupodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 44
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
    object FDMemTable_gruposaldo_credor: TFloatField
      FieldName = 'saldo_credor'
    end
    object FDMemTable_gruposaldo_devedor: TFloatField
      FieldName = 'saldo_devedor'
    end
    object FDMemTable_grupostatus: TWideStringField
      FieldName = 'status'
      Size = 1
    end
  end
  object OAuth1Authenticator_grupo: TOAuth1Authenticator
    AccessToken = 'gGrjaEZca7Dld3kCnSd7oDeQ8Xi8xJkcuvqCkrBg'
    ConsumerKey = 'auth'
    ConsumerSecret = 'auth'
    Left = 280
    Top = 40
    ConsumerSecrect = 'auth'
  end
end
