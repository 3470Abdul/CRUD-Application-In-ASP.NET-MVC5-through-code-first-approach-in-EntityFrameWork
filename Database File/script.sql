USE [master]
GO
/****** Object:  Database [CodeFirstDb]    Script Date: 7/14/2022 1:48:50 PM ******/
CREATE DATABASE [CodeFirstDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CodeFirstDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CodeFirstDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CodeFirstDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CodeFirstDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CodeFirstDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CodeFirstDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CodeFirstDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CodeFirstDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CodeFirstDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CodeFirstDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CodeFirstDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CodeFirstDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CodeFirstDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CodeFirstDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CodeFirstDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CodeFirstDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CodeFirstDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CodeFirstDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CodeFirstDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CodeFirstDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CodeFirstDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CodeFirstDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CodeFirstDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CodeFirstDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CodeFirstDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CodeFirstDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CodeFirstDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CodeFirstDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CodeFirstDb] SET RECOVERY FULL 
GO
ALTER DATABASE [CodeFirstDb] SET  MULTI_USER 
GO
ALTER DATABASE [CodeFirstDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CodeFirstDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CodeFirstDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CodeFirstDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CodeFirstDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CodeFirstDb', N'ON'
GO
ALTER DATABASE [CodeFirstDb] SET QUERY_STORE = OFF
GO
USE [CodeFirstDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CodeFirstDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 7/14/2022 1:48:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 7/14/2022 1:48:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[City] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [CodeFirstDb] SET  READ_WRITE 
GO
