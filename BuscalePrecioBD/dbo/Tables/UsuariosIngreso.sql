CREATE TABLE [dbo].[UsuariosIngreso] (
    [tokenIngreso] UNIQUEIDENTIFIER NOT NULL,
    [idUsuario]    UNIQUEIDENTIFIER NOT NULL,
    [fechaInicio]  DATETIME         NOT NULL,
    [fechaFin]     DATETIME         NOT NULL,
    [origen]       VARCHAR (100)    NULL,
    [modoLogin]    VARCHAR (50)     NULL,
    CONSTRAINT [PK_UsuariosIngreso] PRIMARY KEY CLUSTERED ([tokenIngreso] ASC),
    CONSTRAINT [FK_UsuariosIngreso_Usuarios] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuarios] ([idUsuario])
);

