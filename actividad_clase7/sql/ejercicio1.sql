DROP PROCEDURE IF EXISTS sp_hola_mundo;
DELIMITER $$
CREATE PROCEDURE sp_hola_mundo()
BEGIN
    SELECT '¡Hola mundo! Bienvenido al sistema de gestion de servicios tecnicos.'
           AS mensaje;
END$$
DELIMITER ;


