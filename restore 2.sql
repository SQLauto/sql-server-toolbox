USE [master]
GO
--Restore template




--RESTORE FILELISTONLY FROM  DISK = N'C:\Conversion\BACKUPS\ProdImplementation\PRISM_backup_200810162300.bak' 
go
ALTER DATABASE [Surveillance_UAT] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
ALTER DATABASE [Surveillance_UAT] SET  SINGLE_USER 
GO
RESTORE DATABASE [Surveillance_UAT] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQL2K8\MSSQL\Backup\Surveillance_UAT_backup_201003241230.bak' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 10
GO
GO

ALTER DATABASE [Surveillance_UAT] SET  MULTI_USER
GO
 
--ALTER DATABASE PCFScratch_William SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
--GO
--ALTER DATABASE PCFScratch_William SET  SINGLE_USER 
--GO
--RESTORE DATABASE [PCFScratch_William] FROM  DISK = N'C:\Conversion\BACKUPS\ProdImplementation\PRISM_backup_200810131208.bak' 
--WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5,
-- MOVE 'Prism' to 'c:\Conversion\DATA\PCFScratch_William.mdf',
-- MOVE 'Prism_log' to 'c:\Conversion\DATA\PCFScratch_William_1.ldf'
--GO
--
--ALTER DATABASE PCFScratch_William SET  MULTI_USER
--GO
-- 