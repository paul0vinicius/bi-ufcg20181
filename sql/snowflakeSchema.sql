USE [master]
GO
/****** Object:  Database [NorthwindSnowflakeSchema]    Script Date: 15/05/2018 22:17:28 ******/
CREATE DATABASE [NorthwindSnowflakeSchema]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NorthwindSnowflakeSchema', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NorthwindSnowflakeSchema.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NorthwindSnowflakeSchema_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\NorthwindSnowflakeSchema_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NorthwindSnowflakeSchema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET ARITHABORT OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET  MULTI_USER 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NorthwindSnowflakeSchema', N'ON'
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET QUERY_STORE = OFF
GO
USE [NorthwindSnowflakeSchema]
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
USE [NorthwindSnowflakeSchema]
GO
/****** Object:  Table [dbo].[category]    Script Date: 15/05/2018 22:17:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NULL,
	[picture] [image] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 15/05/2018 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[state] [int] NOT NULL,
	[country] [int] NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costumer]    Script Date: 15/05/2018 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costumer](
	[id] [int] NOT NULL,
	[company_name] [varchar](100) NOT NULL,
	[contact_name] [varchar](100) NOT NULL,
	[contact_title] [varchar](30) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[postal_code] [int] NULL,
	[fax] [int] NULL,
	[city] [int] NOT NULL,
 CONSTRAINT [PK_costumer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 15/05/2018 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[code] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[capital] [varchar](50) NOT NULL,
	[population] [int] NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emploeyee]    Script Date: 15/05/2018 22:17:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emploeyee](
	[id] [int] NOT NULL,
	[first_name] [varchar](30) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[title] [varchar](30) NOT NULL,
	[title_of_cortesy] [varchar](30) NOT NULL,
	[birth_date] [date] NOT NULL,
	[hire_date] [date] NOT NULL,
	[home_phone] [int] NOT NULL,
	[extension] [varchar](30) NOT NULL,
	[photo] [image] NULL,
	[notes] [varchar](150) NULL,
	[reports_to] [int] NULL,
	[address] [varchar](100) NOT NULL,
	[postal_code] [int] NOT NULL,
	[city] [int] NOT NULL,
 CONSTRAINT [PK_emploeyee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[month]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[month](
	[number] [int] NOT NULL,
	[name] [char](10) NOT NULL,
 CONSTRAINT [PK_month] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[quantity_per_unit] [int] NULL,
	[unit_price] [money] NOT NULL,
	[units_in_stock] [int] NULL,
	[discontinued] [bit] NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[region]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region](
	[code] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[country] [int] NOT NULL,
 CONSTRAINT [PK_region] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[unit_price] [money] NOT NULL,
	[discount] [money] NULL,
	[sales_amount] [int] NOT NULL,
	[freight] [money] NULL,
	[order_date] [date] NOT NULL,
	[due_date] [date] NULL,
	[shipped_date] [date] NOT NULL,
	[customer_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[shipper_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipper]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipper](
	[id] [int] NOT NULL,
	[company_name] [varchar](100) NOT NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_shipper] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[state]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[name] [varchar](50) NOT NULL,
	[type] [varchar](50) NULL,
	[code] [int] NOT NULL,
	[capital] [varchar](100) NOT NULL,
	[region] [int] NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[id] [int] NOT NULL,
	[companyName] [varchar](100) NOT NULL,
	[phone] [int] NOT NULL,
	[city] [int] NOT NULL,
 CONSTRAINT [PK_supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[time]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time](
	[date] [date] NOT NULL,
	[weekday_number] [int] NOT NULL,
	[week_of_year] [int] NOT NULL,
	[day_number_month] [int] NOT NULL,
	[day_number_year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[quarter] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_time] PRIMARY KEY CLUSTERED 
(
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[weekday]    Script Date: 15/05/2018 22:17:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[weekday](
	[number] [int] NOT NULL,
	[name] [char](10) NOT NULL,
 CONSTRAINT [PK_weekday] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[city]  WITH CHECK ADD  CONSTRAINT [FK_city_state] FOREIGN KEY([state])
REFERENCES [dbo].[state] ([code])
GO
ALTER TABLE [dbo].[city] CHECK CONSTRAINT [FK_city_state]
GO
ALTER TABLE [dbo].[costumer]  WITH CHECK ADD  CONSTRAINT [FK_costumer_city] FOREIGN KEY([city])
REFERENCES [dbo].[city] ([id])
GO
ALTER TABLE [dbo].[costumer] CHECK CONSTRAINT [FK_costumer_city]
GO
ALTER TABLE [dbo].[emploeyee]  WITH CHECK ADD  CONSTRAINT [FK_emploeyee_city] FOREIGN KEY([city])
REFERENCES [dbo].[city] ([id])
GO
ALTER TABLE [dbo].[emploeyee] CHECK CONSTRAINT [FK_emploeyee_city]
GO
ALTER TABLE [dbo].[emploeyee]  WITH CHECK ADD  CONSTRAINT [FK_emploeyee_emploeyee] FOREIGN KEY([reports_to])
REFERENCES [dbo].[emploeyee] ([id])
GO
ALTER TABLE [dbo].[emploeyee] CHECK CONSTRAINT [FK_emploeyee_emploeyee]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[region]  WITH CHECK ADD  CONSTRAINT [FK_region_country] FOREIGN KEY([country])
REFERENCES [dbo].[country] ([code])
GO
ALTER TABLE [dbo].[region] CHECK CONSTRAINT [FK_region_country]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_costumer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[costumer] ([id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_costumer]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_emploeyee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[emploeyee] ([id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_emploeyee]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_product]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_shipper] FOREIGN KEY([shipper_id])
REFERENCES [dbo].[shipper] ([id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_shipper]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_supplier] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[supplier] ([id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_supplier]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_time] FOREIGN KEY([order_date])
REFERENCES [dbo].[time] ([date])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_time]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_time1] FOREIGN KEY([due_date])
REFERENCES [dbo].[time] ([date])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_time1]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_time2] FOREIGN KEY([shipped_date])
REFERENCES [dbo].[time] ([date])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_time2]
GO
ALTER TABLE [dbo].[state]  WITH CHECK ADD  CONSTRAINT [FK_state_region] FOREIGN KEY([region])
REFERENCES [dbo].[region] ([code])
GO
ALTER TABLE [dbo].[state] CHECK CONSTRAINT [FK_state_region]
GO
ALTER TABLE [dbo].[supplier]  WITH CHECK ADD  CONSTRAINT [FK_supplier_city] FOREIGN KEY([city])
REFERENCES [dbo].[city] ([id])
GO
ALTER TABLE [dbo].[supplier] CHECK CONSTRAINT [FK_supplier_city]
GO
ALTER TABLE [dbo].[time]  WITH CHECK ADD  CONSTRAINT [FK_time_month] FOREIGN KEY([month])
REFERENCES [dbo].[month] ([number])
GO
ALTER TABLE [dbo].[time] CHECK CONSTRAINT [FK_time_month]
GO
ALTER TABLE [dbo].[time]  WITH CHECK ADD  CONSTRAINT [FK_time_weekday] FOREIGN KEY([weekday_number])
REFERENCES [dbo].[weekday] ([number])
GO
ALTER TABLE [dbo].[time] CHECK CONSTRAINT [FK_time_weekday]
GO
USE [master]
GO
ALTER DATABASE [NorthwindSnowflakeSchema] SET  READ_WRITE 
GO
