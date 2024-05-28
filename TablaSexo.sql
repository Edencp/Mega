-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crear la tabla Sexo
CREATE TABLE Sexo (
    Id_sexo INT PRIMARY KEY IDENTITY,
    Tipo CHAR(10) NOT NULL
);
GO

-- Insertar valores en la tabla Sexo
INSERT INTO Sexo (tipo) VALUES ('Masculino'), ('Femenino'),('Otro') ;
GO