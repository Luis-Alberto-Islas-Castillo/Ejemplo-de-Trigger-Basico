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

