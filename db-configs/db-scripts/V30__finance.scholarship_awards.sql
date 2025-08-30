CREATE TABLE finance.scholarship_awards (
    award_id SERIAL PRIMARY KEY,
    scholarship_id INT NOT NULL REFERENCES finance.scholarships(scholarship_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    award_date DATE DEFAULT CURRENT_DATE
);
