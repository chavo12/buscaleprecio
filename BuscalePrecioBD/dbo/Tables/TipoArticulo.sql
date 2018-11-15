CREATE TABLE [dbo].[TipoArticulo] (
    [idTipoArticulo] INT           NOT NULL,
    [nombre]         VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_TipoArticulo] PRIMARY KEY CLUSTERED ([idTipoArticulo] ASC)
);

