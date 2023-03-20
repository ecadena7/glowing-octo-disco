const express = require('express');
// Import and require mysql2
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // TODO: Add MySQL password here
    password: '',
    database: 'company_db'
  },
  console.log(`Connected to the company_db database.`)
);

//express middleware

//questions -- reference #9
const init = () => {
    inquirer.prompt([{
        type: "list",
        name: "choices",
        message: "what employee information would you l ike to select?",
        choices: ['View all Departments', 'View all Postings', 'View all Employee', 'Add a Department', 'Add a Role', 'Add an Employee']
    }]).then((response) => {
        switch (response.choices) {
            case "View all Departments":
                viewAllDepartments();
                break;
            case "View all Positions":
                viewAllRoles
        }
    })
}

// functions for each "view" option

// view all departments.

// view all employees

// view all roles

