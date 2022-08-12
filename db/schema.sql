DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE department (
  id INT NOT NULL PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE jobrole (
  id INT NOT NULL PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL(10,2),
  FOREIGN KEY (department_id),
  REFERENCES department(id),
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  FOREIGN KEY (role_id),
  REFERENCES jobrole(id),
  FOREIGN KEY (manager_id),
  REFERENCES employee(id),
  ON DELETE SET NULL
);
