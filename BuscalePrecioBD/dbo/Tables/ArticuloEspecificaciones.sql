CREATE TABLE [dbo].[ArticuloEspecificaciones] (
    [idEspecificaion] UNIQUEIDENTIFIER NOT NULL,
    [idArticulo]      UNIQUEIDENTIFIER NOT NULL,
    [detalle]         VARCHAR (MAX)    NOT NULL,
    [vigente]         TINYINT          NULL,
    CONSTRAINT [PK_ArticuloEspecificaciones] PRIMARY KEY CLUSTERED ([idEspecificaion] ASC),
    CONSTRAINT [FK_ArticuloEspecificaciones_Articulo] FOREIGN KEY ([idArticulo]) REFERENCES [dbo].[Articulo] ([idArticulo])
);

