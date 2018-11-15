CREATE TABLE [dbo].[Articulo] (
    [idArticulo]  UNIQUEIDENTIFIER NOT NULL,
    [nombre]      VARCHAR (100)    NOT NULL,
    [descripcion] VARCHAR (MAX)    NOT NULL,
    [url]         VARCHAR (100)    NULL,
    [idTipo]      INT              NOT NULL,
    [marca]       VARCHAR (100)    NULL,
    CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED ([idArticulo] ASC),
    CONSTRAINT [FK_Articulo_TipoArticulo] FOREIGN KEY ([idTipo]) REFERENCES [dbo].[TipoArticulo] ([idTipoArticulo])
);

