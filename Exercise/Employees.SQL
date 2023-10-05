-- 1DataBase 
-- 1 
-- Queries

-- * Using JOIN
SELECT e.nombre 
FROM empleado as e 
JOIN departamento as d 
ON d.id = e.cod_dpto 
WHERE d.nombre = 'Tesoreria';

-- Using Cartecian Product
SELECT empleado.nombre
FROM empleado, departamento     
WHERE departamento.id = cod_dpto 
AND departamento.nombre = 'Tesoreria';

-- * 2 Using different JOIN'S
-- *GET departament name that haven't employees
SELECT d.nombre 
FROM departamento as d
LEFT JOIN empleado as e 
ON d.id = e.cod_dpto 
WHERE e.cod_dpto IS NULL;
-- *GET employee name that haven't a department
SELECT e.nombre 
FROM departamento as d
RIGHT JOIN empleado as e 
ON d.id = e.cod_dpto 
WHERE e.cod_dpto IS NULL;
-- *GET departament name that haven't employees AND employee name that haven't a department
SELECT e.nombre, d.nombre
FROM departamento as d
FULL JOIN empleado as e 
ON d.id = e.cod_dpto 
WHERE e.cod_dpto IS NULL;
-- Or
SELECT e.nombre 
FROM departamento as d
RIGHT JOIN empleado as e 
ON d.id = e.cod_dpto 
WHERE e.cod_dpto IS NULL;
UNION
SELECT d.nombre 
FROM departamento as d
LEFT JOIN empleado as e 
ON d.id = e.cod_dpto 
WHERE e.cod_dpto IS NULL;

SELECT count(*) as cantidad
FROM  empleado e 
INNER JOIN departamento d
ON (cod_dpto=d.id)
WHERE d.nombre = 'Tesoreria';

SELECT nombre, salario::integer
FROM empleado;

SELECT avg(salario::integer)
FROM empleado e
INNER JOIN departamento d ON(cod_dpto=d.id);

SELECT sum(salario::integer)
FROM empleado e
INNER JOIN departamento d ON(cod_dpto=d.id);

SELECT max(salario)::integer
FROM empleado e
INNER JOIN departamento d ON(cod_dpto=d.id);

SELECT min(salario)::integer
FROM empleado e
INNER JOIN departamento d ON(cod_dpto=d.id);

SELECT d.nombre, avg(salario)::integer
FROM empleado e
INNER JOIN departamento d ON(cod_dpto=d.id)
GROUP BY d.id;

SELECT d.nombre, avg(salario)::integer
FROM empleado e
INNER JOIN departamento d ON(cod_dpto=d.id)
GROUP BY d.id
HAVING d.id > 1010;

-- Obtener el nombre y la fecha de nacimiento de los empleados 
-- y el nombre del departamento al que pertenece. Los datos deben
-- mostrarsen ordenados en forma descendente por el nombre de los empleados

CREATE VIEW dep_emp_v (empleado, fecha_nto, departamento)
AS
SELECT e.nombre, e.fecha_nto, d.nombre
FROM empleado AS e
JOIN departamento AS d
ON (e.cod_dpto=d.id)
ORDER BY e.nombre DESC;

CREATE VIEW emp_tesoreria
AS
SELECT empleado, fecha_nto 
FROM dep_emp_v 
WHERE departamento = 'Tesoreria';  

CREATE MATERIALIZED VIEW emp_tesoreria_vm
AS
SELECT empleado, fecha_nto 
FROM dep_emp_v 
WHERE departamento = 'Tesoreria';

REFRESH MATERIALIZED VIEW emp_tesoreria_vm;