USE [master]
GO
/****** Object:  Database [Coffees]    Script Date: 02/22/2016 21:36:55 ******/
CREATE DATABASE [Coffees] ON  PRIMARY 
( NAME = N'Coffe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.HUYTNSE60730\MSSQL\DATA\Coffe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Coffe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.HUYTNSE60730\MSSQL\DATA\Coffe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Coffees] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Coffees].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Coffees] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Coffees] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Coffees] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Coffees] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Coffees] SET ARITHABORT OFF
GO
ALTER DATABASE [Coffees] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Coffees] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Coffees] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Coffees] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Coffees] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Coffees] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Coffees] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Coffees] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Coffees] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Coffees] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Coffees] SET  DISABLE_BROKER
GO
ALTER DATABASE [Coffees] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Coffees] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Coffees] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Coffees] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Coffees] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Coffees] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Coffees] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Coffees] SET  READ_WRITE
GO
ALTER DATABASE [Coffees] SET RECOVERY FULL
GO
ALTER DATABASE [Coffees] SET  MULTI_USER
GO
ALTER DATABASE [Coffees] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Coffees] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Coffees', N'ON'
GO
USE [Coffees]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 02/22/2016 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [varchar](20) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([ID], [Name], [Status], [IsDelete]) VALUES (1, N'Nuoc ngot', N'active', 0)
INSERT [dbo].[Categories] ([ID], [Name], [Status], [IsDelete]) VALUES (2, N'Ca Phe', N'active', 0)
INSERT [dbo].[Categories] ([ID], [Name], [Status], [IsDelete]) VALUES (3, N'Sinh To', N'active', 0)
INSERT [dbo].[Categories] ([ID], [Name], [Status], [IsDelete]) VALUES (4, N'Banh ngot', N'active', 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Accounts]    Script Date: 02/22/2016 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](50) NULL,
	[Status] [varchar](20) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (19, N'Huy', N'123', N'mod', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (20, N'Hai', N'123', N'mod', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (21, N'Trinh', N'123', N'mod', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (22, N'Staff01', N'123', N'staff', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (23, N'Staff02', N'123', N'staff', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (24, N'Staff03', N'123', N'staff', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (25, N'Bartender01', N'123', N'bartender', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (26, N'Bartender01', N'123', N'bartender', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (27, N'ban02', N'123', N'guest', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (28, N'ban03', N'123', N'guest', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (29, N'ban04', N'123', N'guest', N'active', 0)
INSERT [dbo].[Accounts] ([ID], [Username], [Password], [Role], [Status], [IsDelete]) VALUES (30, N'ban05', N'123', N'guest', N'active', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 02/22/2016 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[Status] [varchar](20) NULL,
	[IsDelete] [bit] NULL,
	[AccountID] [int] NULL,
	[DateCreate] [datetime] NULL,
	[TotalPrice] [float] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 02/22/2016 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[ImageLink] [text] NULL,
	[Descriptions] [nvarchar](max) NULL,
	[CoverLink] [text] NULL,
	[CatID] [int] NULL,
	[Status] [varchar](20) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (9, N'Pepsi', 10000, N'', N'Nuoc ngot', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (10, N'Cocacola', 10000, N'', N'Nuoc ngot', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (11, N'Xoai', 20000, N'', N'Sinh To', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (12, N'Bo', 20000, N'', N'Sinh To', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (13, N'cafe sua da', 15000, N'', N'Ca Phe', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (14, N'cafe den', 13000, N'', N'Ca Phe', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (15, N'banh kem', 18000, N'', N'Banh ngot', N'', NULL, N'active', 0)
INSERT [dbo].[Products] ([ID], [Name], [Price], [ImageLink], [Descriptions], [CoverLink], [CatID], [Status], [IsDelete]) VALUES (16, N'banh Flan', 18000, N'', N'banh Ngot', N'', NULL, N'active', 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[OrdersDetail]    Script Date: 02/22/2016 21:36:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrdersID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_OrdersDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Orders_Accounts]    Script Date: 02/22/2016 21:36:58 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 02/22/2016 21:36:58 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_OrdersDetail_Orders]    Script Date: 02/22/2016 21:36:58 ******/
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetail_Orders] FOREIGN KEY([OrdersID])
REFERENCES [dbo].[Orders] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdersDetail] CHECK CONSTRAINT [FK_OrdersDetail_Orders]
GO
/****** Object:  ForeignKey [FK_OrdersDetail_Products]    Script Date: 02/22/2016 21:36:58 ******/
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetail_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdersDetail] CHECK CONSTRAINT [FK_OrdersDetail_Products]
GO
