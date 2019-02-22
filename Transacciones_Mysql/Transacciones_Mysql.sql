CREATE TABLE `particiones`.`clientes` (
  `username` VARCHAR(50) NOT NULL,
  `saldo` INT NOT NULL,
PRIMARY KEY (`username`));


CREATE TABLE `particiones`.`usuarios` (
  `nombre` VARCHAR(50) NOT NULL,
  `edad` INT NOT NULL,
PRIMARY KEY (`nombre`));


START TRANSACTION;

INSERT usuarios(nombre, edad) VALUES ('codi','6');

SELECT * FROM usuarios;

INSERT clientes(username, saldo) VALUES ('codi','600');

SELECT * FROM clientes;

COMMIT;

START TRANSACTION;

INSERT usuarios(nombre, edad) VALUES ('codi2','6');

SELECT * FROM usuarios;

INSERT clientes(username, saldo) VALUES ('codi','600');

ROLLBACK;

SELECT * FROM usuarios;