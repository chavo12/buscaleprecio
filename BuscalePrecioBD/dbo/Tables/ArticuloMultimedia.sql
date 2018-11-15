CREATE TABLE [dbo].[ArticuloMultimedia] (
    [idMultimedia] UNIQUEIDENTIFIER NOT NULL,
    [idArticulo]   UNIQUEIDENTIFIER NOT NULL,
    [nombre]       VARCHAR (100)    NOT NULL,
    [path]         VARBINARY (200)  NOT NULL,
    [tipo]         VARCHAR (50)     NULL,
    [vigente]      TINYINT          NULL,
    CONSTRAINT [PK_ArticuloMultimedia] PRIMARY KEY CLUSTERED ([idMultimedia] ASC),
    CONSTRAINT [FK_ArticuloMultimedia_Articulo] FOREIGN KEY ([idArticulo]) REFERENCES [dbo].[Articulo] ([idArticulo])
);

