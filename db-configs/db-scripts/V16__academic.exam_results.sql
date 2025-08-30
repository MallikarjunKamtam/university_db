CREATE TABLE academic.exam_results (
    result_id SERIAL PRIMARY KEY,
    exam_id INT NOT NULL REFERENCES academic.exams(exam_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    marks_obtained INT CHECK (marks_obtained >= 0),
    grade CHAR(2) CHECK (grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D', 'F'))
);
