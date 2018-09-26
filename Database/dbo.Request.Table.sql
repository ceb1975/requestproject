USE [WorkRequest]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Request]') AND parent_object_id = OBJECT_ID(N'[dbo].[Request]'))
ALTER TABLE [dbo].[Request] DROP CONSTRAINT [FK_Request]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 6/11/2018 6:33:32 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Request]') AND type in (N'U'))
DROP TABLE [dbo].[Request]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 6/11/2018 6:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Request]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[StatusID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [StatusID], [Description]) VALUES (1, 2, N'Testing')
INSERT [dbo].[Request] ([RequestID], [StatusID], [Description]) VALUES (2, 2, N'Test 2')
INSERT [dbo].[Request] ([RequestID], [StatusID], [Description]) VALUES (3, 3, N'Test 3')
INSERT [dbo].[Request] ([RequestID], [StatusID], [Description]) VALUES (5, 1, N'Test')
INSERT [dbo].[Request] ([RequestID], [StatusID], [Description]) VALUES (8, 1, N'Test')
INSERT [dbo].[Request] ([RequestID], [StatusID], [Description]) VALUES (9, 1, N'Test9')
SET IDENTITY_INSERT [dbo].[Request] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Request]') AND parent_object_id = OBJECT_ID(N'[dbo].[Request]'))
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Request]') AND parent_object_id = OBJECT_ID(N'[dbo].[Request]'))
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request]
GO
