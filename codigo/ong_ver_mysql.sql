-- Crear la tabla ONG si no existe
CREATE TABLE IF NOT EXISTS ONG (
ID INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
direccion VARCHAR(255) NOT NULL,
telefono VARCHAR(20) NOT NULL,
correo_electronico VARCHAR(255) NOT NULL,
area_de_accion VARCHAR(255) NOT NULL
);

-- Crear la tabla Voluntario si no existe
CREATE TABLE IF NOT EXISTS Voluntario (
ID INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
apellido VARCHAR(255) NOT NULL,
fecha_de_nacimiento DATE NOT NULL,
telefono VARCHAR(20) NOT NULL,
correo_electronico VARCHAR(255) NOT NULL,
fecha_de_incorporacion DATE NOT NULL
);

-- Crear la tabla Proyecto si no existe
CREATE TABLE IF NOT EXISTS Proyecto (
ID INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(255) NOT NULL,
descripcion VARCHAR(255) NOT NULL,
fecha_de_inicio DATE NOT NULL,
fecha_de_finalizacion DATE,
estado VARCHAR(255) NOT NULL,
ONG_responsable_ID INT,
FOREIGN KEY (ONG_responsable_ID) REFERENCES ONG(ID)
);

-- Crear la tabla AsignacionVoluntariosONGs si no existe
CREATE TABLE IF NOT EXISTS AsignacionVoluntariosONGs (
voluntario_ID INT,
ONG_ID INT,
PRIMARY KEY (voluntario_ID, ONG_ID),
FOREIGN KEY (voluntario_ID) REFERENCES Voluntario(ID),
FOREIGN KEY (ONG_ID) REFERENCES ONG(ID)
);

-- Crear la tabla AsignacionVoluntariosProyectos si no existe
CREATE TABLE IF NOT EXISTS AsignacionVoluntariosProyectos (
voluntario_ID INT,
proyecto_ID INT,
PRIMARY KEY (voluntario_ID, proyecto_ID),
FOREIGN KEY (voluntario_ID) REFERENCES Voluntario(ID),
FOREIGN KEY (proyecto_ID) REFERENCES Proyecto(ID)
);
