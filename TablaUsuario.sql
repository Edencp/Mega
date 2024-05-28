-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crear la tabla Usuario
CREATE TABLE Usuario (
    Id_usuario INT PRIMARY KEY IDENTITY,
    nombre_usuario VARCHAR(20) NOT NULL UNIQUE,
    contrasena VARCHAR(25) NOT NULL,
    fecha_creacion DATETIME DEFAULT GETDATE(),
    fecha_modificacion DATETIME DEFAULT GETDATE()
);
GO

-- Insertar valores en la tabla Usuario
INSERT INTO Usuario (nombre_usuario, contrasena) 
VALUES ('Usuario1', 'pass1'), ('Usuario2', 'pass2');
GO