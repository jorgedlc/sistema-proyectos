USE [master]
GO
/****** Object:  Database [SistemasP]    Script Date: 30/08/2019 20:42:28 ******/
CREATE DATABASE [SistemasP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SistemasP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SistemasP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SistemasP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SistemasP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SistemasP] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistemasP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistemasP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistemasP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistemasP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistemasP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistemasP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistemasP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SistemasP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistemasP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistemasP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistemasP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistemasP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistemasP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistemasP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistemasP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistemasP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SistemasP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistemasP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistemasP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistemasP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistemasP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistemasP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SistemasP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistemasP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SistemasP] SET  MULTI_USER 
GO
ALTER DATABASE [SistemasP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistemasP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SistemasP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SistemasP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SistemasP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SistemasP] SET QUERY_STORE = OFF
GO
USE [SistemasP]
GO
/****** Object:  Table [dbo].[Actividades]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[id_actividades] [int] NOT NULL,
	[id_fase] [int] NULL,
	[actividad] [nvarchar](50) NULL,
	[estado] [nvarchar](50) NULL,
	[fecha_inicio] [date] NULL,
	[fecha_finalizacion] [date] NULL,
	[fecha_creacion] [date] NULL,
 CONSTRAINT [PK_Actividades] PRIMARY KEY CLUSTERED 
(
	[id_actividades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[id_areas] [int] NOT NULL,
	[area] [nvarchar](50) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[id_areas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[id_documento] [int] NOT NULL,
	[titulo] [nvarchar](50) NULL,
	[estado] [int] NULL,
	[url] [nvarchar](20) NULL,
	[id_tipo_documento] [int] NOT NULL,
	[id_proyecto] [int] NOT NULL,
 CONSTRAINT [PK_Documentos] PRIMARY KEY CLUSTERED 
(
	[id_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados_Proyectos]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados_Proyectos](
	[id_estado_proyecto] [int] NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Estados_Proyectos] PRIMARY KEY CLUSTERED 
(
	[id_estado_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fases]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fases](
	[id_fase] [int] NOT NULL,
	[id_proyecto] [int] NOT NULL,
	[fase] [nvarchar](50) NULL,
	[estado] [nvarchar](50) NULL,
	[fecha_inicio] [date] NULL,
	[fecha_creacion] [date] NULL,
 CONSTRAINT [PK_Fases] PRIMARY KEY CLUSTERED 
(
	[id_fase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foro]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foro](
	[id_foro] [int] NOT NULL,
	[asunto] [nvarchar](50) NULL,
	[comentario] [nvarchar](50) NULL,
	[adjunto] [image] NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_Foro] PRIMARY KEY CLUSTERED 
(
	[id_foro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incidencias]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incidencias](
	[id_incidencias] [int] NULL,
	[id_actividades] [int] NULL,
	[descripcion] [nvarchar](max) NULL,
	[adjunto] [image] NULL,
	[tipo_adjunto] [image] NOT NULL,
	[fecha_creacion] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[id_log] [int] NOT NULL,
	[id_usuario] [int] NULL,
	[accion] [nvarchar](20) NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[id_log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodos_Aprobacion]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodos_Aprobacion](
	[id_periodo] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_finalizacion] [date] NULL,
	[estado] [int] NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [PK_Periodos_Aprobacion] PRIMARY KEY CLUSTERED 
(
	[id_periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presupuesto]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presupuesto](
	[id_presupuesto] [int] NOT NULL,
	[id_tipo_recurso] [int] NOT NULL,
	[descripcion] [nvarchar](50) NULL,
	[recurso] [nvarchar](50) NULL,
	[costo] [money] NULL,
	[cantidad] [decimal](18, 0) NULL,
	[estado] [int] NULL,
	[fecha_creacion] [datetime] NULL,
	[id_fase] [int] NOT NULL,
 CONSTRAINT [PK_Presupuesto] PRIMARY KEY CLUSTERED 
(
	[id_presupuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[id_proyecto] [int] NOT NULL,
	[titulo_proyecto] [nvarchar](max) NULL,
	[descripcion] [nvarchar](max) NULL,
	[presupuesto_estimado] [money] NULL,
	[fecha_inicio] [date] NULL,
	[fecha_final] [date] NULL,
	[fecha_creacion] [datetime] NULL,
	[id_usuario] [int] NOT NULL,
	[id_areas] [int] NOT NULL,
	[id_estado_proyecto] [int] NOT NULL,
	[id_periodo] [int] NOT NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_rol] [int] NOT NULL,
	[rol] [nvarchar](50) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Documento]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Documento](
	[id_tipo_documento] [int] NOT NULL,
	[tipo] [nvarchar](50) NULL,
	[estado] [int] NULL,
	[formato_especifico] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tipo_Documento] PRIMARY KEY CLUSTERED 
(
	[id_tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Recurso]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Recurso](
	[id_tipo_recurso] [int] NOT NULL,
	[tipo_recurso] [nvarchar](50) NULL,
	[descripcion] [nvarchar](max) NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_Tipo_Recurso] PRIMARY KEY CLUSTERED 
(
	[id_tipo_recurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 30/08/2019 20:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] NOT NULL,
	[nombres] [nvarchar](50) NULL,
	[apellidos] [nvarchar](50) NULL,
	[usuario] [nvarchar](50) NULL,
	[contraseña] [varbinary](50) NULL,
	[area] [nvarchar](50) NULL,
	[correo] [nvarchar](50) NULL,
	[id_rol] [int] NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actividades]  WITH CHECK ADD  CONSTRAINT [FK_Actividades_Fases] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id_fase])
GO
ALTER TABLE [dbo].[Actividades] CHECK CONSTRAINT [FK_Actividades_Fases]
GO
ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD  CONSTRAINT [FK_Documentos_Proyectos] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyectos] ([id_proyecto])
GO
ALTER TABLE [dbo].[Documentos] CHECK CONSTRAINT [FK_Documentos_Proyectos]
GO
ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD  CONSTRAINT [FK_Documentos_Tipo_Documento] FOREIGN KEY([id_tipo_documento])
REFERENCES [dbo].[Tipo_Documento] ([id_tipo_documento])
GO
ALTER TABLE [dbo].[Documentos] CHECK CONSTRAINT [FK_Documentos_Tipo_Documento]
GO
ALTER TABLE [dbo].[Fases]  WITH CHECK ADD  CONSTRAINT [FK_Fases_Proyectos] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyectos] ([id_proyecto])
GO
ALTER TABLE [dbo].[Fases] CHECK CONSTRAINT [FK_Fases_Proyectos]
GO
ALTER TABLE [dbo].[Foro]  WITH CHECK ADD  CONSTRAINT [FK_Foro_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Foro] CHECK CONSTRAINT [FK_Foro_Usuarios]
GO
ALTER TABLE [dbo].[Incidencias]  WITH CHECK ADD  CONSTRAINT [FK_Incidencias_Actividades] FOREIGN KEY([id_actividades])
REFERENCES [dbo].[Actividades] ([id_actividades])
GO
ALTER TABLE [dbo].[Incidencias] CHECK CONSTRAINT [FK_Incidencias_Actividades]
GO
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Usuarios]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_Presupuesto_Fases] FOREIGN KEY([id_fase])
REFERENCES [dbo].[Fases] ([id_fase])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_Presupuesto_Fases]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_Presupuesto_Tipo_Recurso] FOREIGN KEY([id_tipo_recurso])
REFERENCES [dbo].[Tipo_Recurso] ([id_tipo_recurso])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_Presupuesto_Tipo_Recurso]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Areas] FOREIGN KEY([id_areas])
REFERENCES [dbo].[Areas] ([id_areas])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Areas]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Estados_Proyectos] FOREIGN KEY([id_estado_proyecto])
REFERENCES [dbo].[Estados_Proyectos] ([id_estado_proyecto])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Estados_Proyectos]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Periodos_Aprobacion] FOREIGN KEY([id_periodo])
REFERENCES [dbo].[Periodos_Aprobacion] ([id_periodo])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Periodos_Aprobacion]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Roles] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Roles] ([id_rol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Roles]
GO
USE [master]
GO
ALTER DATABASE [SistemasP] SET  READ_WRITE 
GO
