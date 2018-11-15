CREATE TABLE [dbo].[Comunicaciones] (
    [idComunicacion]     UNIQUEIDENTIFIER NOT NULL,
    [idTipoComunicacion] INT              NOT NULL,
    [asunto]             VARCHAR (50)     NOT NULL,
    [detalle]            VARCHAR (MAX)    NOT NULL,
    [mailDestinatario]   VARCHAR (100)    NOT NULL,
    [destinatario]       VARCHAR (100)    NOT NULL,
    [estado]             VARCHAR (50)     NOT NULL,
    [fechaAlta]          DATETIME         NOT NULL,
    [fechaEstado]        DATE             NOT NULL,
    CONSTRAINT [PK_Comunicaciones] PRIMARY KEY CLUSTERED ([idComunicacion] ASC),
    CONSTRAINT [FK_Comunicaciones_TipoComunicacion] FOREIGN KEY ([idTipoComunicacion]) REFERENCES [dbo].[TipoComunicacion] ([idTipoComunicacion])
);

