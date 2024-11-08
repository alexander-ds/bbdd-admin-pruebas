/*-----------------------------------------------------------------------------
***************************** Estudiante **************************************
-----------------------------------------------------------------------------*/

USE [PruebaDesarrollador]
GO

/****** Object:  Table [dbo].[Estudiante]    Script Date: 8/11/2024 5:16:51 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Estudiante](
	[ID] [char](10) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Grado] [char](2) NULL,
	[Salon] [char](10) NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*-----------------------------------------------------------------------------
******************************* Prueba ****************************************
-----------------------------------------------------------------------------*/

USE [PruebaDesarrollador]
GO

/****** Object:  Table [dbo].[Prueba]    Script Date: 8/11/2024 5:20:47 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prueba](
	[ID] [char](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Anio] [date] NULL,
 CONSTRAINT [PK_Prueba] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*-----------------------------------------------------------------------------
****************************** Pregunta ***************************************
-----------------------------------------------------------------------------*/

USE [PruebaDesarrollador]
GO

/****** Object:  Table [dbo].[Pregunta]    Script Date: 8/11/2024 5:21:10 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pregunta](
	[ID] [char](10) NOT NULL,
	[Respuesta] [char](2) NULL,
	[Orden] [char](10) NULL,
	[IDPrueba] [char](10) NOT NULL,
 CONSTRAINT [PK_Pregunta] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Pregunta]  WITH CHECK ADD  CONSTRAINT [FK_Pregunta_Prueba] FOREIGN KEY([IDPrueba])
REFERENCES [dbo].[Prueba] ([ID])
GO

ALTER TABLE [dbo].[Pregunta] CHECK CONSTRAINT [FK_Pregunta_Prueba]
GO

/*-----------------------------------------------------------------------------
***************************** Resultado **************************************
-----------------------------------------------------------------------------*/

USE [PruebaDesarrollador]
GO

/****** Object:  Table [dbo].[Resultado]    Script Date: 8/11/2024 5:21:35 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Resultado](
	[ID] [char](10) NOT NULL,
	[IDEstudiante] [char](10) NOT NULL,
	[IDPrueba] [char](10) NOT NULL,
	[IDPregunta] [char](10) NOT NULL,
 CONSTRAINT [PK_Resultado] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Resultado]  WITH CHECK ADD  CONSTRAINT [FK_Resultado_Estudiante] FOREIGN KEY([IDEstudiante])
REFERENCES [dbo].[Estudiante] ([ID])
GO

ALTER TABLE [dbo].[Resultado] CHECK CONSTRAINT [FK_Resultado_Estudiante]
GO

ALTER TABLE [dbo].[Resultado]  WITH CHECK ADD  CONSTRAINT [FK_Resultado_Pregunta] FOREIGN KEY([IDPregunta])
REFERENCES [dbo].[Pregunta] ([ID])
GO

ALTER TABLE [dbo].[Resultado] CHECK CONSTRAINT [FK_Resultado_Pregunta]
GO

ALTER TABLE [dbo].[Resultado]  WITH CHECK ADD  CONSTRAINT [FK_Resultado_Prueba] FOREIGN KEY([IDPrueba])
REFERENCES [dbo].[Prueba] ([ID])
GO

ALTER TABLE [dbo].[Resultado] CHECK CONSTRAINT [FK_Resultado_Prueba]
GO


