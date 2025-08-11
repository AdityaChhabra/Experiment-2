
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Departments;


SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE
);


CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

