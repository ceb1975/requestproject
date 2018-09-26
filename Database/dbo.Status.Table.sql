USE [WorkRequest]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/11/2018 6:33:32 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
DROP TABLE [dbo].[Status]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/11/2018 6:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [Status]) VALUES (1, N'Created')
INSERT [dbo].[Status] ([StatusID], [Status]) VALUES (2, N'Approved')
INSERT [dbo].[Status] ([StatusID], [Status]) VALUES (3, N'In Progress')
INSERT [dbo].[Status] ([StatusID], [Status]) VALUES (4, N'Completed')
SET IDENTITY_INSERT [dbo].[Status] OFF
