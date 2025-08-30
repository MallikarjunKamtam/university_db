CREATE TABLE academic.programs (
    program_id SERIAL PRIMARY KEY,
    program_name VARCHAR(100) NOT NULL,
    degree_level VARCHAR(20) CHECK (degree_level IN ('Bachelors', 'Masters', 'PhD')),
    duration_years INT CHECK (duration_years BETWEEN 1 AND 10),
    department_id INT REFERENCES academic.departments(department_id)
);
