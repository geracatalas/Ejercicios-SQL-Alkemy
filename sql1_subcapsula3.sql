-- SQLite

-- Crea la base de datos
CREATE TABLE profesor(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  nombre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  salario INT NOT NULL
);

-- Inserta los valores del ejemplo
INSERT INTO profesor VALUES 
 (1, "Juan", "Pérez", "1990-06-06", 55000),
 (2, "María Emilia", "Paz", "1984-07-15", 72000),
 (3, "Martín", "Correa", "1987-12-07", 63000),
 (4, "Lucía", "Díaz", "1991-02-24", 45000),
 (5, "Raúl", "Martínez", "1980-10-15", 85000),
 (6, "Mabel", "Ríos", "1982-06-12", 83000);

-- Ejercicio 1
SELECT nombre, apellido, fecha_nacimiento FROM profesor ORDER BY fecha_nacimiento;

-- Ejercicio 2
SELECT * FROM profesor WHERE salario >= 65000;

-- Ejercicio 3
SELECT * FROM profesor WHERE fecha_nacimiento BETWEEN "1980-01-01" AND "1989-12-31";

-- Ejercicio 4
SELECT * FROM profesor LIMIT 5;

-- Ejercicio 5
SELECT * FROM profesor WHERE apellido LIKE "P%";

-- Ejercicio 6
SELECT * FROM profesor WHERE fecha_nacimiento BETWEEN "1980-01-01" AND "1989-12-31" AND salario > 80000;