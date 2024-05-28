-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crea procedimiento almacenado para mostrar datos del cliente por rut

CREATE PROCEDURE MostrarClientePorRut
    @rut_cliente NVARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.rut_cliente,
        c.nombres,
        c.apellido_paterno,
        c.apellido_materno,
        c.direccion AS direccion_cliente,
        s.tipo AS tipo_sexo,
        r.nombre AS region,
        e.nombre AS estado,
        uc.nombre_usuario AS usuario_creacion,
        um.nombre_usuario AS usuario_modificacion,
		c.email
    FROM 
        Clientes c
    JOIN 
        Region r ON c.id_region = r.id_region
    JOIN 
        Estado e ON c.id_estado = e.id_estado
    JOIN 
        Usuario uc ON c.id_usuario_creacion = uc.id_usuario
    LEFT JOIN 
        Usuario um ON c.id_usuario_modificacion = um.id_usuario
    JOIN 
        Sexo s ON c.id_sexo = s.id_sexo
    WHERE 
        c.rut_cliente = @rut_cliente;
END;


--Prueba SP

EXEC MostrarClientePorRut @rut_cliente = '18901234-5';
