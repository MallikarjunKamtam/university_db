CREATE TABLE admin.faculties (
    faculty_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    hire_date DATE,
    designation VARCHAR(50),
    department_id INT REFERENCES academic.departments(department_id)
);
