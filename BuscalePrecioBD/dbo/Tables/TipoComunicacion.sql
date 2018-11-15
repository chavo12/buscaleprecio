CREATE TABLE [dbo].[TipoComunicacion] (
    [idTipoComunicacion] INT           NOT NULL,
    [nombre]             VARCHAR (50)  NOT NULL,
    [modelo]             VARCHAR (MAX) NULL,
    CONSTRAINT [PK_TipoComunicacion] PRIMARY KEY CLUSTERED ([idTipoComunicacion] ASC)
);

