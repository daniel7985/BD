-- *************************************************************
-- Versión para Microsoft SQL Server 48
-- *************************************************************
/* Crear una tabla que contenga las características presentadas en el
enunciado del problema e incluya las columnas digitador y fecha */

CREATE TABLE Proveedor
(
    productoID INTEGER UNIQUE,
    empleadoID INTEGER,
    proveeedorID INTEGER ,
    nombre VARCHAR(30),
    nit BIGINT,
    numeroTelefonico BIGINT,
    numeroCentroLlamadas BIGINT,
    direccion VARCHAR(30),
    nombreGerente VARCHAR(30),
    documentoGerente BIGINT,
    telefonoGerente BIGINT,
    digitador varchar (15) default user_name() not null,
    fecha datetime default getdate () not null
)

/* Crear la vista VISTA_1, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Proveedor_Edit
AS
    SELECT
        productoID,
        empleadoID,
        proveeedorID,
        nombre,
        nit,
        numeroTelefonico,
        numeroCentroLlamadas,
        direccion,
        nombreGerente,
        documentoGerente,
        telefonoGerente
    FROM Proveedor

/* Crear la vista VISTA_2, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Proveedor_View
AS
    SELECT *
    FROM Proveedor
    WHERE digitador = user_name()


CREATE TABLE Empleado
(
    empleadoID INTEGER,
    nombres VARCHAR(30),
    apellidos VARCHAR(30),
    telefonoFijoEmpleado BIGINT,
    telefonoMovilEmpleado BIGINT,
    dirreccion VARCHAR(50),
    genero VARCHAR(10),
    correo VARCHAR(30),
    fechaIngreso DATETIME,
    departamentoEmpresa VARCHAR(25),
    cargoEmpresa VARCHAR(25),
    salarioMensual MONEY,
    comision MONEY,
    identificacionCliente BIGINT NULL,
    nombreCliente VARCHAR(30) NULL,
    telefonoCliente BIGINT NULL,
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL
)


/* Crear la vista VISTA_1, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Empleado_Edit
AS
    SELECT
        empleadoID,
        nombres,
        apellidos,
        telefonoFijoEmpleado,
        telefonoMovilEmpleado,
        dirreccion,
        genero,
        correo,
        fechaIngreso,
        departamentoEmpresa,
        cargoEmpresa,
        salarioMensual,
        comision,
        identificacionCliente,
        nombreCliente,
        telefonoCliente
    FROM Empleado

/* Crear la vista VISTA_2, que muestre todas las columnas de la tabla
recién creada y que incluya un filtro por usuario */
CREATE VIEW VISTA_Empleado_View
AS
    SELECT *
    FROM Empleado
    WHERE digitador = user_name()


CREATE TABLE Cliente
(
    numeroCliente INTEGER NOT NULL,
    NIT INT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Dirección VARCHAR(30) NULL,
    Ciudad VARCHAR(30) not NULL,
    Correo VARCHAR(50) NULL,
    Teléfono INT NULL,
    Producto VARCHAR(50),
    listaEspera NCHAR(2),
    representanteLegal VARCHAR (50) NOT NULL,
    Cedula INT NOT NULL,
    constraint PK_ncliente primary key(numeroCliente),
    digitador VARCHAR(15) default user_name() NOT NULL,
    fecha DATETIME default getdate () NOT NULL
);

/* Crear la vista VISTA_1, que muestre las columnas que usted definió en
la tabla recién creada y que excluya las columnas digitador y fecha */

CREATE VIEW VISTA_Cliente_Edit
AS
    SELECT
        numeroCliente,
        NIT,
        Nombre,
        Dirección,
        Ciudad,
        Correo,
        Teléfono,
        Producto,
        listaEspera,
        representanteLegal,
        Cedula
    FROM Cliente

/* */
CREATE VIEW VISTA_Cliente_View
AS
    SELECT *
    FROM Cliente
    WHERE digitador = user_name()

/* Permitir acceso a los compañeros de grupo */

GRANT SELECT ON VISTA_Proveedor_View TO maarojasga
GRANT SELECT ON VISTA_Proveedor_View TO maarojasga
GRANT SELECT ON VISTA_Proveedor_View TO dsilvamo
GRANT INSERT ON VISTA_Proveedor_Edit TO dsilvamo
GRANT INSERT ON VISTA_Proveedor_Edit TO dabonilla
GRANT INSERT ON VISTA_Proveedor_Edit TO dabonilla

GRANT SELECT ON VISTA_empleado_View TO maarojasga
GRANT SELECT ON VISTA_empleado_View TO maarojasga
GRANT SELECT ON VISTA_empleado_View TO dsilvamo
GRANT INSERT ON VISTA_empleado_Edit TO dsilvamo
GRANT INSERT ON VISTA_empleado_Edit TO dabonilla
GRANT INSERT ON VISTA_empleado_Edit TO dabonilla

GRANT SELECT ON VISTA_Cliente_View TO maarojasga
GRANT SELECT ON VISTA_Cliente_View TO maarojasga
GRANT SELECT ON VISTA_Cliente_View TO dsilvamo
GRANT INSERT ON VISTA_Cliente_Edit TO dsilvamo
GRANT INSERT ON VISTA_Cliente_Edit TO dabonilla
GRANT INSERT ON VISTA_Cliente_Edit TO dabonilla

/*///////////////////////////////*/
INSERT INTO VISTA_Proveedor_Edit
VALUES(
        0, 0, 0, 'Luis Hernando', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

INSERT INTO VISTA_Proveedor_Edit
VALUES(
        1, 1, 1, 'Jose Ignazio', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

INSERT INTO VISTA_Proveedor_Edit
VALUES(
        2, 2, 2, 'Ana Galingo', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

INSERT INTO VISTA_Proveedor_Edit
VALUES(
        1, 1, 1, 'Luis Hernando', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);


/*///////////////////////////////*/

INSERT INTO VISTA_Empleado_Edit
VALUES(
        0, 'Jose', 'Ignazio', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Masculino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 305486235
);

INSERT INTO VISTA_Empleado_Edit
VALUES(
        1, 'MAria', 'Ignazio', 3002238754, 98352673, 'Cra 23 # 91 -2', 'Femenino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 305486235
);

INSERT INTO VISTA_Empleado_Edit
VALUES(
        2, 'Luis', 'Ricardo', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Masculino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 305486235
);

INSERT INTO VISTA_Empleado_Edit
VALUES(
        1, 'Luisa', 'Betancour', 3002238754, 98352673, 'Trans 23 # 91 -2', 'Femenino', 'jose@jose.com', '02/05/2020', 'gerencia', 'presidente', 8000000, 12000000, 12512, 305486235
);



/*///////////////////////////////*/

INSERT INTO VISTA_Proveedor_Edit
VALUES(
        0, 0, 0, 'Luis Hernando', 112321245, 3132324456, 7864212, 'Cra 98 # 12 R 21-2', 'Jose', 1209786453, 1223423453
);

