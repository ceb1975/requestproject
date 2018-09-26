USE [master]
GO
/****** Object:  Database [WorkRequest]    Script Date: 6/11/2018 6:33:32 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'WorkRequest')
DROP DATABASE [WorkRequest]
GO
/****** Object:  Database [WorkRequest]    Script Date: 6/11/2018 6:33:32 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'WorkRequest')
BEGIN
CREATE DATABASE [WorkRequest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorkRequest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WorkRequest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorkRequest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WorkRequest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorkRequest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorkRequest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorkRequest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorkRequest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorkRequest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorkRequest] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorkRequest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorkRequest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorkRequest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorkRequest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorkRequest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorkRequest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorkRequest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorkRequest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorkRequest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorkRequest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorkRequest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorkRequest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorkRequest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorkRequest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorkRequest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorkRequest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorkRequest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorkRequest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WorkRequest] SET  MULTI_USER 
GO
ALTER DATABASE [WorkRequest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorkRequest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorkRequest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorkRequest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [WorkRequest]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [workrequest] AS [dbo]
GO
GRANT ALTER ANY MASK TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY EXTERNAL DATA SOURCE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY EXTERNAL FILE FORMAT TO [workrequet] AS [dbo]
GO
GRANT ALTER TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY ASYMMETRIC KEY TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY APPLICATION ROLE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY ASSEMBLY TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY CERTIFICATE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY DATABASE AUDIT TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY DATASPACE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY DATABASE EVENT NOTIFICATION TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY FULLTEXT CATALOG TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY MESSAGE TYPE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY ROLE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY ROUTE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY REMOTE SERVICE BINDING TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY CONTRACT TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY SYMMETRIC KEY TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY SCHEMA TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY SECURITY POLICY TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY SERVICE TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY DATABASE DDL TRIGGER TO [workrequet] AS [dbo]
GO
GRANT ALTER ANY USER TO [workrequet] AS [dbo]
GO
GRANT AUTHENTICATE TO [workrequet] AS [dbo]
GO
GRANT BACKUP DATABASE TO [workrequet] AS [dbo]
GO
GRANT BACKUP LOG TO [workrequet] AS [dbo]
GO
GRANT CONTROL TO [workrequet] AS [dbo]
GO
GRANT CONNECT TO [workrequet] AS [dbo]
GO
GRANT CONNECT REPLICATION TO [workrequet] AS [dbo]
GO
GRANT CHECKPOINT TO [workrequet] AS [dbo]
GO
GRANT CREATE AGGREGATE TO [workrequet] AS [dbo]
GO
GRANT CREATE ASYMMETRIC KEY TO [workrequet] AS [dbo]
GO
GRANT CREATE ASSEMBLY TO [workrequet] AS [dbo]
GO
GRANT CREATE CERTIFICATE TO [workrequet] AS [dbo]
GO
GRANT CREATE DEFAULT TO [workrequet] AS [dbo]
GO
GRANT CREATE DATABASE DDL EVENT NOTIFICATION TO [workrequet] AS [dbo]
GO
GRANT CREATE FUNCTION TO [workrequet] AS [dbo]
GO
GRANT CREATE FULLTEXT CATALOG TO [workrequet] AS [dbo]
GO
GRANT CREATE MESSAGE TYPE TO [workrequet] AS [dbo]
GO
GRANT CREATE PROCEDURE TO [workrequet] AS [dbo]
GO
GRANT CREATE QUEUE TO [workrequet] AS [dbo]
GO
GRANT CREATE ROLE TO [workrequet] AS [dbo]
GO
GRANT CREATE ROUTE TO [workrequet] AS [dbo]
GO
GRANT CREATE RULE TO [workrequet] AS [dbo]
GO
GRANT CREATE REMOTE SERVICE BINDING TO [workrequet] AS [dbo]
GO
GRANT CREATE CONTRACT TO [workrequet] AS [dbo]
GO
GRANT CREATE SYMMETRIC KEY TO [workrequet] AS [dbo]
GO
GRANT CREATE SCHEMA TO [workrequet] AS [dbo]
GO
GRANT CREATE SYNONYM TO [workrequet] AS [dbo]
GO
GRANT CREATE SERVICE TO [workrequet] AS [dbo]
GO
GRANT CREATE TABLE TO [workrequet] AS [dbo]
GO
GRANT CREATE TYPE TO [workrequet] AS [dbo]
GO
GRANT CREATE VIEW TO [workrequet] AS [dbo]
GO
GRANT CREATE XML SCHEMA COLLECTION TO [workrequet] AS [dbo]
GO
GRANT DELETE TO [workrequet] AS [dbo]
GO
GRANT EXECUTE TO [workrequet] AS [dbo]
GO
GRANT INSERT TO [workrequet] AS [dbo]
GO
GRANT REFERENCES TO [workrequet] AS [dbo]
GO
GRANT SELECT TO [workrequet] AS [dbo]
GO
GRANT SHOWPLAN TO [workrequet] AS [dbo]
GO
GRANT SUBSCRIBE QUERY NOTIFICATIONS TO [workrequet] AS [dbo]
GO
GRANT TAKE OWNERSHIP TO [workrequet] AS [dbo]
GO
GRANT UNMASK TO [workrequet] AS [dbo]
GO
GRANT UPDATE TO [workrequet] AS [dbo]
GO
GRANT VIEW DEFINITION TO [workrequet] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [workrequet] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [workrequet] AS [dbo]
GO
GRANT VIEW DATABASE STATE TO [workrequet] AS [dbo]
GO
USE [master]
GO
ALTER DATABASE [WorkRequest] SET  READ_WRITE 
GO
