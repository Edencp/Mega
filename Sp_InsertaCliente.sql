-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crea procedimiento almacenado para insertar nuevo cliente
CREATE PROCEDURE InsertarCliente
    @rut_cliente NVARCHAR(10),
    @nombres NVARCHAR(50),
    @apellido_paterno NVARCHAR(20),
    @apellido_materno NVARCHAR(20),
    @direccion NVARCHAR(100),
    @id_region INT,
    @id_sexo INT,
    @id_estado INT,
    @id_usuario_creacion INT,
    @id_usuario_modificacion INT,
    @email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Clientes (rut_cliente, nombres, apellido_paterno, apellido_materno, direccion, id_region, id_sexo, id_estado, id_usuario_creacion, Id_usuario_modificacion, email)
    VALUES (@rut_cliente, @nombres, @apellido_paterno, @apellido_materno, @direccion, @id_region, @id_sexo, @id_estado, @id_usuario_creacion, @id_usuario_modificacion, @email);
END;


