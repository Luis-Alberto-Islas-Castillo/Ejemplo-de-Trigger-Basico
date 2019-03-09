use mysql_yo;

CREATE TABLE `Libros` (
  `id` INT NOT NULL,
  `title` VARCHAR(50) NULL,
  `author` VARCHAR(50) NULL,
  `sales` INT(10) NULL,
  `publication_date` INT(10) NULL,
PRIMARY KEY (`id`));


INSERT INTO Libros (id,title,author,sales,publication_date) VALUES
('1','Don Quijote','Miguel de Cervantes','500','1962'),
('2','Historia de dos ciudades','Charles Dickens','200','1859'),
('3','El señor de los Anillos','J. R. R. Tolkien','150','1954'),
('4','El Principito','Antonio de Saint-Exupery','150','1943'),
('5','El hobbit','J. R. R. Toljien','100','1937'),
('7','Triple representatividad','Jiang Zemin','100','2001'),
('8','Diez negritos','Agatha Cristie','100','1930'),
('9',NULL,NULL,NULL,NULL),
('10','El codigo Da Vinci','Dan Brown','80','2003'),
('11','El leon, la bruja y el armario','C. S. Lewis','85','1950');

CREATE VIEW most_popular_books_view AS
  SELECT id, title, sales FROM Libros WHERE title IS NOT NULL AND sales > 100 ORDER BY sales DESC;

SELECT * FROM most_popular_books_view;