USE master;
--DROP DATABASE IF EXISTS sistema_proyectos;
CREATE DATABASE sistema_proyectos;

USE sistema_proyectos;


CREATE TABLE roles(
id_rol INT IDENTITY(1,1),
rol NVARCHAR(10),
estado INT,
CONSTRAINT pk_roles PRIMARY KEY (id_rol)
);


CREATE TABLE usuarios(
id_usuario INT IDENTITY(1,1),
nombre NVARCHAR(255),
apellidos NVARCHAR(255),
correo NVARCHAR(255),
usuario NVARCHAR(50),
contrasena NVARCHAR(50),
area NVARCHAR(100),
id_rol INT,
fecha_creacion DATE,
estado INT,
CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario),
CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

CREATE TABLE logs(
id_log INT IDENTITY(1,1),
id_usuario INT,
accion VARCHAR(255),
fecha_creacion DATE ,
CONSTRAINT pk_logs PRIMARY KEY (id_log),
CONSTRAINT fk_logs_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE areas(
id_area INT IDENTITY(1,1),
area NVARCHAR(255),
estado INT,
CONSTRAINT pk_areas PRIMARY KEY (id_area)
);

CREATE TABLE estados_proyectos(
id_estado_proyecto INT IDENTITY(1,1),
nombre NVARCHAR(100),
estado INT,
CONSTRAINT pk_estados_proyectos PRIMARY KEY (id_estado_proyecto)
);



CREATE TABLE proyectos(
id_proyecto INT IDENTITY(1,1),
titulo_proyecto NVARCHAR(255),
descripcion NVARCHAR(MAX),
objetivo NVARCHAR(MAX),
fuente_financiamiento NVARCHAR(255),
resultado_esperado NVARCHAR(MAX),
justificacion NVARCHAR(MAX),
aliado_estrategico NVARCHAR(MAX),
id_usuario INT,
id_area INT,
id_estado_proyecto INT,
fecha_inicio DATE,
fecha_final DATE,
fecha_creacion DATE,
CONSTRAINT pk_proyectos PRIMARY KEY(id_proyecto),
CONSTRAINT fk_proyectos_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
CONSTRAINT fk_proyectos_areas FOREIGN KEY (id_area) REFERENCES areas(id_area),
CONSTRAINT fk_proyectos_estados_proyectos FOREIGN KEY (id_estado_proyecto) REFERENCES estados_proyectos(id_estado_proyecto)
);

CREATE TABLE actividades(
id_actividad INT IDENTITY(1,1),
id_proyecto INT ,
actividad NVARCHAR(255),
descripcion NVARCHAR(255),
fecha_inicio DATE,
fecha_final DATE,
fecha_creacion DATE,
estado INT ,
CONSTRAINT pk_actividades PRIMARY KEY (id_actividad),
CONSTRAINT fk_actividades_proyectos FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);



CREATE TABLE tipo_recurso(
id_tipo_recurso INT IDENTITY(1,1),
tipo_recurso NVARCHAR(150),
descripcion NVARCHAR(255),
estado INT,
CONSTRAINT pk_tipo_recurso PRIMARY KEY (id_tipo_recurso) 
);


CREATE TABLE presupuesto(
id_presupuesto INT IDENTITY(1,1),
id_proyecto INT,
id_tipo_recurso INT,
recurso NVARCHAR(255),
costo MONEY,
cantidad DECIMAL(10,2),
estado INT,
fecha_creacion DATE,
CONSTRAINT pk_presupuesto PRIMARY KEY (id_presupuesto),
CONSTRAINT fk_presupuesto_proyectos FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
CONSTRAINT fk_presupuesto_tipo_recurso FOREIGN KEY (id_tipo_recurso) REFERENCES tipo_recurso(id_tipo_recurso)
);

CREATE TABLE seguimientos(
id_seguimiento INT IDENTITY(1,1),
id_proyecto INT,
fecha_creacion DATE,
CONSTRAINT pk_seguimiento PRIMARY KEY (id_seguimiento),
CONSTRAINT fk_seguimiento_proyectos FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto)
);

CREATE TABLE estados_actividades(
id_estado_actividad INT IDENTITY(1,1),
nombre NVARCHAR(255),
estado INT,
CONSTRAINT pk_estados_actividades PRIMARY KEY (id_estado_actividad)
);

CREATE TABLE actividades_seguimiento(
id_actividad_seguimiento INT IDENTITY(1,1),
id_seguimiento INT,
actividad NVARCHAR(255),
id_estado_actividad INT,
descripcion NVARCHAR(255),
fecha_inicio DATE,
fecha_final DATE,
fecha_creacion DATE,
estado INT ,
CONSTRAINT pk_actividades_seguimientos PRIMARY KEY (id_actividad_seguimiento),
CONSTRAINT fk_actividades_seguimientos FOREIGN KEY (id_seguimiento) REFERENCES seguimientos(id_seguimiento),
CONSTRAINT  fk_actividades_seguimiento_estados_actividades FOREIGN KEY (id_estado_actividad) REFERENCES estados_actividades(id_estado_actividad) 
);


CREATE TABLE presupuesto_seguimiento(
id_presupuesto_seguimiento INT IDENTITY(1,1),
id_seguimiento INT,
tipo_recurso NVARCHAR(255),
recurso NVARCHAR(255),
costo_estimada MONEY,
costo_real MONEY,
cantidad_estimada DECIMAL(10,2),
cantidad_re DECIMAL(10,2),
estado INT,
fecha_creacion DATE,
CONSTRAINT pk_presupuesto_seguimiento PRIMARY KEY (id_presupuesto_seguimiento),
CONSTRAINT fk_presupuesto_seguimiento FOREIGN KEY (id_seguimiento) REFERENCES seguimientos(id_seguimiento)
);




CREATE TABLE tipos_documentos(
id_tipo_documento INT IDENTITY(1,1),
tipo nvarchar(255),
estado INT,
CONSTRAINT pk_tipos_documentos PRIMARY KEY (id_tipo_documento)
);



CREATE TABLE documentos(
id_documento INT IDENTITY(1,1),
id_presupuesto_seguimiento INT,
asunto NVARCHAR(255),
id_tipo_documento INT,
url  NVARCHAR(255),
estado INT,
CONSTRAINT pk_documentos PRIMARY KEY (id_documento),
CONSTRAINT fk_documentos_prespuesto_seguimiento FOREIGN KEY (id_presupuesto_seguimiento) REFERENCES presupuesto_seguimiento(id_presupuesto_seguimiento),
CONSTRAINT fk_documentos_tipos_documentos FOREIGN KEY (id_tipo_documento) REFERENCES tipos_documentos(id_tipo_documento)
);

CREATE TABLE fotos(
id_foto INT IDENTITY(1,1),
id_actividad_seguimiento INT,
asunto NVARCHAR(255),
url NVARCHAR(255),
fecha_creacion DATE ,
estado INT ,
CONSTRAINT pk_fotos PRIMARY KEY (id_foto) ,
CONSTRAINT fk_fotos_actividades_seguimiento  FOREIGN KEY (id_actividad_seguimiento) REFERENCES actividades_seguimiento(id_actividad_seguimiento)
);


CREATE TABLE incidencias(
id_incidencia INT,
id_actividad_seguimiento INT,
descripcion NVARCHAR(255),
imagen_url NVARCHAR(max),
estado INT,
fecha_creacion DATE,
CONSTRAINT pk_incidencias PRIMARY KEY (id_incidencia),
CONSTRAINT fk_inicidencias_actividades_seguimientos FOREIGN KEY (id_actividad_seguimiento) REFERENCES actividades_seguimiento (id_actividad_seguimiento)
);


CREATE TABLE foros(
id_foro INT IDENTITY(1,1),
id_actividad_seguimiento INT,
creado_por NVARCHAR(150),
asunto NVARCHAR(150),
mensaje NVARCHAR(MAX),
url_adjunto NVARCHAR(MAX),
estado INT,
fecha_creacion DATE,
CONSTRAINT pk_foros PRIMARY KEY (id_foro),
CONSTRAINT fk_foros_actividad_seguimiento FOREIGN KEY (id_actividad_seguimiento) REFERENCES actividades_seguimiento(id_actividad_seguimiento)
);


INSERT INTO roles (rol , estado) VALUES ('Administrador' , 1);
INSERT INTO roles (rol , estado) VALUES ('Evaluador' , 1);
INSERT INTO roles (rol , estado) VALUES ('Usuario' , 1);