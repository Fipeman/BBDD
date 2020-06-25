CREATE TABLE profesores(nombre_prof VARCHAR(50), departamento VARCHAR(100), PRIMARY KEY (nombre_prof));

CREATE TABLE pruebas(rut_alumno_p VARCHAR(15), nombre_prof_p VARCHAR(50), puntaje SMALLINT, PRIMARY KEY (rut_alumno_p), FOREIGN KEY (nombre_prof_p) REFERENCES profesores(nombre_prof)) ;

CREATE TABLE alumnos(rut VARCHAR(15), nombre VARCHAR(50), curso VARCHAR(25), PRIMARY KEY (rut)), FOREIGN KEY (curso) REFERENCES cursos(id_curso)) ;

CREATE TABLE cursos(id_curso VARCHAR(25), rut_alumno VARCHAR(15), PRIMARY KEY (id_curso), FOREIGN KEY (rut_alumno) REFERENCES alumnos(rut)) ;
