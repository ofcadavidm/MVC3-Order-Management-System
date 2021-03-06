USE [master]
GO
/****** Object:  Database [LetsShop]    Script Date: 07/06/2012 17:47:46 ******/
CREATE DATABASE [LetsShop] ON  PRIMARY 
( NAME = N'LetsShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\LetsShop.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LetsShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\LetsShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LetsShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LetsShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LetsShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LetsShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LetsShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LetsShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LetsShop] SET ARITHABORT OFF
GO
ALTER DATABASE [LetsShop] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LetsShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LetsShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LetsShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LetsShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LetsShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LetsShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LetsShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LetsShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LetsShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LetsShop] SET  DISABLE_BROKER
GO
ALTER DATABASE [LetsShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LetsShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LetsShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LetsShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LetsShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LetsShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LetsShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LetsShop] SET  READ_WRITE
GO
ALTER DATABASE [LetsShop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LetsShop] SET  MULTI_USER
GO
ALTER DATABASE [LetsShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LetsShop] SET DB_CHAINING OFF
GO
USE [LetsShop]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NULL,
	[ShippingDate] [datetime] NULL,
	[TransactionStatus] [nvarchar](50) NULL,
	[PaymentDate] [datetime] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[BillingAddress] [nvarchar](500) NULL,
	[ShippingAddress] [nvarchar](500) NULL,
	[PhoneNumber] [bigint] NULL,
	[EmailId] [nvarchar](500) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (59, N'abd', CAST(0x0000A08401024AC9 AS DateTime), CAST(0x0000A08601024AC9 AS DateTime), N'Shipped', CAST(0x0000A08401024AC9 AS DateTime), CAST(1973 AS Decimal(18, 0)), N'marathahalli', N'Andheri', 1021534206, N'abd@hotmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (60, N'abd', CAST(0x0000A084012DC087 AS DateTime), CAST(0x0000A086012DC088 AS DateTime), N'Processing', CAST(0x0000A084012DC088 AS DateTime), CAST(4209 AS Decimal(18, 0)), N'marathahalli', N'Andheri', 1021534206, N'abd@hotmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (61, N'abd', CAST(0x0000A08500A6F407 AS DateTime), CAST(0x0000A08700A6F407 AS DateTime), N'Processing', CAST(0x0000A08500A6F407 AS DateTime), CAST(109905 AS Decimal(18, 0)), N'marathahalli', N'Andheri', 1021534206, N'abd@hotmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (62, N'deepak', CAST(0x0000A08500A7530C AS DateTime), CAST(0x0000A08700A7530C AS DateTime), N'Processing', CAST(0x0000A08500A7530C AS DateTime), CAST(133342 AS Decimal(18, 0)), N'BEML', N'Graphite', 6000210156, N'deepak@yahoo.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (64, N'deepak', CAST(0x0000A08500A7A015 AS DateTime), CAST(0x0000A08500C47B1B AS DateTime), N'Shipped', CAST(0x0000A08500A7A015 AS DateTime), CAST(895 AS Decimal(18, 0)), N'BEML', N'Graphite', 6000210156, N'deepak@yahoo.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (65, N'deepak', CAST(0x0000A08500A7B427 AS DateTime), CAST(0x0000A08700A7B427 AS DateTime), N'Processing', CAST(0x0000A08500A7B427 AS DateTime), CAST(84056 AS Decimal(18, 0)), N'BEML', N'Graphite', 6000210156, N'deepak@yahoo.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (66, N'deepak', CAST(0x0000A08500A7D6CF AS DateTime), CAST(0x0000A08700A7D6CF AS DateTime), N'Processing', CAST(0x0000A08500A7D6CF AS DateTime), CAST(79566 AS Decimal(18, 0)), N'BEML', N'Graphite', 6000210156, N'deepak@yahoo.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (67, N'ashok', CAST(0x0000A08500A8D056 AS DateTime), CAST(0x0000A08700A8D056 AS DateTime), N'Processing', CAST(0x0000A08500A8D056 AS DateTime), CAST(176206 AS Decimal(18, 0)), N'Baker Street', N'London', 8121501534, N'ashok@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (68, N'ashok', CAST(0x0000A08500A900C5 AS DateTime), CAST(0x0000A08700A900C5 AS DateTime), N'Processing', CAST(0x0000A08500A900C5 AS DateTime), CAST(205770 AS Decimal(18, 0)), N'Baker Street', N'London', 8121501534, N'ashok@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (69, N'ashok', CAST(0x0000A08500A927EE AS DateTime), CAST(0x0000A08700A927EE AS DateTime), N'Processing', CAST(0x0000A08500A927EE AS DateTime), CAST(59543 AS Decimal(18, 0)), N'Baker Street', N'London', 8121501534, N'ashok@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (70, N'nitish', CAST(0x0000A08500A99CBC AS DateTime), CAST(0x0000A08700A99CBD AS DateTime), N'Processing', CAST(0x0000A08500A99CBD AS DateTime), CAST(728 AS Decimal(18, 0)), N'Kundanahalli', N'Kundanahalli', 1021534251, N'nitish@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (71, N'nitish', CAST(0x0000A08500A9D7A6 AS DateTime), CAST(0x0000A08501583450 AS DateTime), N'Shipped', CAST(0x0000A08500A9D7A6 AS DateTime), CAST(107898 AS Decimal(18, 0)), N'Kundanahalli', N'Kundanahalli', 1021534251, N'nitish@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (72, N'ashaka', CAST(0x0000A08500AA8C80 AS DateTime), CAST(0x0000A08600A6B775 AS DateTime), N'Shipped', CAST(0x0000A08500AA8C80 AS DateTime), CAST(122233 AS Decimal(18, 0)), N'marathahalli', N'BEML', 1021534202, N'ashaka@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (74, N'akshitha', CAST(0x0000A0850136A087 AS DateTime), CAST(0x0000A0870136A087 AS DateTime), N'Processing', CAST(0x0000A0850136A087 AS DateTime), CAST(296 AS Decimal(18, 0)), N'Adelaide', N'Melbourne', 4021210156, N'akshitha@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (75, N'akshitha', CAST(0x0000A0850136AE6D AS DateTime), CAST(0x0000A0870136AE6D AS DateTime), N'Processing', CAST(0x0000A0850136AE6D AS DateTime), CAST(245 AS Decimal(18, 0)), N'Adelaide', N'Melbourne', 4021210156, N'akshitha@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (76, N'akshitha', CAST(0x0000A08501372AAF AS DateTime), CAST(0x0000A08701372AAF AS DateTime), N'Processing', CAST(0x0000A08501372AAF AS DateTime), CAST(432 AS Decimal(18, 0)), N'Adelaide', N'Melbourne', 4021210156, N'akshitha@gmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (77, N'abd', CAST(0x0000A0850154CAC0 AS DateTime), CAST(0x0000A0870154CAC0 AS DateTime), N'Processing', CAST(0x0000A0850154CAC0 AS DateTime), CAST(2449 AS Decimal(18, 0)), N'marathahalli', N'Andheri', 1021534206, N'abd@hotmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (85, N'abd', CAST(0x0000A086000021B5 AS DateTime), CAST(0x0000A088000021B5 AS DateTime), N'Processing', CAST(0x0000A086000021B5 AS DateTime), CAST(296 AS Decimal(18, 0)), N'marathahalli', N'Andheri', 1021534206, N'abd@hotmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (94, N'abd', CAST(0x0000A08600937C4C AS DateTime), CAST(0x0000A08800937C4C AS DateTime), N'Processing', CAST(0x0000A08600937C4C AS DateTime), CAST(636 AS Decimal(18, 0)), N'marathahalli', N'Andheri', 1021534206, N'abd@hotmail.com')
INSERT [dbo].[Orders] ([OrderId], [UserId], [OrderDate], [ShippingDate], [TransactionStatus], [PaymentDate], [TotalAmount], [BillingAddress], [ShippingAddress], [PhoneNumber], [EmailId]) VALUES (97, N'deepak', CAST(0x0000A08600A2B89E AS DateTime), CAST(0x0000A08800A2B89E AS DateTime), N'Processing', CAST(0x0000A08600A2B89E AS DateTime), CAST(864 AS Decimal(18, 0)), N'BEML', N'Graphite', 6000210156, N'deepak@yahoo.com')
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (69, 59, 19, CAST(245 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (70, 59, 21, CAST(432 AS Decimal(18, 0)), 4)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (71, 60, 19, CAST(245 AS Decimal(18, 0)), 5)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (72, 60, 20, CAST(296 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (73, 60, 22, CAST(163 AS Decimal(18, 0)), 5)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (74, 60, 25, CAST(366 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (75, 60, 35, CAST(479 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (76, 61, 19, CAST(245 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (77, 61, 21, CAST(432 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (78, 61, 42, CAST(32499 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (79, 61, 85, CAST(11299 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (80, 62, 19, CAST(245 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (81, 62, 57, CAST(37500 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (82, 62, 87, CAST(12799 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (83, 62, 84, CAST(19700 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (85, 64, 22, CAST(163 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (86, 64, 25, CAST(366 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (87, 65, 34, CAST(356 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (88, 65, 50, CAST(27900 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (89, 66, 21, CAST(432 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (90, 66, 37, CAST(483 AS Decimal(18, 0)), 4)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (91, 66, 89, CAST(18469 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (92, 66, 84, CAST(19700 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (93, 67, 51, CAST(38900 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (94, 67, 72, CAST(2400 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (95, 67, 66, CAST(48003 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (96, 68, 32, CAST(431 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (97, 68, 36, CAST(297 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (98, 68, 56, CAST(36099 AS Decimal(18, 0)), 4)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (99, 68, 70, CAST(60215 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (100, 69, 28, CAST(430 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (101, 69, 49, CAST(24999 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (102, 69, 76, CAST(7000 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (103, 69, 74, CAST(705 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (104, 70, 20, CAST(296 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (105, 70, 21, CAST(432 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (106, 71, 23, CAST(396 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (107, 71, 80, CAST(38752 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (108, 71, 59, CAST(14999 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (109, 72, 46, CAST(16499 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (110, 72, 42, CAST(32499 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (111, 72, 69, CAST(20368 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (115, 74, 20, CAST(296 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (116, 75, 19, CAST(245 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (117, 76, 21, CAST(432 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (118, 77, 26, CAST(487 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (119, 77, 24, CAST(521 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (120, 77, 28, CAST(430 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (121, 77, 19, CAST(245 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (126, 85, 20, CAST(296 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (135, 94, 27, CAST(318 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderId], [ProductId], [Price], [Quantity]) VALUES (139, 97, 21, CAST(432 AS Decimal(18, 0)), 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Books')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Mobiles')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Computers')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Cameras')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'VideoPlayers')
/****** Object:  Table [dbo].[Cart]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (267, N'akshitha', 22, 1)
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (277, N'nitish', 20, 1)
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (318, N'deepak', 19, 1)
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (319, N'deepak', 22, 2)
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (320, N'deepak', 52, 1)
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (343, N'abd', 28, 1)
INSERT [dbo].[Cart] ([CartId], [UserId], [ProductId], [Quantity]) VALUES (344, N'abd', 67, 3)
SET IDENTITY_INSERT [dbo].[Cart] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductDescription] [nvarchar](500) NOT NULL,
	[CategoryId] [numeric](18, 0) NOT NULL,
	[SubCategoryId] [numeric](18, 0) NOT NULL,
	[Price] [numeric](18, 0) NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[StockAvailability] [numeric](18, 0) NOT NULL,
	[Colour] [nvarchar](500) NOT NULL,
	[Size] [nvarchar](500) NOT NULL,
	[Picture] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Product] ON [dbo].[Product] 
(
	[ProductName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (19, N'Calico Joe 2', N'Book by John Grisham', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(245 AS Numeric(18, 0)), 500, CAST(1 AS Numeric(18, 0)), N'orange', N'9', N'http://localhost:49741/Images/calicojoe.jpeg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (20, N'Impeachment', N'Fiction by Anjali Deshpande', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(296 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), N'pink', N'9', N'http://localhost:49741/Images/impeachment.jpeg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (21, N'The Secret Crusade', N'Fiction by Oliver Bowden', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(432 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), N'gray', N'9', N'http://localhost:49741/Images/thesecretcrusade.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (22, N'The Alchemist', N'Inspiration from Paulo Coelho', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(163 AS Numeric(18, 0)), 4999, CAST(1 AS Numeric(18, 0)), N'yellow', N'9', N'http://localhost:49741/Images/book alchemist.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (23, N'Indian Philosophy', N'Vol 1 by S Radhakrishnan', CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(396 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'9', N'http://localhost:49741/Images/indianphilosophy.jpeg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (24, N'History of Western Philosophy', N'by Bertrand Russell', CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(521 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'9', N'http://localhost:49741/Images/historyofwesternphilosophy.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (25, N'Engineering Thermodynamics', N'Book by P.K.Nag', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(366 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'orange', N'9', N'http://localhost:49741/Images/engineeringthermodynamics.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (26, N'Principles of Physics', N'Book by Halliday , Resnick , Jearl Walker', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(487 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'9', N'http://localhost:49741/Images/principlesofphysics.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (27, N'Principles of Mathematical Analysis', N'Math book by Walter Rudin', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(318 AS Numeric(18, 0)), 4997, CAST(1 AS Numeric(18, 0)), N'maroon', N'9', N'http://localhost:49741/Images/principlesofmathematicalanalysis.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (28, N'Operating System Concepts', N'CS book by Silberschatz Galvin Gagne', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(430 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'Red', N'9', N'http://localhost:49741/Images/operatingsystemsconcepts.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (29, N'Data Communications and Networking', N'Book by Behrouz A Forouzan', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(365 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'9', N'http://localhost:49741/Images/datacommunicationsandnetworking.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (30, N'Constitution of India', N'Book by Durga Das Basu', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'gray', N'9', N'http://localhost:49741/Images/constitutionofindia.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (31, N'Java: The Complete Reference', N'Herbert Schildt', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(413 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'yellow-white', N'9', N'http://localhost:49741/Images/javathecompletereference.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (32, N'Head First SQL', N'Lynn Beighley', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(431 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'violet-white', N'9', N'http://localhost:49741/Images/headfirstsql.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (33, N'Head First Servlets And JSP', N'Bryan Basham , Kathy Sierra , Bert Bates', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(410 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'violet-white', N'9', N'http://localhost:49741/Images/headfirstservletsandjsp.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (34, N'Introduction to Algorithms', N'Thomas H. Cormen , Charles E. Leiserson', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(356 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'skyblue', N'9', N'http://localhost:49741/Images/introductiontoalgorithms.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (35, N'Statistics For Management', N'Richard I Levin', CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(479 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'9', N'http://localhost:49741/Images/statisticsformanagement.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (36, N'Management Tips', N'Harvard Business Review', CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(297 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'orange', N'9', N'http://localhost:49741/Images/managementtips.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (37, N'Financial Management', N'I M Pandey', CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(483 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'golden', N'9', N'http://localhost:49741/Images/financialmanagement.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (38, N'Marketing Management', N'Philip Kotler , Abraham Koshy', CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(559 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'9', N'http://localhost:49741/Images/marketingmanagement.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (39, N'Steve Jobs: The Exclusive Biography', N'Walter Isaacson', CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(629 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'gray', N'9', N'http://localhost:49741/Images/stevejobs.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (40, N'Napolean Bonaparte', N'Pearson publishers', CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(223 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'green', N'9', N'http://localhost:49741/Images/napoleanbonparte.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (41, N'Biography of Abraham Lincoln', N'Loard Charnwood', CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(113 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'9', N'http://localhost:49741/Images/abrahamlincoln.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (42, N'Nokia 808 PureView', N'Symbian Belle OS, 41 MP camera', CAST(2 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(32499 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/nokia808pureview.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (43, N'Nokia Lumia 710', N'Windows Phone 7.5 OS, 5MP camera', CAST(2 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(15240 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'12', N'http://localhost:49741/Images/nokialumia.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (44, N'Nokia 700', N'Symbian Belle OS', CAST(2 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(16190 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'12', N'http://localhost:49741/Images/nokia700.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (45, N'Nokia Asha 302', N'1 GHz Processor', CAST(2 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(6285 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'red', N'12', N'http://localhost:49741/Images/nokiaasha.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (46, N'Sony Xperia U', N'Android v2.3 OS', CAST(2 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(16499 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'blackandpurewhite', N'12', N'http://localhost:49741/Images/sonyxperiau.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (47, N'Sony Xperia S', N'Android v2.3 OS, 12 MP camera', CAST(2 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(30999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/sonyxperias.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (48, N'Sony Xperia Sola', N'3.7-inch TFT Touchscreen', CAST(2 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(19999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'red', N'14', N'http://localhost:49741/Images/sonyxperiasola.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (49, N'Sony Xperia P', N'8 MP Primary Camera', CAST(2 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(24999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'Red', N'12', N'http://localhost:49741/Images/sonyxperiap.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (50, N'Samsung Galaxy S 2 I9100', N'Android v4.0 OS Gingerbread', CAST(2 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(27900 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'nobleblack', N'15', N'http://localhost:49741/Images/samsunggalaxys2I9100.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (51, N'Samsung Galaxy S3', N'Android v4.0 OS, 8MP camera', CAST(2 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(38900 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'marblewhite', N'16', N'http://localhost:49741/Images/samsunggalaxys3.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (52, N'Samsung Star Duos B7722', N'Dual Standby SIM', CAST(2 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(9900 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/samsungstarduosb7722.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (53, N'BlackBerry Curve 9220', N'BlackBerry OS', CAST(2 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(11299 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/blackberrycurve9220.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (54, N'BlackBerry Torch 9810', N'BlackBerry 7 OS', CAST(2 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(27500 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'zincgrey', N'12', N'http://localhost:49741/Images/blackberrytorch9810.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (55, N'BlackBerry Curve 8520', N'BlackBerry OS', CAST(2 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(8999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/blackberrycurve8520.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (56, N'HTC One X', N'8 MP Primary Camera, only microSIM', CAST(2 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(36099 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'14', N'http://localhost:49741/Images/htconex.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (57, N'HTC Sensation XL', N'Android v2.3 OS, 8MP', CAST(2 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(37500 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'whitesilver', N'13', N'http://localhost:49741/Images/htcsensationxl.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (58, N'HTC Desire V', N'Android v4.0 OS, dualSIM', CAST(2 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(21999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'polarwhite', N'14', N'http://localhost:49741/Images/htcdesirev.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (59, N'HTC Desire C', N'Android v4.0 OS', CAST(2 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(14999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'polarwhite', N'14', N'http://localhost:49741/Images/htcdesirec.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (60, N'Supertooth Car Kit Buddy', N'Audio Enhancing with Mic, Voice recognition', CAST(2 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(4999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'6', N'http://localhost:49741/Images/supertoothbuddy.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (61, N'Panasonic RP-HV094GU-K Headphone', N'In-the-ear Headphones', CAST(2 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(199 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'8', N'http://localhost:49741/Images/panasonicheadphone.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (62, N'Philips SHB7110 Headset', N'In-the-ear', CAST(2 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(2999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'8', N'http://localhost:49741/Images/philipsshb7110.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (63, N'Nokia Battery BL-5C', N'1020 mAh Lithium Ion Battery', CAST(2 AS Numeric(18, 0)), CAST(12 AS Numeric(18, 0)), CAST(299 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'grey', N'4', N'http://localhost:49741/Images/nokiabl5c.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (64, N'Dell Alienware M14X', N'Win7 Intel Core i7 ', CAST(3 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(83846 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'14', N'http://localhost:49741/Images/dellalienwarem14x.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (65, N'Dell XPS 13 Ci5', N'Intel Core i5 4GB DDR3 RAM', CAST(3 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(62016 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'gray', N'13', N'http://localhost:49741/Images/dellxps13.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (66, N'Dell New Inspiron 15R', N'Intel Core i5 (3rd Generation)', CAST(3 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(48003 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'15', N'http://localhost:49741/Images/dellinspiron15R.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (67, N'Sony VAIO E Series', N'Intel Core i3 (2nd Generation)', CAST(3 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(31844 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'16', N'http://localhost:49741/Images/sonyvaioEseries.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (68, N'HP Pavilion G6-2005AX', N'AMD APU Quad Core A8', CAST(3 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(33390 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'16', N'http://localhost:49741/Images/hppavilionnotebookg6.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (69, N'HP DreamScreen 400', N'Atom Dual Core (1st Generation)', CAST(3 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(20368 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'gray', N'18', N'http://localhost:49741/Images/hpdreamscreen.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (70, N'Apple iMac MC309LL', N'21.5-Inch Desktop', CAST(3 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(60215 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'21', N'http://localhost:49741/Images/AppleIMac.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (71, N'Lenovo Essential', N'Atom Dual Core (1st Generation)', CAST(3 AS Numeric(18, 0)), CAST(14 AS Numeric(18, 0)), CAST(20121 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'21', N'http://localhost:49741/Images/lenovoc200.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (72, N'Apple Mouse', N'Apple MB112ZM/B', CAST(3 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), CAST(2400 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'4', N'http://localhost:49741/Images/applemb112zm.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (73, N'Apple Wireless Mouse', N'Apple MB829ZM/A ', CAST(3 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), CAST(3890 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'white', N'3', N'http://localhost:49741/Images/applewirelessmouse.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (74, N'Dell Sports backpack', N'Effective shock absorption', CAST(3 AS Numeric(18, 0)), CAST(15 AS Numeric(18, 0)), CAST(705 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'blackred', N'15', N'http://localhost:49741/Images/dellsportsbackpack.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (75, N'Sony Cybershot', N'DSC-S5000 Point & Shoot 14.1MP', CAST(4 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), CAST(5300 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'14', N'http://localhost:49741/Images/sonycybershotdscs5000pointshoot.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (76, N'Nikon Coolpix L26', N'L26 Point & Shoot (Black) 16.1 MP', CAST(4 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), CAST(7000 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/nikon-coolpix-l26.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (77, N'Canon PowerShot A', N'A 1200 Point & Shoot 12.1MP', CAST(4 AS Numeric(18, 0)), CAST(16 AS Numeric(18, 0)), CAST(8846 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'12', N'http://localhost:49741/Images/canon-a-1200-.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (78, N'Canon EOS 550D SLR', N'18 MP CMOS Carl-Zeiss', CAST(4 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), CAST(33995 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'8', N'http://localhost:49741/Images/canoneos550dslr.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (79, N'Nikon D3100 SLR', N'14.2 MP CMOS', CAST(4 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), CAST(29950 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'7', N'http://localhost:49741/Images/nikon-d3100-slr.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (80, N'Nikon D5100 SLR', N'16.2 MP CMOS', CAST(4 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), CAST(38752 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'9', N'http://localhost:49741/Images/nikon-d5100-slr.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (81, N'Canon EOS 600D', N'18.0 MP CMOS ', CAST(4 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), CAST(49460 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'7', N'http://localhost:49741/Images/canon-eos-600d-slr.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (82, N'Nikon D3200 SLR', N'24.2 MP CMOS', CAST(4 AS Numeric(18, 0)), CAST(17 AS Numeric(18, 0)), CAST(36812 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'red', N'8', N'http://localhost:49741/Images/nikon-d3200.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (83, N'Sony DCR-SX45E Camcorder', N'Carl Zeiss Vario-Tessar 60x optical zoom', CAST(4 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(15700 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'Red', N'10', N'http://localhost:49741/Images/sony-dcr-sx45e-camcorder.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (84, N'Sony HDR-CX190E Camcorder', N'Carl Zeiss Vario-Tessar 13MP', CAST(4 AS Numeric(18, 0)), CAST(18 AS Numeric(18, 0)), CAST(19700 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'10', N'http://localhost:49741/Images/sony-hdr-cx190-camcorder.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (85, N'Samsung 22D404 Television', N'Full HD, LCD TV', CAST(5 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(11299 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'22', N'http://localhost:49741/Images/samsung-22d404.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (86, N'Toshiba 32HV10ZE Television', N'1366 x 768 pixels HD', CAST(5 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(18130 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'32', N'http://localhost:49741/Images/toshiba-32hv10ze.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (87, N'LG Television', N'22 Inches HD LCD 22LK311', CAST(5 AS Numeric(18, 0)), CAST(19 AS Numeric(18, 0)), CAST(12799 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'22', N'http://localhost:49741/Images/lg-22lk311.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (88, N'Philips Home Theatre', N'5.1 HTS9520 Blu Ray', CAST(5 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(53999 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'5', N'http://localhost:49741/Images/philips-hts9520.jpg')
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDescription], [CategoryId], [SubCategoryId], [Price], [UnitsInStock], [StockAvailability], [Colour], [Size], [Picture]) VALUES (89, N'Sony Home Theatre', N'5.1 DAV- DZ640k', CAST(5 AS Numeric(18, 0)), CAST(20 AS Numeric(18, 0)), CAST(18469 AS Numeric(18, 0)), 5000, CAST(1 AS Numeric(18, 0)), N'black', N'5', N'http://localhost:49741/Images/sony-dav-dz640k.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[SubCategories]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryId] [int] NOT NULL,
	[SubCategoryName] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (1, N'Fiction', 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (2, N'Philosophy', 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (3, N'Academics', 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (4, N'Professional', 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (5, N'Management', 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (6, N'Biographies', 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (7, N'Nokia', 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (8, N'Sony', 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (9, N'Samsung', 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (10, N'Blackberry', 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (11, N'HTC', 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (12, N'Accessories', 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (13, N'Laptop', 3)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (14, N'Desktop', 3)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (15, N'ComputerPeripherals', 3)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (16, N'PointAndShoot', 4)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (17, N'SLR', 4)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (18, N'Camcorder', 4)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (19, N'Televisions', 5)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryName], [CategoryId]) VALUES (20, N'HomeTheaters', 5)
/****** Object:  Table [dbo].[UserDetails]    Script Date: 07/06/2012 17:47:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](500) NOT NULL,
	[EmailId] [nvarchar](500) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[FirstName] [nvarchar](500) NULL,
	[LastName] [nvarchar](500) NULL,
	[SecurityQuestion] [nvarchar](500) NULL,
	[SecurityAnswer] [nvarchar](500) NULL,
	[BillingAddress] [nvarchar](500) NULL,
	[ShippingAddress] [nvarchar](500) NULL,
	[CardNumber] [bigint] NULL,
	[CardType] [nvarchar](500) NULL,
	[CardExpiryDate] [datetime] NULL,
	[PhoneNumber] [bigint] NULL,
	[User_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomersDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserDetails] ON
INSERT [dbo].[UserDetails] ([CustomerId], [UserId], [EmailId], [Password], [FirstName], [LastName], [SecurityQuestion], [SecurityAnswer], [BillingAddress], [ShippingAddress], [CardNumber], [CardType], [CardExpiryDate], [PhoneNumber], [User_Type]) VALUES (1, N'abd', N'abd@hotmail.com', N'pass1', N'Ashok', N'Debnath', N'phone model ?', N'samsung', N'marathahalli', N'Andheri', 1234567890123456, N'VISA', CAST(0x0000B4FF00000000 AS DateTime), 1021534206, N'Admin')
INSERT [dbo].[UserDetails] ([CustomerId], [UserId], [EmailId], [Password], [FirstName], [LastName], [SecurityQuestion], [SecurityAnswer], [BillingAddress], [ShippingAddress], [CardNumber], [CardType], [CardExpiryDate], [PhoneNumber], [User_Type]) VALUES (2, N'ashaka', N'ashaka@gmail.com', N'12345', N'Ashaka4', N'Shukla', N'hobby ?', N'movies', N'marathahalli', N'BEML', 1545610215120524, N'MAESTRO', CAST(0x00010C3A00000000 AS DateTime), 1021534202, N'Guest')
INSERT [dbo].[UserDetails] ([CustomerId], [UserId], [EmailId], [Password], [FirstName], [LastName], [SecurityQuestion], [SecurityAnswer], [BillingAddress], [ShippingAddress], [CardNumber], [CardType], [CardExpiryDate], [PhoneNumber], [User_Type]) VALUES (3, N'nitish', N'nitish@gmail.com', N'12345', N'Nitish', N'mehter', N'Favorite game', N'Soccer', N'Kundanahalli', N'Kundanahalli', 1230124151474114, N'VISA', CAST(0x0000EBA900000000 AS DateTime), 1021534251, N'Guest')
INSERT [dbo].[UserDetails] ([CustomerId], [UserId], [EmailId], [Password], [FirstName], [LastName], [SecurityQuestion], [SecurityAnswer], [BillingAddress], [ShippingAddress], [CardNumber], [CardType], [CardExpiryDate], [PhoneNumber], [User_Type]) VALUES (6, N'ashok', N'ashok@gmail.com', N'12345', N'Ashok', N'Bijoy', N'Favorite channel ?', N'Discovery', N'Baker Street', N'London', 9876543210987654, N'MAESTRO', CAST(0x0000A6F700000000 AS DateTime), 8121501534, N'Guest')
INSERT [dbo].[UserDetails] ([CustomerId], [UserId], [EmailId], [Password], [FirstName], [LastName], [SecurityQuestion], [SecurityAnswer], [BillingAddress], [ShippingAddress], [CardNumber], [CardType], [CardExpiryDate], [PhoneNumber], [User_Type]) VALUES (42, N'deepak', N'deepak@yahoo.com', N'12345', N'Deepak', N'Soni', N'Favorite sport ?', N'Cricket', N'BEML', N'Graphite', 6230002112054511, N'MASTERCARD', CAST(0x0000DD0900000000 AS DateTime), 6000210156, N'Guest')
INSERT [dbo].[UserDetails] ([CustomerId], [UserId], [EmailId], [Password], [FirstName], [LastName], [SecurityQuestion], [SecurityAnswer], [BillingAddress], [ShippingAddress], [CardNumber], [CardType], [CardExpiryDate], [PhoneNumber], [User_Type]) VALUES (43, N'akshitha', N'akshitha@gmail.com', N'12345', N' Akshitha', N'Cillanki', N'Born in which city ?', N'Sydney', N'Adelaide', N'Melbourne', 4021202150151202, N'MASTERCARD', CAST(0x0000C0FF00000000 AS DateTime), 4021210156, N'Guest')
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser]
	@UserId nvarchar(500),
	@EmailId nvarchar(500),
	@Password nvarchar(500),
	@FirstName nvarchar(500),
	@LastName nvarchar(500),
	@SecurityQuestion nvarchar(500),
	@SecurityAnswer nvarchar(500),
	@BillingAddress nvarchar(500),
	@ShippingAddress nvarchar(500),
	@CardNumber bigint,
	@CardType nvarchar(500),
	@CardExpiryDate DateTime,
	@PhoneNumber bigint,
	@strMessage nvarchar(500) OUT
	
AS
BEGIN
	IF EXISTS(SELECT UserId from UserDetails where UserId=@UserId)
		BEGIN
			UPDATE UserDetails
			
			SET 
			EmailId = @EmailId, 
			Password = @Password,
			FirstName = @FirstName, 
			LastName = @LastName,
			SecurityQuestion = @SecurityQuestion, 
			SecurityAnswer = @SecurityAnswer, 
			BillingAddress = @BillingAddress, 
			ShippingAddress = @ShippingAddress,
			CardNumber = @CardNumber, 
			CardType = @CardType,
			CardExpiryDate = @CardExpiryDate, 
			PhoneNumber = @PhoneNumber,
			@strMessage = 'Your details have been updated successfully.'
			
			WHERE UserId = @UserId
		END
	ELSE
		SET @strMessage = 'Sorry! User does not exist.';
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateTransactionStatus]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateTransactionStatus]
	@OrderId int
as
BEGIN
	Update Orders
	SET [TransactionStatus] = 'Shipped'
	where [OrderId] = @OrderId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateProduct] 
	@ProductId int,
	@ProductName nvarchar(500),
	@ProductDescription nvarchar(500),
	@CategoryId int,
	@SubCategoryId int,
	@Price decimal,
	@Colour nvarchar(50),
	@Size nvarchar(50),
	@UnitsInStock int ,
	@StockAvailability numeric(18,0),
	@Picture nvarchar(500),
	@strMessage nvarchar(500) OUT 
AS
BEGIN
BEGIN TRY
	BEGIN TRANSACTION trnUpdateUser
IF EXISTS(SELECT ProductId FROM Product WHERE ProductId=@ProductId)
Begin
Update Product
SET 
	
	[ProductName]=@ProductName,
	[ProductDescription]=@ProductDescription,
	[CategoryId]=@CategoryId,
	[SubCategoryId]=@SubCategoryId,
	[Price]=@Price,
	[Colour]=@Colour,
	[Size]=@Size,
	[UnitsInStock]=@UnitsInStock,
	[StockAvailability]=@StockAvailability,
	[Picture]=@Picture
WHERE 
     
     [ProductId]=@ProductId
     SET @strMessage='Product Updated Successfully';
     END
	ELSE
	SET @strMessage='Error in Updating Product';
	COMMIT TRANSACTION trnUpdateUser
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION trnUpdateUser
			SET @strMessage='ERROR In Updating Cart';
		END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SignUp]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SignUp]

	@UserId nvarchar(50),
	@Password nvarchar(50),
	@EmailId nvarchar(255),
	@strMessage nvarchar(255) OUT
	
	AS
	BEGIN
	
	IF EXISTS(SELECT UserId from UserDetails where UserId = @UserId)
		BEGIN
			SET @strMessage = 'This UserId is not available. Please choose some other name.';
		END
	ELSE
		BEGIN
			insert into UserDetails(UserId, EmailId, Password, User_Type) values (@UserId, @EmailId, @Password, 'Guest')
			SET @strMessage = 'Your account is created successfully!';
		END
	
	END
GO
/****** Object:  StoredProcedure [dbo].[SearchProduct]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchProduct]
	-- Add the parameters for the stored procedure here
	@ProductName nvarchar(500)= null
	
AS
BEGIN
	SELECT * from Product where ProductName like '%'+@ProductName+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[RemoveFromCart]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[RemoveFromCart]
	@ProductId int,
	@UserId nvarchar(255) ,
	@strMessage nvarchar(500) OUT 
AS
BEGIN
	Delete from Cart where ProductId= @ProductId and UserId=@UserId
	SET @strMessage='Product Removed from Cart Successfully';
END
GO
/****** Object:  StoredProcedure [dbo].[RemainingProducts]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RemainingProducts] 
	-- Add the parameters for the stored procedure here
	@ProductId int,@Quantity int,@strMessages nvarchar(255) OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
declare @UnitsInStock int,@ProductName nvarchar(255);
    -- Insert statements for procedure here
	SELECT @UnitsInStock=UnitsInStock,@ProductName=ProductName from Product where ProductId= @ProductId
	if(@UnitsInStock =0)
	BEGIN
		SET @strMessages=@ProductName +'is out of stock'; 
	END
	else if (@UnitsInStock < @Quantity)
	BEGIN
		SET @strMessages=CONVERT(VARCHAR(6), @UnitsInStock)+' '+ @ProductName+' available currently';
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ReduceFromCart]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ReduceFromCart] 
	@ProductId int ,
	@UserId nvarchar(255) ,
	@strMessage nvarchar(500) OUT

AS

BEGIN
BEGIN TRY
	BEGIN TRANSACTION trnReduceFromCart
	
	Declare @quantitycount int;
	
	Select @quantitycount = Quantity from Cart WHERE 
	ProductId= @ProductId and
	UserId =@UserId
	
	UPDATE [dbo].Cart
	SET Quantity = Quantity - 1
	WHERE 
	ProductId= @ProductId and
	UserId =@UserId
	
	SET @strMessage='Product Reduced from Cart Successfully';

	if @quantitycount=1
		BEGIN
			Delete from Cart where ProductId= @ProductId and UserId=@UserId
			SET @strMessage='Product Removed from Cart Successfully';
		END
		COMMIT TRANSACTION trnReduceFromCart
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION trnReduceFromCart
	SET @strMessage='Error in reducing from cart.';
END CATCH
	
		
END
GO
/****** Object:  StoredProcedure [dbo].[ProductsInOrder]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductsInOrder]
	@getOrderId int,
	@ProductId int,
	@Price decimal(18,0),
	@Quantity int,
	@strMessage nvarchar(255) OUT

as
BEGIN
	
	declare @UnitsInStock int,@ProductName nvarchar(255);
	BEGIN
	
	INSERT INTO OrderDetails (
		[OrderId], [ProductId], 
		[Price], [Quantity]
	)
	
	values
	(
		@getOrderId, @ProductId, 
		@Price, @Quantity
	)
	UPDATE [dbo].Product 
	SET UnitsInStock = UnitsInStock-@Quantity 
	WHERE ProductId= @ProductId
	SET @strMessage='Your Order is placed. Thank You For Using Lets Shop!';
	
	END

END
GO
/****** Object:  StoredProcedure [dbo].[PriceFilter]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PriceFilter] 
	@CategoryName nvarchar(255),
	@Max int = null,
	@Min int = null,
	@Message nvarchar(255)  OUT 
AS
BEGIN
	SET NOCOUNT ON;
	
	if (@Max=0 and @Min=0)
	BEGIN
		select * from Product p where CategoryId = (Select CategoryId from Categories c where c.CategoryName = @CategoryName)
	END
	
	else if (@Min!=0 and @Max=0)
	BEGIN
		select * from Product p where (Price > @Min) and CategoryId = (Select CategoryId from Categories c where c.CategoryName = @CategoryName)
	END
	
	else if (@Max!=0 and @Min=0)
	BEGIN
		select * from Product p where (Price < @Max) and CategoryId = (Select CategoryId from Categories c where c.CategoryName = @CategoryName)
	END
	
	else if (@Max!=0 and @Min!=0)
	BEGIN
		select * from Product p where (Price BETWEEN @Min AND @Max) and CategoryId = (Select CategoryId from Categories c where c.CategoryName = @CategoryName)
	END
	
	SET @Message='Products of selected range has been displayed.';
END
GO
/****** Object:  StoredProcedure [dbo].[PlaceOrder]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PlaceOrder]
@UserId nvarchar(255),
@EmailId nvarchar(255),
@ShippingAddress nvarchar(255),
@BillingAddress nvarchar(255),
@PhoneNumber numeric(18,0),
@OrderDate DateTime,
@PaymentDate DateTime,
@ShippingDate DateTime,
@TotalAmount decimal(18, 0),
@strMessage nvarchar(500) OUT,
@getOrderId int OUT 

AS
BEGIN
BEGIN TRY
	BEGIN TRANSACTION trnPlaceOrder
Begin
Insert into Orders
(
	[UserId],
	[EmailId],
	[ShippingAddress],
	[BillingAddress],	
	[PhoneNumber],
	[TransactionStatus],
	[OrderDate],
	[PaymentDate],
	[ShippingDate],
	[TotalAmount]
	)
	values
	(
		@UserId,
		@EmailId,
		@ShippingAddress,
		@BillingAddress,
		@PhoneNumber,
		'Processing',
		@OrderDate,
		@PaymentDate,
		@ShippingDate,
		@TotalAmount
		)


     SET @getOrderId = SCOPE_IDENTITY();
     SET @strMessage = 'Your Order is placed. Thank You For Using Lets Shop!';
     END
   
		COMMIT TRANSACTION trnPlaceOrder
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION trnPlaceOrder
			SET @strMessage='Sorry! Order could not be placed.';
			SET @getOrderId = 0;
		END CATCH
		end
GO
/****** Object:  StoredProcedure [dbo].[CancelOrder]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CancelOrder]
	@UserId nvarchar(255),
	@OrderId int,
	@strMessage nvarchar(500) OUT
	
as
BEGIN
	IF EXISTS(SELECT * from Orders where UserId=@UserId and OrderId=@OrderId)
	BEGIN
		Declare @status nvarchar(50);
		
		Select @status = TransactionStatus from Orders 
						where UserId=@UserId and OrderId=@OrderId
		
		if @status='Processing'
		BEGIN
			Delete from Orders where UserId=@UserId and OrderId=@OrderId
			Delete from OrderDetails where OrderId=@OrderId
			SET @strMessage = 'Your Order has been cancelled successfully.';
		END
		else
		BEGIN
			SET @strMessage = 'Your Order has already been shipped!';
		END
	END
	ELSE
	BEGIN
		SET @strMessage = 'You cannot cancel this order!';
	END
END
GO
/****** Object:  StoredProcedure [dbo].[AddtoCart]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddtoCart] 
	-- Add the parameters for the stored procedure here
	@ProductId int ,
	@UserId nvarchar(255) ,
	@strMessage nvarchar(500) OUT
AS

BEGIN
BEGIN TRY
	BEGIN TRANSACTION trnAddToCart
	UPDATE [dbo].Cart
	SET Quantity = Quantity +1
	WHERE 
	ProductId= @ProductId and
	UserId =@UserId

	if @@ROWCOUNT=0

		BEGIN
			INSERT [dbo].[Cart]
			(
				UserId,
				ProductId,
				Quantity
			)
			VALUES
			(
				@UserId,
				@ProductId,
				1
			)
			SET @strMessage='Added to Cart Successfully';
			END
			COMMIT TRANSACTION trnAddToCart
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION trnAddToCart
			SET @strMessage='ERROR Adding To Cart';
		END CATCH
	
		
END
GO
/****** Object:  StoredProcedure [dbo].[LoginAfterForgotPassword]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[LoginAfterForgotPassword]
@UserId nvarchar(255),
@SecurityQuestion nvarchar(255),
@SecurityAnswer nvarchar(255),
@strMessage nvarchar(500) OUT 

as 
begin

if exists( select UserId from UserDetails where SecurityAnswer=@SecurityAnswer)
 SET @strMessage=(Select Password from UserDetails where UserId=@UserId);

end
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login] 

	
	@UserId nvarchar(50),
	@Password nvarchar(50),
	@strMessage nvarchar(50) OUT
	
    AS
	BEGIN
	
	IF EXISTS(SELECT UserId from UserDetails where UserId=@UserId)
	BEGIN
		IF EXISTS(Select User_Type from UserDetails where UserId=@UserId and Password=@Password)
			BEGIN
			SET @strMessage=(Select User_Type from UserDetails where UserId=@UserId and Password=@Password)+' logged in successfully';
			END
		ELSE
			SET @strMessage='Wrong Password';
	END
	ELSE
		SET @strMessage='Sorry! User does not exist.';
	END
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsers]

AS
BEGIN
	SELECT * from UserDetails
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserByUsername2]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserByUsername2]

	@UserId nvarchar(500) = null,
	@strMessage nvarchar(255) OUT

AS
BEGIN
	IF EXISTS(SELECT UserId from UserDetails where UserId=@UserId)
		BEGIN
			SELECT * from UserDetails where UserId = @UserId
			SET @strMessage = 'User Found.';
		END
	ELSE
		BEGIN
			SET @strMessage = 'The specified user does not exist.';
		END
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserByUsername]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserByUsername]

	@UserId nvarchar(500) = null

AS
BEGIN
	SELECT * from UserDetails where UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[GetUserById]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserById]
	
	@CustomerId numeric(18,0)=null

AS
BEGIN
	SELECT * from UserDetails where CustomerId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductsBySubCategory]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductsBySubCategory]
	@CategoryName nvarchar(255),
	@SubCategoryName nvarchar(255)
	

AS
BEGIN
	
	SELECT * from Product p where 
	p.SubCategoryId = (SELECT s.SubCategoryId from SubCategories s 
						where s.SubCategoryName = @SubCategoryName AND 
						s.CategoryId = (SELECT c.CategoryId from Categories c where c.CategoryName = @CategoryName))
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByCategory]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductsByCategory]
	@CategoryName nvarchar(255)

AS
BEGIN
	SELECT * from Product p where 
	p.SubCategoryId in (SELECT s.SubCategoryId from SubCategories s 
						where s.CategoryId = (SELECT c.CategoryId from Categories c where c.CategoryName = @CategoryName))
END
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProducts]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Product 
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductById]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetProductById] 
	@ProductId int
AS
BEGIN
	SELECT * FROM Product WHERE ProductId=@ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrders]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrders]

AS
BEGIN
	SELECT OrderId, UserId, OrderDate, TransactionStatus, PhoneNumber, EmailId from Orders
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetails2]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderDetails2]
	@OrderId int
as
BEGIN
	SELECT * from Orders d WHERE d.OrderId = @OrderId
END
GO
/****** Object:  StoredProcedure [dbo].[GetOrderDetails1]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderDetails1]
	@OrderId int
	
as
BEGIN
	SELECT ProductId, Quantity from OrderDetails d WHERE d.OrderId = @OrderId
END
GO
/****** Object:  StoredProcedure [dbo].[GetMyOrders]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMyOrders]
	@UserId nvarchar(500) = null
AS
BEGIN
	SELECT OrderId, UserId, OrderDate, TransactionStatus, PhoneNumber, EmailId, ShippingDate from Orders
	    where UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[GetFromCart]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFromCart]
	@UserId nvarchar(255)
AS
BEGIN
	SELECT * from Cart , Product 
		where UserId=@UserId and Cart.ProductId=Product.ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryNameById]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCategoryNameById]
	@CategoryId int,
	@SubCategoryId int
	
as
BEGIN
	Select c.CategoryName, s.SubCategoryName from Categories c,SubCategories s
	where c.CategoryId = @CategoryId and s.SubCategoryId = @SubCategoryId
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryIdByName]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCategoryIdByName]
	@CategoryName nvarchar(500),
	@SubCategoryName nvarchar(500)
	
as
BEGIN
	Select c.CategoryId, s.SubCategoryId from Categories c,SubCategories s
	where c.CategoryName = @CategoryName and s.SubCategoryName = @SubCategoryName
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCategories]

AS
BEGIN
	SELECT CategoryName from Categories
END
GO
/****** Object:  StoredProcedure [dbo].[EmptyCart]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmptyCart]
	@UserId nvarchar(255) ,
	@strMessage nvarchar(500) OUT 
AS
BEGIN
	Delete from Cart where UserId=@UserId
	SET @strMessage='Cart emptied successfully.';
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProduct] 
	@ProductId int ,
	@Message nvarchar(500) OUT 
AS
BEGIN
	IF EXISTS(SELECT ProductId FROM Product where ProductId=@ProductId)
	BEGIN
	Delete from Product where ProductId=@ProductId
	Set @Message='Product Deleted Successfully';
	END
	ELSE
	SET @Message='Product Id doesnot exists';
END
GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateProduct] 
	-- Add the parameters for the stored procedure here
	@ProductName nvarchar(500),
	@ProductDescription nvarchar(500),
	@CategoryId numeric(18,0),
	@SubCategoryId numeric(18,0),
	@Price numeric(18,0),
	@Colour nvarchar(500),
	@Size nvarchar(500),
	@UnitsInStock numeric(18,0) ,
	@StockAvailability numeric(18,0),
	@Picture nvarchar(500),
	@strMessage nvarchar(500) OUT 

AS
Begin 

BEGIN TRY
	BEGIN TRANSACTION trnCreateProduct
		INSERT into Product( 
			[ProductName], [ProductDescription], [CategoryId], 
			[SubCategoryId], [Price],
			[Colour], [Size], 
			[UnitsInStock], [StockAvailability],[Picture])
 
		Values(
			 @ProductName, @ProductDescription, @CategoryId, 
			 @SubCategoryId, @Price,
			 @Colour, @Size, 
			 @UnitsInStock, @StockAvailability, @Picture);
 
	Set @strMessage='Product Created Successfully';	
	COMMIT TRANSACTION trnCreateProduct
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION trnCreateProduct
	SET @strMessage='ERROR Adding Product';
END CATCH

end
GO
/****** Object:  StoredProcedure [dbo].[CheckOutDetails]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CheckOutDetails]
	@UserId nvarchar(255)

AS 
BEGIN
	SELECT p.ProductId, p.ProductDescription, p.Price, c.Quantity 
		from Cart c , Product p
	WHERE c.UserId=@UserId and p.ProductId=c.ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[ChangeStatus]    Script Date: 07/06/2012 17:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[ChangeStatus]
@OrderId int,
@UserId nvarchar(255),
@TransactionStatus nvarchar(255),
@ShippingDate DateTime,
@strMessage nvarchar(500) OUT
As
begin

	if Exists (Select OrderId,UserId from Orders where OrderId=@OrderId And UserId=@UserId)
	Begin
	Update Orders
	Set [TransactionStatus]=@TransactionStatus,
	[ShippingDate] =@ShippingDate
	where OrderId=@OrderId and UserId= @UserId
	set @strMessage='Transaction Status Updated Successfully'

end
end
GO
/****** Object:  Check [check_unitsinstock]    Script Date: 07/06/2012 17:47:49 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [check_unitsinstock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [check_unitsinstock]
GO
