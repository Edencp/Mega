EXEC ActualizarClientePorRut 
    @rut_cliente = '12345678-9',
    @nombres = 'Nombre',
    @apellido_paterno = 'Paterno',
    @apellido_materno = 'Materno',
    @direccion = 'Nueva Dirección',
    @id_region = 2,
    @id_sexo = 2,
    @id_estado = 2,
    @id_usuario_modificacion = 2,
	@email = 'nuevo@email.com';

	-- Verifica modificación de datos
	select * 
	from Clientes
	where rut_cliente = '12345678-9'
