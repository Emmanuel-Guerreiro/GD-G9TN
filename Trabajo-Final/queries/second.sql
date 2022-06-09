SELECT
    e.nombre,
    c.nombre nombre_campo
FROM
    empleados e
    LEFT JOIN trabajos_realizados tr ON tr.id_empleado = e.id
    LEFT JOIN ordenes_trabajo ot ON tr.id_orden_trabajo = ot.id
    LEFT JOIN campos c ON c.id = ot.id_campo
WHERE
    c.nombre SIMILAR TO 'Ilaria Mercadante'
GROUP BY
    e.nombre,
    c.nombre;