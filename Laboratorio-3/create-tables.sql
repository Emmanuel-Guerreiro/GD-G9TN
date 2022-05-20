DROP TABLE IF EXISTS lineas_fac,
facturas,
articulos,
clientes,
vendedores,
pueblos,
provincias;

CREATE TABLE provincias(
    /*Lo mismo que en todas las primary keys*/
    codpro INTEGER NOT NULL UNIQUE,
    nombre VARCHAR NOT NULL,
    /*Defino keys*/
    PRIMARY KEY(codpro)
);

CREATE TABLE pueblos(
    codpue INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR NOT NULL,
    codpro INTEGER,
    FOREIGN KEY (codpro) REFERENCES provincias (codpro)
);

CREATE TABLE clientes(
    codcli INTEGER NOT NULL,
    nombre VARCHAR NOT NULL,
    direccion VARCHAR,
    codpostal INTEGER,
    codpue INTEGER REFERENCES pueblos (codpue),
    /*Keys*/
    PRIMARY KEY(codcli)
);

CREATE TABLE vendedores(
    codven INTEGER NOT NULL,
    nombre VARCHAR NOT NULL,
    direccion VARCHAR,
    codpostal INTEGER,
    codpue INTEGER,
    codjefe INTEGER,
    /*Keys*/
    PRIMARY KEY(codven),
    FOREIGN KEY(codpue) REFERENCES pueblos(codpue) -- FOREIGN KEY(codjefe) REFERENCES vendedores(codven)
);

CREATE TABLE facturas(
    /*Lo mismo que en linea de lineas_fac*/
    codfac INTEGER NOT NULL,
    fecha DATE,
    codcli INTEGER,
    codven INTEGER,
    iva FLOAT,
    dto FLOAT,
    /*Defino keys*/
    PRIMARY KEY(codfac),
    FOREIGN KEY(codcli) REFERENCES clientes(codcli),
    FOREIGN KEY(codven) REFERENCES vendedores(codven)
);

CREATE TABLE articulos(
    /*Lo mismo que en linea de lineas_fac*/
    codart    VARCHAR NOT NULL,
    descrip   VARCHAR,
    precio    FLOAT,
    stock     INTEGER,
    stock_min INTEGER,
    dto       FLOAT,
    /*Defino keys*/
    PRIMARY KEY (codart)
    /*Defino constraints extras para que los datos
     tengan sentido*/
    --Lo comento porque en los datos que tenemos que usar, uno no cumple
    -- CHECK (stock >= stock_min)
);

CREATE TABLE lineas_fac(
    /*linea deberia de ser Serial. Pero
     Los datos que nos dan para trabajar 
     no lo cumplen. Con esto no se queja*/
    id SERIAL PRIMARY KEY,
    linea INTEGER NOT NULL,
    cant INTEGER,
    dto FLOAT,
    codart VARCHAR,
    codfac INTEGER,
    precio FLOAT ,
    /*Defino keys*/
    FOREIGN KEY (codart) REFERENCES articulos(codart),
    FOREIGN KEY (codfac) REFERENCES facturas(codfac)
);