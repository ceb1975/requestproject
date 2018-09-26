USE [WorkRequest]
GO
/****** Object:  User [workrequest]    Script Date: 6/11/2018 6:33:32 PM ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'workrequest')
DROP USER [workrequest]
GO
/****** Object:  User [workrequest]    Script Date: 6/11/2018 6:33:32 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'workrequest')
CREATE USER [workrequest] FOR LOGIN [workrequest] WITH DEFAULT_SCHEMA=[dbo]
GO
