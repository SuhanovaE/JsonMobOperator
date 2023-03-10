USE [master]
GO
/****** Object:  Database [MobOperator]    Script Date: 19.01.2023 21:49:11 ******/
CREATE DATABASE [MobOperator]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobOperator', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MobOperator.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MobOperator_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MobOperator_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MobOperator] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobOperator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobOperator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobOperator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobOperator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobOperator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobOperator] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobOperator] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobOperator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobOperator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobOperator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobOperator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobOperator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobOperator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobOperator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobOperator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobOperator] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobOperator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobOperator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobOperator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobOperator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobOperator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobOperator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobOperator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobOperator] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MobOperator] SET  MULTI_USER 
GO
ALTER DATABASE [MobOperator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobOperator] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobOperator] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobOperator] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MobOperator] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MobOperator] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MobOperator] SET QUERY_STORE = OFF
GO
USE [MobOperator]
GO
/****** Object:  Table [dbo].[Abonents]    Script Date: 19.01.2023 21:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonents](
	[Id_Abonents] [int] IDENTITY(0,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Series] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Abonents] PRIMARY KEY CLUSTERED 
(
	[Id_Abonents] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbonentsAndTarifs]    Script Date: 19.01.2023 21:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbonentsAndTarifs](
	[Id_AbonentsAndTarifs] [int] IDENTITY(1,1) NOT NULL,
	[Fk_Abonents] [int] NULL,
	[Fk_Tarifs] [int] NULL,
 CONSTRAINT [PK_AbonentsAndTarifs] PRIMARY KEY CLUSTERED 
(
	[Id_AbonentsAndTarifs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifs]    Script Date: 19.01.2023 21:49:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifs](
	[Id_Tarifs] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Pay] [int] NULL,
	[Gb] [int] NULL,
	[SMS] [nvarchar](50) NULL,
	[Minutes] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tarifs] PRIMARY KEY CLUSTERED 
(
	[Id_Tarifs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abonents] ON 

INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (1, N'Бородина', N'Александра', N'Антоновна', N'9089', N'753598', N'2597852775')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (2, N'Лукина', N'Марина', N'Павловна', N'8657', N'175538', N'6565049505')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (3, N'Гришин', N'Сергей', N'Ильич', N'8768', N'680864', N'5363402527')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (4, N'Попова', N'София ', N'Ивановна', N'1237', N'343564', N'1143554783')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (5, N'Сафонов', N'Вадим', N'Павлович', N'1231', N'522807', N'9176730780')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (6, N'Худяков', N'Серафим', N'Егорович', N'2342', N'928998', N'8334801243')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (7, N'Кириллова', N'Софья', N'Ивановна', N'5674', N'907856', N'8823309901')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (8, N'Миронов', N'Фёдор', N'Давидович', N'5685', N'614000', N'5757491305')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (9, N'Иванов', N'Сергей', N'Захарович', N'6786', N'691075', N'4543068668')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (10, N'Соколова', N'София ', N'Данииловна', N'6347', N'575287', N'8937847009')
INSERT [dbo].[Abonents] ([Id_Abonents], [LastName], [FirstName], [Patronymic], [Series], [Number], [Phone]) VALUES (11, N'Тумаков', N'Роман', N'Александрович', N'6854', N'658723', N'3452349786')
SET IDENTITY_INSERT [dbo].[Abonents] OFF
GO
SET IDENTITY_INSERT [dbo].[AbonentsAndTarifs] ON 

INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (1, 1, 1)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (2, 2, 2)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (3, 3, 3)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (4, 4, 4)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (5, 5, 5)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (6, 6, 1)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (7, 7, 2)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (8, 8, 3)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (9, 9, 4)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (10, 10, 5)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (20, 11, 6)
INSERT [dbo].[AbonentsAndTarifs] ([Id_AbonentsAndTarifs], [Fk_Abonents], [Fk_Tarifs]) VALUES (1011, 3, 2)
SET IDENTITY_INSERT [dbo].[AbonentsAndTarifs] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarifs] ON 

INSERT [dbo].[Tarifs] ([Id_Tarifs], [Name], [Pay], [Gb], [SMS], [Minutes]) VALUES (1, N'эконом', 150, 5, N'нет', N'да')
INSERT [dbo].[Tarifs] ([Id_Tarifs], [Name], [Pay], [Gb], [SMS], [Minutes]) VALUES (2, N'профи', 400, 15, N'да', N'нет')
INSERT [dbo].[Tarifs] ([Id_Tarifs], [Name], [Pay], [Gb], [SMS], [Minutes]) VALUES (3, N'стандарт', 250, 10, N'да', N'да')
INSERT [dbo].[Tarifs] ([Id_Tarifs], [Name], [Pay], [Gb], [SMS], [Minutes]) VALUES (4, N'старт', 200, 5, N'да', N'да')
INSERT [dbo].[Tarifs] ([Id_Tarifs], [Name], [Pay], [Gb], [SMS], [Minutes]) VALUES (5, N'домашний', 350, 20, N'нет', N'нет')
INSERT [dbo].[Tarifs] ([Id_Tarifs], [Name], [Pay], [Gb], [SMS], [Minutes]) VALUES (6, N'комфорт', 300, 10, N'да', N'да')
SET IDENTITY_INSERT [dbo].[Tarifs] OFF
GO
ALTER TABLE [dbo].[AbonentsAndTarifs]  WITH CHECK ADD  CONSTRAINT [FK_AbonentsAndTarifs_Abonents] FOREIGN KEY([Fk_Abonents])
REFERENCES [dbo].[Abonents] ([Id_Abonents])
GO
ALTER TABLE [dbo].[AbonentsAndTarifs] CHECK CONSTRAINT [FK_AbonentsAndTarifs_Abonents]
GO
ALTER TABLE [dbo].[AbonentsAndTarifs]  WITH CHECK ADD  CONSTRAINT [FK_AbonentsAndTarifs_Tarifs] FOREIGN KEY([Fk_Tarifs])
REFERENCES [dbo].[Tarifs] ([Id_Tarifs])
GO
ALTER TABLE [dbo].[AbonentsAndTarifs] CHECK CONSTRAINT [FK_AbonentsAndTarifs_Tarifs]
GO
USE [master]
GO
ALTER DATABASE [MobOperator] SET  READ_WRITE 
GO
