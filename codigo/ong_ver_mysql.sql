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


-- Insertar en la tabla ONG
INSERT INTO ONG (nombre, direccion, telefono, correo_electronico, area_de_accion)
VALUES
('Asociación de Protección de Animales', 'Calle Petunias 67, Ciudad Jardín', '562322212', 'apamigos@correo.com', 'Protección animal'),
('Fundación Océanos Azules', 'Avenida del Mar 89, Costa Azul', '114599909', 'fundaocenaz@correo.com', 'Protección del medio ambiente'),
('Ayuda sin Fronteras', 'Calle 23 de Enero 45, Pueblo Nuevo', '211332578', 'ayudafro@correo.com', 'Asistencia social'),
('Asociación Emprendedores Verdes', 'Calle Amapolas 12, Los Pinos', '643872340', 'aempver@correo.com', 'Emprendimiento sostenible'),
('Red de Apoyo a Personas con Discapacidad', 'Calle Girasoles 23, Centro', '871234567', 'rediscap@correo.com', 'Apoyo a discapacitados'),
('Asociación para la Lucha contra el Cáncer', 'Avenida de la Esperanza 67, Las Rosas', '334455666', 'alcancer@correo.com', 'Prevención del cáncer'),
('Fundación Pro-Ayuda a la Infancia', 'Calle de los Niños Perdidos 12, La Colina', '915876543', 'fuprainf@correo.com', 'Asistencia a niños'),
('Asociación Cultural para la Difusión del Arte', 'Calle del Arte 34, Centro', '910122345', 'asoculart@correo.com', 'Difusión cultural'),
('Asociación para el Fomento del Deporte', 'Avenida del Deporte 45, Polideportivo', '621001122', 'asofondep@correo.com', 'Fomento del deporte'),
('Asociación de Mujeres Empresarias', 'Calle del Emprendimiento 56, Los Olivos', '654321098', 'amujemp@correo.com', 'Empoderamiento femenino');

-- Insertar en la tabla Voluntario
INSERT INTO Voluntario (nombre, apellido, fecha_de_nacimiento, telefono, correo_electronico, fecha_de_incorporacion)
VALUES
('María', 'González', '1995-05-05', '722345678', 'mariagonzalez@gmail.com', '2022-03-05'),
('Pablo', 'Sánchez', '1998-12-15', '613443322', 'pablosanchez@hotmail.com', '2023-01-02'),
('Lucía', 'Fernández', '1991-09-01', '698774433', 'luciafer@gmail.com', '2021-11-10'),
('Manuel', 'Martínez', '1993-06-23', '611889900', 'manuelmartinez@yahoo.com', '2020-02-15'),
('Ana', 'Ramírez', '1997-08-08', '677994455', 'anaramirez@gmail.com', '2022-05-01'),
('Pedro', 'Gómez', '1990-03-15', '600112233', 'pedrogomez@hotmail.com', '2022-02-01'),
('Sofía', 'Pérez', '1999-10-22', '691445566', 'sofiaperez@gmail.com', '2023-03-05'),
('David', 'Hernández', '1992-12-25', '622332211', 'davidhernandez@yahoo.com', '2021-08-12'),
('Elena', 'Gutiérrez', '1996-04-18', '688776655', 'elenagutierrez@hotmail.com', '2022-06-01'),
('Carlos', 'Ruiz', '1998-07-12', '711223344', 'carlosruiz@gmail.com', '2020-12-15'),
('Marta', 'Jiménez', '1994-01-30', '622998877', 'martajimenez@yahoo.com', '2021-02-01'),
('José', 'Vega', '1997-11-20', '610223344', 'josevega@gmail.com', '2022-04-01'),
('Carmen', 'Torres', '1993-05-10', '699443322', 'carmen.torres@gmail.com', '2020-09-01'),
('Jorge', 'González', '1991-02-14', '655667788', 'jorgegonzalez@hotmail.com', '2021-03-15'),
('Alicia', 'Sánchez', '1996-09-18', '688776655', 'aliciasanchez@yahoo.com', '2023-02-01'),
('Diego', 'Hernández', '1995-06-11', '611223344', 'diegohernandez@gmail.com', '2020-06-01'),
('Sara', 'García', '1998-08-03', '622223344', 'saragarcia@hotmail.com', '2022-05-01'),
('Fernando', 'López', '1993-03-12', '611334455', 'fernandolopez@gmail.com', '2021-07-01'),
('Isabel', 'Martínez', '1997-12-25', '622001122', 'isabelmartinez@yahoo.com', '2023-01-01'),
('Alberto', 'Gómez', '1992-02-20', '677889900', 'albertogomez@hotmail.com', '2020-12-01'),
('Laura', 'Pérez', '1995-09-29', '691445566', 'lauraperez@yahoo.com', '2022-03-15'),
('Luis', 'Fernández', '1994-04-01', '622998877', 'luisfernandez@gmail.com', '2021-06-01'),
('Raquel', 'Ramírez', '1996-07-14', '677778899', 'raquelramirez@hotmail.com', '2020-09-01'),
('Javier', 'García', '1991-11-18', '655889900', 'javiergarcia@yahoo.com', '2021-02-15'),
('Roberto', 'Vega', '1998-10-02', '622112233', 'robertovega@gmail.com', '2022-06-01'),
('Paula', 'Torres', '1995-02-27', '688773322', 'paulatorres@hotmail.com', '2021-08-01'),
('Gabriel', 'González', '1993-09-03', '677660066', 'gabrielgonzalez@yahoo.com', '2022-03-01'),
('Marina', 'Sánchez', '1994-05-07', '691114477', 'marinasanchez@gmail.com', '2020-12-01'),
('Antonio', 'Hernández', '1997-01-10', '622334455', 'antoniohernandez@hotmail.com', '2023-04-01');

-- Insertar en la tabla Proyecto
INSERT INTO Proyecto (nombre, descripcion, fecha_de_inicio, fecha_de_finalizacion, estado, ONG_responsable_ID)
VALUES
('Reciclaje de plásticos', 'Proyecto para la recolección y reciclaje de plásticos en la ciudad', '2022-01-01', '2022-12-31', 'En progreso', 2),
('Programa de apoyo escolar', 'Programa para brindar apoyo escolar a niños y jóvenes de bajos recursos', '2021-09-01', '2022-06-30', 'En progreso', 7),
('Construcción de viviendas', 'Proyecto para la construcción de viviendas para familias necesitadas', '2023-01-01', '2023-12-31', 'Planeado', 1),
('Campaña de donación de alimentos', 'Campaña para recolectar alimentos no perecederos para familias en situación de vulnerabilidad', '2021-11-15', '2021-12-15', 'Finalizado', 3),
('Proyecto de conservación de la naturaleza', 'Proyecto para la conservación de áreas naturales en peligro', '2023-03-01', NULL, 'Planeado', 2),
('Programa de apoyo a personas mayores', 'Programa para brindar apoyo a personas mayores que viven solas', '2022-06-01', '2023-05-31', 'En progreso', 5),
('Proyecto de construcción de un centro de atención a víctimas de violencia', 'Proyecto para la construcción de un centro de atención a víctimas de violencia', '2023-07-01', NULL, 'Planeado', 4),
('Campaña de prevención del cáncer', 'Campaña para la prevención del cáncer de mama', '2022-10-01', '2022-10-31', 'Finalizado', 6),
('Proyecto de formación de emprendedores', 'Proyecto para la formación de emprendedores en el sector sostenible', '2021-07-01', '2022-06-30', 'En progreso', 9);

-- Corrección en la inserción de datos de la tabla AsignacionVoluntariosProyectos
INSERT INTO AsignacionVoluntariosProyectos (voluntario_ID, proyecto_ID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 4),
(6, 2),
(7, 3),
(8, 1),
(9, 5),
(10, 4),
(11, 6),
(12, 7),
(13, 8),
(14, 2),
(15, 3),
(16, 1),
(17, 5),
(18, 6),
(19, 7),
(20, 8),
(21, 9),
(22, 10),
(23, 1),
(24, 2),
(25, 3),
(26, 4),
(27, 5),
(28, 6),
(29, 7),
(30, 8),
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 1),
(10, 2),
(11, 3),
(12, 4),
(13, 5),
(14, 6),
(15, 7),
(16, 8),
(17, 9),
(18, 10),
(19, 1),
(20, 2),
(21, 3),
(22, 4),
(23, 5),
(24, 6),
(25, 7),
(26, 8),
(27, 9),
(28, 10),
(29, 1),
(30, 2);
