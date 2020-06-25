-- 1. 
CREATE DATABASE posts;
-- 2.
CREATE TABLE post(id SMALLINT, nombre_de_usuario VARCHAR(30), fecha_de_creación DATE, contenido VARCHAR(50), descripcion VARCHAR(300), PRIMARY KEY (id));
-- 3.
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (1, "Pamela", "2020-06-01", "Lorem", "lorem ipsum");
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (2, "Pamela", "2020-06-02", "Lorem", "lorem ipsum");
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (3, "Carlos", "2020-06-01", "Lorem", "lorem ipsum");
-- 4.
ALTER TABLE post ADD titulo VARCHAR(30) ;
-- 5.
UPDATE post SET titulo="1er post" WHERE id=1 ;
UPDATE post SET titulo="2do post" WHERE id=2 ;
UPDATE post SET titulo="3er post" WHERE id=3 ;
-- 6.
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion,titulo) VALUES (4, "Pedro", "2020-06-04", "Lorem", "lorem ipsum","4to post");
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion,titulo) VALUES (5, "Pedro", "2020-06-05", "Lorem", "lorem ipsum","5to post");
-- 7.
DELETE FROM post WHERE nombre_de_usuario="CARLOS";
-- 8
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion) VALUES (6, "Carlos", "2020-06-03", "Lorem", "lorem ipsum lorem ipsum");
-- 9.
CREATE TABLE comentarios(id SMALLINT, fecha_hora TIMESTAMP, contenido_comentarios VARCHAR(50),comentario_id SMALLINT, FOREIGN KEY (comentario_id) REFERENCES (id);
-- 10.
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (1,"2020-06-10 00:00:00", "Lorem", 1);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (2,"2020-06-10 00:00:00", "Lorem", 2);

INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (3,"2020-06-10 00:00:00", "Lorem", 6);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (4,"2020-06-10 00:00:00", "Lorem", 6);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (5,"2020-06-10 00:00:00", "Lorem", 6);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (6,"2020-06-10 00:00:00", "Lorem", 6);
-- 11.
INSERT INTO post (id, nombre_de_usuario, fecha_de_creación, contenido, descripcion,titulo) VALUES (7, "Margarita", "2020-06-05", "Lorem", "lorem ipsum","6to post");
-- 12.
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (7,"2020-06-10 00:00:00", "Lorem", 7);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (8,"2020-06-10 00:00:00", "Lorem", 7);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (9,"2020-06-10 00:00:00", "Lorem", 7);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (10,"2020-06-10 00:00:00", "Lorem", 7);
INSERT INTO comentarios (id, fecha_de_creación, contenido_comentarios, comentario_id) VALUES (11,"2020-06-10 00:00:00", "Lorem", 7);