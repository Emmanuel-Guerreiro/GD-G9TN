CREATE TABLE direcciones(
    id SERIAL,
    provincia TEXT NOT NULL,
    ciudad TEXT NOT NULL,
    dir TEXT NOT NULL,
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
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id),
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
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id),
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
    cuit TEXT NOT NULL,
    nombre TEXT NOT NULL,
    telefono TEXT,
    --TODO: Agregar regex?
    mail VARCHAR(256),
    id_direccion INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id)
);

CREATE TABLE insumos(
    id SERIAL,
    nombre TEXT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE consume(
    id SERIAL,
    id_orden_trabajo INTEGER NOT NULL,
    id_insumo INTEGER NOT NULL,
    cantidad FLOAT,
    FOREIGN KEY (id_orden_trabajo) REFERENCES ordenes_trabajo(id),
    FOREIGN KEY (id_insumo) REFERENCES insumos(id),
    CONSTRAINT consumo_positivo CHECK (cantidad > 0)
);

CREATE TABLE provee(
    id SERIAL,
    id_proveedor INTEGER NOT NULL,
    id_insumo INTEGER NOT NULL,
    cantidad FLOAT,
    --Funcion propia de postgres
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    precio_unitario FLOAT,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id),
    FOREIGN KEY (id_insumo) REFERENCES insumos(id),
    CONSTRAINT consumo_positivo CHECK (cantidad > 0),
    CONSTRAINT precio_unitario_positivo CHECK (precio_unitario > 0)
)