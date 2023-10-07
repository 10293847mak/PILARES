-- Base de Datos
-- Entregable 8
-- Alejandro Adrian Coy Vazquez
-- 3016ZL02
-- 04/10/2023
DROP DATABASE IF EXISTS test;
 CREATE DATABASE test;
 USE test;
 CREATE TABLE Alumnos(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60) NOT NULL,
	apellido1 VARCHAR(60) NOT NULL,
	apellido2 VARCHAR(60) NOT NULL,
	nota FLOAT NOT NULL
 );
 
DELIMITER $$

CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON Alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
	END IF;
    IF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;
END $$

CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE ON Alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
	END IF;
    IF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;
END$$

-- Prueba de fincionamiento 
-- Prueba primer trigger_check_nota_before_insert
INSERT INTO Alumnos (nombre, apellido1, apellido2, nota) VALUES ('Alejandro', 'Coy', 'Vazquez', 8);
INSERT INTO Alumnos (nombre, apellido1, apellido2, nota) VALUES ('Miguel Angel', 'Coy', 'Vazquez', 9.5);
INSERT INTO Alumnos (nombre, apellido1, apellido2, nota) VALUES ('Juan', 'Perez', 'Gomez', 10);
INSERT INTO Alumnos (nombre, apellido1, apellido2, nota) VALUES ('Ana', 'Lopez', 'Martinez', 10);
INSERT INTO Alumnos (nombre, apellido1, apellido2, nota) VALUES ('Jose', 'Jimenez', 'Ruiz', -5);
INSERT INTO Alumnos (nombre, apellido1, apellido2, nota) VALUES ('Rosa', 'Pedrobski', 'Gomez', 15);

-- Prueba segundo trigger trigger_check_nota_before_update
UPDATE Alumnos SET nota = -3 WHERE id = 3;
UPDATE Alumnos SET nota = 12 WHERE id = 4;
SELECT * FROM Alumnos;

