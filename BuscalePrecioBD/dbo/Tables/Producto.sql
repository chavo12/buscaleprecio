CREATE TABLE [dbo].[Producto] (
    [idProducto]      UNIQUEIDENTIFIER NOT NULL,
    [idArticulo]      UNIQUEIDENTIFIER NOT NULL,
    [fechaInicio]     DATETIME         NOT NULL,
    [fechaFin]        DATETIME         NULL,
    [estado]          VARCHAR (50)     NULL,
    [acumulado]       DECIMAL (18, 2)  NULL,
    [precioLista]     DECIMAL (18, 2)  NOT NULL,
    [precioVendido]   DECIMAL (18, 2)  NULL,
    [porcentajeVenta] DECIMAL (18, 2)  NOT NULL,
    [idVendedor]      UNIQUEIDENTIFIER NOT NULL,
    [detalle]         VARCHAR (MAX)    NULL,
    [cantidadVisitas] INT              NULL,
    [repetir]         TINYINT          NULL,
    [cantidadCredito] INT              NOT NULL,
    CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED ([idProducto] ASC),
    CONSTRAINT [FK_Producto_Articulo] FOREIGN KEY ([idArticulo]) REFERENCES [dbo].[Articulo] ([idArticulo]),
    CONSTRAINT [FK_Producto_Vendedor] FOREIGN KEY ([idVendedor]) REFERENCES [dbo].[Vendedor] ([idVendedor])
);

