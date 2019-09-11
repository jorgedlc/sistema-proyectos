USE [master]
GO
/****** Object:  Database [sistemas_proyectos]    Script Date: 11/09/2019 1:17:02 ******/
CREATE DATABASE [sistemas_proyectos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sistemas_proyectos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\sistemas_proyectos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sistemas_proyectos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\sistemas_proyectos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sistemas_proyectos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sistemas_proyectos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sistemas_proyectos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET ARITHABORT OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [sistemas_proyectos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sistemas_proyectos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sistemas_proyectos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [sistemas_proyectos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sistemas_proyectos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sistemas_proyectos] SET  MULTI_USER 
GO
ALTER DATABASE [sistemas_proyectos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sistemas_proyectos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sistemas_proyectos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sistemas_proyectos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sistemas_proyectos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sistemas_proyectos] SET QUERY_STORE = OFF
GO
USE [sistemas_proyectos]
GO
/****** Object:  Table [dbo].[actividades]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actividades](
	[id_actividad] [int] IDENTITY(1,1) NOT NULL,
	[id_fase] [int] NOT NULL,
	[actividad] [nvarchar](255) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_final] [date] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [pk_actividades] PRIMARY KEY CLUSTERED 
(
	[id_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[areas]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[areas](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[area] [nvarchar](255) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [pk_areas] PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentos]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos](
	[id_documento] [int] IDENTITY(1,1) NOT NULL,
	[id_incidencia] [int] NOT NULL,
	[id_tipo_documento] [int] NOT NULL,
	[titulo] [nvarchar](50) NOT NULL,
	[url] [nvarchar](255) NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [pk_documentos] PRIMARY KEY CLUSTERED 
(
	[id_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [int] NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [pk_estados] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fases]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fases](
	[id_fase] [int] IDENTITY(1,1) NOT NULL,
	[id_proyecto] [int] NOT NULL,
	[fase] [nvarchar](255) NOT NULL,
	[estado] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_final] [date] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
 CONSTRAINT [pk_fases] PRIMARY KEY CLUSTERED 
(
	[id_fase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foros]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foros](
	[id_foro] [int] IDENTITY(1,1) NOT NULL,
	[id_actividad] [int] NOT NULL,
	[creado_por] [nvarchar](255) NOT NULL,
	[asunto] [nvarchar](255) NOT NULL,
	[mensaje] [nvarchar](max) NOT NULL,
	[adjunto] [nvarchar](255) NULL,
	[tipo_adjunto] [nvarchar](50) NULL,
	[estado] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
 CONSTRAINT [pk_foros] PRIMARY KEY CLUSTERED 
(
	[id_foro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incidencias]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incidencias](
	[id_incidencia] [int] IDENTITY(1,1) NOT NULL,
	[id_actividad] [int] NOT NULL,
	[descripcion] [nvarchar](max) NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [pk_incidencias] PRIMARY KEY CLUSTERED 
(
	[id_incidencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logs]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logs](
	[id_log] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[accion] [nvarchar](255) NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [pk_logs] PRIMARY KEY CLUSTERED 
(
	[id_log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[presupuesto]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presupuesto](
	[id_presupuesto] [int] IDENTITY(1,1) NOT NULL,
	[id_fase] [int] NOT NULL,
	[id_tipo_recurso] [int] NOT NULL,
	[recurso] [nvarchar](255) NOT NULL,
	[costo] [money] NOT NULL,
	[cantidad] [decimal](10, 2) NOT NULL,
	[estado] [int] NOT NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [pk_presupuesto] PRIMARY KEY CLUSTERED 
(
	[id_presupuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proyectos]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proyectos](
	[id_proyecto] [int] IDENTITY(1,1) NOT NULL,
	[titulo_proyecto] [nvarchar](255) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_area] [int] NOT NULL,
	[id_estado] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_final] [date] NOT NULL,
	[fecha_creacion] [datetime] NULL,
 CONSTRAINT [pk_proyectos] PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[rol] [nvarchar](255) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [pk_roles] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_documento]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_documento](
	[id_tipo_documento] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
	[formato_especifico] [nvarchar](50) NULL,
 CONSTRAINT [pk_tipo_documento] PRIMARY KEY CLUSTERED 
(
	[id_tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_recurso]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_recurso](
	[id_tipo_recurso] [int] IDENTITY(1,1) NOT NULL,
	[tipo_recurso] [nvarchar](255) NOT NULL,
	[descripcion] [nvarchar](max) NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [pk_tipo_recurso] PRIMARY KEY CLUSTERED 
(
	[id_tipo_recurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 11/09/2019 1:17:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NOT NULL,
	[apellidos] [nvarchar](255) NOT NULL,
	[correo] [nvarchar](255) NOT NULL,
	[usuario] [nvarchar](50) NOT NULL,
	[contrasena] [nvarchar](50) NOT NULL,
	[area] [nvarchar](255) NOT NULL,
	[id_rol] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
 CONSTRAINT [pk_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[actividades]  WITH CHECK ADD  CONSTRAINT [fk_actividades_fases] FOREIGN KEY([id_fase])
REFERENCES [dbo].[fases] ([id_fase])
GO
ALTER TABLE [dbo].[actividades] CHECK CONSTRAINT [fk_actividades_fases]
GO
ALTER TABLE [dbo].[documentos]  WITH CHECK ADD  CONSTRAINT [fk_documentos_incidencias] FOREIGN KEY([id_incidencia])
REFERENCES [dbo].[incidencias] ([id_incidencia])
GO
ALTER TABLE [dbo].[documentos] CHECK CONSTRAINT [fk_documentos_incidencias]
GO
ALTER TABLE [dbo].[documentos]  WITH CHECK ADD  CONSTRAINT [fk_documentos_tipo_dcumento] FOREIGN KEY([id_tipo_documento])
REFERENCES [dbo].[tipo_documento] ([id_tipo_documento])
GO
ALTER TABLE [dbo].[documentos] CHECK CONSTRAINT [fk_documentos_tipo_dcumento]
GO
ALTER TABLE [dbo].[fases]  WITH CHECK ADD  CONSTRAINT [fk_fases_proyectos] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[proyectos] ([id_proyecto])
GO
ALTER TABLE [dbo].[fases] CHECK CONSTRAINT [fk_fases_proyectos]
GO
ALTER TABLE [dbo].[foros]  WITH CHECK ADD  CONSTRAINT [fk_foros_actividades] FOREIGN KEY([id_actividad])
REFERENCES [dbo].[actividades] ([id_actividad])
GO
ALTER TABLE [dbo].[foros] CHECK CONSTRAINT [fk_foros_actividades]
GO
ALTER TABLE [dbo].[incidencias]  WITH CHECK ADD  CONSTRAINT [fk_incidencias_actividades] FOREIGN KEY([id_actividad])
REFERENCES [dbo].[actividades] ([id_actividad])
GO
ALTER TABLE [dbo].[incidencias] CHECK CONSTRAINT [fk_incidencias_actividades]
GO
ALTER TABLE [dbo].[logs]  WITH CHECK ADD  CONSTRAINT [fk_logs_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[logs] CHECK CONSTRAINT [fk_logs_usuarios]
GO
ALTER TABLE [dbo].[presupuesto]  WITH CHECK ADD  CONSTRAINT [fk_presupuesto_fases] FOREIGN KEY([id_fase])
REFERENCES [dbo].[fases] ([id_fase])
GO
ALTER TABLE [dbo].[presupuesto] CHECK CONSTRAINT [fk_presupuesto_fases]
GO
ALTER TABLE [dbo].[presupuesto]  WITH CHECK ADD  CONSTRAINT [fk_presupuesto_tipo_recurso] FOREIGN KEY([id_tipo_recurso])
REFERENCES [dbo].[tipo_recurso] ([id_tipo_recurso])
GO
ALTER TABLE [dbo].[presupuesto] CHECK CONSTRAINT [fk_presupuesto_tipo_recurso]
GO
ALTER TABLE [dbo].[proyectos]  WITH CHECK ADD  CONSTRAINT [fk_proyectos_areas] FOREIGN KEY([id_area])
REFERENCES [dbo].[areas] ([id_area])
GO
ALTER TABLE [dbo].[proyectos] CHECK CONSTRAINT [fk_proyectos_areas]
GO
ALTER TABLE [dbo].[proyectos]  WITH CHECK ADD  CONSTRAINT [fk_proyectos_estados] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([id_estado])
GO
ALTER TABLE [dbo].[proyectos] CHECK CONSTRAINT [fk_proyectos_estados]
GO
ALTER TABLE [dbo].[proyectos]  WITH CHECK ADD  CONSTRAINT [fk_proyectos_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[proyectos] CHECK CONSTRAINT [fk_proyectos_usuarios]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [fk_usuarios_roles] FOREIGN KEY([id_rol])
REFERENCES [dbo].[roles] ([id_rol])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [fk_usuarios_roles]
GO
USE [master]
GO
ALTER DATABASE [sistemas_proyectos] SET  READ_WRITE 
GO
