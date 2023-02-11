object IWUserSession: TIWUserSession
  OldCreateOrder = False
  OnCreate = IWUserSessionBaseCreate
  Height = 347
  Width = 556
  object Conexao: TFDConnection
    ConnectionName = 'Conexao'
    Params.Strings = (
      'DriverID=MSSQL')
    BeforeConnect = ConexaoBeforeConnect
    Left = 112
    Top = 88
  end
  object MSSQL: TFDPhysMSSQLDriverLink
    ODBCDriver = 'SQL Server'
    Left = 208
    Top = 112
  end
end
