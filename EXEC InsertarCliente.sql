EXEC InsertarCliente 
    @rut_cliente = '12345678-9',
    @nombres = 'Nombre',
    @apellido_paterno = 'ApellidoPaterno',
    @apellido_materno = 'ApellidoMaterno',
    @direccion = 'Dirección',
    @id_region = 1,
    @id_sexo = 1,
    @id_estado = 1,
    @id_usuario_creacion = 1,
    @id_usuario_modificacion = 1,
    @email = 'correo@example.com';


	-- Verifica registro de datos
	select * 
	from Clientes
	where rut_cliente = '12345678-9'
