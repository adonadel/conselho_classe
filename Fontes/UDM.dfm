object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 385
  Top = 225
  Height = 186
  Width = 215
  object Conexao: TSQLConnection
    ConnectionName = 'teste'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Users\Alexandre\Desktop\Menu (ESTE)\Projeto_Tcc\Banc' +
        'o\BASEGESTAOESCOLAR.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 32
    Top = 32
  end
  object SqlAux: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 104
    Top = 32
  end
end
