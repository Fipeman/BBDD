-- 1.
CREATE DATABASE peliculas
\c peliculas;
-- 2.
CREATE TABLE peliculas(id SMALLINT, pelicula VARCHAR(100), año_estreno SMALLINT, director VARCHAR(100), PRIMARY KEY(id)); 
CREATE TABLE reparto(id_pelicula SMALLINT, reparto VARCHAR(100), FOREIGN KEY (id_pelicula) REFERENCES peliculas(id));
-- 3.
\copy peliculas FROM "peliculas.csv" csv header;
\copy peliculas FROM "reparto.csv" csv;
-- 4.
SELECT reparto, pelicula, año_estreno, director AS actores_titanic FROM peliculas JOIN reparto on peliculas.id=reparto.id_pelicula WHERE peliculas.pelicula="Titanic";
-- 5.
SELECT pelicula AS peliculas_Harrison_Ford FROM peliculas JOIN reparto ON peliculas.id=reparto.id_pelicula WHERE reparto.reparto = 'Harrison Ford';
-- 6.
SELECT director, COUNT(pelicula) AS directores_mas_populares FROM peliculas GROUP BY director ORDER BY directores_mas_populares DESC LIMIT 10;
-- 7.
SELECT DISTINCT COUNT(reparto) AS actores FROM reparto;
-- 8.
SELECT pelicula, año_estreno AS peliculas_1990_1999 FROM peliculas WHERE año_estreno>=1990 AND año_estreno<2000 ORDER BY 1990_1999;
-- 9. 
SELECT reparto, pelicula, año_estreno AS peliculas_2001 FROM pelciulas JOIN reparto ON peliculas.id=reparto.id_pelicula WHERE año_estreno=2001
-- 10
SELECT reparto AS actores_vigentes FROM peliculas JOIN reparto ON peliculas.id=reparto.id_pelicula WHERE año_estreno=(SELECT MAX(año_estreno) FROM peliculas) ORDER BY actores_vigentes DESC LIMIT 1;