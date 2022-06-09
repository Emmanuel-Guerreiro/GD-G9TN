SELECT
    i.nombre insumo,
    cv.nombre campo,
    cs.cantidad consumido
FROM
    insumos i
    LEFT JOIN consume cs ON cs.id_insumo = i.id
    LEFT JOIN ordenes_trabajo ot ON cs.id_orden_trabajo = ot.id
    LEFT JOIN campos cp ON cp.id = ot.id_campo
    LEFT JOIN cultivos cv ON cv.id = cp.id_cultivo
WHERE
    cv.nombre SIMILAR TO 'soja';