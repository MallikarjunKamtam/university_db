CREATE TABLE academic.teaching_assistants (
    ta_id SERIAL PRIMARY KEY,
    offering_id INT NOT NULL REFERENCES academic.course_offerings(offering_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    assigned_date DATE DEFAULT CURRENT_DATE
);
