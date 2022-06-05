SELECT
    MAX(cuenta_clientes) as max_clientes,
    nombre
FROM
    (
        SELECT
            COUNT(c.codcli) as cuenta_clientes,
            p.nombre as nombre
        FROM
            clientes c
            LEFT JOIN pueblos pu ON c.codpue = pu.codpue
            LEFT JOIN provincias p ON pu.codpro = p.codpro
        GROUP BY
            p.nombre
    ) cuenta
GROUP BY
    nombre;