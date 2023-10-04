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

-- Agregar  la columna salario a empleado 
ALTER TABLE empleado ADD COLUMN salario real;

-- Update de los salarios si se tiene 1010 10000, 1020 1200
UPDATE empleado
SET salario = 1000000
WHERE cod_dpto = 1010;

UPDATE empleado
SET salario = 1200000
WHERE cod_dpto = 1020;

UPDATE empleado
SET salario = 1300000
WHERE nombre = 'Maria';

UPDATE empleado
SET salario = 1500000
WHERE nombre = 'Pepe';

INSERT INTO empleado (id, nombre, fecha_nto, cod_dpto) VALUES (60,'sandra','2001-12-30',1010),(70,'sebastian','2003-12-25',1010),(80,'Juan David','2002-10-25',1010);

UPDATE empleado set nombre='Juan David'  WHERE id=80;