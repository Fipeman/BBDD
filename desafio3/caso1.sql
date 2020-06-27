CREATE TABLE departamento(id SERIAL, nombre_depto VARCHAR(100), PRIMARY KEY (id));

CREATE TABLE trabajador(rut VARCHAR(15), nombre VARCHAR(50), dirección VARCHAR(200), id_depto SERIAL, PRIMARY KEY (rut), FOREIGN KEY (id_depto) REFERENCES departamento(id)) ;

CREATE TABLE liquidacion(rut_liq VARCHAR(15), liquidacion_monto INT, FOREIGN KEY (rut_liq) REFERENCES trabajador(rut));
