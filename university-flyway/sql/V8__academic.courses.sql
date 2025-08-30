CREATE TABLE academic.courses (
    course_id SERIAL PRIMARY KEY,
    course_code VARCHAR(20) NOT NULL UNIQUE,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0),
    department_id INT NOT NULL REFERENCES academic.departments(department_id)
);
