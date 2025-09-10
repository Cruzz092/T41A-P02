INSERT INTO maestro (matricula_maestro, nombre) VALUES
('M001', 'Juan Pérez'),
('M002', 'María López'),
('M003', 'Carlos García'),
('M004', 'Ana Martínez'),
('M005', 'Luis Hernández'),
('M006', 'Sofía Torres'),
('M007', 'Miguel Sánchez'),
('M008', 'Elena Ramírez'),
('M009', 'Pedro Flores'),
('M010', 'Laura Ortega');

INSERT INTO alumno (matricula_alumno, nombre) VALUES
('183001', 'José Aguilar'),
('183002', 'Fernanda Ruiz'),
('183003', 'Daniel Gómez'),
('183004', 'Paola Chávez'),
('183005', 'Andrés Domínguez'),
('183006', 'Lucía Mendoza'),
('183007', 'Ricardo Castillo'),
('183008', 'Valeria Morales'),
('183009', 'Héctor Vázquez'),
('183010', 'Diana Soto');

INSERT INTO seccion (anio, seccion) VALUES
(2022, 1),
(2022, 2),
(2022, 3),
(2023, 1),
(2023, 2),
(2023, 3),
(2024, 1),
(2024, 2),
(2024, 3),
(2025, 1);

INSERT INTO materia (nombre, horas_semana) VALUES
('Programacion_I', 5),
('Matematicas_IV', 5),
('PIC_I', 5),
('Inglés_V', 5),
('Química', 5),
('BaseDeDatos', 3),
('OrganizacionComputacional', 3),
('Fisica_II', 5),
('Arquitectura', 3),
('SistemasOperativos', 3);

INSERT INTO grupo (clave_grupo, id_materia, matricula_maestro) VALUES
('T1A1', 1, 'M001'),
('T102', 2, 'M002'),
('T1D3', 3, 'M003'),
('T14A', 4, 'M004'),
('T105', 5, 'M005'),
('T106', 6, 'M006'),
('T157', 7, 'M007'),
('T108', 8, 'M008'),
('T1A9', 9, 'M009'),
('T110', 10, 'M010');

INSERT INTO asistencia (fecha_asistencia, matricula_alumno, id_grupo, presente) VALUES
('2025-09-01 08:01:00', '183001', 1, TRUE),
('2025-09-01 08:06:00', '183002', 1, FALSE),
('2025-09-01 08:10:00', '183003', 2, TRUE),
('2025-09-01 08:05:00', '183004', 2, TRUE),
('2025-09-01 08:02:00', '183005', 3, FALSE),
('2025-09-01 08:02:10', '183006', 3, TRUE),
('2025-09-01 08:10:01', '183007', 4, FALSE),
('2025-09-01 08:40:00', '183008', 5, TRUE),
('2025-09-01 08:30:00', '183009', 6, TRUE),
('2025-09-01 08:00:30', '183010', 7, FALSE);

INSERT INTO inscripcion (id_seccion, matricula_alumno, id_grupo, fecha_inscripcion) VALUES
(1, '183001', 1, '2025-01-15 09:00:00'),
(2, '183002', 2, '2025-01-15 09:05:00'),
(3, '183003', 3, '2025-01-15 09:10:00'),
(4, '183004', 4, '2025-01-15 09:15:00'),
(5, '183005', 5, '2025-01-15 09:20:00'),
(6, '183006', 6, '2025-01-15 09:25:00'),
(7, '183007', 7, '2025-01-15 09:30:00'),
(8, '183008', 8, '2025-01-15 09:35:00'),
(9, '183009', 9, '2025-01-15 09:40:00'),
(10, '183010', 10, '2025-01-15 09:45:00');
