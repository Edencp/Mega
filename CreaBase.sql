-- Crear la base de datos MegaClientes si no existe
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'MegaClientes')
BEGIN
    CREATE DATABASE MegaClientes;
END
GO

-- Usar la base de datos MegaClientes
USE MegaClientes;
GO