USE [College]
GO
/****** Object:  Table [dbo].[Abiturient]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abiturient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Gender] [nchar](10) NOT NULL,
	[Nationality] [nchar](32) NOT NULL,
	[BirtDate] [date] NOT NULL,
	[BirthPlace] [nchar](50) NOT NULL,
	[PermanentAddress] [nchar](120) NOT NULL,
	[ActualAddress] [nchar](120) NOT NULL,
	[Education] [nchar](155) NOT NULL,
	[FatherFio] [nchar](100) NULL,
	[FatherJobPlace] [nchar](100) NULL,
	[FatherJobPosition] [nchar](30) NULL,
	[MotherFio] [nchar](100) NULL,
	[MotherJobPlace] [nchar](100) NULL,
	[MotherJobPosition] [nchar](30) NULL,
	[FatherTelepthone] [nvarchar](50) NULL,
	[MotherTelephone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Abiturient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcRank]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcRank](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_AcRank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Specialty] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Practics]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Practics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GroupId] [int] NOT NULL,
	[Specialty] [nchar](100) NOT NULL,
	[Hours] [int] NOT NULL,
	[TeacherId] [int] NOT NULL,
 CONSTRAINT [PK_Practics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Para12] [nchar](100) NULL,
	[Para34] [nchar](100) NULL,
	[Para56] [nchar](100) NULL,
	[Para78] [nchar](100) NULL,
	[Para910] [nchar](100) NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[Nationality] [nchar](32) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[BirthPlace] [nchar](50) NOT NULL,
	[PermanentAddress] [nchar](120) NOT NULL,
	[ActualAddress] [nchar](120) NOT NULL,
	[Education] [nchar](155) NOT NULL,
	[GroupId] [int] NOT NULL,
	[StarostaOrNo] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](199) NOT NULL,
	[Specialty] [nchar](32) NOT NULL,
	[Age] [int] NOT NULL,
	[Children] [int] NOT NULL,
	[AcademicId] [int] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/23/2023 6:31:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](150) NOT NULL,
	[Login] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AcRank] ON 

INSERT [dbo].[AcRank] ([Id], [Name]) VALUES (1, N'Профессор                                                                                           ')
INSERT [dbo].[AcRank] ([Id], [Name]) VALUES (2, N'Бакалавр                                                                                            ')
INSERT [dbo].[AcRank] ([Id], [Name]) VALUES (3, N'Доктор наук                                                                                         ')
SET IDENTITY_INSERT [dbo].[AcRank] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([Id], [Name], [Specialty]) VALUES (1, N'15p                                                                                                 ', N'Programmer                                        ')
INSERT [dbo].[Group] ([Id], [Name], [Specialty]) VALUES (2, N'14Э                                                                                                 ', N'Экономисты                                        ')
INSERT [dbo].[Group] ([Id], [Name], [Specialty]) VALUES (3, N'13Ю                                                                                                 ', N'Право                                             ')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin                                                                                               ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Student                                                                                             ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'EducationPart                                                                                       ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (4, N'Teacher                                                                                             ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (5, N'Abiturient                                                                                          ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (1, N'Kirl                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (2, N'Артем                                                                                               ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (3, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (4, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (5, N'Дмитрий                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (6, N'Николай                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (7, N'Артем                                                                                               ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (8, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (9, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (10, N'Кирилл                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (11, N'Илья                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (12, N'Юсуп                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (13, N'Николай                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (14, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (15, N'Дмитрий                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (16, N'Егор                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (17, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (18, N'Иван                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (19, N'Kirl                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (20, N'Артем                                                                                               ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (21, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (22, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (23, N'Дмитрий                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (24, N'Николай                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (25, N'Артем                                                                                               ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (26, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (27, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (28, N'Кирилл                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (29, N'Илья                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (30, N'Юсуп                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (31, N'Николай                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (32, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (33, N'Дмитрий                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (34, N'Егор                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (35, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (36, N'Иван                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 2, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (37, N'Kirl                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (38, N'Артем                                                                                               ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (39, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (40, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (41, N'Дмитрий                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (42, N'Николай                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (43, N'Артем                                                                                               ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (44, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (45, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (46, N'Кирилл                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (47, N'Илья                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (48, N'Юсуп                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (49, N'Николай                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (50, N'Никита                                                                                              ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (51, N'Дмитрий                                                                                             ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (52, N'Егор                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (53, N'Владимир                                                                                            ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 3, 1)
INSERT [dbo].[Student] ([Id], [Name], [Gender], [Nationality], [BirthDate], [BirthPlace], [PermanentAddress], [ActualAddress], [Education], [GroupId], [StarostaOrNo]) VALUES (54, N'Иван                                                                                                ', N'м', N'РФ                              ', CAST(N'2003-03-03' AS Date), N'Арз                                               ', N'Арзамас, где-то                                                                                                         ', N'Арзамас,                                                                                                                ', N'9 классов, 3 школа                                                                                                                                         ', 1, 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (1, N'Иван Иванович                                                                                                                                                                                          ', N'Программирование                ', 41, 10, 3)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (2, N'Василий Васильевич                                                                                                                                                                                     ', N'Экономика                       ', 39, 4, 2)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (3, N'Никита Никитович                                                                                                                                                                                       ', N'Право                           ', 52, 5, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (4, N'Иван Иванович                                                                                                                                                                                          ', N'Программирование                ', 41, 10, 3)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (5, N'Иван Иванович                                                                                                                                                                                          ', N'Программирование                ', 41, 10, 3)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (6, N'Василий Васильевич                                                                                                                                                                                     ', N'Экономика                       ', 39, 4, 2)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (7, N'Никита Никитович                                                                                                                                                                                       ', N'Право                           ', 52, 5, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (8, N'Иван Иванович                                                                                                                                                                                          ', N'Программирование                ', 41, 10, 3)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (9, N'Василий Васильевич                                                                                                                                                                                     ', N'Экономика                       ', 39, 4, 2)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (10, N'Никита Никитович                                                                                                                                                                                       ', N'Право                           ', 52, 5, 1)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (11, N'Иван Иванович                                                                                                                                                                                          ', N'Программирование                ', 41, 10, 3)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (12, N'Василий Васильевич                                                                                                                                                                                     ', N'Экономика                       ', 39, 4, 2)
INSERT [dbo].[Teacher] ([Id], [Name], [Specialty], [Age], [Children], [AcademicId]) VALUES (13, N'Никита Никитович                                                                                                                                                                                       ', N'Право                           ', 52, 5, 1)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRole]) VALUES (1, N'k                                                                                                                                                     ', N'1', N'1', 1)
INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRole]) VALUES (2, N'i                                                                                                                                                     ', N'2', N'2', 2)
INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRole]) VALUES (3, N'r                                                                                                                                                     ', N'3', N'3', 3)
INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRole]) VALUES (4, N'i                                                                                                                                                     ', N'4', N'4', 4)
INSERT [dbo].[User] ([Id], [Name], [Login], [Password], [IdRole]) VALUES (5, N'l                                                                                                                                                     ', N'5', N'5', 5)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Practics]  WITH CHECK ADD  CONSTRAINT [FK_Practics_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Practics] CHECK CONSTRAINT [FK_Practics_Group]
GO
ALTER TABLE [dbo].[Practics]  WITH CHECK ADD  CONSTRAINT [FK_Practics_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[Practics] CHECK CONSTRAINT [FK_Practics_Teacher]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_AcRank] FOREIGN KEY([AcademicId])
REFERENCES [dbo].[AcRank] ([Id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_AcRank]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
