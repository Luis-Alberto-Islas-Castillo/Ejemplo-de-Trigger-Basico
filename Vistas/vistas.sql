use mysql_yo;

CREATE TABLE `Libros` (
  `id` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `author` VARCHAR(50) NOT NULL,
  `sales` INT(10) NOT NULL,
  `publication_date` INT(10) NOT NULL,
PRIMARY KEY (`id`));


INSERT INTO Libros (id,title,author,sales,publication_date) VALUES
('1','Don Quijote','Miguel de Cervantes','500','1962'),
('2','Historia de dos ciudades','Charles Dickens','200','1859');