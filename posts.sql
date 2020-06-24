-- 1. 
CREATE DATABASE posts;
-- 2.
CREATE TABLE post(id SMALLINT, nombre_de_usuario VARCHAR(30), fecha_de_creación DATE, contenido VARCHAR(50), descripcion VARCHAR(300));
-- 3.
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (1, "Pamela", "2020-06-01", "Lorem", "lorem ipsum");
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (1, "Pamela", "2020-06-02", "Lorem", "lorem ipsum lorem");
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (2, "Carlos", "2020-06-03", "Lorem", "lorem ipsum lorem ipsum");
-- 4.
ALTER TABLE post ADD titulo VARCHAR(30) ;
-- 5.
INSERT INTO post (titulo) VALUES("1er post") WHERE fecha_de_creación="2020-06-01" ;
INSERT INTO post (titulo) VALUES("2do post") WHERE fecha_de_creación="2020-06-02" ;
INSERT INTO post (titulo) VALUES("1er post") WHERE fecha_de_creación="2020-06-03" ;
-- 6.
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion,titulo) VALUES (3, "Pedro", "2020-06-04", "Lorem", "lorem ipsum");
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion,titulo) VALUES (3, "Pedro", "2020-06-05", "Lorem", "lorem ipsum");
-- 7.
DELETE FROM post WHERE nombre_de_usuario="CARLOS"
-- 8
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (4, "Carlos", "2020-06-03", "Lorem", "lorem ipsum lorem ipsum");
-- 9.
CREATE TABLE post(id SMALLINT, nombre_de_usuario VARCHAR(30), fecha_de_creación DATE, contenido VARCHAR(50), descripcion VARCHAR(300));
-- 10.
-- 11.
-- 12.
