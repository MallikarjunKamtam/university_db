CREATE TABLE academic.enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    offering_id INT NOT NULL REFERENCES academic.course_offerings(offering_id),
    enrollment_date DATE DEFAULT CURRENT_DATE,
    status VARCHAR(20) CHECK (status IN ('enrolled', 'completed', 'dropped'))
);
