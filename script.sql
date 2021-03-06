USE [master]
GO
/****** Object:  Database [ComputerShopping]    Script Date: 7/20/2022 6:30:36 AM ******/
CREATE DATABASE [ComputerShopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ComputerShopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ComputerShopping.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ComputerShopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ComputerShopping_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ComputerShopping] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ComputerShopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ComputerShopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ComputerShopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ComputerShopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ComputerShopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ComputerShopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [ComputerShopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ComputerShopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ComputerShopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ComputerShopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ComputerShopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ComputerShopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ComputerShopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ComputerShopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ComputerShopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ComputerShopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ComputerShopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ComputerShopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ComputerShopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ComputerShopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ComputerShopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ComputerShopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ComputerShopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ComputerShopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ComputerShopping] SET  MULTI_USER 
GO
ALTER DATABASE [ComputerShopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ComputerShopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ComputerShopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ComputerShopping] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ComputerShopping] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ComputerShopping] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ComputerShopping] SET QUERY_STORE = OFF
GO
USE [ComputerShopping]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/20/2022 6:30:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[UserID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [nchar](10) NULL,
	[Price] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/20/2022 6:30:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DayOrder] [date] NOT NULL,
	[TotalMoney] [money] NULL,
	[OrderStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK__Order__C3905BAF4D182AE4] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/20/2022 6:30:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[CategoryID] [int] NULL,
	[Amount] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/20/2022 6:30:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[categoryID] [int] NULL,
	[Description] [varchar](max) NULL,
	[Image] [varchar](200) NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[View] [int] NULL,
	[Date Added] [date] NULL,
	[SoldQuantity] [int] NULL,
 CONSTRAINT [PK__Product__2D10D14A1D85FB4E] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/20/2022 6:30:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK__ProductC__23CAF1F85851526E] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/20/2022 6:30:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[DOB] [date] NULL,
	[AccountType] [nvarchar](10) NULL,
	[PhoneNumber] [nvarchar](11) NULL,
	[City] [nvarchar](50) NULL,
	[Postcode] [nvarchar](10) NULL,
	[img] [nvarchar](200) NULL,
 CONSTRAINT [PK__User__1788CCAC1DF8FAA9] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (1, N'Logitech Gaming Mouse', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (3, N'Asus TUF Gaming Screen', 200, 1, N'This is a perfect logitech gaming house', N'https://www.powerplanetonline.com/cdnassets/asus_tuf_gaming_vg32vqr_01_l.jpg', 800, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (4, N'Logitech 2', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (7, N'Logitech 3', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (8, N'Logitech 4 ', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (9, N'Logitech 5', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (10, N'Logitech 6', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (11, N'Logitech 7', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (12, N'Logitech 8', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (13, N'Logitech 9', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
INSERT [dbo].[Product] ([productID], [productName], [amount], [categoryID], [Description], [Image], [Price], [Discount], [View], [Date Added], [SoldQuantity]) VALUES (14, N'Logitech 10', 200, 2, N'This is a perfect logitech gaming house', N'https://hanoicomputercdn.com/media/product/53012_mouse_logitech_g102_lightsync_rgb_black_0000_1.jpg', 400, 0, 0, CAST(N'2022-07-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([categoryID], [categoryName]) VALUES (1, N'Screen')
INSERT [dbo].[ProductCategory] ([categoryID], [categoryName]) VALUES (2, N'Mouse')
INSERT [dbo].[ProductCategory] ([categoryID], [categoryName]) VALUES (3, N'Speaker')
INSERT [dbo].[ProductCategory] ([categoryID], [categoryName]) VALUES (4, N'Bag')
INSERT [dbo].[ProductCategory] ([categoryID], [categoryName]) VALUES (5, N'Keyboard')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [Email], [Address], [Gender], [DOB], [AccountType], [PhoneNumber], [City], [Postcode], [img]) VALUES (1, N'dung', N'Dung2002', N'dungssj@gmail.com', N'Ha Noi', 1, CAST(N'2002-12-25' AS Date), N'User', N'0981517202', N'Ha Noi', N'100000', N'')
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Email], [Address], [Gender], [DOB], [AccountType], [PhoneNumber], [City], [Postcode], [img]) VALUES (2, N'admin', N'admin123', N'admin@gmail.com', N'', 1, NULL, N'Admin', N'0912345645', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__UserID__300424B4] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__UserID__300424B4]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Categ__4316F928] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([categoryID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Categ__4316F928]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__403A8C7D] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Order__403A8C7D]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__4222D4EF] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Produ__4222D4EF]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__UserI__412EB0B6] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__UserI__412EB0B6]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__2B3F6F97] FOREIGN KEY([categoryID])
REFERENCES [dbo].[ProductCategory] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__2B3F6F97]
GO
USE [master]
GO
ALTER DATABASE [ComputerShopping] SET  READ_WRITE 
GO
