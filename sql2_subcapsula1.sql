--- SQLite

-- Ejercicio 1
SELECT count(ESTUDIANTE_legajo)
FROM inscripcion i INNER JOIN curso c ON i.CURSO_codigo = c.codigo
WHERE c.nombre = 'Mecánica';

-- Ejercicio 2
SELECT MIN(salario) FROM profesor WHERE fecha_nacimiento BETWEEN "1980-01-01" AND "1989-12-31";

-- Ejercicio 3
-- Este ejercicio no tiene una actividad

-- Ejercicio 4
-- Cantidad de pasajeros por país
SELECT PAIS.idpais, count(*)
FROM PASAJERO INNER JOIN PAIS ON PASAJERO.idpais = PAIS.idpais INNER JOIN PAGO ON PASAJERO.idpasajero = PAGO.idpasajero
GROUP BY PAIS.idpais

-- Suma de todos los pagos realizados
SELECT SUM(monto)
FROM PAGO

-- Suma de todos los pagos realizados por un pasajero
SELECT PASAJERO.idpasajero, ROUND(SUM(PAGO.monto), 2)
FROM PASAJERO INNER JOIN PAGO ON PASAJERO.idpasajero = PAGO.idpasajero
GROUP BY PASAJERO.idpasajero

-- Promedio de todos los pagos que realizo un usuario
SELECT PASAJERO.idpasajero, ROUND(AVG(PAGO.monto), 2)
FROM PASAJERO INNER JOIN PAGO ON PASAJERO.idpasajero = PAGO.idpasajero
GROUP BY PASAJERO.idpasajero