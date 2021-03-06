CREATE DATABASE [ComputerShopping]
USE [master]
GO
/****** Object:  Database [ComputerShopping]    Script Date: 7/5/2022 11:48:09 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 7/5/2022 11:48:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NULL,
	[DayOrder] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/5/2022 11:48:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NULL,
	[UserID] [int] NULL,
	[ProductID] [int] NULL,
	[CategoryID] [int] NULL,
	[Amount] [int] NULL,
	[price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/5/2022 11:48:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] NOT NULL,
	[productName] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[categoryID] [int] NULL,
	[categoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/5/2022 11:48:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[categoryID] [int] NOT NULL,
	[categoryName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/5/2022 11:48:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([categoryID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[ProductCategory] ([categoryID])
GO
USE [master]
GO
ALTER DATABASE [ComputerShopping] SET  READ_WRITE 
GO
