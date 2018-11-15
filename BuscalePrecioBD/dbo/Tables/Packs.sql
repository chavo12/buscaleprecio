CREATE TABLE [dbo].[Packs] (
    [idPack]       UNIQUEIDENTIFIER NOT NULL,
    [detalle]      VARCHAR (MAX)    NOT NULL,
    [cantidad]     INT              NOT NULL,
    [precio]       DECIMAL (18, 2)  NOT NULL,
    [vigente]      TINYINT          NOT NULL,
    [duracionDias] INT              NULL,
    CONSTRAINT [PK_Packs] PRIMARY KEY CLUSTERED ([idPack] ASC)
);

