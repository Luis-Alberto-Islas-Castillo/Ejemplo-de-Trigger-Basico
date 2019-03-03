USE mysql_yo;

CREATE TABLE `Libros` (
  `libro_id` INT(10) NOT NULL,
  `autor_id` INT(10) NOT NULL,
  `titulo` VARCHAR(50) NOT NULL,
  `descripcion` VARCHAR(50) NOT NULL,
  `paginas` INT(10) NOT NULL,
  `fecha_publicacion` DATE NOT NULL,
  `fecha_creacion` DATETIME NOT NULL,
  `ventas` INT(10) NOT NULL,
  `stock` INT(19) NOT NULL,
PRIMARY KEY (`libro_id`));

INSERT INTO Libros (libro_id,autor_id,titulo,descripcion,paginas,fecha_publicacion,fecha_creacion,ventas,stock) VALUES
('01','01','LucesDeBohemia','Espasa-CalpeSA,1997.Paperback.Condición:Used;Good.','100','2014/10/24','2014/06/25 20:00:00','30','22'),
('02','02','CrimenyCastgo',': Catedra,2008.Hardcover.Condición:Good.','900','2011/03/25','2011/03/12 18:00:00','21','100'),
('03','03','CienAnosdeSoledad','Editorial:Mondadori/Sudamericana','500','2009/01/10','2009/01/25 13:00:00','57','90'),
('04','04','LaCasadelosespiritus','EditorialDiana,Mexico,1998.','250','1998/04/23','1998/04/25 21:00:00','23','50');

SET @sentencia = "SELECT libro_id, titulo FROM libros WHERE autor_id = ? and fecha_publicacion > ?";

SET @autor_id = 1;
SET @fecha_publicacion = '1998/04/23';

PREPARE sentencia FROM @sentencia;

EXECUTE sentencia USING @autor_id, @fecha_publicacion;

DEALLOCATE PREPARE sentencia;

SET @tabla = "Libros";
SET @Condición = "WHERE autor_id = ? and fecha_publicacion > ?";
SET @selectC = "SELECT libro_id, titulo FROM";

SET @sentencia = CONCAT(@selectC, " ", @tabla, " ", @Condición);

SELECT @sentencia;