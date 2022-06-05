/************Provincias*******************/
INSERT INTO
    provincias(codpro, nombre)
VALUES
    ('3', 'Alicante');

INSERT INTO
    provincias(codpro, nombre)
VALUES
    ('12', 'Castellón');

INSERT INTO
    provincias(codpro, nombre)
VALUES
    ('46', 'Valencia');

/************Pueblos*******************/
INSERT INTO
    pueblos (codpue, nombre, codpro)
VALUES
    ('7766', 'Burriana', '12');

INSERT INTO
    pueblos (codpue, nombre, codpro)
VALUES
    ('12309', 'Castellón', '12');

INSERT INTO
    pueblos (codpue, nombre, codpro)
VALUES
    ('17859', 'Enramona', '12');

INSERT INTO
    pueblos (codpue, nombre, codpro)
VALUES
    ('46332', 'Soneja', '12');

INSERT INTO
    pueblos (codpue, nombre, codpro)
VALUES
    ('53596', 'Vilarreal', '12');

/************Clientes*******************/
INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        101,
        'Cayetano Pineda, Albero',
        'Cuesta, 5',
        NULL,
        '46332'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        102,
        'Toada Jimenez, Carlos',
        'En proyecto 3',
        NULL,
        '17859'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        103,
        'Pasteu Mural, Pedro',
        'Colón 4',
        NULL,
        '17859'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        333,
        'Sos Carretero, Jesús',
        'Mosen Compte, 14',
        '12964',
        '53596'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        336,
        'Miguel Archilés, Ramón',
        'Bernardo Mundina, 132-5',
        '12652',
        '7766'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        342,
        'Pinel Huerta, Vicente',
        'Francisco Sempere, 37-10',
        '12112',
        '7766'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        345,
        'López Botella, Mauro',
        'Avenida del Puerto, 20-1',
        '12010',
        '12309'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        348,
        'Palau Martínez, Jorge',
        'Raval de Sant Josep, 97-2',
        '12003',
        '12309'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        354,
        'Murría Vinaiza, José',
        'Ciudadela, 90-18 Calle',
        '12003',
        '12309'
    );

INSERT INTO
    clientes (codcli, nombre, direccion, codpostal, codpue)
VALUES
    (
        357,
        'Huguet Peris, Juan Ángel',
        'Mestre Rodrigo, 7',
        '12100',
        '12309'
    );

/************vendedores*******************/
INSERT INTO
    vendedores (codven, nombre, direccion, codpostal, codpue)
VALUES
    (
        105,
        'Poy Omella, Paloma',
        'Sanchis Tarazona, 103-1',
        '12257',
        '46332'
    );

INSERT INTO
    vendedores (
        codven,
        nombre,
        direccion,
        codpostal,
        codpue,
        codjefe
    )
VALUES
    (
        5,
        'Guillén Vilar, Natalia',
        'Sant Josep, 110',
        '12597',
        '53596',
        105
    );

INSERT INTO
    vendedores (
        codven,
        nombre,
        direccion,
        codpostal,
        codpue,
        codjefe
    )
VALUES
    (
        155,
        'Rubert Cano, Diego',
        'Benicarlo Residencial, 154',
        '12425',
        '17859',
        5
    );

INSERT INTO
    vendedores (
        codven,
        nombre,
        direccion,
        codpostal,
        codpue,
        codjefe
    )
VALUES
    (
        455,
        'Agost Tirado, Jorge',
        'Pasaje Peñagolosa, 21-19',
        '12914',
        '53596',
        5
    );

/************Artículos*******************/
INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'IM3P32V',
        'Interruptor magnetotérmico 4p, 2',
        27.01,
        1,
        1
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'im4P10L',
        'Interruptor magnetotérmico 4p, 4',
        32.6,
        1,
        1
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'L14340',
        'Bases de fusibles cuchillas T0',
        0.51,
        3,
        3
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'L17055',
        'Bases de fusible cuchillas T3',
        7.99,
        3,
        3
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'L76424',
        'Placa 2 E. legrand serie mosaic',
        2.9,
        5,
        2
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('L85459', 'Tecla legrand marfil', 2.8, null, 4);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'L85546',
        'Tecla difusores legrand bronce',
        1.05,
        13,
        5
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('L92119', 'Portalámparas 14 curvo', 5.98, 2, 1);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'ME200',
        'Marco Bjc Ibiza 2 elementos',
        13.52,
        1,
        1
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'N5072',
        'Pulsador luz piloto Niessen trazo',
        1.33,
        11,
        2
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'N8017BA',
        'Reloj Orbis con reserva de cuerda',
        3.4,
        7,
        4
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('P695', 'Caja 1 elem. plastimetal', 1.65, 16, 9);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'P605',
        'Interruptor rotura brusca 100 A M',
        13.22,
        1,
        1
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'P924',
        'Interruptor marrón dec. con visor',
        2.39,
        8,
        3
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'REF1X20',
        'Regleta fluorescente 1x36 bajo F',
        8.71,
        1,
        1
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'S3165136',
        'Bloque emergencia Satf 150 L',
        4.81,
        6,
        3
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('T4501', 'Tubo empotrar 100', 2.98, 1, 5);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'TE7200',
        'Doble conmutador Bjc Ibiza blanco',
        13.22,
        1,
        1
    );

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('TFM16', 'Curva tubo hierro 11', 0.33, 23, 13);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('TH11', 'Curva tubo hierro 29', 1.42, 20, 3);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    ('THC21', 'Placa mural Felmax', 1.56, 1, 1);

INSERT INTO
    articulos (codart, descrip, precio, stock, stock_min)
VALUES
    (
        'ZNCL',
        'Base T,t lateral Ticino S, Tekne',
        41.71,
        1,
        1
    );

/************Facturas*******************/
INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6530, '2011-01-01', 101, 105, 16, 5);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6550, '2011-01-15', 101, 105, 16, 5);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6589, '2011-07-14', 102, 155, NULL, 9);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6600, '2011-09-20', 103, 455, 16, 5);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6643, '2010-07-16', 333, 105, 18, 10);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6645, '2010-07-16', 336, 105, 0, 20);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6654, '2010-07-31', 357, 155, 8, 0);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6659, '2010-08-08', 342, 5, 0, 0);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6680, '2010-09-10', 348, 455, 8, 0);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6723, '2010-11-06', 342, 5, 18, 0);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6742, '2010-12-17', 333, 105, 8, 20);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6799, '2014-11-22', 333, 5, 8, NULL);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6797, '2014-01-03', 342, 455, 21, NULL);

INSERT INTO
    facturas (codfac, fecha, codcli, codven, iva, dto)
VALUES
    (6699, '2014-01-03', 342, 455, 21, NULL);

/************Lineas_fac*******************/
INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6643, 1, 6, 'L14340', 0.51, 20);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6643, 2, 1, 'N5072', 1.33, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6643, 3, 2, 'P695', 13.22, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6645, 1, 10, 'ZNCL', 41.71, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6645, 2, 6, 'N8017BA', 3.4, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6645, 3, 3, 'TE7200', 13.22, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6645, 4, 4, 'L92119', 5.98, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6654, 1, 6, 'REF1X20', 8.71, 50);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6659, 1, 8, 'THC21', 1.56, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6659, 2, 12, 'L17055', 7.99, 25);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6659, 3, 9, 'L76424', 2.9, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6680, 1, 12, 'T4501', 2.98, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6680, 2, 11, 'im4P10L', 32.6, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6723, 1, 5, 'L85459', 2.8, 5);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6742, 1, 9, 'ME200', 13.52, 0);

INSERT INTO
    lineas_fac (codfac, linea, cant, codart, precio, dto)
VALUES
    (6742, 2, 8, 'S3165136', 4.81, 5);