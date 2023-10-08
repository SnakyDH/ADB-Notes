CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    CONSTRAINT pk_employee_id PRIMARY KEY (employee_id)
);

CREATE TABLE departments (
    department_id INT NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_department_id PRIMARY KEY (department_id)
);