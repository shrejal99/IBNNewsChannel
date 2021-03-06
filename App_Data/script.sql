USE [IBNDB]
GO
/****** Object:  Table [dbo].[Tbl_Video]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Video](
	[VId] [int] IDENTITY(1,1) NOT NULL,
	[VideoName] [varchar](100) NULL,
	[VideoDes] [varchar](max) NULL,
	[VDate] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Video] PRIMARY KEY CLUSTERED 
(
	[VId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Video] ON
INSERT [dbo].[Tbl_Video] ([VId], [VideoName], [VideoDes], [VDate]) VALUES (1, N'aditya krishna arti.mp4', N'asdfgh', N'8/1/2017 9:02:29 PM')
INSERT [dbo].[Tbl_Video] ([VId], [VideoName], [VideoDes], [VDate]) VALUES (2, N'aditya krishna arti.mp4', N'aesrdtfryg', N'8/1/2017 9:11:04 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Video] OFF
/****** Object:  Table [dbo].[Tbl_Suggestion]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Suggestion](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[MobileNo] [varchar](30) NULL,
	[Topic] [varchar](100) NULL,
	[Message] [varchar](max) NULL,
	[SDate] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Suggestion] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Suggestion] ON
INSERT [dbo].[Tbl_Suggestion] ([SID], [Name], [MobileNo], [Topic], [Message], [SDate]) VALUES (2, N'julie gautam', N'2345678907', N'adfs', N'ASDFGHJ', N'8/2/2017 8:55:17 PM')
INSERT [dbo].[Tbl_Suggestion] ([SID], [Name], [MobileNo], [Topic], [Message], [SDate]) VALUES (3, N'julie gautam', N'2345678907', N'adfs', N'waesdtrf', N'8/2/2017 8:59:41 PM')
INSERT [dbo].[Tbl_Suggestion] ([SID], [Name], [MobileNo], [Topic], [Message], [SDate]) VALUES (4, N'julie gautam', N'2345678907', N'adfs', N'waesdtrf', N'8/2/2017 8:59:56 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Suggestion] OFF
/****** Object:  Table [dbo].[Tbl_Notification]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Notification](
	[NId] [int] IDENTITY(1,1) NOT NULL,
	[Notification] [varchar](max) NULL,
	[NDate] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Notification] PRIMARY KEY CLUSTERED 
(
	[NId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_News_Category]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_News_Category](
	[NCID] [int] IDENTITY(1,1) NOT NULL,
	[NewsCat] [varchar](100) NULL,
	[NewsCatDt] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_News_Category] PRIMARY KEY CLUSTERED 
(
	[NCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_News_Category] ON
INSERT [dbo].[Tbl_News_Category] ([NCID], [NewsCat], [NewsCatDt]) VALUES (7, N'Lucknow', N'8/2/2017 9:14:43 PM')
INSERT [dbo].[Tbl_News_Category] ([NCID], [NewsCat], [NewsCatDt]) VALUES (8, N'Kanpur', N'8/2/2017 9:14:53 PM')
INSERT [dbo].[Tbl_News_Category] ([NCID], [NewsCat], [NewsCatDt]) VALUES (9, N'Sports', N'8/2/2017 9:15:01 PM')
SET IDENTITY_INSERT [dbo].[Tbl_News_Category] OFF
/****** Object:  Table [dbo].[Tbl_News]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[PicName] [varchar](100) NULL,
	[NCategory] [varchar](30) NULL,
	[NHead] [nvarchar](max) NULL,
	[News] [nvarchar](max) NULL,
	[NewsDate] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_News] ON
INSERT [dbo].[Tbl_News] ([NewsId], [PicName], [NCategory], [NHead], [News], [NewsDate]) VALUES (3, N'CC 001.jpg', N'aesrdtfryg', N'QWEHGFHDFUYDITUIU', N'WAESRDTYTQ', N'8/1/2017 10:14:27 PM')
INSERT [dbo].[Tbl_News] ([NewsId], [PicName], [NCategory], [NHead], [News], [NewsDate]) VALUES (5, N'07f0d7b69ef071571e4ada2f4d6a053a-fondo-del-icono-de-instagram-by-vexels.png', N'Kanpur', N'wertyuio', N'ertyuiop', N'8/2/2017 9:16:20 PM')
INSERT [dbo].[Tbl_News] ([NewsId], [PicName], [NCategory], [NHead], [News], [NewsDate]) VALUES (6, N'breaking-news-a-finding-dory-1200x630.jpg', N'Sports', N'qwerty', N'ASDFER', N'8/2/2017 9:16:40 PM')
SET IDENTITY_INSERT [dbo].[Tbl_News] OFF
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[User_Id] [varchar](100) NULL,
	[Passwd] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_Login] ([User_Id], [Passwd]) VALUES (N'ibn@gmail.com', N'8765')
/****** Object:  Table [dbo].[Tbl_Enquiry]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Enquiry](
	[EQId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[MobileNo] [varchar](12) NULL,
	[EmailId] [varchar](100) NULL,
	[Message] [varchar](max) NULL,
	[EQ_Date] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Enquiry] PRIMARY KEY CLUSTERED 
(
	[EQId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Advertise]    Script Date: 08/02/2017 21:33:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Advertise](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[PicName] [varchar](100) NULL,
	[ALink] [varchar](50) NULL,
	[ADate] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Advertise] PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Advertise] ON
INSERT [dbo].[Tbl_Advertise] ([AID], [PicName], [ALink], [ADate]) VALUES (1, N'CC 001.jpg', N'http://softproindia.org', N'8/2/2017 3:21:47 AM')
INSERT [dbo].[Tbl_Advertise] ([AID], [PicName], [ALink], [ADate]) VALUES (2, N'inter 001.jpg', N'http://www.facebook.com', N'8/2/2017 3:22:07 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Advertise] OFF
