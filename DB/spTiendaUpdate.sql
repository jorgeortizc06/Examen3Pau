CREATE OR ALTER  PROC [dbo].[spTiendaUpdate]
    @IdTienda int,
    @Nombre VARCHAR(150),  
    @Direccion VARCHAR(MAX),  
    @Telefono VARCHAR(100),  
    @Latitud VARCHAR(100),  
    @Longitud  VARCHAR(100)
AS  
BEGIN  
  
	UPDATE [dbo].[tbTienda]
	   SET [Nombre] = @Nombre
		  ,[Direccion] = @Direccion
		  ,[Telefono] = @Telefono
		  ,[Latitud] = @Latitud
		  ,[Longitud] = @Longitud
	 WHERE IdTienda = @IdTienda

END;