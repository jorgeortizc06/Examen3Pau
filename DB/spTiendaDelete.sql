CREATE OR ALTER   PROC [dbo].[spTiendaDelete] @IdTienda INT
  

AS  
BEGIN  
  
  
   DELETE  dbo.tbTienda
   WHERE IdTienda=@IdTienda

END;