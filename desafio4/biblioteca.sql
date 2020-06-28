CREATE DATABASE biblioteca;
\c biblioteca

CREATE TABLE lectores(id_lector SERIAL, nombre VARCHAR(30), apellido_1 VARCHAR(50), apellido_2 VARCHAR(50), PRIMARY KEY (id_lector));
CREATE TABLE libros(id_libro SERIAL, titulo_libro VARCHAR(400), PRIMARY KEY (id_libro));
CREATE TABLE autores(id_autores SERIAL, autor VARCHAR(400), PRIMARY KEY (id_autores));
CREATE TABLE editoriales(id_editorial SERIAL, editorial VARCHAR(400));
CREATE TABLE registros(id_lector_r INT,cod_libro_r INT,fecha_dev DATE, FOREIGN KEY (id_lector_r) REFERENCES lectores(id_lector), FOREIGN KEY (cod_Libro_r) REFERENCES libros(id_libro));
CREATE TABLE libros_editoriales(id_editorial_l INT, cod_libro_i INT, FOREIGN KEY (id_editorial_l) REFERENCES editoriales(id_editorial), FOREIGN KEY (cod_libro_l) REFERENCES libros(id_libro));
CREATE TABLE libros_autores(id_autores_l INT, cod_libro_a INT, FOREIGN KEY (id_autores_) REFERENCES autores(id_autores), FOREIGN KEY (cod_libro_a) REFERENCES libros(id_libro));

