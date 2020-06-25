-- 1.
CREATE DATABASE peliculas
-- 2.
CREATE TABLE peliculas(id SMALLINT, pelicula VARCHAR(100), año_estreno SMALLINT, director VARCHAR(100), PRIMARY KEY(id)); 
CREATE TABLE reparto(id_pelicula SMALLINT, reparto VARCHAR(100), FOREIGN KEY (id_pelicula) REFERENCES peliculas(id));
-- 3.
\copy peliculas FROM "peliculas.csv" csv header;
\copy peliculas FROM "reparto.csv" csv header;
-- 4.
SELECT reparto, pelicula, año_estreno, director FROM peliculas JOIN reparto 