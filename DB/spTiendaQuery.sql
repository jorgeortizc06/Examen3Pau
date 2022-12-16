CREATE OR ALTER     PROC [dbo].[spTiendaQuery]  
    @IdTienda INT = NULL,  
    @Nombre VARCHAR(50) = NULL  
AS  
BEGIN  
    SELECT tienda.Nombre,  
           tienda.Direccion,  
           tienda.Telefono,  
           tienda.Latitud,  
           tienda.Longitud
    FROM dbo.tbTienda tienda  
    WHERE (  
              @IdTienda IS NULL  
              OR tienda.IdTienda = @IdTienda
          )  
          AND  
          (  
              @Nombre IS NULL  
              OR tienda.Nombre LIKE '%' + @Nombre + '%'  
          );  
END;