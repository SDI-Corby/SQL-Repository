USE master
GRANT VIEW SERVER STATE TO "mtrgaming\solarwinds"
GRANT VIEW ANY DEFINITION TO "mtrgaming\solarwinds"
EXEC sp_adduser @loginame = 'mtrgaming\solarwinds' ,@name_in_db = 'mtrgaming\solarwinds'
GRANT EXECUTE ON xp_readerrorlog TO "mtrgaming\solarwinds"
USE msdb
EXEC sp_adduser @loginame = 'mtrgaming\solarwinds' ,@name_in_db = 'mtrgaming\solarwinds'
EXEC sp_addrolemember N'db_datareader', N'mtrgaming\solarwinds'
EXECUTE sp_MSforeachdb 'USE [?]; EXEC sp_adduser @loginame  = ''mtrgaming\solarwinds'', @name_in_db = ''mtrgaming\solarwinds'''