-- Usar la base de datos MegaClientes
USE MegaClientes;
GO

-- Crear la tabla Region si no existe
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Region')
BEGIN
    CREATE TABLE Region (
        Id_region INT PRIMARY KEY IDENTITY,
        Nombre VARCHAR(90) NOT NULL
    );
END
GO

-- Insertar valores en la tabla Region 
INSERT INTO Region (Nombre) VALUES 
('Región de Arica y Parinacota'), 
('Región de Tarapacá'), 
('Región de Antofagasta'), 
('Región de Atacama'), 
('Región de Coquimbo'), 
('Región de Valparaíso'), 
('Región Metropolitana de Santiago'), 
('Región del Libertador General Bernardo OHiggins'), 
('Región del Maule'), 
('Región de Ñuble'), 
('Región del Biobío'), 
('Región de La Araucanía'), 
('Región de Los Ríos'), 
('Región de Los Lagos'), 
('Región de Aysén del General Carlos Ibáñez del Campo'), 
('Región de Magallanes y de la Antártica Chilena');
GO


