CREATE TABLE academic.students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    enrollment_year INT CHECK (enrollment_year >= 2000),
    program_id INT NOT NULL REFERENCES academic.programs(program_id)
);
