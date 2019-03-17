use mysql_yo;

CREATE TABLE `Books` (
  `id` INT NOT NULL,
  `title` VARCHAR(50) NULL,
  `author` VARCHAR(50) NULL,
  `sales` INT(10) NULL,
  `publication_date` INT(10) NULL,
PRIMARY KEY (`id`));


INSERT INTO Books (id,title,author,sales,publication_date) VALUES
('1','Don Quijote','Miguel de Cervantes','500','1962'),
('2','Historia de dos ciudades','Charles Dickens','200','1859'),
('3','El señor de los Anillos','J. R. R. Tolkien','150','1954'),
('4','El Principito','Antonio de Saint-Exupery','150','1943'),
('5','El hobbit','J. R. R. Toljien','100','1937'),
('6','Sueño en el Pabellon Rojo','Cao Xueqin','100','1759'),
('7','Triple representatividad','Jiang Zemin','100','2001'),
('8','Diez negritos','Agatha Cristie','100','1930'),
('9',NULL,NULL,NULL,NULL),
('10','El codigo Da Vinci','Dan Brown','80','2003'),
('11','El leon, la bruja y el armario','C. S. Lewis','85','1950');

SET @promedio = (SELECT AVG(sales) FROM books);

SELECT 
author, SUM(sales) AS ventas
FROM books
WHERE author IS NOT NULL 
GROUP BY author
HAVING SUM(sales) > (SELECT AVG(sales) FROM books)
ORDER BY ventas DESC;