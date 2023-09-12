CREATE TABLE departamento (
    id int not null,
    nombre varchar(15) not null,
    PRIMARY KEY (id)
);
CREATE TABLE empleado (
    id int not null,
    nombre varchar(40) not null,
    fecha_nto date,
    cod_dpto int,
    PRIMARY KEY (id),
    FOREIGN KEY (cod_dpto) REFERENCES departamento(id)
);
INSERT INTO departamento (id, nombre)
VALUES (1010, 'Tesoreria'),
    (1020, 'R.H'),
    (1030, 'Ventas');
INSERT INTO empleado (id, nombre, fecha_nto, cod_dpto)
VALUES (10, 'Juan', '2000-10-10', 1010),
    (20, 'Pepe', '1990-10-10', 1020),
    (30, 'Maria', '1980-12-10', 1010),
    (40, 'Jose', '1995-12-25', 1020),
    (50, 'Felipe', '2000-12-30', 1010);

-- Queries
-- Using JOIN

SELECT e.nombre 
FROM empleado as e 
JOIN departamento as d 
ON d.id=e.cod_dpto 
WHERE d.nombre = 'Tesoreria';

-- Using Cartecian Product
SELECT empleado.nombre
FROM empleado, departamento     
WHERE departamento.id = cod_dpto 
AND departamento.nombre = 'Tesoreria';