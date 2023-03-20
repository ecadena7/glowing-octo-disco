
DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name: VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id: INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title: VARCHAR(30) NOT NULL,
    salary: DECIMAL(7, 2),
    department_id: INT,
    INDEX dep_ind (department_id),
    CONSTRAINT fk_department 
    FOREIGN KEY (department_id) 
    REFERENCES department(id) 
    ON DELETE CASCADE
)

CREATE TABLE employee (
    id: INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name: VARCHAR(75) NOT NULL,
    last_name: VARCHAR(75) NOT NULL,
    role_id: INT,
    INDEX rol_ind (role_id),
    CONSTRAINT fk_role
    FOREIGN KEY (role_id)
    REFERENCES role(id) -- hold reference to employee role
    ON DELETE CASCADE, -- deleting both parent & child tables
    manager_id: INT,
    INDEX man_ind (manager_id), 
    CONSTRAINT fk_manager 
    FOREIGN KEY (manager_id) -- that is the manager of current employee
    REFERENCES employee(id) -- hold reference to another employee
    ON DELETE SET NULL --if employee does not have manager, table will display null (a lot more goes here, but you get what happening...)
)