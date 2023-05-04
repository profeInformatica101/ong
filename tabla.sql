-- Crear la tabla ONG
CREATE TABLE ONG (
ID INTEGER AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
direccion VARCHAR(255) NOT NULL,
telefono VARCHAR(255) NOT NULL,
correo_electronico VARCHAR(255) NOT NULL,
area_de_accion VARCHAR(255) NOT NULL
);

-- Crear la tabla Voluntario
CREATE TABLE Voluntario (
ID INTEGER AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
fecha_de_nacimiento DATE NOT NULL,
telefono VARCHAR(255) NOT NULL,
correo_electronico VARCHAR(255) NOT NULL,
fecha_de_incorporacion DATE NOT NULL
);

-- Crear la tabla Proyecto
CREATE TABLE Proyecto (
ID INTEGER AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
descripcion TEXT NOT NULL,
fecha_de_inicio DATE NOT NULL,
fecha_de_finalizacion DATE,
estado VARCHAR(255) NOT NULL,
ONG_responsable_ID INTEGER,
FOREIGN KEY (ONG_responsable_ID) REFERENCES ONG(ID)
);

-- Crear la tabla AsignacionVoluntariosONGs
CREATE TABLE AsignacionVoluntariosONGs (
voluntario_ID INTEGER,
ONG_ID INTEGER,
PRIMARY KEY (voluntario_ID, ONG_ID),
FOREIGN KEY (voluntario_ID) REFERENCES Voluntario(ID),
FOREIGN KEY (ONG_ID) REFERENCES ONG(ID)
);

-- Crear la tabla AsignacionVoluntariosProyectos
CREATE TABLE AsignacionVoluntariosProyectos (
voluntario_ID INTEGER,
proyecto_ID INTEGER,
PRIMARY KEY (voluntario_ID, proyecto_ID),
FOREIGN KEY (voluntario_ID) REFERENCES Voluntario(ID),
FOREIGN KEY (proyecto_ID) REFERENCES Proyecto(ID)
);
