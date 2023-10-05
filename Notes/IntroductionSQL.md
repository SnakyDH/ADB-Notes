# Introduction to SQL

## Integrity Restrictions (Constraint)
- PK
- FK
- NOT NULL
- UNIQUE
- CHECK
- ### CREATE AUTOMATIC
Use `CREATE TABLE`
  - PRIMARY KEY
  - FOREIGN KEY
  - NOT NULL
  - UNIQUE
- ### CREATE MANUAL
Use 
```sql 
ALTER TABLE
ADD CONSTRAINT
```

## Clause:

SQL Command

- SELECT
- FROM
- JOIN
- ON
- WHERE

## Sentence:

Union of SQL Commands

```sql
    SELECT * FROM Table;
```

## JOIN

- NATURAL JOIN
- JOIN
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

## Group By

Example:

- Using Name Column

```sql
  SELECT id, nombre
  FROM Table
  ORDER BY id;
```

- Using Index Column

```sql
SELECT id, nombre
FROM Table
ORDER BY 1;
```
## Aggregation Funtions
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
## LIKE
All that early with 'J'
```sql
SELECT *
FROM empleado
WHERE nombre LIKE 'J%';
```
Only that early with 'J' and have other ONE character
```sql
SELECT *
FROM empleado
WHERE nombre LIKE 'J_';
```
## BETWEEN
```sql
SELECT *, salario::integer
FROM empleado
WHERE salario BETWEEN 1200000 AND 1700000;
```
```sql
SELECT *
FROM empleado
WHERE fecha_nto BETWEEN '1990-01-01' AND '1995-12-31';
```
