﻿USE [master]
GO

/****** Object:  Database [Hospedaje]    Script Date: 11/07/2024 3:59:38 p. m. ******/
CREATE DATABASE [Hospedaje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospedaje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Hospedaje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospedaje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Hospedaje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospedaje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Hospedaje] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Hospedaje] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Hospedaje] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Hospedaje] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Hospedaje] SET ARITHABORT OFF 
GO

ALTER DATABASE [Hospedaje] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Hospedaje] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Hospedaje] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Hospedaje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Hospedaje] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Hospedaje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Hospedaje] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Hospedaje] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Hospedaje] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Hospedaje] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Hospedaje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Hospedaje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Hospedaje] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Hospedaje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Hospedaje] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Hospedaje] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Hospedaje] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Hospedaje] SET RECOVERY FULL 
GO

ALTER DATABASE [Hospedaje] SET  MULTI_USER 
GO

ALTER DATABASE [Hospedaje] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Hospedaje] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Hospedaje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Hospedaje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Hospedaje] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Hospedaje] SET QUERY_STORE = OFF
GO

USE [Hospedaje]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [Hospedaje] SET  READ_WRITE 
GO

USE [Hospedaje]
GO

/****** Object:  Table [dbo].[Hotel]    Script Date: 11/07/2024 4:00:07 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Hotel](
	[IdHotel] [int] IDENTITY(1,1) NOT NULL,
	[NameHotel] [varchar](50) NULL,
	[Categoria] [char](1) NULL,
	[Precio] [numeric](18, 0) NULL,
	[General] [varchar](max) NULL,
	[Habitacion] [varchar](max) NULL,
	[Cama] [varchar](max) NULL,
	[Calificacion] [varchar](50) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO