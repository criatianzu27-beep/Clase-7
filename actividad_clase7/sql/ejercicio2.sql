DROP PROCEDURE IF EXISTS sp_clasificar_numero;
DELIMITER $$
CREATE PROCEDURE sp_clasificar_numero(IN p_cantidad DOUBLE)
BEGIN
    IF p_cantidad > 0 THEN
        SELECT 'La cantidad de equipos es positiva.' AS mensaje;
    ELSEIF p_cantidad < 0 THEN
        SELECT 'La cantidad no puede ser negativa.' AS mensaje;
    ELSE
        SELECT 'La cantidad de equipos es cero.' AS mensaje;
    END IF;
END$$
DELIMITER ;


