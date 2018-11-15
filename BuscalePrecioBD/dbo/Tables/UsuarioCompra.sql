CREATE TABLE [dbo].[UsuarioCompra] (
    [idCompra]   UNIQUEIDENTIFIER NOT NULL,
    [idUsuario]  UNIQUEIDENTIFIER NOT NULL,
    [idProducto] UNIQUEIDENTIFIER NOT NULL,
    [idOferta]   UNIQUEIDENTIFIER NOT NULL,
    [estado]     VARCHAR (50)     NOT NULL,
    [ordenPago]  VARCHAR (100)    NULL,
    CONSTRAINT [PK_UsuarioCompra] PRIMARY KEY CLUSTERED ([idCompra] ASC),
    CONSTRAINT [FK_UsuarioCompra_Producto] FOREIGN KEY ([idProducto]) REFERENCES [dbo].[Producto] ([idProducto]),
    CONSTRAINT [FK_UsuarioCompra_UsuarioProducto] FOREIGN KEY ([idOferta]) REFERENCES [dbo].[UsuarioProducto] ([idOferta]),
    CONSTRAINT [FK_UsuarioCompra_Usuarios] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuarios] ([idUsuario])
);

