DROP DATABASE IF EXISTS employee_tracker_db;

CREATE DATABASE employee_tracker_db;

USE employee_tracker_db;

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT default 0,
  manager_id INT default 0,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role(id)
);

CREATE TABLE role(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT default 0,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO employee (first_name, last_name) values ('Shatikka', 'Mcknight');
INSERT INTO employee (first_name, last_name) values ('Jen', 'Smith');
INSERT INTO employee (first_name, last_name) values ('Mikw', 'Knight');
INSERT INTO role (title, salary) values ('customer representive', '40000');
INSERT INTO role (title, salary) values ('designer', '60000');
INSERT INTO role (title, salary) values ('developer', '70000');
INSERT INTO department (dept_name) values ('creative');
INSERT INTO department (dept_name) values ('merch');
INSERT INTO department (dept_name) values ('customer service');


SELECT * FROM employee;
SELECT * FROM role;
SELECT * FROM department;