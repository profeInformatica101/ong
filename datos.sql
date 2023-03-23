INSERT INTO ONG (nombre, direccion, telefono, correo_electronico, area_de_accion)
VALUES ('Greenpeace', '702 H Street NW, Suite 300, Washington, DC, 20001, USA', '+1 (202) 462-1177', 'contact@greenpeace.org', 'medio ambiente');

INSERT INTO ONG (nombre, direccion, telefono, correo_electronico, area_de_accion)
VALUES ('Médicos Sin Fronteras', '40 Rector Street, 16th Floor, New York, NY 10006, USA', '+1 (212) 679-6800', 'office-usa@msf.org', 'salud');

-- Agrega más ONGs siguiendo el mismo formato
INSERT INTO Voluntario (nombre, apellido, fecha_de_nacimiento, telefono, correo_electronico, fecha_de_incorporacion)
VALUES ('Maria', 'Rodriguez', '1990-05-15', '+1 (123) 456-7890', 'maria.rodriguez@example.com', '2018-06-20');

INSERT INTO Voluntario (nombre, apellido, fecha_de_nacimiento, telefono, correo_electronico, fecha_de_incorporacion)
VALUES ('Juan', 'Perez', '1985-11-30', '+1 (321) 654-0987', 'juan.perez@example.com', '2019-04-10');

-- Agrega más voluntarios siguiendo el mismo formato
INSERT INTO Proyecto (nombre, descripcion, fecha_de_inicio, fecha_de_finalizacion, estado, ONG_responsable_ID)
VALUES ('Protección de la Amazonía', 'Proyecto enfocado en la conservación y reforestación del Amazonas.', '2020-01-01', '2025-12-31', 'en curso', 1);

INSERT INTO Proyecto (nombre, descripcion, fecha_de_inicio, fecha_de_finalizacion, estado, ONG_responsable_ID)
VALUES ('Atención médica en zonas de conflicto', 'Brindar atención médica a personas afectadas por conflictos armados.', '2019-06-01', '2022-05-31', 'completado', 2);

-- Agrega más proyectos siguiendo el mismo formato

INSERT INTO AsignacionVoluntariosONGs (voluntario_ID, ONG_ID)
VALUES (1, 1);

INSERT INTO AsignacionVoluntariosONGs (voluntario_ID, ONG_ID)
VALUES (2, 2);

-- Agrega más asignaciones de voluntarios a ONGs siguiendo el mismo formato

INSERT INTO AsignacionVoluntariosProyectos (voluntario_ID, proyecto_ID)
VALUES (1,1);
INSERT INTO AsignacionVoluntariosProyectos (voluntario_ID, proyecto_ID) VALUES (2, 2);
-- Agrega más asignaciones de voluntarios a proyectos siguiendo el mismo format

