CREATE TABLE academic.waitlists (
    waitlist_id SERIAL PRIMARY KEY,
    offering_id INT NOT NULL REFERENCES academic.course_offerings(offering_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    added_on DATE DEFAULT CURRENT_DATE,
    position INT NOT NULL CHECK (position > 0)
);
