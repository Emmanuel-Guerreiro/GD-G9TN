SELECT
    e.nombre empleado,
    ot.fecha fecha_uso
FROM
    empleados e
    LEFT JOIN trabajos_realizados tr ON tr.id_empleado = e.id
    LEFT JOIN ordenes_trabajo ot ON tr.id_orden_trabajo = ot.id
    LEFT JOIN consume cs ON cs.id_orden_trabajo = ot.id
    LEFT JOIN insumos i ON i.id = cs.id_insumo
WHERE
    i.nombre LIKE 'Roundup'
GROUP BY
    e.nombre,
    ot.fecha;