/****** RightScale MSSQL app_data dump ******/

USE [master]
GO

/****** Object:  Database [app_test]    Script Date: 07/02/2010 16:48:11 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'app_test')
DROP DATABASE [app_test]
GO

USE [master]
GO

/****** Object:  Database [app_test]    Script Date: 07/02/2010 16:48:11 ******/
create database app_test;
GO

ALTER DATABASE [app_test] SET COMPATIBILITY_LEVEL = 100
GO

/****** Object:  Table [dbo].[app_test]    Script Date: 07/02/2010 16:54:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[app_test]') AND type in (N'U'))
DROP TABLE [dbo].[app_test]
GO

USE [app_test]
GO

/****** Object:  Table [dbo].[app_test]    Script Date: 07/02/2010 16:50:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[app_test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[value] [text] NOT NULL,
 CONSTRAINT [PK_app_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

INSERT INTO app_test (name,value) VALUES ('app_test1', 'I am in the db')
INSERT INTO app_test (name,value) VALUES ('app_test2', 'I am in the db')
INSERT INTO app_test (name,value) VALUES ('app_test3', 'I am in the db')

GO
