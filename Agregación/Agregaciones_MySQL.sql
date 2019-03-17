CREATE TABLE `Books2` (
  `id` INT NOT NULL,
  `title` VARCHAR(50) NULL,
  `author` VARCHAR(50) NULL,
  `sales` INT(10) NULL,
  `publication_date` INT(10) NULL,
PRIMARY KEY (`id`))

INSERT INTO Books2 (id,title,author,sales,publication_date) VALUES
('1','Don Quijote','Miguel de Cervantes','500','1962'),
('2','Historia de dos ciudades','Charles Dickens','200','1859'),
('3','El señor de los Anillos','J. R. R. Tolkien','150','1954'),
('4','El Principito','Antonio de Saint-Exupery','150','1943'),
('5','El hobbit','J. R. R. Toljien','100','1937'),
('6','Sueño en el Pabellon Rojo','Cao Xueqin','100','1759'),
('7','Triple representatividad','Jiang Zemin','100','2001'),
('8','Diez negritos','Agatha Cristie','100','1930'),
('9',NULL,NULL,NULL,NULL);

SELECT COUNT(*)as Total FROM books2;   /* Primera Función de agregación permite contar registros  */

SELECT SUM(sales) as total FROM books2;  /* Segunda Función de agregación permite sumar los registros  */

SELECT AVG(sales) as total FROM books2;  /* Tercera Función de agregación permite calcular un promedio en base de los registros  */

SELECT MAX(sales) as total FROM books2;  /* Cuarta Función de agregación regresa el valor máximo de todos los registros  */

SELECT MIN(sales) as total FROM books2;  /* Quinta Función de agregación regresa el valor minimo de todos los registros  */




