-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crea procedimiento almacenado para Cambiar contraseña

CREATE PROCEDURE ModificarContrasenaUsuario
    @nombre_usuario NVARCHAR(50),
    @contrasena_anterior NVARCHAR(50),
    @nueva_contrasena NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si la nueva contraseña es diferente a la anterior
    IF @contrasena_anterior = @nueva_contrasena
    BEGIN
        SELECT 'Error: La nueva contraseña no puede ser igual a la contraseña anterior.' AS 'Mensaje';
        RETURN;
    END

    -- Verificar si la contraseña anterior es correcta 
    DECLARE @usuario_id INT;
    SELECT @usuario_id = id_usuario
    FROM Usuario
    WHERE nombre_usuario = @nombre_usuario AND contrasena = @contrasena_anterior;

    -- Si la contraseña anterior es correcta, actualizar la contraseña y la fecha de modificación del usuario
    IF @usuario_id IS NOT NULL
    BEGIN
        UPDATE Usuario
        SET contrasena = @nueva_contrasena,
            fecha_modificacion = GETDATE()
        WHERE nombre_usuario = @nombre_usuario;

        SELECT 'Contraseña modificada correctamente.' AS 'Mensaje';
    END
    ELSE
    BEGIN
        SELECT 'Error: La contraseña anterior no es válida.' AS 'Mensaje';
    END
END;



-- Prueba SP Cambio de contraseña

EXEC ModificarContrasenaUsuario @nombre_usuario = 'Usuario1', @contrasena_anterior = 'aass2', @nueva_contrasena = 'aass3';
