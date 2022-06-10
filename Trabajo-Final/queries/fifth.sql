SELECT
    e.nombre empleado,
    ot.id orden,
    c.nombre campo,
    ot.fecha fecha
FROM
    empleados e
    LEFT JOIN trabajos_realizados tr ON e.id = tr.id_empleado
    LEFT JOIN ordenes_trabajo ot ON ot.id = tr.id_orden_trabajo
    LEFT JOIN campos c ON c.id = ot.id_campo
    LEFT JOIN direcciones d ON d.id = c.id_direccion
WHERE
    d.provincia LIKE 'Ávila'
GROUP BY
    e.nombre,
    ot.id,
    c.nombre,
    ot.fecha
ORDER BY
    ot.fecha DESC
LIMIT
    10;