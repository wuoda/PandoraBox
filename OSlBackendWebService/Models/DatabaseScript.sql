USE [OslMobileBackendWebservice]
GO
/****** Object:  Table [dbo].[Checkings]    Script Date: 5/21/2018 9:18:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Checkings](
	[TranszactionID] [int] IDENTITY(1,1) NOT NULL,
	[SupID] [int] NULL,
	[Station] [nchar](10) NULL,
	[EmpID] [nchar](10) NULL,
	[Xcord] [float] NULL,
	[Ycoord] [float] NULL,
	[LIT] [datetime] NULL,
	[stringDate] [nchar](10) NULL,
 CONSTRAINT [PK_Checkings] PRIMARY KEY CLUSTERED 
(
	[TranszactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/21/2018 9:18:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] NOT NULL,
	[Telephone] [int] NULL,
	[Password] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[StationID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesLogs]    Script Date: 5/21/2018 9:18:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesLogs](
	[TranszactionID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NULL,
	[LIT] [datetime] NULL,
	[LOT] [datetime] NULL,
	[Xcoord] [float] NULL,
	[Ycoord] [float] NULL,
	[Qdate] [date] NULL,
	[CheckedSatus] [bit] NULL,
	[StringDate] [nchar](10) NULL,
 CONSTRAINT [PK_EmployeesLogs] PRIMARY KEY CLUSTERED 
(
	[TranszactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stations]    Script Date: 5/21/2018 9:18:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stations](
	[STID] [int] NOT NULL,
	[Region] [nvarchar](50) NULL,
	[StationName] [nvarchar](50) NULL,
	[SupID] [int] NULL,
 CONSTRAINT [PK_Stations] PRIMARY KEY CLUSTERED 
(
	[STID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supervisors]    Script Date: 5/21/2018 9:18:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supervisors](
	[SupID] [int] NOT NULL,
	[EmpID] [int] NULL,
	[Phone] [nchar](10) NULL,
	[Password] [int] NULL,
 CONSTRAINT [PK_Supervisors] PRIMARY KEY CLUSTERED 
(
	[SupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Checkings] ON 

INSERT [dbo].[Checkings] ([TranszactionID], [SupID], [Station], [EmpID], [Xcord], [Ycoord], [LIT], [stringDate]) VALUES (1015, 200, NULL, NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14T16:07:00.000' AS DateTime), N'2018-05-14')
INSERT [dbo].[Checkings] ([TranszactionID], [SupID], [Station], [EmpID], [Xcord], [Ycoord], [LIT], [stringDate]) VALUES (1016, 200, NULL, NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14T16:08:00.000' AS DateTime), N'2018-05-14')
INSERT [dbo].[Checkings] ([TranszactionID], [SupID], [Station], [EmpID], [Xcord], [Ycoord], [LIT], [stringDate]) VALUES (1017, 200, NULL, NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14T16:25:00.000' AS DateTime), N'2018-05-14')
INSERT [dbo].[Checkings] ([TranszactionID], [SupID], [Station], [EmpID], [Xcord], [Ycoord], [LIT], [stringDate]) VALUES (1018, 200, NULL, NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14T16:35:00.000' AS DateTime), N'2018-05-14')
INSERT [dbo].[Checkings] ([TranszactionID], [SupID], [Station], [EmpID], [Xcord], [Ycoord], [LIT], [stringDate]) VALUES (1019, 200, NULL, NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14T17:11:00.000' AS DateTime), N'2018-05-14')
SET IDENTITY_INSERT [dbo].[Checkings] OFF
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (1, 713928142, 122, N'Isaac', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (2, 712394568, 123, N'Damaris', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (3, 713256589, 124, N'Nyongesa', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (4, 713928142, 121, N'Duncan', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (11, 713928142, 111, N'Denver', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (12, 713928142, 111, N'Halloquins', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (13, 713928142, 111, N'MIke', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (14, 713928142, 111, N'Paul', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (101, 7111, 111, N'Holstein', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (102, 7222, 111, N'Kennedy', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (103, 7555, 111, N'Jared', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (104, 7888, 111, N'Thomas', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (105, 7666, 111, N'Duncan', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (106, 7145, 111, N'Mary', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (107, 7364, 111, N'Emmaculate', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (108, 7455, 111, N'Maina', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (109, 7123, 111, N'Rotich', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (110, 7142, 111, N'Kibet', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (111, 7253, 111, N'Chebet', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (112, 7124, 111, N'Wiclife', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (113, 7153, 111, N'Moraa', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (114, 7125, 111, N'Hannah', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (115, 7111, 111, N'Stella', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (116, 7222, 111, N'Kibui', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (117, 7888, 111, N'Frank', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (118, 7666, 111, N'Felix', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (119, 7225, 111, N'Esther', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (120, 7121, 111, N'Godwin', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (121, 7142, 111, N'Kinsley', 3)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (122, 7563, 111, N'Rani', 1)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (123, 7252, 111, N'Kassim', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (124, 7415, 111, N'Mohamed', 2)
INSERT [dbo].[Employees] ([EmpID], [Telephone], [Password], [Name], [StationID]) VALUES (125, 7122, 111, N'Mabel', 1)
SET IDENTITY_INSERT [dbo].[EmployeesLogs] ON 

INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2035, 11, CAST(N'2018-05-14T17:12:00.000' AS DateTime), NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14' AS Date), 0, N'2018-05-14')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2038, 1, CAST(N'2018-05-14T17:14:00.000' AS DateTime), NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14' AS Date), 0, N'2018-05-14')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2040, 3, CAST(N'2018-05-14T17:15:00.000' AS DateTime), NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14' AS Date), 0, N'2018-05-14')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2041, 4, CAST(N'2018-05-14T17:16:00.000' AS DateTime), NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14' AS Date), 0, N'2018-05-14')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2042, 14, CAST(N'2018-05-14T17:18:00.000' AS DateTime), NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14' AS Date), 0, N'2018-05-14')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2043, 13, CAST(N'2018-05-14T17:19:00.000' AS DateTime), NULL, 36.8160474, -1.2988173, CAST(N'2018-05-14' AS Date), 0, N'2018-05-14')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2044, 101, CAST(N'2018-05-18T10:29:00.000' AS DateTime), NULL, 36.80840492, -1.235093773, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2045, 102, CAST(N'2018-05-18T10:29:00.000' AS DateTime), NULL, 36.76677704, -1.258863243, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2046, 103, CAST(N'2018-05-18T10:29:00.000' AS DateTime), NULL, 36.72386169, -1.262982118, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2047, 104, CAST(N'2018-05-18T10:29:00.000' AS DateTime), NULL, 36.73089981, -1.299880083, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2048, 105, CAST(N'2018-05-18T10:29:00.000' AS DateTime), NULL, 36.79853439, -1.303484042, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2050, 106, CAST(N'2018-05-18T11:02:00.000' AS DateTime), NULL, 36.84655666, -1.255001791, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2051, 107, CAST(N'2018-05-18T11:02:00.000' AS DateTime), NULL, 36.90101624, -1.306229912, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2052, 108, CAST(N'2018-05-18T11:44:00.000' AS DateTime), NULL, 36.80900574, -1.282632496, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2053, 109, CAST(N'2018-05-18T11:44:00.000' AS DateTime), NULL, 36.81836128, -1.292071489, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2054, 110, CAST(N'2018-05-18T11:44:00.000' AS DateTime), NULL, 36.84720039, -1.265213173, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2055, 111, CAST(N'2018-05-18T13:05:00.000' AS DateTime), NULL, 36.84857368, -1.277312321, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2056, 112, CAST(N'2018-05-18T13:05:00.000' AS DateTime), NULL, 36.83080673, -1.276196799, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2057, 113, CAST(N'2018-05-18T13:05:00.000' AS DateTime), NULL, 36.83286667, -1.300652361, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2058, 114, CAST(N'2018-05-18T13:05:00.000' AS DateTime), NULL, 36.81278229, -1.301167212, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
INSERT [dbo].[EmployeesLogs] ([TranszactionID], [EmpID], [LIT], [LOT], [Xcoord], [Ycoord], [Qdate], [CheckedSatus], [StringDate]) VALUES (2059, 115, CAST(N'2018-05-18T13:05:00.000' AS DateTime), NULL, 36.79990768, -1.284177061, CAST(N'2018-05-18' AS Date), NULL, N'2018-05-18')
SET IDENTITY_INSERT [dbo].[EmployeesLogs] OFF
INSERT [dbo].[Stations] ([STID], [Region], [StationName], [SupID]) VALUES (1, N'Upperhill', N'KUSCO Center', 200)
INSERT [dbo].[Stations] ([STID], [Region], [StationName], [SupID]) VALUES (2, N'Upperhill', N'TSC', 200)
INSERT [dbo].[Stations] ([STID], [Region], [StationName], [SupID]) VALUES (3, N'Uppehill', N'Britam', 200)
INSERT [dbo].[Supervisors] ([SupID], [EmpID], [Phone], [Password]) VALUES (200, NULL, N'0713928   ', 20)
INSERT [dbo].[Supervisors] ([SupID], [EmpID], [Phone], [Password]) VALUES (300, NULL, N'0700712   ', 20)
INSERT [dbo].[Supervisors] ([SupID], [EmpID], [Phone], [Password]) VALUES (400, NULL, N'0712913123', 20)
ALTER TABLE [dbo].[Checkings] ADD  DEFAULT (CONVERT([varchar],getdate())) FOR [LIT]
GO
ALTER TABLE [dbo].[Checkings] ADD  DEFAULT (CONVERT([char](10),getdate(),(126))) FOR [stringDate]
GO
ALTER TABLE [dbo].[EmployeesLogs] ADD  DEFAULT (CONVERT([varchar],getdate())) FOR [LIT]
GO
ALTER TABLE [dbo].[EmployeesLogs] ADD  DEFAULT (CONVERT([varchar],getdate())) FOR [Qdate]
GO
ALTER TABLE [dbo].[EmployeesLogs] ADD  DEFAULT (CONVERT([char](10),getdate(),(126))) FOR [StringDate]
GO
ALTER TABLE [dbo].[Checkings]  WITH CHECK ADD  CONSTRAINT [FK_Checkings_Supervisors] FOREIGN KEY([SupID])
REFERENCES [dbo].[Supervisors] ([SupID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Checkings] CHECK CONSTRAINT [FK_Checkings_Supervisors]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Stations] FOREIGN KEY([StationID])
REFERENCES [dbo].[Stations] ([STID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Stations]
GO
ALTER TABLE [dbo].[EmployeesLogs]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesLogs_Employees] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employees] ([EmpID])
GO
ALTER TABLE [dbo].[EmployeesLogs] CHECK CONSTRAINT [FK_EmployeesLogs_Employees]
GO
ALTER TABLE [dbo].[Stations]  WITH CHECK ADD  CONSTRAINT [FK_Stations_Supervisors] FOREIGN KEY([SupID])
REFERENCES [dbo].[Supervisors] ([SupID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stations] CHECK CONSTRAINT [FK_Stations_Supervisors]
GO
