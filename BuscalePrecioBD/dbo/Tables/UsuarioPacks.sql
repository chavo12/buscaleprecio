CREATE TABLE [dbo].[UsuarioPacks] (
    [idCompraPack]     UNIQUEIDENTIFIER NOT NULL,
    [idUsuario]        UNIQUEIDENTIFIER NOT NULL,
    [idPack]           UNIQUEIDENTIFIER NOT NULL,
    [fechaCompra]      DATETIME         NOT NULL,
    [importe]          DECIMAL (18, 2)  NOT NULL,
    [fechaVencimiento] DATETIME         NULL,
    CONSTRAINT [PK_UsuarioPacks] PRIMARY KEY CLUSTERED ([idCompraPack] ASC),
    CONSTRAINT [FK_UsuarioPacks_Packs] FOREIGN KEY ([idPack]) REFERENCES [dbo].[Packs] ([idPack]),
    CONSTRAINT [FK_UsuarioPacks_Usuarios] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuarios] ([idUsuario])
);

