CREATE TABLE `Autores` (
  `id` INT NOT NULL,
  `name` VARCHAR(50) NULL,
  `country` VARCHAR(50) NULL,
PRIMARY KEY (`id`))

INSERT INTO Autores (id,name,country) VALUES
('1','Miguel de Cervantes','España'),
('2','Charles Dickens','Reino Unido'),
('3','J.R.R Tolkien','Reino Unido'),
('4','Antoine de Saint-Exupery','Francia'),
('5','Cao Xuequin','China'),
('6','Jiang Zemin','China'),
('7','Agatha Christie','Reino Unido'),
('8','Dan Brown','Estados Unidos'),
('9','C. S. Lewis','Reino Unido');

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

SELECT title FROM books WHERE author IN (SELECT name FROM autores WHERE country = 'Reino Unido');  /* Subquery */

SELECT title 
FROM books
INNER JOIN autores ON books.author = autores.name
WHERE autores.country = 'Reino Unido';    /*  Union de Tablas con Inner Join  */

SELECT 
title
FROM books
WHERE sales > (SELECT AVG(sales) FROM books);