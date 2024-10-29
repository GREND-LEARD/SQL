CREATE DATABASE auditing;
USE auditing;

CREATE TABLE auditoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    fecha DATETIME
);

DELIMITER //
CREATE PROCEDURE registra_auditoria()
BEGIN
    INSERT INTO auditoria (descripcion, fecha) VALUES ('Auditoria de la base de datos', NOW());
END;
//
DELIMITER ;

CALL registra_auditoria();
SELECT * FROM auditoria;