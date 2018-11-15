CREATE TABLE [dbo].[Vendedor] (
    [idVendedor]        UNIQUEIDENTIFIER NOT NULL,
    [nombre]            VARCHAR (100)    NOT NULL,
    [porcentajeVenta]   DECIMAL (18, 2)  NOT NULL,
    [vigente]           TINYINT          NOT NULL,
    [descripcion]       VARCHAR (MAX)    NULL,
    [logo]              VARCHAR (200)    NULL,
    [telefono]          VARCHAR (200)    NULL,
    [contacto]          VARCHAR (MAX)    NULL,
    [url]               VARCHAR (200)    NULL,
    [email]             VARCHAR (100)    NOT NULL,
    [nombreResponsable] VARCHAR (100)    NOT NULL,
    [usuario]           VARCHAR (100)    NOT NULL,
    [clave]             VARCHAR (50)     NOT NULL,
    CONSTRAINT [PK_Vendedor] PRIMARY KEY CLUSTERED ([idVendedor] ASC)
);

