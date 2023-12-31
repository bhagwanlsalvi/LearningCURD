USE [master]
GO
/****** Object:  Database [Form]    Script Date: 16-12-2023 18:02:20 ******/
CREATE DATABASE [Form]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Form', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Form.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Form_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Form_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Form] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Form].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Form] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Form] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Form] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Form] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Form] SET ARITHABORT OFF 
GO
ALTER DATABASE [Form] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Form] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Form] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Form] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Form] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Form] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Form] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Form] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Form] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Form] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Form] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Form] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Form] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Form] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Form] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Form] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Form] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Form] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Form] SET  MULTI_USER 
GO
ALTER DATABASE [Form] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Form] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Form] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Form] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Form] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Form]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 16-12-2023 18:02:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [nvarchar](max) NOT NULL,
	[Mname] [nvarchar](max) NOT NULL,
	[Lname] [nvarchar](max) NOT NULL,
	[FatherName] [nvarchar](max) NOT NULL,
	[MatherName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (1, N'', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (2, N'', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (3, N'', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (4, N'bhagwan ', N'salvi', N'salvi', N'narayan lal salvi', N'ravi devi')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (5, N'', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (6, N'sdfghj', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (7, N'', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (8, N'', N'', N'', N'', N'')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (9, N'bhagwan ', N'salvi', N'salvi', N'narayan lal salvi', N'ravi devi')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (10, N'bhagwan ', N'salvi', N'salvi', N'narayan lal salvi', N'ravi devi')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (11, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (12, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (13, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (14, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (15, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (16, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (17, N'vfdAAFDSA', N'VKJXCVCXJ', N'VKJXCVCXJ', N'GSAJKS', N'HGCKVXVJ')
INSERT [dbo].[UserInfo] ([Id], [Fname], [Mname], [Lname], [FatherName], [MatherName]) VALUES (18, N'om ', N'sharma', N'sharma', N'om', N'om')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
USE [master]
GO
ALTER DATABASE [Form] SET  READ_WRITE 
GO
