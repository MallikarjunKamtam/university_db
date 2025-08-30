CREATE TABLE academic.submissions (
    submission_id SERIAL PRIMARY KEY,
    assignment_id INT NOT NULL REFERENCES academic.assignments(assignment_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    submitted_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    grade CHAR(2) CHECK (grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D', 'F')),
    feedback TEXT
);
