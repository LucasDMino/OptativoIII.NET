CREATE TABLE [dbo].[Cuentas]
(
	[idCuenta] INT NOT NULL PRIMARY KEY IDentity (1,1), 
    [Titular] VARCHAR(50) NOT NULL, 
    [Saldo] INT NULL, 
    [Moneda] VARCHAR(50) NULL
)


CREATE TABLE [dbo].[cuenta_datos]
(
	[Idcuentacte] INT NOT NULL PRIMARY KEY IDentity(1,1), 
    [limite_diario] INT NULL DEFAULT 2000000, 
    [tipo_cuenta] VARCHAR(50) NULL
)

CREATE TABLE [dbo].[cajadeahorro]
(
	[Idcuenta] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [idcaja] INT NULL, 
    [tasainteres] INT NULL
)
