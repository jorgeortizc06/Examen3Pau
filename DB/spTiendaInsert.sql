CREATE OR ALTER PROC [dbo].[spTiendaInsert]
	@Nombre VARCHAR(150),  
    @Direccion VARCHAR(MAX),  
    @Telefono VARCHAR(100),  
    @Latitud VARCHAR(100),  
    @Longitud  VARCHAR(100)
AS
BEGIN

	INSERT INTO dbo.tbtienda
	(
			Nombre,  
           Direccion,  
           Telefono,  
           Latitud,  
           Longitud
	)
	VALUES
	(
		@Nombre,  
		@Direccion,  
		@Telefono,  
		@Latitud,  
		@Longitud
	)

END;