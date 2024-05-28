-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crear la tabla Estado
CREATE TABLE Estado (
    Id_estado INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(15) NOT NULL
);
GO

-- Insertar valores en la tabla Estado
INSERT INTO Estado (Nombre) VALUES ('Activo'), ('Inactivo');
GO