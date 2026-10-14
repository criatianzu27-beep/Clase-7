DROP PROCEDURE IF EXISTS sp_contar_ordenes_cliente;
DELIMITER $$
CREATE PROCEDURE sp_contar_ordenes_cliente(IN p_id_cliente INT)
BEGIN
    DECLARE v_total INT DEFAULT 0;

    SELECT COUNT(*)
      INTO v_total
      FROM ordenes_servicio AS os
      INNER JOIN equipos AS e
              ON e.id_equipo = os.id_equipo
     WHERE e.id_cliente = p_id_cliente;

    IF v_total = 0 THEN
        SELECT CONCAT('El cliente ', p_id_cliente,
                      ' no tiene ordenes de servicio registradas.') AS mensaje;
    ELSE
        SELECT CONCAT('El cliente ', p_id_cliente,
                      ' tiene ', v_total,
                      ' orden(es) de servicio registrada(s).') AS mensaje;
    END IF;
END$$
DELIMITER ;


