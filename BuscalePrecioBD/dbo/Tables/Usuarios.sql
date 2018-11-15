CREATE TABLE [dbo].[Usuarios] (
    [idUsuario]      UNIQUEIDENTIFIER NOT NULL,
    [nombre]         VARCHAR (100)    NOT NULL,
    [apellido]       VARCHAR (100)    NOT NULL,
    [mail]           VARCHAR (200)    NOT NULL,
    [clave]          VARCHAR (50)     NOT NULL,
    [tokenFB]        VARCHAR (200)    NOT NULL,
    [tokenG]         VARCHAR (200)    NOT NULL,
    [fechaAlta]      DATETIME         NOT NULL,
    [estado]         VARCHAR (50)     NOT NULL,
    [creditosPagos]  INT              NULL,
    [creditosGratis] INT              NULL,
    [idLoc]          INT              NULL,
    CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED ([idUsuario] ASC),
    CONSTRAINT [FK_Usuarios_Localidad] FOREIGN KEY ([idLoc]) REFERENCES [dbo].[Localidad] ([idLoc])
);

