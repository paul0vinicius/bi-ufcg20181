USE [master]
GO
/****** Object:  Database [NorthwindStarSchema]    Script Date: 15/05/2018 21:08:06 ******/
CREATE DATABASE [NorthwindStarSchema]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NorthwindStarSchema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NorthwindStarSchema.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NorthwindStarSchema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NorthwindStarSchema_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NorthwindStarSchema] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NorthwindStarSchema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NorthwindStarSchema] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET ARITHABORT OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NorthwindStarSchema] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NorthwindStarSchema] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NorthwindStarSchema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NorthwindStarSchema] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NorthwindStarSchema] SET  MULTI_USER 
GO
ALTER DATABASE [NorthwindStarSchema] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NorthwindStarSchema] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NorthwindStarSchema] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NorthwindStarSchema] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NorthwindStarSchema] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NorthwindStarSchema] SET QUERY_STORE = OFF
GO
USE [NorthwindStarSchema]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [NorthwindStarSchema]
GO
/****** Object:  Table [dbo].[CustomerDimID]    Script Date: 15/05/2018 21:08:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDimID](
	[CustomerDimID] [int] NOT NULL,
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_CustomerDimID] PRIMARY KEY CLUSTERED 
(
	[CustomerDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesDim]    Script Date: 15/05/2018 21:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesDim](
	[EmployeesDimID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](10) NULL,
	[LastName] [nvarchar](20) NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[ReportsTo] [int] NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[TerritoryDescription] [nchar](50) NULL,
	[RegionDescription] [nchar](50) NULL,
 CONSTRAINT [PK_EmployeesDim] PRIMARY KEY CLUSTERED 
(
	[EmployeesDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersFact]    Script Date: 15/05/2018 21:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersFact](
	[OrderFactID] [int] NOT NULL,
	[ProductDimID] [int] NULL,
	[CustomerDimID] [int] NULL,
	[ShippersDimID] [int] NULL,
	[SuppliersDimID] [int] NULL,
	[EmployeesDimID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
	[ShipName] [nchar](40) NULL,
	[ShipAddress] [nchar](60) NULL,
	[ShipCity] [nchar](15) NULL,
	[ShipRegion] [nchar](15) NULL,
	[ShipPostalCode] [nchar](10) NULL,
	[ShipCountry] [nchar](15) NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_OrdersFact] PRIMARY KEY CLUSTERED 
(
	[OrderFactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDim]    Script Date: 15/05/2018 21:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDim](
	[ProductDimID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](40) NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NULL,
	[SupplierID] [int] NULL,
	[CategoryName] [nvarchar](15) NULL,
	[UnitsInStock] [smallint] NULL,
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_ProductDim] PRIMARY KEY CLUSTERED 
(
	[ProductDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippersDim]    Script Date: 15/05/2018 21:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippersDim](
	[ShippersDimID] [int] NOT NULL,
	[ShippersID] [int] NOT NULL,
	[CompanyName] [nchar](10) NULL,
	[Phone] [nchar](10) NULL,
 CONSTRAINT [PK_ShippersDim] PRIMARY KEY CLUSTERED 
(
	[ShippersDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuppliersDim]    Script Date: 15/05/2018 21:08:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppliersDim](
	[SuppliersDimID] [int] NOT NULL,
	[SuppliersID] [int] NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
 CONSTRAINT [PK_SuppliersDim] PRIMARY KEY CLUSTERED 
(
	[SuppliersDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrdersFact]  WITH CHECK ADD  CONSTRAINT [FK_OrdersFact_CustomerDimID] FOREIGN KEY([CustomerDimID])
REFERENCES [dbo].[CustomerDimID] ([CustomerDimID])
GO
ALTER TABLE [dbo].[OrdersFact] CHECK CONSTRAINT [FK_OrdersFact_CustomerDimID]
GO
ALTER TABLE [dbo].[OrdersFact]  WITH CHECK ADD  CONSTRAINT [FK_OrdersFact_EmployeesDim] FOREIGN KEY([EmployeesDimID])
REFERENCES [dbo].[EmployeesDim] ([EmployeesDimID])
GO
ALTER TABLE [dbo].[OrdersFact] CHECK CONSTRAINT [FK_OrdersFact_EmployeesDim]
GO
ALTER TABLE [dbo].[OrdersFact]  WITH CHECK ADD  CONSTRAINT [FK_OrdersFact_ProductDim] FOREIGN KEY([ProductDimID])
REFERENCES [dbo].[ProductDim] ([ProductDimID])
GO
ALTER TABLE [dbo].[OrdersFact] CHECK CONSTRAINT [FK_OrdersFact_ProductDim]
GO
ALTER TABLE [dbo].[OrdersFact]  WITH CHECK ADD  CONSTRAINT [FK_OrdersFact_ShippersDim] FOREIGN KEY([ShippersDimID])
REFERENCES [dbo].[ShippersDim] ([ShippersDimID])
GO
ALTER TABLE [dbo].[OrdersFact] CHECK CONSTRAINT [FK_OrdersFact_ShippersDim]
GO
ALTER TABLE [dbo].[OrdersFact]  WITH CHECK ADD  CONSTRAINT [FK_OrdersFact_SuppliersDim] FOREIGN KEY([SuppliersDimID])
REFERENCES [dbo].[SuppliersDim] ([SuppliersDimID])
GO
ALTER TABLE [dbo].[OrdersFact] CHECK CONSTRAINT [FK_OrdersFact_SuppliersDim]
GO
USE [master]
GO
ALTER DATABASE [NorthwindStarSchema] SET  READ_WRITE 
GO
