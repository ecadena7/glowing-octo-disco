SELECT * 
FROM role
JOIN department ON role.department_id;

SELECT *
FROM employee
JOIN role ON employee.role_id
WHERE employee.manager_id IS NULL
