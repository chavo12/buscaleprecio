CREATE TABLE [dbo].[Localidad] (
    [idLoc]    INT           NOT NULL,
    [idCiudad] INT           NOT NULL,
    [nombre]   VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED ([idLoc] ASC),
    CONSTRAINT [FK_Localidad_Ciudad] FOREIGN KEY ([idCiudad]) REFERENCES [dbo].[Ciudad] ([idCiudad])
);

