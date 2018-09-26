USE [WorkRequest]
GO
/****** Object:  User [workrequet]    Script Date: 6/11/2018 6:33:32 PM ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'workrequet')
DROP USER [workrequet]
GO
/****** Object:  User [workrequet]    Script Date: 6/11/2018 6:33:32 PM ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'workrequet')
CREATE USER [workrequet] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [workrequet]
GO
