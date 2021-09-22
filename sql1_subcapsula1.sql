--Las consultas serían con sintaxis de SQLite

-- Ejercicio 1
CREATE TABLE CURSO(
  Codigo INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  Nombre VARCHAR NOT NULL,
  Descripcion VARCHAR,
  Turno VARCHAR NOT NULL
);

-- Ejercicio 2
ALTER TABLE CURSO add Cupo INT;

-- Ejercicio 3
INSERT INTO CURSO VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
INSERT INTO CURSO VALUES (102, "Matemática Discreta","","Tarde",30);

-- Ejercicio 4
-- Lo dejo comentado porque daría error al no ingresar un Nombre
-- INSERT INTO CURSO (Descripcion, Turno, Cupo) VALUES ("Esta consulta da error", "Noche", 50);

-- Ejercicio 5
-- Lo dejo comentado porque daría error al ingresar un registro con Codigo ya existente
-- INSERT INTO CURSO VALUES (102, "Esta consulta da error","","Tarde",15);

-- Ejercicio 6
UPDATE CURSO SET Cupo = 25;

-- Ejercicio 7
-- Se puede hacer de dos formas, una sería filtrando directamente por el nombre y la otra por el codigo
-- lo cual se me hace mas sensato considerando que el codigo es unico y no puede repetirse
-- DELETE FROM CURSO WHERE Nombre = "Algoritmos";
DELETE FROM CURSO WHERE Codigo = "101";