CREATE TABLE maestro(
  matricula_maestro VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE alumno(
  matricula_alumno VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

CREATE TABLE seccion(
  id_seccion SERIAL PRIMARY KEY,
  anio INTEGER NOT NULL,
  seccion NUMERIC(1) NOT NULL
);

CREATE TABLE materia(
  id_materia SERIAL PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  horas_semana INTEGER NOT NULL
);

CREATE TABLE grupo(
  id_grupo SERIAL PRIMARY KEY,
  clave_grupo VARCHAR(10) NOT NULL,
  id_materia INT NOT NULL,
  matricula_maestro VARCHAR(10) NOT NULL,
  periodo VARCHAR(10) NOT NULL,       -- lee agrege este campo para que me acepte el 3ro xd
  seccion NUMERIC(1) NOT NULL,        -- este tambien
  nombre_grupo VARCHAR(50) NOT NULL,  -- y este
  FOREIGN KEY(id_materia) REFERENCES materia(id_materia),
  FOREIGN KEY(matricula_maestro) REFERENCES maestro(matricula_maestro)
);

CREATE TABLE asistencia(
  id_asistencia SERIAL PRIMARY KEY,
  fecha_asistencia TIMESTAMP NOT NULL,
  matricula_alumno VARCHAR(10) NOT NULL,
  id_grupo INT NOT NULL,
  presente BOOLEAN NOT NULL,
  periodo VARCHAR(10) NOT NULL,   -- este es nuevo tambien para que agarre
  seccion NUMERIC(1) NOT NULL,    -- otro igual nuevo
  FOREIGN KEY(matricula_alumno) REFERENCES alumno(matricula_alumno),
  FOREIGN KEY(id_grupo) REFERENCES grupo(id_grupo)
);

CREATE TABLE inscripcion(
  id_inscripcion SERIAL PRIMARY KEY,
  id_seccion INT NOT NULL,
  FOREIGN KEY(id_seccion) REFERENCES seccion(id_seccion),
  matricula_alumno VARCHAR(10) NOT NULL,
  FOREIGN KEY(matricula_alumno) REFERENCES alumno(matricula_alumno),
  id_grupo INT NOT NULL,
  FOREIGN KEY(id_grupo) REFERENCES grupo(id_grupo),
  fecha_inscripcion TIMESTAMP NOT NULL
);

