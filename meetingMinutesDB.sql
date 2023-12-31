USE [MeetingMinutes]
GO
/****** Object:  Table [dbo].[Corporate_Customer_Tbl]    Script Date: 12/3/2023 4:50:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corporate_Customer_Tbl](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nchar](10) NULL,
 CONSTRAINT [PK_Corporate_Customer_Tbl1] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Individual_Customer_Tbl]    Script Date: 12/3/2023 4:50:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual_Customer_Tbl](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Individual_Customer_Tbl] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] ON 

INSERT [dbo].[Corporate_Customer_Tbl] ([CustomerId], [CustomerName]) VALUES (1, N'Tanvir    ')
INSERT [dbo].[Corporate_Customer_Tbl] ([CustomerId], [CustomerName]) VALUES (2, N'Rashid    ')
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] OFF
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] ON 

INSERT [dbo].[Individual_Customer_Tbl] ([CustomerId], [CustomerName]) VALUES (1, N'Harunur')
INSERT [dbo].[Individual_Customer_Tbl] ([CustomerId], [CustomerName]) VALUES (2, N'Rashid')
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] OFF
