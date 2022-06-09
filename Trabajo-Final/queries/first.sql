--Los empleados que responden directamente al dueño de la empresa
SELECT
    e.nombre empleado,
    j.nombre jefe,
    j.rol rol_jefe
FROM
    empleados e
    LEFT JOIN empleados j ON e.id_jefe = j.id
WHERE
    j.rol LIKE 'Dueño';