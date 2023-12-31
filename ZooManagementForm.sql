USE [ZooManagementForm]
GO
/****** Object:  Table [dbo].[AnimalCages]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalCages](
	[AnimalId] [nvarchar](6) NOT NULL,
	[CageId] [nvarchar](5) NOT NULL,
	[EntryCageDate] [datetime2](7) NOT NULL,
	[OutCageDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AnimalCages] PRIMARY KEY CLUSTERED 
(
	[AnimalId] ASC,
	[CageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalFoods]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalFoods](
	[AnimalId] [nvarchar](6) NOT NULL,
	[FoodId] [nvarchar](6) NOT NULL,
	[StartEat] [datetime2](7) NOT NULL,
	[EndEat] [datetime2](7) NULL,
	[Amount] [real] NOT NULL,
 CONSTRAINT [PK_AnimalFoods] PRIMARY KEY CLUSTERED 
(
	[AnimalId] ASC,
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[AnimalId] [nvarchar](6) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Sex] [bit] NOT NULL,
	[Region] [nvarchar](30) NOT NULL,
	[HealthCheck] [nvarchar](max) NOT NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[Rarity] [bit] NOT NULL,
	[SpeciesName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Animals] PRIMARY KEY CLUSTERED 
(
	[AnimalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalSchedules]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalSchedules](
	[AnimalId] [nvarchar](6) NOT NULL,
	[ScheduleId] [nvarchar](6) NOT NULL,
	[Time] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AnimalSchedules] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC,
	[AnimalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnimalTrainers]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalTrainers](
	[UserId] [nvarchar](6) NOT NULL,
	[AnimalId] [nvarchar](6) NOT NULL,
	[StartTrainDate] [datetime2](7) NOT NULL,
	[EndTrainDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AnimalTrainers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[AnimalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[AreaId] [nvarchar](6) NOT NULL,
	[AreaName] [nvarchar](1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cages]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cages](
	[CId] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[MaxCapacity] [int] NOT NULL,
	[AnimalQuantity] [int] NOT NULL,
	[AreaId] [nvarchar](6) NOT NULL,
 CONSTRAINT [PK_Cages] PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foods](
	[FoodId] [nvarchar](6) NOT NULL,
	[FName] [nvarchar](30) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ImportDate] [datetime2](7) NOT NULL,
	[ExpiredDate] [datetime2](7) NOT NULL,
	[CategoryName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Foods] PRIMARY KEY CLUSTERED 
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [nvarchar](6) NOT NULL,
	[ScheduleName] [nvarchar](30) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/11/2023 9:51:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [nvarchar](6) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Firstname] [nvarchar](10) NOT NULL,
	[Lastname] [nvarchar](10) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[Sex] [bit] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NULL,
	[Status] [bit] NOT NULL,
	[Role] [int] NOT NULL,
	[CountAnimal] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0001', N'A0001', CAST(N'2023-10-28T09:43:45.9655674' AS DateTime2), CAST(N'2023-11-03T11:16:47.8032656' AS DateTime2))
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0002', N'A0003', CAST(N'2023-10-28T09:45:37.8893697' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0003', N'B0004', CAST(N'2023-10-28T09:48:24.5908558' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0004', N'B0004', CAST(N'2023-10-28T09:52:40.9334638' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0005', N'B0004', CAST(N'2023-10-28T09:52:43.9774423' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0006', N'B0004', CAST(N'2023-10-28T09:53:03.2118900' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0007', N'B0004', CAST(N'2023-10-28T09:53:11.4894712' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0008', N'E0001', CAST(N'2023-10-28T09:58:24.2844201' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0009', N'E0001', CAST(N'2023-10-28T09:58:47.6376548' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0010', N'E0001', CAST(N'2023-10-28T09:58:55.0971396' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0011', N'E0004', CAST(N'2023-11-03T14:05:21.5338658' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0012', N'C0001', CAST(N'2023-11-04T01:12:42.3413451' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0013', N'C0001', CAST(N'2023-11-04T01:13:09.7556974' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0014', N'C0001', CAST(N'2023-11-04T01:13:12.9225813' AS DateTime2), NULL)
INSERT [dbo].[AnimalCages] ([AnimalId], [CageId], [EntryCageDate], [OutCageDate]) VALUES (N'AN0015', N'A0001', CAST(N'2023-11-04T01:27:59.4610525' AS DateTime2), NULL)
GO
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0001', N'FD0002', CAST(N'2022-11-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0001', N'FD0003', CAST(N'2022-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0001', N'FD0004', CAST(N'2023-10-28T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-10T00:00:00.0000000' AS DateTime2), 9)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0002', N'FD0002', CAST(N'2023-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0002', N'FD0003', CAST(N'2023-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0003', N'FD0001', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0003', N'FD0002', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0004', N'FD0001', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0004', N'FD0002', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0005', N'FD0001', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0005', N'FD0002', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0006', N'FD0001', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0006', N'FD0002', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0007', N'FD0001', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0007', N'FD0002', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0008', N'FD0003', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0008', N'FD0006', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 10)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0009', N'FD0003', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0009', N'FD0006', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 10)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0010', N'FD0003', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 5)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0010', N'FD0006', CAST(N'2020-10-28T02:40:20.5710000' AS DateTime2), CAST(N'2024-05-10T02:40:20.5710000' AS DateTime2), 10)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0011', N'FD0004', CAST(N'2019-11-03T07:04:35.5180000' AS DateTime2), CAST(N'2025-11-03T07:04:35.5180000' AS DateTime2), 2)
INSERT [dbo].[AnimalFoods] ([AnimalId], [FoodId], [StartEat], [EndEat], [Amount]) VALUES (N'AN0015', N'FD0002', CAST(N'2023-11-03T18:23:29.1040000' AS DateTime2), CAST(N'2024-11-03T18:23:29.1040000' AS DateTime2), 5)
GO
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0001', N'Africa Lion', N'a large wild animal of the cat family with yellowish-brown fur that lives in Africa', 1, N'Africa', N'Very good and ok', CAST(N'2023-05-28T02:40:20.5710000' AS DateTime2), 0, 1, N'Lion')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0002', N'Africa Leopard', N'a large wild cat that has yellow fur with black spots on it and lives in Africa', 1, N'Africa', N'Very good', CAST(N'2023-07-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Leopard')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0003', N'Monkey', N'an animal that lives in hot countries, has a long tail, and climbs trees', 1, N'Asia Pacific', N'Very good', CAST(N'2017-01-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Monkey')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0004', N'Monkey', N'an animal that lives in hot countries, has a long tail, and climbs trees', 1, N'Asia Pacific', N'Very good', CAST(N'2017-01-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Monkey')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0005', N'Monkey', N'an animal that lives in hot countries, has a long tail, and climbs trees', 1, N'Middle East', N'Very good', CAST(N'2017-01-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Monkey')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0006', N'Monkey', N'an animal that lives in hot countries, has a long tail, and climbs trees', 1, N'Asia Pacific', N'Very good', CAST(N'2019-07-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Monkey')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0007', N'Monkey', N'an animal that lives in hot countries, has a long tail, and climbs trees', 1, N'North America', N'Very good', CAST(N'2012-07-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Monkey')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0008', N'Crocodile', N'a large reptile with a hard skin that lives in and near rivers and lakes in hot, wet parts of the world', 1, N'Europe', N'Good', CAST(N'2022-07-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Crocodile')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0009', N'Crocodile', N'a large reptile with a hard skin that lives in and near rivers and lakes in hot, wet parts of the world', 1, N'Europe', N'Good', CAST(N'2020-07-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Crocodile')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0010', N'Crocodile', N'a large reptile with a hard skin that lives in and near rivers and lakes in hot, wet parts of the world', 1, N'Europe', N'Good', CAST(N'2018-07-22T02:40:20.5710000' AS DateTime2), 1, 1, N'Crocodile')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0011', N'Snake', N'Snakes are elongated, limbless, carnivorous reptiles of the suborder Serpentes', 1, N'North America', N'Very Good', CAST(N'2020-11-03T07:04:35.5180000' AS DateTime2), 1, 1, N'Snake')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0012', N'Butterfly', N'a type of insect with large, often brightly coloured wings', 1, N'Asia', N'Good', CAST(N'2023-10-03T18:03:36.0640000' AS DateTime2), 1, 0, N'Butterfly')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0013', N'Butterfly', N'a type of insect with large, often brightly coloured wings', 1, N'Asia', N'Good', CAST(N'2023-10-03T18:03:36.0640000' AS DateTime2), 1, 0, N'Butterfly')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0014', N'Butterfly', N'a type of insect with large, often brightly coloured wings', 1, N'Asia', N'Good', CAST(N'2023-10-03T18:03:36.0640000' AS DateTime2), 1, 0, N'Butterfly')
INSERT [dbo].[Animals] ([AnimalId], [Name], [Description], [Sex], [Region], [HealthCheck], [Birthday], [Status], [Rarity], [SpeciesName]) VALUES (N'AN0015', N'Lion', N'Lions are the second largest big cat species after tigers. They belong to the genus Panthera.', 1, N'Africa', N'Good', CAST(N'2019-11-03T18:23:29.1040000' AS DateTime2), 1, 0, N'Lion')
GO
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0002', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0003', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0004', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0005', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0006', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0007', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0008', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0009', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0010', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0011', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0012', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0013', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0014', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0015', N'SC0001', N'8:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0002', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0003', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0004', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0005', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0006', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0007', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0008', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0009', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0010', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0011', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0012', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0013', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0014', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0015', N'SC0002', N'12:30', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0002', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0003', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0004', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0005', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0006', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0007', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0008', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0009', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0010', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0011', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0012', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0013', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0014', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
INSERT [dbo].[AnimalSchedules] ([AnimalId], [ScheduleId], [Time], [Description]) VALUES (N'AN0015', N'SC0003', N'18:00', N'Please feed in 1 hour from feed time')
GO
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0001', N'AN0001', CAST(N'2023-10-28T09:43:45.9465219' AS DateTime2), CAST(N'2023-11-03T11:16:47.8255638' AS DateTime2))
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0001', N'AN0011', CAST(N'2023-11-03T14:05:21.5142358' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0001', N'AN0015', CAST(N'2023-11-04T01:27:59.4556669' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0002', CAST(N'2023-10-28T09:45:37.8866215' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0003', CAST(N'2023-10-28T09:48:24.5882142' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0004', CAST(N'2023-10-28T09:52:40.9300896' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0005', CAST(N'2023-10-28T09:52:43.9719423' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0006', CAST(N'2023-10-28T09:53:03.2090220' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0007', CAST(N'2023-10-28T09:53:11.4848106' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0012', CAST(N'2023-11-04T01:12:42.3232311' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0013', CAST(N'2023-11-04T01:13:09.7519245' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0002', N'AN0014', CAST(N'2023-11-04T01:13:12.9205911' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0003', N'AN0008', CAST(N'2023-10-28T09:58:24.2816913' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0003', N'AN0009', CAST(N'2023-10-28T09:58:47.6359099' AS DateTime2), NULL)
INSERT [dbo].[AnimalTrainers] ([UserId], [AnimalId], [StartTrainDate], [EndTrainDate]) VALUES (N'ZT0003', N'AN0010', CAST(N'2023-10-28T09:58:55.0952696' AS DateTime2), NULL)
GO
INSERT [dbo].[Areas] ([AreaId], [AreaName], [Description]) VALUES (N'AE0001', N'A', N'This is area for most of carnivore animals')
INSERT [dbo].[Areas] ([AreaId], [AreaName], [Description]) VALUES (N'AE0002', N'B', N'This is area for most of graminivore, monkey')
INSERT [dbo].[Areas] ([AreaId], [AreaName], [Description]) VALUES (N'AE0003', N'C', N'This is area for most of insect animals')
INSERT [dbo].[Areas] ([AreaId], [AreaName], [Description]) VALUES (N'AE0004', N'D', N'This is area for most of flying animals')
INSERT [dbo].[Areas] ([AreaId], [AreaName], [Description]) VALUES (N'AE0005', N'E', N'This is area for most of reptilian animals')
GO
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'A0001', N'Lion', 3, 1, N'AE0001')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'A0002', N'Tiger', 2, 1, N'AE0001')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'A0003', N'Leopard', 2, 0, N'AE0001')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'A0004', N'Puma', 5, 0, N'AE0001')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'B0001', N'Goat', 20, 0, N'AE0002')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'B0002', N'Sheep', 20, 0, N'AE0002')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'B0003', N'Dear', 10, 0, N'AE0002')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'B0004', N'Monkey', 20, 0, N'AE0002')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'C0001', N'Butterfly', 20, 0, N'AE0003')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'D0001', N'Flamingo', 10, 0, N'AE0004')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'D0002', N'Hawk', 4, 0, N'AE0004')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'D0003', N'Peacock', 10, 0, N'AE0004')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'E0001', N'Alligator', 10, 0, N'AE0005')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'E0002', N'Iguana', 5, 0, N'AE0005')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'E0003', N'Python', 2, 0, N'AE0005')
INSERT [dbo].[Cages] ([CId], [Name], [MaxCapacity], [AnimalQuantity], [AreaId]) VALUES (N'E0004', N'Snake', 2, 0, N'AE0005')
GO
INSERT [dbo].[Foods] ([FoodId], [FName], [Quantity], [ImportDate], [ExpiredDate], [CategoryName]) VALUES (N'FD0001', N'Banana', 100, CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), N'Fruit')
INSERT [dbo].[Foods] ([FoodId], [FName], [Quantity], [ImportDate], [ExpiredDate], [CategoryName]) VALUES (N'FD0002', N'Pork', 100, CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), N'Raw meet')
INSERT [dbo].[Foods] ([FoodId], [FName], [Quantity], [ImportDate], [ExpiredDate], [CategoryName]) VALUES (N'FD0003', N'Mutton', 100, CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), N'Raw meet')
INSERT [dbo].[Foods] ([FoodId], [FName], [Quantity], [ImportDate], [ExpiredDate], [CategoryName]) VALUES (N'FD0004', N'Chicken', 100, CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), N'Raw meet')
INSERT [dbo].[Foods] ([FoodId], [FName], [Quantity], [ImportDate], [ExpiredDate], [CategoryName]) VALUES (N'FD0005', N'Cruciferous vegetables', 100, CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), N'Vegetable')
INSERT [dbo].[Foods] ([FoodId], [FName], [Quantity], [ImportDate], [ExpiredDate], [CategoryName]) VALUES (N'FD0006', N'Fish', 100, CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), CAST(N'2023-10-26T12:56:21.2480000' AS DateTime2), N'Seafood')
GO
INSERT [dbo].[Schedules] ([ScheduleId], [ScheduleName], [Status]) VALUES (N'SC0001', N'Breakfast', 1)
INSERT [dbo].[Schedules] ([ScheduleId], [ScheduleName], [Status]) VALUES (N'SC0002', N'Lunch', 1)
INSERT [dbo].[Schedules] ([ScheduleId], [ScheduleName], [Status]) VALUES (N'SC0003', N'Dinner', 1)
INSERT [dbo].[Schedules] ([ScheduleId], [ScheduleName], [Status]) VALUES (N'SC0004', N'Train', 1)
INSERT [dbo].[Schedules] ([ScheduleId], [ScheduleName], [Status]) VALUES (N'SC0005', N'HealthCheck', 1)
GO
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ST0001', N'hunglvse171595@fpt.edu.vn', N'123456', N'Le', N'Hung', N'Quan 9, Viet Nam', N'0919225433', 1, CAST(N'2023-10-26T19:51:59.0822356' AS DateTime2), NULL, 1, 2, 0)
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ST0002', N'viltse171600@fpt.edu.vn', N'123456', N'Luu', N'Vi', N'Quan 12, Viet Nam', N'0919225423', 1, CAST(N'2023-10-26T19:52:33.9140016' AS DateTime2), NULL, 1, 2, 0)
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ST0003', N'namnpse171595@fpt.edu.vn', N'123456', N'Nguyen', N'Nam', N'Binh Duong, Viet Nam', N'0919235423', 1, CAST(N'2023-10-26T19:53:01.8473079' AS DateTime2), NULL, 1, 2, 0)
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ZT0001', N'trinhse171609@fpt.edu.vn', N'123456', N'Nguyen', N'Tri', N'Quan 12, Viet Nam', N'0919222333', 1, CAST(N'2023-10-26T19:51:29.9037707' AS DateTime2), NULL, 1, 3, 1)
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ZT0002', N'leviethung220703@gmail.com', N'123456', N'Le', N'Hung', N'Quan 9, Viet Nam', N'0919235523', 1, CAST(N'2023-10-26T19:53:51.1151908' AS DateTime2), NULL, 1, 3, 1)
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ZT0003', N'luutrieuvi2003@gmail.com', N'123456', N'Luu', N'Vi', N'Quan 12, Viet Nam', N'0919235563', 1, CAST(N'2023-10-26T19:54:24.8544756' AS DateTime2), NULL, 1, 3, 0)
INSERT [dbo].[Users] ([UserId], [Email], [Password], [Firstname], [Lastname], [Address], [Phone], [Sex], [StartDate], [EndDate], [Status], [Role], [CountAnimal]) VALUES (N'ZT0004', N'npnam03@gmail.com', N'123456', N'Nguyen', N'Nam', N'Binh Duong, Viet Nam', N'0919235565', 1, CAST(N'2023-10-26T19:54:47.5935383' AS DateTime2), NULL, 1, 3, 0)
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [CountAnimal]
GO
ALTER TABLE [dbo].[AnimalCages]  WITH CHECK ADD  CONSTRAINT [FK_AnimalCages_Animals_AnimalId] FOREIGN KEY([AnimalId])
REFERENCES [dbo].[Animals] ([AnimalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalCages] CHECK CONSTRAINT [FK_AnimalCages_Animals_AnimalId]
GO
ALTER TABLE [dbo].[AnimalCages]  WITH CHECK ADD  CONSTRAINT [FK_AnimalCages_Cages_CageId] FOREIGN KEY([CageId])
REFERENCES [dbo].[Cages] ([CId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalCages] CHECK CONSTRAINT [FK_AnimalCages_Cages_CageId]
GO
ALTER TABLE [dbo].[AnimalFoods]  WITH CHECK ADD  CONSTRAINT [FK_AnimalFoods_Animals_AnimalId] FOREIGN KEY([AnimalId])
REFERENCES [dbo].[Animals] ([AnimalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalFoods] CHECK CONSTRAINT [FK_AnimalFoods_Animals_AnimalId]
GO
ALTER TABLE [dbo].[AnimalFoods]  WITH CHECK ADD  CONSTRAINT [FK_AnimalFoods_Foods_FoodId] FOREIGN KEY([FoodId])
REFERENCES [dbo].[Foods] ([FoodId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalFoods] CHECK CONSTRAINT [FK_AnimalFoods_Foods_FoodId]
GO
ALTER TABLE [dbo].[AnimalSchedules]  WITH CHECK ADD  CONSTRAINT [FK_AnimalSchedules_Animals_AnimalId] FOREIGN KEY([AnimalId])
REFERENCES [dbo].[Animals] ([AnimalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalSchedules] CHECK CONSTRAINT [FK_AnimalSchedules_Animals_AnimalId]
GO
ALTER TABLE [dbo].[AnimalSchedules]  WITH CHECK ADD  CONSTRAINT [FK_AnimalSchedules_Schedules_ScheduleId] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalSchedules] CHECK CONSTRAINT [FK_AnimalSchedules_Schedules_ScheduleId]
GO
ALTER TABLE [dbo].[AnimalTrainers]  WITH CHECK ADD  CONSTRAINT [FK_AnimalTrainers_Animals_AnimalId] FOREIGN KEY([AnimalId])
REFERENCES [dbo].[Animals] ([AnimalId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalTrainers] CHECK CONSTRAINT [FK_AnimalTrainers_Animals_AnimalId]
GO
ALTER TABLE [dbo].[AnimalTrainers]  WITH CHECK ADD  CONSTRAINT [FK_AnimalTrainers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnimalTrainers] CHECK CONSTRAINT [FK_AnimalTrainers_Users_UserId]
GO
ALTER TABLE [dbo].[Cages]  WITH CHECK ADD  CONSTRAINT [FK_Cages_Areas_AreaId] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Areas] ([AreaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cages] CHECK CONSTRAINT [FK_Cages_Areas_AreaId]
GO
