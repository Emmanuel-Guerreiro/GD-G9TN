CREATE TABLE direcciones(
    id SERIAL,
    provincia TEXT NOT NULL,
    ciudad TEXT NOT NULL,
    calle TEXT NOT NULL,
    numeracion TEXT,
    descripcion TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE cultivos(
    id SERIAL,
    nombre TEXT NOT NULL,
    hectareas FLOAT NOT NULL,
    -- Defino constraints
    CONSTRAINT hectareas_positivas CHECK (hectareas > 0),
    -- Defino keys
    PRIMARY KEY (id)
);

CREATE TABLE campos(
    id SERIAL,
    nombre TEXT NOT NULL,
    hectareas FLOAT NOT NULL,
    id_direccion INTEGER,
    id_cultivo INTEGER,
    id_cultivo_anterior INTEGER,
    CONSTRAINT hectareas_positivas CHECK (hectareas > 0),
    PRIMARY KEY (id),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id),
    FOREIGN KEY (id_cultivo) REFERENCES cultivos(id),
    FOREIGN KEY (id_cultivo_anterior) REFERENCES cultivos(id)
);

CREATE TABLE ordenes_trabajo(
    id SERIAL,
    id_campo INTEGER,
    tarea TEXT,
    fecha DATE,
    PRIMARY KEY(id),
    FOREIGN KEY (id_campo) REFERENCES campos(id)
);

CREATE TABLE empleados(
    id SERIAL,
    nombre TEXT NOT NULL,
    sueldo FLOAT NOT NULL,
    rol TEXT NOT NULL,
    id_jefe INTEGER,
    id_direccion INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (id_jefe) REFERENCES empleados(id),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id),
    CONSTRAINT sueldo_positivo CHECK (sueldo > 0)
);

CREATE TABLE trabajos_realizados(
    id SERIAL,
    id_empleado INTEGER NOT NULL,
    id_orden_trabajo INTEGER NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id),
    FOREIGN KEY (id_orden_trabajo) REFERENCES ordenes_trabajo(id)
);

CREATE TABLE proveedores(
    id SERIAL,
    cuit INTEGER NOT NULL,
    nombre TEXT NOT NULL,
    telefono INTEGER,
    --TODO: Agregar regex?
    mail VARCHAR(256),
    especialidad TEXT,
    id_direccion INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id)
);

CREATE TABLE insumos(
    id SERIAL,
    nombre TEXT NOT NULL,
    stock FLOAT,
    precio_unitario FLOAT,
    PRIMARY KEY(id),
    CONSTRAINT stock_positivo CHECK (stock > 0),
    CONSTRAINT precio_unitario_positivo CHECK (precio_unitario > 0)
);