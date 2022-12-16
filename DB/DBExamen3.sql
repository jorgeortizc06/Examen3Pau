---Primero crear la base Examen3


CREATE TABLE tbTienda(
	IdTienda int IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(150),
	Direccion VARCHAR(MAX),
	Telefono VARCHAR(100),
	Latitud VARCHAR(100),
	Longitud VARCHAR(100)
	);



