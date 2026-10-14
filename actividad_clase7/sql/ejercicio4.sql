DROP PROCEDURE IF EXISTS sp_dia_semana;
DELIMITER $$
CREATE PROCEDURE sp_dia_semana(IN p_dia INT)
BEGIN
    CASE p_dia
        WHEN 1 THEN SELECT 'Lunes' AS dia_programado;
        WHEN 2 THEN SELECT 'Martes' AS dia_programado;
        WHEN 3 THEN SELECT 'Miercoles' AS dia_programado;
        WHEN 4 THEN SELECT 'Jueves' AS dia_programado;
        WHEN 5 THEN SELECT 'Viernes' AS dia_programado;
        WHEN 6 THEN SELECT 'Sabado' AS dia_programado;
        WHEN 7 THEN SELECT 'Domingo' AS dia_programado;
        ELSE SELECT 'Numero no valido: use un valor del 1 al 7.'
             AS dia_programado;
    END CASE;
END$$
DELIMITER ;


