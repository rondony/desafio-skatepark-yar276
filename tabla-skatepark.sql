CREATE TABLE administradores(
	id SERIAL PRIMARY KEY,
	estado BOOLEAN NOT NULL DEFAULT true,
	id_skater INT NOT NULL REFERENCES SKATERS(id)
);

SELECT * FROM administradores;


INSERT INTO administradores values
(default, default, 7);



SELECT * FROM SKATERS;

INNER JOIN administradores a
ON s.id = a.id_skater;



--TABLA DE PRODUCTOS

 CREATE TABLE productos(
	id SERIAL primary key,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(500) NOT NULL,
	precio INT NOT NULL DEFAULT 9999999 CHECK(precio > 0),
	stock SMALLINT NOT NULL DEFAULT 0 CHECK(stock >=0),
	foto VARCHAR(100) NOT NULL DEFAULT 'sin_foto.jpg'
 );


SELECT * FROM productos;


 INSERT INTO productos(nombre, descripcion, precio, stock, foto) values
 ('Skate SK8MAFIA', 'Skate color negro con letras blancas', 150000, 10, 'producto1.webp'),
  ('Patines 4 ruedas', 'Patines negros con blanco de 4 ruedas en línea', 100000, 5, 'producto2.jpeg'),
   ('Skate con diseño', 'Diseños aleatorios', 50000, 15, 'producto3.jpeg');