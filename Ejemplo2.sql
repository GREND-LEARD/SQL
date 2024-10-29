CREATE DATABASE ejemplo2;
USE ejemplo2;

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    salario DECIMAL(10,2)
);

DELIMITER //

CREATE PROCEDURE actualiza_salario(IN p_nombre VARCHAR(50), IN p_salario DECIMAL(10,2))
BEGIN
    INSERT INTO empleados (nombre, salario) VALUES (p_nombre, p_salario);
END;
//

DELIMITER ;

CALL actualiza_salario('Juan Perez', 10000);
CALL actualiza_salario('Ana Gomez', 12000);
SELECT * FROM empleados;