-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crea Indice tabla clientes
CREATE INDEX IX_Clientes_rut_cliente ON Clientes(rut_cliente);
