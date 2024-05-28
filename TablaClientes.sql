-- Usar la base de datos MegaClientes
USE MegaClientes;
GO


-- Crear la tabla Clientes
CREATE TABLE Clientes (
    rut_cliente VARCHAR(10) PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(20) NOT NULL,
    apellido_materno VARCHAR(20) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    id_region INT NOT NULL,
    id_sexo INT NOT NULL,
    Id_estado INT NOT NULL,
    Id_usuario_creacion INT NOT NULL,
    Id_usuario_modificacion INT,
    email VARCHAR(100) NOT NULL,
    FOREIGN KEY (Id_sexo) REFERENCES Sexo(Id_sexo),
    FOREIGN KEY (Id_region) REFERENCES Region(Id_region),
    FOREIGN KEY (Id_estado) REFERENCES Estado(Id_estado),
    FOREIGN KEY (Id_usuario_creacion) REFERENCES Usuario(Id_usuario),
    FOREIGN KEY (Id_usuario_modificacion) REFERENCES Usuario(Id_usuario)
);
GO



-- Insertar registros en la tabla Clientes
INSERT INTO Clientes (rut_cliente, nombres, apellido_paterno, apellido_materno, direccion, id_region, id_sexo, id_estado, id_usuario_creacion, Id_usuario_modificacion, email)
VALUES
('12345558-9', 'Juana', 'Arcos', 'Gatica', 'Calle 123', 1, 2, 1, 1, 1, 'juana@prueba.com'),
('2345559-0', 'Mario', 'Maldonado', 'Lopez', 'Av. Principal 456', 2, 1, 1, 2,2, 'mario@prueba.com'),
('1456590-1', 'Pedro', 'Plaza', 'Martínez', 'Plaza Central 789', 3, 1, 1, 1,1, 'pedro@prueba.com'),
('25678901-2', 'Carlos', 'Hernandez', 'Aguero', 'Callejon 456', 4, 1, 2, 2,2, 'carlos@prueba.com'),
('26789012-3', 'Luis', 'Diaz', 'Perez', 'Ruta 101 Km 12', 5, 1, 1, 1,1, 'luis@prueba.com'),
('17890123-4', 'Claudia', 'Gomez', 'Martinez', 'Av. Central 789', 6, 2, 1, 2,2, 'claudia@prueba.com'),
('18901234-5', 'Alexis', 'Andrade', 'Salas', 'Calle 456', 7, 3, 1, 1,1, 'alexis@prueba.com'),
('19012345-6', 'Alejandra', 'Alvarado', 'Gatica', 'Av. Principal 123', 8, 2, 2, 2,2, 'alejandra@prueba.com'),
('10123456-7', 'Eduardo', 'Avello', 'Leiva', 'Calle Principal 789', 9, 1, 1, 1,1, 'eduardo@prueba.com'),
('11234567-8', 'María', 'Zamorano', 'Labarca', 'Av. Central 456', 10, 3, 1, 2,2, 'maria@prueba.com');
GO

