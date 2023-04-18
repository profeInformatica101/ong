-- Create ONG table
CREATE TABLE ONG (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
nombre TEXT NOT NULL,
direccion TEXT NOT NULL,
telefono TEXT NOT NULL,
correo_electronico TEXT NOT NULL,
area_de_accion TEXT NOT NULL
);

-- Create Voluntario table
CREATE TABLE Voluntario (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
nombre TEXT NOT NULL,
apellido TEXT NOT NULL,
fecha_de_nacimiento DATE NOT NULL,
telefono TEXT NOT NULL,
correo_electronico TEXT NOT NULL,
fecha_de_incorporacion DATE NOT NULL
);

-- Create Proyecto table
CREATE TABLE Proyecto (
ID INTEGER PRIMARY KEY AUTO_INCREMENT,
nombre TEXT NOT NULL,
descripcion TEXT NOT NULL,
fecha_de_inicio DATE NOT NULL,
fecha_de_finalizacion DATE,
estado TEXT NOT NULL,
ONG_responsable_ID INTEGER,
FOREIGN KEY (ONG_responsable_ID) REFERENCES ONG(ID)
);

-- Create AsignacionVoluntariosONGs table
CREATE TABLE AsignacionVoluntariosONGs (
voluntario_ID INTEGER,
ONG_ID INTEGER,
PRIMARY KEY (voluntario_ID, ONG_ID),
FOREIGN KEY (voluntario_ID) REFERENCES Voluntario(ID),
FOREIGN KEY (ONG_ID) REFERENCES ONG(ID)
);

-- Create AsignacionVoluntariosProyectos table
CREATE TABLE AsignacionVoluntariosProyectos (
voluntario_ID INTEGER,
proyecto_ID INTEGER,
PRIMARY KEY (voluntario_ID, proyecto_ID),
FOREIGN KEY (voluntario_ID) REFERENCES Voluntario(ID),
FOREIGN KEY (proyecto_ID) REFERENCES Proyecto(ID)
);
