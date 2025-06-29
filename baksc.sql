USE [master]
GO
/****** Object:  Database [NCGCRM_New1]    Script Date: 6/5/2025 6:56:53 AM ******/
CREATE DATABASE [NCGCRM_New1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NCGCRM_New1', FILENAME = N'D:\MyApps\DataBase\NCGCRM_New1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NCGCRM_New1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\NCGCRM_New1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [NCGCRM_New1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NCGCRM_New1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NCGCRM_New1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET ARITHABORT OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NCGCRM_New1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NCGCRM_New1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NCGCRM_New1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NCGCRM_New1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET RECOVERY FULL 
GO
ALTER DATABASE [NCGCRM_New1] SET  MULTI_USER 
GO
ALTER DATABASE [NCGCRM_New1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NCGCRM_New1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NCGCRM_New1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NCGCRM_New1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NCGCRM_New1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NCGCRM_New1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NCGCRM_New1', N'ON'
GO
ALTER DATABASE [NCGCRM_New1] SET QUERY_STORE = ON
GO
ALTER DATABASE [NCGCRM_New1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [NCGCRM_New1]
GO
/****** Object:  Schema [Developer]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE SCHEMA [Developer]
GO
/****** Object:  Schema [General]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE SCHEMA [General]
GO
/****** Object:  Schema [Request]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE SCHEMA [Request]
GO
/****** Object:  Schema [System]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE SCHEMA [System]
GO
/****** Object:  Table [General].[ABType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[ABType](
	[ABTypeId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_ABType] PRIMARY KEY CLUSTERED 
(
	[ABTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[BobinInnerDiameter]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[BobinInnerDiameter](
	[BobinInnerDiameterId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BobinInnerDiameter] PRIMARY KEY CLUSTERED 
(
	[BobinInnerDiameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[Company]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[CustomPackingType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[CustomPackingType](
	[CustomPackingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PrintRequestId] [int] NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_UserPackingType] PRIMARY KEY CLUSTERED 
(
	[CustomPackingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[Description]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[Description](
	[DescriptionId] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[OrderDesc] [int] NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED 
(
	[DescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[DescriptionType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[DescriptionType](
	[DescriptionTypeId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DescriptionType] PRIMARY KEY CLUSTERED 
(
	[DescriptionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[Menu]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[CompanyId] [int] NOT NULL,
	[IsVisible] [bit] NULL,
	[Path] [nvarchar](max) NULL,
	[CreateDateTime] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[RemoteAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_cmsMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[PackingGroup]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[PackingGroup](
	[PackingGroupId] [int] NOT NULL,
	[PackingGroupTitle] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_PackingGroup] PRIMARY KEY CLUSTERED 
(
	[PackingGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_PackingGroup] UNIQUE NONCLUSTERED 
(
	[PackingGroupTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[PackingType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[PackingType](
	[PackingTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Image] [varbinary](max) NULL,
	[CreateUserId] [int] NULL,
	[CreateDateTime] [datetime] NULL,
	[RemoteAddress] [nvarchar](max) NULL,
	[PackingGroupId] [int] NOT NULL,
 CONSTRAINT [PK_PackingType] PRIMARY KEY CLUSTERED 
(
	[PackingTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_PackingType] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[PackingTypeCondition]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[PackingTypeCondition](
	[PackingTypeConditionId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryId] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[ProductTypeDetailId] [int] NOT NULL,
	[ProductLayerId] [int] NOT NULL,
	[IsTwisted] [bit] NOT NULL,
	[IsHeatSeal] [bit] NULL,
	[IsColdSeal] [bit] NULL,
	[PackingTypeId] [int] NOT NULL,
	[CreateUser] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PackingTypeCondition] PRIMARY KEY CLUSTERED 
(
	[PackingTypeConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[PackingTypeDukht]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[PackingTypeDukht](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackingTypeId] [int] NOT NULL,
	[DukhtTitle] [nvarchar](256) NOT NULL,
	[DukhtImage] [varbinary](max) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDatetime] [datetime] NOT NULL,
 CONSTRAINT [PK_PackingTypeDukht] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_PackingTypeDukht] UNIQUE NONCLUSTERED 
(
	[DukhtTitle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[PartialType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[PartialType](
	[PartialTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Image] [varbinary](max) NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_PartialType] PRIMARY KEY CLUSTERED 
(
	[PartialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_PartialType] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[PhotoCellType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[PhotoCellType](
	[PhotoCellTypeId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PhotoCellType] PRIMARY KEY CLUSTERED 
(
	[PhotoCellTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_PhotoCellType] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[Picture]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[Picture](
	[PictureId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[PictureTypeId] [int] NOT NULL,
	[Picture] [varbinary](max) NULL,
	[CreateUser] [nvarchar](max) NULL,
	[CreateDateTime] [datetime] NULL,
	[RemoteAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Picture] PRIMARY KEY CLUSTERED 
(
	[PictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[ProductCategory]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [nvarchar](max) NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[ProductLayer]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[ProductLayer](
	[ProductLayerId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductLayer] PRIMARY KEY CLUSTERED 
(
	[ProductLayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[ProductType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[ProductType](
	[ProductTypeId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[ProductTypeDetail]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[ProductTypeDetail](
	[ProductTypeDetailId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductTypeDetail] PRIMARY KEY CLUSTERED 
(
	[ProductTypeDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ProductTypeDetail] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[ReelDirection]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[ReelDirection](
	[ReelDirectionId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Image] [varbinary](max) NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_ReelDirection] PRIMARY KEY CLUSTERED 
(
	[ReelDirectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[Role]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[Role](
	[RoleId] [int] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[User]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](256) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[CreateUserId] [int] NULL,
	[CreateDateTime] [datetime] NULL,
	[RemoteAddress] [nvarchar](max) NULL,
	[CallNumber] [nvarchar](max) NULL,
	[LastVerificationCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [General].[UserAccess]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[UserAccess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ControllerName] [nvarchar](256) NOT NULL,
	[MetohdName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_UserAccess_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[UserCustomerSaleMan]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[UserCustomerSaleMan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleManUserId] [int] NOT NULL,
	[CustomerUserId] [int] NOT NULL,
	[CreateUser] [int] NOT NULL,
	[CreateDatetime] [datetime] NOT NULL,
 CONSTRAINT [PK_General.UserCustomerSaleMan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[UserMenu]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[UserMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[MenuId] [int] NULL,
 CONSTRAINT [PK_UserAccess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [General].[UserRole]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [General].[UserRole](
	[UserRolId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreateUser] [nvarchar](max) NULL,
	[CreateDateTime] [datetime] NULL,
	[RemoteAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserRole_1] PRIMARY KEY CLUSTERED 
(
	[UserRolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Request].[PrintRequest]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Request].[PrintRequest](
	[PrintRequestId] [int] IDENTITY(1,1) NOT NULL,
	[PrintRequestNumber] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductName] [nvarchar](256) NOT NULL,
	[ProductCategoryId] [int] NOT NULL,
	[ProductTypeId] [int] NOT NULL,
	[ProductTypeDetailId] [int] NULL,
	[OrderWeight] [int] NOT NULL,
	[ProductLayerId] [int] NOT NULL,
	[ColdsealWith] [int] NULL,
	[ColdsealHeight] [int] NULL,
	[PackingTypeId] [int] NULL,
	[IsPartial] [bit] NULL,
	[PartialTypeId] [int] NULL,
	[BobinInnerDiameterId] [int] NOT NULL,
	[BobinOuterDiameterId] [int] NOT NULL,
	[ABTypeId] [int] NULL,
	[VerticalABWidth] [int] NULL,
	[HorizontalABWidth] [int] NULL,
	[IsReelDirectionBasedOnText] [bit] NULL,
	[TopReelDirectionTypeId] [int] NULL,
	[BottomReelDirectionTypeId] [int] NULL,
	[IsPrintSample] [bit] NOT NULL,
	[PrintSampleDescription] [nvarchar](max) NULL,
	[IsPhotoCell] [bit] NOT NULL,
	[IsHeatSeal] [bit] NOT NULL,
	[IsTwist] [bit] NOT NULL,
	[IsColdSeal] [bit] NOT NULL,
	[WizardId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[RequestDate] [char](10) NOT NULL,
	[RequestTime] [char](8) NOT NULL,
	[CreateUserId] [int] NOT NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](256) NULL,
 CONSTRAINT [PK_PrintRequest] PRIMARY KEY CLUSTERED 
(
	[PrintRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Request].[PrintRequestStatusEnum]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Request].[PrintRequestStatusEnum](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PrintRequestStatusEnum] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Request].[PrintRequestStatusHistory]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Request].[PrintRequestStatusHistory](
	[PrintRequestStatusHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[PrintRequestId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[PersianDate] [char](10) NOT NULL,
	[PersianTime] [char](8) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[CreateUser] [int] NOT NULL,
	[RemoteAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_PrintRequestStatusHistory] PRIMARY KEY CLUSTERED 
(
	[PrintRequestStatusHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Request].[ProductLayout]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Request].[ProductLayout](
	[ProductLayoutId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[BobinWidth] [int] NOT NULL,
	[PhotoCellHeight] [int] NOT NULL,
	[PrintRequestId] [int] NOT NULL,
	[CreateUser] [int] NOT NULL,
	[CreateDatetime] [datetime] NOT NULL,
	[RemoteAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductLayout] PRIMARY KEY CLUSTERED 
(
	[ProductLayoutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductCategory]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProductCategory] ON [General].[ProductCategory]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductLayer]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProductLayer] ON [General].[ProductLayer]
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 6/5/2025 6:56:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [General].[User]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [General].[CustomPackingType]  WITH CHECK ADD  CONSTRAINT [FK_CustomPackingType_PrintRequest] FOREIGN KEY([PrintRequestId])
REFERENCES [Request].[PrintRequest] ([PrintRequestId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [General].[CustomPackingType] CHECK CONSTRAINT [FK_CustomPackingType_PrintRequest]
GO
ALTER TABLE [General].[Description]  WITH CHECK ADD  CONSTRAINT [FK_Description_DescriptionType] FOREIGN KEY([DescriptionTypeId])
REFERENCES [General].[DescriptionType] ([DescriptionTypeId])
GO
ALTER TABLE [General].[Description] CHECK CONSTRAINT [FK_Description_DescriptionType]
GO
ALTER TABLE [General].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Company] FOREIGN KEY([CompanyId])
REFERENCES [General].[Company] ([CompanyId])
GO
ALTER TABLE [General].[Menu] CHECK CONSTRAINT [FK_Menu_Company]
GO
ALTER TABLE [General].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Menu] FOREIGN KEY([ParentId])
REFERENCES [General].[Menu] ([Id])
GO
ALTER TABLE [General].[Menu] CHECK CONSTRAINT [FK_Menu_Menu]
GO
ALTER TABLE [General].[PackingType]  WITH CHECK ADD  CONSTRAINT [FK_PackingType_PackingGroup] FOREIGN KEY([PackingGroupId])
REFERENCES [General].[PackingGroup] ([PackingGroupId])
ON DELETE CASCADE
GO
ALTER TABLE [General].[PackingType] CHECK CONSTRAINT [FK_PackingType_PackingGroup]
GO
ALTER TABLE [General].[PackingTypeCondition]  WITH CHECK ADD  CONSTRAINT [FK_PackingTypeCondition_PackingType] FOREIGN KEY([PackingTypeId])
REFERENCES [General].[PackingType] ([PackingTypeId])
GO
ALTER TABLE [General].[PackingTypeCondition] CHECK CONSTRAINT [FK_PackingTypeCondition_PackingType]
GO
ALTER TABLE [General].[PackingTypeCondition]  WITH CHECK ADD  CONSTRAINT [FK_PackingTypeCondition_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [General].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [General].[PackingTypeCondition] CHECK CONSTRAINT [FK_PackingTypeCondition_ProductCategory]
GO
ALTER TABLE [General].[PackingTypeCondition]  WITH CHECK ADD  CONSTRAINT [FK_PackingTypeCondition_ProductLayer] FOREIGN KEY([ProductLayerId])
REFERENCES [General].[ProductLayer] ([ProductLayerId])
GO
ALTER TABLE [General].[PackingTypeCondition] CHECK CONSTRAINT [FK_PackingTypeCondition_ProductLayer]
GO
ALTER TABLE [General].[PackingTypeCondition]  WITH CHECK ADD  CONSTRAINT [FK_PackingTypeCondition_ProductTypeDetail] FOREIGN KEY([ProductTypeDetailId])
REFERENCES [General].[ProductTypeDetail] ([ProductTypeDetailId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [General].[PackingTypeCondition] CHECK CONSTRAINT [FK_PackingTypeCondition_ProductTypeDetail]
GO
ALTER TABLE [General].[PackingTypeDukht]  WITH CHECK ADD  CONSTRAINT [FK_CreateUser] FOREIGN KEY([CreateUserId])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [General].[PackingTypeDukht] CHECK CONSTRAINT [FK_CreateUser]
GO
ALTER TABLE [General].[PackingTypeDukht]  WITH CHECK ADD  CONSTRAINT [FK_PackingType] FOREIGN KEY([PackingTypeId])
REFERENCES [General].[PackingType] ([PackingTypeId])
GO
ALTER TABLE [General].[PackingTypeDukht] CHECK CONSTRAINT [FK_PackingType]
GO
ALTER TABLE [General].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [General].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [General].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_ProductCategory]
GO
ALTER TABLE [General].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Company] FOREIGN KEY([CompanyId])
REFERENCES [General].[Company] ([CompanyId])
GO
ALTER TABLE [General].[User] CHECK CONSTRAINT [FK_User_Company]
GO
ALTER TABLE [General].[UserCustomerSaleMan]  WITH CHECK ADD  CONSTRAINT [FK_UserCustomerSaleMan_CreatorUser] FOREIGN KEY([CreateUser])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [General].[UserCustomerSaleMan] CHECK CONSTRAINT [FK_UserCustomerSaleMan_CreatorUser]
GO
ALTER TABLE [General].[UserCustomerSaleMan]  WITH CHECK ADD  CONSTRAINT [FK_UserCustomerSaleMan_CustomerUser] FOREIGN KEY([CustomerUserId])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [General].[UserCustomerSaleMan] CHECK CONSTRAINT [FK_UserCustomerSaleMan_CustomerUser]
GO
ALTER TABLE [General].[UserCustomerSaleMan]  WITH CHECK ADD  CONSTRAINT [FK_UserCustomerSaleMan_SaleManUser] FOREIGN KEY([SaleManUserId])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [General].[UserCustomerSaleMan] CHECK CONSTRAINT [FK_UserCustomerSaleMan_SaleManUser]
GO
ALTER TABLE [General].[UserMenu]  WITH CHECK ADD  CONSTRAINT [FK_UserMenu_Menu] FOREIGN KEY([MenuId])
REFERENCES [General].[Menu] ([Id])
GO
ALTER TABLE [General].[UserMenu] CHECK CONSTRAINT [FK_UserMenu_Menu]
GO
ALTER TABLE [General].[UserMenu]  WITH CHECK ADD  CONSTRAINT [FK_UserMenu_User] FOREIGN KEY([UserId])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [General].[UserMenu] CHECK CONSTRAINT [FK_UserMenu_User]
GO
ALTER TABLE [General].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [General].[Role] ([RoleId])
GO
ALTER TABLE [General].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [General].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [General].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_ABType] FOREIGN KEY([ABTypeId])
REFERENCES [General].[ABType] ([ABTypeId])
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_ABType]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_PackingType] FOREIGN KEY([PackingTypeId])
REFERENCES [General].[PackingType] ([PackingTypeId])
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_PackingType]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_PartialType] FOREIGN KEY([PartialTypeId])
REFERENCES [General].[PartialType] ([PartialTypeId])
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_PartialType]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_PrintRequest] FOREIGN KEY([PrintRequestId])
REFERENCES [Request].[PrintRequest] ([PrintRequestId])
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_PrintRequest]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [General].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_ProductCategory]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_ProductTypeDetail] FOREIGN KEY([ProductTypeDetailId])
REFERENCES [General].[ProductTypeDetail] ([ProductTypeDetailId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_ProductTypeDetail]
GO
ALTER TABLE [Request].[PrintRequest]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequest_User] FOREIGN KEY([UserId])
REFERENCES [General].[User] ([UserId])
GO
ALTER TABLE [Request].[PrintRequest] CHECK CONSTRAINT [FK_PrintRequest_User]
GO
ALTER TABLE [Request].[PrintRequestStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_PrintRequestStatusHistory_PrintRequest] FOREIGN KEY([PrintRequestId])
REFERENCES [Request].[PrintRequest] ([PrintRequestId])
ON DELETE CASCADE
GO
ALTER TABLE [Request].[PrintRequestStatusHistory] CHECK CONSTRAINT [FK_PrintRequestStatusHistory_PrintRequest]
GO
ALTER TABLE [Request].[ProductLayout]  WITH CHECK ADD  CONSTRAINT [FK_ProductLayout_ProductLayout] FOREIGN KEY([PrintRequestId])
REFERENCES [Request].[PrintRequest] ([PrintRequestId])
ON DELETE CASCADE
GO
ALTER TABLE [Request].[ProductLayout] CHECK CONSTRAINT [FK_ProductLayout_ProductLayout]
GO
/****** Object:  StoredProcedure [dbo].[SpInsetPackingType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SpInsetPackingType]
(
@Title nvarchar(256),
@Image varbinary(max),
@CreateUserId INT,
@CreateDateTime datetime,
@RemoteAddress nvarchar(max)
)AS

INSERT INTO [General].[PackingType]
           ([Title]
           ,[Image]
           ,[CreateUserId]
           ,[CreateDateTime]
           ,[RemoteAddress]
          )
     VALUES
           (@Title ,
           @Image ,
           @CreateUserId ,
           @CreateDateTime ,
           @RemoteAddress
          )




GO
/****** Object:  StoredProcedure [dbo].[SpInsetPhotoCelType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SpInsetPhotoCelType]
(
@PhotoCellTypeId INT,
@Title nvarchar(256),
@Image varbinary(max),
@CreateUserId INT,
@CreateDateTime datetime,
@RemoteAddress nvarchar(max)
)AS
INSERT INTO [General].[PhotoCellType]
           ([PhotoCellTypeId]
           ,[Title]
           ,[Image]
           ,[CreateUserId]
           ,[CreateDateTime]
           ,[RemoteAddress])
     VALUES
           (@PhotoCellTypeId,
            @Title,
           @Image,          
		   1,
           @CreateDateTime,
           @RemoteAddress)




GO
/****** Object:  StoredProcedure [dbo].[SpUpdateABType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpUpdateABType]
(
@Id int,
@Image VARBINARY(MAX)
)AS

UPDATE [General].[ABType] SET [Image]=@Image WHERE ABTypeId=@Id




GO
/****** Object:  StoredProcedure [dbo].[SpUpdatePackingType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpUpdatePackingType]
(
@Id int,
@Image VARBINARY(MAX)
)AS

UPDATE [General].[PackingType] SET [Image]=@Image WHERE PackingTypeId=@Id




GO
/****** Object:  StoredProcedure [dbo].[SpUpdatePartialType]    Script Date: 6/5/2025 6:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpUpdatePartialType]
(
@Id int,
@Image VARBINARY(MAX)
)AS

UPDATE [General].[PartialType] SET [Image]=@Image WHERE PartialTypeId=@Id




GO
/****** Object:  StoredProcedure [dbo].[SpUpdatePicture]    Script Date: 6/5/2025 6:56:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpUpdatePicture]
(
@Id int,
@Image VARBINARY(MAX)
)AS

UPDATE [General].[Picture] SET [Picture]=@Image WHERE PictureId=@Id




GO
/****** Object:  StoredProcedure [dbo].[SpUpdateReelDirection]    Script Date: 6/5/2025 6:56:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SpUpdateReelDirection]
(
@Id int,
@Image VARBINARY(MAX)
)AS

UPDATE [General].[ReelDirection] SET [Image]=@Image WHERE ReelDirectionId=@Id




GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'عرض دوخت طولی' , @level0type=N'SCHEMA',@level0name=N'Request', @level1type=N'TABLE',@level1name=N'PrintRequest', @level2type=N'COLUMN',@level2name=N'VerticalABWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'عرض دوخت عرضی' , @level0type=N'SCHEMA',@level0name=N'Request', @level1type=N'TABLE',@level1name=N'PrintRequest', @level2type=N'COLUMN',@level2name=N'HorizontalABWidth'
GO
USE [master]
GO
ALTER DATABASE [NCGCRM_New1] SET  READ_WRITE 
GO
