create database clave_secreta;
use clave_secreta;



-- Crea la tabla Clientes
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    mail VARCHAR(50),
    numtarjetac VARCHAR(50),
    fechavto BLOB,
    cvv BLOB
);

 
INSERT INTO Clientes (nombre, apellido, mail, numtarjetac, fechavto, cvv)
VALUES
('Juan', 'Pérez', 'juan.perez@example.com', '4111111111111111', AES_ENCRYPT('12/23', 'clave_secreta'), AES_ENCRYPT('123', 'clave_secreta')),
('Ana', 'Gómez', 'ana.gomez@example.com', '4222222222222222', AES_ENCRYPT('11/24', 'clave_secreta'), AES_ENCRYPT('456', 'clave_secreta'));




SELECT nombre, apellido, mail, numtarjetac,
      cast( AES_DECRYPT(fechavto, 'clave_secreta'
      )as char) AS fecha_descifrada,
       cast(AES_DECRYPT(cvv, 'clave_secreta')as char) AS cvv_descifrado
FROM Clientes;


