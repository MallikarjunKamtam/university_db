CREATE TABLE academic.grades (
    grade_id SERIAL PRIMARY KEY,
    enrollment_id INT NOT NULL REFERENCES academic.enrollments(enrollment_id),
    grade CHAR(2) CHECK (grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D', 'F')),
    graded_on DATE DEFAULT CURRENT_DATE
);
