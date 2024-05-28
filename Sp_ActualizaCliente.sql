-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crea procedimiento almacenado para actualiza cliente

CREATE PROCEDURE ActualizarClientePorRut
    @rut_cliente NVARCHAR(10),
    @nombres NVARCHAR(50),
    @apellido_paterno NVARCHAR(20),
    @apellido_materno NVARCHAR(20),
    @direccion NVARCHAR(100),
    @id_region INT,
    @id_sexo INT,
    @id_estado INT,
    @id_usuario_modificacion INT,
	@email  NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Clientes
    SET nombres = @nombres,
        apellido_paterno = @apellido_paterno,
        apellido_materno = @apellido_materno,
        direccion = @direccion,
        id_region = @id_region,
        id_sexo = @id_sexo,
        id_estado = @id_estado,
        Id_usuario_modificacion = @id_usuario_modificacion,
		email = @email
    WHERE rut_cliente = @rut_cliente;
END;
