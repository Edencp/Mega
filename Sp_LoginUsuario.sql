-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crea procedimiento almacenado para login de usuario


CREATE PROCEDURE LoginUsuario
    @nombre_usuario NVARCHAR(20),
    @contrasena NVARCHAR(25)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @usuario_id INT;

    -- Verificar si el usuario existe y la contraseña es correcta
    SELECT @usuario_id = id_usuario
    FROM Usuario
    WHERE nombre_usuario = @nombre_usuario AND contrasena = @contrasena;

    -- Si se encontró un usuario con esa contraseña, se devuelve 1, de lo contrario, se devuelve 0
    IF @usuario_id IS NOT NULL
    BEGIN
        SELECT 1 AS 'LoginExitoso';
    END
    ELSE
    BEGIN
        SELECT 0 AS 'LoginFallido';
    END
END;


-- Prueba SP login de usuario

EXEC LoginUsuario @nombre_usuario = 'Usuario1', @contrasena = 'aass1';