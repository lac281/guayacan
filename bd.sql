-- Diseño de bases de datos

create table Cliente(
    codcliente int primary key,
    nombre varchar(150),
    direccion varchar(150),
    identificacion varchar(25),
    fecha_nacimiento datetime,
    telefono_movil varchar(20),
    telefono_casa varchar(20),
    email varchar(50)
)

create table Empleado(
    idempleado int primary key,
    nombre varchar(150),
    direccion varchar(150),
    identificacion varchar(25),
    fecha_nacimiento datetime,
    telefono varchar(25),
    profesion varchar(50)
)

create table Usuario(
    iduser int primary key,
    usuario varchar(50),
    contrasena varchar(50),
    idempleado int,
    rolUsuario varchar(30),
    CONSTRAINT fk_usuario_empleado FOREIGN KEY (idempleado) REFERENCES Empleado(idempleado)
)

create table Servicio(
    numero bigint primary key,
    fecha datetime,
    idcliente int,
    monto decimal(10,2)
    observaciones varchar(100),
    CONSTRAINT fk_servicio_cliente FOREIGN KEY (idcliente) REFERENCES Cliente(codcliente)
)

create table DetalleServicio(
    idservicio int primary key,
    numero bigint,
    servicio varchar(100),
    monto decimal(10,2),
    impuestos decimal(8,2),
    neto decimal(10,2),
    CONSTRAINT fk_detalle_servicio FOREIGN KEY (numero) REFERENCES Servicio(numero)
)

create table TrackingServicio(
    id bigint primary key,
    orden bigint,
    fecha_inicial datetime,
    fecha_final datetime,
    usuario_servicio int,
    tipo_servicio int,
    estado_orden varchar(25)
    created_at datetime,
    CONSTRAINT fk_tracking_usuario FOREIGN KEY (usuario_servicio) REFERENCES Usuario(iduser),
    CONSTRAINT fk_tracking_servicio FOREIGN KEY (tipo_servicio) REFERENCES DetalleServicio(idservicio)
)