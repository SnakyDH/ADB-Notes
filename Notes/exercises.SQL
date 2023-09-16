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