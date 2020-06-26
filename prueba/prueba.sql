--- traspaso de modelo a base de datos ---

CREATE DATABASE prueba;
\c prueba;

CREATE TABLE clientes(rut_cliente VARCHAR(25), nombre_cliente VARCHAR(50), direccion VARCHAR(100), PRIMARY KEY (rut_cliente));

CREATE TABLE facturas(id_factura SERIAL, rut_cliente_f VARCHAR(25), fecha_factura DATE, subtotal INT, iva INT,total INT, PRIMARY KEY (id_factura), FOREIGN KEY (rut_cliente_f) REFERENCES clientes(rut_cliente));

CREATE TABLE categorias(id_categoria SERIAL, nombre_categoria VARCHAR(50), descripcion_cat VARCHAR(200), PRIMARY KEY (id_categoria));

CREATE TABLE productos(id_producto SERIAL, nombre_producto VARCHAR(50), categoria INT, descripción_prod VARCHAR(200), valor_unitario INT, PRIMARY KEY (id_producto), FOREIGN KEY (categoria) REFERENCES categorias(id_categoria));

CREATE TABLE facturas_productos(n_factura INT, id_productos INT, cantidad INT, FOREIGN KEY (n_factura) REFERENCES facturas(id_factura), FOREIGN KEY (id_productos) REFERENCES productos(id_producto));

--- insertar datos---

INSERT INTO clientes (rut_cliente, nombre_cliente, direccion) VALUES ("1111-1", "cliente1", "direccion1");
INSERT INTO clientes (rut_cliente, nombre_cliente, direccion) VALUES ("2222-2", "cliente2", "direccion2");
INSERT INTO clientes (rut_cliente, nombre_cliente, direccion) VALUES ("3333-3", "cliente3", "direccion3");
INSERT INTO clientes (rut_cliente, nombre_cliente, direccion) VALUES ("4444-4", "cliente4", "direccion4");
INSERT INTO clientes (rut_cliente, nombre_cliente, direccion) VALUES ("5555-5", "cliente5", "direccion5");

INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto1", 1, "descripcion_prod1", 800); --1
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto2", 1, "descripcion_prod2", 700); --2
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto3", 1, "descripcion_prod3", 600); --3
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto4", 1, "descripcion_prod4", 500); --4
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto5", 2, "descripcion_prod5", 400); --5
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto6", 2, "descripcion_prod6", 300); --6
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto7", 3, "descripcion_prod7", 200); --7
INSERT INTO productos (nombre_productos, categoria, descripcion_prod, valor_unitario) VALUES ("producto8", 3, "descripcion_prod8", 100); --8

INSERT INTO categorias (nombre_categoria, descripcion_categoria) VALUES ("categoria1", "descripcion_categoria1");
INSERT INTO categorias (nombre_categoria, descripcion_categoria) VALUES ("categoria2", "descripcion_categoria2");
INSERT INTO categorias (nombre_categoria, descripcion_categoria) VALUES ("categoria3", "descripcion_categoria3");

-- 2 para el cliente1 , con 2 y 3 productos --

INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("1111-1", "2020-01-01",1500,285,1785); -- 1 y 2 --
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("1111-1", "2020-01-01",1500,285,1785); -- 3, 4 y 5 --

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (1,1,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (1,2,1);

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (2,3,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (2,4,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (2,5,1);

-- 3 para el cliente2, con 3, 2 y 3 productos --

INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("2222-2", "2020-01-01",2100,399,2499); -- 1 , 2 y 3 --
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("2222-2", "2020-01-01",900,171,1071); --  4 y 5 --
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("2222-2", "2020-01-01",600,114,714); -- 6, 7 y 8 --

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (3,1,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (3,2,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (3,3,1);

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (4,4,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (4,5,1);

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (5,6,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (5,7,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (5,8,1);

-- 1 para el cliente3, con 1 producto --

INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("3333-3", "2020-01-01",800,152,952); -- 1  --

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (6,1,1);

-- 4 para el cliente 4, con 2, 3, 4 y 1 producto --
 
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("4444-4", "2020-01-01",1500,285,1785); -- 1 y 2 --
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("4444-4", "2020-01-01",1500,285,1785); --  3, 4 y 5 --
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("4444-4", "2020-01-01",1400,266,1666); -- 6, 7 , 8 y 1 --
INSERT INTO facturas (rut_cliente_f, fecha_factura, subtotal, iva, total) VALUES ("4444-4", "2020-01-01",700,133,833); -- 2 --

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (7,1,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (7,2,1);

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (8,3,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (8,4,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (8,5,1);

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (9,6,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (9,7,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (9,8,1);
INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (9,1,1);

INSERT INTO facturas_productos (n_factura, id_productos, cantidad) VALUES (10,2,1);


--¿Que cliente realizó la compra más cara?
SELECT nombre_cliente AS cliente_top FROM clientes  
JOIN facturas on clientes.rut_cliente=facturas.rut_cliente_f
WHERE facturas.total = (SELECT MAX(total) FROM facturas);

--¿Que cliente pagó sobre 100 de monto?
SELECT DISTINCT nombre_cliente AS compras_mayor_100 FROM clientes
JOIN facturas ON clientes.rut_cliente=facturas.rut_cliente_f 
WHERE facturas.total>100;

--¿Cuantos clientes han comprado el producto 6.
SELECT COUNT (nombre) AS compra_producto_6 FROM clientes
JOIN facturas ON clientes.rut_cliente=facturas.rut_cliente_f 
JOIN ventas on facturas.id_factura=facturas_productos.n_factura
WHERE id_productos=6;