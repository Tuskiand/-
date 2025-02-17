USE [ToursmDB]
GO
/****** Object:  Table [dbo].[t_Admin]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Admin](
	[AID] [varchar](6) NOT NULL,
	[AdminPSW] [varchar](20) NOT NULL,
 CONSTRAINT [PK_t_Admin] PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Financial]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Financial](
	[TID] [int] NOT NULL,
	[Pay] [int] NOT NULL,
	[Extra] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Profit] [int] NOT NULL,
 CONSTRAINT [PK__t_Financ__C456D729A1188911] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Guide]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Guide](
	[GID] [int] IDENTITY(1,1) NOT NULL,
	[GName] [varchar](6) NOT NULL,
	[Ggender] [char](4) NOT NULL,
	[Gage] [int] NOT NULL,
	[Special] [varchar](8) NULL,
	[Time] [int] NOT NULL,
 CONSTRAINT [PK__t_Guide__C51F0F3E06ED2FBE] PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Join]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Join](
	[RID] [int] NOT NULL,
	[TID] [int] NOT NULL,
	[Time] [datetime] NULL,
 CONSTRAINT [PK_t_Join] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Route]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Route](
	[RID] [int] NOT NULL,
	[GID] [int] NOT NULL,
	[R_Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_t_Route] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[GID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Spot]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Spot](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](30) NOT NULL,
	[Location] [varchar](20) NOT NULL,
	[SpotUnique] [varchar](80) NOT NULL,
 CONSTRAINT [PK__t_Spot__CA195970F6062BCF] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Staff]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Staff](
	[SID] [varchar](6) NOT NULL,
	[StaffPSW] [varchar](20) NOT NULL,
 CONSTRAINT [PK_t_Staff] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Tourist]    Script Date: 2024/1/30 19:06:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Tourist](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](6) NOT NULL,
	[IdentityNum] [char](18) NOT NULL,
	[Tgender] [char](4) NOT NULL,
	[Tage] [int] NULL,
	[Career] [varchar](30) NULL,
	[Phone] [char](15) NOT NULL,
 CONSTRAINT [PK__t_Touris__C456D7292469BB70] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_Admin] ([AID], [AdminPSW]) VALUES (N'1001', N'123')
INSERT [dbo].[t_Admin] ([AID], [AdminPSW]) VALUES (N'1002', N'321')
INSERT [dbo].[t_Admin] ([AID], [AdminPSW]) VALUES (N'1003', N'456')
GO
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (1, 2000, 300, 10, 500)
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (2, 2000, 400, 10, 600)
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (3, 3000, 300, 5, 800)
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (4, 2500, 400, 8, 800)
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (5, 3000, 500, 5, 1000)
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (6, 2500, 500, 8, 900)
INSERT [dbo].[t_Financial] ([TID], [Pay], [Extra], [Number], [Profit]) VALUES (7, 1500, 200, 10, 200)
GO
SET IDENTITY_INSERT [dbo].[t_Guide] ON 

INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (1, N'梁秋桐', N'女  ', 24, N'法语', 2)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (2, N'张思楠', N'男  ', 25, N'德语', 4)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (3, N'王杰', N'男  ', 22, N'英语', 1)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (4, N'李梦瑶', N'女  ', 25, N'西班牙语', 3)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (5, N'萧云飞', N'男  ', 22, N'德语', 2)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (6, N'刘燕', N'女  ', 24, N'英语', 2)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (7, N'胡雪', N'女  ', 23, N'英语', 2)
INSERT [dbo].[t_Guide] ([GID], [GName], [Ggender], [Gage], [Special], [Time]) VALUES (8, N'韩怡', N'女  ', 24, N'英语', 3)
SET IDENTITY_INSERT [dbo].[t_Guide] OFF
GO
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (1, 1, CAST(N'2023-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (1, 2, CAST(N'2023-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (3, 3, CAST(N'2023-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (3, 5, CAST(N'2023-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (5, 4, CAST(N'2023-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (5, 6, CAST(N'2023-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[t_Join] ([RID], [TID], [Time]) VALUES (6, 7, CAST(N'2023-09-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (1, 3, N'北京-山东-南京')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (1, 7, N'北京-山东-南京')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (2, 3, N'上海-南京')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (2, 4, N'上海-南京')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (3, 5, N'湖南-南京-上海')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (3, 6, N'湖南-南京-上海')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (4, 1, N'北京-天津-南京')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (4, 4, N'北京-天津-南京')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (5, 4, N'湖南-广西桂林')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (5, 8, N'湖南-广西桂林')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (6, 1, N'山西-山东')
INSERT [dbo].[t_Route] ([RID], [GID], [R_Name]) VALUES (6, 2, N'山西-山东')
GO
SET IDENTITY_INSERT [dbo].[t_Spot] ON 

INSERT [dbo].[t_Spot] ([SID], [SName], [Location], [SpotUnique]) VALUES (1, N'天安门', N'北京', N'中华历史古城')
INSERT [dbo].[t_Spot] ([SID], [SName], [Location], [SpotUnique]) VALUES (2, N'东方之珠', N'上海', N'国际化大都市')
INSERT [dbo].[t_Spot] ([SID], [SName], [Location], [SpotUnique]) VALUES (3, N'孔子故乡', N'山东', N'孔子的出生地，风景迷人')
INSERT [dbo].[t_Spot] ([SID], [SName], [Location], [SpotUnique]) VALUES (4, N'天津公园', N'天津', N'风景宜人，景色优美111')
INSERT [dbo].[t_Spot] ([SID], [SName], [Location], [SpotUnique]) VALUES (5, N'漓江', N'桂林', N'桂林山水甲天下')
INSERT [dbo].[t_Spot] ([SID], [SName], [Location], [SpotUnique]) VALUES (11, N'栖霞山', N'南京', N'红枫')
SET IDENTITY_INSERT [dbo].[t_Spot] OFF
GO
INSERT [dbo].[t_Staff] ([SID], [StaffPSW]) VALUES (N'1101', N'1234')
INSERT [dbo].[t_Staff] ([SID], [StaffPSW]) VALUES (N'1102', N'4321')
INSERT [dbo].[t_Staff] ([SID], [StaffPSW]) VALUES (N'1103', N'5678')
GO
SET IDENTITY_INSERT [dbo].[t_Tourist] ON 

INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (1, N'张添', N'450223198409233478', N'男  ', 35, N'教师', N'13782233371    ')
INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (2, N'李明', N'430566198003052378', N'男  ', 37, N'工程师', N'13603342764    ')
INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (3, N'李静', N'420776197605137864', N'女  ', 40, N'设计师', N'13621342764    ')
INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (4, N'崔一中', N'420296198407132462', N'男  ', 38, N'建筑师', N'13602872764    ')
INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (5, N'张三', N'469335200207147594', N'男  ', 21, N'学生', N'18642223009    ')
INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (6, N'李四', N'487224200009823470', N'男  ', 23, N'学生', N'13973847342    ')
INSERT [dbo].[t_Tourist] ([TID], [TName], [IdentityNum], [Tgender], [Tage], [Career], [Phone]) VALUES (7, N'王芳', N'473297198807153247', N'女  ', 35, N'公务员', N'19237093284    ')
SET IDENTITY_INSERT [dbo].[t_Tourist] OFF
GO
ALTER TABLE [dbo].[t_Financial]  WITH CHECK ADD  CONSTRAINT [FK_t_Financial_t_Tourist] FOREIGN KEY([TID])
REFERENCES [dbo].[t_Tourist] ([TID])
GO
ALTER TABLE [dbo].[t_Financial] CHECK CONSTRAINT [FK_t_Financial_t_Tourist]
GO
ALTER TABLE [dbo].[t_Join]  WITH CHECK ADD  CONSTRAINT [FK_t_Join_t_Tourist] FOREIGN KEY([TID])
REFERENCES [dbo].[t_Tourist] ([TID])
GO
ALTER TABLE [dbo].[t_Join] CHECK CONSTRAINT [FK_t_Join_t_Tourist]
GO
ALTER TABLE [dbo].[t_Route]  WITH CHECK ADD  CONSTRAINT [FK_t_Route_t_Guide] FOREIGN KEY([GID])
REFERENCES [dbo].[t_Guide] ([GID])
GO
ALTER TABLE [dbo].[t_Route] CHECK CONSTRAINT [FK_t_Route_t_Guide]
GO
