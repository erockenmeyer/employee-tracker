DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS employee;

CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department INT,
    CONSTRAINT fk_department FOREIGN KEY (department) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role INT NOT NULL,
    manager INT,
    CONSTRAINT fk_role FOREIGN KEY (role) REFERENCES role(id) ON DELETE CASCADE,
    CONSTRAINT fk_manager FOREIGN KEY (manager) REFERENCES employee(id) ON DELETE SET NULL
);