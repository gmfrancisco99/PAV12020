CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[cuit] [varchar](50) NULL,
	[razon_social] [varchar](50) NULL,
	[borrado] [bit] NULL,
	[calle] [varchar](500) NULL,
	[numero] [varchar](50) NULL,
	[fecha_alta] [datetime] NULL,
	[id_barrio] [int] NULL,
	[id_contacto] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[numero_factura] [varchar](50) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_usuario_creador] [int] NOT NULL,
	[total] [float] NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturasDetalle]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturasDetalle](
	[id_detalle_factura] [int] IDENTITY(1,1) NOT NULL,
	[id_factura] [int] NULL,
	[numero_orden] [int] NULL,
	[id_producto] [int] NULL,
	[id_proyecto] [int] NULL,
	[precio] [decimal](18, 0) NULL,
	[cantidad] [int] NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_FacturaDetalles] PRIMARY KEY CLUSTERED 
(
	[id_detalle_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id_perfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha_alta] [datetime] NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[id_proyecto] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[version] [varchar](50) NULL,
	[alcance] [varchar](50) NULL,
	[id_responsable] [int] NULL,
	[fecha_alta] [datetime] NULL,
	[borrado] [nchar](10) NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 13/11/2020 20:25:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_perfil] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON 

INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (1, N'San Isidro', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (2, N'Observatorio', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (3, N'Centro', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (4, N'Nueva Cordoba', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (5, N'General Paz', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (6, N'Cabañas del Pilar', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (7, N'Alberdi', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (8, N'Crisol Sur', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (9, N'Ameghino', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (10, N'Villa Retiro', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (11, N'Nueva Italia', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (12, N'Yofre', 0)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (5, N'30613508747', N'Coca Cola ', 0, N'Av. General Paz', N'635', CAST(N'2020-01-16T00:00:00.000' AS DateTime), 6, 2)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (6, N'30654127988', N'Venex', 0, N'Parana', N'3645', CAST(N'2020-02-27T00:00:00.000' AS DateTime), 9, 6)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (7, N'30246987413', N'Bimbo', 0, N'Estrada', N'144', CAST(N'2020-03-18T00:00:00.000' AS DateTime), 2, 9)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (8, N'30416742356', N'Frigorifico San Carlos', 0, N'Av. OhGiggins ', N'324', CAST(N'2020-04-08T00:00:00.000' AS DateTime), 8, 4)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (9, N'30214967245', N'Adidas', 0, N'Av.Colon', N'6659', CAST(N'2020-05-13T00:00:00.000' AS DateTime), 7, 10)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (10, N'30974165823', N'Nike', 0, N'La Rioja', N'741', CAST(N'2020-05-20T00:00:00.000' AS DateTime), 7, 3)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (11, N'30654124764', N'Puma', 0, N'Peru', N'1967', CAST(N'2020-06-13T00:00:00.000' AS DateTime), 4, 8)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (12, N'30254798631', N'El Club de la Milanesa', 0, N'Crisol', N'456', CAST(N'2020-07-13T00:00:00.000' AS DateTime), 11, 10)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (13, N'30412563974', N'Mc Donalds', 0, N'Irigoyen', N'996', CAST(N'2020-08-13T00:00:00.000' AS DateTime), 10, 1)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (14, N'30413698742', N'Burger King', 0, N'San Martin', N'479', CAST(N'2020-09-13T00:00:00.000' AS DateTime), 6, 11)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (15, N'30214797634', N'Hands Burger', 0, N'Rancagua', N'549', CAST(N'2020-10-13T00:00:00.000' AS DateTime), 12, 7)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (16, N'30547412234', N'Pritty', 0, N'Velez Sarsfield', N'1324', CAST(N'2020-11-01T00:00:00.000' AS DateTime), 5, 2)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (1, N'Analia', N'Rossoto', N'analia@gmail.com', N'321654231', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (2, N'Agustin', N'Maubecin', N'maubecin@gmail.com', N'3517178739', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (3, N'Agustin', N'Magliola', N'magli@gmail.com', N'3516245469', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (4, N'Gaston ', N'Muñoz', N'gmuñoz@gmail.com', N'3516789451', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (5, N'Jano', N'Paschetti', N'jpaschetti@gmail.com', N'3516987456', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (6, N'Juan', N'Garcia', N'juangarcia@gmail.com', N'3515649873', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (7, N'Pedro', N'Sanchez', N'pedrosanc@gmail.com', N'3516456921', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (8, N'Laura', N'Rodriguez', N'lauraro@gmail.com', N'3514967114', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (9, N'Rocio', N'Martinez', N'rociomartinez@gmail.com', N'3512347146', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (10, N'Augusto', N'Gonzalez', N'augustogonzalez@gmail.com', N'3515698742', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (11, N'Gabriela', N'Guillermo', N'gabrielag@gmail.com', N'3516235497', 0)
SET IDENTITY_INSERT [dbo].[Contactos] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (44, N'001-000044', 5, CAST(N'2020-01-08T00:00:00.000' AS DateTime), 1, 15000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (45, N'001-000045', 5, CAST(N'2020-01-08T00:00:00.000' AS DateTime), 1, 14400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (46, N'001-000046', 8, CAST(N'2020-01-08T00:00:00.000' AS DateTime), 1, 28800, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (47, N'001-000047', 12, CAST(N'2020-01-08T00:00:00.000' AS DateTime), 1, 21600, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (48, N'001-000048', 16, CAST(N'2020-01-08T00:00:00.000' AS DateTime), 1, 36000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (49, N'001-000049', 15, CAST(N'2020-01-08T00:00:00.000' AS DateTime), 1, 25000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (50, N'001-000050', 13, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 1, 45000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (51, N'001-000051', 14, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 1, 63000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (52, N'001-000052', 14, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 1, 42300, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (53, N'001-000053', 14, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 1, 40000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (54, N'001-000054', 6, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 1, 21000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (55, N'001-000055', 8, CAST(N'2020-02-18T00:00:00.000' AS DateTime), 1, 24000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (56, N'001-000056', 8, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 30000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (57, N'001-000057', 8, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 41400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (58, N'001-000058', 9, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 24000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (59, N'001-000059', 11, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 24000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (60, N'001-000060', 11, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 44800, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (61, N'001-000061', 10, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 320000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (62, N'001-000062', 7, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 1, 52800, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (63, N'001-000063', 7, CAST(N'2020-04-15T00:00:00.000' AS DateTime), 1, 488060, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (64, N'001-000064', 13, CAST(N'2020-04-15T00:00:00.000' AS DateTime), 1, 35000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (65, N'001-000065', 14, CAST(N'2020-05-16T00:00:00.000' AS DateTime), 1, 36800, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (66, N'001-000066', 5, CAST(N'2020-05-16T00:00:00.000' AS DateTime), 1, 41400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (67, N'001-000067', 6, CAST(N'2020-05-16T00:00:00.000' AS DateTime), 1, 2300, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (68, N'001-000068', 15, CAST(N'2020-06-20T00:00:00.000' AS DateTime), 1, 33600, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (69, N'001-000069', 9, CAST(N'2020-06-20T00:00:00.000' AS DateTime), 1, 22400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (70, N'001-000070', 9, CAST(N'2020-06-20T00:00:00.000' AS DateTime), 1, 39200, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (71, N'001-000071', 11, CAST(N'2020-06-20T00:00:00.000' AS DateTime), 1, 4094, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (72, N'001-000072', 11, CAST(N'2020-07-20T00:00:00.000' AS DateTime), 1, 35640, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (73, N'001-000073', 10, CAST(N'2020-07-20T00:00:00.000' AS DateTime), 1, 42300, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (74, N'001-000074', 8, CAST(N'2020-07-20T00:00:00.000' AS DateTime), 1, 590400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (75, N'001-000075', 8, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 58206, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (76, N'001-000076', 9, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 79955, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (77, N'001-000077', 11, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 376956, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (78, N'001-000078', 12, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 44436, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (79, N'001-000079', 12, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 41400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (80, N'001-000080', 12, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 27600, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (81, N'001-000081', 14, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 24000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (82, N'001-000082', 16, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 180000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (83, N'001-000083', 15, CAST(N'2020-08-22T00:00:00.000' AS DateTime), 1, 22400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (84, N'001-000084', 6, CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 45966, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (85, N'001-000085', 11, CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 405000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (86, N'001-000086', 11, CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 49840, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (87, N'001-000087', 11, CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 29900, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (88, N'001-000088', 16, CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 345000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (89, N'001-000089', 6, CAST(N'2020-09-07T00:00:00.000' AS DateTime), 1, 30000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (90, N'001-000090', 7, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 56000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (91, N'001-000091', 5, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 71200, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (92, N'001-000092', 13, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 45080, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (93, N'001-000093', 15, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 54880, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (94, N'001-000094', 14, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 80000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (95, N'001-000095', 14, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 75000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (96, N'001-000096', 9, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 450000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (97, N'001-000097', 10, CAST(N'2020-10-31T00:00:00.000' AS DateTime), 1, 76500, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (98, N'001-000098', 15, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 1, 36000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (99, N'001-000099', 14, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 1, 36800, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (100, N'001-000100', 5, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 1, 50400, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (101, N'001-000101', 7, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 1, 200000, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (102, N'001-000102', 10, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 1, 259800, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [total], [borrado]) VALUES (103, N'001-000103', 16, CAST(N'2020-11-21T00:00:00.000' AS DateTime), 1, 320000, 0)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[FacturasDetalle] ON 

INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (1, 3, 1, 1, NULL, CAST(400 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (2, 3, 2, NULL, 2, CAST(400 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (3, 3, 3, NULL, 1, CAST(520 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (4, 4, 1, NULL, 1, CAST(200 AS Decimal(18, 0)), 1, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (5, 4, 2, 4, NULL, CAST(660 AS Decimal(18, 0)), 5, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (6, 5, 1, 1, NULL, CAST(100 AS Decimal(18, 0)), 5, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (7, 5, 2, NULL, 1, CAST(5 AS Decimal(18, 0)), 600, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (8, 6, 1, NULL, 1, CAST(200 AS Decimal(18, 0)), 4, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (9, 6, 2, 3, NULL, CAST(60 AS Decimal(18, 0)), 1, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (10, 7, 1, NULL, 1, CAST(200 AS Decimal(18, 0)), 4, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (11, 7, 2, NULL, 1, CAST(3 AS Decimal(18, 0)), 400, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (12, 8, 1, NULL, 2, CAST(500 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (13, 8, 2, 1, NULL, CAST(500 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (14, 8, 3, NULL, 1, CAST(50 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (15, 9, 1, NULL, 1, CAST(600 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (16, 9, 2, 2, NULL, CAST(7 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (17, 10, 1, NULL, 1, CAST(200 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (18, 11, 1, NULL, 1, CAST(200 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (19, 12, 1, 2, NULL, CAST(600 AS Decimal(18, 0)), 4, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (20, 13, 1, NULL, 1, CAST(600 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (21, 14, 1, NULL, 3, CAST(600 AS Decimal(18, 0)), 12, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (22, 15, 1, NULL, 3, CAST(54 AS Decimal(18, 0)), 300, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (23, 15, 2, 5, NULL, CAST(620 AS Decimal(18, 0)), 42, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (24, 16, 1, 1, NULL, CAST(12 AS Decimal(18, 0)), 3, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (25, 16, 2, 3, NULL, CAST(64 AS Decimal(18, 0)), 500, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (26, 17, 1, 4, NULL, CAST(65 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (27, 18, 1, 6, NULL, CAST(600 AS Decimal(18, 0)), 45, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (28, 19, 1, 7, NULL, CAST(12 AS Decimal(18, 0)), 300, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (29, 20, 1, 2, NULL, CAST(200 AS Decimal(18, 0)), 30, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (30, 20, 2, 4, NULL, CAST(600 AS Decimal(18, 0)), 32, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (31, 21, 1, 1, NULL, CAST(600 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (32, 22, 1, NULL, 3, CAST(600 AS Decimal(18, 0)), 20, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (33, 23, 1, 2, NULL, CAST(50 AS Decimal(18, 0)), 36, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (34, 24, 1, NULL, 4, CAST(900 AS Decimal(18, 0)), 60, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (35, 25, 1, 5, NULL, CAST(600 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (36, 25, 2, NULL, 3, CAST(500 AS Decimal(18, 0)), 32, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (37, 26, 1, 4, NULL, CAST(600 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (38, 27, 1, 3, NULL, CAST(600 AS Decimal(18, 0)), 63, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (39, 27, 2, NULL, 4, CAST(60 AS Decimal(18, 0)), 34, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (40, 28, 1, 7, NULL, CAST(400 AS Decimal(18, 0)), 23, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (41, 29, 1, 2, NULL, CAST(300 AS Decimal(18, 0)), 3333, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (42, 30, 1, 4, NULL, CAST(2 AS Decimal(18, 0)), 60, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (43, 30, 2, 2, NULL, CAST(60 AS Decimal(18, 0)), 20, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (44, 31, 1, 2, NULL, CAST(600 AS Decimal(18, 0)), 23, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (45, 32, 1, 2, NULL, CAST(40 AS Decimal(18, 0)), 53, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (46, 33, 1, 5, NULL, CAST(400 AS Decimal(18, 0)), 23, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (47, 34, 1, 6, NULL, CAST(16 AS Decimal(18, 0)), 233, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (48, 34, 2, NULL, 2, CAST(600 AS Decimal(18, 0)), 23, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (49, 35, 1, 1, NULL, CAST(60 AS Decimal(18, 0)), 55, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (50, 36, 1, 4, NULL, CAST(500 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (51, 37, 1, 3, NULL, CAST(600 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (52, 37, 2, 7, NULL, CAST(600 AS Decimal(18, 0)), 23, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (53, 38, 1, 6, NULL, CAST(500 AS Decimal(18, 0)), 23, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (54, 39, 1, 5, NULL, CAST(600 AS Decimal(18, 0)), 12, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (55, 40, 1, 5, NULL, CAST(600 AS Decimal(18, 0)), 42, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (56, 41, 1, 2, NULL, CAST(215000 AS Decimal(18, 0)), 1, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (57, 42, 1, NULL, 3, CAST(600 AS Decimal(18, 0)), 12, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (58, 42, 2, 6, NULL, CAST(500 AS Decimal(18, 0)), 12, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (59, 43, 1, 3, NULL, CAST(200 AS Decimal(18, 0)), 6, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (60, 44, 1, NULL, 3, CAST(600 AS Decimal(18, 0)), 25, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (61, 45, 1, 5, NULL, CAST(600 AS Decimal(18, 0)), 24, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (62, 46, 1, 1, NULL, CAST(600 AS Decimal(18, 0)), 48, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (63, 47, 1, 4, NULL, CAST(900 AS Decimal(18, 0)), 24, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (64, 48, 1, 4, NULL, CAST(900 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (65, 49, 1, 5, NULL, CAST(500 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (66, 50, 1, 6, NULL, CAST(900 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (67, 51, 1, 6, NULL, CAST(900 AS Decimal(18, 0)), 70, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (68, 52, 1, NULL, 6, CAST(900 AS Decimal(18, 0)), 47, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (69, 53, 1, NULL, 3, CAST(1000 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (70, 54, 1, 5, NULL, CAST(700 AS Decimal(18, 0)), 30, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (71, 55, 1, NULL, 7, CAST(600 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (72, 56, 1, 3, NULL, CAST(500 AS Decimal(18, 0)), 60, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (73, 57, 1, NULL, 8, CAST(900 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (74, 58, 1, 6, NULL, CAST(400 AS Decimal(18, 0)), 60, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (75, 59, 1, 5, NULL, CAST(600 AS Decimal(18, 0)), 40, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (76, 60, 1, NULL, 4, CAST(800 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (77, 61, 1, NULL, 2, CAST(800 AS Decimal(18, 0)), 400, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (78, 62, 1, 4, NULL, CAST(550 AS Decimal(18, 0)), 96, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (79, 63, 1, 5, NULL, CAST(740 AS Decimal(18, 0)), 599, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (80, 63, 2, 6, NULL, CAST(800 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (81, 64, 1, NULL, 2, CAST(700 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (82, 65, 1, 4, NULL, CAST(800 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (83, 66, 1, 5, NULL, CAST(900 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (84, 67, 1, 5, NULL, CAST(46 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (85, 68, 1, 4, NULL, CAST(600 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (86, 69, 1, NULL, 8, CAST(400 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (87, 70, 1, NULL, 7, CAST(700 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (88, 71, 1, 5, NULL, CAST(89 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (89, 72, 1, 6, NULL, CAST(660 AS Decimal(18, 0)), 54, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (90, 73, 1, 2, NULL, CAST(900 AS Decimal(18, 0)), 47, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (91, 74, 1, 1, NULL, CAST(900 AS Decimal(18, 0)), 656, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (92, 75, 1, NULL, 3, CAST(654 AS Decimal(18, 0)), 89, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (93, 76, 1, NULL, 2, CAST(89 AS Decimal(18, 0)), 595, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (94, 76, 2, NULL, 4, CAST(600 AS Decimal(18, 0)), 45, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (95, 77, 1, NULL, 4, CAST(666 AS Decimal(18, 0)), 566, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (96, 78, 1, NULL, 5, CAST(966 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (97, 79, 1, NULL, 5, CAST(900 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (98, 80, 1, NULL, 6, CAST(600 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (99, 81, 1, NULL, 7, CAST(800 AS Decimal(18, 0)), 30, 0)
GO
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (100, 82, 1, NULL, 7, CAST(300 AS Decimal(18, 0)), 600, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (101, 83, 1, NULL, 7, CAST(400 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (102, 84, 1, NULL, 8, CAST(456 AS Decimal(18, 0)), 89, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (103, 84, 2, NULL, 2, CAST(78 AS Decimal(18, 0)), 69, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (104, 85, 1, NULL, 5, CAST(450 AS Decimal(18, 0)), 900, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (105, 86, 1, 6, NULL, CAST(890 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (106, 87, 1, NULL, 3, CAST(650 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (107, 88, 1, NULL, 7, CAST(750 AS Decimal(18, 0)), 460, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (108, 89, 1, NULL, 3, CAST(600 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (109, 90, 1, NULL, 3, CAST(800 AS Decimal(18, 0)), 70, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (110, 91, 1, NULL, 3, CAST(890 AS Decimal(18, 0)), 80, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (111, 92, 1, 5, NULL, CAST(980 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (112, 93, 1, NULL, 7, CAST(980 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (113, 94, 1, 3, NULL, CAST(800 AS Decimal(18, 0)), 100, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (114, 95, 1, 6, NULL, CAST(1500 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (115, 96, 1, 3, NULL, CAST(9000 AS Decimal(18, 0)), 50, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (116, 97, 1, NULL, 5, CAST(850 AS Decimal(18, 0)), 90, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (117, 98, 1, NULL, 2, CAST(800 AS Decimal(18, 0)), 45, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (118, 99, 1, 4, NULL, CAST(800 AS Decimal(18, 0)), 46, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (119, 100, 1, 3, NULL, CAST(900 AS Decimal(18, 0)), 56, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (120, 101, 1, NULL, 8, CAST(800 AS Decimal(18, 0)), 250, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (121, 102, 1, NULL, 3, CAST(866 AS Decimal(18, 0)), 300, 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [precio], [cantidad], [borrado]) VALUES (122, 103, 1, NULL, 7, CAST(800 AS Decimal(18, 0)), 400, 0)
SET IDENTITY_INSERT [dbo].[FacturasDetalle] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([id_perfil], [nombre], [borrado]) VALUES (1, N'Administrador', 0)
INSERT [dbo].[Perfiles] ([id_perfil], [nombre], [borrado]) VALUES (2, N'Tester', 0)
INSERT [dbo].[Perfiles] ([id_perfil], [nombre], [borrado]) VALUES (3, N'Desarrollador', 0)
INSERT [dbo].[Perfiles] ([id_perfil], [nombre], [borrado]) VALUES (4, N'Responsable de Reportes', 0)
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (1, N'Software de Gestión', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (2, N'Soft. de Gestión de Identidad', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (3, N'Software de Auditoría', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (4, N'Soft. Vulnerabilidades', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (5, N'Software de Aplicacion', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (6, N'Software de Estadisticas', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [fecha_alta], [borrado]) VALUES (7, N'Soft. de Reportes Graficos', CAST(N'2020-10-21T10:01:06.070' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proyectos] ON 

INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (2, 3, N'Auditoria de Facturacion', N'1.0', N'Gestion de auditorias', 6, CAST(N'2020-10-21T10:08:40.497' AS DateTime), N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (3, 1, N'Control de Stock', N'1.1', N'General', 6, CAST(N'2020-10-21T10:08:40.497' AS DateTime), N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (4, 2, N'Autenticacion de Usuarios', N'2.0', N'General', 2, CAST(N'2020-10-21T10:08:40.497' AS DateTime), N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (5, 4, N'Control de Vulnerabilidades', N'1.1', N'General', 5, CAST(N'2020-10-21T10:08:40.497' AS DateTime), N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (6, 1, N'Software de Control de Calidad', N'1.5', N'General', 4, NULL, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (7, 7, N'Generador de Reportes Graficos', N'3.0', N'General', 6, NULL, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [fecha_alta], [borrado]) VALUES (8, 6, N'Analisis de Datos Estadisticos', N'2.0', N'General', 5, NULL, N'0         ')
SET IDENTITY_INSERT [dbo].[Proyectos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (1, 1, N'administrador', N'12345', N'admin@gmail.com', N'S', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (2, 2, N'Tester Ariel', N'12345', N'ariel@gmail.com', N'N', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (4, 3, N'Tester Miguel', N'12345', N'miguel@gmail.com', N'S', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (5, 2, N'Tester Ana', N'12345', N'ana@gmail.com', N'N', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (6, 3, N'Tester Diego', N'12345', N'diego@gmail.com', N'N', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (7, 4, N'Tester Micaela', N'12345', N'mica@gmail.com', N'S', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Perfiles] ADD  CONSTRAINT [DF_Perfiles_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Barrios]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Contactos] FOREIGN KEY([id_contacto])
REFERENCES [dbo].[Contactos] ([id_contacto])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Contactos]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Clientes]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Usuarios] FOREIGN KEY([id_usuario_creador])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Usuarios]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Producto]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Responsable] FOREIGN KEY([id_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Responsable]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[Perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Perfiles]
GO
USE [master]
GO
ALTER DATABASE [BugsExtendido] SET  READ_WRITE 
GO
