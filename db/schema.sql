DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary INT,
  department INT,
  FOREIGN KEY (department)
  REFERENCES department(id)
  ON DELETE SET NULL
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- ?? Do I keep the primary key here becausse of the manager?
  first_name VARCHAR(30) NOT NULL,
  second_name VARCHAR(30) NOT NULL,
  job_title VARCHAR(30),
  FOREIGN KEY (roles)
  REFERENCES roles(title)
  ON DELETE SET NULL, -- ?? is this duplicate??
  department INT,
  FOREIGN KEY (department)
  REFERENCES department(id)
  ON DELETE SET NULL,
  salary INT,
  FOREIGN KEY (roles)
  REFERENCES roles(salary)
  ON DELETE SET NULL,
  manager VARCHAR(30),
  FOREIGN KEY (roles)
  REFERENCES roles(job_title)
);
