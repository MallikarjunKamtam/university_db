CREATE TABLE academic.exams (
    exam_id SERIAL PRIMARY KEY,
    offering_id INT NOT NULL REFERENCES academic.course_offerings(offering_id),
    exam_type VARCHAR(20) CHECK (exam_type IN ('Midterm', 'Final', 'Quiz')),
    exam_date DATE NOT NULL,
    total_marks INT CHECK (total_marks > 0)
);
