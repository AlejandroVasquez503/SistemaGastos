USE [master]
GO
/****** Object:  Database [ControlGastosUniversitarios]    Script Date: 10/10/2024 01:27:36 ******/
CREATE DATABASE [ControlGastosUniversitarios]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ControlGastosUniversitarios', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ControlGastosUniversitarios.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ControlGastosUniversitarios_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ControlGastosUniversitarios_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ControlGastosUniversitarios] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ControlGastosUniversitarios].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ARITHABORT OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET  MULTI_USER 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ControlGastosUniversitarios] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ControlGastosUniversitarios] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ControlGastosUniversitarios] SET QUERY_STORE = ON
GO
ALTER DATABASE [ControlGastosUniversitarios] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ControlGastosUniversitarios]
GO
/****** Object:  Table [dbo].[CategoriasGasto]    Script Date: 10/10/2024 01:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasGasto](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GastosUniversitarios]    Script Date: 10/10/2024 01:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GastosUniversitarios](
	[IdGastos] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Monto] [decimal](18, 0) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdCategoria] [int] NULL,
	[IdUsuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGastos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10/10/2024 01:27:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Carnet] [varchar](20) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoriasGasto] ON 

INSERT [dbo].[CategoriasGasto] ([IdCategoria], [NombreCategoria]) VALUES (1, N'Una categoria')
SET IDENTITY_INSERT [dbo].[CategoriasGasto] OFF
GO
SET IDENTITY_INSERT [dbo].[GastosUniversitarios] ON 

INSERT [dbo].[GastosUniversitarios] ([IdGastos], [Fecha], [Monto], [Descripcion], [IdCategoria], [IdUsuario]) VALUES (1, CAST(N'2024-10-09T22:50:40.013' AS DateTime), CAST(301 AS Decimal(18, 0)), N'Esto es una descripcion', 1, 1)
INSERT [dbo].[GastosUniversitarios] ([IdGastos], [Fecha], [Monto], [Descripcion], [IdCategoria], [IdUsuario]) VALUES (2, CAST(N'2024-10-09T22:56:32.920' AS DateTime), CAST(123 AS Decimal(18, 0)), N'DESRIPCION', 1, 2)
INSERT [dbo].[GastosUniversitarios] ([IdGastos], [Fecha], [Monto], [Descripcion], [IdCategoria], [IdUsuario]) VALUES (4, CAST(N'2024-10-10T00:56:23.460' AS DateTime), CAST(143 AS Decimal(18, 0)), N'asdwasd', 1, 1)
INSERT [dbo].[GastosUniversitarios] ([IdGastos], [Fecha], [Monto], [Descripcion], [IdCategoria], [IdUsuario]) VALUES (5, CAST(N'2024-10-10T01:11:32.860' AS DateTime), CAST(234 AS Decimal(18, 0)), N'asdasdwa', 1, 4)
INSERT [dbo].[GastosUniversitarios] ([IdGastos], [Fecha], [Monto], [Descripcion], [IdCategoria], [IdUsuario]) VALUES (6, CAST(N'2024-10-10T01:18:17.003' AS DateTime), CAST(241 AS Decimal(18, 0)), N'asdggndfsf', 1, 2)
SET IDENTITY_INSERT [dbo].[GastosUniversitarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Apellido], [Carnet], [Contraseña]) VALUES (1, N'asdwasdwasd', N'asdwasdw', N'124123131', N'adasdwasdwas')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Apellido], [Carnet], [Contraseña]) VALUES (2, N'Chino', N'Flowers', N'123121', N'bicholover74')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Apellido], [Carnet], [Contraseña]) VALUES (3, N'Rene', N'Alejandro', N'U20230129', N'123')
INSERT [dbo].[Usuarios] ([IdUsuario], [NombreUsuario], [Apellido], [Carnet], [Contraseña]) VALUES (4, N'Prueba', N'Prueba1', N'123123', N'asdwasdw')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Categori__A21FBE9FDA49933F]    Script Date: 10/10/2024 01:27:36 ******/
ALTER TABLE [dbo].[CategoriasGasto] ADD UNIQUE NONCLUSTERED 
(
	[NombreCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__5E387B4DD313B16A]    Script Date: 10/10/2024 01:27:36 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GastosUniversitarios] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[GastosUniversitarios]  WITH CHECK ADD  CONSTRAINT [fk_categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriasGasto] ([IdCategoria])
GO
ALTER TABLE [dbo].[GastosUniversitarios] CHECK CONSTRAINT [fk_categoria]
GO
ALTER TABLE [dbo].[GastosUniversitarios]  WITH CHECK ADD  CONSTRAINT [fk_usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[GastosUniversitarios] CHECK CONSTRAINT [fk_usuario]
GO
USE [master]
GO
ALTER DATABASE [ControlGastosUniversitarios] SET  READ_WRITE 
GO
