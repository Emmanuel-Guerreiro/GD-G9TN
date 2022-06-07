COPY direcciones(id, provincia, ciudad, dir, descripcion)
FROM
    '~/Facultad/GD-G9TN/Trabajo-Final/generator/direcciones.csv' DELIMITER ',' CSV HEADER;