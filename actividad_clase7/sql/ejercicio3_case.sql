DROP PROCEDURE IF EXISTS sp_nota_servicio_case;
DELIMITER $$
CREATE PROCEDURE sp_nota_servicio_case(IN p_nota DECIMAL(4,2))
BEGIN
    CASE
        WHEN p_nota < 0 OR p_nota > 10 THEN
            SELECT 'Nota no valida: debe estar entre 0 y 10.' AS clasificacion;
        WHEN p_nota < 5 THEN
            SELECT 'Insuficiente: se debe revisar la calidad del servicio.' AS clasificacion;
        WHEN p_nota < 6 THEN
            SELECT 'Aprobado: servicio aceptable.' AS clasificacion;
        WHEN p_nota < 7 THEN
            SELECT 'Bien: servicio satisfactorio.' AS clasificacion;
        WHEN p_nota < 9 THEN
            SELECT 'Notable: servicio muy satisfactorio.' AS clasificacion;
        ELSE
            SELECT 'Sobresaliente: servicio excelente.' AS clasificacion;
    END CASE;
END$$
DELIMITER ;


