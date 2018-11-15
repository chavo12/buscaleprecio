CREATE TABLE [dbo].[UsuarioProducto] (
    [idOferta]   UNIQUEIDENTIFIER NOT NULL,
    [idUsuario]  UNIQUEIDENTIFIER NOT NULL,
    [idProducto] UNIQUEIDENTIFIER NOT NULL,
    [fecha]      DATETIME         NOT NULL,
    [monto]      DECIMAL (18, 2)  NOT NULL,
    [estado]     VARCHAR (50)     NOT NULL,
    CONSTRAINT [PK_UsuarioProducto] PRIMARY KEY CLUSTERED ([idOferta] ASC),
    CONSTRAINT [FK_UsuarioProducto_Producto] FOREIGN KEY ([idProducto]) REFERENCES [dbo].[Producto] ([idProducto]),
    CONSTRAINT [FK_UsuarioProducto_Usuarios] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuarios] ([idUsuario])
);

