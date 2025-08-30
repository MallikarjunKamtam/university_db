CREATE TABLE academic.assignments (
    assignment_id SERIAL PRIMARY KEY,
    offering_id INT NOT NULL REFERENCES academic.course_offerings(offering_id),
    title VARCHAR(100) NOT NULL,
    description TEXT,
    due_date DATE NOT NULL
);
