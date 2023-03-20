INSERT INTO department (name)
VALUES ("Web Development"),
       ("Data Science"),
       ("Maintance"),
       ("Electives");


INSERT INTO role (title, department_id, salary)
VALUES ("Manager", 1, 1000000 ),
       ("Data Specialist I", 1, 30100),
       ("Data Specialist II ", 1, 200);




INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mae", "The Corgi", 1, NULL),
       ("Data", "Star Trek", 2, NULL),
       ("Lando", "Starwars", 3, NULL);
